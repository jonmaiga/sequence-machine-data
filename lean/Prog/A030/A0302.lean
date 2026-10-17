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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A030200: Expansion of q^(-1/2) * eta(q) * eta(q^11) in powers of q.

The programs for A030200, there is no canonical definition to state claims against.
-/

/-! ## A030200.P1778193682937629948

`A033999(n)*A208664(n)`
-/

namespace A030200.P1778193682937629948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A208664 n

end

end A030200.P1778193682937629948

/-! ## A030200.P13553845323999377706

`(1-Δ[A109613(n)])*A208664(n)`
-/

namespace A030200.P13553845323999377706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) * A208664 n

end

end A030200.P13553845323999377706

/-! ## A030200.P8050853092950741898

`A208664(Δ[or(1, n)])*A208664(n)`
-/

namespace A030200.P8050853092950741898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208664 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A208664 n

end

end A030200.P8050853092950741898

/-! ## A030200.P16229270317953548909

`A208664(Δ[A109613(n)])*A208664(n)`
-/

namespace A030200.P16229270317953548909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208664 (f1 (n + 1) - f1 n).toNat * A208664 n

end

end A030200.P16229270317953548909

/-! ## A030200.P50066370952876184

`A208664(n)/A033999(n+2)`
-/

namespace A030200.P50066370952876184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208664 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A030200.P50066370952876184

/-! ## A030200.P9590859814866092217

`A056594(2*n)*A208664(n)`
-/

namespace A030200.P9590859814866092217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A208664 n

end

end A030200.P9590859814866092217

/-!
# A030201: Expansion of eta(q^3)*eta(q^21).

The programs for A030201, there is no canonical definition to state claims against.
-/

/-! ## A030201.P13480655671337126603

`A002655(A219529(n))*A010872(n)`
-/

namespace A030201.P13480655671337126603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002655 (A219529 n).toNat * A010872 n

end

end A030201.P13480655671337126603

/-! ## A030201.P3113227091771333415

`A002655(A219529(n))*A011655(n)`
-/

namespace A030201.P3113227091771333415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002655 (A219529 n).toNat * A011655 n

end

end A030201.P3113227091771333415

/-! ## A030201.P693361438856495428

`A002655(A219529(n))*A102283(n)`
-/

namespace A030201.P693361438856495428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002655 (A219529 n).toNat * A102283 n

end

end A030201.P693361438856495428

/-! ## A030201.P1300463674884270310

`char[A016777(n)]*A002655(A219529(n))`
-/

namespace A030201.P1300463674884270310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002655 (A219529 n).toNat

end

end A030201.P1300463674884270310

/-! ## A030201.P2130832101291397616

`(A024493(n)-A078008(n))²*A002655(A219529(n))`
-/

namespace A030201.P2130832101291397616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024493 n - A078008 n) ^ 2 * A002655 (A219529 n).toNat

end

end A030201.P2130832101291397616

/-!
# A030202: Expansion of q^(-1/4) * eta(q) * eta(q^5) in powers of q.

The programs for A030202, there is no canonical definition to state claims against.
-/

/-! ## A030202.P7681878022220620329

`(-1)^n*A159818(n)`
-/

namespace A030202.P7681878022220620329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A159818 n

end

end A030202.P7681878022220620329

/-! ## A030202.P11973171504308997195

`A159818(n)/A033999(n)`
-/

namespace A030202.P11973171504308997195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159818 n : ℚ) / (A033999 n : ℚ)

end

end A030202.P11973171504308997195

/-! ## A030202.P2787701280167811718

`-A033999(n+1)*A159818(n)`
-/

namespace A030202.P2787701280167811718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A159818 n)

end

end A030202.P2787701280167811718

/-! ## A030202.P16668974610311799286

`A159818(n)/A009531(2*n+1)`
-/

namespace A030202.P16668974610311799286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159818 n : ℚ) / (A009531 (2 * n + 1) : ℚ)

end

end A030202.P16668974610311799286

/-! ## A030202.P17368858943812313884

`A159818(n)/A132367(3*n)`
-/

namespace A030202.P17368858943812313884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159818 n : ℚ) / (A132367 (3 * n) : ℚ)

end

end A030202.P17368858943812313884

/-!
# A030203: Expansion of q^(-1/6) * eta(q) * eta(q^3) in powers of q.

The programs for A030203, there is no canonical definition to state claims against.
-/

/-! ## A030203.P2488523193088001193

`(-1)^n*A208978(n)`
-/

namespace A030203.P2488523193088001193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A208978 n

end

end A030203.P2488523193088001193

/-! ## A030203.P8757163500522014276

`A208978(n)/A033999(n)`
-/

namespace A030203.P8757163500522014276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208978 n : ℚ) / (A033999 n : ℚ)

end

end A030203.P8757163500522014276

/-! ## A030203.P16241094503097139973

`A208978(n)/A009001(2*n)`
-/

namespace A030203.P16241094503097139973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208978 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A030203.P16241094503097139973

/-! ## A030203.P14978106136487082078

`A208978(n)/A101195(Δ[A008619(n)])`
-/

namespace A030203.P14978106136487082078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208978 n : ℚ) / (A101195 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A030203.P14978106136487082078

/-! ## A030203.P12005324506257281597

`A208978(n)/A009531(2*n+1)`
-/

namespace A030203.P12005324506257281597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208978 n : ℚ) / (A009531 (2 * n + 1) : ℚ)

end

end A030203.P12005324506257281597

/-! ## A030203.P1966185846068697002

`A208978(n)/A056594(2*n)`
-/

namespace A030203.P1966185846068697002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208978 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A030203.P1966185846068697002

/-! ## A030203.P3683232949396943758

`A208978(n)/A153860(A000124(n+2))`
-/

namespace A030203.P3683232949396943758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208978 n : ℚ) / (A153860 (A000124 (n + 2)).toNat : ℚ)

end

end A030203.P3683232949396943758

/-!
# A030204: Expansion of q^(-1/8) * eta(q) * eta(q^2) in powers of q.

The programs for A030204, there is no canonical definition to state claims against.
-/

/-! ## A030204.P13121317396417351282

`(-1)^n*A138514(n)`
-/

namespace A030204.P13121317396417351282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138514 n

end

end A030204.P13121317396417351282

/-! ## A030204.P18298238605351488130

`A057077(n)*A083650(n)`
-/

namespace A030204.P18298238605351488130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A083650 n

end

end A030204.P18298238605351488130

/-! ## A030204.P9196207787910624066

`A138514(n)*A319993(A020639(n+1))`
-/

namespace A030204.P9196207787910624066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138514 n * A319993 (A020639 (n + 1)).toNat

end

end A030204.P9196207787910624066

/-! ## A030204.P14826079304583343016

`A138514(n)/A033999(n+2)`
-/

namespace A030204.P14826079304583343016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138514 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A030204.P14826079304583343016

/-! ## A030204.P4311998011513131524

`A083650(n)*A143431(2*n)`
-/

namespace A030204.P4311998011513131524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083650 n * A143431 (2 * n)

end

end A030204.P4311998011513131524

/-! ## A030204.P16403879663324698537

`A138514(n)/A087960(2*n)`
-/

namespace A030204.P16403879663324698537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138514 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A030204.P16403879663324698537

/-!
# A030205: Expansion of q^(-1/2) * eta(q)^2 * eta(q^5)^2 in power of q.

The programs for A030205, there is no canonical definition to state claims against.
-/

/-! ## A030205.P17348995824643609713

`(-1)^n*A159817(n)`
-/

namespace A030205.P17348995824643609713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A159817 n

end

end A030205.P17348995824643609713

/-! ## A030205.P11011011543613351861

`A276491(2*n+1)`
-/

namespace A030205.P11011011543613351861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (2 * n + 1)

end

end A030205.P11011011543613351861

/-! ## A030205.P8286377716058592330

`A159817(n)/A033999(n)`
-/

namespace A030205.P8286377716058592330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159817 n : ℚ) / (A033999 n : ℚ)

end

end A030205.P8286377716058592330

/-! ## A030205.P9765085702928922773

`or(A000007(n), A276491(A005408(n)))`
-/

namespace A030205.P9765085702928922773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A276491 (A005408 n).toNat)

end

end A030205.P9765085702928922773

/-! ## A030205.P8204944744438936396

`A276491(A005408(n))+A000007(n+1)`
-/

namespace A030205.P8204944744438936396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (A005408 n).toNat + A000007 (n + 1)

end

end A030205.P8204944744438936396

/-!
# A030206: Expansion of q^(-1/3) * eta(q)^2 * eta(q^3)^2 in powers of q.

The programs for A030206, there is no canonical definition to state claims against.
-/

/-! ## A030206.P16754099560804942538

`-A282610(3*n+1)/3`
-/

namespace A030206.P16754099560804942538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A282610 (3 * n + 1) : ℚ) / 3)

end

end A030206.P16754099560804942538

/-!
# A030208: Expansion of q^(-1/2) * (eta(q) * eta(q^3))^3 in powers of q.

The programs for A030208, there is no canonical definition to state claims against.
-/

/-! ## A030208.P7144204645107058765

`(-1)^n*A209939(n)`
-/

namespace A030208.P7144204645107058765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A209939 n

end

end A030208.P7144204645107058765

/-! ## A030208.P17501248690801706536

`A209939(n)/A033999(n)`
-/

namespace A030208.P17501248690801706536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209939 n : ℚ) / (A033999 n : ℚ)

end

end A030208.P17501248690801706536

/-! ## A030208.P4965556765381447929

`A152244(n)/A131713(n)`
-/

namespace A030208.P4965556765381447929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152244 n : ℚ) / (A131713 n : ℚ)

end

end A030208.P4965556765381447929

/-! ## A030208.P234119993422190974

`A152244(n)/A057079(4*n)`
-/

namespace A030208.P234119993422190974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152244 n : ℚ) / (A057079 (4 * n) : ℚ)

end

end A030208.P234119993422190974

/-! ## A030208.P10677666923117525684

`A152244(n)/(2-A057079(n)²)`
-/

namespace A030208.P10677666923117525684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152244 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A030208.P10677666923117525684

/-! ## A030208.P12604774669164617713

`A152244(n)/(2-A132954(n)²)`
-/

namespace A030208.P12604774669164617713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152244 n : ℚ) / (2 - A132954 n ^ 2 : ℚ)

end

end A030208.P12604774669164617713

/-! ## A030208.P3072103870041376663

`A152244(4*n+1-n)/6`
-/

namespace A030208.P3072103870041376663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152244 (4 * n + 1 - n) : ℚ) / 6

end

end A030208.P3072103870041376663

/-!
# A030209: Expansion of (eta(q) * eta(q^2) * eta(q^3) * eta(q^6))^2 in powers of q.

The programs for A030209, there is no canonical definition to state claims against.
-/

/-! ## A030209.P1772311920287592033

`A212768(12*(n+1))/6`
-/

namespace A030209.P1772311920287592033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212768 (12 * (n + 1)) : ℚ) / 6

end

end A030209.P1772311920287592033

/-!
# A030211: Expansion of q^(-1/2) * (eta(q) * eta(q^2))^4 in powers of q.

The programs for A030211, there is no canonical definition to state claims against.
-/

/-! ## A030211.P13904457736282868287

`(-1)^n*A134461(n)`
-/

namespace A030211.P13904457736282868287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A134461 n

end

end A030211.P13904457736282868287

/-! ## A030211.P7814436381335920528

`A045820(n)-A045823(n)`
-/

namespace A030211.P7814436381335920528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045820 n - A045823 n

end

end A030211.P7814436381335920528

/-! ## A030211.P13765935066173929126

`A134461(n)/A033999(n)`
-/

namespace A030211.P13765935066173929126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134461 n : ℚ) / (A033999 n : ℚ)

end

end A030211.P13765935066173929126

/-! ## A030211.P7172423484683462235

`2*A045822(n)-A045823(n)`
-/

namespace A030211.P7172423484683462235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045822 n - A045823 n

end

end A030211.P7172423484683462235

/-! ## A030211.P1113301225458506371

`A291124(2*n+1)/8`
-/

namespace A030211.P1113301225458506371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291124 (2 * n + 1) : ℚ) / 8

end

end A030211.P1113301225458506371

/-! ## A030211.P15522335606292073363

`A134461(n)/A056594(2*n)`
-/

namespace A030211.P15522335606292073363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134461 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A030211.P15522335606292073363

/-! ## A030211.P1661389185657853712

`A259491(2*n+1)/(8*n-A008586(2*n+1))`
-/

namespace A030211.P1661389185657853712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259491 (2 * n + 1) : ℚ) / ((8 * n : ℤ) - A008586 (2 * n + 1) : ℚ)

end

end A030211.P1661389185657853712

/-!
# A030213: Expansion of eta(q^5)*eta(q^19).

The programs for A030213, there is no canonical definition to state claims against.
-/

/-! ## A030213.P11303987588731320249

`A014054(A286395(n+1)%(4*n+2))`
-/

namespace A030213.P11303987588731320249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014054 (Int.tmod (A286395 (n + 1)) (4 * n + 2 : ℤ)).toNat

end

end A030213.P11303987588731320249

/-! ## A030213.P7465497829933812503

`A014027(xor(A272911(2*n+3), A340703(2*n+1)))`
-/

namespace A030213.P7465497829933812503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014027 (Int.xor (A272911 (2 * n + 3)) (A340703 (2 * n + 1))).toNat

end

end A030213.P7465497829933812503

/-!
# A030214: Expansion of eta(q^7)*eta(q^17).

The programs for A030214, there is no canonical definition to state claims against.
-/

/-! ## A030214.P14854386267015125209

`A014053(A186990(n+1)-A105570(n))`
-/

namespace A030214.P14854386267015125209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014053 (A186990 (n + 1) - A105570 n).toNat

end

end A030214.P14854386267015125209

/-! ## A030214.P3464487422618678848

`A167374(A070528(n+1)-A000120(n))`
-/

namespace A030214.P3464487422618678848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (A070528 (n + 1) - A000120 n).toNat

end

end A030214.P3464487422618678848

/-! ## A030214.P12896915317195737066

`A322796(record[A240315(n+1)])`
-/

namespace A030214.P12896915317195737066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030214.P12896915317195737066

/-! ## A030214.P2641092260816283570

`A014139(A271252(n+1)-A088742(n+1))`
-/

namespace A030214.P2641092260816283570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014139 (A271252 (n + 1) - A088742 (n + 1)).toNat

end

end A030214.P2641092260816283570

/-! ## A030214.P7075563505669885285

`A030215(A003520(n)*A240181(n+1))`
-/

namespace A030214.P7075563505669885285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030215 (A003520 n * A240181 (n + 1)).toNat

end

end A030214.P7075563505669885285

/-!
# A030215: Expansion of eta(q^9)*eta(q^15).

The programs for A030215, there is no canonical definition to state claims against.
-/

/-! ## A030215.P7484114543932799962

`A102283(A055999(n)*A123864(n))`
-/

namespace A030215.P7484114543932799962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A055999 n * A123864 n).toNat

end

end A030215.P7484114543932799962

/-! ## A030215.P239129395961471296

`A102283(A123864(n)*A141214(n))`
-/

namespace A030215.P239129395961471296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A123864 n * A141214 n).toNat

end

end A030215.P239129395961471296

/-! ## A030215.P4044144864950880240

`A292273(A101230(n))`
-/

namespace A030215.P4044144864950880240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292273 (A101230 n).toNat

end

end A030215.P4044144864950880240

/-! ## A030215.P7646092609203879453

`A134452(lcm(A047231(n+1), A047283(3*n+2)))`
-/

namespace A030215.P7646092609203879453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (Int.lcm (A047231 (n + 1)) (A047283 (3 * n + 2)))

end

end A030215.P7646092609203879453

/-! ## A030215.P13794471876324566767

`A128834(A037123(n)*A116417(n))`
-/

namespace A030215.P13794471876324566767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A037123 n * A116417 n).toNat

end

end A030215.P13794471876324566767

/-!
# A030216: Expansion of q^-1 * eta(q^10) * eta(q^14) in powers of q^2.

The programs for A030216, there is no canonical definition to state claims against.
-/

/-! ## A030216.P14976705888384948224

`A016409(A127568(n)*A196210(n+1))`
-/

namespace A030216.P14976705888384948224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016409 (A127568 n * A196210 (n + 1)).toNat

end

end A030216.P14976705888384948224

/-! ## A030216.P13839096035354572317

`A016371(A236979(n+1)%A008458(n))`
-/

namespace A030216.P13839096035354572317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016371 (Int.tmod (A236979 (n + 1)) (A008458 n)).toNat

end

end A030216.P13839096035354572317

/-! ## A030216.P12913947517442135592

`A016402(gcd(A280849(n+1), A293496(n+1)))`
-/

namespace A030216.P12913947517442135592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016402 (Int.gcd (A280849 (n + 1)) (A293496 (n + 1)))

end

end A030216.P12913947517442135592

/-! ## A030216.P15139950944671499200

`A113687(A078856(n+1)-A004526(n))`
-/

namespace A030216.P15139950944671499200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113687 (A078856 (n + 1) - A004526 n).toNat

end

end A030216.P15139950944671499200

/-! ## A030216.P12291169852501190029

`A167911(p?[A006068(n)])-A205600(n+1)`
-/

namespace A030216.P12291169852501190029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A205600 (n + 1)

end

end A030216.P12291169852501190029

/-!
# A030217: Expansion of eta(q^11)*eta(q^13).

The programs for A030217, there is no canonical definition to state claims against.
-/

/-! ## A030217.P8310821964259657356

`A014555(xor(A005905(n), A014571(n)))`
-/

namespace A030217.P8310821964259657356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014555 (Int.xor (A005905 n) (A014571 n)).toNat

end

end A030217.P8310821964259657356

/-!
# A030218: Expansion of eta(q^3) * eta(q^5) * eta(q^6) * eta(q^10) in powers of q.

The programs for A030218, there is no canonical definition to state claims against.
-/

/-! ## A030218.P9846131828498395489

`-A286137(3*n)`
-/

