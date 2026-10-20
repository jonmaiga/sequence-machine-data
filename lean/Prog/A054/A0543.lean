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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A054300: Positions of 4's in the decimal expansion of sqrt(2).

The programs for A054300, there is no canonical definition to state claims against.
-/

/-! ## A054300.P8002719324821434462

`eq[4, A002193(n)]+1`
-/

namespace A054300.P8002719324821434462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054300.P8002719324821434462

/-! ## A054300.P17527752390126292024

`eq[4, A120731(n)]`
-/

namespace A054300.P17527752390126292024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054300.P17527752390126292024

/-! ## A054300.P16713989133340452759

`eq[4, A014176(n)]+1`
-/

namespace A054300.P16713989133340452759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054300.P16713989133340452759

/-! ## A054300.P10196480128832854126

`eq[4, A188582(n)]+2`
-/

namespace A054300.P10196480128832854126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054300.P10196480128832854126

/-! ## A054300.P2586675132725775062

`A020725(eq[4, A002193(n)])`
-/

namespace A054300.P2586675132725775062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054300.P2586675132725775062

/-! ## A054300.P310262297677355696

`A065033(A005408(eq[4, A002193(n)]))`
-/

namespace A054300.P310262297677355696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A054300.P310262297677355696

/-!
# A054301: Positions of 5's in the decimal expansion of sqrt(2).

The programs for A054301, there is no canonical definition to state claims against.
-/

/-! ## A054301.P10163633381118377659

`eq[5, A002193(n)]+1`
-/

namespace A054301.P10163633381118377659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054301.P10163633381118377659

/-! ## A054301.P12521240261027431219

`eq[5, A188582(n)]+2`
-/

namespace A054301.P12521240261027431219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054301.P12521240261027431219

/-! ## A054301.P4974569457433084393

`eq[5, A014176(n)]+1`
-/

namespace A054301.P4974569457433084393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054301.P4974569457433084393

/-! ## A054301.P3040844893132470633

`eq[5, A120731(n)]`
-/

namespace A054301.P3040844893132470633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054301.P3040844893132470633

/-! ## A054301.P5497449043023474386

`A065033(A005408(eq[5, A002193(n)]))`
-/

namespace A054301.P5497449043023474386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A054301.P5497449043023474386

/-!
# A054302: Positions of 6's in the decimal expansion of sqrt(2).

The programs for A054302, there is no canonical definition to state claims against.
-/

/-! ## A054302.P14128449761061389070

`eq[6, A002193(n)]+1`
-/

namespace A054302.P14128449761061389070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054302.P14128449761061389070

/-! ## A054302.P12883309781339971622

`eq[6, A120731(n)]`
-/

namespace A054302.P12883309781339971622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054302.P12883309781339971622

/-! ## A054302.P5378570887065068931

`eq[6, A014176(n)]+1`
-/

namespace A054302.P5378570887065068931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054302.P5378570887065068931

/-! ## A054302.P287107241233562884

`eq[6, A188582(n)]+2`
-/

namespace A054302.P287107241233562884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054302.P287107241233562884

/-! ## A054302.P5614109493259051551

`A110654(A005408(eq[6, A002193(n)]))`
-/

namespace A054302.P5614109493259051551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A054302.P5614109493259051551

/-!
# A054303: Positions of 7's in the decimal expansion of sqrt(2).

The programs for A054303, there is no canonical definition to state claims against.
-/

/-! ## A054303.P10219170496705161750

`eq[7, A002193(n)]+1`
-/

namespace A054303.P10219170496705161750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054303.P10219170496705161750

/-! ## A054303.P1695492114834825164

`eq[7, A120731(n)]`
-/

namespace A054303.P1695492114834825164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054303.P1695492114834825164

/-! ## A054303.P14702989806127161892

`eq[7, A014176(n)]+1`
-/

namespace A054303.P14702989806127161892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054303.P14702989806127161892

/-! ## A054303.P2729137322397710482

`eq[7, A188582(n)]+2`
-/

namespace A054303.P2729137322397710482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054303.P2729137322397710482

/-! ## A054303.P2547714116293900010

`A008619(A103517(eq[7, A188582(n)]))`
-/

namespace A054303.P2547714116293900010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A054303.P2547714116293900010

/-!
# A054304: Positions of 8's in the decimal expansion of sqrt(2).

The programs for A054304, there is no canonical definition to state claims against.
-/

/-! ## A054304.P14554840430120892564

`eq[8, A002193(n)]+1`
-/

namespace A054304.P14554840430120892564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054304.P14554840430120892564

/-! ## A054304.P4495813244720176672

`eq[8, A120731(n)]`
-/

namespace A054304.P4495813244720176672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054304.P4495813244720176672

/-! ## A054304.P16366403103579533227

`eq[8, A014176(n)]+1`
-/

namespace A054304.P16366403103579533227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054304.P16366403103579533227

/-! ## A054304.P2154346649942888059

`eq[8, A188582(n)]+2`
-/

namespace A054304.P2154346649942888059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054304.P2154346649942888059

/-! ## A054304.P16345805801535439333

`A110654(A005408(eq[8, A002193(n)]))`
-/

namespace A054304.P16345805801535439333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A054304.P16345805801535439333

/-!
# A054305: Positions of 9's in the decimal expansion of sqrt(2).

The programs for A054305, there is no canonical definition to state claims against.
-/

/-! ## A054305.P15142576169000268401

`eq[9, A002193(n)]+1`
-/

namespace A054305.P15142576169000268401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054305.P15142576169000268401

/-! ## A054305.P11210339757348406238

`eq[9, A120731(n)]`
-/

namespace A054305.P11210339757348406238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054305.P11210339757348406238

/-! ## A054305.P14459279590913464767

`eq[9, A014176(n)]+1`
-/

namespace A054305.P14459279590913464767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054305.P14459279590913464767

/-! ## A054305.P1351906276749349206

`eq[9, A188582(n)]+2`
-/

namespace A054305.P1351906276749349206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054305.P1351906276749349206

/-! ## A054305.P627762594027257995

`A065475(eq[9, A002193(n)])`
-/

namespace A054305.P627762594027257995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054305.P627762594027257995

/-!
# A054306: Positions of 0's in the decimal expansion of Euler's constant.

The programs for A054306, there is no canonical definition to state claims against.
-/

/-! ## A054306.P7866884364557024824

`eq[0, A001620(n)]+1`
-/

namespace A054306.P7866884364557024824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054306.P7866884364557024824

/-! ## A054306.P17286830052762854191

`lt[A001620(abs(1-n)), 1]`
-/

namespace A054306.P17286830052762854191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A054306.P17286830052762854191

/-! ## A054306.P16850070618195066476

`A020725(eq[0, A001620(n)])`
-/

namespace A054306.P16850070618195066476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054306.P16850070618195066476

/-! ## A054306.P4140888855529945005

`A065475(eq[0, A001620(n)])`
-/

namespace A054306.P4140888855529945005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054306.P4140888855529945005

/-! ## A054306.P6373734411967951199

`A326178(eq[0, A001620(n)])`
-/

namespace A054306.P6373734411967951199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054306.P6373734411967951199

/-! ## A054306.P4291827870153953104

`eq[0, A001620(abs(A024000(n)))]`
-/

namespace A054306.P4291827870153953104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054306.P4291827870153953104

/-! ## A054306.P274124991322705737

`abs(A131738(eq[0, A001620(n)]))`
-/

namespace A054306.P274124991322705737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A054306.P274124991322705737

/-! ## A054306.P11393358087010844190

`eq[9, A153810(n)]+1`
-/

namespace A054306.P11393358087010844190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054306.P11393358087010844190

/-! ## A054306.P12358694563365687452

`eq[9, A153810(abs(A024000(n)))]`
-/

namespace A054306.P12358694563365687452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054306.P12358694563365687452

/-!
# A054307: Positions of 1's in the decimal expansion of Euler's constant.

The programs for A054307, there is no canonical definition to state claims against.
-/

/-! ## A054307.P11472309233823447534

`eq[1, A001620(n)]+1`
-/

namespace A054307.P11472309233823447534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054307.P11472309233823447534

/-! ## A054307.P2035289220530799753

`A020725(eq[1, A001620(n)])`
-/

namespace A054307.P2035289220530799753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054307.P2035289220530799753

/-! ## A054307.P14445124811958620694

`A065475(eq[1, A001620(n)])`
-/

namespace A054307.P14445124811958620694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054307.P14445124811958620694

/-! ## A054307.P12016237258126481489

`A326178(eq[1, A001620(n)])`
-/

namespace A054307.P12016237258126481489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054307.P12016237258126481489

/-! ## A054307.P8119802345461981968

`eq[1, A001620(abs(A024000(n)))]`
-/

namespace A054307.P8119802345461981968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054307.P8119802345461981968

/-! ## A054307.P8001680447478907096

`abs(A131738(eq[1, A001620(n)]))`
-/

namespace A054307.P8001680447478907096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A054307.P8001680447478907096

/-! ## A054307.P5884807527744858674

`2-A024000(eq[1, A001620(n)])`
-/

namespace A054307.P5884807527744858674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054307.P5884807527744858674

/-! ## A054307.P16979984374239107745

`eq[1, A001620(A004273(n)-n)]`
-/

namespace A054307.P16979984374239107745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054307.P16979984374239107745

/-! ## A054307.P6499963997371152933

`A008619(2*eq[1, A001620(n)])`
-/

namespace A054307.P6499963997371152933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054307.P6499963997371152933

/-! ## A054307.P5114027857276024700

`A080513(2*eq[1, A001620(n)])`
-/

namespace A054307.P5114027857276024700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054307.P5114027857276024700

/-! ## A054307.P5125904220852964322

`eq[8, A153810(n)]+1`
-/

namespace A054307.P5125904220852964322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054307.P5125904220852964322

/-! ## A054307.P14078128417382665609

`eq[8, A153810(abs(A024000(n)))]`
-/

namespace A054307.P14078128417382665609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054307.P14078128417382665609

/-!
# A054308: Positions of 2's in the decimal expansion of Euler's constant.

The programs for A054308, there is no canonical definition to state claims against.
-/

/-! ## A054308.P11766711608640863600

`eq[2, A001620(n)]+1`
-/

namespace A054308.P11766711608640863600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054308.P11766711608640863600

/-! ## A054308.P2476561751414352664

`A020725(eq[2, A001620(n)])`
-/

namespace A054308.P2476561751414352664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054308.P2476561751414352664

/-! ## A054308.P8359815719922964819

`A065475(eq[2, A001620(n)])`
-/

namespace A054308.P8359815719922964819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054308.P8359815719922964819

/-! ## A054308.P16582542332138397839

`A326178(eq[2, A001620(n)])`
-/

namespace A054308.P16582542332138397839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054308.P16582542332138397839

/-! ## A054308.P16089472006423000713

`eq[2, A001620(abs(A024000(n)))]`
-/

namespace A054308.P16089472006423000713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054308.P16089472006423000713

/-! ## A054308.P18300118920664870678

`abs(A131738(eq[2, A001620(n)]))`
-/

namespace A054308.P18300118920664870678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A054308.P18300118920664870678

/-! ## A054308.P8729451066352637966

`2-A024000(eq[2, A001620(n)])`
-/

namespace A054308.P8729451066352637966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054308.P8729451066352637966

/-! ## A054308.P2324086303776229521

`eq[2, A001620(A004273(n)-n)]`
-/

namespace A054308.P2324086303776229521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054308.P2324086303776229521

/-! ## A054308.P1148467318602660531

`A008619(2*eq[2, A001620(n)])`
-/

namespace A054308.P1148467318602660531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054308.P1148467318602660531

/-! ## A054308.P2421909666205995365

`A080513(2*eq[2, A001620(n)])`
-/

namespace A054308.P2421909666205995365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054308.P2421909666205995365

/-! ## A054308.P13582178767189029117

`eq[7, A153810(n)]+1`
-/

namespace A054308.P13582178767189029117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054308.P13582178767189029117

/-! ## A054308.P10165551415631086152

`eq[7, A153810(abs(A024000(n)))]`
-/

namespace A054308.P10165551415631086152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054308.P10165551415631086152

/-!
# A054309: Positions of 3's in the decimal expansion of Euler's constant.

The programs for A054309, there is no canonical definition to state claims against.
-/

/-! ## A054309.P2072535045316356858

`eq[3, A001620(n)]+1`
-/

namespace A054309.P2072535045316356858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054309.P2072535045316356858

/-! ## A054309.P16242104904827118840

`A020725(eq[3, A001620(n)])`
-/

namespace A054309.P16242104904827118840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054309.P16242104904827118840

/-! ## A054309.P315374534314405432

`A065475(eq[3, A001620(n)])`
-/

namespace A054309.P315374534314405432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054309.P315374534314405432

/-! ## A054309.P487061532173700720

`A153152(eq[3, A001620(n)])`
-/

namespace A054309.P487061532173700720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054309.P487061532173700720

/-! ## A054309.P1713526551346245928

`eq[3, A001620(A153151(n))]`
-/

namespace A054309.P1713526551346245928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A153151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054309.P1713526551346245928

/-! ## A054309.P12732924893457779766

`A326178(eq[3, A001620(n)])`
-/

namespace A054309.P12732924893457779766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054309.P12732924893457779766

/-! ## A054309.P16154711007363366761

`A020725(eq[3, A093084(n+1)-A093084(n)])`
-/

namespace A054309.P16154711007363366761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (n + 1) - A093084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054309.P16154711007363366761

/-! ## A054309.P12054808003471030590

`eq[6, A153810(n)]+1`
-/

namespace A054309.P12054808003471030590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054309.P12054808003471030590

/-! ## A054309.P13926908166452150476

`A020725(eq[6, A153810(n)])`
-/

namespace A054309.P13926908166452150476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054309.P13926908166452150476

/-! ## A054309.P14547747197658010452

`A153152(eq[6, A153810(n)])`
-/

namespace A054309.P14547747197658010452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054309.P14547747197658010452

/-!
# A054310: Positions of 4's in the decimal expansion of Euler's constant.

The programs for A054310, there is no canonical definition to state claims against.
-/

/-! ## A054310.P16749296688062850941

`eq[4, A001620(n)]+1`
-/

namespace A054310.P16749296688062850941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054310.P16749296688062850941

/-! ## A054310.P14968985839684577375

`A020725(eq[4, A001620(n)])`
-/

namespace A054310.P14968985839684577375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054310.P14968985839684577375

/-! ## A054310.P1736927378223658452

`A065475(eq[4, A001620(n)])`
-/

namespace A054310.P1736927378223658452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054310.P1736927378223658452

/-! ## A054310.P7049861088741756447

`A326178(eq[4, A001620(n)])`
-/

namespace A054310.P7049861088741756447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054310.P7049861088741756447

/-! ## A054310.P2597406866529989308

`eq[4, A001620(abs(A024000(n)))]`
-/

namespace A054310.P2597406866529989308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054310.P2597406866529989308

/-! ## A054310.P6104059075667661236

`A020725(eq[4, A093084(n+1)-A093084(n)])`
-/

namespace A054310.P6104059075667661236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (n + 1) - A093084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054310.P6104059075667661236

/-! ## A054310.P10125450335037030322

`A020725(eq[5, A153810(n)])`
-/

namespace A054310.P10125450335037030322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054310.P10125450335037030322

/-!
# A054311: Positions of 5's in the decimal expansion of Euler's constant.

The programs for A054311, there is no canonical definition to state claims against.
-/

/-! ## A054311.P4282766819195106014

`eq[5, A001620(n)]+1`
-/

namespace A054311.P4282766819195106014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054311.P4282766819195106014

/-! ## A054311.P12999776460480274186

`eq[5, A001620(abs(A024000(n)))]`
-/

namespace A054311.P12999776460480274186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054311.P12999776460480274186

/-! ## A054311.P10726993436835906795

`eq[4, A153810(n)]+1`
-/

namespace A054311.P10726993436835906795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054311.P10726993436835906795

/-! ## A054311.P12063366463470697018

`eq[4, A153810(abs(A024000(n)))]`
-/

namespace A054311.P12063366463470697018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054311.P12063366463470697018

/-! ## A054311.P15575924959549869997

`A008619(2*eq[4, A153810(n)])`
-/

namespace A054311.P15575924959549869997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054311.P15575924959549869997

/-!
# A054312: Positions of 6's in the decimal expansion of Euler's constant.

The programs for A054312, there is no canonical definition to state claims against.
-/

/-! ## A054312.P16241756296200114015

`eq[6, A001620(n)]+1`
-/

namespace A054312.P16241756296200114015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054312.P16241756296200114015

/-! ## A054312.P4544360957216060037

`eq[6, A001620(abs(1-n))]`
-/

namespace A054312.P4544360957216060037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054312.P4544360957216060037

/-! ## A054312.P4860463161408754025

`A020725(eq[6, A001620(n)])`
-/

namespace A054312.P4860463161408754025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054312.P4860463161408754025

/-! ## A054312.P9787565385354041009

`eq[3, A153810(n)]+1`
-/

namespace A054312.P9787565385354041009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054312.P9787565385354041009

/-! ## A054312.P2816522238802459696

`A020725(eq[3, A153810(n)])`
-/

namespace A054312.P2816522238802459696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054312.P2816522238802459696

/-! ## A054312.P816315191507820835

`eq[3, A153810(abs(A024000(n)))]`
-/

namespace A054312.P816315191507820835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054312.P816315191507820835

/-!
# A054313: Positions of 7's in the decimal expansion of Euler's constant.

The programs for A054313, there is no canonical definition to state claims against.
-/

/-! ## A054313.P12029082997407584373

`eq[7, A001620(n)]+1`
-/

namespace A054313.P12029082997407584373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054313.P12029082997407584373

/-! ## A054313.P381049594231298605

`A020725(eq[7, A001620(n)])`
-/

namespace A054313.P381049594231298605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054313.P381049594231298605

/-! ## A054313.P244708959733735654

`eq[7, A001620(A004273(n)-n)]`
-/

namespace A054313.P244708959733735654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054313.P244708959733735654

/-! ## A054313.P7039218405871400285

`eq[7, A093084(n+1)-A093084(n)]+1`
-/

namespace A054313.P7039218405871400285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (n + 1) - A093084 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054313.P7039218405871400285

/-! ## A054313.P7405195529367634034

`A008619(2*eq[7, A001620(n)])`
-/

namespace A054313.P7405195529367634034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054313.P7405195529367634034

/-! ## A054313.P18287992342824400291

`A080513(2*eq[7, A001620(n)])`
-/

namespace A054313.P18287992342824400291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054313.P18287992342824400291

/-! ## A054313.P4048366518796056790

`eq[2, A153810(n)]+1`
-/

namespace A054313.P4048366518796056790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054313.P4048366518796056790

/-! ## A054313.P5934559410546482547

`A020725(eq[2, A153810(n)])`
-/

namespace A054313.P5934559410546482547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054313.P5934559410546482547

/-! ## A054313.P17085885830623317079

`1-A001478(eq[2, A153810(n)])`
-/

namespace A054313.P17085885830623317079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054313.P17085885830623317079

/-! ## A054313.P17211976959357966800

`1-A001489(eq[2, A153810(n)])`
-/

namespace A054313.P17211976959357966800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054313.P17211976959357966800

/-! ## A054313.P11944146834804813317

`2-A024000(eq[2, A153810(n)])`
-/

namespace A054313.P11944146834804813317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054313.P11944146834804813317

/-! ## A054313.P16823613714334747645

`A008619(2*eq[2, A153810(n)])`
-/

namespace A054313.P16823613714334747645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054313.P16823613714334747645

/-! ## A054313.P13061958934636585282

`A308217(2*eq[2, A153810(n)])`
-/

namespace A054313.P13061958934636585282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054313.P13061958934636585282

/-! ## A054313.P15862285918108414827

`A008612(6*eq[2, A153810(n)])`
-/

namespace A054313.P15862285918108414827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054313.P15862285918108414827

/-!
# A054314: Positions of 8's in the decimal expansion of Euler's constant.

The programs for A054314, there is no canonical definition to state claims against.
-/

/-! ## A054314.P13691676813457368622

`eq[8, A001620(n)]+1`
-/

namespace A054314.P13691676813457368622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054314.P13691676813457368622

/-! ## A054314.P11065139824444738887

`A063942(3*n)-(n-eq[8, A001620(n)])`
-/

namespace A054314.P11065139824444738887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (3 * n) - ((n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ))

end

end A054314.P11065139824444738887

/-! ## A054314.P1930174249422493714

`eq[8, A001620(abs(A024000(n)))]`
-/

namespace A054314.P1930174249422493714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054314.P1930174249422493714

/-! ## A054314.P13192370896186339180

`eq[1, A153810(n)]+1`
-/

namespace A054314.P13192370896186339180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054314.P13192370896186339180

/-! ## A054314.P2559048347139694941

`A020725(eq[1, A153810(n)])`
-/

namespace A054314.P2559048347139694941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054314.P2559048347139694941

/-! ## A054314.P15995125348255915659

`eq[1, A153810(abs(A024000(n)))]`
-/

namespace A054314.P15995125348255915659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054314.P15995125348255915659

/-! ## A054314.P9460548108527505604

`1-A001478(eq[1, A153810(n)])`
-/

namespace A054314.P9460548108527505604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054314.P9460548108527505604

/-! ## A054314.P12599899100826046858

`1-A001489(eq[1, A153810(n)])`
-/

namespace A054314.P12599899100826046858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054314.P12599899100826046858

/-! ## A054314.P14064198307765349150

`2-A024000(eq[1, A153810(n)])`
-/

namespace A054314.P14064198307765349150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054314.P14064198307765349150

/-! ## A054314.P186758156224912831

`A008619(2*eq[1, A153810(n)])`
-/

namespace A054314.P186758156224912831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054314.P186758156224912831

/-! ## A054314.P16315180126212110456

`A308217(2*eq[1, A153810(n)])`
-/

namespace A054314.P16315180126212110456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054314.P16315180126212110456

/-!
# A054315: Positions of 9's in the decimal expansion of Euler's constant.

The programs for A054315, there is no canonical definition to state claims against.
-/

/-! ## A054315.P3182915129766412075

`eq[9, A001620(n)]+1`
-/

namespace A054315.P3182915129766412075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054315.P3182915129766412075

/-! ## A054315.P2305263583644669918

`eq[9, A001620(abs(1-n))]`
-/

namespace A054315.P2305263583644669918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054315.P2305263583644669918

/-! ## A054315.P14385578258715916895

`A153152(eq[9, A001620(n)])`
-/

namespace A054315.P14385578258715916895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054315.P14385578258715916895

/-! ## A054315.P12642771317925309217

`A008619(2*eq[9, A001620(n)])`
-/

namespace A054315.P12642771317925309217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054315.P12642771317925309217

/-! ## A054315.P5333558984978285749

`eq[0, A153810(n)]+1`
-/

namespace A054315.P5333558984978285749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054315.P5333558984978285749

/-! ## A054315.P6827738757432074264

`eq[0, A153810(abs(1-n))]`
-/

namespace A054315.P6827738757432074264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054315.P6827738757432074264

/-! ## A054315.P189199275963984283

`A020725(eq[0, A153810(n)])`
-/

namespace A054315.P189199275963984283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054315.P189199275963984283

/-! ## A054315.P3058150273092233272

`A153152(eq[0, A153810(n)])`
-/

namespace A054315.P3058150273092233272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054315.P3058150273092233272

/-! ## A054315.P8648999857135483757

`1-A001489(eq[0, A153810(n)])`
-/

namespace A054315.P8648999857135483757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054315.P8648999857135483757

/-!
# A054316: Number of unlabeled 2-connected 3-edge-connected graphs with n nodes.

The programs for A054316, there is no canonical definition to state claims against.
-/

/-! ## A054316.P7449376259191175884

`A322463(A324151(n)+1+n)-1`
-/

namespace A054316.P7449376259191175884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322463 (A324151 n + 1 + (n : ℤ)).toNat - 1

end

end A054316.P7449376259191175884

/-!
# A054317: Number of unlabeled 2-connected minimally 2-edge-connected graphs with n nodes.

The programs for A054317, there is no canonical definition to state claims against.
-/

/-! ## A054317.P303357746129698238

`A034396(n+1)+A023193(A034342(n+1))`
-/

namespace A054317.P303357746129698238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034396 (n + 1) + A023193 (A034342 (n + 1)).toNat

end

end A054317.P303357746129698238

/-! ## A054317.P15399652393585446730

`A260317(A329698(n))`
-/

namespace A054317.P15399652393585446730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (A329698 n).toNat

end

end A054317.P15399652393585446730

/-! ## A054317.P4223898521457783129

`A000196(∑[A004148(n)²+n])`
-/

namespace A054317.P4223898521457783129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054317.P4223898521457783129

/-! ## A054317.P2810996447432597371

`A002024(A007173(n+1)+C(n, floor(n/2))-1)`
-/

namespace A054317.P2810996447432597371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A007173 (n + 1) + ((Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) - 1)).toNat

end

end A054317.P2810996447432597371

/-! ## A054317.P5332250170774861088

`A036375(n)+A001222(A064062(n))`
-/

namespace A054317.P5332250170774861088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n + A001222 (A064062 n).toNat

end

end A054317.P5332250170774861088

/-!
# A054318: a(n)-th star number (A003154) is a square.

The programs for A054318, the canonical program `A054318.P483928478254417729` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054318 has offset 1).

The definition of A054318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054318.P483928478254417729

`10*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054318

/-- `10*a(n-1)-a(n-2)-4` -/
def P483928478254417729.Spec : Prop :=
  ∀ n, P483928478254417729.a n = A054318 (n + 1)

theorem P483928478254417729.correct : P483928478254417729.Spec := by
  intro n
  simp only [A054318, Nat.add_sub_cancel]

end A054318

/-! ## A054318.P12076284108855464767

`A080872(n+1)*A080872(n)`
-/

namespace A054318.P12076284108855464767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (n + 1) * A080872 n

end

end A054318.P12076284108855464767

namespace A054318

/-- `A080872(n+1)*A080872(n)` -/
def P12076284108855464767.Spec : Prop :=
  ∀ n, P12076284108855464767.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P8618691006301061598

`∑[ogf((1-6x+x^2)/(1-10x+x^2))]`
-/

namespace A054318.P8618691006301061598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 1] [1, -10, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054318.P8618691006301061598

namespace A054318

/-- `∑[ogf((1-6x+x^2)/(1-10x+x^2))]` -/
def P8618691006301061598.Spec : Prop :=
  ∀ n, P8618691006301061598.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P9046917517810659843

`A105038(n)+1`
-/

namespace A054318.P9046917517810659843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105038 n + 1

end

end A054318.P9046917517810659843

namespace A054318

/-- `A105038(n)+1` -/
def P9046917517810659843.Spec : Prop :=
  ∀ n, P9046917517810659843.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P7988040791867363536

`ceil(A138288(n)/2)`
-/

namespace A054318.P7988040791867363536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138288 n : ℚ) / 2⌉

end

end A054318.P7988040791867363536

namespace A054318

/-- `ceil(A138288(n)/2)` -/
def P7988040791867363536.Spec : Prop :=
  ∀ n, P7988040791867363536.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P11450752202228858014

`ceil(A157085(n)/3)`
-/

namespace A054318.P11450752202228858014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157085 n : ℚ) / 3⌉

end

end A054318.P11450752202228858014

namespace A054318

/-- `ceil(A157085(n)/3)` -/
def P11450752202228858014.Spec : Prop :=
  ∀ n, P11450752202228858014.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P4234697185991524834

`∑[A122652(n)]+1`
-/

namespace A054318.P4234697185991524834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A054318.P4234697185991524834

namespace A054318

/-- `∑[A122652(n)]+1` -/
def P4234697185991524834.Spec : Prop :=
  ∀ n, P4234697185991524834.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P8296642431401196553

`round(Δ[A004189(n)/2])`
-/

namespace A054318.P8296642431401196553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004189 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A054318.P8296642431401196553

namespace A054318

/-- `round(Δ[A004189(n)/2])` -/
def P8296642431401196553.Spec : Prop :=
  ∀ n, P8296642431401196553.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P17711714019606431287

`ceil(A072256(n+1)/2)`
-/

namespace A054318.P17711714019606431287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072256 (n + 1) : ℚ) / 2⌉

end

end A054318.P17711714019606431287

namespace A054318

/-- `ceil(A072256(n+1)/2)` -/
def P17711714019606431287.Spec : Prop :=
  ∀ n, P17711714019606431287.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P13035388725276209804

`ceil(A041007(2*n)/2)`
-/

namespace A054318.P13035388725276209804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041007 (2 * n) : ℚ) / 2⌉

end

end A054318.P13035388725276209804

namespace A054318

/-- `ceil(A041007(2*n)/2)` -/
def P13035388725276209804.Spec : Prop :=
  ∀ n, P13035388725276209804.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P15016246416207327821

`ceil(A041039(2*n)/2)`
-/

namespace A054318.P15016246416207327821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041039 (2 * n) : ℚ) / 2⌉

end

end A054318.P15016246416207327821

namespace A054318

/-- `ceil(A041039(2*n)/2)` -/
def P15016246416207327821.Spec : Prop :=
  ∀ n, P15016246416207327821.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P9844935531994547982

`ceil(A142239(2*n)/2)`
-/

namespace A054318.P9844935531994547982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A142239 (2 * n) : ℚ) / 2⌉

end

end A054318.P9844935531994547982

namespace A054318

/-- `ceil(A142239(2*n)/2)` -/
def P9844935531994547982.Spec : Prop :=
  ∀ n, P9844935531994547982.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P9953287874014710265

`∑[2*A001078(n)]+1`
-/

namespace A054318.P9953287874014710265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A054318.P9953287874014710265

namespace A054318

/-- `∑[2*A001078(n)]+1` -/
def P9953287874014710265.Spec : Prop :=
  ∀ n, P9953287874014710265.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P6763652839023179703

`(A031138(n+1)+2)/3`
-/

namespace A054318.P6763652839023179703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031138 (n + 1) + 2 : ℚ) / 3

end

end A054318.P6763652839023179703

namespace A054318

/-- `(A031138(n+1)+2)/3` -/
def P6763652839023179703.Spec : Prop :=
  ∀ n, P6763652839023179703.a n = (A054318 (n + 1) : ℚ)

end A054318

/-! ## A054318.P13896048374949028862

`A001079(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A054318.P13896048374949028862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001079 n + (1 - a (n - 1))

end

end A054318.P13896048374949028862

namespace A054318

/-- `A001079(n)+1-a(n-1)` -/
def P13896048374949028862.Spec : Prop :=
  ∀ n, P13896048374949028862.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P18012877908997662615

`∑[A142239(A004273(n))]`
-/

namespace A054318.P18012877908997662615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142239 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054318.P18012877908997662615

namespace A054318

/-- `∑[A142239(A004273(n))]` -/
def P18012877908997662615.Spec : Prop :=
  ∀ n, P18012877908997662615.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P7695495839741603416

`A138288(n)-A105038(n)`
-/

namespace A054318.P7695495839741603416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n - A105038 n

end

end A054318.P7695495839741603416

namespace A054318

/-- `A138288(n)-A105038(n)` -/
def P7695495839741603416.Spec : Prop :=
  ∀ n, P7695495839741603416.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P6861137209356104310

`∑[A001079(n)]-A004189(n)`
-/

namespace A054318.P6861137209356104310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004189 n

end

end A054318.P6861137209356104310

namespace A054318

/-- `∑[A001079(n)]-A004189(n)` -/
def P6861137209356104310.Spec : Prop :=
  ∀ n, P6861137209356104310.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P3683655562715063773

`A138288(n)-∑[A122652(n)]`
-/

namespace A054318.P3683655562715063773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054318.P3683655562715063773

namespace A054318

/-- `A138288(n)-∑[A122652(n)]` -/
def P3683655562715063773.Spec : Prop :=
  ∀ n, P3683655562715063773.a n = A054318 (n + 1)

end A054318

/-! ## A054318.P5080832134963614097

`Δ[A004189(n)]-A105038(n)`
-/

namespace A054318.P5080832134963614097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A105038 n

end

end A054318.P5080832134963614097

namespace A054318

/-- `Δ[A004189(n)]-A105038(n)` -/
def P5080832134963614097.Spec : Prop :=
  ∀ n, P5080832134963614097.a n = A054318 (n + 1)

end A054318

/-!
# A054320: Expansion of g.f.: (1 + x)/(1 - 10*x + x^2).

The programs for A054320, the canonical program `A054320.P13654860824355659797` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054320 has offset 0).

The definition of A054320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-10x+x^2))` (program `A054320.P13654860824355659797`, by `A054320.P13654860824355659797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054320.P13654860824355659797

`ogf((1+x)/(1-10x+x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054320

/-- `ogf((1+x)/(1-10x+x^2))` -/
def P13654860824355659797.Spec : Prop :=
  ∀ n, P13654860824355659797.a n = A054320 n

theorem P13654860824355659797.correct : P13654860824355659797.Spec := by
  intro n
  simp only [A054320]

end A054320

/-! ## A054320.P7424189132512507371

`10*a(n-1)-a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A054320.P7424189132512507371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  10 * a (n - 1) - a (n - 2)

end

end A054320.P7424189132512507371

namespace A054320

/-- `10*a(n-1)-a(n-2)` -/
def P7424189132512507371.Spec : Prop :=
  ∀ n, P7424189132512507371.a n = A054320 n

end A054320

/-! ## A054320.P726082983562826984

`A142238(2*n)`
-/

namespace A054320.P726082983562826984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142238 (2 * n)

end

end A054320.P726082983562826984

namespace A054320

/-- `A142238(2*n)` -/
def P726082983562826984.Spec : Prop :=
  ∀ n, P726082983562826984.a n = A054320 n

end A054320

/-! ## A054320.P1778487126303977449

`A041006(2*n)/2`
-/

namespace A054320.P1778487126303977449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 (2 * n) : ℚ) / 2

end

end A054320.P1778487126303977449

namespace A054320

/-- `A041006(2*n)/2` -/
def P1778487126303977449.Spec : Prop :=
  ∀ n, P1778487126303977449.a n = (A054320 n : ℚ)

end A054320

/-! ## A054320.P15751038658028784201

`A138288(n)+A001078(n)`
-/

namespace A054320.P15751038658028784201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n + A001078 n

end

end A054320.P15751038658028784201

namespace A054320

/-- `A138288(n)+A001078(n)` -/
def P15751038658028784201.Spec : Prop :=
  ∀ n, P15751038658028784201.a n = A054320 n

end A054320

/-! ## A054320.P10077497263861374782

`A004189(n)+A004189(n+1)`
-/

namespace A054320.P10077497263861374782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n + A004189 (n + 1)

end

end A054320.P10077497263861374782

namespace A054320

/-- `A004189(n)+A004189(n+1)` -/
def P10077497263861374782.Spec : Prop :=
  ∀ n, P10077497263861374782.a n = A054320 n

end A054320

/-! ## A054320.P3898020941954888971

`A001079(n)+3*A001078(n)`
-/

namespace A054320.P3898020941954888971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n + 3 * A001078 n

end

end A054320.P3898020941954888971

namespace A054320

/-- `A001079(n)+3*A001078(n)` -/
def P3898020941954888971.Spec : Prop :=
  ∀ n, P3898020941954888971.a n = A054320 n

end A054320

/-! ## A054320.P1288871121379609323

`A041038(2*n)/4`
-/

namespace A054320.P1288871121379609323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041038 (2 * n) : ℚ) / 4

end

end A054320.P1288871121379609323

namespace A054320

/-- `A041038(2*n)/4` -/
def P1288871121379609323.Spec : Prop :=
  ∀ n, P1288871121379609323.a n = (A054320 n : ℚ)

end A054320

/-! ## A054320.P11119281454001156416

`sqrt(A006061(n+1))`
-/

namespace A054320.P11119281454001156416
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006061 (n + 1) : ℝ)

end

end A054320.P11119281454001156416

namespace A054320

/-- `sqrt(A006061(n+1))` -/
def P11119281454001156416.Spec : Prop :=
  ∀ n, P11119281454001156416.a n = (A054320 n : ℝ)

end A054320

/-! ## A054320.P9692439788679201110

`lcm(10, a(n-1))-a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A054320.P9692439788679201110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  (Int.lcm 10 (a (n - 1)) : ℤ) - a (n - 2)

end

end A054320.P9692439788679201110

namespace A054320

/-- `lcm(10, a(n-1))-a(n-2)` -/
def P9692439788679201110.Spec : Prop :=
  ∀ n, P9692439788679201110.a n = A054320 n

end A054320

/-! ## A054320.P16223825535131666441

`Δ[A098297(n)]`
-/

namespace A054320.P16223825535131666441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054320.P16223825535131666441

namespace A054320

/-- `Δ[A098297(n)]` -/
def P16223825535131666441.Spec : Prop :=
  ∀ n, P16223825535131666441.a n = A054320 n

end A054320

/-! ## A054320.P14662887342570939811

`A157084(n)+1`
-/

namespace A054320.P14662887342570939811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157084 n + 1

end

end A054320.P14662887342570939811

namespace A054320

/-- `A157084(n)+1` -/
def P14662887342570939811.Spec : Prop :=
  ∀ n, P14662887342570939811.a n = A054320 n

end A054320

/-! ## A054320.P7791546712193327164

`A259594(2*n)`
-/

namespace A054320.P7791546712193327164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259594 (2 * n)

end

end A054320.P7791546712193327164

namespace A054320

/-- `A259594(2*n)` -/
def P7791546712193327164.Spec : Prop :=
  ∀ n, P7791546712193327164.a n = A054320 n

end A054320

/-! ## A054320.P3948261377397562037

`A350965(n)/2`
-/

namespace A054320.P3948261377397562037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350965 n : ℚ) / 2

end

end A054320.P3948261377397562037

namespace A054320

/-- `A350965(n)/2` -/
def P3948261377397562037.Spec : Prop :=
  ∀ n, P3948261377397562037.a n = (A054320 n : ℚ)

end A054320

/-! ## A054320.P12410657791111078259

`A085376(Δ[n²])`
-/

namespace A054320.P12410657791111078259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054320.P12410657791111078259

namespace A054320

/-- `A085376(Δ[n²])` -/
def P12410657791111078259.Spec : Prop :=
  ∀ n, P12410657791111078259.a n = A054320 n

end A054320

/-! ## A054320.P11504171819087284861

`A152448(Δ[n²])`
-/

namespace A054320.P11504171819087284861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152448 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054320.P11504171819087284861

namespace A054320

/-- `A152448(Δ[n²])` -/
def P11504171819087284861.Spec : Prop :=
  ∀ n, P11504171819087284861.a n = A054320 n

end A054320

/-! ## A054320.P17292728652881281408

`∑[A087799(n)]-1`
-/

namespace A054320.P17292728652881281408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054320.P17292728652881281408

namespace A054320

/-- `∑[A087799(n)]-1` -/
def P17292728652881281408.Spec : Prop :=
  ∀ n, P17292728652881281408.a n = A054320 n

end A054320

/-! ## A054320.P14839854844597267163

`Δ[A132596(n)/2]`
-/

namespace A054320.P14839854844597267163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132596 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054320.P14839854844597267163

namespace A054320

/-- `Δ[A132596(n)/2]` -/
def P14839854844597267163.Spec : Prop :=
  ∀ n, P14839854844597267163.a n = (A054320 n : ℚ)

end A054320

/-! ## A054320.P7115362677223642005

`∑[record[Δ[A077410(n)]]]`
-/

namespace A054320.P7115362677223642005
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054320.P7115362677223642005

namespace A054320

/-- `∑[record[Δ[A077410(n)]]]` -/
def P7115362677223642005.Spec : Prop :=
  ∀ n, P7115362677223642005.a n = A054320 n

end A054320

/-! ## A054320.P11576664190546048391

`2*A087125(n)+1`
-/

namespace A054320.P11576664190546048391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087125 n + 1

end

end A054320.P11576664190546048391

namespace A054320

/-- `2*A087125(n)+1` -/
def P11576664190546048391.Spec : Prop :=
  ∀ n, P11576664190546048391.a n = A054320 n

end A054320

/-!
# A054321: Smallest prime greater than 5^n.

The programs for A054321, there is no canonical definition to state claims against.
-/

/-! ## A054321.P18127180746601687778

`A013599(n)+A000351(n)`
-/

namespace A054321.P18127180746601687778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013599 n + A000351 n

end

end A054321.P18127180746601687778

/-! ## A054321.P11377048625153406645

`A037132(n)+A014210(n)`
-/

namespace A054321.P11377048625153406645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037132 n + A014210 n

end

end A054321.P11377048625153406645

/-! ## A054321.P3553169618535355843

`A203074(n+1)+A037132(n)`
-/

namespace A054321.P3553169618535355843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (n + 1) + A037132 n

end

end A054321.P3553169618535355843

/-! ## A054321.P10784442605718391313

`A014210(n)+2*A037133(n)`
-/

namespace A054321.P10784442605718391313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n + 2 * A037133 n

end

end A054321.P10784442605718391313

/-! ## A054321.P559327885690059542

`A227076(∑[n])+A013599(n)`
-/

namespace A054321.P559327885690059542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 (∑ j ∈ Finset.range (n + 1), f1 j) + A013599 n

end

end A054321.P559327885690059542

/-! ## A054321.P8846961966109151606

`A013599(n)+record[A227076(n)]`
-/

namespace A054321.P8846961966109151606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013599 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054321.P8846961966109151606

/-!
# A054322: Fourth unsigned column of Lanczos triangle A053125 (decreasing powers).

The programs for A054322, the canonical program `A054322.P8902300893869645746` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054322 has offset 0).

The definition of A054322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054322.P8902300893869645746

`4^n*C(2*n+4, 3)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054322

/-- `4^n*C(2*n+4, 3)` -/
def P8902300893869645746.Spec : Prop :=
  ∀ n, (P8902300893869645746.a n : ℤ) = A054322 n

theorem P8902300893869645746.correct : P8902300893869645746.Spec := by
  intro n
  simp only [A054322]

end A054322

/-! ## A054322.P360521655802825140

`4*A054329(n)`
-/

namespace A054322.P360521655802825140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A054329 n

end

end A054322.P360521655802825140

namespace A054322

/-- `4*A054329(n)` -/
def P360521655802825140.Spec : Prop :=
  ∀ n, P360521655802825140.a n = A054322 n

end A054322

/-! ## A054322.P8289115729566686588

`4^(n+1)*∑[(n+1)²]`
-/

namespace A054322.P8289115729566686588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054322.P8289115729566686588

namespace A054322

/-- `4^(n+1)*∑[(n+1)²]` -/
def P8289115729566686588.Spec : Prop :=
  ∀ n, (P8289115729566686588.a n : ℤ) = A054322 n

end A054322

/-! ## A054322.P5913740563997783240

`A082138(Δ[n²])`
-/

namespace A054322.P5913740563997783240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054322.P5913740563997783240

namespace A054322

/-- `A082138(Δ[n²])` -/
def P5913740563997783240.Spec : Prop :=
  ∀ n, P5913740563997783240.a n = A054322 n

end A054322

/-! ## A054322.P16656163317639287220

`A001789(2*(n+2))/2`
-/

namespace A054322.P16656163317639287220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (2 * (n + 2)) : ℚ) / 2

end

end A054322.P16656163317639287220

namespace A054322

/-- `A001789(2*(n+2))/2` -/
def P16656163317639287220.Spec : Prop :=
  ∀ n, P16656163317639287220.a n = (A054322 n : ℚ)

end A054322

/-! ## A054322.P7239437488684618393

`lcm(2, A082138(2*n+1))`
-/

namespace A054322.P7239437488684618393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A082138 (2 * n + 1))

end

end A054322.P7239437488684618393

namespace A054322

/-- `lcm(2, A082138(2*n+1))` -/
def P7239437488684618393.Spec : Prop :=
  ∀ n, (P7239437488684618393.a n : ℤ) = A054322 n

end A054322

/-! ## A054322.P17565936133790220160

`∑[(n+1)*A084851(2*n+1)]`
-/

namespace A054322.P17565936133790220160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084851 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054322.P17565936133790220160

namespace A054322

/-- `∑[(n+1)*A084851(2*n+1)]` -/
def P17565936133790220160.Spec : Prop :=
  ∀ n, P17565936133790220160.a n = A054322 n

end A054322

/-! ## A054322.P14335792838662848192

`∑[(2*(n+1))²]*A004171(n)/2`
-/

namespace A054322.P14335792838662848192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004171 n : ℚ) / 2

end

end A054322.P14335792838662848192

namespace A054322

/-- `∑[(2*(n+1))²]*A004171(n)/2` -/
def P14335792838662848192.Spec : Prop :=
  ∀ n, P14335792838662848192.a n = (A054322 n : ℚ)

end A054322

/-! ## A054322.P14987914581808651497

`record[A082138(A026741(n+1))]`
-/

namespace A054322.P14987914581808651497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082138 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054322.P14987914581808651497

namespace A054322

/-- `record[A082138(A026741(n+1))]` -/
def P14987914581808651497.Spec : Prop :=
  ∀ n, P14987914581808651497.a n = A054322 n

end A054322

/-! ## A054322.P15128807205507751481

`A085385(2*n+1)+A084266(2*n+1)`
-/

namespace A054322.P15128807205507751481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085385 (2 * n + 1) + A084266 (2 * n + 1)

end

end A054322.P15128807205507751481

namespace A054322

/-- `A085385(2*n+1)+A084266(2*n+1)` -/
def P15128807205507751481.Spec : Prop :=
  ∀ n, P15128807205507751481.a n = A054322 n

end A054322

/-! ## A054322.P6957081395706004257

`A001789(2*(n+2))-A082138(2*n+1)`
-/

namespace A054322.P6957081395706004257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (2 * (n + 2)) - A082138 (2 * n + 1)

end

end A054322.P6957081395706004257

namespace A054322

/-- `A001789(2*(n+2))-A082138(2*n+1)` -/
def P6957081395706004257.Spec : Prop :=
  ∀ n, P6957081395706004257.a n = A054322 n

end A054322

/-! ## A054322.P7176253577695485056

`A124722(2*n+5)+A124722(2*n+5)`
-/

namespace A054322.P7176253577695485056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124722 (2 * n + 5) + A124722 (2 * n + 5)

end

end A054322.P7176253577695485056

namespace A054322

/-- `A124722(2*n+5)+A124722(2*n+5)` -/
def P7176253577695485056.Spec : Prop :=
  ∀ n, P7176253577695485056.a n = A054322 n

end A054322

/-! ## A054322.P9754282097491329742

`(A027608(2*n+1)-A027608(2*n))/2`
-/

namespace A054322.P9754282097491329742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027608 (2 * n + 1) - A027608 (2 * n) : ℚ) / 2

end

end A054322.P9754282097491329742

namespace A054322

/-- `(A027608(2*n+1)-A027608(2*n))/2` -/
def P9754282097491329742.Spec : Prop :=
  ∀ n, P9754282097491329742.a n = (A054322 n : ℚ)

end A054322

/-! ## A054322.P11736347975151900487

`A003472(2*n+5)/2-A003472(2*(n+2))`
-/

namespace A054322.P11736347975151900487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003472 (2 * n + 5) : ℚ) / 2 - (A003472 (2 * (n + 2)) : ℚ)

end

end A054322.P11736347975151900487

namespace A054322

/-- `A003472(2*n+5)/2-A003472(2*(n+2))` -/
def P11736347975151900487.Spec : Prop :=
  ∀ n, P11736347975151900487.a n = (A054322 n : ℚ)

end A054322

/-! ## A054322.P12897417371051523877

`A002492(n+1)*A054323(n)/A053126(n+4)`
-/

namespace A054322.P12897417371051523877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002492 (n + 1) * A054323 n : ℚ) / (A053126 (n + 4) : ℚ)

end

end A054322.P12897417371051523877

namespace A054322

/-- `A002492(n+1)*A054323(n)/A053126(n+4)` -/
def P12897417371051523877.Spec : Prop :=
  ∀ n, P12897417371051523877.a n = (A054322 n : ℚ)

end A054322

/-!
# A054323: Fifth column of Lanczos triangle A053125 (decreasing powers).

The programs for A054323, the canonical program `A054323.P5676521096093651374` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054323 has offset 0).

The definition of A054323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054323.P7752600916098587781

`4^n*C(2*n+5, 4)`
-/

namespace A054323.P7752600916098587781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.choose (2 * n + 5) 4

end

end A054323.P7752600916098587781

namespace A054323

/-- `4^n*C(2*n+5, 4)` -/
def P7752600916098587781.Spec : Prop :=
  ∀ n, (P7752600916098587781.a n : ℤ) = A054323 n

end A054323

/-! ## A054323.P5676521096093651374

`4^n*A053126(n+4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054323

/-- `4^n*A053126(n+4)` -/
def P5676521096093651374.Spec : Prop :=
  ∀ n, P5676521096093651374.a n = A054323 n

theorem P5676521096093651374.correct : P5676521096093651374.Spec := by
  intro n
  simp only [A054323]

end A054323

/-! ## A054323.P11872199950752726591

`(2*n+5)*4^n*∑[(n+1)²]`
-/

namespace A054323.P11872199950752726591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 5) * 4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054323.P11872199950752726591

namespace A054323

/-- `(2*n+5)*4^n*∑[(n+1)²]` -/
def P11872199950752726591.Spec : Prop :=
  ∀ n, (P11872199950752726591.a n : ℤ) = A054323 n

end A054323

/-! ## A054323.P1304455845668179353

`A080951(Δ[n²])`
-/

namespace A054323.P1304455845668179353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080951 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054323.P1304455845668179353

namespace A054323

/-- `A080951(Δ[n²])` -/
def P1304455845668179353.Spec : Prop :=
  ∀ n, P1304455845668179353.a n = A054323 n

end A054323

/-! ## A054323.P10111742570019174994

`A003472(2*n+5)/2`
-/

namespace A054323.P10111742570019174994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003472 (2 * n + 5) : ℚ) / 2

end

end A054323.P10111742570019174994

namespace A054323

/-- `A003472(2*n+5)/2` -/
def P10111742570019174994.Spec : Prop :=
  ∀ n, P10111742570019174994.a n = (A054323 n : ℚ)

end A054323

/-! ## A054323.P7848418734753341507

`lcm(n+1, A080951(2*n+1))`
-/

namespace A054323.P7848418734753341507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A080951 (2 * n + 1))

end

end A054323.P7848418734753341507

namespace A054323

/-- `lcm(n+1, A080951(2*n+1))` -/
def P7848418734753341507.Spec : Prop :=
  ∀ n, (P7848418734753341507.a n : ℤ) = A054323 n

end A054323

/-! ## A054323.P11861405061329833435

`A082138(2*n+1)+A003472(2*(n+2))`
-/

namespace A054323.P11861405061329833435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082138 (2 * n + 1) + A003472 (2 * (n + 2))

end

end A054323.P11861405061329833435

namespace A054323

/-- `A082138(2*n+1)+A003472(2*(n+2))` -/
def P11861405061329833435.Spec : Prop :=
  ∀ n, P11861405061329833435.a n = A054323 n

end A054323

/-! ## A054323.P15971557176719372171

`A344564(2*n+1)/6`
-/

namespace A054323.P15971557176719372171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344564 (2 * n + 1) : ℚ) / 6

end

end A054323.P15971557176719372171

namespace A054323

/-- `A344564(2*n+1)/6` -/
def P15971557176719372171.Spec : Prop :=
  ∀ n, P15971557176719372171.a n = (A054323 n : ℚ)

end A054323

/-! ## A054323.P14571844358693812117

`(A211386(2*n+1)-A211386(2*n))/2`
-/

namespace A054323.P14571844358693812117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211386 (2 * n + 1) - A211386 (2 * n) : ℚ) / 2

end

end A054323.P14571844358693812117

namespace A054323

/-- `(A211386(2*n+1)-A211386(2*n))/2` -/
def P14571844358693812117.Spec : Prop :=
  ∀ n, P14571844358693812117.a n = (A054323 n : ℚ)

end A054323

/-! ## A054323.P7022657318763595137

`A001816(2*n+1)/A040132(n+1)`
-/

namespace A054323.P7022657318763595137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001816 (2 * n + 1) : ℚ) / (A040132 (n + 1) : ℚ)

end

end A054323.P7022657318763595137

namespace A054323

/-- `A001816(2*n+1)/A040132(n+1)` -/
def P7022657318763595137.Spec : Prop :=
  ∀ n, P7022657318763595137.a n = (A054323 n : ℚ)

end A054323

/-! ## A054323.P9547482067342273065

`A082139(2*n+1)-A054849(2*n+5)`
-/

namespace A054323.P9547482067342273065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082139 (2 * n + 1) - A054849 (2 * n + 5)

end

end A054323.P9547482067342273065

namespace A054323

/-- `A082139(2*n+1)-A054849(2*n+5)` -/
def P9547482067342273065.Spec : Prop :=
  ∀ n, P9547482067342273065.a n = A054323 n

end A054323

/-! ## A054323.P15582718656074375528

`(A006975(2*n+1)-A054849(2*n+5))/2`
-/

namespace A054323.P15582718656074375528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006975 (2 * n + 1) - A054849 (2 * n + 5) : ℚ) / 2

end

end A054323.P15582718656074375528

namespace A054323

/-- `(A006975(2*n+1)-A054849(2*n+5))/2` -/
def P15582718656074375528.Spec : Prop :=
  ∀ n, P15582718656074375528.a n = (A054323 n : ℚ)

end A054323

/-! ## A054323.P1157015022965390123

`A054849(2*(n+3))/2-A054849(2*n+5)`
-/

namespace A054323.P1157015022965390123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (2 * (n + 3)) : ℚ) / 2 - (A054849 (2 * n + 5) : ℚ)

end

end A054323.P1157015022965390123

namespace A054323

/-- `A054849(2*(n+3))/2-A054849(2*n+5)` -/
def P1157015022965390123.Spec : Prop :=
  ∀ n, P1157015022965390123.a n = (A054323 n : ℚ)

end A054323

/-! ## A054323.P3284516077317541943

`A061070(2*n+1)*A080951(2*n+1)/A061070(2*(n+1))`
-/

namespace A054323.P3284516077317541943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061070 (2 * n + 1) * A080951 (2 * n + 1) : ℚ) / (A061070 (2 * (n + 1)) : ℚ)

end

end A054323.P3284516077317541943

namespace A054323

/-- `A061070(2*n+1)*A080951(2*n+1)/A061070(2*(n+1))` -/
def P3284516077317541943.Spec : Prop :=
  ∀ n, P3284516077317541943.a n = (A054323 n : ℚ)

end A054323

/-! ## A054323.P1944228088753883955

`gcd(A080951(2*n+1)*A157706(n+3), A080951(2*n+1))`
-/

namespace A054323.P1944228088753883955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080951 (2 * n + 1) * A157706 (n + 3)) (A080951 (2 * n + 1))

end

end A054323.P1944228088753883955

namespace A054323

/-- `gcd(A080951(2*n+1)*A157706(n+3), A080951(2*n+1))` -/
def P1944228088753883955.Spec : Prop :=
  ∀ n, (P1944228088753883955.a n : ℤ) = A054323 n

end A054323

/-! ## A054323.P4160962072762363380

`A085841(∑[n+3])`
-/

namespace A054323.P4160962072762363380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085841 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054323.P4160962072762363380

namespace A054323

/-- `A085841(∑[n+3])` -/
def P4160962072762363380.Spec : Prop :=
  ∀ n, P4160962072762363380.a n = A054323 n

end A054323

/-!
# A054324: Sixth unsigned column of Lanczos triangle A053125 (decreasing powers).

The programs for A054324, the canonical program `A054324.P14206454691940039663` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054324 has offset 0).

The definition of A054324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054324.P14206454691940039663

`4^n*C(2*n+6, 5)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054324

/-- `4^n*C(2*n+6, 5)` -/
def P14206454691940039663.Spec : Prop :=
  ∀ n, (P14206454691940039663.a n : ℤ) = A054324 n

theorem P14206454691940039663.correct : P14206454691940039663.Spec := by
  intro n
  simp only [A054324]

end A054324

/-! ## A054324.P7634294757387053018

`2*A054330(n)`
-/

namespace A054324.P7634294757387053018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054330 n

end

end A054324.P7634294757387053018

namespace A054324

/-- `2*A054330(n)` -/
def P7634294757387053018.Spec : Prop :=
  ∀ n, P7634294757387053018.a n = A054324 n

end A054324

/-! ## A054324.P13289910307741819037

`record[-((10/(n+1)+2)*a(n-1))]` with `a(0)=6`
-/

namespace A054324.P13289910307741819037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [6] fun n f1 =>
  -((10 / (n + 1 : ℚ) + 2) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054324.P13289910307741819037

namespace A054324

/-- `record[-((10/(n+1)+2)*a(n-1))]` -/
def P13289910307741819037.Spec : Prop :=
  ∀ n, P13289910307741819037.a n = (A054324 n : ℚ)

end A054324

/-! ## A054324.P3765044191387499600

`A082139(Δ[n²])`
-/

namespace A054324.P3765044191387499600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082139 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054324.P3765044191387499600

namespace A054324

/-- `A082139(Δ[n²])` -/
def P3765044191387499600.Spec : Prop :=
  ∀ n, P3765044191387499600.a n = A054324 n

end A054324

/-! ## A054324.P1631887254063027467

`2*A080952(2*n)`
-/

namespace A054324.P1631887254063027467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080952 (2 * n)

end

end A054324.P1631887254063027467

namespace A054324

/-- `2*A080952(2*n)` -/
def P1631887254063027467.Spec : Prop :=
  ∀ n, P1631887254063027467.a n = A054324 n

end A054324

/-! ## A054324.P18299252361912908965

`A054849(2*(n+3))/2`
-/

namespace A054324.P18299252361912908965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (2 * (n + 3)) : ℚ) / 2

end

end A054324.P18299252361912908965

namespace A054324

/-- `A054849(2*(n+3))/2` -/
def P18299252361912908965.Spec : Prop :=
  ∀ n, P18299252361912908965.a n = (A054324 n : ℚ)

end A054324

/-! ## A054324.P1292161078218463326

`lcm(2, A082139(2*n+1))`
-/

namespace A054324.P1292161078218463326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A082139 (2 * n + 1))

end

end A054324.P1292161078218463326

namespace A054324

/-- `lcm(2, A082139(2*n+1))` -/
def P1292161078218463326.Spec : Prop :=
  ∀ n, (P1292161078218463326.a n : ℤ) = A054324 n

end A054324

/-! ## A054324.P10132612249484959836

`A000302(n)*A053127(n+5)`
-/

namespace A054324.P10132612249484959836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A053127 (n + 5)

end

end A054324.P10132612249484959836

namespace A054324

/-- `A000302(n)*A053127(n+5)` -/
def P10132612249484959836.Spec : Prop :=
  ∀ n, P10132612249484959836.a n = A054324 n

end A054324

/-! ## A054324.P3183601919161529104

`A004171(n)*A053132(n+5)`
-/

namespace A054324.P3183601919161529104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n * A053132 (n + 5)

end

end A054324.P3183601919161529104

namespace A054324

/-- `A004171(n)*A053132(n+5)` -/
def P3183601919161529104.Spec : Prop :=
  ∀ n, P3183601919161529104.a n = A054324 n

end A054324

/-! ## A054324.P803185904978714798

`2*A053132(n+5)*A000302(n)`
-/

namespace A054324.P803185904978714798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053132 (n + 5) * A000302 n

end

end A054324.P803185904978714798

namespace A054324

/-- `2*A053132(n+5)*A000302(n)` -/
def P803185904978714798.Spec : Prop :=
  ∀ n, P803185904978714798.a n = A054324 n

end A054324

/-! ## A054324.P16843819981842215114

`2*A005995(2*n+1)*A011782(n+1)²`
-/

namespace A054324.P16843819981842215114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005995 (2 * n + 1) * A011782 (n + 1) ^ 2)

end

end A054324.P16843819981842215114

namespace A054324

/-- `2*A005995(2*n+1)*A011782(n+1)²` -/
def P16843819981842215114.Spec : Prop :=
  ∀ n, P16843819981842215114.a n = A054324 n

end A054324

/-! ## A054324.P15199800991860185911

`2*A011782(n+1)²*A282081(2*n+1)`
-/

namespace A054324.P15199800991860185911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 (n + 1) ^ 2 * A282081 (2 * n + 1))

end

end A054324.P15199800991860185911

namespace A054324

/-- `2*A011782(n+1)²*A282081(2*n+1)` -/
def P15199800991860185911.Spec : Prop :=
  ∀ n, P15199800991860185911.a n = A054324 n

end A054324

/-! ## A054324.P7236741811464288049

`2*A005995(2*n+1)*A011782(2*n+1)`
-/

namespace A054324.P7236741811464288049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005995 (2 * n + 1) * A011782 (2 * n + 1))

end

end A054324.P7236741811464288049

namespace A054324

/-- `2*A005995(2*n+1)*A011782(2*n+1)` -/
def P7236741811464288049.Spec : Prop :=
  ∀ n, P7236741811464288049.a n = A054324 n

end A054324

/-! ## A054324.P7681408752562729925

`2*A011782(2*n+1)*A282081(2*n+1)`
-/

namespace A054324.P7681408752562729925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 (2 * n + 1) * A282081 (2 * n + 1))

end

end A054324.P7681408752562729925

namespace A054324

/-- `2*A011782(2*n+1)*A282081(2*n+1)` -/
def P7681408752562729925.Spec : Prop :=
  ∀ n, P7681408752562729925.a n = A054324 n

end A054324

/-! ## A054324.P3059481801614828965

`A038845(n+1)/A000984(n+1)*A020918(n)`
-/

namespace A054324.P3059481801614828965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038845 (n + 1) : ℚ) / (A000984 (n + 1) : ℚ) * (A020918 n : ℚ)

end

end A054324.P3059481801614828965

namespace A054324

/-- `A038845(n+1)/A000984(n+1)*A020918(n)` -/
def P3059481801614828965.Spec : Prop :=
  ∀ n, P3059481801614828965.a n = (A054324 n : ℚ)

end A054324

/-! ## A054324.P14885237474128537787

`A053127(n+5)/A053126(n+4)*A054323(n)`
-/

namespace A054324.P14885237474128537787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053127 (n + 5) : ℚ) / (A053126 (n + 4) : ℚ) * (A054323 n : ℚ)

end

end A054324.P14885237474128537787

namespace A054324

/-- `A053127(n+5)/A053126(n+4)*A054323(n)` -/
def P14885237474128537787.Spec : Prop :=
  ∀ n, P14885237474128537787.a n = (A054324 n : ℚ)

end A054324

/-! ## A054324.P3524824478314991592

`(A211388(2*n+1)-A211388(2*n))/2`
-/

namespace A054324.P3524824478314991592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211388 (2 * n + 1) - A211388 (2 * n) : ℚ) / 2

end

end A054324.P3524824478314991592

namespace A054324

/-- `(A211388(2*n+1)-A211388(2*n))/2` -/
def P3524824478314991592.Spec : Prop :=
  ∀ n, P3524824478314991592.a n = (A054324 n : ℚ)

end A054324

/-! ## A054324.P10103467728241059131

`A082140(2*n+1)-A002409(2*n)`
-/

namespace A054324.P10103467728241059131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082140 (2 * n + 1) - A002409 (2 * n)

end

end A054324.P10103467728241059131

namespace A054324

/-- `A082140(2*n+1)-A002409(2*n)` -/
def P10103467728241059131.Spec : Prop :=
  ∀ n, P10103467728241059131.a n = A054324 n

end A054324

/-! ## A054324.P1132167662143582133

`A006976(2*n+1)-A082140(2*n+1)`
-/

namespace A054324.P1132167662143582133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006976 (2 * n + 1) - A082140 (2 * n + 1)

end

end A054324.P1132167662143582133

namespace A054324

/-- `A006976(2*n+1)-A082140(2*n+1)` -/
def P1132167662143582133.Spec : Prop :=
  ∀ n, P1132167662143582133.a n = A054324 n

end A054324

/-! ## A054324.P16355553286757389492

`(A006976(2*n+1)-A002409(2*n))/2`
-/

namespace A054324.P16355553286757389492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006976 (2 * n + 1) - A002409 (2 * n) : ℚ) / 2

end

end A054324.P16355553286757389492

namespace A054324

/-- `(A006976(2*n+1)-A002409(2*n))/2` -/
def P16355553286757389492.Spec : Prop :=
  ∀ n, P16355553286757389492.a n = (A054324 n : ℚ)

end A054324

/-!
# A054325: Seventh column of Lanczos triangle A053125 (decreasing powers).

The programs for A054325, the canonical program `A054325.P10348163363872651466` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054325 has offset 0).

The definition of A054325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054325.P10348163363872651466