namespace A030218.P9846131828498395489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A286137 (3 * n)

end

end A030218.P9846131828498395489

/-! ## A030218.P8617705843296166767

`A008966(A038109(n+1))-A286137(3*n)`
-/

namespace A030218.P8617705843296166767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A038109 (n + 1)).toNat - A286137 (3 * n)

end

end A030218.P8617705843296166767

/-! ## A030218.P6735023778407952083

`A098033(eq[1, A023506(n+1)]+1)-A286137(3*n)`
-/

namespace A030218.P6735023778407952083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - A286137 (3 * n)

end

end A030218.P6735023778407952083

/-! ## A030218.P7794426373102832525

`A098033(eq[1, A087963(n+1)]+1)-A286137(3*n)`
-/

namespace A030218.P7794426373102832525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - A286137 (3 * n)

end

end A030218.P7794426373102832525

/-! ## A030218.P11006205792470447139

`A098033(lt[(A008578(n+1)+1)%4, 1])-A286137(3*n)`
-/

namespace A030218.P11006205792470447139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 1) + 1) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - A286137 (3 * n)

end

end A030218.P11006205792470447139

/-! ## A030218.P184392181057473574

`-A286128(4*n)`
-/

namespace A030218.P184392181057473574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A286128 (4 * n)

end

end A030218.P184392181057473574

/-! ## A030218.P15559303440679888636

`A286137(5*n)`
-/

namespace A030218.P15559303440679888636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286137 (5 * n)

end

end A030218.P15559303440679888636

/-! ## A030218.P2618545935884678979

`A286137(A008587(n))%(n+1)`
-/

namespace A030218.P2618545935884678979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286137 (A008587 n).toNat) (n + 1 : ℤ)

end

end A030218.P2618545935884678979

/-! ## A030218.P7129261801750629463

`A286129(12*n)`
-/

namespace A030218.P7129261801750629463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286129 (12 * n)

end

end A030218.P7129261801750629463

/-! ## A030218.P2959351658161724045

`A286128(A169823(n))`
-/

namespace A030218.P2959351658161724045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (A169823 n).toNat

end

end A030218.P2959351658161724045

/-! ## A030218.P6476524281186567903

`A286128(A008586(15*n))`
-/

namespace A030218.P6476524281186567903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (A008586 (15 * n)).toNat

end

end A030218.P6476524281186567903

/-!
# A030220: Expansion of (eta(q^3)*eta(q^5))^3 in powers of q.

The programs for A030220, there is no canonical definition to state claims against.
-/

/-! ## A030220.P14640376772421006584

`(1-A156595(n))*A115155(n+1)`
-/

namespace A030220.P14640376772421006584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A156595 n) * A115155 (n + 1)

end

end A030220.P14640376772421006584

/-! ## A030220.P4246757745510151851

`(A136549(n+1)+A115155(n+1))/2`
-/

namespace A030220.P4246757745510151851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136549 (n + 1) + A115155 (n + 1) : ℚ) / 2

end

end A030220.P4246757745510151851

/-! ## A030220.P2166170296030747956

`A000007(A128616(n+1)-A121362(n+1))*A115155(n+1)`
-/

namespace A030220.P2166170296030747956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A128616 (n + 1) - A121362 (n + 1)).toNat * A115155 (n + 1)

end

end A030220.P2166170296030747956

/-! ## A030220.P2091949597313774294

`A115155(n+1)*A156595(2*n+1)`
-/

namespace A030220.P2091949597313774294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115155 (n + 1) * A156595 (2 * n + 1)

end

end A030220.P2091949597313774294

/-! ## A030220.P10660273490402030124

`-A136599(3*(n+1))/3`
-/

namespace A030220.P10660273490402030124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A136599 (3 * (n + 1)) : ℚ) / 3)

end

end A030220.P10660273490402030124

/-! ## A030220.P15431860396534201698

`A136599(A008706(n+1))/5`
-/

namespace A030220.P15431860396534201698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136599 (A008706 (n + 1)).toNat : ℚ) / 5

end

end A030220.P15431860396534201698

/-!
# A030221: Chebyshev even-indexed U-polynomials evaluated at sqrt(7)/2.

The programs for A030221, the canonical program `A030221.P14145465776034217075` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030221 has offset 0).

The definition of A030221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030221.P14145465776034217075

`5*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030221

/-- `5*a(n-1)-a(n-2)` -/
def P14145465776034217075.Spec : Prop :=
  ∀ n, P14145465776034217075.a n = A030221 n

theorem P14145465776034217075.correct : P14145465776034217075.Spec := by
  intro n
  simp only [A030221]

end A030221

/-! ## A030221.P8057437135483689846

`A004254(n)+A004254(n+1)`
-/

namespace A030221.P8057437135483689846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n + A004254 (n + 1)

end

end A030221.P8057437135483689846

namespace A030221

/-- `A004254(n)+A004254(n+1)` -/
def P8057437135483689846.Spec : Prop :=
  ∀ n, P8057437135483689846.a n = A030221 n

end A030221

/-! ## A030221.P9791191897517279864

`lcm(5, a(n-1))-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A030221.P9791191897517279864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - a (n - 2)

end

end A030221.P9791191897517279864

namespace A030221

/-- `lcm(5, a(n-1))-a(n-2)` -/
def P9791191897517279864.Spec : Prop :=
  ∀ n, P9791191897517279864.a n = A030221 n

end A030221

/-! ## A030221.P13945201966791042106

`∑[A003501(n)]-1`
-/

namespace A030221.P13945201966791042106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A030221.P13945201966791042106

namespace A030221

/-- `∑[A003501(n)]-1` -/
def P13945201966791042106.Spec : Prop :=
  ∀ n, P13945201966791042106.a n = A030221 n

end A030221

/-! ## A030221.P9947486596612577829

`record[Δ[A237254(n+1)]]`
-/

namespace A030221.P9947486596612577829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030221.P9947486596612577829

namespace A030221

/-- `record[Δ[A237254(n+1)]]` -/
def P9947486596612577829.Spec : Prop :=
  ∀ n, P9947486596612577829.a n = A030221 n

end A030221

/-! ## A030221.P6339378378643372480

`A055271(n)-A004254(n)`
-/

namespace A030221.P6339378378643372480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055271 n - A004254 n

end

end A030221.P6339378378643372480

namespace A030221

/-- `A055271(n)-A004254(n)` -/
def P6339378378643372480.Spec : Prop :=
  ∀ n, P6339378378643372480.a n = A030221 n

end A030221

/-! ## A030221.P14867449572744879824

`A002310(n+1)-A002320(n)`
-/

namespace A030221.P14867449572744879824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 (n + 1) - A002320 n

end

end A030221.P14867449572744879824

namespace A030221

/-- `A002310(n+1)-A002320(n)` -/
def P14867449572744879824.Spec : Prop :=
  ∀ n, P14867449572744879824.a n = A030221 n

end A030221

/-! ## A030221.P13215892974829074246

`A290902(n)-A002310(n+1)`
-/

namespace A030221.P13215892974829074246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290902 n - A002310 (n + 1)

end

end A030221.P13215892974829074246

namespace A030221

/-- `A290902(n)-A002310(n+1)` -/
def P13215892974829074246.Spec : Prop :=
  ∀ n, P13215892974829074246.a n = A030221 n

end A030221

/-! ## A030221.P2767373557679132887

`A004253(n+2)-A164582(n+2)`
-/

namespace A030221.P2767373557679132887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 2) - A164582 (n + 2)

end

end A030221.P2767373557679132887

namespace A030221

/-- `A004253(n+2)-A164582(n+2)` -/
def P2767373557679132887.Spec : Prop :=
  ∀ n, P2767373557679132887.a n = A030221 n

end A030221

/-! ## A030221.P12112738574895392183

`A107389(n+3)-A107389(n+1)`
-/

namespace A030221.P12112738574895392183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107389 (n + 3) - A107389 (n + 1)

end

end A030221.P12112738574895392183

namespace A030221

/-- `A107389(n+3)-A107389(n+1)` -/
def P12112738574895392183.Spec : Prop :=
  ∀ n, P12112738574895392183.a n = A030221 n

end A030221

/-! ## A030221.P7433449096574050342

`2*A004253(n+1)-A002310(n)`
-/

namespace A030221.P7433449096574050342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004253 (n + 1) - A002310 n

end

end A030221.P7433449096574050342

namespace A030221

/-- `2*A004253(n+1)-A002310(n)` -/
def P7433449096574050342.Spec : Prop :=
  ∀ n, P7433449096574050342.a n = A030221 n

end A030221

/-! ## A030221.P11525069888795801546

`Δ[Δ[A101368(n+1)]]-A002310(n)`
-/

namespace A030221.P11525069888795801546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002310 n

end

end A030221.P11525069888795801546

namespace A030221

/-- `Δ[Δ[A101368(n+1)]]-A002310(n)` -/
def P11525069888795801546.Spec : Prop :=
  ∀ n, P11525069888795801546.a n = A030221 n

end A030221

/-! ## A030221.P14621895569201163606

`A004253(n+1)+Δ[A101368(n+1)]`
-/

namespace A030221.P14621895569201163606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) + (f1 (n + 1) - f1 n)

end

end A030221.P14621895569201163606

namespace A030221

/-- `A004253(n+1)+Δ[A101368(n+1)]` -/
def P14621895569201163606.Spec : Prop :=
  ∀ n, P14621895569201163606.a n = A030221 n

end A030221

/-! ## A030221.P14619727996758533380

`(Δ[A004253(n+1)]-A002320(n))/2`
-/

namespace A030221.P14619727996758533380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A002320 n : ℚ) / 2

end

end A030221.P14619727996758533380

namespace A030221

/-- `(Δ[A004253(n+1)]-A002320(n))/2` -/
def P14619727996758533380.Spec : Prop :=
  ∀ n, P14619727996758533380.a n = (A030221 n : ℚ)

end A030221

/-! ## A030221.P2759034558388269963

`A002310(n+1)-A237254(2*n+1)`
-/

namespace A030221.P2759034558388269963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 (n + 1) - A237254 (2 * n + 1)

end

end A030221.P2759034558388269963

namespace A030221

/-- `A002310(n+1)-A237254(2*n+1)` -/
def P2759034558388269963.Spec : Prop :=
  ∀ n, P2759034558388269963.a n = A030221 n

end A030221

/-! ## A030221.P12196162916071863498

`A004253(n+2)-A237255(2*(n+1))`
-/

namespace A030221.P12196162916071863498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 2) - A237255 (2 * (n + 1))

end

end A030221.P12196162916071863498

namespace A030221

/-- `A004253(n+2)-A237255(2*(n+1))` -/
def P12196162916071863498.Spec : Prop :=
  ∀ n, P12196162916071863498.a n = A030221 n

end A030221

/-! ## A030221.P17423770764877511222

`A136211(2*(n+1))-A164582(n+2)`
-/

namespace A030221.P17423770764877511222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (2 * (n + 1)) - A164582 (n + 2)

end

end A030221.P17423770764877511222

namespace A030221

/-- `A136211(2*(n+1))-A164582(n+2)` -/
def P17423770764877511222.Spec : Prop :=
  ∀ n, P17423770764877511222.a n = A030221 n

end A030221

/-! ## A030221.P12872353102372342856

`A002320(n+1)-2*A136210(2*n+1)`
-/

namespace A030221.P12872353102372342856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 (n + 1) - 2 * A136210 (2 * n + 1)

end

end A030221.P12872353102372342856

namespace A030221

/-- `A002320(n+1)-2*A136210(2*n+1)` -/
def P12872353102372342856.Spec : Prop :=
  ∀ n, P12872353102372342856.a n = A030221 n

end A030221

/-! ## A030221.P16931487698231348779

`A237254(2*(n+1))-A237254(2*n+1)`
-/

namespace A030221.P16931487698231348779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (2 * (n + 1)) - A237254 (2 * n + 1)

end

end A030221.P16931487698231348779

namespace A030221

/-- `A237254(2*(n+1))-A237254(2*n+1)` -/
def P16931487698231348779.Spec : Prop :=
  ∀ n, P16931487698231348779.a n = A030221 n

end A030221

/-!
# A030222: Number of n-polyplets (polyominoes connected at edges or corners); may contain holes.

The programs for A030222, there is no canonical definition to state claims against.
-/

/-! ## A030222.P13418229041130102532

`A030235(n+1)+A030234(n+1)`
-/

namespace A030222.P13418229041130102532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030235 (n + 1) + A030234 (n + 1)

end

end A030222.P13418229041130102532

/-! ## A030222.P9515765261150201396

`A030233(n+1)-A030235(n+1)`
-/

namespace A030222.P9515765261150201396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030233 (n + 1) - A030235 (n + 1)

end

end A030222.P9515765261150201396

/-! ## A030222.P8885518207017250525

`A194596(n+1)+Δ[A173271(n)]`
-/

namespace A030222.P8885518207017250525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194596 (n + 1) + (f1 (n + 1) - f1 n)

end

end A030222.P8885518207017250525

/-! ## A030222.P10938390178883834859

`A194596(n+1)+A000105(n+1)`
-/

namespace A030222.P10938390178883834859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194596 (n + 1) + A000105 (n + 1)

end

end A030222.P10938390178883834859

/-! ## A030222.P1002652252596781831

`A006765(n+1)+A194596(n+1)+1`
-/

namespace A030222.P1002652252596781831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) + (A194596 (n + 1) + 1)

end

end A030222.P1002652252596781831

/-!
# A030223: Number of achiral triangular n-ominoes (n-iamonds) (holes are allowed).

The programs for A030223, there is no canonical definition to state claims against.
-/

/-! ## A030223.P15302252766260661637

`A000577(n+1)-A030224(n+1)`
-/

namespace A030223.P15302252766260661637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - A030224 (n + 1)

end

end A030223.P15302252766260661637

/-! ## A030223.P9643478099433880369

`2*A000577(n+1)-A006534(n+1)`
-/

namespace A030223.P9643478099433880369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000577 (n + 1) - A006534 (n + 1)

end

end A030223.P9643478099433880369

/-! ## A030223.P7097723435073319889

`A006534(n+1)-2*A030224(n+1)`
-/

namespace A030223.P7097723435073319889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006534 (n + 1) - 2 * A030224 (n + 1)

end

end A030223.P7097723435073319889

/-! ## A030223.P15939009460877961942

`A000577(n+1)+A030224(n+1)*A057428(n)`
-/

namespace A030223.P15939009460877961942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) + A030224 (n + 1) * A057428 n

end

end A030223.P15939009460877961942

/-! ## A030223.P16052854100484273508

`A006534(n+1)-A030224(n+1)-A030224(A000027(n+1))`
-/

namespace A030223.P16052854100484273508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006534 (n + 1) - A030224 (n + 1) - A030224 (A000027 (n + 1)).toNat

end

end A030223.P16052854100484273508

/-!
# A030224: Triangular polyominoes (n-iamonds) without bilateral symmetry (holes are allowed).

The programs for A030224, there is no canonical definition to state claims against.
-/

/-! ## A030224.P6241723272230187381

`A006534(n+1)-A000577(n+1)`
-/

namespace A030224.P6241723272230187381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006534 (n + 1) - A000577 (n + 1)

end

end A030224.P6241723272230187381

/-! ## A030224.P14434612675738458526

`A000577(n+1)-A030223(n+1)`
-/

namespace A030224.P14434612675738458526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - A030223 (n + 1)

end

end A030224.P14434612675738458526

/-! ## A030224.P18027867387661445802

`(A006534(n+1)-A030223(n+1))/2`
-/

namespace A030224.P18027867387661445802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006534 (n + 1) - A030223 (n + 1) : ℚ) / 2

end

end A030224.P18027867387661445802

/-! ## A030224.P13932285068260598449

`A006534(A000027(n+1))%A000577(n+1)`
-/

namespace A030224.P13932285068260598449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006534 (A000027 (n + 1)).toNat) (A000577 (n + 1))

end

end A030224.P13932285068260598449

/-! ## A030224.P13935496568337226484

`A006534(n+1)%A000577(A023443(n+2))`
-/

namespace A030224.P13935496568337226484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006534 (n + 1)) (A000577 (A023443 (n + 2)).toNat)

end

end A030224.P13935496568337226484

/-!
# A030225: Number of achiral hexagonal polyominoes with n cells.

The programs for A030225, there is no canonical definition to state claims against.
-/

/-! ## A030225.P12185092306293304330

`A000228(n+1)-A030226(n+1)`
-/

namespace A030225.P12185092306293304330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - A030226 (n + 1)

end

end A030225.P12185092306293304330

/-! ## A030225.P4693474347925062981

`2*A000228(n+1)-A006535(n+1)`
-/

namespace A030225.P4693474347925062981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000228 (n + 1) - A006535 (n + 1)

end

end A030225.P4693474347925062981

/-! ## A030225.P16656502348489291439

`A006535(n+1)-2*A030226(n+1)`
-/

namespace A030225.P16656502348489291439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006535 (n + 1) - 2 * A030226 (n + 1)

end

end A030225.P16656502348489291439

/-! ## A030225.P9084705544749635249

`A000228(n+1)+A030226(n+1)*A057428(n)`
-/

namespace A030225.P9084705544749635249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) + A030226 (n + 1) * A057428 n

end

end A030225.P9084705544749635249

/-! ## A030225.P3621376636357979365

`A000228(n+1)-A006535(A000027(n+1))%A000228(n+1)`
-/

namespace A030225.P3621376636357979365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - Int.tmod (A006535 (A000027 (n + 1)).toNat) (A000228 (n + 1))

end

end A030225.P3621376636357979365

/-!
# A030226: Number of n-celled polyhexes (hexagonal polyominoes) without bilateral symmetry.

The programs for A030226, there is no canonical definition to state claims against.
-/

/-! ## A030226.P2977721800821490209

`A006535(n+1)-A000228(n+1)`
-/

namespace A030226.P2977721800821490209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006535 (n + 1) - A000228 (n + 1)

end

end A030226.P2977721800821490209

/-! ## A030226.P3963171485824156431

`A000228(n+1)-A030225(n+1)`
-/