`4^n*C(2*n+7, 6)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054325

/-- `4^n*C(2*n+7, 6)` -/
def P10348163363872651466.Spec : Prop :=
  ∀ n, (P10348163363872651466.a n : ℤ) = A054325 n

theorem P10348163363872651466.correct : P10348163363872651466.Spec := by
  intro n
  simp only [A054325]

end A054325

/-! ## A054325.P14138076283552050521

`A082140(Δ[n²])`
-/

namespace A054325.P14138076283552050521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082140 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054325.P14138076283552050521

namespace A054325

/-- `A082140(Δ[n²])` -/
def P14138076283552050521.Spec : Prop :=
  ∀ n, P14138076283552050521.a n = A054325 n

end A054325

/-! ## A054325.P12798584229048546907

`A000302(n)*A053128(n+6)`
-/

namespace A054325.P12798584229048546907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A053128 (n + 6)

end

end A054325.P12798584229048546907

namespace A054325

/-- `A000302(n)*A053128(n+6)` -/
def P12798584229048546907.Spec : Prop :=
  ∀ n, P12798584229048546907.a n = A054325 n

end A054325

/-! ## A054325.P7635026842880273015

`or(n, A082140(A005408(n)))-n`
-/

namespace A054325.P7635026842880273015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A082140 (A005408 n).toNat) - (n : ℤ)

end

end A054325.P7635026842880273015

namespace A054325

/-- `or(n, A082140(A005408(n)))-n` -/
def P7635026842880273015.Spec : Prop :=
  ∀ n, P7635026842880273015.a n = A054325 n

end A054325

/-! ## A054325.P15513241097000630238

`A082139(2*n+1)+A002409(2*n)`
-/

namespace A054325.P15513241097000630238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082139 (2 * n + 1) + A002409 (2 * n)

end

end A054325.P15513241097000630238

namespace A054325

/-- `A082139(2*n+1)+A002409(2*n)` -/
def P15513241097000630238.Spec : Prop :=
  ∀ n, P15513241097000630238.a n = A054325 n

end A054325

/-! ## A054325.P1230682820332778935

`lcm(A000302(n), A082140(A005408(n)))`
-/

namespace A054325.P1230682820332778935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000302 n) (A082140 (A005408 n).toNat)

end

end A054325.P1230682820332778935

namespace A054325

/-- `lcm(A000302(n), A082140(A005408(n)))` -/
def P1230682820332778935.Spec : Prop :=
  ∀ n, (P1230682820332778935.a n : ℤ) = A054325 n

end A054325

/-! ## A054325.P7590191306617196043

`or(A000007(n), A082140(A005408(n)))`
-/

namespace A054325.P7590191306617196043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A082140 (A005408 n).toNat)

end

end A054325.P7590191306617196043

namespace A054325

/-- `or(A000007(n), A082140(A005408(n)))` -/
def P7590191306617196043.Spec : Prop :=
  ∀ n, P7590191306617196043.a n = A054325 n

end A054325

/-! ## A054325.P6691786138113400589

`A082140(A005408(n))+A000007(n+1)`
-/

namespace A054325.P6691786138113400589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082140 (A005408 n).toNat + A000007 (n + 1)

end

end A054325.P6691786138113400589

namespace A054325

/-- `A082140(A005408(n))+A000007(n+1)` -/
def P6691786138113400589.Spec : Prop :=
  ∀ n, P6691786138113400589.a n = A054325 n

end A054325

/-! ## A054325.P7291701371316475037

`A020918(n+1)/A000984(n+1)*A038846(n)`
-/

namespace A054325.P7291701371316475037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020918 (n + 1) : ℚ) / (A000984 (n + 1) : ℚ) * (A038846 n : ℚ)

end

end A054325.P7291701371316475037

namespace A054325

/-- `A020918(n+1)/A000984(n+1)*A038846(n)` -/
def P7291701371316475037.Spec : Prop :=
  ∀ n, P7291701371316475037.a n = (A054325 n : ℚ)

end A054325

/-! ## A054325.P11738708091119872477

`(A000580(2*(n+4))-A000580(2*n+7))*A000079(n)²`
-/

namespace A054325.P11738708091119872477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000580 (2 * (n + 4)) - A000580 (2 * n + 7)) * A000079 n ^ 2

end

end A054325.P11738708091119872477

namespace A054325

/-- `(A000580(2*(n+4))-A000580(2*n+7))*A000079(n)²` -/
def P11738708091119872477.Spec : Prop :=
  ∀ n, P11738708091119872477.a n = A054325 n

end A054325

/-! ## A054325.P12467623808791752443

`(A000580(2*(n+4))-A000580(2*n+7))*A000079(2*n)`
-/

namespace A054325.P12467623808791752443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000580 (2 * (n + 4)) - A000580 (2 * n + 7)) * A000079 (2 * n)

end

end A054325.P12467623808791752443

namespace A054325

/-- `(A000580(2*(n+4))-A000580(2*n+7))*A000079(2*n)` -/
def P12467623808791752443.Spec : Prop :=
  ∀ n, P12467623808791752443.a n = A054325 n

end A054325

/-! ## A054325.P2492630761222610985

`A130812(2*n+7)/A130812(2*(n+3))*A002409(2*n)`
-/

namespace A054325.P2492630761222610985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130812 (2 * n + 7) : ℚ) / (A130812 (2 * (n + 3)) : ℚ) * (A002409 (2 * n) : ℚ)

end

end A054325.P2492630761222610985

namespace A054325

/-- `A130812(2*n+7)/A130812(2*(n+3))*A002409(2*n)` -/
def P2492630761222610985.Spec : Prop :=
  ∀ n, P2492630761222610985.a n = (A054325 n : ℚ)

end A054325

/-! ## A054325.P2194624942679961743

`(A000580(2*(n+4))-A000580(2*n+7))*A011782(n+1)²`
-/

namespace A054325.P2194624942679961743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000580 (2 * (n + 4)) - A000580 (2 * n + 7)) * A011782 (n + 1) ^ 2

end

end A054325.P2194624942679961743

namespace A054325

/-- `(A000580(2*(n+4))-A000580(2*n+7))*A011782(n+1)²` -/
def P2194624942679961743.Spec : Prop :=
  ∀ n, P2194624942679961743.a n = A054325 n

end A054325

/-! ## A054325.P7389854295811591301

`(A000580(2*(n+4))-A000580(2*n+7))*A011782(2*n+1)`
-/

namespace A054325.P7389854295811591301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000580 (2 * (n + 4)) - A000580 (2 * n + 7)) * A011782 (2 * n + 1)

end

end A054325.P7389854295811591301

namespace A054325

/-- `(A000580(2*(n+4))-A000580(2*n+7))*A011782(2*n+1)` -/
def P7389854295811591301.Spec : Prop :=
  ∀ n, P7389854295811591301.a n = A054325 n

end A054325

/-! ## A054325.P13948434556268870154

`A002409(Δ[n²])/2`
-/

namespace A054325.P13948434556268870154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A054325.P13948434556268870154

namespace A054325

/-- `A002409(Δ[n²])/2` -/
def P13948434556268870154.Spec : Prop :=
  ∀ n, P13948434556268870154.a n = (A054325 n : ℚ)

end A054325

/-! ## A054325.P3737851378612703151

`A002409(2*n+1)-A082140(2*n+1)`
-/

namespace A054325.P3737851378612703151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002409 (2 * n + 1) - A082140 (2 * n + 1)

end

end A054325.P3737851378612703151

namespace A054325

/-- `A002409(2*n+1)-A082140(2*n+1)` -/
def P3737851378612703151.Spec : Prop :=
  ∀ n, P3737851378612703151.a n = A054325 n

end A054325

/-! ## A054325.P11287700230634761774

`A082141(2*n+1)-A054851(2*n+7)`
-/

namespace A054325.P11287700230634761774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082141 (2 * n + 1) - A054851 (2 * n + 7)

end

end A054325.P11287700230634761774

namespace A054325

/-- `A082141(2*n+1)-A054851(2*n+7)` -/
def P11287700230634761774.Spec : Prop :=
  ∀ n, P11287700230634761774.a n = A054325 n

end A054325

/-! ## A054325.P4370077190699004970

`A054851(2*(n+4))/2-A054851(2*n+7)`
-/

namespace A054325.P4370077190699004970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054851 (2 * (n + 4)) : ℚ) / 2 - (A054851 (2 * n + 7) : ℚ)

end

end A054325.P4370077190699004970

namespace A054325

/-- `A054851(2*(n+4))/2-A054851(2*n+7)` -/
def P4370077190699004970.Spec : Prop :=
  ∀ n, P4370077190699004970.a n = (A054325 n : ℚ)

end A054325

/-! ## A054325.P12831784019132430062

`gcd(A082140(2*n+1)*A131999(2*n+1), A082140(2*n+1))`
-/

namespace A054325.P12831784019132430062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082140 (2 * n + 1) * A131999 (2 * n + 1)) (A082140 (2 * n + 1))

end

end A054325.P12831784019132430062

namespace A054325

/-- `gcd(A082140(2*n+1)*A131999(2*n+1), A082140(2*n+1))` -/
def P12831784019132430062.Spec : Prop :=
  ∀ n, (P12831784019132430062.a n : ℤ) = A054325 n

end A054325

/-!
# A054326: Eighth unsigned column of Lanczos triangle A053125 (decreasing powers).

The programs for A054326, the canonical program `A054326.P16080695042491478287` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054326 has offset 0).

The definition of A054326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054326.P16080695042491478287

`4^n*C(2*n+8, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054326

/-- `4^n*C(2*n+8, 7)` -/
def P16080695042491478287.Spec : Prop :=
  ∀ n, (P16080695042491478287.a n : ℤ) = A054326 n

theorem P16080695042491478287.correct : P16080695042491478287.Spec := by
  intro n
  simp only [A054326]

end A054326

/-! ## A054326.P14124828169842389255

`8*A054331(n)`
-/

namespace A054326.P14124828169842389255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A054331 n

end

end A054326.P14124828169842389255

namespace A054326

/-- `8*A054331(n)` -/
def P14124828169842389255.Spec : Prop :=
  ∀ n, P14124828169842389255.a n = A054326 n

end A054326

/-! ## A054326.P9881052655500587974

`A082141(Δ[n²])`
-/

namespace A054326.P9881052655500587974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082141 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054326.P9881052655500587974

namespace A054326

/-- `A082141(Δ[n²])` -/
def P9881052655500587974.Spec : Prop :=
  ∀ n, P9881052655500587974.a n = A054326 n

end A054326

/-! ## A054326.P3694240936583769057

`A054851(2*(n+4))/2`
-/

namespace A054326.P3694240936583769057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054851 (2 * (n + 4)) : ℚ) / 2

end

end A054326.P3694240936583769057

namespace A054326

/-- `A054851(2*(n+4))/2` -/
def P3694240936583769057.Spec : Prop :=
  ∀ n, P3694240936583769057.a n = (A054326 n : ℚ)

end A054326

/-! ## A054326.P7057065261760143970

`lcm(2, A082141(2*n+1))`
-/

namespace A054326.P7057065261760143970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A082141 (2 * n + 1))

end

end A054326.P7057065261760143970

namespace A054326

/-- `lcm(2, A082141(2*n+1))` -/
def P7057065261760143970.Spec : Prop :=
  ∀ n, (P7057065261760143970.a n : ℤ) = A054326 n

end A054326

/-! ## A054326.P15787912756843452830

`A000302(n)*A053129(n+7)`
-/

namespace A054326.P15787912756843452830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A053129 (n + 7)

end

end A054326.P15787912756843452830

namespace A054326

/-- `A000302(n)*A053129(n+7)` -/
def P15787912756843452830.Spec : Prop :=
  ∀ n, P15787912756843452830.a n = A054326 n

end A054326

/-! ## A054326.P15139238370670201803

`A000079(n)²*A053129(n+7)`
-/

namespace A054326.P15139238370670201803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A053129 (n + 7)

end

end A054326.P15139238370670201803

namespace A054326

/-- `A000079(n)²*A053129(n+7)` -/
def P15139238370670201803.Spec : Prop :=
  ∀ n, P15139238370670201803.a n = A054326 n

end A054326

/-! ## A054326.P360917111938739292

`A000079(2*n)*A053129(n+7)`
-/

namespace A054326.P360917111938739292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A053129 (n + 7)

end

end A054326.P360917111938739292

namespace A054326

/-- `A000079(2*n)*A053129(n+7)` -/
def P360917111938739292.Spec : Prop :=
  ∀ n, P360917111938739292.a n = A054326 n

end A054326

/-! ## A054326.P8279343510060495459

`A000079(n)²*A000580(2*(n+4))`
-/

namespace A054326.P8279343510060495459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A000580 (2 * (n + 4))

end

end A054326.P8279343510060495459

namespace A054326

/-- `A000079(n)²*A000580(2*(n+4))` -/
def P8279343510060495459.Spec : Prop :=
  ∀ n, P8279343510060495459.a n = A054326 n

end A054326

/-! ## A054326.P3119239698392127554

`A000079(2*n)*A000580(2*(n+4))`
-/

namespace A054326.P3119239698392127554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A000580 (2 * (n + 4))

end

end A054326.P3119239698392127554

namespace A054326

/-- `A000079(2*n)*A000580(2*(n+4))` -/
def P3119239698392127554.Spec : Prop :=
  ∀ n, P3119239698392127554.a n = A054326 n

end A054326

/-! ## A054326.P3294592160714289809

`A000580(2*(n+4))*A011782(n+1)²`
-/

namespace A054326.P3294592160714289809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (2 * (n + 4)) * A011782 (n + 1) ^ 2

end

end A054326.P3294592160714289809

namespace A054326

/-- `A000580(2*(n+4))*A011782(n+1)²` -/
def P3294592160714289809.Spec : Prop :=
  ∀ n, P3294592160714289809.a n = A054326 n

end A054326

/-! ## A054326.P2999211585445604937

`A054851(2*(n+4))-A082141(2*n+1)`
-/

namespace A054326.P2999211585445604937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054851 (2 * (n + 4)) - A082141 (2 * n + 1)

end

end A054326.P2999211585445604937

namespace A054326

/-- `A054851(2*(n+4))-A082141(2*n+1)` -/
def P2999211585445604937.Spec : Prop :=
  ∀ n, P2999211585445604937.a n = A054326 n

end A054326

/-! ## A054326.P16967301753782777401

`A000580(2*(n+4))*A011782(2*n+1)`
-/

namespace A054326.P16967301753782777401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (2 * (n + 4)) * A011782 (2 * n + 1)

end

end A054326.P16967301753782777401

namespace A054326

/-- `A000580(2*(n+4))*A011782(2*n+1)` -/
def P16967301753782777401.Spec : Prop :=
  ∀ n, P16967301753782777401.a n = A054326 n

end A054326

/-! ## A054326.P4009585499936566085

`A082140(2*n+1)+A054851(2*n+7)`
-/

namespace A054326.P4009585499936566085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082140 (2 * n + 1) + A054851 (2 * n + 7)

end

end A054326.P4009585499936566085

namespace A054326

/-- `A082140(2*n+1)+A054851(2*n+7)` -/
def P4009585499936566085.Spec : Prop :=
  ∀ n, P4009585499936566085.a n = A054326 n

end A054326

/-! ## A054326.P7833453412080061665

`A209404(2*n+1)-A002409(2*n+1)/2`
-/

namespace A054326.P7833453412080061665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209404 (2 * n + 1) : ℚ) - (A002409 (2 * n + 1) : ℚ) / 2

end

end A054326.P7833453412080061665

namespace A054326

/-- `A209404(2*n+1)-A002409(2*n+1)/2` -/
def P7833453412080061665.Spec : Prop :=
  ∀ n, P7833453412080061665.a n = (A054326 n : ℚ)

end A054326

/-! ## A054326.P8208008214438550395

`A038846(n+1)/A000984(n+1)*A020920(n)`
-/

namespace A054326.P8208008214438550395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038846 (n + 1) : ℚ) / (A000984 (n + 1) : ℚ) * (A020920 n : ℚ)

end

end A054326.P8208008214438550395

namespace A054326

/-- `A038846(n+1)/A000984(n+1)*A020920(n)` -/
def P8208008214438550395.Spec : Prop :=
  ∀ n, P8208008214438550395.a n = (A054326 n : ℚ)

end A054326

/-! ## A054326.P4777976403167227428

`(A000581(2*n+9)-A000581(2*(n+4)))*A000079(n)²`
-/

namespace A054326.P4777976403167227428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000581 (2 * n + 9) - A000581 (2 * (n + 4))) * A000079 n ^ 2

end

end A054326.P4777976403167227428

namespace A054326

/-- `(A000581(2*n+9)-A000581(2*(n+4)))*A000079(n)²` -/
def P4777976403167227428.Spec : Prop :=
  ∀ n, P4777976403167227428.a n = A054326 n

end A054326

/-! ## A054326.P16509535104732769453

`(A000581(2*n+9)-A000581(2*n+8))*A000079(2*n)`
-/

namespace A054326.P16509535104732769453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000581 (2 * n + 9) - A000581 (2 * n + 8)) * A000079 (2 * n)

end

end A054326.P16509535104732769453

namespace A054326

/-- `(A000581(2*n+9)-A000581(2*n+8))*A000079(2*n)` -/
def P16509535104732769453.Spec : Prop :=
  ∀ n, P16509535104732769453.a n = A054326 n

end A054326

/-! ## A054326.P9303983464864860606

`(A000581(2*n+9)-A000581(2*(n+4)))*A011782(n+1)²`
-/

namespace A054326.P9303983464864860606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000581 (2 * n + 9) - A000581 (2 * (n + 4))) * A011782 (n + 1) ^ 2

end

end A054326.P9303983464864860606

namespace A054326

/-- `(A000581(2*n+9)-A000581(2*(n+4)))*A011782(n+1)²` -/
def P9303983464864860606.Spec : Prop :=
  ∀ n, P9303983464864860606.a n = A054326 n

end A054326

/-! ## A054326.P8540167617634559884

`A001788(2*n+1)/A000217(2*n+1)*A000580(2*(n+4))`
-/

namespace A054326.P8540167617634559884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001788 (2 * n + 1) : ℚ) / (A000217 (2 * n + 1) : ℚ) * (A000580 (2 * (n + 4)) : ℚ)

end

end A054326.P8540167617634559884

namespace A054326

/-- `A001788(2*n+1)/A000217(2*n+1)*A000580(2*(n+4))` -/
def P8540167617634559884.Spec : Prop :=
  ∀ n, P8540167617634559884.a n = (A054326 n : ℚ)

end A054326

/-!
# A054327: Ninth column of Lanczos triangle A053125 (decreasing powers).

The programs for A054327, the canonical program `A054327.P2292892331265837031` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054327 has offset 0).

The definition of A054327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054327.P2292892331265837031

`4^n*C(2*n+9, 8)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054327

/-- `4^n*C(2*n+9, 8)` -/
def P2292892331265837031.Spec : Prop :=
  ∀ n, (P2292892331265837031.a n : ℤ) = A054327 n

theorem P2292892331265837031.correct : P2292892331265837031.Spec := by
  intro n
  simp only [A054327]

end A054327

/-! ## A054327.P6935916710084262355

`4^n*A000581(2*n+9)`
-/

namespace A054327.P6935916710084262355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000581 (2 * n + 9)

end

end A054327.P6935916710084262355

namespace A054327

/-- `4^n*A000581(2*n+9)` -/
def P6935916710084262355.Spec : Prop :=
  ∀ n, P6935916710084262355.a n = A054327 n

end A054327

/-! ## A054327.P15159651602536707608

`A000302(n)*A053130(n+8)`
-/

namespace A054327.P15159651602536707608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A053130 (n + 8)

end

end A054327.P15159651602536707608

namespace A054327

/-- `A000302(n)*A053130(n+8)` -/
def P15159651602536707608.Spec : Prop :=
  ∀ n, P15159651602536707608.a n = A054327 n

end A054327

/-! ## A054327.P15670260489321290790

`A000079(n)²*A053130(n+8)`
-/

namespace A054327.P15670260489321290790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A053130 (n + 8)

end

end A054327.P15670260489321290790

namespace A054327

/-- `A000079(n)²*A053130(n+8)` -/
def P15670260489321290790.Spec : Prop :=
  ∀ n, P15670260489321290790.a n = A054327 n

end A054327

/-! ## A054327.P8783513399895686854

`A000079(2*n)*A053130(n+8)`
-/

namespace A054327.P8783513399895686854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A053130 (n + 8)

end

end A054327.P8783513399895686854

namespace A054327

/-- `A000079(2*n)*A053130(n+8)` -/
def P8783513399895686854.Spec : Prop :=
  ∀ n, P8783513399895686854.a n = A054327 n

end A054327

/-! ## A054327.P8407686670866752471

`A000581(2*n+9)*A011782(n+1)²`
-/

namespace A054327.P8407686670866752471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (2 * n + 9) * A011782 (n + 1) ^ 2

end

end A054327.P8407686670866752471

namespace A054327

/-- `A000581(2*n+9)*A011782(n+1)²` -/
def P8407686670866752471.Spec : Prop :=
  ∀ n, P8407686670866752471.a n = A054327 n

end A054327

/-! ## A054327.P17286643961370392229

`A000581(2*n+9)*A131577(n+1)²`
-/

namespace A054327.P17286643961370392229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (2 * n + 9) * A131577 (n + 1) ^ 2

end

end A054327.P17286643961370392229

namespace A054327

/-- `A000581(2*n+9)*A131577(n+1)²` -/
def P17286643961370392229.Spec : Prop :=
  ∀ n, P17286643961370392229.a n = A054327 n

end A054327

/-! ## A054327.P6112420243007708714

`A000581(2*n+9)*A011782(2*n+1)`
-/

namespace A054327.P6112420243007708714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (2 * n + 9) * A011782 (2 * n + 1)

end

end A054327.P6112420243007708714

namespace A054327

/-- `A000581(2*n+9)*A011782(2*n+1)` -/
def P6112420243007708714.Spec : Prop :=
  ∀ n, P6112420243007708714.a n = A054327 n

end A054327

/-! ## A054327.P12026608743619532210

`A000581(2*n+9)*A131577(2*n+1)`
-/

namespace A054327.P12026608743619532210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (2 * n + 9) * A131577 (2 * n + 1)

end

end A054327.P12026608743619532210

namespace A054327

/-- `A000581(2*n+9)*A131577(2*n+1)` -/
def P12026608743619532210.Spec : Prop :=
  ∀ n, P12026608743619532210.a n = A054327 n

end A054327

/-! ## A054327.P15525748134966492994

`A011782(A005408(n))*A053130(n+8)`
-/

namespace A054327.P15525748134966492994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A005408 n).toNat * A053130 (n + 8)

end

end A054327.P15525748134966492994

namespace A054327

/-- `A011782(A005408(n))*A053130(n+8)` -/
def P15525748134966492994.Spec : Prop :=
  ∀ n, P15525748134966492994.a n = A054327 n

end A054327

/-! ## A054327.P9592651767999783987

`A020920(n+1)/A000984(n+1)*A040075(n)`
-/

namespace A054327.P9592651767999783987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020920 (n + 1) : ℚ) / (A000984 (n + 1) : ℚ) * (A040075 n : ℚ)

end

end A054327.P9592651767999783987

namespace A054327

/-- `A020920(n+1)/A000984(n+1)*A040075(n)` -/
def P9592651767999783987.Spec : Prop :=
  ∀ n, P9592651767999783987.a n = (A054327 n : ℚ)

end A054327

/-! ## A054327.P10942798066218111588

`(A035927(2*n+1)-A035927(2*n))*A000079(n)²`
-/

namespace A054327.P10942798066218111588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035927 (2 * n + 1) - A035927 (2 * n)) * A000079 n ^ 2

end

end A054327.P10942798066218111588

namespace A054327

/-- `(A035927(2*n+1)-A035927(2*n))*A000079(n)²` -/
def P10942798066218111588.Spec : Prop :=
  ∀ n, P10942798066218111588.a n = A054327 n

end A054327

/-! ## A054327.P7176081725680462419

`(A035927(2*n+1)-A035927(2*n))*A000079(2*n)`
-/

namespace A054327.P7176081725680462419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035927 (2 * n + 1) - A035927 (2 * n)) * A000079 (2 * n)

end

end A054327.P7176081725680462419

namespace A054327

/-- `(A035927(2*n+1)-A035927(2*n))*A000079(2*n)` -/
def P7176081725680462419.Spec : Prop :=
  ∀ n, P7176081725680462419.a n = A054327 n

end A054327

/-! ## A054327.P3759731309702726578

`(A000582(2*(n+5))-A000582(2*n+9))*A000079(n)²`
-/

namespace A054327.P3759731309702726578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000582 (2 * (n + 5)) - A000582 (2 * n + 9)) * A000079 n ^ 2

end

end A054327.P3759731309702726578

namespace A054327

/-- `(A000582(2*(n+5))-A000582(2*n+9))*A000079(n)²` -/
def P3759731309702726578.Spec : Prop :=
  ∀ n, P3759731309702726578.a n = A054327 n

end A054327

/-! ## A054327.P12107432870228984978

`(A000582(2*(n+5))-A000582(2*n+9))*A000079(2*n)`
-/

namespace A054327.P12107432870228984978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000582 (2 * (n + 5)) - A000582 (2 * n + 9)) * A000079 (2 * n)

end

end A054327.P12107432870228984978

namespace A054327

/-- `(A000582(2*(n+5))-A000582(2*n+9))*A000079(2*n)` -/
def P12107432870228984978.Spec : Prop :=
  ∀ n, P12107432870228984978.a n = A054327 n

end A054327

/-! ## A054327.P14453670222084164643

`(A000582(2*(n+5))-A000582(2*n+9))*A059222(2*n+1)`
-/

namespace A054327.P14453670222084164643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000582 (2 * (n + 5)) - A000582 (2 * n + 9)) * A059222 (2 * n + 1)

end

end A054327.P14453670222084164643

namespace A054327

/-- `(A000582(2*(n+5))-A000582(2*n+9))*A059222(2*n+1)` -/
def P14453670222084164643.Spec : Prop :=
  ∀ n, P14453670222084164643.a n = A054327 n

end A054327

/-! ## A054327.P16540199757416090063

`A140325(Δ[n²])/2`
-/

namespace A054327.P16540199757416090063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140325 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A054327.P16540199757416090063

namespace A054327

/-- `A140325(Δ[n²])/2` -/
def P16540199757416090063.Spec : Prop :=
  ∀ n, P16540199757416090063.a n = (A054327 n : ℚ)

end A054327

/-! ## A054327.P2953587606758561810

`A140354(2*n+1)/2-A140354(2*n)`
-/

namespace A054327.P2953587606758561810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140354 (2 * n + 1) : ℚ) / 2 - (A140354 (2 * n) : ℚ)

end

end A054327.P2953587606758561810

namespace A054327

/-- `A140354(2*n+1)/2-A140354(2*n)` -/
def P2953587606758561810.Spec : Prop :=
  ∀ n, P2953587606758561810.a n = (A054327 n : ℚ)

end A054327

/-! ## A054327.P18318377987130886616

`2*A000079(n)²*A282077(2*n+1)-A140354(2*n)`
-/

namespace A054327.P18318377987130886616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 * A282077 (2 * n + 1) - A140354 (2 * n)

end

end A054327.P18318377987130886616

namespace A054327

/-- `2*A000079(n)²*A282077(2*n+1)-A140354(2*n)` -/
def P18318377987130886616.Spec : Prop :=
  ∀ n, P18318377987130886616.a n = A054327 n

end A054327

/-! ## A054327.P11312613172228976922

`A000079(2*n+1)*A282077(2*n+1)-A140354(2*n)`
-/

namespace A054327.P11312613172228976922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) * A282077 (2 * n + 1) - A140354 (2 * n)

end

end A054327.P11312613172228976922

namespace A054327

/-- `A000079(2*n+1)*A282077(2*n+1)-A140354(2*n)` -/
def P11312613172228976922.Spec : Prop :=
  ∀ n, P11312613172228976922.a n = A054327 n

end A054327

/-!
# A054328: Tenth unsigned column of Lanczos triangle A053125 (decreasing powers).

The programs for A054328, the canonical program `A054328.P7684220976945823803` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054328 has offset 0).

The definition of A054328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054328.P7684220976945823803

`4^n*C(2*n+10, 9)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054328

/-- `4^n*C(2*n+10, 9)` -/
def P7684220976945823803.Spec : Prop :=
  ∀ n, (P7684220976945823803.a n : ℤ) = A054328 n

theorem P7684220976945823803.correct : P7684220976945823803.Spec := by
  intro n
  simp only [A054328]

end A054328

/-! ## A054328.P17125633355272053413

`2*A054332(n)`
-/

namespace A054328.P17125633355272053413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054332 n

end

end A054328.P17125633355272053413

namespace A054328

/-- `2*A054332(n)` -/
def P17125633355272053413.Spec : Prop :=
  ∀ n, P17125633355272053413.a n = A054328 n

end A054328

/-! ## A054328.P4284551974743733765

`A140354(Δ[n²])/2`
-/

namespace A054328.P4284551974743733765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140354 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A054328.P4284551974743733765

namespace A054328

/-- `A140354(Δ[n²])/2` -/
def P4284551974743733765.Spec : Prop :=
  ∀ n, P4284551974743733765.a n = (A054328 n : ℚ)

end A054328

/-! ## A054328.P9072151110776320171

`4^n*A053131(n+9)`
-/

namespace A054328.P9072151110776320171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A053131 (n + 9)

end

end A054328.P9072151110776320171

namespace A054328

/-- `4^n*A053131(n+9)` -/
def P9072151110776320171.Spec : Prop :=
  ∀ n, P9072151110776320171.a n = A054328 n

end A054328

/-! ## A054328.P14173232866794077826

`4^n*A000582(2*(n+5))`
-/

namespace A054328.P14173232866794077826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000582 (2 * (n + 5))

end

end A054328.P14173232866794077826

namespace A054328

/-- `4^n*A000582(2*(n+5))` -/
def P14173232866794077826.Spec : Prop :=
  ∀ n, P14173232866794077826.a n = A054328 n

end A054328

/-! ## A054328.P11358745193995013127

`A004171(n)*A053133(n+9)`
-/

namespace A054328.P11358745193995013127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n * A053133 (n + 9)

end

end A054328.P11358745193995013127

namespace A054328

/-- `A004171(n)*A053133(n+9)` -/
def P11358745193995013127.Spec : Prop :=
  ∀ n, P11358745193995013127.a n = A054328 n

end A054328

/-! ## A054328.P18160635581707864536

`2*A053133(n+9)*A122803(n)²`
-/

namespace A054328.P18160635581707864536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053133 (n + 9) * A122803 n ^ 2)

end

end A054328.P18160635581707864536

namespace A054328

/-- `2*A053133(n+9)*A122803(n)²` -/
def P18160635581707864536.Spec : Prop :=
  ∀ n, P18160635581707864536.a n = A054328 n

end A054328

/-! ## A054328.P18355287491484427956

`(A035927(2*n+1)+1)*A000079(n)²`
-/

namespace A054328.P18355287491484427956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035927 (2 * n + 1) + 1) * A000079 n ^ 2

end

end A054328.P18355287491484427956

namespace A054328

/-- `(A035927(2*n+1)+1)*A000079(n)²` -/
def P18355287491484427956.Spec : Prop :=
  ∀ n, P18355287491484427956.a n = A054328 n

end A054328

/-! ## A054328.P2197014418598256227

`2*A000079(n)²*A282077(2*n+1)`
-/

namespace A054328.P2197014418598256227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 * A282077 (2 * n + 1)

end

end A054328.P2197014418598256227

namespace A054328

/-- `2*A000079(n)²*A282077(2*n+1)` -/
def P2197014418598256227.Spec : Prop :=
  ∀ n, P2197014418598256227.a n = A054328 n

end A054328

/-! ## A054328.P1649233752408554326

`(A035927(2*n+1)+1)*A000079(2*n)`
-/

namespace A054328.P1649233752408554326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035927 (2 * n + 1) + 1) * A000079 (2 * n)

end

end A054328.P1649233752408554326

namespace A054328

/-- `(A035927(2*n+1)+1)*A000079(2*n)` -/
def P1649233752408554326.Spec : Prop :=
  ∀ n, P1649233752408554326.a n = A054328 n

end A054328

/-! ## A054328.P9417893614486025023

`A000079(2*n+1)*A282077(2*n+1)`
-/

namespace A054328.P9417893614486025023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) * A282077 (2 * n + 1)

end

end A054328.P9417893614486025023

namespace A054328

/-- `A000079(2*n+1)*A282077(2*n+1)` -/
def P9417893614486025023.Spec : Prop :=
  ∀ n, P9417893614486025023.a n = A054328 n

end A054328

/-! ## A054328.P16387058223446716812

`A000582(2*(n+5))*A059222(2*n+1)`
-/

namespace A054328.P16387058223446716812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (2 * (n + 5)) * A059222 (2 * n + 1)

end

end A054328.P16387058223446716812

namespace A054328

/-- `A000582(2*(n+5))*A059222(2*n+1)` -/
def P16387058223446716812.Spec : Prop :=
  ∀ n, P16387058223446716812.a n = A054328 n

end A054328

/-! ## A054328.P10508323290964377879

`2*A011782(n+1)²*A282077(2*n+1)`
-/

namespace A054328.P10508323290964377879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 (n + 1) ^ 2 * A282077 (2 * n + 1))

end

end A054328.P10508323290964377879

namespace A054328

/-- `2*A011782(n+1)²*A282077(2*n+1)` -/
def P10508323290964377879.Spec : Prop :=
  ∀ n, P10508323290964377879.a n = A054328 n

end A054328

/-! ## A054328.P13339693893982648416

`2*A011782(n+1)²*A282085(2*n+1)`
-/

namespace A054328.P13339693893982648416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 (n + 1) ^ 2 * A282085 (2 * n + 1))

end

end A054328.P13339693893982648416

namespace A054328

/-- `2*A011782(n+1)²*A282085(2*n+1)` -/
def P13339693893982648416.Spec : Prop :=
  ∀ n, P13339693893982648416.a n = A054328 n

end A054328

/-! ## A054328.P5820127977463515706

`2*A011782(2*n+1)*A282077(2*n+1)`
-/

namespace A054328.P5820127977463515706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 (2 * n + 1) * A282077 (2 * n + 1))

end

end A054328.P5820127977463515706

namespace A054328

/-- `2*A011782(2*n+1)*A282077(2*n+1)` -/
def P5820127977463515706.Spec : Prop :=
  ∀ n, P5820127977463515706.a n = A054328 n

end A054328

/-! ## A054328.P10181607786502565547

`2*A011782(2*n+1)*A282085(2*n+1)`
-/

namespace A054328.P10181607786502565547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 (2 * n + 1) * A282085 (2 * n + 1))

end

end A054328.P10181607786502565547

namespace A054328

/-- `2*A011782(2*n+1)*A282085(2*n+1)` -/
def P10181607786502565547.Spec : Prop :=
  ∀ n, P10181607786502565547.a n = A054328 n

end A054328

/-! ## A054328.P9261514426146755921

`A000079(2*n+1)*A000582(2*(n+5))/2`
-/

namespace A054328.P9261514426146755921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n + 1) * A000582 (2 * (n + 5)) : ℚ) / 2

end

end A054328.P9261514426146755921

namespace A054328

/-- `A000079(2*n+1)*A000582(2*(n+5))/2` -/
def P9261514426146755921.Spec : Prop :=
  ∀ n, P9261514426146755921.a n = (A054328 n : ℚ)

end A054328

/-! ## A054328.P15015493568815308674

`2*A053133(n+9)*A122803(A005843(n))`
-/

namespace A054328.P15015493568815308674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053133 (n + 9) * A122803 (A005843 n).toNat)

end

end A054328.P15015493568815308674

namespace A054328

/-- `2*A053133(n+9)*A122803(A005843(n))` -/
def P15015493568815308674.Spec : Prop :=
  ∀ n, P15015493568815308674.a n = A054328 n

end A054328

/-! ## A054328.P13942415852355377182

`A040075(n+1)/A000984(n+1)*A020922(n)`
-/

namespace A054328.P13942415852355377182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040075 (n + 1) : ℚ) / (A000984 (n + 1) : ℚ) * (A020922 n : ℚ)

end

end A054328.P13942415852355377182

namespace A054328

/-- `A040075(n+1)/A000984(n+1)*A020922(n)` -/
def P13942415852355377182.Spec : Prop :=
  ∀ n, P13942415852355377182.a n = (A054328 n : ℚ)

end A054328

/-! ## A054328.P1347284563496146788

`A053131(n+9)/A002492(n+1)*A054322(n)`
-/

namespace A054328.P1347284563496146788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053131 (n + 9) : ℚ) / (A002492 (n + 1) : ℚ) * (A054322 n : ℚ)

end

end A054328.P1347284563496146788

namespace A054328

/-- `A053131(n+9)/A002492(n+1)*A054322(n)` -/
def P1347284563496146788.Spec : Prop :=
  ∀ n, P1347284563496146788.a n = (A054328 n : ℚ)

end A054328

/-!
# A054329: One quarter of fourth unsigned column of Lanczos' triangle A053125.

The programs for A054329, the canonical program `A054329.P8572352450619330285` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054329 has offset 0).

The definition of A054329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054329.P9981592792081069263

`4^(n-1)*C(2*n+4, 3)`
-/

namespace A054329.P9981592792081069263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n + 4) 3 : ℚ)

end

end A054329.P9981592792081069263

namespace A054329

/-- `4^(n-1)*C(2*n+4, 3)` -/
def P9981592792081069263.Spec : Prop :=
  ∀ n, P9981592792081069263.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P8572352450619330285

`A054322(n)/4`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054329

/-- `A054322(n)/4` -/
def P8572352450619330285.Spec : Prop :=
  ∀ n, P8572352450619330285.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P13791783707725971226

`4^n*∑[(n+1)²]`
-/

namespace A054329.P13791783707725971226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054329.P13791783707725971226

namespace A054329

/-- `4^n*∑[(n+1)²]` -/
def P13791783707725971226.Spec : Prop :=
  ∀ n, (P13791783707725971226.a n : ℤ) = A054329 n

end A054329

/-! ## A054329.P15267519664630862328

`record[-((6/(n+1)+2)*a(n-1))]` with `a(0)=1`
-/

namespace A054329.P15267519664630862328
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -((6 / (n + 1 : ℚ) + 2) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054329.P15267519664630862328

namespace A054329

/-- `record[-((6/(n+1)+2)*a(n-1))]` -/
def P15267519664630862328.Spec : Prop :=
  ∀ n, P15267519664630862328.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P13847276595583649253

`A080930(2*n)`
-/

namespace A054329.P13847276595583649253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080930 (2 * n)

end

end A054329.P13847276595583649253

namespace A054329

/-- `A080930(2*n)` -/
def P13847276595583649253.Spec : Prop :=
  ∀ n, P13847276595583649253.a n = A054329 n

end A054329

/-! ## A054329.P6874596811138980390

`A124722(2*n+5)/2`
-/

namespace A054329.P6874596811138980390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124722 (2 * n + 5) : ℚ) / 2

end

end A054329.P6874596811138980390

namespace A054329

/-- `A124722(2*n+5)/2` -/
def P6874596811138980390.Spec : Prop :=
  ∀ n, P6874596811138980390.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P12353768234416533445

`∑[(n+1)²]*A004171(n)/2`
-/

namespace A054329.P12353768234416533445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004171 n : ℚ) / 2

end

end A054329.P12353768234416533445

namespace A054329

/-- `∑[(n+1)²]*A004171(n)/2` -/
def P12353768234416533445.Spec : Prop :=
  ∀ n, P12353768234416533445.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P2338430692838282828

`2*A038846(n)-A038845(n)`
-/

namespace A054329.P2338430692838282828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038846 n - A038845 n

end

end A054329.P2338430692838282828

namespace A054329

/-- `2*A038846(n)-A038845(n)` -/
def P2338430692838282828.Spec : Prop :=
  ∀ n, P2338430692838282828.a n = A054329 n

end A054329

/-! ## A054329.P16002310584599127097

`(A001794(2*n)+A001792(2*n))/2`
-/

namespace A054329.P16002310584599127097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001794 (2 * n) + A001792 (2 * n) : ℚ) / 2

end

end A054329.P16002310584599127097

namespace A054329

/-- `(A001794(2*n)+A001792(2*n))/2` -/
def P16002310584599127097.Spec : Prop :=
  ∀ n, P16002310584599127097.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P2813487380677451658

`A000330(n+1)*A052539(n)-A000330(n+1)`
-/

namespace A054329.P2813487380677451658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) * A052539 n - A000330 (n + 1)

end

end A054329.P2813487380677451658

namespace A054329

/-- `A000330(n+1)*A052539(n)-A000330(n+1)` -/
def P2813487380677451658.Spec : Prop :=
  ∀ n, P2813487380677451658.a n = A054329 n

end A054329

/-! ## A054329.P9962244055636044714

`A082138(2*n+1)/4`
-/

namespace A054329.P9962244055636044714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082138 (2 * n + 1) : ℚ) / 4

end

end A054329.P9962244055636044714

namespace A054329

/-- `A082138(2*n+1)/4` -/
def P9962244055636044714.Spec : Prop :=
  ∀ n, P9962244055636044714.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P14518397015964048676

`A001789(2*(n+2))/8`
-/

namespace A054329.P14518397015964048676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (2 * (n + 2)) : ℚ) / 8

end

end A054329.P14518397015964048676

namespace A054329

/-- `A001789(2*(n+2))/8` -/
def P14518397015964048676.Spec : Prop :=
  ∀ n, P14518397015964048676.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P5796417028781645573

`A003472(2*(n+2))/(2*n+1)`
-/

namespace A054329.P5796417028781645573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003472 (2 * (n + 2)) : ℚ) / (2 * n + 1 : ℚ)

end

end A054329.P5796417028781645573

namespace A054329

/-- `A003472(2*(n+2))/(2*n+1)` -/
def P5796417028781645573.Spec : Prop :=
  ∀ n, P5796417028781645573.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P13072384008736428012

`gcd(A054322(n), A054323(n))`
-/

namespace A054329.P13072384008736428012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054322 n) (A054323 n)

end

end A054329.P13072384008736428012

namespace A054329

/-- `gcd(A054322(n), A054323(n))` -/
def P13072384008736428012.Spec : Prop :=
  ∀ n, (P13072384008736428012.a n : ℤ) = A054329 n

end A054329

/-! ## A054329.P6377141406528926965

`gcd(2*A080951(2*n), A080951(2*n+1))`
-/

namespace A054329.P6377141406528926965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A080951 (2 * n)) (A080951 (2 * n + 1))

end

end A054329.P6377141406528926965

namespace A054329

/-- `gcd(2*A080951(2*n), A080951(2*n+1))` -/
def P6377141406528926965.Spec : Prop :=
  ∀ n, (P6377141406528926965.a n : ℤ) = A054329 n

end A054329

/-! ## A054329.P2821583838952207263

`A014483(n)²/A000330(n+1)`
-/

namespace A054329.P2821583838952207263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014483 n ^ 2 : ℚ) / (A000330 (n + 1) : ℚ)

end

end A054329.P2821583838952207263

namespace A054329

/-- `A014483(n)²/A000330(n+1)` -/
def P2821583838952207263.Spec : Prop :=
  ∀ n, P2821583838952207263.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P13765677382169482686

`A087076(n+1)²/A000330(n+1)`
-/

namespace A054329.P13765677382169482686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087076 (n + 1) ^ 2 : ℚ) / (A000330 (n + 1) : ℚ)

end

end A054329.P13765677382169482686

namespace A054329

/-- `A087076(n+1)²/A000330(n+1)` -/
def P13765677382169482686.Spec : Prop :=
  ∀ n, P13765677382169482686.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P10375508034396939511

`A000330(n+1)*A014483(2*n)/A000330(2*n+1)`
-/

namespace A054329.P10375508034396939511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 1) * A014483 (2 * n) : ℚ) / (A000330 (2 * n + 1) : ℚ)

end

end A054329.P10375508034396939511

namespace A054329

/-- `A000330(n+1)*A014483(2*n)/A000330(2*n+1)` -/
def P10375508034396939511.Spec : Prop :=
  ∀ n, P10375508034396939511.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P10480880217734471802

`A000330(n+1)*A087076(2*n+1)/A000330(2*n+1)`
-/

namespace A054329.P10480880217734471802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 1) * A087076 (2 * n + 1) : ℚ) / (A000330 (2 * n + 1) : ℚ)

end

end A054329.P10480880217734471802

namespace A054329

/-- `A000330(n+1)*A087076(2*n+1)/A000330(2*n+1)` -/
def P10480880217734471802.Spec : Prop :=
  ∀ n, P10480880217734471802.a n = (A054329 n : ℚ)

end A054329

/-! ## A054329.P15565510131919359028

`A054849(2*n+5)*A130809(2*(n+2))/A130811(2*n+5)`
-/

namespace A054329.P15565510131919359028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (2 * n + 5) * A130809 (2 * (n + 2)) : ℚ) / (A130811 (2 * n + 5) : ℚ)

end

end A054329.P15565510131919359028

namespace A054329

/-- `A054849(2*n+5)*A130809(2*(n+2))/A130811(2*n+5)` -/
def P15565510131919359028.Spec : Prop :=
  ∀ n, P15565510131919359028.a n = (A054329 n : ℚ)

end A054329

/-!
# A054330: One half of sixth unsigned column of Lanczos' triangle A053125.

The programs for A054330, the canonical program `A054330.P8554570175706362975` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054330 has offset 0).

The definition of A054330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054330.P6421249913731111198

`2^(2*n-1)*C(2*n+6, 5)`
-/

namespace A054330.P6421249913731111198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n + 6) 5 : ℚ)

end

end A054330.P6421249913731111198

namespace A054330

/-- `2^(2*n-1)*C(2*n+6, 5)` -/
def P6421249913731111198.Spec : Prop :=
  ∀ n, P6421249913731111198.a n = (A054330 n : ℚ)

end A054330

/-! ## A054330.P8554570175706362975

`A054324(n)/2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054330

/-- `A054324(n)/2` -/
def P8554570175706362975.Spec : Prop :=
  ∀ n, P8554570175706362975.a n = (A054330 n : ℚ)

end A054330

/-! ## A054330.P1622716995975599732

`C(2*(n+3), 5)/2*4^n`
-/

namespace A054330.P1622716995975599732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 3)) 5 : ℚ) / 2 * (4 ^ n : ℚ)

end

end A054330.P1622716995975599732

namespace A054330

/-- `C(2*(n+3), 5)/2*4^n` -/
def P1622716995975599732.Spec : Prop :=
  ∀ n, P1622716995975599732.a n = (A054330 n : ℚ)

end A054330

/-! ## A054330.P11494530991260156622

`record[-((10/(n+1)+2)*a(n-1))]` with `a(0)=3`
-/

namespace A054330.P11494530991260156622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  -((10 / (n + 1 : ℚ) + 2) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054330.P11494530991260156622

namespace A054330

/-- `record[-((10/(n+1)+2)*a(n-1))]` -/
def P11494530991260156622.Spec : Prop :=
  ∀ n, P11494530991260156622.a n = (A054330 n : ℚ)

end A054330

/-! ## A054330.P13858118184842408327

`A080952(2*n)`
-/

namespace A054330.P13858118184842408327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080952 (2 * n)

end

end A054330.P13858118184842408327

namespace A054330

/-- `A080952(2*n)` -/
def P13858118184842408327.Spec : Prop :=
  ∀ n, P13858118184842408327.a n = A054330 n

end A054330

/-! ## A054330.P12213524122576605898

`record[A080952(n)/(-1)^n]`
-/

namespace A054330.P12213524122576605898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080952 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054330.P12213524122576605898

namespace A054330

/-- `record[A080952(n)/(-1)^n]` -/
def P12213524122576605898.Spec : Prop :=
  ∀ n, P12213524122576605898.a n = (A054330 n : ℚ)

end A054330

/-! ## A054330.P8977650718100068049

`4^n*A053132(n+5)`
-/

namespace A054330.P8977650718100068049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A053132 (n + 5)

end

end A054330.P8977650718100068049

namespace A054330

/-- `4^n*A053132(n+5)` -/
def P8977650718100068049.Spec : Prop :=
  ∀ n, P8977650718100068049.a n = A054330 n

end A054330

/-! ## A054330.P9749020650792195881

`record[A080952(A014681(n))]`
-/

namespace A054330.P9749020650792195881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080952 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054330.P9749020650792195881

namespace A054330

/-- `record[A080952(A014681(n))]` -/
def P9749020650792195881.Spec : Prop :=
  ∀ n, P9749020650792195881.a n = A054330 n

end A054330

/-! ## A054330.P11040209436029599901

`record[A080952(A131452(n))]`
-/

namespace A054330.P11040209436029599901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080952 (A131452 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054330.P11040209436029599901

namespace A054330

/-- `record[A080952(A131452(n))]` -/
def P11040209436029599901.Spec : Prop :=
  ∀ n, P11040209436029599901.a n = A054330 n

end A054330

/-! ## A054330.P4340805704246954367

`record[gcd(A080952(n), A135481(n))]`
-/

namespace A054330.P4340805704246954367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080952 n) (A135481 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054330.P4340805704246954367

namespace A054330

/-- `record[gcd(A080952(n), A135481(n))]` -/
def P4340805704246954367.Spec : Prop :=
  ∀ n, (P4340805704246954367.a n : ℤ) = A054330 n

end A054330

/-! ## A054330.P2752957238157641256

`A053127(n+5)/2*A000302(n)`
-/

namespace A054330.P2752957238157641256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053127 (n + 5) : ℚ) / 2 * (A000302 n : ℚ)

end

end A054330.P2752957238157641256

namespace A054330

/-- `A053127(n+5)/2*A000302(n)` -/
def P2752957238157641256.Spec : Prop :=
  ∀ n, P2752957238157641256.a n = (A054330 n : ℚ)

end A054330

/-! ## A054330.P4618527445397134096

`A053132(n+5)/2*A004171(n)`
-/

namespace A054330.P4618527445397134096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053132 (n + 5) : ℚ) / 2 * (A004171 n : ℚ)

end

end A054330.P4618527445397134096

namespace A054330

/-- `A053132(n+5)/2*A004171(n)` -/
def P4618527445397134096.Spec : Prop :=
  ∀ n, P4618527445397134096.a n = (A054330 n : ℚ)

end A054330

/-! ## A054330.P17627476221320760753

`A005995(2*n+1)*A011782(n+1)²`
-/

namespace A054330.P17627476221320760753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 (2 * n + 1) * A011782 (n + 1) ^ 2

end

end A054330.P17627476221320760753

namespace A054330

/-- `A005995(2*n+1)*A011782(n+1)²` -/
def P17627476221320760753.Spec : Prop :=
  ∀ n, P17627476221320760753.a n = A054330 n

end A054330

/-! ## A054330.P3788645155039787782

`A011782(n+1)²*A282081(2*n+1)`
-/

namespace A054330.P3788645155039787782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 * A282081 (2 * n + 1)

end

end A054330.P3788645155039787782

namespace A054330

/-- `A011782(n+1)²*A282081(2*n+1)` -/
def P3788645155039787782.Spec : Prop :=
  ∀ n, P3788645155039787782.a n = A054330 n

end A054330

/-! ## A054330.P11229581654790669330

`A005995(2*n+1)*A011782(2*n+1)`
-/

namespace A054330.P11229581654790669330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 (2 * n + 1) * A011782 (2 * n + 1)

end

end A054330.P11229581654790669330

namespace A054330

/-- `A005995(2*n+1)*A011782(2*n+1)` -/
def P11229581654790669330.Spec : Prop :=
  ∀ n, P11229581654790669330.a n = A054330 n

end A054330

/-! ## A054330.P2535042347733032796

`A011782(2*n+1)*A282081(2*n+1)`
-/

namespace A054330.P2535042347733032796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) * A282081 (2 * n + 1)

end

end A054330.P2535042347733032796

namespace A054330

/-- `A011782(2*n+1)*A282081(2*n+1)` -/
def P2535042347733032796.Spec : Prop :=
  ∀ n, P2535042347733032796.a n = A054330 n

end A054330

/-! ## A054330.P9841752612878166991

`record[A080952(A029578(A004442(n)))]`
-/

namespace A054330.P9841752612878166991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080952 (A029578 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054330.P9841752612878166991

namespace A054330

/-- `record[A080952(A029578(A004442(n)))]` -/
def P9841752612878166991.Spec : Prop :=
  ∀ n, P9841752612878166991.a n = A054330 n

end A054330

/-! ## A054330.P8057171716430870278

`A001792(2*n)+A006975(2*n)+A001794(2*n)`
-/

namespace A054330.P8057171716430870278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n) + (A006975 (2 * n) + A001794 (2 * n))

end

end A054330.P8057171716430870278

namespace A054330

/-- `A001792(2*n)+A006975(2*n)+A001794(2*n)` -/
def P8057171716430870278.Spec : Prop :=
  ∀ n, P8057171716430870278.a n = A054330 n

end A054330

/-! ## A054330.P8455660169875917185

`A082139(Δ[n²])/2`
-/

namespace A054330.P8455660169875917185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082139 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A054330.P8455660169875917185

namespace A054330

/-- `A082139(Δ[n²])/2` -/
def P8455660169875917185.Spec : Prop :=
  ∀ n, P8455660169875917185.a n = (A054330 n : ℚ)

end A054330

/-! ## A054330.P3497414677287094356

`A054849(2*(n+3))/4`
-/

namespace A054330.P3497414677287094356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (2 * (n + 3)) : ℚ) / 4

end

end A054330.P3497414677287094356

namespace A054330

/-- `A054849(2*(n+3))/4` -/
def P3497414677287094356.Spec : Prop :=
  ∀ n, P3497414677287094356.a n = (A054330 n : ℚ)

end A054330

/-!
# A054331: One eighth of eighth unsigned column of Lanczos triangle A053125.

The programs for A054331, the canonical program `A054331.P3198170004335640972` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054331 has offset 0).

The definition of A054331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054331.P11797703070228946380

`2^(2*n-3)*C(2*n+8, 7)`
-/

namespace A054331.P11797703070228946380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - 3 : ℤ) * (Nat.choose (2 * n + 8) 7 : ℚ)

end

end A054331.P11797703070228946380

namespace A054331

/-- `2^(2*n-3)*C(2*n+8, 7)` -/
def P11797703070228946380.Spec : Prop :=
  ∀ n, P11797703070228946380.a n = (A054331 n : ℚ)

end A054331

/-! ## A054331.P3198170004335640972

`A054326(n)/8`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054331

/-- `A054326(n)/8` -/
def P3198170004335640972.Spec : Prop :=
  ∀ n, P3198170004335640972.a n = (A054331 n : ℚ)

end A054331

/-! ## A054331.P9979548177111597277

`A000302(n)*A000973(n+8)`
-/

namespace A054331.P9979548177111597277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A000973 (n + 8)

end

end A054331.P9979548177111597277

namespace A054331

/-- `A000302(n)*A000973(n+8)` -/
def P9979548177111597277.Spec : Prop :=
  ∀ n, P9979548177111597277.a n = A054331 n

end A054331

/-! ## A054331.P14605350138065795235

`A000079(n)²*A031164(2*n)`
-/

namespace A054331.P14605350138065795235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A031164 (2 * n)

end

end A054331.P14605350138065795235

namespace A054331

/-- `A000079(n)²*A031164(2*n)` -/
def P14605350138065795235.Spec : Prop :=
  ∀ n, P14605350138065795235.a n = A054331 n

end A054331

/-! ## A054331.P15391674135106239307

`A000079(n)²*A000973(n+8)`
-/

namespace A054331.P15391674135106239307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A000973 (n + 8)

end

end A054331.P15391674135106239307

namespace A054331

/-- `A000079(n)²*A000973(n+8)` -/
def P15391674135106239307.Spec : Prop :=
  ∀ n, P15391674135106239307.a n = A054331 n

end A054331

/-! ## A054331.P14675015971698658207

`A000079(2*n)*A031164(2*n)`
-/

namespace A054331.P14675015971698658207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A031164 (2 * n)

end

end A054331.P14675015971698658207

namespace A054331

/-- `A000079(2*n)*A031164(2*n)` -/
def P14675015971698658207.Spec : Prop :=
  ∀ n, P14675015971698658207.a n = A054331 n

end A054331

/-! ## A054331.P10339668563072671888

`A000079(2*n)*A000973(n+8)`
-/

namespace A054331.P10339668563072671888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A000973 (n + 8)

end

end A054331.P10339668563072671888

namespace A054331

/-- `A000079(2*n)*A000973(n+8)` -/
def P10339668563072671888.Spec : Prop :=
  ∀ n, P10339668563072671888.a n = A054331 n

end A054331

/-! ## A054331.P17182105244483317179

`A000079(n)²*A362906(2*n+1)`
-/

namespace A054331.P17182105244483317179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A362906 (2 * n + 1)

end

end A054331.P17182105244483317179

namespace A054331

/-- `A000079(n)²*A362906(2*n+1)` -/
def P17182105244483317179.Spec : Prop :=
  ∀ n, P17182105244483317179.a n = A054331 n

end A054331

/-! ## A054331.P1126432217995699050

`A000079(2*n)*A362906(2*n+1)`
-/

namespace A054331.P1126432217995699050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A362906 (2 * n + 1)

end

end A054331.P1126432217995699050

namespace A054331

/-- `A000079(2*n)*A362906(2*n+1)` -/
def P1126432217995699050.Spec : Prop :=
  ∀ n, P1126432217995699050.a n = A054331 n

end A054331

/-! ## A054331.P10365649326508219403

`A082141(2*n+1)/8`
-/

namespace A054331.P10365649326508219403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082141 (2 * n + 1) : ℚ) / 8

end

end A054331.P10365649326508219403

namespace A054331

/-- `A082141(2*n+1)/8` -/
def P10365649326508219403.Spec : Prop :=
  ∀ n, P10365649326508219403.a n = (A054331 n : ℚ)

end A054331

/-! ## A054331.P8867078179276572124

`A054851(2*n+8)/A036453(n+2)²²`
-/

namespace A054331.P8867078179276572124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054851 (2 * n + 8) : ℚ) / ((A036453 (n + 2) ^ 2) ^ 2 : ℚ)

end

end A054331.P8867078179276572124

namespace A054331

/-- `A054851(2*n+8)/A036453(n+2)²²` -/
def P8867078179276572124.Spec : Prop :=
  ∀ n, P8867078179276572124.a n = (A054331 n : ℚ)

end A054331

/-! ## A054331.P3325297849907101989

`A140325(2*n)/Δ[n²]`
-/

namespace A054331.P3325297849907101989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140325 (2 * n) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A054331.P3325297849907101989

namespace A054331

/-- `A140325(2*n)/Δ[n²]` -/
def P3325297849907101989.Spec : Prop :=
  ∀ n, P3325297849907101989.a n = (A054331 n : ℚ)

end A054331

/-! ## A054331.P4552716591239403805

`gcd(A054326(n), A054327(n))`
-/

namespace A054331.P4552716591239403805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054326 n) (A054327 n)

end

end A054331.P4552716591239403805

namespace A054331

/-- `gcd(A054326(n), A054327(n))` -/
def P4552716591239403805.Spec : Prop :=
  ∀ n, (P4552716591239403805.a n : ℤ) = A054331 n

end A054331

/-! ## A054331.P3849991679888003226

`gcd(A140325(2*n+1), A140325(2*n))`
-/

namespace A054331.P3849991679888003226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140325 (2 * n + 1)) (A140325 (2 * n))

end

end A054331.P3849991679888003226

namespace A054331

/-- `gcd(A140325(2*n+1), A140325(2*n))` -/
def P3849991679888003226.Spec : Prop :=
  ∀ n, (P3849991679888003226.a n : ℤ) = A054331 n

end A054331

/-!
# A054332: One half of tenth unsigned column of Lanczos triangle A053125 (decreasing powers).

The programs for A054332, the canonical program `A054332.P14236572035809434950` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054332 has offset 0).

The definition of A054332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054332.P16912246340715778143

`2^(2*n-1)*C(2*n+10, 9)`
-/

namespace A054332.P16912246340715778143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n + 10) 9 : ℚ)

end

end A054332.P16912246340715778143

namespace A054332

/-- `2^(2*n-1)*C(2*n+10, 9)` -/
def P16912246340715778143.Spec : Prop :=
  ∀ n, P16912246340715778143.a n = (A054332 n : ℚ)

end A054332

/-! ## A054332.P14236572035809434950

`A054328(n)/2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054332

/-- `A054328(n)/2` -/
def P14236572035809434950.Spec : Prop :=
  ∀ n, P14236572035809434950.a n = (A054332 n : ℚ)

end A054332

/-! ## A054332.P14273578338918221550

`4^n*A053133(n+9)`
-/

namespace A054332.P14273578338918221550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A053133 (n + 9)

end

end A054332.P14273578338918221550

namespace A054332

/-- `4^n*A053133(n+9)` -/
def P14273578338918221550.Spec : Prop :=
  ∀ n, P14273578338918221550.a n = A054332 n

end A054332

/-! ## A054332.P5848685203625428138

`4^n*A282085(2*n+1)`
-/

namespace A054332.P5848685203625428138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A282085 (2 * n + 1)

end

end A054332.P5848685203625428138

namespace A054332

/-- `4^n*A282085(2*n+1)` -/
def P5848685203625428138.Spec : Prop :=
  ∀ n, P5848685203625428138.a n = A054332 n

end A054332

/-! ## A054332.P3352337918236015208

`A053133(n+9)*A122803(n)²`
-/

namespace A054332.P3352337918236015208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053133 (n + 9) * A122803 n ^ 2

end

end A054332.P3352337918236015208

namespace A054332

/-- `A053133(n+9)*A122803(n)²` -/
def P3352337918236015208.Spec : Prop :=
  ∀ n, P3352337918236015208.a n = A054332 n

end A054332

/-! ## A054332.P9657996543017748676

`A053133(n+9)*A122803(2*n)`
-/

namespace A054332.P9657996543017748676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053133 (n + 9) * A122803 (2 * n)

end

end A054332.P9657996543017748676

namespace A054332

/-- `A053133(n+9)*A122803(2*n)` -/
def P9657996543017748676.Spec : Prop :=
  ∀ n, P9657996543017748676.a n = A054332 n

end A054332

/-! ## A054332.P480796163750474936

`A053133(n+9)/2*A004171(n)`
-/

namespace A054332.P480796163750474936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053133 (n + 9) : ℚ) / 2 * (A004171 n : ℚ)

end

end A054332.P480796163750474936

namespace A054332

/-- `A053133(n+9)/2*A004171(n)` -/
def P480796163750474936.Spec : Prop :=
  ∀ n, P480796163750474936.a n = (A054332 n : ℚ)

end A054332

/-! ## A054332.P3489088407709444913

`A000079(n)²*A282077(2*n+1)`
-/

namespace A054332.P3489088407709444913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A282077 (2 * n + 1)

end

end A054332.P3489088407709444913

namespace A054332

/-- `A000079(n)²*A282077(2*n+1)` -/
def P3489088407709444913.Spec : Prop :=
  ∀ n, P3489088407709444913.a n = A054332 n

end A054332

/-! ## A054332.P4399702352169641607

`A000079(2*n)*A282077(2*n+1)`
-/

namespace A054332.P4399702352169641607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A282077 (2 * n + 1)

end

end A054332.P4399702352169641607

namespace A054332

/-- `A000079(2*n)*A282077(2*n+1)` -/
def P4399702352169641607.Spec : Prop :=
  ∀ n, P4399702352169641607.a n = A054332 n

end A054332

/-! ## A054332.P13971415254982345769

`A011782(n+1)²*A282077(2*n+1)`
-/

namespace A054332.P13971415254982345769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 * A282077 (2 * n + 1)

end

end A054332.P13971415254982345769

namespace A054332

/-- `A011782(n+1)²*A282077(2*n+1)` -/
def P13971415254982345769.Spec : Prop :=
  ∀ n, P13971415254982345769.a n = A054332 n

end A054332

/-! ## A054332.P9564047382596631124

`A000582(2*(n+5))/2*A000079(n)²`
-/

namespace A054332.P9564047382596631124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000582 (2 * (n + 5)) : ℚ) / 2 * (A000079 n ^ 2 : ℚ)

end

end A054332.P9564047382596631124

namespace A054332

/-- `A000582(2*(n+5))/2*A000079(n)²` -/
def P9564047382596631124.Spec : Prop :=
  ∀ n, P9564047382596631124.a n = (A054332 n : ℚ)

end A054332

/-! ## A054332.P14138457148985948897

`A011782(2*n+1)*A282077(2*n+1)`
-/

namespace A054332.P14138457148985948897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) * A282077 (2 * n + 1)

end

end A054332.P14138457148985948897

namespace A054332

/-- `A011782(2*n+1)*A282077(2*n+1)` -/
def P14138457148985948897.Spec : Prop :=
  ∀ n, P14138457148985948897.a n = A054332 n

end A054332

/-! ## A054332.P17063725425291133366

`A000582(2*(n+5))/2*A000079(2*n)`
-/

namespace A054332.P17063725425291133366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000582 (2 * (n + 5)) : ℚ) / 2 * (A000079 (2 * n) : ℚ)

end

end A054332.P17063725425291133366

namespace A054332

/-- `A000582(2*(n+5))/2*A000079(2*n)` -/
def P17063725425291133366.Spec : Prop :=
  ∀ n, P17063725425291133366.a n = (A054332 n : ℚ)

end A054332

/-! ## A054332.P15962094775700858164

`A059222(2*n+1)/2*A000582(2*(n+5))`
-/

namespace A054332.P15962094775700858164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059222 (2 * n + 1) : ℚ) / 2 * (A000582 (2 * (n + 5)) : ℚ)

end

end A054332.P15962094775700858164

namespace A054332

/-- `A059222(2*n+1)/2*A000582(2*(n+5))` -/
def P15962094775700858164.Spec : Prop :=
  ∀ n, P15962094775700858164.a n = (A054332 n : ℚ)

end A054332

/-! ## A054332.P13342220394327756383

`(A282078(2*n+1)-A282078(2*n))*A011782(n+1)²`
-/

namespace A054332.P13342220394327756383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A282078 (2 * n + 1) - A282078 (2 * n)) * A011782 (n + 1) ^ 2

end

end A054332.P13342220394327756383

namespace A054332

/-- `(A282078(2*n+1)-A282078(2*n))*A011782(n+1)²` -/
def P13342220394327756383.Spec : Prop :=
  ∀ n, P13342220394327756383.a n = A054332 n

end A054332

/-! ## A054332.P5337793033382113635

`(A282078(2*n+1)-A282078(2*n))*A011782(2*n+1)`
-/

namespace A054332.P5337793033382113635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A282078 (2 * n + 1) - A282078 (2 * n)) * A011782 (2 * n + 1)

end

end A054332.P5337793033382113635

namespace A054332

/-- `(A282078(2*n+1)-A282078(2*n))*A011782(2*n+1)` -/
def P5337793033382113635.Spec : Prop :=
  ∀ n, P5337793033382113635.a n = A054332 n

end A054332

/-! ## A054332.P17909714946324414192

`A140354(2*n+1)/4`
-/

namespace A054332.P17909714946324414192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140354 (2 * n + 1) : ℚ) / 4

end

end A054332.P17909714946324414192

namespace A054332

/-- `A140354(2*n+1)/4` -/
def P17909714946324414192.Spec : Prop :=
  ∀ n, P17909714946324414192.a n = (A054332 n : ℚ)

end A054332

/-!
# A054333: 1/256 of tenth unsigned column of triangle A053120 (T-Chebyshev, rising powers, zeros omitted).

The programs for A054333, the canonical program `A054333.P12017629139080086520` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054333 has offset 0).

The definition of A054333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054333.P12017629139080086520

`C(n+8, 8)+2*C(n+8, 9)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054333

/-- `C(n+8, 8)+2*C(n+8, 9)` -/
def P12017629139080086520.Spec : Prop :=
  ∀ n, (P12017629139080086520.a n : ℤ) = A054333 n

theorem P12017629139080086520.correct : P12017629139080086520.Spec := by
  intro n
  simp only [A054333]

end A054333

/-! ## A054333.P17597211832508528551

`∑[∑[∑[∑[∑[∑[∑[(n+1)²]]]]]]]`
-/

namespace A054333.P17597211832508528551
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054333.P17597211832508528551

namespace A054333

/-- `∑[∑[∑[∑[∑[∑[∑[(n+1)²]]]]]]]` -/
def P17597211832508528551.Spec : Prop :=
  ∀ n, (P17597211832508528551.a n : ℤ) = A054333 n

end A054333

/-! ## A054333.P5145564521573612628

`A053347(n)+a(n-1)` with `a(0)=1`
-/

namespace A054333.P5145564521573612628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053347 n + a (n - 1)

end

end A054333.P5145564521573612628

namespace A054333

/-- `A053347(n)+a(n-1)` -/
def P5145564521573612628.Spec : Prop :=
  ∀ n, P5145564521573612628.a n = A054333 n

end A054333

/-! ## A054333.P621925269344459561

`2*A053310(n)-A055843(n)`
-/

namespace A054333.P621925269344459561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053310 n - A055843 n

end

end A054333.P621925269344459561

namespace A054333

/-- `2*A053310(n)-A055843(n)` -/
def P621925269344459561.Spec : Prop :=
  ∀ n, P621925269344459561.a n = A054333 n

end A054333

/-! ## A054333.P11109097696377054495

`2*A055843(n)-A055848(n)`
-/

namespace A054333.P11109097696377054495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055843 n - A055848 n

end

end A054333.P11109097696377054495

namespace A054333

/-- `2*A055843(n)-A055848(n)` -/
def P11109097696377054495.Spec : Prop :=
  ∀ n, P11109097696377054495.a n = A054333 n

end A054333

/-! ## A054333.P16395865791712620909

`2*A000582(n+9)-A000581(n+8)`
-/

namespace A054333.P16395865791712620909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000582 (n + 9) - A000581 (n + 8)

end

end A054333.P16395865791712620909

namespace A054333

/-- `2*A000582(n+9)-A000581(n+8)` -/
def P16395865791712620909.Spec : Prop :=
  ∀ n, P16395865791712620909.a n = A054333 n

end A054333

/-! ## A054333.P17853718511405545345

`2*A000582(n+9)-∑[A000580(n+7)]`
-/

namespace A054333.P17853718511405545345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000582 (n + 9) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054333.P17853718511405545345

namespace A054333

/-- `2*A000582(n+9)-∑[A000580(n+7)]` -/
def P17853718511405545345.Spec : Prop :=
  ∀ n, P17853718511405545345.a n = A054333 n

end A054333

/-! ## A054333.P2951723023678687513

`A000582(n+9)+A035927(n)-A165618(n)`
-/

namespace A054333.P2951723023678687513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + (A035927 n - A165618 n)

end

end A054333.P2951723023678687513

namespace A054333

/-- `A000582(n+9)+A035927(n)-A165618(n)` -/
def P2951723023678687513.Spec : Prop :=
  ∀ n, P2951723023678687513.a n = A054333 n

end A054333

/-! ## A054333.P16270104183843377986

`A000581(n+8)/A053137(n)*A053138(n)`
-/

namespace A054333.P16270104183843377986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) : ℚ) / (A053137 n : ℚ) * (A053138 n : ℚ)

end

end A054333.P16270104183843377986

namespace A054333

/-- `A000581(n+8)/A053137(n)*A053138(n)` -/
def P16270104183843377986.Spec : Prop :=
  ∀ n, P16270104183843377986.a n = (A054333 n : ℚ)

end A054333

/-! ## A054333.P10509526626054347860

`A000582(n+9)+∑[A000581(n+8)-A000580(n+7)]`
-/

namespace A054333.P10509526626054347860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) - A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054333.P10509526626054347860

namespace A054333

/-- `A000582(n+9)+∑[A000581(n+8)-A000580(n+7)]` -/
def P10509526626054347860.Spec : Prop :=
  ∀ n, P10509526626054347860.a n = A054333 n

end A054333

/-! ## A054333.P9208745763164919077

`A054334(n+1)-(A054334(n)+A053347(n+1))`
-/

namespace A054333.P9208745763164919077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054334 (n + 1) - (A054334 n + A053347 (n + 1))

end

end A054333.P9208745763164919077

namespace A054333

/-- `A054334(n+1)-(A054334(n)+A053347(n+1))` -/
def P9208745763164919077.Spec : Prop :=
  ∀ n, P9208745763164919077.a n = A054333 n

end A054333

/-! ## A054333.P11455163031362309002

`A054498(2*n+1)/4`
-/

namespace A054333.P11455163031362309002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054498 (2 * n + 1) : ℚ) / 4

end

end A054333.P11455163031362309002

namespace A054333

/-- `A054498(2*n+1)/4` -/
def P11455163031362309002.Spec : Prop :=
  ∀ n, P11455163031362309002.a n = (A054333 n : ℚ)

end A054333

/-!
# A054334: 1/512 of 11th unsigned column of triangle A053120 (T-Chebyshev, rising powers, zeros omitted).

The programs for A054334, the canonical program `A054334.P15594218421180782331` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054334 has offset 0).

The definition of A054334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054334.P12725177982814798913

`C(n+9, 9)*(n+5)/5`
-/

namespace A054334.P12725177982814798913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 * (n + 5) : ℚ) / 5

end

end A054334.P12725177982814798913

namespace A054334

/-- `C(n+9, 9)*(n+5)/5` -/
def P12725177982814798913.Spec : Prop :=
  ∀ n, P12725177982814798913.a n = (A054334 n : ℚ)

end A054334

/-! ## A054334.P15594218421180782331

`C(n+9, 9)+2*C(n+9, 10)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054334