namespace A030226.P3963171485824156431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - A030225 (n + 1)

end

end A030226.P3963171485824156431

/-! ## A030226.P15160206756505709750

`(A006535(n+1)-A030225(n+1))/2`
-/

namespace A030226.P15160206756505709750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006535 (n + 1) - A030225 (n + 1) : ℚ) / 2

end

end A030226.P15160206756505709750

/-! ## A030226.P13178222970603197858

`A006535(n+1)%A000228(-xor(n, -1))`
-/

namespace A030226.P13178222970603197858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006535 (n + 1)) (A000228 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A030226.P13178222970603197858

/-! ## A030226.P2226734148710512729

`A006535(A000027(n+1))%A000228(n+1)`
-/

namespace A030226.P2226734148710512729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006535 (A000027 (n + 1)).toNat) (A000228 (n + 1))

end

end A030226.P2226734148710512729

/-!
# A030227: Number of achiral polyominoes with n cells.

The programs for A030227, there is no canonical definition to state claims against.
-/

/-! ## A030227.P12030248514509144416

`A000105(n)-A030228(n)`
-/

namespace A030227.P12030248514509144416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n - A030228 n

end

end A030227.P12030248514509144416

/-! ## A030227.P8858212902965791856

`2*A000105(n)-A000988(n)`
-/

namespace A030227.P8858212902965791856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000105 n - A000988 n

end

end A030227.P8858212902965791856

/-! ## A030227.P11093596737122782203

`A000988(n)-2*A030228(n)`
-/

namespace A030227.P11093596737122782203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 n - 2 * A030228 n

end

end A030227.P11093596737122782203

/-! ## A030227.P12552270818112716659

`A000105(n)+-A030228(n)%A000988(n)`
-/

namespace A030227.P12552270818112716659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n + Int.tmod (-A030228 n) (A000988 n)

end

end A030227.P12552270818112716659

/-! ## A030227.P5850738701150724591

`A006765(A028310(n))+1-A030228(n)`
-/

namespace A030227.P5850738701150724591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (A028310 n).toNat + 1 - A030228 n

end

end A030227.P5850738701150724591

/-! ## A030227.P670056770306797684

`A001168(n)-(A283108(n)+A030228(n))`
-/

namespace A030227.P670056770306797684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 n - (A283108 n + A030228 n)

end

end A030227.P670056770306797684

/-!
# A030228: Number of chiral pairs of polyominoes with n cells.

The programs for A030228, there is no canonical definition to state claims against.
-/

/-! ## A030228.P12857694649047009094

`A000988(n)-A000105(n)`
-/

namespace A030228.P12857694649047009094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 n - A000105 n

end

end A030228.P12857694649047009094

/-! ## A030228.P1844103799712195831

`A000105(n)-A030227(n)`
-/

namespace A030228.P1844103799712195831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n - A030227 n

end

end A030228.P1844103799712195831

/-! ## A030228.P7931511962962105264

`(A000988(n)-A030227(n))/2`
-/

namespace A030228.P7931511962962105264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000988 n - A030227 n : ℚ) / 2

end

end A030228.P7931511962962105264

/-! ## A030228.P9207079740611712232

`A000988(n)%A000105(A028310(n))`
-/

namespace A030228.P9207079740611712232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000988 n) (A000105 (A028310 n).toNat)

end

end A030228.P9207079740611712232

/-! ## A030228.P12030436681254589478

`A006765(A028310(n))+1-A030227(n)`
-/

namespace A030228.P12030436681254589478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (A028310 n).toNat + 1 - A030227 n

end

end A030228.P12030436681254589478

/-!
# A030229: Numbers that are the product of an even number of distinct primes.

The programs for A030229, the canonical program `A030229.P6582361202127341849` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030229 has offset 1).

The definition of A030229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030229.P17174785047747391992

`sqrt(A077448(n+1))`
-/

namespace A030229.P17174785047747391992
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077448 (n + 1) : ℝ)

end

end A030229.P17174785047747391992

namespace A030229

/-- `sqrt(A077448(n+1))` -/
def P17174785047747391992.Spec : Prop :=
  ∀ n, P17174785047747391992.a n = (A030229 (n + 1) : ℝ)

end A030229

/-! ## A030229.P6582361202127341849

`record[A080304(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030229

/-- `record[A080304(n+1)]` -/
def P6582361202127341849.Spec : Prop :=
  ∀ n, P6582361202127341849.a n = A030229 (n + 1)

theorem P6582361202127341849.correct : P6582361202127341849.Spec := by
  intro n
  simp only [A030229, Nat.add_sub_cancel]

end A030229

/-! ## A030229.P5999840181124974169

`lt[0, A008683(n+1)]+1`
-/

namespace A030229.P5999840181124974169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030229.P5999840181124974169

namespace A030229

/-- `lt[0, A008683(n+1)]+1` -/
def P5999840181124974169.Spec : Prop :=
  ∀ n, (P5999840181124974169.a n : ℤ) = A030229 (n + 1)

end A030229

/-! ## A030229.P4130296624780081369

`eq[1, A010555(n+1)]+1`
-/

namespace A030229.P4130296624780081369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030229.P4130296624780081369

namespace A030229

/-- `eq[1, A010555(n+1)]+1` -/
def P4130296624780081369.Spec : Prop :=
  ∀ n, (P4130296624780081369.a n : ℤ) = A030229 (n + 1)

end A030229

/-! ## A030229.P18291997142945243245

`eq[1, A353629(n+1)]+1`
-/

namespace A030229.P18291997142945243245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353629 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030229.P18291997142945243245

namespace A030229

/-- `eq[1, A353629(n+1)]+1` -/
def P18291997142945243245.Spec : Prop :=
  ∀ n, (P18291997142945243245.a n : ℤ) = A030229 (n + 1)

end A030229

/-! ## A030229.P6651103344689756759

`eq[1, A359577(n+1)]+1`
-/

namespace A030229.P6651103344689756759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359577 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030229.P6651103344689756759

namespace A030229

/-- `eq[1, A359577(n+1)]+1` -/
def P6651103344689756759.Spec : Prop :=
  ∀ n, (P6651103344689756759.a n : ℤ) = A030229 (n + 1)

end A030229

/-! ## A030229.P13054838913071487797

`eq[1, A008683(C(n+1, n))]+1`
-/

namespace A030229.P13054838913071487797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (n + 1) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030229.P13054838913071487797

namespace A030229

/-- `eq[1, A008683(C(n+1, n))]+1` -/
def P13054838913071487797.Spec : Prop :=
  ∀ n, (P13054838913071487797.a n : ℤ) = A030229 (n + 1)

end A030229

/-! ## A030229.P8457801349846975630

`record[and(n+3, -A008683(n+3))]`
-/

namespace A030229.P8457801349846975630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (-A008683 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030229.P8457801349846975630

namespace A030229

/-- `record[and(n+3, -A008683(n+3))]` -/
def P8457801349846975630.Spec : Prop :=
  ∀ n, P8457801349846975630.a n = A030229 (n + 1)

end A030229

/-! ## A030229.P8274921137997465097

`record[ceil((n+2)^A008683(n+2))]`
-/

namespace A030229.P8274921137997465097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) ^ (A008683 (n + 2) : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030229.P8274921137997465097

namespace A030229

/-- `record[ceil((n+2)^A008683(n+2))]` -/
def P8274921137997465097.Spec : Prop :=
  ∀ n, P8274921137997465097.a n = A030229 (n + 1)

end A030229

/-! ## A030229.P1423411294235539414

`eq[1, A008683(2*n+1-n)]+1`
-/

namespace A030229.P1423411294235539414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1 - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030229.P1423411294235539414

namespace A030229

/-- `eq[1, A008683(2*n+1-n)]+1` -/
def P1423411294235539414.Spec : Prop :=
  ∀ n, (P1423411294235539414.a n : ℤ) = A030229 (n + 1)

end A030229

/-! ## A030229.P7226801612697568944

`eq[1, A008683(floor(2/(2*n+1)+n))]`
-/

namespace A030229.P7226801612697568944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ⌊2 / (2 * n + 1 : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030229.P7226801612697568944

namespace A030229

/-- `eq[1, A008683(floor(2/(2*n+1)+n))]` -/
def P7226801612697568944.Spec : Prop :=
  ∀ n, (P7226801612697568944.a n : ℤ) = A030229 (n + 1)

end A030229

/-! ## A030229.P13606442272818588363

`record[(n+1)*A008683(2*n-(n-1))]`
-/

namespace A030229.P13606442272818588363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030229.P13606442272818588363

namespace A030229

/-- `record[(n+1)*A008683(2*n-(n-1))]` -/
def P13606442272818588363.Spec : Prop :=
  ∀ n, P13606442272818588363.a n = A030229 (n + 1)

end A030229

/-! ## A030229.P12921252101275041321

`record[(n+1)^A008683((n+1)%(n+2))]`
-/

namespace A030229.P12921252101275041321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 ((n + 1) % (n + 2)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030229.P12921252101275041321

namespace A030229

/-- `record[(n+1)^A008683((n+1)%(n+2))]` -/
def P12921252101275041321.Spec : Prop :=
  ∀ n, P12921252101275041321.a n = (A030229 (n + 1) : ℚ)

end A030229

/-! ## A030229.P2782268942198129123

`A077448(n+1)-A370495(n+1)`
-/

namespace A030229.P2782268942198129123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077448 (n + 1) - A370495 (n + 1)

end

end A030229.P2782268942198129123

namespace A030229

/-- `A077448(n+1)-A370495(n+1)` -/
def P2782268942198129123.Spec : Prop :=
  ∀ n, P2782268942198129123.a n = A030229 (n + 1)

end A030229

/-! ## A030229.P14499222477879555899

`record[A005117(n+1)/A008683(A005117(n+1))]`
-/

namespace A030229.P14499222477879555899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005117 (n + 1) : ℚ) / (A008683 (A005117 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030229.P14499222477879555899

namespace A030229

/-- `record[A005117(n+1)/A008683(A005117(n+1))]` -/
def P14499222477879555899.Spec : Prop :=
  ∀ n, P14499222477879555899.a n = (A030229 (n + 1) : ℚ)

end A030229

/-! ## A030229.P11597916340429390987

`filter[A238748(n+1), A008966(#)]`
-/

namespace A030229.P11597916340429390987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A030229.P11597916340429390987

namespace A030229

/-- `filter[A238748(n+1), A008966(#)]` -/
def P11597916340429390987.Spec : Prop :=
  ∀ n, P11597916340429390987.a n = A030229 (n + 1)

end A030229

/-! ## A030229.P9017788347902743739

`filter[A238748(n+1), A353627(#)]`
-/

namespace A030229.P9017788347902743739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A030229.P9017788347902743739

namespace A030229

/-- `filter[A238748(n+1), A353627(#)]` -/
def P9017788347902743739.Spec : Prop :=
  ∀ n, P9017788347902743739.a n = A030229 (n + 1)

end A030229

/-! ## A030229.P12759883152237180723

`filter[A211484(n+1), A008966(#)]`
-/

namespace A030229.P12759883152237180723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A030229.P12759883152237180723

namespace A030229

/-- `filter[A211484(n+1), A008966(#)]` -/
def P12759883152237180723.Spec : Prop :=
  ∀ n, P12759883152237180723.a n = A030229 (n + 1)

end A030229

/-!
# A030230: Numbers that have an odd number of distinct prime divisors.

The programs for A030230, the canonical program `A030230.P8215349480315688712` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030230 has offset 1).

The definition of A030230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030230.P6511021044711435785

`lt[A023900(n+1), 0]+1`
-/

namespace A030230.P6511021044711435785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030230.P6511021044711435785

namespace A030230

/-- `lt[A023900(n+1), 0]+1` -/
def P6511021044711435785.Spec : Prop :=
  ∀ n, (P6511021044711435785.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P774128437659019054

`lt[A349340(n+1), 0]+1`
-/

namespace A030230.P774128437659019054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030230.P774128437659019054

namespace A030230

/-- `lt[A349340(n+1), 0]+1` -/
def P774128437659019054.Spec : Prop :=
  ∀ n, (P774128437659019054.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P15656418252274561725

`lt[A349382(n+1), 0]+1`
-/

namespace A030230.P15656418252274561725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349382 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030230.P15656418252274561725

namespace A030230

/-- `lt[A349382(n+1), 0]+1` -/
def P15656418252274561725.Spec : Prop :=
  ∀ n, (P15656418252274561725.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P13646079585257193809

`lt[A349388(n+1), 0]+1`
-/

namespace A030230.P13646079585257193809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349388 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030230.P13646079585257193809

namespace A030230

/-- `lt[A349388(n+1), 0]+1` -/
def P13646079585257193809.Spec : Prop :=
  ∀ n, (P13646079585257193809.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P8215349480315688712

`lt[A349431(n+1), 0]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030230

/-- `lt[A349431(n+1), 0]+1` -/
def P8215349480315688712.Spec : Prop :=
  ∀ n, (P8215349480315688712.a n : ℤ) = A030230 (n + 1)

theorem P8215349480315688712.correct : P8215349480315688712.Spec := by
  intro n
  simp only [A030230, Nat.add_sub_cancel]

end A030230

/-! ## A030230.P12201007479177918628

`eq[1, A001221(n+1)%2]+1`
-/

namespace A030230.P12201007479177918628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030230.P12201007479177918628

namespace A030230

/-- `eq[1, A001221(n+1)%2]+1` -/
def P12201007479177918628.Spec : Prop :=
  ∀ n, (P12201007479177918628.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P8343315693682145389

`record[(n+2)*A001221(n+2)%2]`
-/

namespace A030230.P8343315693682145389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.tmod (A001221 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030230.P8343315693682145389

namespace A030230

/-- `record[(n+2)*A001221(n+2)%2]` -/
def P8343315693682145389.Spec : Prop :=
  ∀ n, P8343315693682145389.a n = A030230 (n + 1)

end A030230

/-! ## A030230.P3985558952743766283

`lt[A008683(A007947(n+1)), 1]+1`
-/

namespace A030230.P3985558952743766283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007947 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030230.P3985558952743766283

namespace A030230

/-- `lt[A008683(A007947(n+1)), 1]+1` -/
def P3985558952743766283.Spec : Prop :=
  ∀ n, (P3985558952743766283.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P10152790903061639371

`∪[A098903(n+1), A098904(n+1)]`
-/

namespace A030230.P10152790903061639371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030230.P10152790903061639371

namespace A030230

/-- `∪[A098903(n+1), A098904(n+1)]` -/
def P10152790903061639371.Spec : Prop :=
  ∀ n, (P10152790903061639371.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P18359452293002678606

`eq[A318833(n+1), A318841(n+1)]+1`
-/

namespace A030230.P18359452293002678606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A030230.P18359452293002678606

namespace A030230

/-- `eq[A318833(n+1), A318841(n+1)]+1` -/
def P18359452293002678606.Spec : Prop :=
  ∀ n, (P18359452293002678606.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P1802925384144240437

`lt[∏{p}[n, -#], 0]`
-/

namespace A030230.P1802925384144240437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A030230.P1802925384144240437

namespace A030230

/-- `lt[∏{p}[n, -#], 0]` -/
def P1802925384144240437.Spec : Prop :=
  ∀ n, (P1802925384144240437.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P12949152863881165618

`lt[∏{e}[n, -#], 0]`
-/

namespace A030230.P12949152863881165618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A030230.P12949152863881165618

namespace A030230

/-- `lt[∏{e}[n, -#], 0]` -/
def P12949152863881165618.Spec : Prop :=
  ∀ n, (P12949152863881165618.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P15228180911054316064

`lt[gcd(2, A305614(n)), 2]`
-/

namespace A030230.P15228180911054316064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A305614 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030230.P15228180911054316064

namespace A030230

/-- `lt[gcd(2, A305614(n)), 2]` -/
def P15228180911054316064.Spec : Prop :=
  ∀ n, (P15228180911054316064.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P11212499158847106267

`filter[n+1, A092248(#)]`
-/

namespace A030230.P11212499158847106267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j) = 1) n)

end

end A030230.P11212499158847106267

namespace A030230

/-- `filter[n+1, A092248(#)]` -/
def P11212499158847106267.Spec : Prop :=
  ∀ n, (P11212499158847106267.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P6322079180053991630

`lt[A008683(∏{p}[n, #]), 0]`
-/

namespace A030230.P6322079180053991630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f2 n), p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A030230.P6322079180053991630

namespace A030230

/-- `lt[A008683(∏{p}[n, #]), 0]` -/
def P6322079180053991630.Spec : Prop :=
  ∀ n, (P6322079180053991630.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P10464291955724199406

`lt[A076479(n+1), 0]+1`
-/

namespace A030230.P10464291955724199406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030230.P10464291955724199406

namespace A030230

/-- `lt[A076479(n+1), 0]+1` -/
def P10464291955724199406.Spec : Prop :=
  ∀ n, (P10464291955724199406.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P13577693538556240899

`eq[1, A092248(n+1)]+1`
-/

namespace A030230.P13577693538556240899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030230.P13577693538556240899

namespace A030230

/-- `eq[1, A092248(n+1)]+1` -/
def P13577693538556240899.Spec : Prop :=
  ∀ n, (P13577693538556240899.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P13477247585403069142

`lt[A295127(n+1), 0]+1`
-/

namespace A030230.P13477247585403069142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295127 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030230.P13477247585403069142

namespace A030230

/-- `lt[A295127(n+1), 0]+1` -/
def P13477247585403069142.Spec : Prop :=
  ∀ n, (P13477247585403069142.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P7463460370619838589

`lt[A349388(A028310(n)), 0]`
-/

namespace A030230.P7463460370619838589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349388 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030230.P7463460370619838589

namespace A030230

/-- `lt[A349388(A028310(n)), 0]` -/
def P7463460370619838589.Spec : Prop :=
  ∀ n, (P7463460370619838589.a n : ℤ) = A030230 (n + 1)

end A030230

/-! ## A030230.P11535213578406650104

`A020725(eq[1, A092248(n+1)])`
-/

namespace A030230.P11535213578406650104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030230.P11535213578406650104

namespace A030230

/-- `A020725(eq[1, A092248(n+1)])` -/
def P11535213578406650104.Spec : Prop :=
  ∀ n, P11535213578406650104.a n = A030230 (n + 1)

end A030230

/-!
# A030231: Numbers with an even number of distinct prime factors.

The programs for A030231, the canonical program `A030231.P6726175487153187534` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030231 has offset 1).

The definition of A030231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030231.P6726175487153187534

`record[(n+1)%A318833(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030231

/-- `record[(n+1)%A318833(n+1)]` -/
def P6726175487153187534.Spec : Prop :=
  ∀ n, P6726175487153187534.a n = A030231 (n + 1)

theorem P6726175487153187534.correct : P6726175487153187534.Spec := by
  intro n
  simp only [A030231, Nat.add_sub_cancel]

end A030231

/-! ## A030231.P4386152589291916060

`lt[A001221(n+1)%2, 1]+1`
-/

namespace A030231.P4386152589291916060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030231.P4386152589291916060

namespace A030231

/-- `lt[A001221(n+1)%2, 1]+1` -/
def P4386152589291916060.Spec : Prop :=
  ∀ n, (P4386152589291916060.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P5981792854074236716

`record[n/a(A001221(n))]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1, a(4)=1`
-/

namespace A030231.P5981792854074236716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 1, -1, 1] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030231.P5981792854074236716

namespace A030231

/-- `record[n/a(A001221(n))]` -/
def P5981792854074236716.Spec : Prop :=
  ∀ n, P5981792854074236716.a n = (A030231 (n + 1) : ℚ)

end A030231

/-! ## A030231.P7992396788589615122

`eq[1, A008683(A007947(n+1))]+1`
-/

namespace A030231.P7992396788589615122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030231.P7992396788589615122

namespace A030231

/-- `eq[1, A008683(A007947(n+1))]+1` -/
def P7992396788589615122.Spec : Prop :=
  ∀ n, (P7992396788589615122.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P9911865672752694882

`record[A000027(n+1)*A008683(A007947(n+1))]`
-/

namespace A030231.P9911865672752694882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A008683 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030231.P9911865672752694882

namespace A030231

/-- `record[A000027(n+1)*A008683(A007947(n+1))]` -/
def P9911865672752694882.Spec : Prop :=
  ∀ n, P9911865672752694882.a n = A030231 (n + 1)

end A030231

/-! ## A030231.P17168936730657855263

`lt[0, A023900(n+1)]+1`
-/

namespace A030231.P17168936730657855263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030231.P17168936730657855263

namespace A030231

/-- `lt[0, A023900(n+1)]+1` -/
def P17168936730657855263.Spec : Prop :=
  ∀ n, (P17168936730657855263.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P16604846286174218153

`lt[0, A349431(n+1)]+1`
-/

namespace A030231.P16604846286174218153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030231.P16604846286174218153

namespace A030231

/-- `lt[0, A349431(n+1)]+1` -/
def P16604846286174218153.Spec : Prop :=
  ∀ n, (P16604846286174218153.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P1732391306705073917

`lt[2, A349388(n+1)+3]+1`
-/

namespace A030231.P1732391306705073917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349388 (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030231.P1732391306705073917

namespace A030231

/-- `lt[2, A349388(n+1)+3]+1` -/
def P1732391306705073917.Spec : Prop :=
  ∀ n, (P1732391306705073917.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P10680230445683747867

`lt[0, ∏{p}[n+1, -#]]+1`
-/

namespace A030231.P10680230445683747867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030231.P10680230445683747867

namespace A030231

/-- `lt[0, ∏{p}[n+1, -#]]+1` -/
def P10680230445683747867.Spec : Prop :=
  ∀ n, (P10680230445683747867.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P9551975280156420470

`lt[0, ∏{e}[n+1, -#]]+1`
-/

namespace A030231.P9551975280156420470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (-(Nat.factorization (f3 n) p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030231.P9551975280156420470

namespace A030231

/-- `lt[0, ∏{e}[n+1, -#]]+1` -/
def P9551975280156420470.Spec : Prop :=
  ∀ n, (P9551975280156420470.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P13674081249804504692

`eq[1, A076479(n+1)]+1`
-/

namespace A030231.P13674081249804504692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030231.P13674081249804504692

namespace A030231

/-- `eq[1, A076479(n+1)]+1` -/
def P13674081249804504692.Spec : Prop :=
  ∀ n, (P13674081249804504692.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P14610653882299689609

`eq[1, A008683(∏{p}[n+1, #])]+1`
-/

namespace A030231.P14610653882299689609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030231.P14610653882299689609

namespace A030231

/-- `eq[1, A008683(∏{p}[n+1, #])]+1` -/
def P14610653882299689609.Spec : Prop :=
  ∀ n, (P14610653882299689609.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P11259719952682145787

`lt[A138527(A073184(n+1)+2), 1]+1`
-/

namespace A030231.P11259719952682145787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138527 (A073184 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030231.P11259719952682145787

namespace A030231

/-- `lt[A138527(A073184(n+1)+2), 1]+1` -/
def P11259719952682145787.Spec : Prop :=
  ∀ n, (P11259719952682145787.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P12925358113647280235

`lt[A176889(∑{p}[n+1, A001222(#)]+1), 2]+1`
-/

namespace A030231.P12925358113647280235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176889 (∑ p ∈ Nat.primeFactors (f2 n), A001222 p + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A030231.P12925358113647280235

namespace A030231

/-- `lt[A176889(∑{p}[n+1, A001222(#)]+1), 2]+1` -/
def P12925358113647280235.Spec : Prop :=
  ∀ n, (P12925358113647280235.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P1509689931042938683

`lt[0, n*∏{p}[n, -#]]`
-/

namespace A030231.P1509689931042938683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030231.P1509689931042938683

namespace A030231

/-- `lt[0, n*∏{p}[n, -#]]` -/
def P1509689931042938683.Spec : Prop :=
  ∀ n, (P1509689931042938683.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P4988313696903403814

`lt[0, n/∏{p}[n, -#]]`
-/

namespace A030231.P4988313696903403814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ)) : ℤ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A030231.P4988313696903403814

namespace A030231

/-- `lt[0, n/∏{p}[n, -#]]` -/
def P4988313696903403814.Spec : Prop :=
  ∀ n, (P4988313696903403814.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P17525853725862598872

`lt[0, n*∏{e}[n, -#]]`
-/

namespace A030231.P17525853725862598872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), (-(Nat.factorization (f3 n) p : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030231.P17525853725862598872

namespace A030231

/-- `lt[0, n*∏{e}[n, -#]]` -/
def P17525853725862598872.Spec : Prop :=
  ∀ n, (P17525853725862598872.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P4719581168217959886

`lt[0, n/∏{e}[n, -#]]`
-/

namespace A030231.P4719581168217959886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), (-(Nat.factorization (f3 n) p : ℤ)) : ℤ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A030231.P4719581168217959886

namespace A030231

/-- `lt[0, n/∏{e}[n, -#]]` -/
def P4719581168217959886.Spec : Prop :=
  ∀ n, (P4719581168217959886.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P17416951816572582553

`lt[(1-n)², ∏{p}[n, #-2*n]]`
-/

namespace A030231.P17416951816572582553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - (2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030231.P17416951816572582553

namespace A030231

/-- `lt[(1-n)², ∏{p}[n, #-2*n]]` -/
def P17416951816572582553.Spec : Prop :=
  ∀ n, (P17416951816572582553.a n : ℤ) = A030231 (n + 1)

end A030231

/-! ## A030231.P11297400672898120440

`lt[2, (A008683(∏{p}[n, #])+1)*A047203(n+1)]`
-/

namespace A030231.P11297400672898120440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (∏ p ∈ Nat.primeFactors (f3 n), p) + 1) * A047203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030231.P11297400672898120440

namespace A030231

/-- `lt[2, (A008683(∏{p}[n, #])+1)*A047203(n+1)]` -/
def P11297400672898120440.Spec : Prop :=
  ∀ n, (P11297400672898120440.a n : ℤ) = A030231 (n + 1)

end A030231

/-!
# A030232: Numbers k such that the number of divisors of k! divides the number of divisors of (2k)!.

The programs for A030232, there is no canonical definition to state claims against.
-/

/-! ## A030232.P16419919310250269889

`record[and(A177938(n), A324347(n))]`
-/

namespace A030232.P16419919310250269889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A177938 n) (A324347 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030232.P16419919310250269889

/-! ## A030232.P3554909204190189769

`∑[A001222(A259807(n+1)+A001350(n))]`
-/

namespace A030232.P3554909204190189769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A259807 (n + 1) + A001350 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030232.P3554909204190189769

/-!
# A030233: Number of n-celled one-sided polyplets.

The programs for A030233, there is no canonical definition to state claims against.
-/

/-! ## A030233.P6816190070999481284

`A030235(n+1)+A030222(n+1)`
-/

namespace A030233.P6816190070999481284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030235 (n + 1) + A030222 (n + 1)

end

end A030233.P6816190070999481284

/-! ## A030233.P11870425808419360342

`A030234(n+1)+2*A030235(n+1)`
-/

namespace A030233.P11870425808419360342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030234 (n + 1) + 2 * A030235 (n + 1)

end

end A030233.P11870425808419360342

/-! ## A030233.P2322467725743635310

`2*A030222(n+1)-A030234(n+1)`
-/

namespace A030233.P2322467725743635310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030222 (n + 1) - A030234 (n + 1)

end

end A030233.P2322467725743635310

/-! ## A030233.P15503177972462231330

`A030235(n+1)+A194596(n+1)+Δ[A173271(n)]`
-/

namespace A030233.P15503177972462231330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030235 (n + 1) + (A194596 (n + 1) + (f1 (n + 1) - f1 n))

end

end A030233.P15503177972462231330

/-! ## A030233.P16030226401399685794

`A030235(n+1)+A194596(n+1)+A000105(n+1)`
-/

namespace A030233.P16030226401399685794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030235 (n + 1) + (A194596 (n + 1) + A000105 (n + 1))

end

end A030233.P16030226401399685794

/-!
# A030234: Number of n-celled polyplets having bilateral symmetry.

The programs for A030234, there is no canonical definition to state claims against.
-/

/-! ## A030234.P11791148923613083907

`A030222(n+1)-A030235(n+1)`
-/

namespace A030234.P11791148923613083907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030222 (n + 1) - A030235 (n + 1)

end

end A030234.P11791148923613083907

/-! ## A030234.P3680844286792978086

`2*A030222(n+1)-A030233(n+1)`
-/

namespace A030234.P3680844286792978086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030222 (n + 1) - A030233 (n + 1)

end

end A030234.P3680844286792978086

/-! ## A030234.P2601956459366616020

`A030233(n+1)-2*A030235(n+1)`
-/

namespace A030234.P2601956459366616020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030233 (n + 1) - 2 * A030235 (n + 1)

end

end A030234.P2601956459366616020

/-! ## A030234.P14748088338734014650

`A194596(n+1)+Δ[A173271(n)]-A030235(n+1)`
-/

namespace A030234.P14748088338734014650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194596 (n + 1) + (f1 (n + 1) - f1 n - A030235 (n + 1))

end

end A030234.P14748088338734014650

/-! ## A030234.P2071913701507512604

`A194596(n+1)+A000105(n+1)-A030235(n+1)`
-/

namespace A030234.P2071913701507512604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194596 (n + 1) + A000105 (n + 1) - A030235 (n + 1)

end

end A030234.P2071913701507512604

/-!
# A030235: Number of n-celled polyplets without bilateral symmetry.

The programs for A030235, there is no canonical definition to state claims against.
-/

/-! ## A030235.P16437959608879743587

`A030222(n+1)-A030234(n+1)`
-/

namespace A030235.P16437959608879743587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030222 (n + 1) - A030234 (n + 1)

end

end A030235.P16437959608879743587

/-! ## A030235.P7265798750362072151

`A030233(n+1)-A030222(n+1)`
-/

namespace A030235.P7265798750362072151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030233 (n + 1) - A030222 (n + 1)

end

end A030235.P7265798750362072151

/-! ## A030235.P12340771841026218549

`(A030233(n+1)-A030234(n+1))/2`
-/

namespace A030235.P12340771841026218549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030233 (n + 1) - A030234 (n + 1) : ℚ) / 2

end

end A030235.P12340771841026218549

/-! ## A030235.P9600860978427313054

`A030233(n+1)%A030222(-xor(n, -1))`
-/

namespace A030235.P9600860978427313054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030233 (n + 1)) (A030222 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A030235.P9600860978427313054

/-! ## A030235.P5171563290852649314

`A030233(n+1)%A030222(A291769(n))`
-/

namespace A030235.P5171563290852649314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030233 (n + 1)) (A030222 (A291769 n).toNat)

end

end A030235.P5171563290852649314

/-!
# A030236: Cycle-path coverings of a family of digraphs.

The programs for A030236, the canonical program `A030236.P9399209184618791052` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030236 has offset 0).

The definition of A030236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030236.P9399209184618791052

`3*a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=18`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030236

/-- `3*a(n-1)-a(n-2)+a(n-3)` -/
def P9399209184618791052.Spec : Prop :=
  ∀ n, P9399209184618791052.a n = A030236 n

theorem P9399209184618791052.correct : P9399209184618791052.Spec := by
  intro n
  simp only [A030236]

end A030236

/-! ## A030236.P16502408401906398486

`abs(Δ[A200752(n)+A098182(n)])`
-/

namespace A030236.P16502408401906398486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 n + A098182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A030236.P16502408401906398486

namespace A030236

/-- `abs(Δ[A200752(n)+A098182(n)])` -/
def P16502408401906398486.Spec : Prop :=
  ∀ n, P16502408401906398486.a n = A030236 n

end A030236

/-! ## A030236.P12525890169551389930

`A000038(n)+Δ[A200752(n)+A098182(n)]`
-/

namespace A030236.P12525890169551389930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 n + A098182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A030236.P12525890169551389930

namespace A030236

/-- `A000038(n)+Δ[A200752(n)+A098182(n)]` -/
def P12525890169551389930.Spec : Prop :=
  ∀ n, P12525890169551389930.a n = A030236 n

end A030236

/-! ## A030236.P14803098566582831700

`Δ[A098182(n)+A200752(n)+A158388(n)]`
-/

namespace A030236.P14803098566582831700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098182 n + (A200752 n + A158388 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030236.P14803098566582831700

namespace A030236

/-- `Δ[A098182(n)+A200752(n)+A158388(n)]` -/
def P14803098566582831700.Spec : Prop :=
  ∀ n, P14803098566582831700.a n = A030236 n

end A030236

/-! ## A030236.P1265819290768183627

`Δ[(A200752(n)+A098182(n))*A057427(n)]`
-/

namespace A030236.P1265819290768183627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A200752 n + A098182 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030236.P1265819290768183627

namespace A030236

/-- `Δ[(A200752(n)+A098182(n))*A057427(n)]` -/
def P1265819290768183627.Spec : Prop :=
  ∀ n, P1265819290768183627.a n = A030236 n

end A030236

/-! ## A030236.P18016358901398991964

`Δ[A200752(n)+A098182(n)]^(A000040(n+1)%2)`
-/

namespace A030236.P18016358901398991964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 n + A098182 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A030236.P18016358901398991964

namespace A030236

/-- `Δ[A200752(n)+A098182(n)]^(A000040(n+1)%2)` -/
def P18016358901398991964.Spec : Prop :=
  ∀ n, P18016358901398991964.a n = (A030236 n : ℚ)

end A030236

/-!
# A030237: Catalan's triangle with right border removed (n > 0, 0 <= k < n).

The programs for A030237, the canonical program `A030237.P12249412304419150663` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030237 has offset 1).

The definition of A030237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030237.P2344508599471545518

`A054445(A061579(n))`
-/

namespace A030237.P2344508599471545518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054445 (A061579 n).toNat

end

end A030237.P2344508599471545518

namespace A030237

/-- `A054445(A061579(n))` -/
def P2344508599471545518.Spec : Prop :=
  ∀ n, P2344508599471545518.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P17094003733322652227

`A009766(n)+a(n-1)%A028364(n)` with `a(0)=1`
-/

namespace A030237.P17094003733322652227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009766 n + Int.tmod (a (n - 1)) (A028364 n)

end

end A030237.P17094003733322652227

namespace A030237

/-- `A009766(n)+a(n-1)%A028364(n)` -/
def P17094003733322652227.Spec : Prop :=
  ∀ n, P17094003733322652227.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P10278410573578288975

`A009766(comp[∑[n-1]])`
-/

namespace A030237.P10278410573578288975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A030237.P10278410573578288975

namespace A030237

/-- `A009766(comp[∑[n-1]])` -/
def P10278410573578288975.Spec : Prop :=
  ∀ n, P10278410573578288975.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P6340564558488094870

`A009766(A007401(n+1))^round(n/(n+1))`
-/

namespace A030237.P6340564558488094870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009766 (A007401 (n + 1)).toNat : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) : ℤ)

end

end A030237.P6340564558488094870

namespace A030237

/-- `A009766(A007401(n+1))^round(n/(n+1))` -/
def P6340564558488094870.Spec : Prop :=
  ∀ n, P6340564558488094870.a n = (A030237 (n + 1) : ℚ)

end A030237

/-! ## A030237.P12249412304419150663

`gcd(A009766(A007401(n+1)), A010816(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A030237

/-- `gcd(A009766(A007401(n+1)), A010816(n))` -/
def P12249412304419150663.Spec : Prop :=
  ∀ n, (P12249412304419150663.a n : ℤ) = A030237 (n + 1)

theorem P12249412304419150663.correct : P12249412304419150663.Spec := by
  intro n
  simp only [A030237, Nat.add_sub_cancel]

end A030237

/-! ## A030237.P4186733357584068007

`or(A000007(n), A009766(A007401(n+1)))`
-/

namespace A030237.P4186733357584068007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A009766 (A007401 (n + 1)).toNat)

end

end A030237.P4186733357584068007

namespace A030237

/-- `or(A000007(n), A009766(A007401(n+1)))` -/
def P4186733357584068007.Spec : Prop :=
  ∀ n, P4186733357584068007.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P17624173861631643519

`or(A009766(A007401(n+1)), A073424(n))`
-/

namespace A030237.P17624173861631643519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009766 (A007401 (n + 1)).toNat) (A073424 n)

end

end A030237.P17624173861631643519

namespace A030237

/-- `or(A009766(A007401(n+1)), A073424(n))` -/
def P17624173861631643519.Spec : Prop :=
  ∀ n, P17624173861631643519.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P8542827879414961731

`A355173(A014132(n+1))`
-/

namespace A030237.P8542827879414961731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355173 (A014132 (n + 1)).toNat

end

end A030237.P8542827879414961731

namespace A030237

/-- `A355173(A014132(n+1))` -/
def P8542827879414961731.Spec : Prop :=
  ∀ n, P8542827879414961731.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P7765325487066995756

`A033184(A099375(n)+2+n)`
-/

namespace A030237.P7765325487066995756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A099375 n + 2 + (n : ℤ)).toNat

end

end A030237.P7765325487066995756

namespace A030237

/-- `A033184(A099375(n)+2+n)` -/
def P7765325487066995756.Spec : Prop :=
  ∀ n, P7765325487066995756.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P17506950515526290859

`A130020(A007401(A007401(n+2)))`
-/

namespace A030237.P17506950515526290859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (A007401 (A007401 (n + 2)).toNat).toNat

end

end A030237.P17506950515526290859

namespace A030237

/-- `A130020(A007401(A007401(n+2)))` -/
def P17506950515526290859.Spec : Prop :=
  ∀ n, P17506950515526290859.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P10260083764710446644

`A055450(A245300(n))`
-/

namespace A030237.P10260083764710446644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (A245300 n).toNat

end

end A030237.P10260083764710446644

namespace A030237

/-- `A055450(A245300(n))` -/
def P10260083764710446644.Spec : Prop :=
  ∀ n, P10260083764710446644.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P15790129904098112629

`A009766(A007401(n+1))*A316789(4*n+2)`
-/

namespace A030237.P15790129904098112629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A007401 (n + 1)).toNat * A316789 (4 * n + 2)

end

end A030237.P15790129904098112629

namespace A030237

/-- `A009766(A007401(n+1))*A316789(4*n+2)` -/
def P15790129904098112629.Spec : Prop :=
  ∀ n, P15790129904098112629.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P4342880689377974218

`A009766(A007401(n+1))%A185866(n+1)`
-/

namespace A030237.P4342880689377974218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009766 (A007401 (n + 1)).toNat) (A185866 (n + 1))

end

end A030237.P4342880689377974218

namespace A030237

/-- `A009766(A007401(n+1))%A185866(n+1)` -/
def P4342880689377974218.Spec : Prop :=
  ∀ n, P4342880689377974218.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P18128120386315503657

`A009766(A007401(n+1))%A000051(n)`
-/

namespace A030237.P18128120386315503657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009766 (A007401 (n + 1)).toNat) (A000051 n)

end

end A030237.P18128120386315503657

namespace A030237

/-- `A009766(A007401(n+1))%A000051(n)` -/
def P18128120386315503657.Spec : Prop :=
  ∀ n, P18128120386315503657.a n = A030237 (n + 1)

end A030237

/-! ## A030237.P117005395661573971

`A009766(A007401(n+1))*A009766(A000217(n))`
-/

namespace A030237.P117005395661573971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A007401 (n + 1)).toNat * A009766 (A000217 n).toNat

end

end A030237.P117005395661573971

namespace A030237

/-- `A009766(A007401(n+1))*A009766(A000217(n))` -/
def P117005395661573971.Spec : Prop :=
  ∀ n, P117005395661573971.a n = A030237 (n + 1)

end A030237

/-!
# A030238: Backwards shallow diagonal sums of Catalan triangle A009766.

The programs for A030238, the canonical program `A030238.P6212146511520901221` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030238 has offset 0).

The definition of A030238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030238.P3550297378143368906

`A132364(n+2)`
-/

namespace A030238.P3550297378143368906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132364 (n + 2)

end

end A030238.P3550297378143368906

namespace A030238

/-- `A132364(n+2)` -/
def P3550297378143368906.Spec : Prop :=
  ∀ n, P3550297378143368906.a n = A030238 n

end A030238

/-! ## A030238.P6212146511520901221

`a(n-1)+A000108(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030238

/-- `a(n-1)+A000108(n)-a(n-3)` -/
def P6212146511520901221.Spec : Prop :=
  ∀ n, P6212146511520901221.a n = A030238 n

theorem P6212146511520901221.correct : P6212146511520901221.Spec := by
  intro n
  simp only [A030238]

end A030238

/-! ## A030238.P4560377294171855927

`Δ[A139376(n+1)]-A139376(n)`
-/

namespace A030238.P4560377294171855927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A139376 n

end

end A030238.P4560377294171855927

namespace A030238

/-- `Δ[A139376(n+1)]-A139376(n)` -/
def P4560377294171855927.Spec : Prop :=
  ∀ n, P4560377294171855927.a n = A030238 n

end A030238

/-! ## A030238.P2603425544883316631

`A139376(n+2)-(A139376(n+1)+A139376(n))`
-/

namespace A030238.P2603425544883316631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139376 (n + 2) - (A139376 (n + 1) + A139376 n)

end

end A030238.P2603425544883316631

namespace A030238

/-- `A139376(n+2)-(A139376(n+1)+A139376(n))` -/
def P2603425544883316631.Spec : Prop :=
  ∀ n, P2603425544883316631.a n = A030238 n

end A030238

/-! ## A030238.P14811407324121375677

`A270363(n+1)-A176287(n)`
-/

namespace A030238.P14811407324121375677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270363 (n + 1) - A176287 n

end

end A030238.P14811407324121375677

namespace A030238

/-- `A270363(n+1)-A176287(n)` -/
def P14811407324121375677.Spec : Prop :=
  ∀ n, P14811407324121375677.a n = A030238 n

end A030238

/-!
# A030239: a(n) is the smallest number k such that k*2^(2^n) + 1 is prime.

The programs for A030239, there is no canonical definition to state claims against.
-/

/-! ## A030239.P987546577674520303

`A035050(2^n)`
-/

namespace A030239.P987546577674520303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035050 (2 ^ n)

end

end A030239.P987546577674520303

/-! ## A030239.P10398548406692770543

`and(-1, A035050(A000079(n)))`
-/

namespace A030239.P10398548406692770543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A035050 (A000079 n).toNat)

end

end A030239.P10398548406692770543

/-! ## A030239.P16902168593681027047

`A035050(A000079(n))+A011731(n)`
-/

namespace A030239.P16902168593681027047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035050 (A000079 n).toNat + A011731 n

end

end A030239.P16902168593681027047

/-! ## A030239.P6564436017098213507

`A035050(A000079(n))+A011734(n)`
-/

namespace A030239.P6564436017098213507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035050 (A000079 n).toNat + A011734 n

end

end A030239.P6564436017098213507

/-! ## A030239.P13658921004989659906

`A035050(A000079(n))*A291168(n)`
-/

namespace A030239.P13658921004989659906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035050 (A000079 n).toNat * A291168 n

end

end A030239.P13658921004989659906

/-!
# A030240: Scaled Chebyshev U-polynomials evaluated at sqrt(7)/2.

The programs for A030240, the canonical program `A030240.P5659930559004348841` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030240 has offset 0).

The definition of A030240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030240.P5659930559004348841

`7*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030240

/-- `7*a(n-1)-7*a(n-2)` -/
def P5659930559004348841.Spec : Prop :=
  ∀ n, P5659930559004348841.a n = A030240 n

theorem P5659930559004348841.correct : P5659930559004348841.Spec := by
  intro n
  simp only [A030240]

end A030240

/-! ## A030240.P9447234674132167373

`7*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A030240.P9447234674132167373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  7 * (a (n - 1) - a (n - 2))

end

end A030240.P9447234674132167373

namespace A030240

/-- `7*(a(n-1)-a(n-2))` -/
def P9447234674132167373.Spec : Prop :=
  ∀ n, P9447234674132167373.a n = A030240 n

theorem P9447234674132167373.correct : P9447234674132167373.Spec := by
  intro n
  simp only [A030240, Nat.add_sub_cancel, A030240.P9447234674132167373.a, A030240.P5659930559004348841.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A030240

/-! ## A030240.P931112804765552490

`A342129(A155212(n+4))`
-/

namespace A030240.P931112804765552490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342129 (A155212 (n + 4)).toNat

end

end A030240.P931112804765552490

namespace A030240

/-- `A342129(A155212(n+4))` -/
def P931112804765552490.Spec : Prop :=
  ∀ n, P931112804765552490.a n = A030240 n

end A030240

/-! ## A030240.P14231697770456441881

`A342129(eq[7, A025581(n)])`
-/

namespace A030240.P14231697770456441881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030240.P14231697770456441881

namespace A030240

/-- `A342129(eq[7, A025581(n)])` -/
def P14231697770456441881.Spec : Prop :=
  ∀ n, P14231697770456441881.a n = A030240 n

end A030240

/-! ## A030240.P14898854375607491425

`A342129(eq[8, A193739(n)])`
-/

namespace A030240.P14898854375607491425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030240.P14898854375607491425

namespace A030240

/-- `A342129(eq[8, A193739(n)])` -/
def P14898854375607491425.Spec : Prop :=
  ∀ n, P14898854375607491425.a n = A030240 n

end A030240

/-! ## A030240.P15245424971862115763

`A342129(eq[8, A004736(n+1)])`
-/

namespace A030240.P15245424971862115763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030240.P15245424971862115763

namespace A030240

/-- `A342129(eq[8, A004736(n+1)])` -/
def P15245424971862115763.Spec : Prop :=
  ∀ n, P15245424971862115763.a n = A030240 n

end A030240

/-!
# A030241: Minimal determinant of any n-dimensional even lattice.

The programs for A030241, the canonical program `A030241.P11357588331415714441` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030241 has offset 0).

The definition of A030241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030241.P11357588331415714441

`floor(log(A080709(n+1)))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030241

/-- `floor(log(A080709(n+1)))` -/
def P11357588331415714441.Spec : Prop :=
  ∀ n, P11357588331415714441.a n = A030241 n

theorem P11357588331415714441.correct : P11357588331415714441.Spec := by
  intro n
  simp only [A030241]

end A030241

/-!
# A030242: Number of n-point nonisomorphic relations with no symmetry.

The programs for A030242, there is no canonical definition to state claims against.
-/

/-! ## A030242.P5829064580187459504

`A000595(n)-A030243(n)`
-/

namespace A030242.P5829064580187459504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000595 n - A030243 n

end

end A030242.P5829064580187459504

/-!
# A030243: Number of nonisomorphic relations with a nontrivial symmetry.

The programs for A030243, there is no canonical definition to state claims against.
-/

/-! ## A030243.P6974487611185752675

`A000595(n)-A030242(n)`
-/

namespace A030243.P6974487611185752675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000595 n - A030242 n

end

end A030243.P6974487611185752675

/-!
# A030244: Number of connected nonisomorphic relations with no symmetry.

The programs for A030244, there is no canonical definition to state claims against.
-/

/-! ## A030244.P5818336241050422954

`A260435(A213796(n)+n)`
-/

namespace A030244.P5818336241050422954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260435 (A213796 n + (n : ℤ)).toNat

end

end A030244.P5818336241050422954

/-!
# A030245: Number of nonisomorphic groupoids with no symmetry.

The programs for A030245, there is no canonical definition to state claims against.
-/

/-! ## A030245.P16083528769019889011

`A079171(or(1, 2^n-1))`
-/

namespace A030245.P16083528769019889011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat

end

end A030245.P16083528769019889011

/-!
# A030246: Number of nonisomorphic groupoids with a nontrivial symmetry.

The programs for A030246, there is no canonical definition to state claims against.
-/

/-! ## A030246.P8907290240191022827

`A001329(n)-A030245(n)`
-/

namespace A030246.P8907290240191022827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001329 n - A030245 n

end

end A030246.P8907290240191022827

/-!
# A030247: Number of nonisomorphic idempotent groupoids.

The programs for A030247, there is no canonical definition to state claims against.
-/

/-! ## A030247.P18341940206625875862

`A038018(∑[n]+n)`
-/

namespace A030247.P18341940206625875862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038018 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A030247.P18341940206625875862

/-!
# A030248: Number of nonisomorphic idempotent groupoids with no symmetry.

The programs for A030248, there is no canonical definition to state claims against.
-/

/-! ## A030248.P12611707709884566493

`A038019(∑[n]+n)`
-/

namespace A030248.P12611707709884566493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038019 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A030248.P12611707709884566493

/-!
# A030249: Number of nonisomorphic idempotent groupoids with a nontrivial symmetry.

The programs for A030249, there is no canonical definition to state claims against.
-/

/-! ## A030249.P13852910072300414958

`A038020(∑[n]+n)`
-/

namespace A030249.P13852910072300414958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038020 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A030249.P13852910072300414958

/-!
# A030250: Number of nonisomorphic groupoids with no idempotents.

The programs for A030250, there is no canonical definition to state claims against.
-/

/-! ## A030250.P2331614259456400837

`A038018(∑[n])`
-/

namespace A030250.P2331614259456400837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038018 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030250.P2331614259456400837

/-!
# A030251: Number of nonisomorphic groupoids with no idempotents and no symmetry.

The programs for A030251, there is no canonical definition to state claims against.
-/

/-! ## A030251.P17697840060944458882

`A038019(∑[n])`
-/

namespace A030251.P17697840060944458882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038019 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030251.P17697840060944458882

/-!
# A030252: Number of nonisomorphic groupoids with no idempotents and a nontrivial symmetry.

The programs for A030252, there is no canonical definition to state claims against.
-/

/-! ## A030252.P14955976824007335134

`(a(n-2)^7-n)²` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A030252.P14955976824007335134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  (a (n - 2) ^ 7 - (n : ℤ)) ^ 2

end

end A030252.P14955976824007335134

/-!
# A030253: Number of nonisomorphic groupoids with 1 idempotent.

The programs for A030253, there is no canonical definition to state claims against.
-/

/-! ## A030253.P2705718614024455804

`record[A038018(comp[∑[n]])]`
-/

namespace A030253.P2705718614024455804
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038018 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030253.P2705718614024455804

/-!
# A030255: Number of nonisomorphic commutative groupoids with no symmetry.

The programs for A030255, there is no canonical definition to state claims against.
-/

/-! ## A030255.P15283618915556453188

`A001425(n)-A030256(n)`
-/

namespace A030255.P15283618915556453188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001425 n - A030256 n

end

end A030255.P15283618915556453188

/-!
# A030256: Number of nonisomorphic commutative groupoids with a nontrivial symmetry.

The programs for A030256, there is no canonical definition to state claims against.
-/

/-! ## A030256.P17329911221260079966

`A001425(n)-A030255(n)`
-/

namespace A030256.P17329911221260079966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001425 n - A030255 n

end

end A030256.P17329911221260079966

/-!
# A030257: Number of nonisomorphic commutative idempotent groupoids.

The programs for A030257, there is no canonical definition to state claims against.
-/

/-! ## A030257.P10040885260631769469

`A038021(∑[n]+n)`
-/

namespace A030257.P10040885260631769469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038021 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A030257.P10040885260631769469

/-! ## A030257.P14009308422031734555

`or(floor(1/(n+1)), A038021(n*(n+3)/2))`
-/

namespace A030257.P14009308422031734555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A038021 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat)

end

end A030257.P14009308422031734555

/-!
# A030258: Number of nonisomorphic commutative idempotent groupoids with no symmetry.

The programs for A030258, there is no canonical definition to state claims against.
-/

/-! ## A030258.P8541052649507496419

`A038022(∑[n]+n)`
-/

namespace A030258.P8541052649507496419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038022 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A030258.P8541052649507496419

/-!
# A030259: Number of nonisomorphic commutative idempotent groupoids with a nontrivial symmetry.

The programs for A030259, there is no canonical definition to state claims against.
-/

/-! ## A030259.P4516232912380063311

`floor(A009812(n)/10)`
-/

namespace A030259.P4516232912380063311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009812 n : ℚ) / 10⌋

end

end A030259.P4516232912380063311

/-!
# A030260: Number of nonisomorphic commutative groupoids with no idempotents.

The programs for A030260, there is no canonical definition to state claims against.
-/

/-! ## A030260.P3238937997351848849

`A038021(∑[n])`
-/

namespace A030260.P3238937997351848849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038021 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030260.P3238937997351848849

/-! ## A030260.P1747639094905397436

`A030262(n)+A030261(n)`
-/

namespace A030260.P1747639094905397436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030262 n + A030261 n

end

end A030260.P1747639094905397436

/-!
# A030261: Number of nonisomorphic commutative groupoids with no idempotents and no symmetry.

The programs for A030261, there is no canonical definition to state claims against.
-/

/-! ## A030261.P3521825844843166746

`A038022(∑[n])`
-/

namespace A030261.P3521825844843166746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038022 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030261.P3521825844843166746

/-!
# A030262: Number of nonisomorphic commutative groupoids with no idempotents and a nontrivial symmetry.

The programs for A030262, there is no canonical definition to state claims against.
-/

/-! ## A030262.P2296540639154217490

`A038023(∑[n])`
-/

namespace A030262.P2296540639154217490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038023 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030262.P2296540639154217490

/-!
# A030263: Number of nonisomorphic commutative groupoids with 1 idempotent.

The programs for A030263, there is no canonical definition to state claims against.
-/

/-! ## A030263.P5553704052285527513

`record[A038021(comp[∑[n]])]`
-/

namespace A030263.P5553704052285527513
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038021 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030263.P5553704052285527513

/-! ## A030263.P16351717914937266343

`A038021(∑[n+1]+1)`
-/

namespace A030263.P16351717914937266343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038021 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A030263.P16351717914937266343

/-!
# A030264: Number of nonisomorphic commutative groupoids with 1 idempotent and no symmetry.

The programs for A030264, there is no canonical definition to state claims against.
-/

/-! ## A030264.P7633608088117385377

`record[A038022(comp[∑[n]])]`
-/

namespace A030264.P7633608088117385377
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038022 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030264.P7633608088117385377

/-!
# A030265: Number of nonisomorphic commutative groupoids with 1 idempotent and a nontrivial symmetry.

The programs for A030265, there is no canonical definition to state claims against.
-/

/-! ## A030265.P1880375002467563439

`A038023(∑[n+1]+1)`
-/

namespace A030265.P1880375002467563439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038023 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A030265.P1880375002467563439

/-!
# A030266: Shifts left under COMPOSE transform with itself.

The programs for A030266, there is no canonical definition to state claims against.
-/

/-! ## A030266.P8110461548557723861

`A379598(A034856(2*n+3)%A000217(n+2))`
-/

namespace A030266.P8110461548557723861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379598 (Int.tmod (A034856 (2 * n + 3)) (A000217 (n + 2))).toNat

end

end A030266.P8110461548557723861

/-! ## A030266.P13939294572009537480

`A125278(A102366(n))%A001448(n)`
-/

namespace A030266.P13939294572009537480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125278 (A102366 n).toNat) (A001448 n)

end

end A030266.P13939294572009537480

/-! ## A030266.P16597785866627342601

`A003056(A259870(n)²)`
-/

namespace A030266.P16597785866627342601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A259870 n ^ 2).toNat

end

end A030266.P16597785866627342601

/-!
# A030267: Compose the natural numbers with themselves, A(x) = B(B(x)) where B(x) = x/(1-x)^2 is the generating function for natural numbers.

The programs for A030267, the canonical program `A030267.P5738118166235282641` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030267 has offset 1).

The definition of A030267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030267.P5738118166235282641

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=46`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030267

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P5738118166235282641.Spec : Prop :=
  ∀ n, P5738118166235282641.a n = A030267 (n + 1)

theorem P5738118166235282641.correct : P5738118166235282641.Spec := by
  intro n
  simp only [A030267, Nat.add_sub_cancel]

end A030267

/-! ## A030267.P405253533093986269

`∑[A038731(n)]`
-/

namespace A030267.P405253533093986269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030267.P405253533093986269

namespace A030267

/-- `∑[A038731(n)]` -/
def P405253533093986269.Spec : Prop :=
  ∀ n, P405253533093986269.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P11422569237849500647

`A129720(Δ[n²])`
-/

namespace A030267.P11422569237849500647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030267.P11422569237849500647

namespace A030267

/-- `A129720(Δ[n²])` -/
def P11422569237849500647.Spec : Prop :=
  ∀ n, P11422569237849500647.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P12044468515568065054

`A134512(Δ[n²])`
-/

namespace A030267.P12044468515568065054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030267.P12044468515568065054

namespace A030267

/-- `A134512(Δ[n²])` -/
def P12044468515568065054.Spec : Prop :=
  ∀ n, P12044468515568065054.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P5384021013480571173

`∑[A134512(2*n)]`
-/

namespace A030267.P5384021013480571173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030267.P5384021013480571173

namespace A030267

/-- `∑[A134512(2*n)]` -/
def P5384021013480571173.Spec : Prop :=
  ∀ n, P5384021013480571173.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P1606491944432515707

`∑[A291241(2*n)]`
-/

namespace A030267.P1606491944432515707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030267.P1606491944432515707

namespace A030267

/-- `∑[A291241(2*n)]` -/
def P1606491944432515707.Spec : Prop :=
  ∀ n, P1606491944432515707.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P13271942173041659508

`A094864(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A030267.P13271942173041659508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094864 n + 2 * a (n - 1)

end

end A030267.P13271942173041659508

namespace A030267

/-- `A094864(n)+2*a(n-1)` -/
def P13271942173041659508.Spec : Prop :=
  ∀ n, P13271942173041659508.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P9212881708108168150

`record[A134512(A014681(n)+1)]`
-/

namespace A030267.P9212881708108168150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030267.P9212881708108168150

namespace A030267

/-- `record[A134512(A014681(n)+1)]` -/
def P9212881708108168150.Spec : Prop :=
  ∀ n, P9212881708108168150.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P15464231480156402637

`A027991(n+1)+A001654(n)`
-/

namespace A030267.P15464231480156402637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027991 (n + 1) + A001654 n

end

end A030267.P15464231480156402637

namespace A030267

/-- `A027991(n+1)+A001654(n)` -/
def P15464231480156402637.Spec : Prop :=
  ∀ n, P15464231480156402637.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P5324165975006789557

`A290917(n)-A001906(n+1)`
-/

namespace A030267.P5324165975006789557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290917 n - A001906 (n + 1)

end

end A030267.P5324165975006789557

namespace A030267

/-- `A290917(n)-A001906(n+1)` -/
def P5324165975006789557.Spec : Prop :=
  ∀ n, P5324165975006789557.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P5964394218640450654

`2*A038731(n)-A094864(n)`
-/

namespace A030267.P5964394218640450654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038731 n - A094864 n

end

end A030267.P5964394218640450654

namespace A030267

/-- `2*A038731(n)-A094864(n)` -/
def P5964394218640450654.Spec : Prop :=
  ∀ n, P5964394218640450654.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P11832002079300710503

`A024458(2*n+1)+A001654(n)`
-/

namespace A030267.P11832002079300710503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 (2 * n + 1) + A001654 n

end

end A030267.P11832002079300710503

namespace A030267

/-- `A024458(2*n+1)+A001654(n)` -/
def P11832002079300710503.Spec : Prop :=
  ∀ n, P11832002079300710503.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P16073434726328258040

`A059502(n+2)-A001519(n+2)`
-/

namespace A030267.P16073434726328258040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 2) - A001519 (n + 2)

end

end A030267.P16073434726328258040

namespace A030267

/-- `A059502(n+2)-A001519(n+2)` -/
def P16073434726328258040.Spec : Prop :=
  ∀ n, P16073434726328258040.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P13110927437173228640

`A129720(2*n)+A059502(n+1)`
-/

namespace A030267.P13110927437173228640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 (2 * n) + A059502 (n + 1)

end

end A030267.P13110927437173228640

namespace A030267

/-- `A129720(2*n)+A059502(n+1)` -/
def P13110927437173228640.Spec : Prop :=
  ∀ n, P13110927437173228640.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P5766313092772976825

`A129722(2*n)+A059502(n+1)`
-/

namespace A030267.P5766313092772976825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n) + A059502 (n + 1)

end

end A030267.P5766313092772976825

namespace A030267

/-- `A129722(2*n)+A059502(n+1)` -/
def P5766313092772976825.Spec : Prop :=
  ∀ n, P5766313092772976825.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P3818804832707414892

`∑[A121486(n+1)+A121483(n+1)]`
-/

namespace A030267.P3818804832707414892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121486 (n + 1) + A121483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030267.P3818804832707414892

namespace A030267

/-- `∑[A121486(n+1)+A121483(n+1)]` -/
def P3818804832707414892.Spec : Prop :=
  ∀ n, P3818804832707414892.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P2911786935518452424

`A129722(2*n+1)+A001906(n+1)`
-/

namespace A030267.P2911786935518452424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n + 1) + A001906 (n + 1)

end

end A030267.P2911786935518452424

namespace A030267

/-- `A129722(2*n+1)+A001906(n+1)` -/
def P2911786935518452424.Spec : Prop :=
  ∀ n, P2911786935518452424.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P13924021854303824549

`A129722(2*n+1)+A088305(n+1)`
-/

namespace A030267.P13924021854303824549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n + 1) + A088305 (n + 1)

end

end A030267.P13924021854303824549

namespace A030267

/-- `A129722(2*n+1)+A088305(n+1)` -/
def P13924021854303824549.Spec : Prop :=
  ∀ n, P13924021854303824549.a n = A030267 (n + 1)

end A030267

/-! ## A030267.P3831632586733080350

`A129722(2*n+1)+Δ[A094967(2*n)]`
-/

namespace A030267.P3831632586733080350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A030267.P3831632586733080350

namespace A030267

/-- `A129722(2*n+1)+Δ[A094967(2*n)]` -/
def P3831632586733080350.Spec : Prop :=
  ∀ n, P3831632586733080350.a n = A030267 (n + 1)

end A030267

/-!
# A030268: Number of nonisomorphic connected partial lattices.

The programs for A030268, there is no canonical definition to state claims against.
-/

/-! ## A030268.P7442804705488493251

`A006966(n+2)-A030269(n)`
-/

namespace A030268.P7442804705488493251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 (n + 2) - A030269 n

end

end A030268.P7442804705488493251

/-! ## A030268.P44721722465547370

`A097277(n+1)-A133949(A002135(n))`
-/

namespace A030268.P44721722465547370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097277 (n + 1) - A133949 (A002135 n).toNat

end

end A030268.P44721722465547370

/-! ## A030268.P7207716947477871469

`A097277(n+1)-A340999(A285374(3*n+5))`
-/

namespace A030268.P7207716947477871469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097277 (n + 1) - A340999 ((A285374 (3 * n + 5)).toNat + 204)

end

end A030268.P7207716947477871469

/-!
# A030269: Number of nonisomorphic disconnected partial lattices.

The programs for A030269, there is no canonical definition to state claims against.
-/

/-! ## A030269.P15294167202881990790

`A006966(n+2)-A030268(n)`
-/

namespace A030269.P15294167202881990790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 (n + 2) - A030268 n

end

end A030269.P15294167202881990790

/-! ## A030269.P11146456421024759055

`A059995(A346428(n)+7)`
-/

namespace A030269.P11146456421024759055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A346428 n + 7).toNat

end

end A030269.P11146456421024759055

/-! ## A030269.P10875048616388396738

`xor(A058122(n), A059253(n+1))`
-/

namespace A030269.P10875048616388396738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058122 n) (A059253 (n + 1))

end

end A030269.P10875048616388396738

/-! ## A030269.P17425160270496974010

`xor(A058122(n), A301564(A151800(n)))`
-/

namespace A030269.P17425160270496974010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058122 n) (A301564 (A151800 n).toNat)

end

end A030269.P17425160270496974010

/-!
# A030270: Number of nonisomorphic and nonantiisomorphic reflexive transitive and cotransitive (complement is transitive) relations.

The programs for A030270, the canonical program `A030270.P806497287701641262` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030270 has offset 0).

The definition of A030270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030270.P806497287701641262

`(A001333(n)+A001333(floor((n+2)/2)))/2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030270

/-- `(A001333(n)+A001333(floor((n+2)/2)))/2` -/
def P806497287701641262.Spec : Prop :=
  ∀ n, P806497287701641262.a n = (A030270 n : ℚ)

end A030270

/-! ## A030270.P15922294039872015947

`A171842(n)+∑[A116558(A237420(n))]`
-/

namespace A030270.P15922294039872015947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030270.P15922294039872015947

namespace A030270

/-- `A171842(n)+∑[A116558(A237420(n))]` -/
def P15922294039872015947.Spec : Prop :=
  ∀ n, P15922294039872015947.a n = A030270 n

end A030270

/-! ## A030270.P9605680415584101825

`A171842(A008619(n))+A171842(n)-1`
-/

namespace A030270.P9605680415584101825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (A008619 n).toNat + (A171842 n - 1)

end

end A030270.P9605680415584101825

namespace A030270

/-- `A171842(A008619(n))+A171842(n)-1` -/
def P9605680415584101825.Spec : Prop :=
  ∀ n, P9605680415584101825.a n = A030270 n

end A030270

/-! ## A030270.P11552170517559322418

`(A152113(n+1)+A152113(A053438(n)))/2`
-/

namespace A030270.P11552170517559322418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152113 (n + 1) + A152113 (A053438 n).toNat : ℚ) / 2

end

end A030270.P11552170517559322418

namespace A030270

/-- `(A152113(n+1)+A152113(A053438(n)))/2` -/
def P11552170517559322418.Spec : Prop :=
  ∀ n, P11552170517559322418.a n = (A030270 n : ℚ)

end A030270

/-! ## A030270.P16927041441462121092

`A247311(A016789(n))+A024537(A004526(n))`
-/

namespace A030270.P16927041441462121092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (A016789 n).toNat + A024537 (A004526 n).toNat

end

end A030270.P16927041441462121092

namespace A030270

/-- `A247311(A016789(n))+A024537(A004526(n))` -/
def P16927041441462121092.Spec : Prop :=
  ∀ n, P16927041441462121092.a n = A030270 n

end A030270

/-! ## A030270.P13248020997075601440

`A247311(A016789(n))+A171842(A008619(n))`
-/

namespace A030270.P13248020997075601440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (A016789 n).toNat + A171842 (A008619 n).toNat

end

end A030270.P13248020997075601440

namespace A030270

/-- `A247311(A016789(n))+A171842(A008619(n))` -/
def P13248020997075601440.Spec : Prop :=
  ∀ n, P13248020997075601440.a n = A030270 n

end A030270

/-!
# A030272: Number of partitions of n^3 into distinct cubes.

The programs for A030272, there is no canonical definition to state claims against.
-/

/-! ## A030272.P99136266836793711

`A279329(n^3)`
-/

namespace A030272.P99136266836793711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (n ^ 3)

end

end A030272.P99136266836793711

/-! ## A030272.P14235740782823219589

`or(char[1], A279329(n*n²))`
-/

namespace A030272.P14235740782823219589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A279329 (n * n ^ 2))

end

end A030272.P14235740782823219589

/-! ## A030272.P5691258771514919205

`and(-1, A279329(A000578(n)))`
-/

namespace A030272.P5691258771514919205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A279329 (A000578 n).toNat)

end

end A030272.P5691258771514919205

/-! ## A030272.P3181171011637101851

`∑{d}[A279329(n*n²), A000010(#)]`
-/

namespace A030272.P3181171011637101851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (n * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A030272.P3181171011637101851

/-! ## A030272.P7687942563039813346

`A279329(n*n²)/A007318(∑[n])`
-/

namespace A030272.P7687942563039813346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279329 (n * n ^ 2) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A030272.P7687942563039813346

/-!
# A030273: Number of partitions of n^2 into distinct squares.

The programs for A030273, there is no canonical definition to state claims against.
-/

/-! ## A030273.P3730777457600894204

`A033461(n²)`
-/

namespace A030273.P3730777457600894204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (n ^ 2)

end

end A030273.P3730777457600894204

/-! ## A030273.P11101823642050263100

`lcm((-1)^n, A033461(n^ceil(atan(n))))`
-/

namespace A030273.P11101823642050263100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A033461 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat)

end

end A030273.P11101823642050263100

/-! ## A030273.P11373383894033206437

`and(-1, A033461(A000290(n)))`
-/

namespace A030273.P11373383894033206437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A033461 (A000290 n).toNat)

end

end A030273.P11373383894033206437

/-! ## A030273.P775080492818104795

`and(-1, A033461(A253909(n)))`
-/

namespace A030273.P775080492818104795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A033461 (A253909 n).toNat)

end

end A030273.P775080492818104795

/-! ## A030273.P12761096303675682445

`A033461(A000290(n))^A178334(n)`
-/

namespace A030273.P12761096303675682445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033461 (A000290 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A030273.P12761096303675682445

/-! ## A030273.P16112504427528727133

`A033461(A000290(n))%A000051(n)`
-/

namespace A030273.P16112504427528727133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033461 (A000290 n).toNat) (A000051 n)

end

end A030273.P16112504427528727133

/-! ## A030273.P2039397062281915150

`gcd(A000038(n), A033461(A000290(n)))`
-/

namespace A030273.P2039397062281915150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A033461 (A000290 n).toNat)

end

end A030273.P2039397062281915150

/-! ## A030273.P5732481337423439020

`char[A069770(n)]*A033461(A000290(n))`
-/

namespace A030273.P5732481337423439020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A033461 (A000290 n).toNat

end

end A030273.P5732481337423439020

/-! ## A030273.P13764181456229793364

`char[A089598(n)]*A033461(A000290(n))`
-/

namespace A030273.P13764181456229793364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A033461 (A000290 n).toNat

end

end A030273.P13764181456229793364

/-! ## A030273.P8670326794930672451

`char[A225901(n)]*A033461(A000290(n))`
-/

namespace A030273.P8670326794930672451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A033461 (A000290 n).toNat

end

end A030273.P8670326794930672451

/-! ## A030273.P3644784520667206103

`char[A263273(n)]*A033461(A000290(n))`
-/

namespace A030273.P3644784520667206103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A033461 (A000290 n).toNat

end

end A030273.P3644784520667206103

/-! ## A030273.P4621273139082019754

`A033461(A000290(n))+A000007(n+1)`
-/

namespace A030273.P4621273139082019754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A000290 n).toNat + A000007 (n + 1)

end

end A030273.P4621273139082019754

/-! ## A030273.P16448676530347874376

`A033461(A000290(n))/A178334(n+1)`
-/

namespace A030273.P16448676530347874376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033461 (A000290 n).toNat : ℚ) / (A178334 (n + 1) : ℚ)

end

end A030273.P16448676530347874376

/-! ## A030273.P3962297779976357329

`A007318(C(2, n))*A033461(A000290(n))`
-/

namespace A030273.P3962297779976357329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A033461 (A000290 n).toNat

end

end A030273.P3962297779976357329

/-! ## A030273.P2810013920558926432

`A033461(A000290(n))/A007318(C(3, n))`
-/

namespace A030273.P2810013920558926432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033461 (A000290 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A030273.P2810013920558926432

/-! ## A030273.P4076269676206737711

`A033461(A000290(n))^A014963(∑[n+1])`
-/

namespace A030273.P4076269676206737711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033461 (A000290 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A030273.P4076269676206737711

/-! ## A030273.P4211543209589257040

`A033461(A000290(n))+A008683(4*(n+1))`
-/

namespace A030273.P4211543209589257040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A000290 n).toNat + A008683 (4 * (n + 1))

end

end A030273.P4211543209589257040

/-! ## A030273.P5963001333906199214

`A033461(A000290(n))^(A000040(n+1)%2)`
-/

namespace A030273.P5963001333906199214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033461 (A000290 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A030273.P5963001333906199214

/-! ## A030273.P5398839848914269518

`A000108(C(2, n+2))*A033461(A000290(n))`
-/

namespace A030273.P5398839848914269518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A033461 (A000290 n).toNat

end

end A030273.P5398839848914269518

/-! ## A030273.P12356040125008206936

`A033461(A000290(n))+A025441(A025442(n))`
-/

namespace A030273.P12356040125008206936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A000290 n).toNat + A025441 (A025442 n).toNat

end

end A030273.P12356040125008206936

/-!
# A030275: Denominators of sequence {b(1), b(2),...} which when COMPOSED with itself gives {1,2,3,...}.

The programs for A030275, there is no canonical definition to state claims against.
-/

/-! ## A030275.P14420968209803540950

`A200322(A011782(n)-A200522(n))`
-/

namespace A030275.P14420968209803540950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (A011782 n - A200522 n).toNat

end

end A030275.P14420968209803540950

/-! ## A030275.P1913109759965444256

`A200322(A131577(n)-A200522(n))`
-/

namespace A030275.P1913109759965444256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (A131577 n - A200522 n).toNat

end

end A030275.P1913109759965444256

/-! ## A030275.P9063226259021490645

`A004525(A063982(n+1)^A130044(n))`
-/

namespace A030275.P9063226259021490645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A063982 (n + 1) : ℚ) ^ (A130044 n : ℤ))).toNat

end

end A030275.P9063226259021490645

/-! ## A030275.P12018120164662419718

`A001316(A006413(n+1)%A006397(n+2))`
-/

namespace A030275.P12018120164662419718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Int.tmod (A006413 (n + 1)) (A006397 (n + 2))).toNat

end

end A030275.P12018120164662419718

/-! ## A030275.P12141640962313857135

`A011782(and(A038147(n+1), A130108(n+1)))`
-/

namespace A030275.P12141640962313857135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (Int.land (A038147 (n + 1)) (A130108 (n + 1))).toNat

end

end A030275.P12141640962313857135

/-!
# A030276: Shifts left under COMPOSE transform.

The programs for A030276, there is no canonical definition to state claims against.
-/

/-! ## A030276.P6489898305635372128

`A000079(n+1)*A382450(n)`
-/

namespace A030276.P6489898305635372128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A382450 n

end

end A030276.P6489898305635372128

/-!
# A030277: Shifts left 2 places under COMPOSE transform.

The programs for A030277, there is no canonical definition to state claims against.
-/

/-! ## A030277.P13062666140919893119

`A153206(A102366(n)+A004275(n))`
-/

namespace A030277.P13062666140919893119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153206 (A102366 n + A004275 n).toNat

end

end A030277.P13062666140919893119

/-! ## A030277.P5311926935247877478

`A153206(eq[A106356(n+1), A297773(n+1)])`
-/

namespace A030277.P5311926935247877478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153206 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030277.P5311926935247877478

/-! ## A030277.P11641248912085475786

`A001462(floor(A319364(n)/(A004275(n+1)-n)))`
-/

namespace A030277.P11641248912085475786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌊(A319364 n : ℚ) / (A004275 (n + 1) - (n : ℤ) : ℚ)⌋.toNat

end

end A030277.P11641248912085475786

/-!
# A030278: COMPOSE primes with primes.

The programs for A030278, there is no canonical definition to state claims against.
-/

/-! ## A030278.P16808820747703743324

`A344228(n+1)+A127477(A000178(n))`
-/

namespace A030278.P16808820747703743324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344228 (n + 1) + A127477 (A000178 n).toNat

end

end A030278.P16808820747703743324

/-!
# A030279: COMPOSE squares with squares.

The programs for A030279, there is no canonical definition to state claims against.
-/

/-! ## A030279.P2595304960215003132

`A079935(n+1)+A028242(A172067(n))`
-/

namespace A030279.P2595304960215003132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 1) + A028242 (A172067 n).toNat

end

end A030279.P2595304960215003132

/-!
# A030280: COMPOSE triangular numbers with triangular numbers.

The programs for A030280, there is no canonical definition to state claims against.
-/

/-! ## A030280.P1548735282006703425

`∑[∑[∑[A382615(n)]]]`
-/

namespace A030280.P1548735282006703425
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030280.P1548735282006703425

/-! ## A030280.P8155969745395115832

`A382615(n+1)-A382616(n+1)`
-/

namespace A030280.P8155969745395115832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382615 (n + 1) - A382616 (n + 1)

end

end A030280.P8155969745395115832

/-!
# A030281: COMPOSE natural numbers with primes.

The programs for A030281, there is no canonical definition to state claims against.
-/

/-! ## A030281.P3328311289868245613

`A110655(floor(sqrt(A207086(n+1))))`
-/

namespace A030281.P3328311289868245613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.sqrt (A207086 (n + 1))).toNat

end

end A030281.P3328311289868245613

/-!
# A030282: COMPOSE primes with natural numbers.

The programs for A030282, there is no canonical definition to state claims against.
-/

/-! ## A030282.P14548652663514155781

`A070098(Δ[Δ[A163872(n)]])`
-/

namespace A030282.P14548652663514155781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (f1 (n + 1) - f1 n).toNat

end

end A030282.P14548652663514155781

/-! ## A030282.P409414704511594788

`A248607(A212446(a(n-1)))` with `a(0)=2`
-/

namespace A030282.P409414704511594788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A248607 (A212446 (a (n - 1)).toNat).toNat

end

end A030282.P409414704511594788

/-!
# A030283: a(0) = 0; for n>0, a(n) is the smallest number greater than a(n-1) which does not use any digit used by a(n-1).

The programs for A030283, there is no canonical definition to state claims against.
-/

/-! ## A030283.P1518858423628851358

`floor(A030285(n+10)/10)`
-/

namespace A030283.P1518858423628851358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030285 (n + 10) : ℚ) / 10⌋

end

end A030283.P1518858423628851358

/-! ## A030283.P5495391967640282998

`ceil(A030285(n+10)/10-ceil(A020952(n)/98))`
-/

namespace A030283.P5495391967640282998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030285 (n + 10) : ℚ) / 10 - (⌈(A020952 n : ℚ) / 98⌉ : ℚ)⌉

end

end A030283.P5495391967640282998

/-! ## A030283.P1782037654490911501

`ceil(A030285(n+10)/10-ceil(A331271(n+1)/98))`
-/

namespace A030283.P1782037654490911501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030285 (n + 10) : ℚ) / 10 - (⌈(A331271 (n + 1) : ℚ) / 98⌉ : ℚ)⌉

end

end A030283.P1782037654490911501

/-! ## A030283.P16865120816909672326

`ceil(A030285(n+10)/10-A064911(A077065(n+1)))`
-/

namespace A030283.P16865120816909672326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030285 (n + 10) : ℚ) / 10 - (A064911 (A077065 (n + 1)).toNat : ℚ)⌉

end

end A030283.P16865120816909672326

/-! ## A030283.P11102348145911287171

`A358097(a(n-1))` with `a(0)=0`
-/

namespace A030283.P11102348145911287171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A358097 (a (n - 1)).toNat

end

end A030283.P11102348145911287171

/-!
# A030284: a(n) is the least prime > a(n-1) whose digits do not appear in a(n-1).

The programs for A030284, there is no canonical definition to state claims against.
-/

/-! ## A030284.P525781900777639833

`A000040(A107365(n+1))`
-/

namespace A030284.P525781900777639833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107365 (n + 1)).toNat