/-- `C(n+9, 9)+2*C(n+9, 10)` -/
def P15594218421180782331.Spec : Prop :=
  ∀ n, (P15594218421180782331.a n : ℤ) = A054334 n

theorem P15594218421180782331.correct : P15594218421180782331.Spec := by
  intro n
  simp only [A054334]

end A054334

/-! ## A054334.P11122443206070512085

`∑[∑[∑[∑[∑[∑[∑[∑[(n+1)²]]]]]]]]`
-/

namespace A054334.P11122443206070512085
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054334.P11122443206070512085

namespace A054334

/-- `∑[∑[∑[∑[∑[∑[∑[∑[(n+1)²]]]]]]]]` -/
def P11122443206070512085.Spec : Prop :=
  ∀ n, (P11122443206070512085.a n : ℤ) = A054334 n

end A054334

/-! ## A054334.P11563615968536222578

`A054333(n)+a(n-1)` with `a(0)=1`
-/

namespace A054334.P11563615968536222578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054333 n + a (n - 1)

end

end A054334.P11563615968536222578

namespace A054334

/-- `A054333(n)+a(n-1)` -/
def P11563615968536222578.Spec : Prop :=
  ∀ n, P11563615968536222578.a n = A054334 n

end A054334

/-! ## A054334.P15080230725446254514

`A105252(n)/∑[∑[∑[n+1]]]`
-/

namespace A054334.P15080230725446254514
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105252 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A054334.P15080230725446254514

namespace A054334

/-- `A105252(n)/∑[∑[∑[n+1]]]` -/
def P15080230725446254514.Spec : Prop :=
  ∀ n, P15080230725446254514.a n = (A054334 n : ℚ)

end A054334

/-! ## A054334.P2575980753233429

`lcm(∑[A054333(n)], A000034(n))`
-/

namespace A054334.P2575980753233429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A054334.P2575980753233429

namespace A054334

/-- `lcm(∑[A054333(n)], A000034(n))` -/
def P2575980753233429.Spec : Prop :=
  ∀ n, (P2575980753233429.a n : ℤ) = A054334 n

end A054334

/-! ## A054334.P5188295685167142400

`or(∑[A054333(n)], A000007(n))`
-/

namespace A054334.P5188295685167142400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A054334.P5188295685167142400

namespace A054334

/-- `or(∑[A054333(n)], A000007(n))` -/
def P5188295685167142400.Spec : Prop :=
  ∀ n, P5188295685167142400.a n = A054334 n

end A054334

/-! ## A054334.P16839476033651158177

`2*A001287(n)-∑[A000581(n+8)]`
-/

namespace A054334.P16839476033651158177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001287 (n + 10) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054334.P16839476033651158177

namespace A054334

/-- `2*A001287(n)-∑[A000581(n+8)]` -/
def P16839476033651158177.Spec : Prop :=
  ∀ n, P16839476033651158177.a n = A054334 n

end A054334

/-! ## A054334.P4950943025515392792

`A000582(n+9)/A053138(n)*A196789(n)`
-/

namespace A054334.P4950943025515392792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000582 (n + 9) : ℚ) / (A053138 n : ℚ) * (A196789 n : ℚ)

end

end A054334.P4950943025515392792

namespace A054334

/-- `A000582(n+9)/A053138(n)*A196789(n)` -/
def P4950943025515392792.Spec : Prop :=
  ∀ n, P4950943025515392792.a n = (A054334 n : ℚ)

end A054334

/-! ## A054334.P370071247510148470

`A057788(n+1)-(A057788(n)+A054333(n+1))`
-/

namespace A054334.P370071247510148470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057788 (n + 1) - (A057788 n + A054333 (n + 1))

end

end A054334.P370071247510148470

namespace A054334

/-- `A057788(n+1)-(A057788(n)+A054333(n+1))` -/
def P370071247510148470.Spec : Prop :=
  ∀ n, P370071247510148470.a n = A054334 n

end A054334

/-! ## A054334.P14931233541845908942

`A000035(A130824(n))+∑[A054333(n)]`
-/

namespace A054334.P14931233541845908942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A130824 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054334.P14931233541845908942

namespace A054334

/-- `A000035(A130824(n))+∑[A054333(n)]` -/
def P14931233541845908942.Spec : Prop :=
  ∀ n, P14931233541845908942.a n = A054334 n

end A054334

/-! ## A054334.P16294343714160258896

`∑[A054333(n)]^A014963(A263827(n+1))`
-/

namespace A054334.P16294343714160258896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054333 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A014963 (A263827 (n + 1)).toNat : ℤ)

end

end A054334.P16294343714160258896

namespace A054334

/-- `∑[A054333(n)]^A014963(A263827(n+1))` -/
def P16294343714160258896.Spec : Prop :=
  ∀ n, P16294343714160258896.a n = (A054334 n : ℚ)

end A054334

/-! ## A054334.P12433541314767775203

`A029635(A034856(n+10)-9)`
-/

namespace A054334.P12433541314767775203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A034856 (n + 10) - 9).toNat

end

end A054334.P12433541314767775203

namespace A054334

/-- `A029635(A034856(n+10)-9)` -/
def P12433541314767775203.Spec : Prop :=
  ∀ n, P12433541314767775203.a n = A054334 n

end A054334

/-!
# A054335: A convolution triangle of numbers based on A000984 (central binomial coefficients of even order).

The programs for A054335, there is no canonical definition to state claims against.
-/

/-! ## A054335.P855438648990007203

`A205813(comp[∑[n]])`
-/

namespace A054335.P855438648990007203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A054335.P855438648990007203

/-! ## A054335.P5901621750676319474

`or(char[2], A205813(A014132(n+1)))`
-/

namespace A054335.P5901621750676319474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A205813 (A014132 (n + 1)).toNat)

end

end A054335.P5901621750676319474

/-! ## A054335.P16838020806715012374

`A205813(A014132(n+1))+1-A054977(n+1)`
-/

namespace A054335.P16838020806715012374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (A014132 (n + 1)).toNat + 1 - A054977 (n + 1)

end

end A054335.P16838020806715012374

/-! ## A054335.P7028881394176741181

`A205813(A014132(n+1))+A008683(4*(n+1))`
-/

namespace A054335.P7028881394176741181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (A014132 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A054335.P7028881394176741181

/-! ## A054335.P18115699769041906153

`A205813(A014132(n+1))%A000051(n)`
-/

namespace A054335.P18115699769041906153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205813 (A014132 (n + 1)).toNat) (A000051 n)

end

end A054335.P18115699769041906153

/-!
# A054336: A convolution triangle of numbers based on A001405 (central binomial coefficients).

The programs for A054336, there is no canonical definition to state claims against.
-/

/-! ## A054336.P14643666231663922509

`abs(A202847(n))`
-/

namespace A054336.P14643666231663922509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A202847 n|

end

end A054336.P14643666231663922509

/-! ## A054336.P5071605845792215528

`lcm((-1)^n, A202847(char[1]+n))`
-/

namespace A054336.P5071605845792215528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A202847 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A054336.P5071605845792215528

/-! ## A054336.P3707469304583450442

`A097807(n)*A202847(n)`
-/

namespace A054336.P3707469304583450442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A202847 n

end

end A054336.P3707469304583450442

/-! ## A054336.P3460329591210549846

`gcd(A000038(n), A202847(n))`
-/

namespace A054336.P3460329591210549846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A202847 n)

end

end A054336.P3460329591210549846

/-! ## A054336.P15840981438211558245

`gcd(-A202847(n), A005843(n)%2)`
-/

namespace A054336.P15840981438211558245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A202847 n) (Int.tmod (A005843 n) 2)

end

end A054336.P15840981438211558245

/-! ## A054336.P17298963724394150447

`lcm(A020985(n)*A202847(n), A020985(n))`
-/

namespace A054336.P17298963724394150447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n * A202847 n) (A020985 n)

end

end A054336.P17298963724394150447

/-! ## A054336.P3465067428624731110

`∑{d}[A202847(n), A000010(#)]`
-/

namespace A054336.P3465067428624731110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A054336.P3465067428624731110

/-! ## A054336.P12779341408338037234

`∏{d}[A202847(n), A014963(#)]`
-/

namespace A054336.P12779341408338037234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A054336.P12779341408338037234

/-!
# A054337: 7-fold convolution of A000302 (powers of 4).

The programs for A054337, the canonical program `A054337.P12552571608768841073` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054337 has offset 0).

The definition of A054337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054337.P12552571608768841073

`4^n*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054337

/-- `4^n*C(n+6, 6)` -/
def P12552571608768841073.Spec : Prop :=
  ∀ n, (P12552571608768841073.a n : ℤ) = A054337 n

theorem P12552571608768841073.correct : P12552571608768841073.Spec := by
  intro n
  simp only [A054337]

end A054337

/-! ## A054337.P15642589895611894417

`(24/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A054337.P15642589895611894417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (24 / (n : ℚ) + 4) * a (n - 1)

end

end A054337.P15642589895611894417

namespace A054337

/-- `(24/n+4)*a(n-1)` -/
def P15642589895611894417.Spec : Prop :=
  ∀ n, P15642589895611894417.a n = (A054337 n : ℚ)

end A054337

/-! ## A054337.P16808150316954413723

`4^n*∑[∑[∑[∑[∑[n+1]]]]]`
-/

namespace A054337.P16808150316954413723
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054337.P16808150316954413723

namespace A054337

/-- `4^n*∑[∑[∑[∑[∑[n+1]]]]]` -/
def P16808150316954413723.Spec : Prop :=
  ∀ n, (P16808150316954413723.a n : ℤ) = A054337 n

end A054337

/-! ## A054337.P2357777347790783514

`A000051(n)*A002409(n)-A002409(n)`
-/

namespace A054337.P2357777347790783514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A002409 n - A002409 n

end

end A054337.P2357777347790783514

namespace A054337

/-- `A000051(n)*A002409(n)-A002409(n)` -/
def P2357777347790783514.Spec : Prop :=
  ∀ n, P2357777347790783514.a n = A054337 n

end A054337

/-! ## A054337.P7313567958114591336

`A000302(n)*A027818(n)/(n+1)`
-/

namespace A054337.P7313567958114591336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n * A027818 n : ℚ) / (n + 1 : ℚ)

end

end A054337.P7313567958114591336

namespace A054337

/-- `A000302(n)*A027818(n)/(n+1)` -/
def P7313567958114591336.Spec : Prop :=
  ∀ n, P7313567958114591336.a n = (A054337 n : ℚ)

end A054337

/-! ## A054337.P14468969504661348610

`A038231(A000096(n+5)+7)`
-/

namespace A054337.P14468969504661348610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 (A000096 (n + 5) + 7).toNat

end

end A054337.P14468969504661348610

namespace A054337

/-- `A038231(A000096(n+5)+7)` -/
def P14468969504661348610.Spec : Prop :=
  ∀ n, P14468969504661348610.a n = A054337 n

end A054337

/-! ## A054337.P13214508474385711639

`A038231(A000217(n+6)+6)`
-/

namespace A054337.P13214508474385711639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 (A000217 (n + 6) + 6).toNat

end

end A054337.P13214508474385711639

namespace A054337

/-- `A038231(A000217(n+6)+6)` -/
def P13214508474385711639.Spec : Prop :=
  ∀ n, P13214508474385711639.a n = A054337 n

end A054337

/-! ## A054337.P17407380674050516621

`A038231(eq[6, A144328(n+1)])`
-/

namespace A054337.P17407380674050516621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054337.P17407380674050516621

namespace A054337

/-- `A038231(eq[6, A144328(n+1)])` -/
def P17407380674050516621.Spec : Prop :=
  ∀ n, P17407380674050516621.a n = A054337 n

end A054337

/-! ## A054337.P11790393538574050098

`A013611(Δ[A023551(n+2)]-1)`
-/

namespace A054337.P11790393538574050098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (f1 (n + 1) - f1 n - 1).toNat

end

end A054337.P11790393538574050098

namespace A054337

/-- `A013611(Δ[A023551(n+2)]-1)` -/
def P11790393538574050098.Spec : Prop :=
  ∀ n, P11790393538574050098.a n = A054337 n

end A054337

/-! ## A054337.P1936873936502629097

`A140406(n)/2^n`
-/

namespace A054337.P1936873936502629097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140406 n : ℚ) / (2 ^ n : ℚ)

end

end A054337.P1936873936502629097

namespace A054337

/-- `A140406(n)/2^n` -/
def P1936873936502629097.Spec : Prop :=
  ∀ n, P1936873936502629097.a n = (A054337 n : ℚ)

end A054337

/-!
# A054338: 8-fold convolution of A000302 (powers of 4).

The programs for A054338, the canonical program `A054338.P10178612623370148355` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054338 has offset 0).

The definition of A054338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054338.P10178612623370148355

`4^n*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054338

/-- `4^n*C(n+7, 7)` -/
def P10178612623370148355.Spec : Prop :=
  ∀ n, (P10178612623370148355.a n : ℤ) = A054338 n

theorem P10178612623370148355.correct : P10178612623370148355.Spec := by
  intro n
  simp only [A054338]

end A054338

/-! ## A054338.P1962421580028311644

`(28/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A054338.P1962421580028311644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (28 / (n : ℚ) + 4) * a (n - 1)

end

end A054338.P1962421580028311644

namespace A054338

/-- `(28/n+4)*a(n-1)` -/
def P1962421580028311644.Spec : Prop :=
  ∀ n, P1962421580028311644.a n = (A054338 n : ℚ)

end A054338

/-! ## A054338.P7512488594009548653

`4^n*∑[∑[∑[∑[∑[∑[n+1]]]]]]`
-/

namespace A054338.P7512488594009548653
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054338.P7512488594009548653

namespace A054338

/-- `4^n*∑[∑[∑[∑[∑[∑[n+1]]]]]]` -/
def P7512488594009548653.Spec : Prop :=
  ∀ n, (P7512488594009548653.a n : ℤ) = A054338 n

end A054338

/-! ## A054338.P12673898136165378686

`abs(C(n+7, 7)*A262710(n))`
-/

namespace A054338.P12673898136165378686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 7) 7 : ℤ) * A262710 n|

end

end A054338.P12673898136165378686

namespace A054338

/-- `abs(C(n+7, 7)*A262710(n))` -/
def P12673898136165378686.Spec : Prop :=
  ∀ n, P12673898136165378686.a n = A054338 n

end A054338

/-! ## A054338.P2423504624273830031

`(A006516(n+1)+A000079(n))*A000580(n+7)/2`
-/

namespace A054338.P2423504624273830031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006516 (n + 1) + A000079 n) * A000580 (n + 7) : ℚ) / 2

end

end A054338.P2423504624273830031

namespace A054338

/-- `(A006516(n+1)+A000079(n))*A000580(n+7)/2` -/
def P2423504624273830031.Spec : Prop :=
  ∀ n, P2423504624273830031.a n = (A054338 n : ℚ)

end A054338

/-! ## A054338.P14857570044582263889

`A053107(n)/2^n`
-/

namespace A054338.P14857570044582263889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053107 n : ℚ) / (2 ^ n : ℚ)

end

end A054338.P14857570044582263889

namespace A054338

/-- `A053107(n)/2^n` -/
def P14857570044582263889.Spec : Prop :=
  ∀ n, P14857570044582263889.a n = (A054338 n : ℚ)

end A054338

/-!
# A054339: 9-fold convolution of A000302 (powers of 4).

The programs for A054339, the canonical program `A054339.P7198650196621361896` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054339 has offset 0).

The definition of A054339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054339.P7198650196621361896

`4^n*C(n+8, 8)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054339

/-- `4^n*C(n+8, 8)` -/
def P7198650196621361896.Spec : Prop :=
  ∀ n, (P7198650196621361896.a n : ℤ) = A054339 n

theorem P7198650196621361896.correct : P7198650196621361896.Spec := by
  intro n
  simp only [A054339]

end A054339

/-! ## A054339.P944541334895622319

`(32/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A054339.P944541334895622319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (32 / (n : ℚ) + 4) * a (n - 1)

end

end A054339.P944541334895622319

namespace A054339

/-- `(32/n+4)*a(n-1)` -/
def P944541334895622319.Spec : Prop :=
  ∀ n, P944541334895622319.a n = (A054339 n : ℚ)

end A054339

/-! ## A054339.P8925838515493119760

`2^n*A140325(n)`
-/

namespace A054339.P8925838515493119760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A140325 n

end

end A054339.P8925838515493119760

namespace A054339

/-- `2^n*A140325(n)` -/
def P8925838515493119760.Spec : Prop :=
  ∀ n, P8925838515493119760.a n = A054339 n

end A054339

/-! ## A054339.P15823715641315694006

`4^n*A000581(n+8)`
-/

namespace A054339.P15823715641315694006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000581 (n + 8)

end

end A054339.P15823715641315694006

namespace A054339

/-- `4^n*A000581(n+8)` -/
def P15823715641315694006.Spec : Prop :=
  ∀ n, P15823715641315694006.a n = A054339 n

end A054339

/-! ## A054339.P12883608110930247463

`C(n+8, 8)*A000302(n)`
-/

namespace A054339.P12883608110930247463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℤ) * A000302 n

end

end A054339.P12883608110930247463

namespace A054339

/-- `C(n+8, 8)*A000302(n)` -/
def P12883608110930247463.Spec : Prop :=
  ∀ n, P12883608110930247463.a n = A054339 n

end A054339

/-! ## A054339.P1936318407236190221

`abs((A052539(n)-1)*C(n+8, 8))`
-/

namespace A054339.P1936318407236190221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A052539 n - 1) * (Nat.choose (n + 8) 8 : ℤ)|

end

end A054339.P1936318407236190221

namespace A054339

/-- `abs((A052539(n)-1)*C(n+8, 8))` -/
def P1936318407236190221.Spec : Prop :=
  ∀ n, P1936318407236190221.a n = A054339 n

end A054339

/-! ## A054339.P13758188464411416316

`A000079(n)²*∑[A000580(n+7)]`
-/

namespace A054339.P13758188464411416316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054339.P13758188464411416316

namespace A054339

/-- `A000079(n)²*∑[A000580(n+7)]` -/
def P13758188464411416316.Spec : Prop :=
  ∀ n, P13758188464411416316.a n = A054339 n

end A054339

/-! ## A054339.P2687438031176755904

`A000581(n+8)*A011782(n+1)²`
-/

namespace A054339.P2687438031176755904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A011782 (n + 1) ^ 2

end

end A054339.P2687438031176755904

namespace A054339

/-- `A000581(n+8)*A011782(n+1)²` -/
def P2687438031176755904.Spec : Prop :=
  ∀ n, P2687438031176755904.a n = A054339 n

end A054339

/-! ## A054339.P14691401840833535590

`A000581(n+8)*A011782(2*n+1)`
-/

namespace A054339.P14691401840833535590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A011782 (2 * n + 1)

end

end A054339.P14691401840833535590

namespace A054339

/-- `A000581(n+8)*A011782(2*n+1)` -/
def P14691401840833535590.Spec : Prop :=
  ∀ n, P14691401840833535590.a n = A054339 n

end A054339

/-! ## A054339.P14688967246054557353

`A000581(n+8)*A131577(A005408(n))`
-/

namespace A054339.P14688967246054557353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A131577 (A005408 n).toNat

end

end A054339.P14688967246054557353

namespace A054339

/-- `A000581(n+8)*A131577(A005408(n))` -/
def P14688967246054557353.Spec : Prop :=
  ∀ n, P14688967246054557353.a n = A054339 n

end A054339

/-!
# A054340: 10-fold convolution of A000302 (powers of 4).

The programs for A054340, the canonical program `A054340.P14179520624728507127` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054340 has offset 0).

The definition of A054340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054340.P14179520624728507127

`4^n*C(n+9, 9)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054340

/-- `4^n*C(n+9, 9)` -/
def P14179520624728507127.Spec : Prop :=
  ∀ n, (P14179520624728507127.a n : ℤ) = A054340 n

theorem P14179520624728507127.correct : P14179520624728507127.Spec := by
  intro n
  simp only [A054340]

end A054340

/-! ## A054340.P8069820020944107889

`(36/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A054340.P8069820020944107889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (36 / (n : ℚ) + 4) * a (n - 1)

end

end A054340.P8069820020944107889

namespace A054340

/-- `(36/n+4)*a(n-1)` -/
def P8069820020944107889.Spec : Prop :=
  ∀ n, P8069820020944107889.a n = (A054340 n : ℚ)

end A054340

/-! ## A054340.P10715776776183381234

`2^n*A140354(n)`
-/

namespace A054340.P10715776776183381234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A140354 n

end

end A054340.P10715776776183381234

namespace A054340

/-- `2^n*A140354(n)` -/
def P10715776776183381234.Spec : Prop :=
  ∀ n, P10715776776183381234.a n = A054340 n

end A054340

/-! ## A054340.P13900958128137491370

`4^n*A000582(n+9)`
-/

namespace A054340.P13900958128137491370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000582 (n + 9)

end

end A054340.P13900958128137491370

namespace A054340

/-- `4^n*A000582(n+9)` -/
def P13900958128137491370.Spec : Prop :=
  ∀ n, P13900958128137491370.a n = A054340 n

end A054340

/-! ## A054340.P8502165023265035247

`C(n+9, 9)*A000079(n)²`
-/

namespace A054340.P8502165023265035247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A000079 n ^ 2

end

end A054340.P8502165023265035247

namespace A054340

/-- `C(n+9, 9)*A000079(n)²` -/
def P8502165023265035247.Spec : Prop :=
  ∀ n, P8502165023265035247.a n = A054340 n

end A054340

/-! ## A054340.P13893934189652389329

`4^n*∑[A000581(n+8)]`
-/

namespace A054340.P13893934189652389329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054340.P13893934189652389329

namespace A054340

/-- `4^n*∑[A000581(n+8)]` -/
def P13893934189652389329.Spec : Prop :=
  ∀ n, P13893934189652389329.a n = A054340 n

end A054340

/-! ## A054340.P677156686268412189

`C(n+9, 9)*A000079(2*n)`
-/

namespace A054340.P677156686268412189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A000079 (2 * n)

end

end A054340.P677156686268412189

namespace A054340

/-- `C(n+9, 9)*A000079(2*n)` -/
def P677156686268412189.Spec : Prop :=
  ∀ n, P677156686268412189.a n = A054340 n

end A054340

/-! ## A054340.P6455613518595444477

`C(n+9, 9)*A016116(4*n)`
-/

namespace A054340.P6455613518595444477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A016116 (4 * n)

end

end A054340.P6455613518595444477

namespace A054340

/-- `C(n+9, 9)*A016116(4*n)` -/
def P6455613518595444477.Spec : Prop :=
  ∀ n, P6455613518595444477.a n = A054340 n

end A054340

/-! ## A054340.P15168825395538549416

`4^n*∑[∑[A000580(n+7)]]`
-/

namespace A054340.P15168825395538549416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054340.P15168825395538549416

namespace A054340

/-- `4^n*∑[∑[A000580(n+7)]]` -/
def P15168825395538549416.Spec : Prop :=
  ∀ n, P15168825395538549416.a n = A054340 n

end A054340

/-! ## A054340.P6223209291727764575

`C(n+9, 9)*A011782(n+1)²`
-/

namespace A054340.P6223209291727764575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A011782 (n + 1) ^ 2

end

end A054340.P6223209291727764575

namespace A054340

/-- `C(n+9, 9)*A011782(n+1)²` -/
def P6223209291727764575.Spec : Prop :=
  ∀ n, P6223209291727764575.a n = A054340 n

end A054340

/-! ## A054340.P8277107476073260038

`C(n+9, 9)*A011782(2*n+1)`
-/

namespace A054340.P8277107476073260038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A011782 (2 * n + 1)

end

end A054340.P8277107476073260038

namespace A054340

/-- `C(n+9, 9)*A011782(2*n+1)` -/
def P8277107476073260038.Spec : Prop :=
  ∀ n, P8277107476073260038.a n = A054340 n

end A054340

/-! ## A054340.P7847696029835308832

`(A035927(n)+1)*A000079(n)²`
-/

namespace A054340.P7847696029835308832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035927 n + 1) * A000079 n ^ 2

end

end A054340.P7847696029835308832

namespace A054340

/-- `(A035927(n)+1)*A000079(n)²` -/
def P7847696029835308832.Spec : Prop :=
  ∀ n, P7847696029835308832.a n = A054340 n

end A054340

/-! ## A054340.P1811366712389027913

`∑[A000581(n+8)]*A000079(n)²`
-/

namespace A054340.P1811366712389027913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n ^ 2

end

end A054340.P1811366712389027913

namespace A054340

/-- `∑[A000581(n+8)]*A000079(n)²` -/
def P1811366712389027913.Spec : Prop :=
  ∀ n, P1811366712389027913.a n = A054340 n

end A054340

/-! ## A054340.P2764917363437815260

`∑[A000581(n+8)]*A000079(2*n)`
-/

namespace A054340.P2764917363437815260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 (2 * n)

end

end A054340.P2764917363437815260

namespace A054340

/-- `∑[A000581(n+8)]*A000079(2*n)` -/
def P2764917363437815260.Spec : Prop :=
  ∀ n, P2764917363437815260.a n = A054340 n

end A054340

/-! ## A054340.P6887321927758632237

`A000582(n+9)*A059222(2*n+1)`
-/

namespace A054340.P6887321927758632237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A059222 (2 * n + 1)

end

end A054340.P6887321927758632237

namespace A054340

/-- `A000582(n+9)*A059222(2*n+1)` -/
def P6887321927758632237.Spec : Prop :=
  ∀ n, P6887321927758632237.a n = A054340 n

end A054340

/-! ## A054340.P2342648999317045333

`A000582(n+9)/(2*(n+1))*A002699(n+1)`
-/

namespace A054340.P2342648999317045333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000582 (n + 9) : ℚ) / (2 * (n + 1) : ℚ) * (A002699 (n + 1) : ℚ)

end

end A054340.P2342648999317045333

namespace A054340

/-- `A000582(n+9)/(2*(n+1))*A002699(n+1)` -/
def P2342648999317045333.Spec : Prop :=
  ∀ n, P2342648999317045333.a n = (A054340 n : ℚ)

end A054340

/-! ## A054340.P7942203357332102618

`A000079(n)*A000582(n+9)*A000079(n)`
-/

namespace A054340.P7942203357332102618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000582 (n + 9) * A000079 n

end

end A054340.P7942203357332102618

namespace A054340

/-- `A000079(n)*A000582(n+9)*A000079(n)` -/
def P7942203357332102618.Spec : Prop :=
  ∀ n, P7942203357332102618.a n = A054340 n

end A054340

/-! ## A054340.P6529542197951143397

`∑[A007318(A000096(n+7)+9)]*A000079(n)²`
-/

namespace A054340.P6529542197951143397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (n + 7) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n ^ 2

end

end A054340.P6529542197951143397

namespace A054340

/-- `∑[A007318(A000096(n+7)+9)]*A000079(n)²` -/
def P6529542197951143397.Spec : Prop :=
  ∀ n, P6529542197951143397.a n = A054340 n

end A054340

/-! ## A054340.P2059223022183771858

`∑[A007318(A000096(n+7)+9)]*A000079(2*n)`
-/

namespace A054340.P2059223022183771858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (n + 7) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 (2 * n)

end

end A054340.P2059223022183771858

namespace A054340

/-- `∑[A007318(A000096(n+7)+9)]*A000079(2*n)` -/
def P2059223022183771858.Spec : Prop :=
  ∀ n, P2059223022183771858.a n = A054340 n

end A054340

/-! ## A054340.P8249957957250194433

`4^n*A007318(A000217(n+9)+9)`
-/

namespace A054340.P8249957957250194433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A007318 (A000217 (n + 9) + 9).toNat

end

end A054340.P8249957957250194433

namespace A054340

/-- `4^n*A007318(A000217(n+9)+9)` -/
def P8249957957250194433.Spec : Prop :=
  ∀ n, P8249957957250194433.a n = A054340 n

end A054340

/-!
# A054341: Row sums of triangle A054336 (central binomial convolutions).

The programs for A054341, there is no canonical definition to state claims against.
-/

/-! ## A054341.P318280229007666688

`A127358(n+1)-2*A127358(n)`
-/

namespace A054341.P318280229007666688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127358 (n + 1) - 2 * A127358 n

end

end A054341.P318280229007666688

/-! ## A054341.P17636468594233572182

`A100087(n+1)/2`
-/

namespace A054341.P17636468594233572182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100087 (n + 1) : ℚ) / 2

end

end A054341.P17636468594233572182

/-! ## A054341.P12383672648973511899

`record[A100087(A028242(n))/2]`
-/

namespace A054341.P12383672648973511899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100087 (A028242 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054341.P12383672648973511899

/-! ## A054341.P9293581761746543458

`Δ[A127358(n)]-A127358(n)`
-/

namespace A054341.P9293581761746543458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A127358 n

end

end A054341.P9293581761746543458

/-! ## A054341.P16218268392775648511

`A151254(n)/A000079(n)`
-/

namespace A054341.P16218268392775648511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151254 n : ℚ) / (A000079 n : ℚ)

end

end A054341.P16218268392775648511

/-! ## A054341.P16717078083234287763

`A151254(n)/A011782(n+1)`
-/

namespace A054341.P16717078083234287763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151254 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A054341.P16717078083234287763

/-! ## A054341.P111159137292312655

`A126075(∑[n])`
-/

namespace A054341.P111159137292312655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126075 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054341.P111159137292312655

/-! ## A054341.P9118701490622523255

`record[A126075(n)]`
-/

namespace A054341.P9118701490622523255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054341.P9118701490622523255

/-! ## A054341.P1978445029210413333

`A096164(∑[n]+1)`
-/

namespace A054341.P1978445029210413333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096164 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054341.P1978445029210413333

/-! ## A054341.P988313323120650097

`A000108(n)/A151374(n)*A151254(n)`
-/

namespace A054341.P988313323120650097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A151374 n : ℚ) * (A151254 n : ℚ)

end

end A054341.P988313323120650097

/-!
# A054342: First occurrence of distances of equidistant lonely primes. Each equidistant prime is at the same distance (or has the same gap) from the preceding prime and the next prime.

The programs for A054342, there is no canonical definition to state claims against.
-/

/-! ## A054342.P9898623846384920258

`A052187(n+1)+2*A008486(n)`
-/

namespace A054342.P9898623846384920258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052187 (n + 1) + 2 * A008486 n

end

end A054342.P9898623846384920258

/-! ## A054342.P4590777534196418474

`A052187(n+1)+A101328(n+2)+1`
-/

namespace A054342.P4590777534196418474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052187 (n + 1) + (A101328 (n + 2) + 1)

end

end A054342.P4590777534196418474

/-! ## A054342.P4049474060219685891

`A052187(n+1)+A004277(A008486(n))`
-/

namespace A054342.P4049474060219685891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052187 (n + 1) + A004277 (A008486 n).toNat

end

end A054342.P4049474060219685891

/-! ## A054342.P17469995666453834043

`A052187(n+1)+A004277(A004277(n)+n)`
-/

namespace A054342.P17469995666453834043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052187 (n + 1) + A004277 (A004277 n + (n : ℤ)).toNat

end

end A054342.P17469995666453834043

/-! ## A054342.P9458094012207133000

`A103709(floor(2/acot(n))+n)`
-/

namespace A054342.P9458094012207133000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103709 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A054342.P9458094012207133000

/-!
# A054343: Number of nonnegative integer 3 X 3 matrices with sum of elements equal to n, under action of dihedral group of the square D_4.

The programs for A054343, there is no canonical definition to state claims against.
-/

/-! ## A054343.P18373314590307269200

`(A054771(n)+A038163(n))/2`
-/

namespace A054343.P18373314590307269200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054771 n + A038163 n : ℚ) / 2

end

end A054343.P18373314590307269200

/-! ## A054343.P5003399360462643938

`(A054771(n)+A038163(n))*2^A133574(A001316(n))`
-/

namespace A054343.P5003399360462643938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054771 n + A038163 n : ℚ) * (2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ)

end

end A054343.P5003399360462643938

/-! ## A054343.P1000506322433114457

`(A054771(n)+A038163(n))*2^A008683(A142644(n+1))`
-/

namespace A054343.P1000506322433114457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054771 n + A038163 n : ℚ) * (2 : ℚ) ^ (A008683 (A142644 (n + 1)).toNat : ℤ)

end

end A054343.P1000506322433114457

/-! ## A054343.P7533754666880174498

`A343875(A167614(n+2))`
-/

namespace A054343.P7533754666880174498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343875 (A167614 (n + 2)).toNat

end

end A054343.P7533754666880174498

/-! ## A054343.P13663930497894498165

`A343875(A055999(n)+9)`
-/

namespace A054343.P13663930497894498165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343875 (A055999 n + 9).toNat

end

end A054343.P13663930497894498165