end

end A030284.P525781900777639833

/-! ## A030284.P5622396700588753335

`A008578(A107365(n+1)+1)`
-/

namespace A030284.P5622396700588753335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107365 (n + 1) + 1).toNat

end

end A030284.P5622396700588753335

/-! ## A030284.P15646025036699664881

`A182986(A107365(n+1)+1)`
-/

namespace A030284.P15646025036699664881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A107365 (n + 1) + 1).toNat

end

end A030284.P15646025036699664881

/-! ## A030284.P3687582210427370554

`A158611(A107365(n+1)+2)`
-/

namespace A030284.P3687582210427370554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107365 (n + 1) + 2).toNat

end

end A030284.P3687582210427370554

/-! ## A030284.P3042038713450343625

`∑{d}[A107365(n+1), A007444(#)]`
-/

namespace A030284.P3042038713450343625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A030284.P3042038713450343625

/-!
# A030285: Palindromes whose digits do not appear in previous term.

The programs for A030285, there is no canonical definition to state claims against.
-/

/-! ## A030285.P14315627530466507062

`record[A047813(lcm(n, A272901(n+1)))]`
-/

namespace A030285.P14315627530466507062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (Int.lcm (n : ℤ) (A272901 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030285.P14315627530466507062

/-! ## A030285.P14370614065100773779

`A178688(n+1)!!*record[A047813(n)]`
-/

namespace A030285.P14370614065100773779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.factorial (A178688 (n + 1)).toNat) : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030285.P14370614065100773779

/-! ## A030285.P2318620457028591785

`record[A262188(n)]*A309863(A319387(n))`
-/

namespace A030285.P2318620457028591785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A309863 (A319387 n).toNat

end

end A030285.P2318620457028591785

/-! ## A030285.P9523822943870111958

`A002113(n+1)*A062378(A054540(n))`
-/

namespace A030285.P9523822943870111958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) * A062378 (A054540 n).toNat