/-!
# A054345: Number of inequivalent sublattices of index n in a square lattice, where two sublattices are considered equivalent if one can be rotated to give the other.

The programs for A054345, there is no canonical definition to state claims against.
-/

/-! ## A054345.P2030211032351257193

`A008619(A039653(n))-A079365(A003961(n+1))`
-/

namespace A054345.P2030211032351257193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A039653 n).toNat - A079365 (A003961 (n + 1)).toNat

end

end A054345.P2030211032351257193

/-! ## A054345.P2028097316248673827

`A008619(A039653(n))-A015582(A187829(n+1))`
-/

namespace A054345.P2028097316248673827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A039653 n).toNat - A015582 (A187829 (n + 1)).toNat

end

end A054345.P2028097316248673827

/-! ## A054345.P1685534152001877405

`A081604(A003415(n)*A115724(n))`
-/

namespace A054345.P1685534152001877405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A003415 n * A115724 n).toNat

end

end A054345.P1685534152001877405

/-! ## A054345.P15365682697818893376

`A046799(A256209(n)-A237706(n+1))`
-/

namespace A054345.P15365682697818893376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (A256209 n - A237706 (n + 1)).toNat

end

end A054345.P15365682697818893376

/-!
# A054346: Number of inequivalent sublattices of index n in square lattice, where two sublattices are considered equivalent if one can be rotated or reflected to give the other.

The programs for A054346, there is no canonical definition to state claims against.
-/

/-! ## A054346.P2644521896040975368

`A145393(A028310(n))%p?[A025149(n)]`
-/

namespace A054346.P2644521896040975368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145393 (A028310 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A054346.P2644521896040975368

/-! ## A054346.P16198348878364010078

`A145393(A065033(2*n))%A088262(2*n+3)`
-/

namespace A054346.P16198348878364010078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145393 (A065033 (2 * n)).toNat) (A088262 (2 * n + 3))

end

end A054346.P16198348878364010078

/-! ## A054346.P4678724610773346616

`A145393(A028310(n))+A010052(A123134(n+1))`
-/

namespace A054346.P4678724610773346616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145393 (A028310 n).toNat + A010052 (A123134 (n + 1)).toNat

end

end A054346.P4678724610773346616

/-! ## A054346.P16001323104424449916

`A145393(A111332(n)+n)`
-/

namespace A054346.P16001323104424449916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145393 (A111332 n + (n : ℤ)).toNat

end

end A054346.P16001323104424449916

/-! ## A054346.P17467316212430718712

`A145393(or(n, A111332(n)))`
-/

namespace A054346.P17467316212430718712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145393 (Int.lor (n : ℤ) (A111332 n)).toNat

end

end A054346.P17467316212430718712

/-!
# A054347: Partial sums of A000201.

The programs for A054347, the canonical program `A054347.P4966294788488570671` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054347 has offset 0).

The definition of A054347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054347.P18106325149888589802

`∑[floor(ϕ*n)]`
-/

namespace A054347.P18106325149888589802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054347.P18106325149888589802

namespace A054347

/-- `∑[floor(ϕ*n)]` -/
def P18106325149888589802.Spec : Prop :=
  ∀ n, P18106325149888589802.a n = A054347 n

end A054347

/-! ## A054347.P8673553354098700189

`floor(a(n-1)+ϕ*n)` with `a(0)=0`
-/

namespace A054347.P8673553354098700189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.goldenRatio * (n : ℝ)⌋

end

end A054347.P8673553354098700189

namespace A054347

/-- `floor(a(n-1)+ϕ*n)` -/
def P8673553354098700189.Spec : Prop :=
  ∀ n, P8673553354098700189.a n = A054347 n

end A054347

/-! ## A054347.P1448016668057952234

`∑[floor(n/ϕ)]+C(n+1, 2)`
-/

namespace A054347.P1448016668057952234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n + 1) 2 : ℤ)

end

end A054347.P1448016668057952234

namespace A054347

/-- `∑[floor(n/ϕ)]+C(n+1, 2)` -/
def P1448016668057952234.Spec : Prop :=
  ∀ n, P1448016668057952234.a n = A054347 n

end A054347

/-! ## A054347.P16983896333882464132

`a(n-1)+floor(n/(ϕ-1))` with `a(0)=0`
-/

namespace A054347.P16983896333882464132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℝ) / (Real.goldenRatio - 1)⌋

end

end A054347.P16983896333882464132

namespace A054347

/-- `a(n-1)+floor(n/(ϕ-1))` -/
def P16983896333882464132.Spec : Prop :=
  ∀ n, P16983896333882464132.a n = A054347 n

end A054347

/-! ## A054347.P4966294788488570671

`∑[A004956(n)]-n`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054347

/-- `∑[A004956(n)]-n` -/
def P4966294788488570671.Spec : Prop :=
  ∀ n, P4966294788488570671.a n = A054347 n

theorem P4966294788488570671.correct : P4966294788488570671.Spec := by
  intro n
  simp only [A054347]

end A054347

/-! ## A054347.P3933735539631749670

`A088207(n)-∑[n]`
-/

namespace A054347.P3933735539631749670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A054347.P3933735539631749670

namespace A054347

/-- `A088207(n)-∑[n]` -/
def P3933735539631749670.Spec : Prop :=
  ∀ n, P3933735539631749670.a n = A054347 n

end A054347

/-! ## A054347.P7037818939684256216

`A283733(n)-(n+1)`
-/

namespace A054347.P7037818939684256216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283733 n - (n + 1 : ℤ)

end

end A054347.P7037818939684256216

namespace A054347

/-- `A283733(n)-(n+1)` -/
def P7037818939684256216.Spec : Prop :=
  ∀ n, P7037818939684256216.a n = A054347 n

end A054347

/-! ## A054347.P15599272198720579537

`n²-∑[A060144(n)]`
-/

namespace A054347.P15599272198720579537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054347.P15599272198720579537

namespace A054347

/-- `n²-∑[A060144(n)]` -/
def P15599272198720579537.Spec : Prop :=
  ∀ n, P15599272198720579537.a n = A054347 n

end A054347

/-! ## A054347.P6139707152581336811

`∑[n]+∑[A060143(n)]`
-/

namespace A054347.P6139707152581336811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A054347.P6139707152581336811

namespace A054347

/-- `∑[n]+∑[A060143(n)]` -/
def P6139707152581336811.Spec : Prop :=
  ∀ n, P6139707152581336811.a n = A054347 n

end A054347

/-! ## A054347.P4500746783242397652

`∑[A026351(n)]-(n+1)`
-/

namespace A054347.P4500746783242397652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A054347.P4500746783242397652

namespace A054347

/-- `∑[A026351(n)]-(n+1)` -/
def P4500746783242397652.Spec : Prop :=
  ∀ n, P4500746783242397652.a n = A054347 n

end A054347

/-! ## A054347.P13901909004485367371

`A283969(n)-∑[n+1]`
-/

namespace A054347.P13901909004485367371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283969 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A054347.P13901909004485367371

namespace A054347

/-- `A283969(n)-∑[n+1]` -/
def P13901909004485367371.Spec : Prop :=
  ∀ n, P13901909004485367371.a n = A054347 n

end A054347

/-! ## A054347.P1910380505914558432

`∑[A004957(n)-n]-n`
-/

namespace A054347.P1910380505914558432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A054347.P1910380505914558432

namespace A054347

/-- `∑[A004957(n)-n]-n` -/
def P1910380505914558432.Spec : Prop :=
  ∀ n, P1910380505914558432.a n = A054347 n

end A054347

/-! ## A054347.P1663556832943623402

`A066096(n)+a(n-1)` with `a(0)=0`
-/

namespace A054347.P1663556832943623402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A066096 n + a (n - 1)

end

end A054347.P1663556832943623402

namespace A054347

/-- `A066096(n)+a(n-1)` -/
def P1663556832943623402.Spec : Prop :=
  ∀ n, P1663556832943623402.a n = A054347 n

end A054347

/-! ## A054347.P10114604588559022465

`∑[A189662(n+1)-2]+1`
-/

namespace A054347.P10114604588559022465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A054347.P10114604588559022465

namespace A054347

/-- `∑[A189662(n+1)-2]+1` -/
def P10114604588559022465.Spec : Prop :=
  ∀ n, P10114604588559022465.a n = A054347 n

end A054347

/-! ## A054347.P13000473094612238146

`comp[A001950(n+1)]+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A054347.P13000473094612238146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + a (n - 1)

end

end A054347.P13000473094612238146

namespace A054347

/-- `comp[A001950(n+1)]+a(n-1)` -/
def P13000473094612238146.Spec : Prop :=
  ∀ n, (P13000473094612238146.a n : ℤ) = A054347 n

end A054347

/-! ## A054347.P8943390919610683967

`∑[floor((n+1)/ϕ+n)]-A005206(n)`
-/

namespace A054347.P8943390919610683967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005206 n

end

end A054347.P8943390919610683967

namespace A054347

/-- `∑[floor((n+1)/ϕ+n)]-A005206(n)` -/
def P8943390919610683967.Spec : Prop :=
  ∀ n, P8943390919610683967.a n = A054347 n

end A054347

/-! ## A054347.P11134752167439423793

`2*A129230(n)-A129229(n)`
-/

namespace A054347.P11134752167439423793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129230 n - A129229 n

end

end A054347.P11134752167439423793

namespace A054347

/-- `2*A129230(n)-A129229(n)` -/
def P11134752167439423793.Spec : Prop :=
  ∀ n, P11134752167439423793.a n = A054347 n

end A054347

/-! ## A054347.P6864995625152221309

`∑[A000201(n+1)]-A000201(n+1)`
-/

namespace A054347.P6864995625152221309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000201 (n + 1)

end

end A054347.P6864995625152221309

namespace A054347

/-- `∑[A000201(n+1)]-A000201(n+1)` -/
def P6864995625152221309.Spec : Prop :=
  ∀ n, P6864995625152221309.a n = A054347 n

end A054347

/-! ## A054347.P11687641670270632982

`A183136(n+1)+A000217(n)-A005206(n)`
-/

namespace A054347.P11687641670270632982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183136 (n + 1) + (A000217 n - A005206 n)

end

end A054347.P11687641670270632982

namespace A054347

/-- `A183136(n+1)+A000217(n)-A005206(n)` -/
def P11687641670270632982.Spec : Prop :=
  ∀ n, P11687641670270632982.a n = A054347 n

end A054347

/-!
# A054348: Triangular array whose rows are successive generations of the variant of the Kolakoski sequence described in A042942.

The programs for A054348, there is no canonical definition to state claims against.
-/

/-! ## A054348.P2182956104827216295

`A000034(∑[A297022(A084807(n+1))])`
-/

namespace A054348.P2182956104827216295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297022 (A084807 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054348.P2182956104827216295

/-! ## A054348.P1883134384515172971

`A049705(A004207(2*n+3)*A178503(n+1))`
-/

namespace A054348.P1883134384515172971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (A004207 (2 * n + 3) * A178503 (n + 1)).toNat

end

end A054348.P1883134384515172971

/-! ## A054348.P3704730460394895137

`A006928(A259222(3*n+4)-A051731(n+1))`
-/

namespace A054348.P3704730460394895137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A259222 (3 * n + 4) - A051731 (n + 1)).toNat

end

end A054348.P3704730460394895137

/-! ## A054348.P7142220914725479443

`2-A005089(A000203(A060735(n+1)))`
-/

namespace A054348.P7142220914725479443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A005089 (A000203 (A060735 (n + 1)).toNat).toNat

end

end A054348.P7142220914725479443

/-! ## A054348.P17124575773703493074

`A389522(A276086(n)+A000002(3*(n+1)))`
-/

namespace A054348.P17124575773703493074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389522 (A276086 n + A000002 (3 * (n + 1))).toNat

end

end A054348.P17124575773703493074

/-!
# A054350: Triangular array whose rows are successive generations of the Kolakoski sequence A000002.

The programs for A054350, there is no canonical definition to state claims against.
-/

/-! ## A054350.P14540200385752244112

`A202340(A140855(n+1)-1)`
-/

namespace A054350.P14540200385752244112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 (A140855 (n + 1) - 1).toNat

end

end A054350.P14540200385752244112

/-! ## A054350.P15530924587945821987

`A202340(xor(1, A140855(n+1)))`
-/

namespace A054350.P15530924587945821987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 (Int.xor 1 (A140855 (n + 1))).toNat

end

end A054350.P15530924587945821987

/-! ## A054350.P8808307934546501525

`A000002(A034888(A109965(n)²))`
-/

namespace A054350.P8808307934546501525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A034888 (A109965 n ^ 2).toNat).toNat

end

end A054350.P8808307934546501525

/-! ## A054350.P1588230060423164052

`A000002(lt[A196119(n+3), A284823(n+1)])`
-/

namespace A054350.P1588230060423164052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196119 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A054350.P1588230060423164052

/-! ## A054350.P5451948670771569280

`A331349(A310098(n+1))`
-/

namespace A054350.P5451948670771569280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331349 (A310098 (n + 1)).toNat

end

end A054350.P5451948670771569280

/-!
# A054351: Successive generations of the Kolakoski sequence A000002.

The programs for A054351, there is no canonical definition to state claims against.
-/

/-! ## A054351.P11373558637194422541

`A329360(A054352(n))`
-/

namespace A054351.P11373558637194422541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329360 (A054352 n).toNat

end

end A054351.P11373558637194422541

/-!
# A054352: Lengths of successive generations of the Kolakoski sequence A000002.

The programs for A054352, the canonical program `A054352.P3911841191489718260` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054352 has offset 0).

The definition of A054352 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054352.P3911841191489718260

`A054353(a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054352

/-- `A054353(a(n-1))+1` -/
def P3911841191489718260.Spec : Prop :=
  ∀ n, P3911841191489718260.a n = A054352 n

theorem P3911841191489718260.correct : P3911841191489718260.Spec := by
  intro n
  simp only [A054352]

end A054352

/-! ## A054352.P17924999184327640912

`∑[A329758(n+1)]`
-/

namespace A054352.P17924999184327640912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054352.P17924999184327640912

namespace A054352

/-- `∑[A329758(n+1)]` -/
def P17924999184327640912.Spec : Prop :=
  ∀ n, P17924999184327640912.a n = A054352 n

end A054352

/-! ## A054352.P8697076553012461402

`A329758(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A054352.P8697076553012461402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329758 (n + 1) + a (A023443 n).toNat

end

end A054352.P8697076553012461402

namespace A054352

/-- `A329758(n+1)+a(A023443(n))` -/
def P8697076553012461402.Spec : Prop :=
  ∀ n, P8697076553012461402.a n = A054352 n

end A054352

/-! ## A054352.P11260588559451884127

`A329758(n+1)+a(A025581(A000124(n)))` with `a(0)=1`
-/

namespace A054352.P11260588559451884127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329758 (n + 1) + a (A025581 (A000124 n).toNat).toNat

end

end A054352.P11260588559451884127

namespace A054352

/-- `A329758(n+1)+a(A025581(A000124(n)))` -/
def P11260588559451884127.Spec : Prop :=
  ∀ n, P11260588559451884127.a n = A054352 n

end A054352

/-! ## A054352.P7594061626191488642

`A327421(n+3)-1`
-/

namespace A054352.P7594061626191488642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327421 (n + 3) - 1

end

end A054352.P7594061626191488642

namespace A054352

/-- `A327421(n+3)-1` -/
def P7594061626191488642.Spec : Prop :=
  ∀ n, P7594061626191488642.a n = A054352 n

end A054352

/-!
# A054353: Partial sums of Kolakoski sequence A000002.

The programs for A054353, the canonical program `A054353.P16739713460901819012` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054353 has offset 1).

The definition of A054353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054353.P9190940041410668806

`n+1+A074286(n+1)`
-/

namespace A054353.P9190940041410668806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A074286 (n + 1)

end

end A054353.P9190940041410668806

namespace A054353

/-- `n+1+A074286(n+1)` -/
def P9190940041410668806.Spec : Prop :=
  ∀ n, P9190940041410668806.a n = A054353 (n + 1)

end A054353

/-! ## A054353.P14575559079298093466

`2*(n+1)-A156077(n+1)`
-/

namespace A054353.P14575559079298093466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A156077 (n + 1)

end

end A054353.P14575559079298093466

namespace A054353

/-- `2*(n+1)-A156077(n+1)` -/
def P14575559079298093466.Spec : Prop :=
  ∀ n, P14575559079298093466.a n = A054353 (n + 1)

end A054353

/-! ## A054353.P16739713460901819012

`∑[A000002(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054353

/-- `∑[A000002(n+1)]` -/
def P16739713460901819012.Spec : Prop :=
  ∀ n, P16739713460901819012.a n = A054353 (n + 1)

theorem P16739713460901819012.correct : P16739713460901819012.Spec := by
  intro n
  simp only [A054353, Nat.add_sub_cancel]

end A054353

/-! ## A054353.P13867655351661263495

`∑[gcd(2, A160051(n))]`
-/

namespace A054353.P13867655351661263495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A160051 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054353.P13867655351661263495

namespace A054353

/-- `∑[gcd(2, A160051(n))]` -/
def P13867655351661263495.Spec : Prop :=
  ∀ n, (P13867655351661263495.a n : ℤ) = A054353 (n + 1)

end A054353

/-! ## A054353.P3501433676055774704

`A156250(n+1)+n`
-/

namespace A054353.P3501433676055774704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (n + 1) + (n : ℤ)

end

end A054353.P3501433676055774704

namespace A054353

/-- `A156250(n+1)+n` -/
def P3501433676055774704.Spec : Prop :=
  ∀ n, P3501433676055774704.a n = A054353 (n + 1)

end A054353

/-! ## A054353.P2624866015204398089

`∑[2-A078650(n+1)]`
-/

namespace A054353.P2624866015204398089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A078650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054353.P2624866015204398089

namespace A054353

/-- `∑[2-A078650(n+1)]` -/
def P2624866015204398089.Spec : Prop :=
  ∀ n, P2624866015204398089.a n = A054353 (n + 1)

end A054353

/-! ## A054353.P9015286737909518910

`∑[3-A049705(n+1)]`
-/

namespace A054353.P9015286737909518910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054353.P9015286737909518910

namespace A054353

/-- `∑[3-A049705(n+1)]` -/
def P9015286737909518910.Spec : Prop :=
  ∀ n, P9015286737909518910.a n = A054353 (n + 1)

end A054353

/-! ## A054353.P2636655283953725701

`A078880(n)+a(n-1)` with `a(0)=1`
-/

namespace A054353.P2636655283953725701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078880 n + a (n - 1)

end

end A054353.P2636655283953725701

namespace A054353

/-- `A078880(n)+a(n-1)` -/
def P2636655283953725701.Spec : Prop :=
  ∀ n, P2636655283953725701.a n = A054353 (n + 1)

end A054353

/-! ## A054353.P12914851495457802501

`comp[comp[A022297(n+2)]+n]`
-/

namespace A054353.P12914851495457802501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A054353.P12914851495457802501

namespace A054353

/-- `comp[comp[A022297(n+2)]+n]` -/
def P12914851495457802501.Spec : Prop :=
  ∀ n, (P12914851495457802501.a n : ℤ) = A054353 (n + 1)

end A054353

/-! ## A054353.P13021709299811405138

`A006928(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A054353.P13021709299811405138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A006928 n + a (n - 1)

end

end A054353.P13021709299811405138

namespace A054353

/-- `A006928(n)+a(n-1)` -/
def P13021709299811405138.Spec : Prop :=
  ∀ n, P13021709299811405138.a n = A054353 (n + 1)

end A054353

/-! ## A054353.P16761398528049728738

`comp[A078649(n+1)-1]+1`
-/

namespace A054353.P16761398528049728738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A054353.P16761398528049728738

namespace A054353

/-- `comp[A078649(n+1)-1]+1` -/
def P16761398528049728738.Spec : Prop :=
  ∀ n, (P16761398528049728738.a n : ℤ) = A054353 (n + 1)

end A054353

/-! ## A054353.P16594385599098758802

`a(n-1)+A157686(n)+1` with `a(0)=1`
-/

namespace A054353.P16594385599098758802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A157686 n + 1)

end

end A054353.P16594385599098758802

namespace A054353

/-- `a(n-1)+A157686(n)+1` -/
def P16594385599098758802.Spec : Prop :=
  ∀ n, P16594385599098758802.a n = A054353 (n + 1)

end A054353

/-! ## A054353.P7392865098305401817

`∑[A040001(A156253(n+1)+2)]`
-/

namespace A054353.P7392865098305401817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A156253 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054353.P7392865098305401817

namespace A054353

/-- `∑[A040001(A156253(n+1)+2)]` -/
def P7392865098305401817.Spec : Prop :=
  ∀ n, P7392865098305401817.a n = A054353 (n + 1)

end A054353

/-! ## A054353.P15374519658933506902

`∑[A000034(A074290(n+1)+n)]`
-/

namespace A054353.P15374519658933506902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A074290 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054353.P15374519658933506902

namespace A054353

/-- `∑[A000034(A074290(n+1)+n)]` -/
def P15374519658933506902.Spec : Prop :=
  ∀ n, P15374519658933506902.a n = A054353 (n + 1)

end A054353

/-! ## A054353.P15854018647627557759

`A074288(n+1)/A000002(n+1)`
-/

namespace A054353.P15854018647627557759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074288 (n + 1) : ℚ) / (A000002 (n + 1) : ℚ)

end

end A054353.P15854018647627557759

namespace A054353

/-- `A074288(n+1)/A000002(n+1)` -/
def P15854018647627557759.Spec : Prop :=
  ∀ n, P15854018647627557759.a n = (A054353 (n + 1) : ℚ)

end A054353

/-! ## A054353.P9042934623135917387

`∪[A156242(n+1), A156243(n+1)]`
-/

namespace A054353.P9042934623135917387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054353.P9042934623135917387

namespace A054353

/-- `∪[A156242(n+1), A156243(n+1)]` -/
def P9042934623135917387.Spec : Prop :=
  ∀ n, (P9042934623135917387.a n : ℤ) = A054353 (n + 1)

end A054353

/-! ## A054353.P382482045166786354

`A000002(n+1)+comp[A078649(n+1)]`
-/

namespace A054353.P382482045166786354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A054353.P382482045166786354

namespace A054353

/-- `A000002(n+1)+comp[A078649(n+1)]` -/
def P382482045166786354.Spec : Prop :=
  ∀ n, P382482045166786354.a n = A054353 (n + 1)

end A054353

/-! ## A054353.P14984459719658371312

`A000002(n+1)+A216345(n+1)-1`
-/

namespace A054353.P14984459719658371312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) + (A216345 (n + 1) - 1)

end

end A054353.P14984459719658371312

namespace A054353

/-- `A000002(n+1)+A216345(n+1)-1` -/
def P14984459719658371312.Spec : Prop :=
  ∀ n, P14984459719658371312.a n = A054353 (n + 1)

end A054353

/-!
# A054354: First differences of Kolakoski sequence A000002.

The programs for A054354, the canonical program `A054354.P7688672416916511946` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054354 has offset 1).

The definition of A054354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054354.P7688672416916511946

`Δ[A000002(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054354

/-- `Δ[A000002(n+1)]` -/
def P7688672416916511946.Spec : Prop :=
  ∀ n, P7688672416916511946.a n = A054354 (n + 1)

theorem P7688672416916511946.correct : P7688672416916511946.Spec := by
  intro n
  simp only [A054354, Nat.add_sub_cancel]

end A054354

/-! ## A054354.P4587425058628687738

`A376604(n)+a(n-1)` with `a(0)=1`
-/

namespace A054354.P4587425058628687738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A376604 n + a (n - 1)

end

end A054354.P4587425058628687738

namespace A054354

/-- `A376604(n)+a(n-1)` -/
def P4587425058628687738.Spec : Prop :=
  ∀ n, P4587425058628687738.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P11384180047144268740

`Δ[a(log2(A006928(n)))²]` with `a(0)=0, a(1)=1`
-/

namespace A054354.P11384180047144268740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (SequenceMachineLib.roundAway (Real.logb 2 (A006928 n : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054354.P11384180047144268740

namespace A054354

/-- `Δ[a(log2(A006928(n)))²]` -/
def P11384180047144268740.Spec : Prop :=
  ∀ n, P11384180047144268740.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P12269064486414240766

`Δ[a(log2(A078880(n)))²]` with `a(0)=0, a(1)=1`
-/

namespace A054354.P12269064486414240766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (SequenceMachineLib.roundAway (Real.logb 2 (A078880 n : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054354.P12269064486414240766

namespace A054354

/-- `Δ[a(log2(A078880(n)))²]` -/
def P12269064486414240766.Spec : Prop :=
  ∀ n, P12269064486414240766.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P16461120651160559782

`Δ[abs(a(2-A049710(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A054354.P16461120651160559782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (2 - A049710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054354.P16461120651160559782

namespace A054354

/-- `Δ[abs(a(2-A049710(n)))]` -/
def P16461120651160559782.Spec : Prop :=
  ∀ n, P16461120651160559782.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P1418511112972660198

`Δ[a(2-A088569(n))²]` with `a(0)=0, a(1)=1`
-/

namespace A054354.P1418511112972660198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (2 - A088569 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054354.P1418511112972660198

namespace A054354

/-- `Δ[a(2-A088569(n))²]` -/
def P1418511112972660198.Spec : Prop :=
  ∀ n, P1418511112972660198.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P4622750290359760795

`Δ[A000002(ϕ²-(ϕ-n))!]`
-/

namespace A054354.P4622750290359760795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000002 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054354.P4622750290359760795

namespace A054354

/-- `Δ[A000002(ϕ²-(ϕ-n))!]` -/
def P4622750290359760795.Spec : Prop :=
  ∀ n, P4622750290359760795.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P983781893062600

`Δ[gcd(4, A156728(n)+a(n-1))]` with `a(0)=1`
-/

namespace A054354.P983781893062600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.gcd 4 (A156728 n + (f1 (n - 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054354.P983781893062600

namespace A054354

/-- `Δ[gcd(4, A156728(n)+a(n-1))]` -/
def P983781893062600.Spec : Prop :=
  ∀ n, P983781893062600.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P4797650702479717354

`Δ[2/(2-log2(A000002(-xor(n, -1))))]`
-/

namespace A054354.P4797650702479717354
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / (2 - Real.logb 2 (A000002 (-Int.xor (n : ℤ) (-1)).toNat : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054354.P4797650702479717354

namespace A054354

/-- `Δ[2/(2-log2(A000002(-xor(n, -1))))]` -/
def P4797650702479717354.Spec : Prop :=
  ∀ n, P4797650702479717354.a n = (A054354 (n + 1) : ℝ)

end A054354

/-! ## A054354.P483626718824711482

`A023443(floor(ratio[A000002(n+1)]))`
-/

namespace A054354.P483626718824711482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A054354.P483626718824711482

namespace A054354

/-- `A023443(floor(ratio[A000002(n+1)]))` -/
def P483626718824711482.Spec : Prop :=
  ∀ n, P483626718824711482.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P15902178842743654606

`Δ[A000005(a(2-A049710(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A054354.P15902178842743654606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000005 (f1 (2 - A049710 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054354.P15902178842743654606

namespace A054354

/-- `Δ[A000005(a(2-A049710(n)))]` -/
def P15902178842743654606.Spec : Prop :=
  ∀ n, P15902178842743654606.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P3251604406590635147

`Δ[A000793(a(2-A049710(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A054354.P3251604406590635147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000793 (f1 (2 - A049710 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054354.P3251604406590635147

namespace A054354

/-- `Δ[A000793(a(2-A049710(n)))]` -/
def P3251604406590635147.Spec : Prop :=
  ∀ n, P3251604406590635147.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P18119588953396569192

`Δ[A005117(a(2-A049710(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A054354.P18119588953396569192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A005117 (f1 (2 - A049710 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054354.P18119588953396569192

namespace A054354

/-- `Δ[A005117(a(2-A049710(n)))]` -/
def P18119588953396569192.Spec : Prop :=
  ∀ n, P18119588953396569192.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P839874866153630873

`A078880(n+1)-A000002(n+1)`
-/

namespace A054354.P839874866153630873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1) - A000002 (n + 1)

end

end A054354.P839874866153630873

namespace A054354

/-- `A078880(n+1)-A000002(n+1)` -/
def P839874866153630873.Spec : Prop :=
  ∀ n, P839874866153630873.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P1858513778840577727

`A049705(n+1)-A088569(n+1)`
-/

namespace A054354.P1858513778840577727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1) - A088569 (n + 1)

end

end A054354.P1858513778840577727

namespace A054354

/-- `A049705(n+1)-A088569(n+1)` -/
def P1858513778840577727.Spec : Prop :=
  ∀ n, P1858513778840577727.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P6608515527855002715

`A000002(n+2)-A000002(n+1)`
-/

namespace A054354.P6608515527855002715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 2) - A000002 (n + 1)

end

end A054354.P6608515527855002715

namespace A054354

/-- `A000002(n+2)-A000002(n+1)` -/
def P6608515527855002715.Spec : Prop :=
  ∀ n, P6608515527855002715.a n = A054354 (n + 1)

theorem P6608515527855002715.correct : P6608515527855002715.Spec := by
  intro n
  simp only [A054354, Nat.add_sub_cancel, A054354.P6608515527855002715.a, A054354.P7688672416916511946.f1, A054354.P7688672416916511946.a, SequenceMachineLib.memo_apply]

end A054354

/-! ## A054354.P1780450771026667851

`A049705(n+1)+A157686(n+1)-2`
-/

namespace A054354.P1780450771026667851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1) + (A157686 (n + 1) - 2)

end

end A054354.P1780450771026667851

namespace A054354

/-- `A049705(n+1)+A157686(n+1)-2` -/
def P1780450771026667851.Spec : Prop :=
  ∀ n, P1780450771026667851.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P6679993111042586262

`A049705(n+1)-(3-A078880(n+1))`
-/

namespace A054354.P6679993111042586262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1) - (3 - A078880 (n + 1))

end

end A054354.P6679993111042586262

namespace A054354

/-- `A049705(n+1)-(3-A078880(n+1))` -/
def P6679993111042586262.Spec : Prop :=
  ∀ n, P6679993111042586262.a n = A054354 (n + 1)

end A054354

/-! ## A054354.P4746669943046402042

`Δ[-A049705(n+1)]`
-/

namespace A054354.P4746669943046402042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054354.P4746669943046402042

namespace A054354

/-- `Δ[-A049705(n+1)]` -/
def P4746669943046402042.Spec : Prop :=
  ∀ n, P4746669943046402042.a n = A054354 (n + 1)

end A054354

/-!
# A054355: Binomial transform of Kolakoski sequence A000002.

The programs for A054355, there is no canonical definition to state claims against.
-/

/-! ## A054355.P4767499327206818908

`∑[A001462(∑[A071962(n)])]`
-/

namespace A054355.P4767499327206818908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071962 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054355.P4767499327206818908

/-! ## A054355.P9775796336533786553

`∑[∑[A137735(A222660(n+1))]]`
-/

namespace A054355.P9775796336533786553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A222660 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054355.P9775796336533786553

/-! ## A054355.P1473072239677807582

`∑[∑[A000196(A080408(n))]]`
-/

namespace A054355.P1473072239677807582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A080408 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054355.P1473072239677807582

/-! ## A054355.P11651790543502364624

`∑[∑[A114886(A057755(n))]]`
-/

namespace A054355.P11651790543502364624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A057755 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054355.P11651790543502364624

/-!
# A054356: The Five Hysterical Girls Theorem.

The programs for A054356, there is no canonical definition to state claims against.
-/

/-! ## A054356.P1862274992067858821

`A270338(A257617(n)+A103185(n))`
-/

namespace A054356.P1862274992067858821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270338 (A257617 n + A103185 n).toNat

end

end A054356.P1862274992067858821

/-!
# A054357: Number of unlabeled 2-ary cacti having n polygons. Also number of bicolored plane trees with n edges.

The programs for A054357, there is no canonical definition to state claims against.
-/

/-! ## A054357.P6622786327553165514

`2*A003239(n)-A000108(n)`
-/

namespace A054357.P6622786327553165514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003239 n - A000108 n

end

end A054357.P6622786327553165514

/-! ## A054357.P1080324048515951314

`lcm(2, A123611(n))-A000108(n)`
-/

namespace A054357.P1080324048515951314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A123611 n) : ℤ) - A000108 n

end

end A054357.P1080324048515951314

/-! ## A054357.P830112587850378768

`A123611(A028310(n))-A000108(n)`
-/

namespace A054357.P830112587850378768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123611 (A028310 n).toNat - A000108 n

end

end A054357.P830112587850378768

/-! ## A054357.P11848302012111158535

`A123611(n)-A000108(n)%A322202(n)`
-/

namespace A054357.P11848302012111158535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123611 n - Int.tmod (A000108 n) (A322202 n)

end

end A054357.P11848302012111158535

/-! ## A054357.P17700752485764491623

`A303912(∑[n+2]-1)`
-/

namespace A054357.P17700752485764491623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A054357.P17700752485764491623

/-! ## A054357.P14911201550362830850

`A168324(A065091(n+1))*A303912(A034856(n+1))`
-/

namespace A054357.P14911201550362830850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A065091 (n + 1)).toNat * A303912 (A034856 (n + 1)).toNat

end

end A054357.P14911201550362830850

/-!
# A054358: Number of unlabeled asymmetric 2-ary cacti having n polygons.

The programs for A054358, there is no canonical definition to state claims against.
-/

/-! ## A054358.P8640935972698440023

`2*A022553(n)-A000108(n)`
-/

namespace A054358.P8640935972698440023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022553 n - A000108 n

end

end A054358.P8640935972698440023

/-! ## A054358.P17646843012121439886

`A022553(A028310(n))+A022553(n)-A000108(n)`
-/

namespace A054358.P17646843012121439886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (A028310 n).toNat + (A022553 n - A000108 n)

end

end A054358.P17646843012121439886

/-! ## A054358.P4323552204277537691

`A022553(n)+(A022553(n)-A000108(n))%A003239(n)`
-/

namespace A054358.P4323552204277537691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 n + Int.tmod (A022553 n - A000108 n) (A003239 n)

end

end A054358.P4323552204277537691

/-! ## A054358.P12075880559023233743

`A303913(∑[n+2]-1)`
-/

namespace A054358.P12075880559023233743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A054358.P12075880559023233743

/-! ## A054358.P10010525927446548514

`A303913(A034856(n+1))%A299571(n+1)`
-/

namespace A054358.P10010525927446548514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303913 (A034856 (n + 1)).toNat) (A299571 (n + 1))

end

end A054358.P10010525927446548514

/-! ## A054358.P38652316515823398

`A168324(A065091(n+1))*A303913(A034856(n+1))`
-/

namespace A054358.P38652316515823398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A065091 (n + 1)).toNat * A303913 (A034856 (n + 1)).toNat

end

end A054358.P38652316515823398

/-! ## A054358.P8190497684816104757

`A077053(A165824(n+1))*A303913(A034856(n+1))`
-/

namespace A054358.P8190497684816104757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077053 (A165824 (n + 1)).toNat * A303913 (A034856 (n + 1)).toNat

end

end A054358.P8190497684816104757

/-!
# A054359: Number of polyominoes with n cells that tile the plane.

The programs for A054359, there is no canonical definition to state claims against.
-/

/-! ## A054359.P5760663539700710598

`Δ[A173271(n)]-A054360(n+1)`
-/

namespace A054359.P5760663539700710598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054360 (n + 1)

end

end A054359.P5760663539700710598

/-! ## A054359.P6635460514762523900

`A075206(n+1)+A075205(n+1)`
-/

namespace A054359.P6635460514762523900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075206 (n + 1) + A075205 (n + 1)

end

end A054359.P6635460514762523900

/-! ## A054359.P15645793114461982643

`A000104(n+1)-A054361(n+1)`
-/

namespace A054359.P15645793114461982643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000104 (n + 1) - A054361 (n + 1)

end

end A054359.P15645793114461982643

/-! ## A054359.P5552436924497048774

`A000105(n+1)-A054360(n+1)`
-/

namespace A054359.P5552436924497048774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A054360 (n + 1)

end

end A054359.P5552436924497048774

/-! ## A054359.P4087639540166548256

`A006765(n+1)+1-A054360(n+1)`
-/

namespace A054359.P4087639540166548256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) + (1 - A054360 (n + 1))

end

end A054359.P4087639540166548256

/-!
# A054360: Number of polyominoes with n cells that do not tile the plane.

The programs for A054360, there is no canonical definition to state claims against.
-/

/-! ## A054360.P1583662139463380879

`Δ[A173271(n)]-A054359(n+1)`
-/

namespace A054360.P1583662139463380879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054359 (n + 1)

end

end A054360.P1583662139463380879

/-! ## A054360.P7186898616614580640

`A054361(n+1)+A001419(n+1)`
-/

namespace A054360.P7186898616614580640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054361 (n + 1) + A001419 (n + 1)

end

end A054360.P7186898616614580640

/-! ## A054360.P9817076973701453125

`A000105(n+1)-A054359(n+1)`
-/

namespace A054360.P9817076973701453125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A054359 (n + 1)

end

end A054360.P9817076973701453125

/-! ## A054360.P11857466395540470903

`A006765(n+1)+1-A054359(n+1)`
-/

namespace A054360.P11857466395540470903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) + (1 - A054359 (n + 1))

end

end A054360.P11857466395540470903

/-! ## A054360.P4514162868978881335

`A173271(n+1)-(A173271(n)+A054359(n+1))`
-/

namespace A054360.P4514162868978881335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 (n + 1) - (A173271 n + A054359 (n + 1))

end

end A054360.P4514162868978881335

/-!
# A054361: Number of polyominoes with n cells without holes that do not tile the plane.

The programs for A054361, there is no canonical definition to state claims against.
-/

/-! ## A054361.P7615444920861439400

`A000104(n+1)-A054359(n+1)`
-/

namespace A054361.P7615444920861439400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000104 (n + 1) - A054359 (n + 1)

end

end A054361.P7615444920861439400

/-! ## A054361.P10915673884201517935

`A054360(n+1)-A001419(n+1)`
-/

namespace A054361.P10915673884201517935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054360 (n + 1) - A001419 (n + 1)

end

end A054361.P10915673884201517935

/-! ## A054361.P9661939657237494402

`A054360(n+1)+A001419(n+1)*A057428(n)`
-/

namespace A054361.P9661939657237494402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054360 (n + 1) + A001419 (n + 1) * A057428 n

end

end A054361.P9661939657237494402

/-! ## A054361.P2474838391932757473

`Δ[A173271(n)]-(A054359(n+1)+A001419(n+1))`
-/

namespace A054361.P2474838391932757473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A054359 (n + 1) + A001419 (n + 1))

end

end A054361.P2474838391932757473

/-! ## A054361.P11454605253442158727

`A000104(n+1)-(A000105(n+1)-A054360(n+1))`
-/

namespace A054361.P11454605253442158727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000104 (n + 1) - (A000105 (n + 1) - A054360 (n + 1))

end

end A054361.P11454605253442158727

/-!
# A054362: Number of unlabeled 4-gonal cacti having n polygons.

The programs for A054362, there is no canonical definition to state claims against.
-/

/-! ## A054362.P10431914931403507484

`A303694(∑[n+3]+n+3)`
-/

namespace A054362.P10431914931403507484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A054362.P10431914931403507484

/-! ## A054362.P18364017529949546320

`C(A303694(A046691(n+2)), A178334(n))`
-/

namespace A054362.P18364017529949546320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A303694 (A046691 (n + 2)).toNat).toNat (A178334 n).toNat

end

end A054362.P18364017529949546320

/-! ## A054362.P16645700574433845957

`A178334(n+1)*A303694(A046691(n+2))`
-/

namespace A054362.P16645700574433845957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A303694 (A046691 (n + 2)).toNat

end

end A054362.P16645700574433845957

/-! ## A054362.P14042546574152524745

`A303694(A046691(n+2))%A320615(n+3)`
-/

namespace A054362.P14042546574152524745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303694 (A046691 (n + 2)).toNat) (A320615 (n + 3))

end

end A054362.P14042546574152524745

/-! ## A054362.P6931137750284834851

`A157928(2*(n+1))*A303694(A046691(n+2))`
-/

namespace A054362.P6931137750284834851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (2 * (n + 1)) * A303694 (A046691 (n + 2)).toNat

end

end A054362.P6931137750284834851

/-!
# A054363: Number of unlabeled 5-ary cacti having n polygons.

The programs for A054363, there is no canonical definition to state claims against.
-/

/-! ## A054363.P13378485535105883550

`A303912(A052905(n+2))`
-/

namespace A054363.P13378485535105883550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (A052905 (n + 2)).toNat

end

end A054363.P13378485535105883550

/-! ## A054363.P4881299695015146694

`A303912(eq[4, A025581(n)])`
-/

namespace A054363.P4881299695015146694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054363.P4881299695015146694

/-! ## A054363.P11646410332109642113

`A303912(A055998(n+3)-2)`
-/

namespace A054363.P11646410332109642113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (A055998 (n + 3) - 2).toNat

end

end A054363.P11646410332109642113

/-! ## A054363.P2975051783927964335

`A303912(A000217(n+5)-5)`
-/

namespace A054363.P2975051783927964335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (A000217 (n + 5) - 5).toNat

end

end A054363.P2975051783927964335

/-! ## A054363.P6885479519680216748

`A303912(eq[5, A004736(n+1)])`
-/

namespace A054363.P6885479519680216748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054363.P6885479519680216748

/-! ## A054363.P12613541903412729557

`A303912(2*n+A167614(n+2)+1)`
-/

namespace A054363.P12613541903412729557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 ((2 * n : ℤ) + (A167614 (n + 2) + 1)).toNat

end

end A054363.P12613541903412729557

/-!
# A054364: Number of unlabeled asymmetric 5-ary cacti having n polygons.

The programs for A054364, there is no canonical definition to state claims against.
-/

/-! ## A054364.P11762866237034665961

`A303913(A052905(n+2))`
-/

namespace A054364.P11762866237034665961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A052905 (n + 2)).toNat

end

end A054364.P11762866237034665961

/-! ## A054364.P8545184301388047058

`A303913(eq[4, A025581(n)])`
-/

namespace A054364.P8545184301388047058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054364.P8545184301388047058

/-! ## A054364.P3264067579257886462

`A303913(eq[5, A193739(n)])`
-/

namespace A054364.P3264067579257886462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054364.P3264067579257886462

/-! ## A054364.P8978907706450887318

`A303913(A046691(n+3)-1)`
-/

namespace A054364.P8978907706450887318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A046691 (n + 3) - 1).toNat

end

end A054364.P8978907706450887318

/-! ## A054364.P9092733354086665562

`A303913(A000217(n+5)-5)`
-/

namespace A054364.P9092733354086665562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A000217 (n + 5) - 5).toNat

end

end A054364.P9092733354086665562

/-! ## A054364.P1284771186186193912

`A303913(Δ[A023545(n+1)]-1)`
-/

namespace A054364.P1284771186186193912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (f1 (n + 1) - f1 n - 1).toNat

end

end A054364.P1284771186186193912

/-! ## A054364.P15253944520841575602

`A303913(A055998(n+2)+n+3)`
-/

namespace A054364.P15253944520841575602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A055998 (n + 2) + (n + 3 : ℤ)).toNat

end

end A054364.P15253944520841575602

/-! ## A054364.P7383809612267711314

`A303913(2*n+A167614(n+2)+1)`
-/

namespace A054364.P7383809612267711314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 ((2 * n : ℤ) + (A167614 (n + 2) + 1)).toNat

end

end A054364.P7383809612267711314

/-! ## A054364.P4732176272236938373

`A303913(A167614(n+1)+A005843(n)+n+4)`
-/

namespace A054364.P4732176272236938373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A167614 (n + 1) + A005843 n + (n + 4 : ℤ)).toNat

end

end A054364.P4732176272236938373

/-!
# A054365: Number of unlabeled 5-gonal cacti having n polygons.

The programs for A054365, there is no canonical definition to state claims against.
-/

/-! ## A054365.P1553014847818703655

`A303694(∑[n+5]+5)`
-/

namespace A054365.P1553014847818703655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A054365.P1553014847818703655

/-! ## A054365.P1984673631542205465

`lcm(A033999(n), A303694(A052905(n+2)))`
-/

namespace A054365.P1984673631542205465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A303694 (A052905 (n + 2)).toNat)

end

end A054365.P1984673631542205465

/-! ## A054365.P10207337101444662668

`gcd(A151933(n), A303694(A000096(n+4)-4))`
-/

namespace A054365.P10207337101444662668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A303694 (A000096 (n + 4) - 4).toNat)

end

end A054365.P10207337101444662668

/-! ## A054365.P11918791036587037667

`A000034(2*n)*A303694(A055999(n+2)+1)`
-/

namespace A054365.P11918791036587037667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A303694 (A055999 (n + 2) + 1).toNat

end

end A054365.P11918791036587037667

/-! ## A054365.P5198977364566774029

`A303694(A000096(n+4)-4)+A000035(2*n)`
-/

namespace A054365.P5198977364566774029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (A000096 (n + 4) - 4).toNat + A000035 (2 * n)

end

end A054365.P5198977364566774029

/-!
# A054366: Number of unlabeled 6-ary cacti having n polygons.

The programs for A054366, there is no canonical definition to state claims against.
-/

/-! ## A054366.P12488162510941657554

`A303912(A055999(n+3))`
-/

namespace A054366.P12488162510941657554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (A055999 (n + 3)).toNat

end

end A054366.P12488162510941657554

/-! ## A054366.P13946451565407704689

`A303912(eq[5, A025581(n)])`
-/

namespace A054366.P13946451565407704689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054366.P13946451565407704689

/-! ## A054366.P14164892512918320570

`A303912(Δ[A023551(n+1)])`
-/

namespace A054366.P14164892512918320570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (f1 (n + 1) - f1 n).toNat

end

end A054366.P14164892512918320570

/-! ## A054366.P15002958205679192556

`A303912(Δ[A026054(n+3)])`
-/

namespace A054366.P15002958205679192556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (f1 (n + 1) - f1 n).toNat

end

end A054366.P15002958205679192556

/-! ## A054366.P15855645543048063834

`A303912(A052905(n+3)-1)`
-/

namespace A054366.P15855645543048063834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (A052905 (n + 3) - 1).toNat

end

end A054366.P15855645543048063834

/-! ## A054366.P7350380664788913307

`A303912(A055998(n+4)-3)`
-/

namespace A054366.P7350380664788913307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (A055998 (n + 4) - 3).toNat

end

end A054366.P7350380664788913307

/-! ## A054366.P14951589845618295805

`A303912(A000217(n+6)-6)`
-/

namespace A054366.P14951589845618295805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (A000217 (n + 6) - 6).toNat

end

end A054366.P14951589845618295805

/-! ## A054366.P18287457713364163074

`A303912(eq[6, A004736(n+1)])`
-/

namespace A054366.P18287457713364163074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054366.P18287457713364163074

/-! ## A054366.P2879997170037366281

`A303912(A000124(n+5)+n-1)`
-/

namespace A054366.P2879997170037366281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A054366.P2879997170037366281

/-! ## A054366.P3807485729962993236

`A303912(2*n+A000217(n+4)+5)`
-/

namespace A054366.P3807485729962993236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 ((2 * n : ℤ) + (A000217 (n + 4) + 5)).toNat

end

end A054366.P3807485729962993236

/-!
# A054367: Number of unlabeled asymmetric 6-ary cacti having n polygons.

The programs for A054367, there is no canonical definition to state claims against.
-/

/-! ## A054367.P16360195173929028825

`A303913(A055999(n+3))`
-/

namespace A054367.P16360195173929028825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A055999 (n + 3)).toNat