end

end A030285.P9523822943870111958

/-! ## A030285.P17434722115761996707

`A002113(n+1)*A323022(A002071(n+1))`
-/

namespace A030285.P17434722115761996707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) * A323022 (A002071 (n + 1)).toNat

end

end A030285.P17434722115761996707

/-!
# A030286: Palindromic primes whose digits do not appear in previous term and that are increasing.

The programs for A030286, there is no canonical definition to state claims against.
-/

/-! ## A030286.P14467963584224173265

`∩[A215162(n+1), A229107(n+1)]`
-/

namespace A030286.P14467963584224173265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030286.P14467963584224173265

/-! ## A030286.P4316635835497642463

`A157868(A396163(n+1))`
-/

namespace A030286.P4316635835497642463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157868 (A396163 (n + 1)).toNat

end

end A030286.P4316635835497642463

/-! ## A030286.P16263465007169500885

`record[p?[A047813(A055216(n))]]`
-/

namespace A030286.P16263465007169500885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A055216 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030286.P16263465007169500885

/-!
# A030287: a(n) is the smallest k > a(n-1) such that k^2 has no digit in common with a(n-1)^2.

The programs for A030287, there is no canonical definition to state claims against.
-/

/-! ## A030287.P3146960440278912834

`sqrt(A030288(n))`
-/

namespace A030287.P3146960440278912834
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030288 n : ℝ)

end

end A030287.P3146960440278912834

/-! ## A030287.P3033963002387104878

`A030288(n)^(A007318(A112367(n))/2)`
-/

namespace A030287.P3033963002387104878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030288 n : ℝ) ^ ((A007318 (A112367 n).toNat : ℚ) / 2 : ℝ)

end

end A030287.P3033963002387104878

/-! ## A030287.P6361270216617780613

`A030288(n)^2^A133574(A001316(n))`
-/

namespace A030287.P6361270216617780613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030288 n : ℝ) ^ ((2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) : ℝ)

end

end A030287.P6361270216617780613

/-! ## A030287.P17104495793137512687

`A030288(n)^(A005408(n)/A016825(n))`
-/

namespace A030287.P17104495793137512687
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030288 n : ℝ) ^ ((A005408 n : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A030287.P17104495793137512687

/-! ## A030287.P14563517407017351441

`∑{d}[A056926(A030288(n)), A000010(#)]`
-/

namespace A030287.P14563517407017351441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A030288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A030287.P14563517407017351441

/-!
# A030288: a(n+1) is smallest square > a(n) having no digits in common with a(n), with a(0) = 0.

The programs for A030288, there is no canonical definition to state claims against.
-/

/-! ## A030288.P13811879221895309660

`A030287(n)²`
-/

namespace A030288.P13811879221895309660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030287 n ^ 2

end

end A030288.P13811879221895309660

/-! ## A030288.P8320485486044669842

`A030287(n)^ratio[A000079(n)]`
-/

namespace A030288.P8320485486044669842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030287 n : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A030288.P8320485486044669842

/-! ## A030288.P2519279831887763888

`A030287(n)^A000034(A004771(n))`
-/

namespace A030288.P2519279831887763888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030287 n : ℚ) ^ (A000034 (A004771 n).toNat : ℤ)

end

end A030288.P2519279831887763888

/-! ## A030288.P10208602697643053779

`A030287(n)^A000034(A005408(n))`
-/

namespace A030288.P10208602697643053779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030287 n : ℚ) ^ (A000034 (A005408 n).toNat : ℤ)

end

end A030288.P10208602697643053779

/-! ## A030288.P2046421118855683376

`A030287(n)^A014963(A001316(n))`
-/

namespace A030288.P2046421118855683376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030287 n : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A030288.P2046421118855683376

/-! ## A030288.P14110454202937161925

`A030287(n)^A000034(A030101(n))`
-/

namespace A030288.P14110454202937161925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030287 n : ℚ) ^ (A000034 (A030101 n).toNat : ℤ)

end

end A030288.P14110454202937161925

/-! ## A030288.P3165476712144138876

`A030287(n)^A020639(A016825(n))`
-/

namespace A030288.P3165476712144138876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030287 n : ℚ) ^ (A020639 (A016825 n).toNat : ℤ)

end

end A030288.P3165476712144138876

/-! ## A030288.P8447541838642422279

`A030287(n)^A040001(A004275(n))`
-/

namespace A030288.P8447541838642422279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030287 n : ℚ) ^ (A040001 (A004275 n).toNat : ℤ)

end

end A030288.P8447541838642422279

/-! ## A030288.P1225976527908987723

`A030287(n)^A014963(A060632(n))`
-/

namespace A030288.P1225976527908987723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030287 n : ℚ) ^ (A014963 (A060632 n).toNat : ℤ)

end

end A030288.P1225976527908987723

/-! ## A030288.P9386679445895317126

`A030287(n)^A040001(A305117(n))`
-/

namespace A030288.P9386679445895317126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030287 n : ℚ) ^ (A040001 (A305117 n).toNat : ℤ)

end

end A030288.P9386679445895317126

/-! ## A030288.P2318530452653538725

`A030287(sqrt(A000290(n)))*A030287(n)`
-/

namespace A030288.P2318530452653538725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030287 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat * A030287 n

end

end A030288.P2318530452653538725

/-! ## A030288.P10119293802554333273

`A030287(A005843(n)/2)*A030287(n)`
-/

namespace A030288.P10119293802554333273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030287 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat * A030287 n

end

end A030288.P10119293802554333273

/-! ## A030288.P16221464645964764031

`A030287(n)^A020639(A157934(n+1))`
-/

namespace A030288.P16221464645964764031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030287 n : ℚ) ^ (A020639 (A157934 (n + 1)).toNat : ℤ)

end

end A030288.P16221464645964764031

/-! ## A030288.P1230331603562626554

`A030287(A005843(n)-n)*A030287(n)`
-/

namespace A030288.P1230331603562626554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030287 (A005843 n - (n : ℤ)).toNat * A030287 n

end

end A030288.P1230331603562626554

/-! ## A030288.P7921104208284562580

`A030287(gcd(n, A000290(n)))*A030287(n)`
-/

namespace A030288.P7921104208284562580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030287 (Int.gcd (n : ℤ) (A000290 n)) * A030287 n

end

end A030288.P7921104208284562580

/-! ## A030288.P6662788546983693437

`A030287(n)*A030287(n%A113646(n+1))`
-/

namespace A030288.P6662788546983693437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030287 n * A030287 (Int.tmod (n : ℤ) (A113646 (n + 1))).toNat

end

end A030288.P6662788546983693437

/-! ## A030288.P15708300500519753332

`A030287(n)^A014963(A102376(n))`
-/

namespace A030288.P15708300500519753332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030287 n : ℚ) ^ (A014963 (A102376 n).toNat : ℤ)

end

end A030288.P15708300500519753332

/-!
# A030289: a(n+1) is the next larger cube with no digits in common with a(n), a(0) = 0.

The programs for A030289, there is no canonical definition to state claims against.
-/

/-! ## A030289.P13483280118826402224

`A030290(n)^3`
-/

namespace A030289.P13483280118826402224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030290 n ^ 3

end

end A030289.P13483280118826402224

/-! ## A030289.P797504201208693561

`A030290(abs(1-n)+1)²*A030290(n)`
-/

namespace A030289.P797504201208693561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030290 (|1 - (n : ℤ)| + 1).toNat ^ 2 * A030290 n

end

end A030289.P797504201208693561

/-! ## A030289.P2050632449626233252

`A000578(A030290(n))`
-/

namespace A030289.P2050632449626233252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030290 n).toNat

end

end A030289.P2050632449626233252

/-! ## A030289.P18176432798539074409

`A081276(2*A030290(n))`
-/

namespace A030289.P18176432798539074409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (2 * A030290 n).toNat

end

end A030289.P18176432798539074409

/-! ## A030289.P1346746684757206784

`record[A051801(n)%A047813(A000009(n))]^3`
-/