end

end A054367.P16360195173929028825

/-! ## A054367.P5621439202710378512

`A303913(Δ[A023551(n+1)])`
-/

namespace A054367.P5621439202710378512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (f1 (n + 1) - f1 n).toNat

end

end A054367.P5621439202710378512

/-! ## A054367.P2100630617880568144

`A303913(Δ[A026054(n+3)])`
-/

namespace A054367.P2100630617880568144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (f1 (n + 1) - f1 n).toNat

end

end A054367.P2100630617880568144

/-! ## A054367.P11180124550867576398

`A303913(Δ[A023545(n+2)]-2)`
-/

namespace A054367.P11180124550867576398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (f1 (n + 1) - f1 n - 2).toNat

end

end A054367.P11180124550867576398

/-! ## A054367.P906861038040663834

`A303913(A046691(n+3)+n+4)`
-/

namespace A054367.P906861038040663834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A046691 (n + 3) + (n + 4 : ℤ)).toNat

end

end A054367.P906861038040663834

/-! ## A054367.P18272438068697262871

`A303913(2*n+A000217(n+4)+5)`
-/

namespace A054367.P18272438068697262871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 ((2 * n : ℤ) + (A000217 (n + 4) + 5)).toNat

end

end A054367.P18272438068697262871

/-! ## A054367.P15495386215313827442

`A303913(A167614(n+1)+4*n+9)`
-/

namespace A054367.P15495386215313827442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A167614 (n + 1) + (4 * n + 9 : ℤ)).toNat

end

end A054367.P15495386215313827442

/-! ## A054367.P9843192135906774994

`A303913(A007401(Δ[A023545(n+1)]))`
-/

namespace A054367.P9843192135906774994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A007401 (f1 (n + 1) - f1 n).toNat).toNat

end

end A054367.P9843192135906774994

/-! ## A054367.P4082210060947178027

`A303913(A055998(n+2)+A020744(n))`
-/

namespace A054367.P4082210060947178027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A055998 (n + 2) + A020744 n).toNat

end

end A054367.P4082210060947178027

/-! ## A054367.P2915682258629015822

`A303913(A166136(n+1)+A016825(n+1))`
-/

namespace A054367.P2915682258629015822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A166136 (n + 1) + A016825 (n + 1)).toNat

end

end A054367.P2915682258629015822

/-!
# A054368: Number of unlabeled 6-gonal cacti having n polygons.

The programs for A054368, there is no canonical definition to state claims against.
-/

/-! ## A054368.P12393942029473252991

`A303694(A055999(n+3))`
-/

namespace A054368.P12393942029473252991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (A055999 (n + 3)).toNat

end

end A054368.P12393942029473252991

/-! ## A054368.P17767277515711079968

`A303694(Δ[A023551(n+1)])`
-/

namespace A054368.P17767277515711079968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (f1 (n + 1) - f1 n).toNat

end

end A054368.P17767277515711079968

/-! ## A054368.P14311715329463465265

`A303694(Δ[A026054(n+3)])`
-/

namespace A054368.P14311715329463465265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (f1 (n + 1) - f1 n).toNat

end

end A054368.P14311715329463465265

/-! ## A054368.P3656920493541840175

`A303694(A052905(n+3)-1)`
-/

namespace A054368.P3656920493541840175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (A052905 (n + 3) - 1).toNat

end

end A054368.P3656920493541840175

/-! ## A054368.P10105467748685693430

`A303694(A000096(n+5)-5)`
-/

namespace A054368.P10105467748685693430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (A000096 (n + 5) - 5).toNat

end

end A054368.P10105467748685693430

/-!
# A054369: Number of unlabeled 7-ary cacti having n polygons.

The programs for A054369, there is no canonical definition to state claims against.
-/

/-! ## A054369.P2180859533446210427

`A303912(eq[6, A025581(n)])`
-/

namespace A054369.P2180859533446210427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054369.P2180859533446210427

/-! ## A054369.P6292229326787640551

`A303912(eq[7, A193739(n)])`
-/

namespace A054369.P6292229326787640551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054369.P6292229326787640551

/-! ## A054369.P3079232913146585096

`A303912(A052905(n+4)-2)`
-/

namespace A054369.P3079232913146585096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (A052905 (n + 4) - 2).toNat

end

end A054369.P3079232913146585096

/-! ## A054369.P4915755933099505719

`A303912(eq[7, A004736(n+1)])`
-/

namespace A054369.P4915755933099505719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054369.P4915755933099505719

/-! ## A054369.P4284978969779837483

`A303912(Δ[A023551(n+2)]-1)`
-/

namespace A054369.P4284978969779837483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (f1 (n + 1) - f1 n - 1).toNat

end

end A054369.P4284978969779837483

/-! ## A054369.P14722527778955395980

`A303912(Δ[A026054(n+4)]-1)`
-/

namespace A054369.P14722527778955395980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (f1 (n + 1) - f1 n - 1).toNat

end

end A054369.P14722527778955395980

/-! ## A054369.P4324512169032574169

`A303912(A167499(n+4)+A005408(n))`
-/

namespace A054369.P4324512169032574169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (A167499 (n + 4) + A005408 n).toNat

end

end A054369.P4324512169032574169

/-!
# A054370: Number of unlabeled asymmetric 7-ary cacti having n polygons.

The programs for A054370, there is no canonical definition to state claims against.
-/

/-! ## A054370.P7290158079766981825

`A303913(eq[6, A025581(n)])`
-/

namespace A054370.P7290158079766981825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054370.P7290158079766981825

/-! ## A054370.P13508953240093715577

`A303913(eq[7, A193739(n)])`
-/

namespace A054370.P13508953240093715577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054370.P13508953240093715577

/-! ## A054370.P9305677573813057222

`A303913(eq[13, A099375(n)])`
-/

namespace A054370.P9305677573813057222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054370.P9305677573813057222

/-! ## A054370.P7669920341211417083

`A303913(A056000(n+3)+3)`
-/

namespace A054370.P7669920341211417083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A056000 (n + 3) + 3).toNat

end

end A054370.P7669920341211417083

/-! ## A054370.P9079570754724399172

`A303913(A052905(n+4)-2)`
-/

namespace A054370.P9079570754724399172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A052905 (n + 4) - 2).toNat

end

end A054370.P9079570754724399172

/-! ## A054370.P16651233848750264333

`A303913(A000217(n+7)-7)`
-/

namespace A054370.P16651233848750264333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (A000217 (n + 7) - 7).toNat

end

end A054370.P16651233848750264333

/-! ## A054370.P5865831128538247076

`A303913(eq[7, A004736(n+1)])`
-/

namespace A054370.P5865831128538247076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054370.P5865831128538247076

/-! ## A054370.P7766430117300854807

`A303913(Δ[A023551(n+2)]-1)`
-/

namespace A054370.P7766430117300854807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (f1 (n + 1) - f1 n - 1).toNat

end

end A054370.P7766430117300854807

/-! ## A054370.P16861885493303396223

`A303913(Δ[A026054(n+4)]-1)`
-/

namespace A054370.P16861885493303396223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (f1 (n + 1) - f1 n - 1).toNat

end

end A054370.P16861885493303396223

/-! ## A054370.P10269739815813410194

`A303913(2*n+A000096(n+4)+7)`
-/

namespace A054370.P10269739815813410194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 ((2 * n : ℤ) + (A000096 (n + 4) + 7)).toNat

end

end A054370.P10269739815813410194

/-!
# A054371: Number of unlabeled 7-gonal cacti having n polygons.

The programs for A054371, there is no canonical definition to state claims against.
-/

/-! ## A054371.P5881058792042153902

`A303694(eq[6, A025581(n)])`
-/

namespace A054371.P5881058792042153902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054371.P5881058792042153902

/-! ## A054371.P14884044132118218658

`A303694(eq[7, A193739(n)])`
-/

namespace A054371.P14884044132118218658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054371.P14884044132118218658

/-! ## A054371.P2046023308519200055

`A303694(A055999(n+4)-1)`
-/

namespace A054371.P2046023308519200055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (A055999 (n + 4) - 1).toNat

end

end A054371.P2046023308519200055

/-! ## A054371.P9870375892596756840

`A303694(eq[7, A004736(n+1)])`
-/

namespace A054371.P9870375892596756840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054371.P9870375892596756840

/-! ## A054371.P1050329327411005459

`A303694(Δ[A023551(n+2)]-1)`
-/

namespace A054371.P1050329327411005459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (f1 (n + 1) - f1 n - 1).toNat

end

end A054371.P1050329327411005459

/-!
# A054372: Table of resultants for cyclotomic polynomials phi_k(x) and phi_n(x).

The programs for A054372, the canonical program `A054372.P16596843267228174239` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054372 has offset 1).

The definition of A054372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6424 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054372.P16596843267228174239

`A020500(A010766(n+1))^A054522(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A054372

/-- `A020500(A010766(n+1))^A054522(n+1)` -/
def P16596843267228174239.Spec : Prop :=
  ∀ n, P16596843267228174239.a n = (A054372 (n + 1) : ℚ)

end A054372

/-! ## A054372.P17955438895149527129

`A020500(A049834(n+1))^A054522(n+1)`
-/

namespace A054372.P17955438895149527129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (A049834 (n + 1)).toNat : ℚ) ^ (A054522 (n + 1) : ℤ)

end

end A054372.P17955438895149527129

namespace A054372

/-- `A020500(A049834(n+1))^A054522(n+1)` -/
def P17955438895149527129.Spec : Prop :=
  ∀ n, P17955438895149527129.a n = (A054372 (n + 1) : ℚ)

end A054372

/-! ## A054372.P796410788188164870

`A020500(A054531(n+1))^A054522(n+1)`
-/

namespace A054372.P796410788188164870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (A054531 (n + 1)).toNat : ℚ) ^ (A054522 (n + 1) : ℤ)

end

end A054372.P796410788188164870

namespace A054372

/-- `A020500(A054531(n+1))^A054522(n+1)` -/
def P796410788188164870.Spec : Prop :=
  ∀ n, P796410788188164870.a n = (A054372 (n + 1) : ℚ)

end A054372

/-! ## A054372.P424433274865863195

`A020500(A234575(n+1))^A054522(n+1)`
-/

namespace A054372.P424433274865863195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (A234575 (n + 1)).toNat : ℚ) ^ (A054522 (n + 1) : ℤ)

end

end A054372.P424433274865863195

namespace A054372

/-- `A020500(A234575(n+1))^A054522(n+1)` -/
def P424433274865863195.Spec : Prop :=
  ∀ n, P424433274865863195.a n = (A054372 (n + 1) : ℚ)

end A054372

/-! ## A054372.P16070281054495872498

`A020500(A051537(n+1))^A054522(n+1)`
-/

namespace A054372.P16070281054495872498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (A051537 (n + 1)).toNat : ℚ) ^ (A054522 (n + 1) : ℤ)

end

end A054372.P16070281054495872498

namespace A054372

/-- `A020500(A051537(n+1))^A054522(n+1)` -/
def P16070281054495872498.Spec : Prop :=
  ∀ n, P16070281054495872498.a n = (A054372 (n + 1) : ℚ)

end A054372

/-!
# A054373: Table of resultants for Hermite polynomials H_k(x) and H_n(x).

The programs for A054373, there is no canonical definition to state claims against.
-/

/-! ## A054373.P13407208577609506509

`1-A182242(A026567(2*n))`
-/

namespace A054373.P13407208577609506509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182242 (A026567 (2 * n)).toNat

end

end A054373.P13407208577609506509

/-!
# A054374: 

The programs for A054374, there is no canonical definition to state claims against.
-/

/-! ## A054374.P10108551847975994667

`∏[(n+1)*Δ[(2*n+1)²]^n]`
-/

namespace A054374.P10108551847975994667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054374.P10108551847975994667

/-!
# A054377: Primary pseudoperfect numbers: numbers k > 1 such that 1/k + sum 1/p = 1, where the sum is over the primes p | k.

The programs for A054377, there is no canonical definition to state claims against.
-/

/-! ## A054377.P2915790614944148820

`A349193(n+2)`
-/

namespace A054377.P2915790614944148820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349193 (n + 2)

end

end A054377.P2915790614944148820

/-! ## A054377.P12210833801497068515

`A330068(n+3)/2`
-/

namespace A054377.P12210833801497068515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330068 (n + 3) : ℚ) / 2

end

end A054377.P12210833801497068515

/-! ## A054377.P17288102903777922177

`A346552(n+3)/4`
-/

namespace A054377.P17288102903777922177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346552 (n + 3) : ℚ) / 4

end

end A054377.P17288102903777922177

/-! ## A054377.P6714293229070683009

`A346556(n+3)/8`
-/

namespace A054377.P6714293229070683009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346556 (n + 3) : ℚ) / 8

end

end A054377.P6714293229070683009

/-!
# A054378: Sums of prime factors of A039752, including multiplicities.

The programs for A054378, there is no canonical definition to state claims against.
-/

/-! ## A054378.P15646926913947825066

`A129318(eq[1, A129320(n+1)]+1)`
-/

namespace A054378.P15646926913947825066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054378.P15646926913947825066

/-! ## A054378.P16699375666604944640

`A129319(eq[1, A129320(n+1)]+1)`
-/

namespace A054378.P16699375666604944640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054378.P16699375666604944640

/-! ## A054378.P10273779950731610885

`A129318(record[(n+1)/A129320(n+1)])`
-/

namespace A054378.P10273779950731610885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A129320 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129318 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A054378.P10273779950731610885

/-! ## A054378.P6796390550327910871

`A129319(record[(n+1)/A129320(n+1)])`
-/

namespace A054378.P6796390550327910871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A129320 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129319 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A054378.P6796390550327910871

/-! ## A054378.P10062535599749677627

`A129318(eq[A129318(n+1), A129319(n+1)]+1)`
-/

namespace A054378.P10062535599749677627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A054378.P10062535599749677627

/-! ## A054378.P7105785680992044066

`A001414(A039752(n+1))`
-/

namespace A054378.P7105785680992044066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A039752 (n + 1)).toNat

end

end A054378.P7105785680992044066

/-!
# A054379: Reduced numerators of the coefficients in a series expansion for Gamma[x].

The programs for A054379, there is no canonical definition to state claims against.
-/

/-! ## A054379.P6966703488662509803

`A014963(A144010(n))*A122252(n+1)`
-/

namespace A054379.P6966703488662509803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A144010 n).toNat * A122252 (n + 1)

end

end A054379.P6966703488662509803

/-! ## A054379.P7009099089675889179

`A014963(A144014(n))*A122252(n+1)`
-/

namespace A054379.P7009099089675889179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A144014 n).toNat * A122252 (n + 1)

end

end A054379.P7009099089675889179

/-! ## A054379.P16527535530848802769

`A046951(A120612(n))*A122252(n+1)`
-/

namespace A054379.P16527535530848802769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A120612 n).toNat * A122252 (n + 1)

end

end A054379.P16527535530848802769

/-!
# A054380: Reduced denominators of the coefficients in a series expansion for Gamma[x].

The programs for A054380, there is no canonical definition to state claims against.
-/

/-! ## A054380.P3036646036621999857

`lcm(n+1, A122253(n+1)/2)/(n+1)`
-/

namespace A054380.P3036646036621999857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A122253 (n + 1) : ℚ) / 2)) : ℚ) / (n + 1 : ℚ)

end

end A054380.P3036646036621999857

/-!
# A054381: Number of n-node connected planar graphs with minimum degree at least 2.

The programs for A054381, there is no canonical definition to state claims against.
-/

/-! ## A054381.P15507729593121724108

`∑[A105512(A156170(n))]`
-/

namespace A054381.P15507729593121724108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (A156170 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054381.P15507729593121724108

/-! ## A054381.P1166427194830647253

`A032615(record[A327805(n)])`
-/

namespace A054381.P1166427194830647253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054381.P1166427194830647253

/-! ## A054381.P13702816637797766432

`A032615(A000088(n+1))`
-/

namespace A054381.P13702816637797766432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A000088 (n + 1)).toNat

end

end A054381.P13702816637797766432

/-!
# A054382: James Joyce's "Ulysses" sequence: number of digits in n^(n^n).

The programs for A054382, there is no canonical definition to state claims against.
-/

/-! ## A054382.P7788810122259237499

`ceil(A327603(n)/A028310(n))`
-/

namespace A054382.P7788810122259237499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327603 n : ℚ) / (A028310 n : ℚ)⌉

end

end A054382.P7788810122259237499

/-! ## A054382.P1525792397552622588

`ceil(A327603(n)/A233583(n+1))`
-/

namespace A054382.P1525792397552622588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327603 n : ℚ) / (A233583 (n + 1) : ℚ)⌉

end

end A054382.P1525792397552622588

/-!
# A054383: Number of (zeroless) pandigital fractions for 1/n.

The programs for A054383, there is no canonical definition to state claims against.
-/

/-! ## A054383.P11982080654432317555

`A069012(10*(n+1))`
-/

namespace A054383.P11982080654432317555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069012 (10 * (n + 1))

end

end A054383.P11982080654432317555

/-! ## A054383.P10700871027326575757

`A115927(10*(n+1))`
-/

namespace A054383.P10700871027326575757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115927 (10 * (n + 1))

end

end A054383.P10700871027326575757

/-!
# A054384: Number of inequivalent sublattices of index n in hexagonal lattice, where two sublattices are considered equivalent if one can be rotated to give the other.

The programs for A054384, there is no canonical definition to state claims against.
-/

/-! ## A054384.P11471019091772699870

`A008620(∑{d}[n, #%#²]%A127606(n))`
-/

namespace A054384.P11471019091772699870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d % d ^ 2 : ℕ) : ℤ) (A127606 n)).toNat

end

end A054384.P11471019091772699870

/-! ## A054384.P4702667457642489605

`A008620(A039653(n%A323586(n)))`
-/

namespace A054384.P4702667457642489605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A039653 (Int.tmod (n : ℤ) (A323586 n)).toNat).toNat

end

end A054384.P4702667457642489605

/-! ## A054384.P17280754159521643441

`A008620(A039653(n)%A083388(n+1))`
-/

namespace A054384.P17280754159521643441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.tmod (A039653 n) (A083388 (n + 1))).toNat

end

end A054384.P17280754159521643441

/-! ## A054384.P6781632414124026785

`A366136(A159347(n))`
-/

namespace A054384.P6781632414124026785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366136 (A159347 n).toNat

end

end A054384.P6781632414124026785

/-! ## A054384.P11322898772577741813

`ceil(∏{p}[A000244(n), A000203(n)/#])`
-/

namespace A054384.P11322898772577741813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000203 n : ℚ) / (p : ℚ)⌉

end

end A054384.P11322898772577741813

/-!
# A054385: Beatty sequence for e/(e-1); complement of A022843.

The programs for A054385, the canonical program `A054385.P13327735877817480647` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054385 has offset 1).

The definition of A054385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054385.P16858952124141693993

`comp[floor(e*n)]`
-/

namespace A054385.P16858952124141693993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A054385.P16858952124141693993

namespace A054385

/-- `comp[floor(e*n)]` -/
def P16858952124141693993.Spec : Prop :=
  ∀ n, (P16858952124141693993.a n : ℤ) = A054385 (n + 1)

end A054385

/-! ## A054385.P15265378414323527814

`floor(A330179(n+1)/3)`
-/

namespace A054385.P15265378414323527814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330179 (n + 1) : ℚ) / 3⌋

end

end A054385.P15265378414323527814

namespace A054385

/-- `floor(A330179(n+1)/3)` -/
def P15265378414323527814.Spec : Prop :=
  ∀ n, P15265378414323527814.a n = A054385 (n + 1)

end A054385

/-! ## A054385.P15887468866174592965

`comp[A184589(n+1)]+1`
-/

namespace A054385.P15887468866174592965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A054385.P15887468866174592965

namespace A054385

/-- `comp[A184589(n+1)]+1` -/
def P15887468866174592965.Spec : Prop :=
  ∀ n, (P15887468866174592965.a n : ℤ) = A054385 (n + 1)

end A054385

/-! ## A054385.P2038940527353698587

`comp[A022843(n)-1]+1`
-/

namespace A054385.P2038940527353698587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A054385.P2038940527353698587

namespace A054385

/-- `comp[A022843(n)-1]+1` -/
def P2038940527353698587.Spec : Prop :=
  ∀ n, (P2038940527353698587.a n : ℤ) = A054385 (n + 1)

end A054385

/-! ## A054385.P1170700943857996874

`comp[A121384(n)-2]+1`
-/

namespace A054385.P1170700943857996874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A054385.P1170700943857996874

namespace A054385

/-- `comp[A121384(n)-2]+1` -/
def P1170700943857996874.Spec : Prop :=
  ∀ n, (P1170700943857996874.a n : ℤ) = A054385 (n + 1)

end A054385

/-! ## A054385.P18007793041850172627

`A292664(n+1)-(n+1)`
-/

namespace A054385.P18007793041850172627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292664 (n + 1) - (n + 1 : ℤ)

end

end A054385.P18007793041850172627

namespace A054385

/-- `A292664(n+1)-(n+1)` -/
def P18007793041850172627.Spec : Prop :=
  ∀ n, P18007793041850172627.a n = A054385 (n + 1)

end A054385

/-! ## A054385.P1635702998389810000

`∪[A279608(n+1), A060644(n)]`
-/

namespace A054385.P1635702998389810000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054385.P1635702998389810000

namespace A054385

/-- `∪[A279608(n+1), A060644(n)]` -/
def P1635702998389810000.Spec : Prop :=
  ∀ n, (P1635702998389810000.a n : ℤ) = A054385 (n + 1)

end A054385

/-! ## A054385.P13327735877817480647

`A022843(n+1)-A014246(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054385

/-- `A022843(n+1)-A014246(n+1)` -/
def P13327735877817480647.Spec : Prop :=
  ∀ n, P13327735877817480647.a n = A054385 (n + 1)

theorem P13327735877817480647.correct : P13327735877817480647.Spec := by
  intro n
  simp only [A054385, Nat.add_sub_cancel]

end A054385

/-! ## A054385.P7514064804491924106

`A022806(n+1)-A022843(n+1)`
-/

namespace A054385.P7514064804491924106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022806 (n + 1) - A022843 (n + 1)

end

end A054385.P7514064804491924106

namespace A054385

/-- `A022806(n+1)-A022843(n+1)` -/
def P7514064804491924106.Spec : Prop :=
  ∀ n, P7514064804491924106.a n = A054385 (n + 1)

end A054385

/-! ## A054385.P917258647068377287

`A330179(n+1)%A292666(n+1)`
-/

namespace A054385.P917258647068377287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330179 (n + 1)) (A292666 (n + 1))

end

end A054385.P917258647068377287

namespace A054385

/-- `A330179(n+1)%A292666(n+1)` -/
def P917258647068377287.Spec : Prop :=
  ∀ n, P917258647068377287.a n = A054385 (n + 1)

end A054385

/-! ## A054385.P9844891063316287262

`(A022806(n+1)-A014246(n+1))/2`
-/

namespace A054385.P9844891063316287262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022806 (n + 1) - A014246 (n + 1) : ℚ) / 2

end

end A054385.P9844891063316287262

namespace A054385

/-- `(A022806(n+1)-A014246(n+1))/2` -/
def P9844891063316287262.Spec : Prop :=
  ∀ n, P9844891063316287262.a n = (A054385 (n + 1) : ℚ)

end A054385

/-! ## A054385.P4660589091355217075

`A276853(n+1)-(A022852(n+1)+A014246(n+1))`
-/

namespace A054385.P4660589091355217075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (n + 1) - (A022852 (n + 1) + A014246 (n + 1))

end

end A054385.P4660589091355217075

namespace A054385

/-- `A276853(n+1)-(A022852(n+1)+A014246(n+1))` -/
def P4660589091355217075.Spec : Prop :=
  ∀ n, P4660589091355217075.a n = A054385 (n + 1)

end A054385

/-! ## A054385.P17880301365604263594

`A022806(n+1)+A022852(n+1)-A276853(n+1)`
-/

namespace A054385.P17880301365604263594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022806 (n + 1) + (A022852 (n + 1) - A276853 (n + 1))

end

end A054385.P17880301365604263594

namespace A054385

/-- `A022806(n+1)+A022852(n+1)-A276853(n+1)` -/
def P17880301365604263594.Spec : Prop :=
  ∀ n, P17880301365604263594.a n = A054385 (n + 1)

end A054385

/-! ## A054385.P15233670358609555518

`lt[n, A108599(n+1)]+1`
-/

namespace A054385.P15233670358609555518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054385.P15233670358609555518

namespace A054385

/-- `lt[n, A108599(n+1)]+1` -/
def P15233670358609555518.Spec : Prop :=
  ∀ n, (P15233670358609555518.a n : ℤ) = A054385 (n + 1)

end A054385

/-! ## A054385.P12703480109277225214

`A000720(A397618(n+1))`
-/

namespace A054385.P12703480109277225214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A397618 (n + 1)).toNat

end

end A054385.P12703480109277225214

namespace A054385

/-- `A000720(A397618(n+1))` -/
def P12703480109277225214.Spec : Prop :=
  ∀ n, P12703480109277225214.a n = A054385 (n + 1)

end A054385

/-! ## A054385.P4484408339686673652

`ceil(A184590(2*n+1)/2)`
-/

namespace A054385.P4484408339686673652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184590 (2 * n + 1) : ℚ) / 2⌉

end

end A054385.P4484408339686673652

namespace A054385

/-- `ceil(A184590(2*n+1)/2)` -/
def P4484408339686673652.Spec : Prop :=
  ∀ n, P4484408339686673652.a n = A054385 (n + 1)

end A054385

/-! ## A054385.P5040437456992237195

`A108599(A022843(n+1))`
-/

namespace A054385.P5040437456992237195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (A022843 (n + 1)).toNat

end

end A054385.P5040437456992237195

namespace A054385

/-- `A108599(A022843(n+1))` -/
def P5040437456992237195.Spec : Prop :=
  ∀ n, P5040437456992237195.a n = A054385 (n + 1)

end A054385

/-! ## A054385.P15268317969014384057

`A108599(record[A108599(n+1)])`
-/

namespace A054385.P15268317969014384057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054385.P15268317969014384057

namespace A054385

/-- `A108599(record[A108599(n+1)])` -/
def P15268317969014384057.Spec : Prop :=
  ∀ n, P15268317969014384057.a n = A054385 (n + 1)

end A054385

/-! ## A054385.P9994315429615110796

`A108599(A121384(n+1)-1)`
-/

namespace A054385.P9994315429615110796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (A121384 (n + 1) - 1).toNat

end

end A054385.P9994315429615110796

namespace A054385

/-- `A108599(A121384(n+1)-1)` -/
def P9994315429615110796.Spec : Prop :=
  ∀ n, P9994315429615110796.a n = A054385 (n + 1)

end A054385

/-! ## A054385.P15764753427167960058

`A004526(A292666(n+1))`
-/

namespace A054385.P15764753427167960058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A292666 (n + 1)).toNat

end

end A054385.P15764753427167960058

namespace A054385

/-- `A004526(A292666(n+1))` -/
def P15764753427167960058.Spec : Prop :=
  ∀ n, P15764753427167960058.a n = A054385 (n + 1)

end A054385

/-!
# A054386: Beatty sequence for Pi/(Pi-1); complement of A022844.

The programs for A054386, the canonical program `A054386.P9254431752861665040` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054386 has offset 1).

The definition of A054386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054386.P9254431752861665040

`floor((n+1)*π/(π-1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054386

/-- `floor((n+1)*π/(π-1))` -/
def P9254431752861665040.Spec : Prop :=
  ∀ n, P9254431752861665040.a n = A054386 (n + 1)

theorem P9254431752861665040.correct : P9254431752861665040.Spec := by
  intro n
  simp only [A054386, Nat.add_sub_cancel]

end A054386

/-! ## A054386.P7696139476310063228

`lt[cot(n+1), cot(1)]`
-/

namespace A054386.P7696139476310063228
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A054386.P7696139476310063228

namespace A054386

/-- `lt[cot(n+1), cot(1)]` -/
def P7696139476310063228.Spec : Prop :=
  ∀ n, (P7696139476310063228.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P4641752197939108767

`lt[cos(2*n+1), cos(1)]`
-/

namespace A054386.P4641752197939108767
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A054386.P4641752197939108767

namespace A054386

/-- `lt[cos(2*n+1), cos(1)]` -/
def P4641752197939108767.Spec : Prop :=
  ∀ n, (P4641752197939108767.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P1137802917727211050

`lt[sin(n), sin(n)/sin(n+1)]`
-/

namespace A054386.P1137802917727211050
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) / Real.sin (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A054386.P1137802917727211050

namespace A054386

/-- `lt[sin(n), sin(n)/sin(n+1)]` -/
def P1137802917727211050.Spec : Prop :=
  ∀ n, (P1137802917727211050.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P17619749725784878708

`and(comp[A022844(n)], -1)`
-/

namespace A054386.P17619749725784878708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A054386.P17619749725784878708

namespace A054386

/-- `and(comp[A022844(n)], -1)` -/
def P17619749725784878708.Spec : Prop :=
  ∀ n, P17619749725784878708.a n = A054386 (n + 1)

end A054386

/-! ## A054386.P9878711072609771981

`∑[char[A184591(n+1)+1]+1]`
-/

namespace A054386.P9878711072609771981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184591 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054386.P9878711072609771981

namespace A054386

/-- `∑[char[A184591(n+1)+1]+1]` -/
def P9878711072609771981.Spec : Prop :=
  ∀ n, (P9878711072609771981.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P14083394998809322217

`comp[A022844(n)]%A235361(n)`
-/

namespace A054386.P14083394998809322217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A235361 n)

end

end A054386.P14083394998809322217

namespace A054386

/-- `comp[A022844(n)]%A235361(n)` -/
def P14083394998809322217.Spec : Prop :=
  ∀ n, P14083394998809322217.a n = A054386 (n + 1)

end A054386

/-! ## A054386.P9829635828508135879

`∪[A026316(n+1), A108589(n+1)]`
-/

namespace A054386.P9829635828508135879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054386.P9829635828508135879

namespace A054386

/-- `∪[A026316(n+1), A108589(n+1)]` -/
def P9829635828508135879.Spec : Prop :=
  ∀ n, (P9829635828508135879.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P2388969835801732720

`∪[A062389(n+1), A108589(n+1)]`
-/

namespace A054386.P2388969835801732720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054386.P2388969835801732720

namespace A054386

/-- `∪[A062389(n+1), A108589(n+1)]` -/
def P2388969835801732720.Spec : Prop :=
  ∀ n, (P2388969835801732720.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P869689438492165606

`∪[A108589(n+1), A327422(n+1)]`
-/

namespace A054386.P869689438492165606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054386.P869689438492165606

namespace A054386

/-- `∪[A108589(n+1), A327422(n+1)]` -/
def P869689438492165606.Spec : Prop :=
  ∀ n, (P869689438492165606.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P13660372971516978051

`∪[A246442(n+1), A327422(n+1)]`
-/

namespace A054386.P13660372971516978051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054386.P13660372971516978051

namespace A054386

/-- `∪[A246442(n+1), A327422(n+1)]` -/
def P13660372971516978051.Spec : Prop :=
  ∀ n, (P13660372971516978051.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P8884108760090491483

`A296357(a(n-1)+2)+n` with `a(0)=1`
-/

namespace A054386.P8884108760090491483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A296357 (a (n - 1) + 2).toNat + (n : ℤ)

end

end A054386.P8884108760090491483

namespace A054386

/-- `A296357(a(n-1)+2)+n` -/
def P8884108760090491483.Spec : Prop :=
  ∀ n, P8884108760090491483.a n = A054386 (n + 1)

end A054386

/-! ## A054386.P2778698094259062990

`lt[0, ∑[sin(2*n)]]`
-/

namespace A054386.P2778698094259062990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A054386.P2778698094259062990

namespace A054386

/-- `lt[0, ∑[sin(2*n)]]` -/
def P2778698094259062990.Spec : Prop :=
  ∀ n, (P2778698094259062990.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P1503241650663814939

`lt[1/∑[cos(n)], 1]`
-/

namespace A054386.P1503241650663814939
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A054386.P1503241650663814939

namespace A054386

/-- `lt[1/∑[cos(n)], 1]` -/
def P1503241650663814939.Spec : Prop :=
  ∀ n, (P1503241650663814939.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P6133802312757935383

`lt[1, ∏[exp(sin(2*n))]]`
-/

namespace A054386.P6133802312757935383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.sin (2 * n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A054386.P6133802312757935383

namespace A054386

/-- `lt[1, ∏[exp(sin(2*n))]]` -/
def P6133802312757935383.Spec : Prop :=
  ∀ n, (P6133802312757935383.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P1774043481204254026

`lt[Δ[sin(2*n)], sin(2)]`
-/

namespace A054386.P1774043481204254026
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A054386.P1774043481204254026

namespace A054386

/-- `lt[Δ[sin(2*n)], sin(2)]` -/
def P1774043481204254026.Spec : Prop :=
  ∀ n, (P1774043481204254026.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P5931149013411410484

`lt[∑[cos(n)], ∑[cos(n)]²]`
-/

namespace A054386.P5931149013411410484
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A054386.P5931149013411410484

namespace A054386

/-- `lt[∑[cos(n)], ∑[cos(n)]²]` -/
def P5931149013411410484.Spec : Prop :=
  ∀ n, (P5931149013411410484.a n : ℤ) = A054386 (n + 1)

end A054386

/-! ## A054386.P1306129142828567487

`A108591(A022844(n+1))`
-/

namespace A054386.P1306129142828567487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (A022844 (n + 1)).toNat

end

end A054386.P1306129142828567487

namespace A054386

/-- `A108591(A022844(n+1))` -/
def P1306129142828567487.Spec : Prop :=
  ∀ n, P1306129142828567487.a n = A054386 (n + 1)

end A054386

/-! ## A054386.P17085729195065834196

`A108591(record[A108591(n+1)])`
-/

namespace A054386.P17085729195065834196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054386.P17085729195065834196

namespace A054386

/-- `A108591(record[A108591(n+1)])` -/
def P17085729195065834196.Spec : Prop :=
  ∀ n, P17085729195065834196.a n = A054386 (n + 1)

end A054386

/-!
# A054388: Denominators of coefficients of 1/2^(2n+1) in Newton's series for Pi.

The programs for A054388, the canonical program `A054388.P5591882632319717874` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054388 has offset 0).

The definition of A054388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054388.P5591882632319717874

`A002595(n)/gcd(A002595(n), A008574(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054388

/-- `A002595(n)/gcd(A002595(n), A008574(n))` -/
def P5591882632319717874.Spec : Prop :=
  ∀ n, P5591882632319717874.a n = (A054388 n : ℚ)

end A054388

/-! ## A054388.P14123848991945326234

`A143582(n+1)/gcd(2*n, A143582(n+1))`
-/

namespace A054388.P14123848991945326234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143582 (n + 1) : ℚ) / (Int.gcd (2 * n : ℤ) (A143582 (n + 1)) : ℚ)

end

end A054388.P14123848991945326234

namespace A054388

/-- `A143582(n+1)/gcd(2*n, A143582(n+1))` -/
def P14123848991945326234.Spec : Prop :=
  ∀ n, P14123848991945326234.a n = (A054388 n : ℚ)

end A054388

/-! ## A054388.P3056214991822331973

`lcm(A004277(n), A143582(n+1))/A004277(n)`
-/

namespace A054388.P3056214991822331973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A004277 n) (A143582 (n + 1)) : ℚ) / (A004277 n : ℚ)

end

end A054388.P3056214991822331973

namespace A054388

/-- `lcm(A004277(n), A143582(n+1))/A004277(n)` -/
def P3056214991822331973.Spec : Prop :=
  ∀ n, P3056214991822331973.a n = (A054388 n : ℚ)

end A054388

/-!
# A054389: Susceptibility series H_5 for 2-dimensional Ising model (divided by 2).

The programs for A054389, there is no canonical definition to state claims against.
-/

/-! ## A054389.P7729617788579230503

`A055921(eq[5, A002262(n)])/2`
-/

namespace A054389.P7729617788579230503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A054389.P7729617788579230503

/-! ## A054389.P6760316740968359828

`A055921(A000217(n+6)-6)/2`
-/

namespace A054389.P6760316740968359828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055921 (A000217 (n + 6) - 6).toNat : ℚ) / 2

end

end A054389.P6760316740968359828

/-! ## A054389.P5688208075089553409

`2^A008683(A181758(n+1))*A055921(A000217(n+6)-6)`
-/

namespace A054389.P5688208075089553409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) * (A055921 (A000217 (n + 6) - 6).toNat : ℚ)

end

end A054389.P5688208075089553409

/-!
# A054390: Number of ways of writing n as a sum of powers of 3, each power being used at most three times.

The programs for A054390, there is no canonical definition to state claims against.
-/

/-! ## A054390.P8919833902295401422

`A273513(A157671(n+1))`
-/

namespace A054390.P8919833902295401422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (A157671 (n + 1)).toNat

end

end A054390.P8919833902295401422

/-! ## A054390.P17856780943701772423

`A273513(lt[A333773(n), 0])`
-/

namespace A054390.P17856780943701772423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A054390.P17856780943701772423

/-! ## A054390.P16373079791086069878

`A273513(lt[A167877(n), A353158(n)])`
-/

namespace A054390.P16373079791086069878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A054390.P16373079791086069878

/-! ## A054390.P16019946550823635198

`A303827(A023709(n+1))`
-/

namespace A054390.P16019946550823635198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (A023709 (n + 1)).toNat

end

end A054390.P16019946550823635198

/-! ## A054390.P6716099604067968955

`A303827(eq[0, A292371(n)])`
-/

namespace A054390.P6716099604067968955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054390.P6716099604067968955

/-! ## A054390.P13455525359595092983

`A277872(A023717(n))`
-/

namespace A054390.P13455525359595092983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (A023717 n).toNat

end

end A054390.P13455525359595092983

/-! ## A054390.P9185276946919436885

`A277872(eq[0, A292373(n)])`
-/

namespace A054390.P9185276946919436885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054390.P9185276946919436885

/-! ## A054390.P14044394939249386650

`A277872(A023713(n+1))`
-/

namespace A054390.P14044394939249386650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (A023713 (n + 1)).toNat

end

end A054390.P14044394939249386650

/-! ## A054390.P697052863292922568

`A277872(eq[0, A160382(n)])`
-/

namespace A054390.P697052863292922568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054390.P697052863292922568

/-! ## A054390.P12777020742237640632

`A277872(eq[0, A292372(n)])`
-/

namespace A054390.P12777020742237640632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054390.P12777020742237640632

/-! ## A054390.P9057773187057240851

`A277872(A006288(n))`
-/

namespace A054390.P9057773187057240851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (A006288 n).toNat

end

end A054390.P9057773187057240851

/-! ## A054390.P9189732235429746343

`A303828(record[2*A309991(n)])`
-/

namespace A054390.P9189732235429746343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054390.P9189732235429746343

/-! ## A054390.P15543057848265514596

`A303828(record[A309991(n)+n])`
-/

namespace A054390.P15543057848265514596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054390.P15543057848265514596

/-! ## A054390.P2445054495715859473

`A303828(2*eq[1, A303828(n)])`
-/

namespace A054390.P2445054495715859473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054390.P2445054495715859473

/-! ## A054390.P9739247561939922065

`A303824(A037454(n))`
-/

namespace A054390.P9739247561939922065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 (A037454 n).toNat

end

end A054390.P9739247561939922065

/-! ## A054390.P7826204211900871335

`A303825(A037455(n))`
-/

namespace A054390.P7826204211900871335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (A037455 n).toNat

end

end A054390.P7826204211900871335

/-! ## A054390.P778900151002270157

`A034968(A235773(n))`
-/

namespace A054390.P778900151002270157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A235773 n).toNat

end

end A054390.P778900151002270157

/-!
# A054391: Number of permutations with certain forbidden subsequences.

The programs for A054391, there is no canonical definition to state claims against.
-/

/-! ## A054391.P14301813685034372815

`A000110(n)-A326243(n)`
-/

namespace A054391.P14301813685034372815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A326243 n

end

end A054391.P14301813685034372815

/-! ## A054391.P4774310504410037499

`A186020(∑[n])-A326243(n)`
-/

namespace A054391.P4774310504410037499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) - A326243 n

end

end A054391.P4774310504410037499

/-! ## A054391.P14752303633462437115

`A346520(∑[n])-A326243(n)`
-/

namespace A054391.P14752303633462437115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (∑ j ∈ Finset.range (n + 1), f1 j) - A326243 n

end

end A054391.P14752303633462437115

/-! ## A054391.P8054030986766595330

`A011971(A000217(n))-A326243(n)`
-/

namespace A054391.P8054030986766595330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000217 n).toNat - A326243 n

end

end A054391.P8054030986766595330

/-! ## A054391.P11199348034683571281

`A326254(n)`
-/

namespace A054391.P11199348034683571281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326254 n

end

end A054391.P11199348034683571281

/-!
# A054392: Number of permutations with certain forbidden subsequences.

The programs for A054392, there is no canonical definition to state claims against.
-/

/-! ## A054392.P3097341645831664327

`A028310(A273722(n+2)+A082582(n+1))`
-/

namespace A054392.P3097341645831664327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A273722 (n + 2) + A082582 (n + 1)).toNat

end

end A054392.P3097341645831664327

/-! ## A054392.P11884068345840691718

`A008615(A052991(n)+2^n)`
-/

namespace A054392.P11884068345840691718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A052991 n + (2 ^ n : ℤ)).toNat

end

end A054392.P11884068345840691718

/-! ## A054392.P18135383389272028138

`A008620(A011782(n)+A006190(n))`
-/

namespace A054392.P18135383389272028138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A011782 n + A006190 n).toNat

end

end A054392.P18135383389272028138

/-! ## A054392.P17986979987317281846

`A008611(A131577(n)+A006190(n))`
-/

namespace A054392.P17986979987317281846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A131577 n + A006190 n).toNat

end

end A054392.P17986979987317281846

/-! ## A054392.P911954206672028113

`A008620(A131577(n)+A006190(n))`
-/

namespace A054392.P911954206672028113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A131577 n + A006190 n).toNat

end

end A054392.P911954206672028113

/-!
# A054393: Number of permutations with certain forbidden subsequences.

The programs for A054393, there is no canonical definition to state claims against.
-/

/-! ## A054393.P15427365819823606777

`A000108(n)-A098841(2*n+1)`
-/

namespace A054393.P15427365819823606777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A098841 (2 * n + 1)

end

end A054393.P15427365819823606777

/-! ## A054393.P15137739621790419811

`A025466(A000110(n))+A024175(n)`
-/

namespace A054393.P15137739621790419811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A000110 n).toNat + A024175 n

end

end A054393.P15137739621790419811

/-! ## A054393.P3216974932553515932

`A107846(A000244(n))+A024175(n)`
-/

namespace A054393.P3216974932553515932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A000244 n).toNat + A024175 n

end

end A054393.P3216974932553515932

/-! ## A054393.P11419779109320671135

`A024175(n)+A011730(A114551(n))`
-/

namespace A054393.P11419779109320671135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 n + A011730 (A114551 n).toNat

end

end A054393.P11419779109320671135

/-! ## A054393.P680359791305273445

`A024175(n)+A011730(A149194(n))`
-/

namespace A054393.P680359791305273445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 n + A011730 (A149194 n).toNat

end

end A054393.P680359791305273445

/-!
# A054394: Number of permutations with certain forbidden subsequences.

The programs for A054394, there is no canonical definition to state claims against.
-/

/-! ## A054394.P931738853790326385

`A080938(n)+A035059(A306752(n))`
-/

namespace A054394.P931738853790326385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080938 n + A035059 (A306752 n).toNat

end

end A054394.P931738853790326385

/-! ## A054394.P2439576997142361133

`A222249(A080938(n))`
-/

namespace A054394.P2439576997142361133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A080938 n).toNat

end

end A054394.P2439576997142361133

/-! ## A054394.P5898464499292297931

`A000108(n)-A185294(2*(n+1))`
-/

namespace A054394.P5898464499292297931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A185294 (2 * (n + 1))

end

end A054394.P5898464499292297931

/-! ## A054394.P8340859801927449067

`A080938(n)+A055641(A054392(n))`
-/

namespace A054394.P8340859801927449067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080938 n + A055641 (A054392 n).toNat

end

end A054394.P8340859801927449067

/-! ## A054394.P6191924331631836946

`A249856(A000032(n))+A080938(n)`
-/

namespace A054394.P6191924331631836946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249856 (A000032 n).toNat + A080938 n

end

end A054394.P6191924331631836946

/-!
# A054395: Numbers m such that there are precisely 2 groups of order m.

The programs for A054395, there is no canonical definition to state claims against.
-/

/-! ## A054395.P12484812512087073299

`∪[A350322(n+1), A350586(n+1)]`
-/

namespace A054395.P12484812512087073299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054395.P12484812512087073299

/-! ## A054395.P4728652694140270447

`eq[2, A000001(n)]`
-/

namespace A054395.P4728652694140270447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054395.P4728652694140270447

/-! ## A054395.P12094001558725487405

`eq[4, A297420(n)]`
-/

namespace A054395.P12094001558725487405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054395.P12094001558725487405

/-! ## A054395.P5688590585523767234

`lt[A250221(C(4, A000001(n))+1), 0]`
-/

namespace A054395.P5688590585523767234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250221 (Nat.choose 4 (A000001 n).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A054395.P5688590585523767234

/-! ## A054395.P16136010055509709916

`eq[2, A060689(n+1)+A000688(n+1)]+1`
-/

namespace A054395.P16136010055509709916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + A000688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054395.P16136010055509709916

/-! ## A054395.P8121928640679415987

`eq[2, A066389(n+1)]+1`
-/

namespace A054395.P8121928640679415987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054395.P8121928640679415987

/-! ## A054395.P12671928134157326460

`eq[2, A066389(A028310(n))]`
-/

namespace A054395.P12671928134157326460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054395.P12671928134157326460

/-! ## A054395.P178890210133561848

`A020725(eq[2, A066389(n+1)])`
-/

namespace A054395.P178890210133561848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054395.P178890210133561848

/-! ## A054395.P17678240342747912468

`A061767(eq[2, A066389(n+1)])`
-/

namespace A054395.P17678240342747912468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054395.P17678240342747912468

/-! ## A054395.P18352062014326516419

`eq[2, A066389(A000007(n)+n)]`
-/

namespace A054395.P18352062014326516419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054395.P18352062014326516419

/-! ## A054395.P9947501426662034230

`eq[A008966(n+1), A083280(n+1)]+1`
-/

namespace A054395.P9947501426662034230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054395.P9947501426662034230

/-! ## A054395.P11525721722338585206

`A113484(eq[2, A066389(n+1)])`
-/

namespace A054395.P11525721722338585206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054395.P11525721722338585206

/-! ## A054395.P1847721414583407625

`eq[2, A066389(A233583(n+1))]`
-/

namespace A054395.P1847721414583407625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054395.P1847721414583407625

/-! ## A054395.P5189458786927218065

`eq[2, A077191(n+1)]+1`
-/

namespace A054395.P5189458786927218065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054395.P5189458786927218065

/-! ## A054395.P16029035420878529504

`eq[2, A201733(n+1)]+1`
-/

namespace A054395.P16029035420878529504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054395.P16029035420878529504

/-! ## A054395.P1351018461346524630

`A020725(eq[2, A201733(n+1)])`
-/

namespace A054395.P1351018461346524630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054395.P1351018461346524630

/-! ## A054395.P11404106332701077563

`A061767(eq[2, A201733(n+1)])`
-/

namespace A054395.P11404106332701077563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054395.P11404106332701077563

/-! ## A054395.P11153778313345180681

`A113484(eq[2, A201733(n+1)])`
-/

namespace A054395.P11153778313345180681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054395.P11153778313345180681

/-! ## A054395.P7881519011456107674

`eq[A010693(2*n), A201733(A028310(n))]`
-/

namespace A054395.P7881519011456107674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054395.P7881519011456107674

/-!
# A054396: Numbers m such that there are precisely 4 groups of order m.

The programs for A054396, there is no canonical definition to state claims against.
-/

/-! ## A054396.P3241828293378451511

`eq[4, A000001(n)]`
-/

namespace A054396.P3241828293378451511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054396.P3241828293378451511

/-! ## A054396.P17399822832314966367

`eq[16, A297420(n)]`
-/

namespace A054396.P17399822832314966367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054396.P17399822832314966367

/-! ## A054396.P15353617396663913194

`eq[4, A201733(n+1)]+1`
-/

namespace A054396.P15353617396663913194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054396.P15353617396663913194

/-! ## A054396.P11805379922795393609

`eq[4, A201733(A028310(n))]`
-/

namespace A054396.P11805379922795393609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054396.P11805379922795393609

/-! ## A054396.P6364350144950268306

`A020725(eq[4, A201733(n+1)])`
-/

namespace A054396.P6364350144950268306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054396.P6364350144950268306

/-! ## A054396.P8363226363887990331

`A113484(eq[4, A201733(n+1)])`
-/

namespace A054396.P8363226363887990331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054396.P8363226363887990331

/-! ## A054396.P9417966653323368599

`A153152(eq[4, A201733(n+1)])`
-/

namespace A054396.P9417966653323368599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054396.P9417966653323368599

/-! ## A054396.P10145496190527750861

`eq[4, A201733(A233583(n+1))]`
-/

namespace A054396.P10145496190527750861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054396.P10145496190527750861

/-!
# A054397: Numbers m such that there are precisely 5 groups of order m.

The programs for A054397, there is no canonical definition to state claims against.
-/

/-! ## A054397.P15033989722528252191

`eq[5, A000001(n)]`
-/

namespace A054397.P15033989722528252191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054397.P15033989722528252191

/-! ## A054397.P1605830252138576475

`eq[25, A297420(n)]`
-/

namespace A054397.P1605830252138576475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054397.P1605830252138576475

/-! ## A054397.P10945132355540396738

`eq[5, A201733(round(acot(n)+n))]`
-/

namespace A054397.P10945132355540396738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054397.P10945132355540396738

/-! ## A054397.P6687673261437432945

`eq[5, A201733(A028310(n))]`
-/

namespace A054397.P6687673261437432945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054397.P6687673261437432945

/-! ## A054397.P9240453613015714288

`A020725(eq[5, A201733(n+1)])`
-/

namespace A054397.P9240453613015714288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054397.P9240453613015714288

/-!
# A054398: Define a sequence of 2^n X 2^n squares as follows: S_0 = [1], S_1 = [1,2; 3,4]; S_2 = [1,2,5,6; 3,4,7,8; 9,10,13,14; 11,12,15,16], etc.; sequence gives triangular array whose n-th row gives differences between successive columns of n-th square.

The programs for A054398, the canonical program `A054398.P13802336251738312636` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054398 has offset 1).

The definition of A054398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054398.P12037079427894500319

`A276391(comp[A034008(n)])`
-/

namespace A054398.P12037079427894500319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A054398.P12037079427894500319

namespace A054398

/-- `A276391(comp[A034008(n)])` -/
def P12037079427894500319.Spec : Prop :=
  ∀ n, P12037079427894500319.a n = A054398 (n + 1)

end A054398

/-! ## A054398.P13802336251738312636

`A276391(A057716(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A054398

/-- `A276391(A057716(n+1))` -/
def P13802336251738312636.Spec : Prop :=
  ∀ n, P13802336251738312636.a n = A054398 (n + 1)

theorem P13802336251738312636.correct : P13802336251738312636.Spec := by
  intro n
  simp only [A054398, Nat.add_sub_cancel]

end A054398

/-! ## A054398.P4080012470954004087

`A276391(A115218(n)+1)`
-/

namespace A054398.P4080012470954004087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A115218 n + 1).toNat

end

end A054398.P4080012470954004087

namespace A054398

/-- `A276391(A115218(n)+1)` -/
def P4080012470954004087.Spec : Prop :=
  ∀ n, P4080012470954004087.a n = A054398 (n + 1)

end A054398

/-! ## A054398.P10747305764854269108

`A276391(comp[A000225(n)]+1)`
-/

namespace A054398.P10747305764854269108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A054398.P10747305764854269108

namespace A054398

/-- `A276391(comp[A000225(n)]+1)` -/
def P10747305764854269108.Spec : Prop :=
  ∀ n, P10747305764854269108.a n = A054398 (n + 1)

end A054398

/-! ## A054398.P9367908453153593315

`A115716(A062289(n+1)-1)`
-/

namespace A054398.P9367908453153593315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 (A062289 (n + 1) - 1).toNat

end

end A054398.P9367908453153593315

namespace A054398

/-- `A115716(A062289(n+1)-1)` -/
def P9367908453153593315.Spec : Prop :=
  ∀ n, P9367908453153593315.a n = A054398 (n + 1)

end A054398

/-! ## A054398.P17873241156675308682

`A115716(eq[0, A135416(n+1)])`
-/

namespace A054398.P17873241156675308682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054398.P17873241156675308682

namespace A054398

/-- `A115716(eq[0, A135416(n+1)])` -/
def P17873241156675308682.Spec : Prop :=
  ∀ n, P17873241156675308682.a n = A054398 (n + 1)

end A054398

/-! ## A054398.P17535562912914633750

`A115716(lt[A135416(n+1), 1])`
-/

namespace A054398.P17535562912914633750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A054398.P17535562912914633750

namespace A054398

/-- `A115716(lt[A135416(n+1), 1])` -/
def P17535562912914633750.Spec : Prop :=
  ∀ n, P17535562912914633750.a n = A054398 (n + 1)

end A054398

/-! ## A054398.P2326927188807873210

`A276391(A138591(n+2))`
-/

namespace A054398.P2326927188807873210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A138591 (n + 2)).toNat

end

end A054398.P2326927188807873210

namespace A054398

/-- `A276391(A138591(n+2))` -/
def P2326927188807873210.Spec : Prop :=
  ∀ n, P2326927188807873210.a n = A054398 (n + 1)

end A054398

/-! ## A054398.P98931235321611587

`A276391(eq[A000038(n), A048298(n)])`
-/

namespace A054398.P98931235321611587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A054398.P98931235321611587

namespace A054398

/-- `A276391(eq[A000038(n), A048298(n)])` -/
def P98931235321611587.Spec : Prop :=
  ∀ n, P98931235321611587.a n = A054398 (n + 1)

end A054398

/-! ## A054398.P17183640495612700752

`A276391(eq[A000007(n), A048298(n)])`
-/

namespace A054398.P17183640495612700752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A054398.P17183640495612700752

namespace A054398

/-- `A276391(eq[A000007(n), A048298(n)])` -/
def P17183640495612700752.Spec : Prop :=
  ∀ n, P17183640495612700752.a n = A054398 (n + 1)

end A054398

/-! ## A054398.P8222391432076659581

`A276391(eq[A048298(2*n+1), A048298(n)])`
-/

namespace A054398.P8222391432076659581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A054398.P8222391432076659581

namespace A054398

/-- `A276391(eq[A048298(2*n+1), A048298(n)])` -/
def P8222391432076659581.Spec : Prop :=
  ∀ n, P8222391432076659581.a n = A054398 (n + 1)

end A054398