namespace A030289.P1346746684757206784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051801 n) (A047813 (A000009 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3

end

end A030289.P1346746684757206784

/-!
# A030290: a(n) is the smallest k > a(n-1) such that k^3 has no digit in common with a(n-1)^3.

The programs for A030290, there is no canonical definition to state claims against.
-/

/-! ## A030290.P6884048283519622023

`A030289(n)^(1/3)`
-/

namespace A030290.P6884048283519622023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030289 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030290.P6884048283519622023

/-! ## A030290.P6336318684222643058

`record[A051801(n)%A047813(A000009(n))]`
-/

namespace A030290.P6336318684222643058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051801 n) (A047813 (A000009 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030290.P6336318684222643058

/-! ## A030290.P6147301890900330658

`lt[A220096(3*n+1), 13]`
-/

namespace A030290.P6147301890900330658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030290.P6147301890900330658

/-! ## A030290.P14462530112463850887

`lt[A003987(A307966(n+1)), 3]`
-/

namespace A030290.P14462530112463850887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A307966 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030290.P14462530112463850887

/-! ## A030290.P10697019136901386367

`lt[A347381(A000290(3*n+1)), 8]`
-/

namespace A030290.P10697019136901386367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A000290 (3 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030290.P10697019136901386367

/-!
# A030291: Primes with at most two different digits.

The programs for A030291, there is no canonical definition to state claims against.
-/

/-! ## A030291.P7614876810239932813

`p?[n*A061901(A061901(n))]`
-/

namespace A030291.P7614876810239932813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061901 (A061901 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030291.P7614876810239932813

/-! ## A030291.P16642064634829038010

`eq[A003415(n), A061901(A061901(n))]`
-/

namespace A030291.P16642064634829038010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 (A061901 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030291.P16642064634829038010

/-! ## A030291.P11410385815508006545

`∩[A000040(A130446(n+1)), A303502(n+1)]`
-/

namespace A030291.P11410385815508006545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A130446 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030291.P11410385815508006545

/-! ## A030291.P7022523248217526197

`∪[A014673(A006094(n+1)), A182051(n+1)]`
-/

namespace A030291.P7022523248217526197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A006094 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030291.P7022523248217526197

/-! ## A030291.P11692936182544579151

`A115060(∪[A002385(n+1), A235154(n+1)])`
-/

namespace A030291.P11692936182544579151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A030291.P11692936182544579151

/-!
# A030292: Numbers k such that k^3 has at most two different digits.

The programs for A030292, there is no canonical definition to state claims against.
-/

/-! ## A030292.P12924798765492156852

`A030293(n+1)^(1/3)`
-/

namespace A030292.P12924798765492156852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030293 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030292.P12924798765492156852

/-! ## A030292.P12297833481910129560

`A100196(ceil(sqrt(A030293(n+1))))`
-/

namespace A030292.P12297833481910129560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A030293 (n + 1) : ℝ)⌉.toNat

end

end A030292.P12297833481910129560

/-! ## A030292.P12255661453928115532

`∪[A014418(n), A070939(A038054(n))]`
-/

namespace A030292.P12255661453928115532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A038054 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030292.P12255661453928115532

/-! ## A030292.P14608786162964780549

`lt[A122544(A066588(n)), A046388(n+1)]`
-/

namespace A030292.P14608786162964780549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122544 (A066588 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030292.P14608786162964780549

/-!
# A030293: Cubes with at most two different digits.

The programs for A030293, there is no canonical definition to state claims against.
-/

/-! ## A030293.P860058979206319520

`A030292(n+1)^3`
-/

namespace A030293.P860058979206319520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030292 (n + 1) ^ 3

end

end A030293.P860058979206319520

/-! ## A030293.P13527487905506600230

`∩[A030292(n+1), A030294(n+1)]²*A030292(n+1)`
-/

namespace A030293.P13527487905506600230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030294 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 : ℤ) * A030292 (n + 1)

end

end A030293.P13527487905506600230

/-! ## A030293.P3131296544064852350

`A000578(A030292(n+1))`
-/

namespace A030293.P3131296544064852350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030292 (n + 1)).toNat

end

end A030293.P3131296544064852350

/-! ## A030293.P14902443810106185165

`∪[A014418(n), A070939(A038054(n))]^3`
-/

namespace A030293.P14902443810106185165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A038054 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 3

end

end A030293.P14902443810106185165

/-! ## A030293.P7546468296006290203

`A030292(n+1)*A106620(A030292(n+1)²)`
-/

namespace A030293.P7546468296006290203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030292 (n + 1) * A106620 (A030292 (n + 1) ^ 2).toNat

end

end A030293.P7546468296006290203

/-!
# A030294: Numbers k such that k^3 has at most three different digits.

The programs for A030294, there is no canonical definition to state claims against.
-/

/-! ## A030294.P2089250084355218092

`A030295(n+1)^(1/3)`
-/

namespace A030294.P2089250084355218092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030295 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030294.P2089250084355218092

/-! ## A030294.P6845966996973181863

`A106620(∪[A030292(n+1), A155146(n+1)])`
-/

namespace A030294.P6845966996973181863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155146 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A030294.P6845966996973181863

/-! ## A030294.P626463474918485536

`∪[A030292(n+1), A335376(A275525(n+1)+3)]`
-/

namespace A030294.P626463474918485536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335376 (A275525 (n + 1) + 3).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030294.P626463474918485536

/-! ## A030294.P6476151167728786464

`lt[abs(A355566(2*(n+2))), A061659(3*n+4)]`
-/

namespace A030294.P6476151167728786464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355566 (2 * (n + 2))|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061659 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030294.P6476151167728786464

/-!
# A030295: Cubes with at most three distinct digits.

The programs for A030295, there is no canonical definition to state claims against.
-/

/-! ## A030295.P5970695999900840774

`A030294(n+1)^3`
-/

namespace A030295.P5970695999900840774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030294 (n + 1) ^ 3

end

end A030295.P5970695999900840774

/-! ## A030295.P10139299503655768985

`(A030294(n+1)%A004990(n))²*A030294(n+1)`
-/

namespace A030295.P10139299503655768985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030294 (n + 1)) (A004990 n) ^ 2 * A030294 (n + 1)

end

end A030295.P10139299503655768985

/-! ## A030295.P18170521987531837651

`A000578(A030294(n+1))`
-/

namespace A030295.P18170521987531837651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030294 (n + 1)).toNat

end

end A030295.P18170521987531837651

/-! ## A030295.P7050890326606686512

`A000578(∪[A030292(n+1), A155146(n+1)])`
-/

namespace A030295.P7050890326606686512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155146 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A030295.P7050890326606686512

/-! ## A030295.P6923294710338142207

`A106620(∪[A030292(n+1), A155146(n+1)])^3`
-/

namespace A030295.P6923294710338142207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155146 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) ^ 3

end

end A030295.P6923294710338142207

/-!
# A030296: Smallest start for a run of at least n composite numbers.

The programs for A030296, there is no canonical definition to state claims against.
-/

/-! ## A030296.P1109680220669766052

`A100964(A008619(n+1))+1`
-/

namespace A030296.P1109680220669766052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100964 (A008619 (n + 1)).toNat + 1

end

end A030296.P1109680220669766052

/-! ## A030296.P10829069864393354429

`1+A104138(n+1)`
-/

namespace A030296.P10829069864393354429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A104138 (n + 1)

end

end A030296.P10829069864393354429

/-! ## A030296.P13798667727875355977

`Δ[n-(1-∑[A104138(n)])]`
-/

namespace A030296.P13798667727875355977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030296.P13798667727875355977

/-! ## A030296.P10701287993560942748

`A104138(A116966(n))+1`
-/

namespace A030296.P10701287993560942748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A116966 n).toNat + 1

end

end A030296.P10701287993560942748

/-! ## A030296.P18179876041726266565

`A104138(A008619(2*n))-log2(1/2)`
-/

namespace A030296.P18179876041726266565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A104138 (A008619 (2 * n)).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

end

end A030296.P18179876041726266565

/-! ## A030296.P16114331765744350212

`A104138(A131732(2*n))-log2(1/2)`
-/

namespace A030296.P16114331765744350212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A104138 (A131732 (2 * n)).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

end

end A030296.P16114331765744350212

/-! ## A030296.P2295192293812678978

`A075741(n+2)-(n+1)`
-/

namespace A030296.P2295192293812678978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075741 (n + 2) - (n + 1 : ℤ)

end

end A030296.P2295192293812678978

/-! ## A030296.P3829729429886725162

`∑{d}[A104138(A008619(2*n)), #]`
-/

namespace A030296.P3829729429886725162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A008619 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A030296.P3829729429886725162

/-! ## A030296.P3944201098694728595

`∑{d}[A104138(A131732(2*n)), #]`
-/

namespace A030296.P3944201098694728595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A131732 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A030296.P3944201098694728595

/-! ## A030296.P762148172295486011

`A000203(A104138(n+1))`
-/

namespace A030296.P762148172295486011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A104138 (n + 1)).toNat

end

end A030296.P762148172295486011

/-!
# A030297: a(n) = n*(n + a(n-1)) with a(0)=0.

The programs for A030297, the canonical program `A030297.P13471567161351345238` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030297 has offset 0).

The definition of A030297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+a(n-1))` (program `A030297.P13471567161351345238`, by `A030297.P13471567161351345238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030297.P13471567161351345238

`n*(n+a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030297

/-- `n*(n+a(n-1))` -/
def P13471567161351345238.Spec : Prop :=
  ∀ n, (P13471567161351345238.a n : ℤ) = A030297 n

theorem P13471567161351345238.correct : P13471567161351345238.Spec := by
  intro n
  simp only [A030297]

end A030297

/-! ## A030297.P12060751509813341610

`A019461(2*n)`
-/

namespace A030297.P12060751509813341610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (2 * n)

end

end A030297.P12060751509813341610

namespace A030297

/-- `A019461(2*n)` -/
def P12060751509813341610.Spec : Prop :=
  ∀ n, P12060751509813341610.a n = A030297 n

end A030297

/-! ## A030297.P10963865036665233474

`n*(n-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A030297.P10963865036665233474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n : ℤ) - (-a (n - 1)))

end

end A030297.P10963865036665233474

namespace A030297

/-- `n*(n-floor(-a(n-1)))` -/
def P10963865036665233474.Spec : Prop :=
  ∀ n, P10963865036665233474.a n = A030297 n

end A030297

/-! ## A030297.P12593939139629041623

`n*(n-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A030297.P12593939139629041623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n : ℤ) - (-a (n - 1)))

end

end A030297.P12593939139629041623

namespace A030297

/-- `n*(n-ceil(-a(n-1)))` -/
def P12593939139629041623.Spec : Prop :=
  ∀ n, P12593939139629041623.a n = A030297 n

end A030297

/-! ## A030297.P3258904644302457761

`n*(n-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A030297.P3258904644302457761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n : ℤ) - (-a (n - 1)))

end

end A030297.P3258904644302457761

namespace A030297

/-- `n*(n-round(-a(n-1)))` -/
def P3258904644302457761.Spec : Prop :=
  ∀ n, P3258904644302457761.a n = A030297 n

end A030297

/-! ## A030297.P5036173242598864588

`(a(n-1)+n)/cot(atan(n))` with `a(0)=0`
-/

namespace A030297.P5036173242598864588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (n : ℝ)) / Real.cot (Real.arctan (n : ℝ))

end

end A030297.P5036173242598864588

namespace A030297

/-- `(a(n-1)+n)/cot(atan(n))` -/
def P5036173242598864588.Spec : Prop :=
  ∀ n, P5036173242598864588.a n = (A030297 n : ℝ)

end A030297

/-! ## A030297.P10348327412417087063

`(a(n-1)+n)/n^(-1)` with `a(0)=0`
-/

namespace A030297.P10348327412417087063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (n : ℚ)) / (n : ℚ) ^ (-1 : ℤ)

end

end A030297.P10348327412417087063

namespace A030297

/-- `(a(n-1)+n)/n^(-1)` -/
def P10348327412417087063.Spec : Prop :=
  ∀ n, P10348327412417087063.a n = (A030297 n : ℚ)

end A030297

/-! ## A030297.P4461409740837748401

`2*n!*∑[n/n!]-n`
-/

namespace A030297.P4461409740837748401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)) - (n : ℚ)

end

end A030297.P4461409740837748401

namespace A030297

/-- `2*n!*∑[n/n!]-n` -/
def P4461409740837748401.Spec : Prop :=
  ∀ n, P4461409740837748401.a n = (A030297 n : ℚ)

end A030297

/-! ## A030297.P13821236434363144616

`n-n*(1-a(n-1)-n)` with `a(0)=0`
-/

namespace A030297.P13821236434363144616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (n : ℤ) * (1 - a (n - 1) - (n : ℤ))

end

end A030297.P13821236434363144616

namespace A030297

/-- `n-n*(1-a(n-1)-n)` -/
def P13821236434363144616.Spec : Prop :=
  ∀ n, P13821236434363144616.a n = A030297 n

end A030297

/-! ## A030297.P10115204520173694747

`n*A111063(n)`
-/

namespace A030297.P10115204520173694747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A111063 n

end

end A030297.P10115204520173694747

namespace A030297

/-- `n*A111063(n)` -/
def P10115204520173694747.Spec : Prop :=
  ∀ n, P10115204520173694747.a n = A030297 n

end A030297

/-!
# A030298: List of permutations of 1,2,3,...,n for n=1,2,3,..., in lexicographic order.

The programs for A030298, there is no canonical definition to state claims against.
-/

/-! ## A030298.P5428505654757231860

`A028310(Δ[A030493(A028310(n))])`
-/

namespace A030298.P5428505654757231860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030493 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A030298.P5428505654757231860

/-! ## A030298.P11702637227669885846

`A084556(A220655(n+1))-A030496(n+1)`
-/

namespace A030298.P11702637227669885846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A220655 (n + 1)).toNat - A030496 (n + 1)

end

end A030298.P11702637227669885846

/-! ## A030298.P5012594526099830799

`A084556(A220656(n+1))-A030496(n+1)`
-/

namespace A030298.P5012594526099830799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A220656 (n + 1)).toNat - A030496 (n + 1)

end

end A030298.P5012594526099830799

/-! ## A030298.P4073895897460176642

`A030496(A030496(n+1)*A048764(n+1))`
-/

namespace A030298.P4073895897460176642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A030496 (n + 1) * A048764 (n + 1)).toNat

end

end A030298.P4073895897460176642

/-! ## A030298.P3723284423297174479

`A030496(A030496(n+1)+A048764(n+1)-1)`
-/

namespace A030298.P3723284423297174479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A030496 (n + 1) + (A048764 (n + 1) - 1)).toNat

end

end A030298.P3723284423297174479

/-! ## A030298.P5408472262910813162

`A090529(n+2)-A030496(n+1)`
-/

namespace A030298.P5408472262910813162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (n + 2) - A030496 (n + 1)

end

end A030298.P5408472262910813162

/-! ## A030298.P12338527174298456103

`A001222(A275725(n+1))-A030496(n+1)`
-/

namespace A030298.P12338527174298456103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275725 (n + 1)).toNat - A030496 (n + 1)

end

end A030298.P12338527174298456103

/-!
# A030299: Decimal representation of permutations of lengths 1, 2, 3, ... arranged lexicographically.

The programs for A030299, there is no canonical definition to state claims against.
-/

/-! ## A030299.P7195936939340913404

`A220664(n)+a(n-1)` with `a(0)=1`
-/

namespace A030299.P7195936939340913404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A220664 n + a (n - 1)

end

end A030299.P7195936939340913404

/-! ## A030299.P3011253074434023318

`∑[A220664(A028310(n))]-10`
-/

namespace A030299.P3011253074434023318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220664 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 10

end

end A030299.P3011253074434023318

/-! ## A030299.P14276655710267018966

`∑[A220664(n+1)]+1-A220664(n+1)`
-/

namespace A030299.P14276655710267018966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A220664 (n + 1))

end

end A030299.P14276655710267018966

/-! ## A030299.P18179037554030721849

`∑[A220664(A028310(n))%A033431(n+1)]`
-/

namespace A030299.P18179037554030721849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220664 (A028310 n).toNat) (A033431 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030299.P18179037554030721849

/-! ## A030299.P837162149851736061

`a(n-1)-(A000038(n)-A220664(A028310(n)))` with `a(0)=1`
-/

namespace A030299.P837162149851736061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000038 n - A220664 (A028310 n).toNat)

end

end A030299.P837162149851736061

/-! ## A030299.P2771414151243066066

`A394317(A220696(n+2))`
-/

namespace A030299.P2771414151243066066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394317 (A220696 (n + 2)).toNat

end

end A030299.P2771414151243066066

/-! ## A030299.P6089734665897879525

`∩[A215014(n+1), A240763(n+1)]`
-/

namespace A030299.P6089734665897879525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P6089734665897879525

/-! ## A030299.P17390923221751416346

`∩[A240763(n+1), A288528(n+1)]`
-/

namespace A030299.P17390923221751416346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P17390923221751416346

/-! ## A030299.P17865053863740618500

`∩[A240763(n+1), A376300(n+1)]`
-/

namespace A030299.P17865053863740618500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P17865053863740618500

/-! ## A030299.P14049266466421898961

`∩[A038528(n+1), A215014(n+1)]`
-/

namespace A030299.P14049266466421898961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P14049266466421898961

/-! ## A030299.P17950255992059960844

`∩[A038528(n+1), A240763(n+1)]`
-/

namespace A030299.P17950255992059960844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P17950255992059960844

/-! ## A030299.P7422466147664631207

`∩[A038528(n+1), A288528(n+1)]`
-/

namespace A030299.P7422466147664631207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P7422466147664631207

/-! ## A030299.P11048547580067247659

`∩[A038528(n+1), A376300(n+1)]`
-/

namespace A030299.P11048547580067247659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P11048547580067247659

/-! ## A030299.P81644573214084944

`∩[A227073(n+1), A288528(n+1)]`
-/

namespace A030299.P81644573214084944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P81644573214084944

/-! ## A030299.P10775041518070255288

`∩[A215014(n+1), A227073(n+1)]`
-/

namespace A030299.P10775041518070255288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P10775041518070255288

/-! ## A030299.P15379350285044733027

`∩[A227073(n+1), A376300(n+1)]`
-/

namespace A030299.P15379350285044733027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P15379350285044733027

/-! ## A030299.P7256917688032144368

`∩[A227073(n+1), A240763(n+1)]`
-/

namespace A030299.P7256917688032144368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P7256917688032144368

/-! ## A030299.P13547001103905683388

`∩[A038527(n+1), A240763(n+1)]`
-/

namespace A030299.P13547001103905683388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P13547001103905683388

/-! ## A030299.P16450862865095476626

`∩[A038527(n+1), A288528(n+1)]`
-/

namespace A030299.P16450862865095476626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030299.P16450862865095476626

