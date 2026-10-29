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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

/-!
# A351000: Denominator of the limiting density of residues attained by the Fibonacci sequence modulo powers of the n-th prime.

The programs for A351000, there is no canonical definition to state claims against.
-/

/-! ## A351000.P11229928902448853754

`A141134(A175492(n+1)*A227687(2*n+3))`
-/

namespace A351000.P11229928902448853754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141134 (A175492 (n + 1) * A227687 (2 * n + 3)).toNat

end

end A351000.P11229928902448853754

/-!
# A351003: Number of integer partitions y of n such that y_i = y_{i+1} for all even i.

The programs for A351003, there is no canonical definition to state claims against.
-/

/-! ## A351003.P11878857398233387796

`A117409(n+2)+A034296(n)-∑{d}[n, and(1, #)]`
-/

namespace A351003.P11878857398233387796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 2) + (A034296 n - ((∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d : ℕ) : ℤ))

end

end A351003.P11878857398233387796

/-! ## A351003.P17891822907034330430

`A351012(n)+A117409(n+2)`
-/

namespace A351003.P17891822907034330430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351012 n + A117409 (n + 2)

end

end A351003.P17891822907034330430

/-! ## A351003.P3773170690603576592

`A351012(round(sqrt(n²+1)))+A000009(n)`
-/

namespace A351003.P3773170690603576592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351012 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A000009 n

end

end A351003.P3773170690603576592

/-! ## A351003.P6956392166385505173

`A351012(n)+A035457(A004277(n))`
-/

namespace A351003.P6956392166385505173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351012 n + A035457 (A004277 n).toNat

end

end A351003.P6956392166385505173

/-! ## A351003.P13321774670196577822

`A351012(n)+A308680(A000124(n))`
-/

namespace A351003.P13321774670196577822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351012 n + A308680 (A000124 n).toNat

end

end A351003.P13321774670196577822

/-! ## A351003.P506030641756203294

`A351012(n)+A035457(A004275(n+1))`
-/

namespace A351003.P506030641756203294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351012 n + A035457 (A004275 (n + 1)).toNat

end

end A351003.P506030641756203294

/-! ## A351003.P13878656228704292042

`A000009(n)+A351012(n)%A000123(n)`
-/

namespace A351003.P13878656228704292042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + Int.tmod (A351012 n) (A000123 n)

end

end A351003.P13878656228704292042

/-! ## A351003.P68471935301139249

`A351012(n)+A000009(n)%A115150(n)`
-/

namespace A351003.P68471935301139249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351012 n + Int.tmod (A000009 n) (A115150 n)

end

end A351003.P68471935301139249

/-!
# A351004: Alternately constant partitions. Number of integer partitions y of n such that y_i = y_{i+1} for all odd i.

The programs for A351004, there is no canonical definition to state claims against.
-/

/-! ## A351004.P4130823625631534711

`A351594(n)+A035363(n)`
-/

namespace A351004.P4130823625631534711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 n + A035363 n

end

end A351004.P4130823625631534711

/-! ## A351004.P9852391086940210146

`A351594(n)+A035444(2*n)`
-/

namespace A351004.P9852391086940210146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 n + A035444 (2 * n)

end

end A351004.P9852391086940210146

/-! ## A351004.P17224183120898380041

`A351594(n)+char[2*n]*A119620(n)`
-/

namespace A351004.P17224183120898380041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A119620 n

end

end A351004.P17224183120898380041

/-! ## A351004.P7523082268319152252

`A351594(n)+A000041(floor(n/2))*and(1, n+1)`
-/

namespace A351004.P7523082268319152252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 n + A000041 ⌊(n : ℚ) / 2⌋.toNat * (Nat.land 1 (n + 1) : ℤ)

end

end A351004.P7523082268319152252

/-! ## A351004.P7028204667002069669

`A351594(n)+A035377(A006368(n))`
-/

namespace A351004.P7028204667002069669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 n + A035377 (A006368 n).toNat

end

end A351004.P7028204667002069669

/-! ## A351004.P13164144080573820818

`A351594(n)+A035377(A007494(n))`
-/

namespace A351004.P13164144080573820818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 n + A035377 (A007494 n).toNat

end

end A351004.P13164144080573820818

/-! ## A351004.P10031816424854279298

`A351594(n)+A035377(A026430(n))`
-/

namespace A351004.P10031816424854279298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 n + A035377 (A026430 n).toNat

end

end A351004.P10031816424854279298

/-! ## A351004.P15688718830835589801

`A351594(n)+A035377(A074306(n))`
-/

namespace A351004.P15688718830835589801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 n + A035377 (A074306 n).toNat

end

end A351004.P15688718830835589801

/-! ## A351004.P17434578845169422274

`A035363(n)-A008683(A020483(n))*A351594(n)`
-/

namespace A351004.P17434578845169422274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n - A008683 (A020483 n).toNat * A351594 n

end

end A351004.P17434578845169422274

/-!
# A351005: Number of integer partitions of n into parts that are alternately equal and unequal.

The programs for A351005, there is no canonical definition to state claims against.
-/

/-! ## A351005.P17481314093024706357

`A351593(n)+A035457(n)`
-/

namespace A351005.P17481314093024706357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 n + A035457 n

end

end A351005.P17481314093024706357

/-! ## A351005.P7556872012958536072

`A351593(n)+char[2*n]*A172033(n)`
-/

namespace A351005.P7556872012958536072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A172033 n

end

end A351005.P7556872012958536072

/-! ## A351005.P6463446110993982353

`A351593(n)+A286335(A101881(n))`
-/

namespace A351005.P6463446110993982353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 n + A286335 (A101881 n).toNat

end

end A351005.P6463446110993982353

/-! ## A351005.P12397364908633275816

`A351593(n)+A116675(A327672(n))`
-/

namespace A351005.P12397364908633275816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 n + A116675 (A327672 n).toNat

end

end A351005.P12397364908633275816

/-! ## A351005.P1216897093096022847

`A046767(n)+A351593(n)-A046779(n)`
-/

namespace A351005.P1216897093096022847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046767 n + (A351593 n - A046779 n)

end

end A351005.P1216897093096022847

/-! ## A351005.P5427599155280018686

`A351593(n)+A172033(n)%A052552(n)`
-/

namespace A351005.P5427599155280018686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 n + Int.tmod (A172033 n) (A052552 n)

end

end A351005.P5427599155280018686

/-! ## A351005.P678978458593003061

`A351593(n)+and(A172033(n), A279872(n))`
-/

namespace A351005.P678978458593003061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 n + Int.land (A172033 n) (A279872 n)

end

end A351005.P678978458593003061

/-! ## A351005.P12545975368471169218

`A351593(n)+and(A172033(n), A282417(n))`
-/

namespace A351005.P12545975368471169218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 n + Int.land (A172033 n) (A282417 n)

end

end A351005.P12545975368471169218

/-! ## A351005.P12512461495812082870

`A351593(n)+and(A172033(n), A290234(n))`
-/

namespace A351005.P12512461495812082870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 n + Int.land (A172033 n) (A290234 n)

end

end A351005.P12512461495812082870

/-!
# A351006: Number of integer partitions of n into parts that are alternately unequal and equal.

The programs for A351006, there is no canonical definition to state claims against.
-/

/-! ## A351006.P1392091636788336497

`A351007(n)+A053251(n)`
-/

namespace A351006.P1392091636788336497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 n + A053251 n

end

end A351006.P1392091636788336497

/-! ## A351006.P6316779258963819457

`A260412(n)+A351007(n)-A260413(n)`
-/

namespace A351006.P6316779258963819457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260412 n + (A351007 n - A260413 n)

end

end A351006.P6316779258963819457

/-! ## A351006.P16282249139299823723

`A351007(n)+(A132969(n)-A053250(n))/2`
-/

namespace A351006.P16282249139299823723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351007 n : ℚ) + (A132969 n - A053250 n : ℚ) / 2

end

end A351006.P16282249139299823723

/-! ## A351006.P5330300473306158212

`A351007(n)+(A053250(n)-A260460(n))/2`
-/

namespace A351006.P5330300473306158212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351007 n : ℚ) + (A053250 n - A260460 n : ℚ) / 2

end

end A351006.P5330300473306158212

/-! ## A351006.P11091971550154969482

`A351007(n)+(abs(A132970(n))-A053250(n))/2`
-/

namespace A351006.P11091971550154969482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351007 n : ℚ) + (|A132970 n| - A053250 n : ℚ) / 2

end

end A351006.P11091971550154969482

/-! ## A351006.P6059063735397623638

`A351007(n)+A260412(n)-(-1)^n*A053252(n)`
-/

namespace A351006.P6059063735397623638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 n + (A260412 n - (-1) ^ n * A053252 n)

end

end A351006.P6059063735397623638

/-! ## A351006.P11978082784919228443

`A351007(n)+A004526(A132969(n)-A053250(n))`
-/

namespace A351006.P11978082784919228443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 n + A004526 (A132969 n - A053250 n).toNat

end

end A351006.P11978082784919228443

/-! ## A351006.P14588698797856740047

`A351007(n)+A014682(A132969(n)-A053250(n))`
-/

namespace A351006.P14588698797856740047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 n + A014682 (A132969 n - A053250 n).toNat

end

end A351006.P14588698797856740047

/-! ## A351006.P16652250841434560620

`A351007(n)+A029578(A132969(n)-A053250(n))`
-/

namespace A351006.P16652250841434560620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 n + A029578 (A132969 n - A053250 n).toNat

end

end A351006.P16652250841434560620

/-! ## A351006.P1958105774770917488

`A351007(n)+A038572(A132969(n)-A053250(n))`
-/

namespace A351006.P1958105774770917488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 n + A038572 (A132969 n - A053250 n).toNat

end

end A351006.P1958105774770917488

/-!
# A351007: Number of even-length integer partitions of n into parts that are alternately unequal and equal.

The programs for A351007, there is no canonical definition to state claims against.
-/

/-! ## A351007.P2784061401390574512

`A351006(n)-A053251(n)`
-/

namespace A351007.P2784061401390574512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 n - A053251 n

end

end A351007.P2784061401390574512

/-! ## A351007.P13385687484256164523

`A260413(n)+A351006(n)-A260412(n)`
-/

namespace A351007.P13385687484256164523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260413 n + (A351006 n - A260412 n)

end

end A351007.P13385687484256164523

/-! ## A351007.P11278927962474168820

`A351006(n)-(A132969(n)-A053250(n))/2`
-/

namespace A351007.P11278927962474168820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351006 n : ℚ) - (A132969 n - A053250 n : ℚ) / 2

end

end A351007.P11278927962474168820

/-! ## A351007.P279726090324412781

`A351006(n)-(abs(A132970(n))-A053250(n))/2`
-/

namespace A351007.P279726090324412781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351006 n : ℚ) - (|A132970 n| - A053250 n : ℚ) / 2

end

end A351007.P279726090324412781

/-! ## A351007.P4352722068042173303

`A351006(n)-(A260412(n)-(-1)^n*A053252(n))`
-/

namespace A351007.P4352722068042173303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 n - (A260412 n - (-1) ^ n * A053252 n)

end

end A351007.P4352722068042173303

/-! ## A351007.P14113676977006876874

`A351006(n)-A014682(A132969(n)-A053250(n))`
-/

namespace A351007.P14113676977006876874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 n - A014682 (A132969 n - A053250 n).toNat

end

end A351007.P14113676977006876874

/-! ## A351007.P17379388283506181245

`A351006(n)-(A260412(n)-A053252(n)/A033999(n))`
-/

namespace A351007.P17379388283506181245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351006 n : ℚ) - ((A260412 n : ℚ) - (A053252 n : ℚ) / (A033999 n : ℚ))

end

end A351007.P17379388283506181245

/-! ## A351007.P14259514177098374266

`A351006(n)-((A257657(n)+A132969(n))/2-A260413(n))`
-/

namespace A351007.P14259514177098374266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351006 n : ℚ) - ((A257657 n + A132969 n : ℚ) / 2 - (A260413 n : ℚ))

end

end A351007.P14259514177098374266

/-!
# A351008: Alternately strict partitions. Number of even-length integer partitions y of n such that y_i > y_{i+1} for all odd i.

The programs for A351008, there is no canonical definition to state claims against.
-/

/-! ## A351008.P6795651770737797146

`A227135(n)-A351595(n)`
-/

namespace A351008.P6795651770737797146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227135 n - A351595 n

end

end A351008.P6795651770737797146

/-! ## A351008.P11202556649344180385

`A122134(n)+A227135(n)-A122135(n)`
-/

namespace A351008.P11202556649344180385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122134 n + (A227135 n - A122135 n)

end

end A351008.P11202556649344180385

/-! ## A351008.P10109418252661708542

`A182372(n)-(A351595(n)+A227134(n))`
-/

namespace A351008.P10109418252661708542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182372 n - (A351595 n + A227134 n)

end

end A351008.P10109418252661708542

/-! ## A351008.P11369003508356009906

`A227135(n)-(A137676(4*n+1)-A137677(4*n))`
-/

namespace A351008.P11369003508356009906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227135 n - (A137676 (4 * n + 1) - A137677 (4 * n))

end

end A351008.P11369003508356009906

/-! ## A351008.P375836284250902977

`A122134(n)+A227135(n)-A137676(A016813(n))`
-/

namespace A351008.P375836284250902977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122134 n + (A227135 n - A137676 (A016813 n).toNat)

end

end A351008.P375836284250902977

/-! ## A351008.P9202727359775610595

`A122135(n)+A122129(n)-(A351595(n)+A227134(n))`
-/

namespace A351008.P9202727359775610595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122135 n + A122129 n - (A351595 n + A227134 n)

end

end A351008.P9202727359775610595

/-! ## A351008.P15392947088624602828

`A137676(4*n)+A122135(n)-(A351595(n)+A227134(n))`
-/

namespace A351008.P15392947088624602828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (4 * n) + A122135 n - (A351595 n + A227134 n)

end

end A351008.P15392947088624602828

/-!
# A351009: Numbers k such that the k-th composition in standard order is a concatenation of distinct twins (x,x).

The programs for A351009, there is no canonical definition to state claims against.
-/

/-! ## A351009.P15513399776142958134

`A351010(A233564(n+1)+1)`
-/

namespace A351009.P15513399776142958134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351010 (A233564 (n + 1) + 1).toNat

end

end A351009.P15513399776142958134

/-! ## A351009.P6805659987335379783

`A351010(eq[A000120(n), A353849(n)]+1)`
-/

namespace A351009.P6805659987335379783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A351009.P6805659987335379783

/-! ## A351009.P5130871966505739460

`A351010(eq[A038573(n), A334300(n)]+1)`
-/

namespace A351009.P5130871966505739460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A351009.P5130871966505739460

/-! ## A351009.P12780073836918910919

`A351010(∩[A333489(n+1), A353852(n)]+1)`
-/

namespace A351009.P12780073836918910919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353852 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A351009.P12780073836918910919

/-! ## A351009.P1836713200296534782

`A351010(∩[A333489(n+1), A374249(n+1)]+1)`
-/

namespace A351009.P1836713200296534782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A351009.P1836713200296534782

/-!
# A351010: Numbers k such that the k-th composition in standard order is a concatenation of twins (x,x).

The programs for A351010, there is no canonical definition to state claims against.
-/

/-! ## A351010.P13559197204341227

`A333777(A400765(n+1))`
-/

namespace A351010.P13559197204341227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (A400765 (n + 1)).toNat

end

end A351010.P13559197204341227

/-! ## A351010.P4283660245431692414

`eq[n, A367307(A102391(n))]`
-/

namespace A351010.P4283660245431692414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367307 (A102391 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351010.P4283660245431692414

/-! ## A351010.P12899039367520435561

`eq[A346702(n), A346705(n)]`
-/

namespace A351010.P12899039367520435561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346705 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351010.P12899039367520435561

/-! ## A351010.P9592765993226196893

`A333777(floor(A264619(n)/2))`
-/

namespace A351010.P9592765993226196893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 ⌊(A264619 n : ℚ) / 2⌋.toNat

end

end A351010.P9592765993226196893

/-! ## A351010.P10790024325668797638

`A333777((A264619(n)-1)/2)`
-/

namespace A351010.P10790024325668797638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (SequenceMachineLib.roundAway ((A264619 n - 1 : ℚ) / 2)).toNat

end

end A351010.P10790024325668797638

/-! ## A351010.P15564949799150294121

`eq[A093505(n+1), A367307(n)]`
-/

namespace A351010.P15564949799150294121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351010.P15564949799150294121

/-! ## A351010.P8105359945736523960

`eq[A161560(n+1), A367307(n)]`
-/

namespace A351010.P8105359945736523960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351010.P8105359945736523960

/-! ## A351010.P16035002348624361193

`A333777(eq[A000069(n+1), A145341(n+1)])`
-/

namespace A351010.P16035002348624361193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A351010.P16035002348624361193

/-!
# A351011: Numbers k such that the k-th composition in standard order has even length and alternately equal and unequal parts, i.e., all run-lengths equal to 2.

The programs for A351011, there is no canonical definition to state claims against.
-/

/-! ## A351011.P17637092358018659506

`A351010(A333489(n+1)+1)`
-/

namespace A351011.P17637092358018659506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351010 (A333489 (n + 1) + 1).toNat

end

end A351011.P17637092358018659506

/-! ## A351011.P4546686390473082805

`A351009(A082743(n))`
-/

namespace A351011.P4546686390473082805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351009 (A082743 n).toNat

end

end A351011.P4546686390473082805

/-! ## A351011.P1273251749280472421

`A351009(A381225(n))`
-/

namespace A351011.P1273251749280472421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351009 (A381225 n).toNat

end

end A351011.P1273251749280472421

/-! ## A351011.P7926616303879835298

`A351009(A001104(n+1))`
-/

namespace A351011.P7926616303879835298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351009 (A001104 (n + 1)).toNat

end

end A351011.P7926616303879835298

/-! ## A351011.P16532805651795081059

`A351009(A002998(n+1))`
-/

namespace A351011.P16532805651795081059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351009 (A002998 (n + 1)).toNat

end

end A351011.P16532805651795081059

/-!
# A351012: Number of even-length integer partitions y of n such that y_i = y_{i+1} for all even i.

The programs for A351012, there is no canonical definition to state claims against.
-/

/-! ## A351012.P7251154579829310533

`A034296(n)-∑{d}[n, and(1, #)]`
-/

namespace A351012.P7251154579829310533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 n - ((∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d : ℕ) : ℤ)

end

end A351012.P7251154579829310533

/-! ## A351012.P3452589445849762665

`A351003(n)-A117409(n+2)`
-/

namespace A351012.P3452589445849762665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351003 n - A117409 (n + 2)

end

end A351012.P3452589445849762665

/-! ## A351012.P104147988871283061

`A237665(n)+A112329(A004277(n))`
-/

namespace A351012.P104147988871283061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A112329 (A004277 n).toNat

end

end A351012.P104147988871283061

/-! ## A351012.P11811076001972840631

`A351003(n)-A035457(A004277(n))`
-/

namespace A351012.P11811076001972840631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351003 n - A035457 (A004277 n).toNat

end

end A351012.P11811076001972840631

/-! ## A351012.P13483451319162888015

`A237665(n)+A112329(A004273(n)+1)`
-/

namespace A351012.P13483451319162888015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A112329 (A004273 n + 1).toNat

end

end A351012.P13483451319162888015

/-! ## A351012.P12115223489133867752

`A237665(n)+A112329(A004275(n+1))`
-/

namespace A351012.P12115223489133867752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A112329 (A004275 (n + 1)).toNat

end

end A351012.P12115223489133867752

/-! ## A351012.P17416995752660005172

`A237665(n)+A112329(A028310(2*n))`
-/

namespace A351012.P17416995752660005172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A112329 (A028310 (2 * n)).toNat

end

end A351012.P17416995752660005172

/-! ## A351012.P9975130800015062683

`A237665(n)+A112329(A028310(n)+n)`
-/

namespace A351012.P9975130800015062683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A112329 (A028310 n + (n : ℤ)).toNat

end

end A351012.P9975130800015062683

/-!
# A351013: Number of integer compositions of n with all distinct runs.

The programs for A351013, there is no canonical definition to state claims against.
-/

/-! ## A351013.P2342639399760648261

`A073188(A054392(n))`
-/

namespace A351013.P2342639399760648261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A054392 n).toNat

end

end A351013.P2342639399760648261

/-! ## A351013.P5756231014773756757

`A080595(A318485(n))`
-/

namespace A351013.P5756231014773756757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A318485 n).toNat

end

end A351013.P5756231014773756757

/-! ## A351013.P8601096602573021948

`A276571(A294768(n))`
-/

namespace A351013.P8601096602573021948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A294768 n).toNat

end

end A351013.P8601096602573021948

/-! ## A351013.P15979943146535195573

`A055086(∑[A036767(n)]-n)`
-/

namespace A351013.P15979943146535195573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A351013.P15979943146535195573

/-! ## A351013.P13936281216277678897

`∑[A000194(A148667(n))]-n`
-/

namespace A351013.P13936281216277678897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A148667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A351013.P13936281216277678897

/-!
# A351014: Number of distinct runs in the n-th composition in standard order.

The programs for A351014, there is no canonical definition to state claims against.
-/

/-! ## A351014.P11298843562420527052

`A353854(A353847(n))+A353849(n)-1`
-/

namespace A351014.P11298843562420527052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 (A353847 n).toNat + (A353849 n - 1)

end

end A351014.P11298843562420527052

/-! ## A351014.P17657931797921622942

`A354582(A353847(n)%A370972(n+1))`
-/

namespace A351014.P17657931797921622942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (Int.tmod (A353847 n) (A370972 (n + 1))).toNat

end

end A351014.P17657931797921622942

/-! ## A351014.P17076305335254713848

`A334028(n)+A025465(A133188(2*(n+1)))`
-/

namespace A351014.P17076305335254713848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n + A025465 (A133188 (2 * (n + 1))).toNat

end

end A351014.P17076305335254713848

/-! ## A351014.P7521526784591254531

`A354907((char[∑[n]]+1)*A353847(n))`
-/

namespace A351014.P7521526784591254531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 ((((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A353847 n).toNat

end

end A351014.P7521526784591254531

/-! ## A351014.P7876781314347513455

`A354582(A001285(2*n+1)*A353847(n))`
-/

namespace A351014.P7876781314347513455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A001285 (2 * n + 1) * A353847 n).toNat

end

end A351014.P7876781314347513455

/-!
# A351015: Smallest k such that the k-th composition in standard order has n distinct runs.

The programs for A351015, there is no canonical definition to state claims against.
-/

/-! ## A351015.P7599236513019038029

`A047994(A084262(n)+1)-1`
-/

namespace A351015.P7599236513019038029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A084262 n + 1).toNat - 1

end

end A351015.P7599236513019038029

/-!
# A351016: Number of binary words of length n with all distinct runs.

The programs for A351016, there is no canonical definition to state claims against.
-/

/-! ## A351016.P9690778627631501502

`ceil(cosh(sin(n)))*A351018(n)`
-/

namespace A351016.P9690778627631501502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A351018 n

end

end A351016.P9690778627631501502

/-! ## A351016.P15798874515726866771

`A000122(n²)*A351018(n)`
-/

namespace A351016.P15798874515726866771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A351018 n

end

end A351016.P15798874515726866771

/-! ## A351016.P5730734051169311598

`sqrt(A123932(n))*A351018(n)`
-/

namespace A351016.P5730734051169311598
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A123932 n : ℝ) * (A351018 n : ℝ)

end

end A351016.P5730734051169311598

/-! ## A351016.P11276959591849626234

`A036452(n+1)*A351018(n)`
-/

namespace A351016.P11276959591849626234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A351018 n

end

end A351016.P11276959591849626234

/-!
# A351017: Number of binary words of length n with all distinct run-lengths.

The programs for A351017, there is no canonical definition to state claims against.
-/

/-! ## A351017.P17752496395556904565

`lcm(A032020(n), A280560(n))`
-/

namespace A351017.P17752496395556904565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032020 n) (A280560 n)

end

end A351017.P17752496395556904565

/-! ## A351017.P2942645870363405241

`A000122(n²)*A032020(n)`
-/

namespace A351017.P2942645870363405241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A032020 n

end

end A351017.P2942645870363405241

/-! ## A351017.P4272768956917598748

`log2(A040002(n))*A032020(n)`
-/

namespace A351017.P4272768956917598748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040002 n : ℝ) * (A032020 n : ℝ)

end

end A351017.P4272768956917598748

/-!
# A351018: Number of integer compositions of n with all distinct even-indexed parts and all distinct odd-indexed parts.

The programs for A351018, there is no canonical definition to state claims against.
-/

/-! ## A351018.P18026877295849021730

`A351644(n)-A351643(A028310(n))`
-/

namespace A351018.P18026877295849021730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351644 n - A351643 (A028310 n).toNat

end

end A351018.P18026877295849021730

/-! ## A351018.P1422937937261598509

`A351641(A133263(n))+1`
-/

namespace A351018.P1422937937261598509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351641 (A133263 n).toNat + 1

end

end A351018.P1422937937261598509

/-! ## A351018.P10132804750164861101

`ceil(A351016(n)/2)`
-/

namespace A351018.P10132804750164861101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351016 n : ℚ) / 2⌉

end

end A351018.P10132804750164861101

/-! ## A351018.P3840770687927803711

`A351016(round(sqrt(n²+1)))/2`
-/

namespace A351018.P3840770687927803711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351016 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A351018.P3840770687927803711

/-!
# A351019: Minimal permanent of an n X n symmetric Toeplitz matrix using the integers 1 to n.

The programs for A351019, there is no canonical definition to state claims against.
-/

/-! ## A351019.P11534139287707591336

`A100786(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A351019.P11534139287707591336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A100786 (a (n - 1)).toNat

end

end A351019.P11534139287707591336

/-!
# A351020: Maximal permanent of an n X n symmetric Toeplitz matrix using the integers 1 to n.

The programs for A351020, there is no canonical definition to state claims against.
-/

/-! ## A351020.P2745848552976952586

`A295887(∑[A295766(n)])`
-/

namespace A351020.P2745848552976952586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295887 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351020.P2745848552976952586

/-!
# A351021: Minimal permanent of an n X n symmetric Toeplitz matrix using the first n prime numbers.

The programs for A351021, there is no canonical definition to state claims against.
-/

/-! ## A351021.P15755728348039145269

`A026138(A204264(n)+n)`
-/

namespace A351021.P15755728348039145269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (A204264 n + (n : ℤ)).toNat

end

end A351021.P15755728348039145269

/-!
# A351023: Dirichlet g.f.: Product_{k>=2} 1 / (1 + 2 * k^(-s)).

The programs for A351023, there is no canonical definition to state claims against.
-/

/-! ## A351023.P4028811216559915345

`A008836(n+1)*A329601(A284426(n))`
-/

namespace A351023.P4028811216559915345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A329601 (A284426 n).toNat

end

end A351023.P4028811216559915345

/-! ## A351023.P12783237458031368614

`A131562(A001222(n+1))*A325249(A065389(n+2))`
-/

namespace A351023.P12783237458031368614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131562 (A001222 (n + 1)).toNat * A325249 (A065389 (n + 2)).toNat

end

end A351023.P12783237458031368614

/-!
# A351026: Possible bases b > 17 which can be used in Pepin's test to check the primality of any Fermat number greater than 5 only in the case when the base b is smaller than the tested number.

The programs for A351026, there is no canonical definition to state claims against.
-/

/-! ## A351026.P6411979747919157103

`∩[17*n, A136804(n+1)]`
-/

namespace A351026.P6411979747919157103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351026.P6411979747919157103

/-! ## A351026.P13099386990070660737

`record[17*A048288(A116451(n))]`
-/

namespace A351026.P13099386990070660737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A048288 (A116451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351026.P13099386990070660737

/-! ## A351026.P18134518856975920302

`17*A225633(A232488(n+1))`
-/

namespace A351026.P18134518856975920302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A225633 (A232488 (n + 1)).toNat

end

end A351026.P18134518856975920302

/-!
# A351028: G.f. A(x) satisfies: A(x) = x + x^2 * A(x/(1 - 2*x)) / (1 - 2*x).

The programs for A351028, there is no canonical definition to state claims against.
-/

/-! ## A351028.P8915316821030869546

`A007472(n)-A351143(n)`
-/

namespace A351028.P8915316821030869546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007472 n - A351143 n

end

end A351028.P8915316821030869546

/-! ## A351028.P9961686889680551633

`abs(abs(A350456(n))-A351143(n))`
-/

namespace A351028.P9961686889680551633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A350456 n| - A351143 n)|

end

end A351028.P9961686889680551633

/-! ## A351028.P5732867325922292793

`A351143(n)-A033999(n)*A350456(n)`
-/

namespace A351028.P5732867325922292793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351143 n - A033999 n * A350456 n

end

end A351028.P5732867325922292793

/-! ## A351028.P18215897527390571980

`or(n%2, A008618(A150000(n)))`
-/

namespace A351028.P18215897527390571980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A008618 (A150000 n).toNat)

end

end A351028.P18215897527390571980

/-!
# A351029: Number of integers whose arithmetic derivative is equal to the n-th primorial.

The programs for A351029, there is no canonical definition to state claims against.
-/

/-! ## A351029.P997890261346037674

`A116979(n+1)+A369000(n+1)`
-/

namespace A351029.P997890261346037674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116979 (n + 1) + A369000 (n + 1)

end

end A351029.P997890261346037674

/-! ## A351029.P9853942540472487014

`A342753(A093784(2*(n+2)))+A116979(n+1)`
-/

namespace A351029.P9853942540472487014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A093784 (2 * (n + 2))).toNat + A116979 (n + 1)

end

end A351029.P9853942540472487014

/-! ## A351029.P7327443264097392992

`A116979(A363331(n+1))+A010060(3*n+3)`
-/

namespace A351029.P7327443264097392992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116979 (A363331 (n + 1)).toNat + A010060 (3 * n + 3)

end

end A351029.P7327443264097392992

/-!
# A351030: Lexicographically earliest infinite sequence such that a(i) = a(j) => A351031(i) = A351031(j) and A351032(i) = A351032(j), for all i, j >= 1.

The programs for A351030, there is no canonical definition to state claims against.
-/

/-! ## A351030.P1359065076703360009

`A323400(n+1)-A157928(A230445(n))`
-/

namespace A351030.P1359065076703360009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323400 (n + 1) - A157928 (A230445 n).toNat

end

end A351030.P1359065076703360009

/-! ## A351030.P2994938609680485321

`A323400(n+1)-A057427(A351003(n)-1)`
-/

namespace A351030.P2994938609680485321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323400 (n + 1) - A057427 (A351003 n - 1).toNat

end

end A351030.P2994938609680485321

/-! ## A351030.P5233202357635212796

`A323400(n+1)+A014306(A351003(n))*A205535(2*(n+2))`
-/

namespace A351030.P5233202357635212796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323400 (n + 1) + A014306 (A351003 n).toNat * A205535 (2 * (n + 2))

end

end A351030.P5233202357635212796

/-! ## A351030.P7838141901430324008

`A323400(n+1)-A001065(A071963(n))`
-/

namespace A351030.P7838141901430324008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323400 (n + 1) - A001065 (A071963 n).toNat

end

end A351030.P7838141901430324008

/-!
# A351032: a(n) = Product_{d|n, d<n} A019565(A291759(d)).

The programs for A351032, there is no canonical definition to state claims against.
-/

/-! ## A351032.P6818933054964082496

`A047726((A266770(2*(n+1))-1)^val(n+1, 2))`
-/

namespace A351032.P6818933054964082496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 ((A266770 (2 * (n + 1)) - 1) ^ SequenceMachineLib.valuation (n + 1) 2).toNat

end

end A351032.P6818933054964082496

/-! ## A351032.P547682716325104012

`gcd(A004460(n), A083392(A011782(n)))`
-/

namespace A351032.P547682716325104012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004460 n) (A083392 (A011782 n).toNat)

end

end A351032.P547682716325104012

/-! ## A351032.P11432709454735686121

`gcd(A095264(n+1), A108738(A102456(n)))`
-/

namespace A351032.P11432709454735686121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095264 (n + 1)) (A108738 (A102456 n).toNat)

end

end A351032.P11432709454735686121

/-! ## A351032.P397076371917091244

`gcd(A047360(n+1), A347445(A347445(n)))`
-/

namespace A351032.P397076371917091244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047360 (n + 1)) (A347445 (A347445 n).toNat)

end

end A351032.P397076371917091244

/-!
# A351033: Lexicographically earliest infinite sequence such that a(i) = a(j) => A351031(i) = A351031(j), for all i, j >= 1.

The programs for A351033, there is no canonical definition to state claims against.
-/

/-! ## A351033.P5923449870359041196

`A110591(A351031(n+1)²)`
-/

namespace A351033.P5923449870359041196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A351031 (n + 1) ^ 2).toNat

end

end A351033.P5923449870359041196

/-! ## A351033.P10668217205828920455

`A110591((A351031(n+1)+1)*A351031(n+1))`
-/

namespace A351033.P10668217205828920455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 ((A351031 (n + 1) + 1) * A351031 (n + 1)).toNat

end

end A351033.P10668217205828920455

/-! ## A351033.P4941259951658229099

`A331255(A351031(n+1))`
-/

namespace A351033.P4941259951658229099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331255 (A351031 (n + 1)).toNat

end

end A351033.P4941259951658229099

/-! ## A351033.P3076218550160937021

`A010553(A107900(n+1)^A277700(n))`
-/

namespace A351033.P3076218550160937021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (SequenceMachineLib.roundAway ((A107900 (n + 1) : ℚ) ^ (A277700 n : ℤ))).toNat

end

end A351033.P3076218550160937021

/-! ## A351033.P4887564286616401860

`A240471(A240453(n+1)*A351031(n+1))`
-/

namespace A351033.P4887564286616401860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240471 (A240453 (n + 1) * A351031 (n + 1)).toNat

end

end A351033.P4887564286616401860

/-!
# A351034: Lexicographically earliest infinite sequence such that a(i) = a(j) => A351032(i) = A351032(j), for all i, j >= 1.

The programs for A351034, there is no canonical definition to state claims against.
-/

/-! ## A351034.P3406757992576432401

`A063787(C(n, A035464(n+1)))`
-/

namespace A351034.P3406757992576432401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (Nat.choose n (A035464 (n + 1)).toNat)

end

end A351034.P3406757992576432401

/-! ## A351034.P14704834359316606807

`A110591(lcm(A022895(n+1), A137688(n)))`
-/

namespace A351034.P14704834359316606807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (Int.lcm (A022895 (n + 1)) (A137688 n))

end

end A351034.P14704834359316606807

/-! ## A351034.P17436772814836529812

`A000120((A090649(n+2)-A114639(n))^(n%2))`
-/

namespace A351034.P17436772814836529812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((A090649 (n + 2) - A114639 n) ^ (n % 2)).toNat

end

end A351034.P17436772814836529812

/-! ## A351034.P17111705144376534677

`A260372(A036561(n))^(n%2)`
-/

namespace A351034.P17111705144376534677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260372 (A036561 n).toNat ^ (n % 2)

end

end A351034.P17111705144376534677

/-! ## A351034.P15856569857113994867

`A260372(A036561(n))^∑[A062157(n)]`
-/

namespace A351034.P15856569857113994867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260372 (A036561 n).toNat : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A351034.P15856569857113994867

/-!
# A351038: Numbers whose maximal digit in their primorial base expansion is not larger than the maximal exponent in their prime factorization.

The programs for A351038, there is no canonical definition to state claims against.
-/

/-! ## A351038.P17099847767603051375

`record[(n+2)*A351039(n+2)]`
-/

namespace A351038.P17099847767603051375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A351039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351038.P17099847767603051375

/-! ## A351038.P5140789264890480767

`filter[A305810(n+1), A351039(#)]`
-/

namespace A351038.P5140789264890480767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351039 (f1 j).toNat = 1) n)

end

end A351038.P5140789264890480767

/-! ## A351038.P7788873989612030213

`filter[A344180(n), A351039(#)]`
-/

namespace A351038.P7788873989612030213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351039 (f1 j).toNat = 1) n)

end

end A351038.P7788873989612030213

/-! ## A351038.P3586556883156521978

`eq[1, A351039(n+1)]+1`
-/

namespace A351038.P3586556883156521978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351038.P3586556883156521978

/-! ## A351038.P14607259542729392328

`lt[A350074(n+1), 1]+1`
-/

namespace A351038.P14607259542729392328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350074 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A351038.P14607259542729392328

/-! ## A351038.P12507948288998047055

`filter[A028392(n+1), A351039(#)]`
-/

namespace A351038.P12507948288998047055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351039 (f1 j).toNat = 1) n)

end

end A351038.P12507948288998047055

/-! ## A351038.P1887779108607809631

`A020725(eq[1, A351039(n+1)])`
-/

namespace A351038.P1887779108607809631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351038.P1887779108607809631

/-! ## A351038.P332312414045989695

`eq[1, A351039(gcd(n, A022144(n)))]`
-/

namespace A351038.P332312414045989695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351039 (Int.gcd (n : ℤ) (A022144 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351038.P332312414045989695

/-! ## A351038.P12348987218341842373

`eq[1, A351039(A000007(n)+n)]`
-/

namespace A351038.P12348987218341842373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351039 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351038.P12348987218341842373

/-! ## A351038.P1609311316785214913

`filter[A092942(n+1), A351039(#)]`
-/

namespace A351038.P1609311316785214913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351039 (f1 j).toNat = 1) n)

end

end A351038.P1609311316785214913

/-! ## A351038.P9339229210367679086

`filter[A079947(n+1), A351039(#)]`
-/

namespace A351038.P9339229210367679086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351039 (f1 j).toNat = 1) n)

end

end A351038.P9339229210367679086

/-! ## A351038.P11825688913888572141

`filter[A152271(n), A351039(#)]`
-/

namespace A351038.P11825688913888572141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351039 (f1 j).toNat = 1) n)

end

end A351038.P11825688913888572141

/-! ## A351038.P9517759767295131023

`filter[A158416(n), A351039(#)]`
-/

namespace A351038.P9517759767295131023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351039 (f1 j).toNat = 1) n)

end

end A351038.P9517759767295131023

/-! ## A351038.P16033221100580789327

`eq[1, A351039(A123108(2*n))]`
-/

namespace A351038.P16033221100580789327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351039 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351038.P16033221100580789327

/-! ## A351038.P1785473262558671268

`filter[A038459(n+1), A351039(#)]`
-/

namespace A351038.P1785473262558671268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351039 (f1 j).toNat = 1) n)

end

end A351038.P1785473262558671268

/-! ## A351038.P10769189655152578267

`filter[A133622(n+1), A351039(#)]`
-/

namespace A351038.P10769189655152578267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351039 (f1 j).toNat = 1) n)

end

end A351038.P10769189655152578267

/-! ## A351038.P18339231661085163715

`filter[A332864(n+1), A351039(#)]`
-/

namespace A351038.P18339231661085163715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351039 (f1 j).toNat = 1) n)

end

end A351038.P18339231661085163715

/-!
# A351039: a(n) = 1 if the maximal digit in the primorial base expansion of n is less than or equal to the maximal exponent in the prime factorization of n.

The programs for A351039, there is no canonical definition to state claims against.
-/

/-! ## A351039.P3075585320572787493

`char[A351038(n+1)-1]`
-/

namespace A351039.P3075585320572787493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351038 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A351039.P3075585320572787493

/-! ## A351039.P11034791079633315023

`char[lt[A350074(n+1), 1]]`
-/

namespace A351039.P11034791079633315023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350074 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A351039.P11034791079633315023

/-! ## A351039.P6058927215283597230

`A275973(A350074(n+1)+16)`
-/

namespace A351039.P6058927215283597230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (A350074 (n + 1) + 16).toNat

end

end A351039.P6058927215283597230

/-! ## A351039.P7400055037312580567

`A008611(ceil(A350074(n+1)/9))`
-/

namespace A351039.P7400055037312580567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ⌈(A350074 (n + 1) : ℚ) / 9⌉.toNat

end

end A351039.P7400055037312580567

/-! ## A351039.P12041074873937755465

`A088153(ceil(A350074(n+1)/9))`
-/

namespace A351039.P12041074873937755465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088153 ⌈(A350074 (n + 1) : ℚ) / 9⌉.toNat

end

end A351039.P12041074873937755465

/-! ## A351039.P14676842394149193913

`A000007(A350070(n+1)*A350074(n+1))`
-/

namespace A351039.P14676842394149193913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A350070 (n + 1) * A350074 (n + 1)).toNat

end

end A351039.P14676842394149193913

/-!
# A351041: Minimal number of steps for a Racetrack car (using Moore neighborhood) to go around a circle of radius n.

The programs for A351041, there is no canonical definition to state claims against.
-/

/-! ## A351041.P4539315156447428217

`A000194(A080664(n+1)+A006832(n+1))`
-/

namespace A351041.P4539315156447428217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A080664 (n + 1) + A006832 (n + 1)).toNat

end

end A351041.P4539315156447428217

/-! ## A351041.P13105279896142476596

`A000194(A106311(n+1)+A080664(n+1))`
-/

namespace A351041.P13105279896142476596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A106311 (n + 1) + A080664 (n + 1)).toNat

end

end A351041.P13105279896142476596

/-! ## A351041.P14582113429569589064

`A095773(3*n+4)+A088519(A179909(n+1))`
-/

namespace A351041.P14582113429569589064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (3 * n + 4) + A088519 (A179909 (n + 1)).toNat

end

end A351041.P14582113429569589064

/-! ## A351041.P16597687696983565107

`A000194(A351352(2*n+9)+A006832(n+1))`
-/

namespace A351041.P16597687696983565107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A351352 (2 * n + 9) + A006832 (n + 1)).toNat

end

end A351041.P16597687696983565107

/-! ## A351041.P10567164754860348226

`A000194(A351352(2*n+9)+A106311(n+1))`
-/

namespace A351041.P10567164754860348226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A351352 (2 * n + 9) + A106311 (n + 1)).toNat

end

end A351041.P10567164754860348226

/-!
# A351042: Minimal number of steps for a Racetrack car (using von Neumann neighborhood) to go around a circle of radius n.

The programs for A351042, there is no canonical definition to state claims against.
-/

/-! ## A351042.P14037978391094217666

`lt[23, A187494(n)%A002620(n+2)]`
-/

namespace A351042.P14037978391094217666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187494 (n + 43)) (A002620 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A351042.P14037978391094217666

/-! ## A351042.P1733670209419518308

`A213443(A035214(n)+A008574(n))`
-/

namespace A351042.P1733670209419518308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213443 (A035214 n + A008574 n).toNat

end

end A351042.P1733670209419518308

/-! ## A351042.P14376839890183069696

`lt[A086024(A274640(n)), A092047(n+1)]`
-/

namespace A351042.P14376839890183069696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086024 (A274640 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092047 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351042.P14376839890183069696

/-! ## A351042.P14856076200190318726

`lt[A280851(A098871(n)), A000009(n)]`
-/

namespace A351042.P14856076200190318726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280851 (A098871 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351042.P14856076200190318726

/-!
# A351046: a(1)=1; a(2)=4; for n>2, a(n) = a(n-1) + A000217(n)*a(n-2).

The programs for A351046, the canonical program `A351046.P679532529453061544` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351046 has offset 1).

The definition of A351046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000217(n+1)*a(n-2)` (program `A351046.P679532529453061544`, by `A351046.P679532529453061544.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A351046.P14578590508526722430

`a(n-1)+(n+1)*(n+2)/2*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A351046.P14578590508526722430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + ((n + 1) * (n + 2) : ℚ) / 2 * a (n - 2)

end

end A351046.P14578590508526722430

namespace A351046

/-- `a(n-1)+(n+1)*(n+2)/2*a(n-2)` -/
def P14578590508526722430.Spec : Prop :=
  ∀ n, P14578590508526722430.a n = (A351046 (n + 1) : ℚ)

end A351046

/-! ## A351046.P679532529453061544

`a(n-1)+A000217(n+1)*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A351046

/-- `a(n-1)+A000217(n+1)*a(n-2)` -/
def P679532529453061544.Spec : Prop :=
  ∀ n, P679532529453061544.a n = A351046 (n + 1)

theorem P679532529453061544.correct : P679532529453061544.Spec := by
  intro n
  simp only [A351046, Nat.add_sub_cancel]

end A351046

/-! ## A351046.P10805209349275974495

`∏[∑[n+1]/a(n-1)+1]` with `a(0)=1`
-/

namespace A351046.P10805209349275974495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A351046.P10805209349275974495

namespace A351046

/-- `∏[∑[n+1]/a(n-1)+1]` -/
def P10805209349275974495.Spec : Prop :=
  ∀ n, P10805209349275974495.a n = (A351046 (n + 1) : ℚ)

end A351046

/-! ## A351046.P9082967424752949715

`a(n-1)+a(n-2)*∑[n+1]` with `a(0)=1, a(1)=4`
-/

namespace A351046.P9082967424752949715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351046.P9082967424752949715

namespace A351046

/-- `a(n-1)+a(n-2)*∑[n+1]` -/
def P9082967424752949715.Spec : Prop :=
  ∀ n, (P9082967424752949715.a n : ℤ) = A351046 (n + 1)

end A351046

/-!
# A351047: a(n) = Sum_{k=1..n} n^rad(k).

The programs for A351047, the canonical program `A351047.P6450607531924013331` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351047 has offset 1).

The definition of A351047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351047.P6450607531924013331

`∑{#}[n, (n+1)^A007947(#+1)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A351047

/-- `∑{#}[n, (n+1)^A007947(#+1)]` -/
def P6450607531924013331.Spec : Prop :=
  ∀ n, P6450607531924013331.a n = (A351047 (n + 1) : ℚ)

end A351047

/-!
# A351049: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 - 3*x)) / (1 - 3*x).

The programs for A351049, there is no canonical definition to state claims against.
-/

/-! ## A351049.P7309779452769469192

`A351144(n)+A351053(n)`
-/

namespace A351049.P7309779452769469192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351144 n + A351053 n

end

end A351049.P7309779452769469192

/-! ## A351049.P13297440229454516221

`A351053(n)+A351053(n)+A033999(n)*A351184(n)`
-/

namespace A351049.P13297440229454516221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351053 n + (A351053 n + A033999 n * A351184 n)

end

end A351049.P13297440229454516221

/-! ## A351049.P13652965939029204849

`A351144(n)+A351144(n)-A033999(n)*A351184(n)`
-/

namespace A351049.P13652965939029204849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351144 n + (A351144 n - A033999 n * A351184 n)

end

end A351049.P13652965939029204849

/-! ## A351049.P541460618241237629

`A351144(n)-A001489(A351144(n)-A033999(n)*A351184(n))`
-/

namespace A351049.P541460618241237629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351144 n - A001489 (A351144 n - A033999 n * A351184 n).toNat

end

end A351049.P541460618241237629

/-!
# A351050: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 - 4*x)) / (1 - 4*x).

The programs for A351050, there is no canonical definition to state claims against.
-/

/-! ## A351050.P272303341085600314

`A351150(n)+A351128(n)`
-/

namespace A351050.P272303341085600314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351150 n + A351128 n

end

end A351050.P272303341085600314

/-! ## A351050.P646563275741847420

`A351150(n)+abs(A351150(n)-abs(A351185(n)))`
-/

namespace A351050.P646563275741847420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351150 n + |(A351150 n - |A351185 n|)|

end

end A351050.P646563275741847420

/-! ## A351050.P12763948902143755950

`A351150(n)-A001489(abs(A351150(n)-abs(A351185(n))))`
-/

namespace A351050.P12763948902143755950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351150 n - A001489 |(A351150 n - |A351185 n|)|.toNat

end

end A351050.P12763948902143755950

/-!
# A351053: G.f. A(x) satisfies: A(x) = x + x^2 * A(x/(1 - 3*x)) / (1 - 3*x).

The programs for A351053, there is no canonical definition to state claims against.
-/

/-! ## A351053.P7595188633501375881

`A351049(n)-A351144(n)`
-/

namespace A351053.P7595188633501375881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351049 n - A351144 n

end

end A351053.P7595188633501375881

/-! ## A351053.P4806534021380006043

`A351144(n)-A033999(n)*A351184(n)`
-/

namespace A351053.P4806534021380006043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351144 n - A033999 n * A351184 n

end

end A351053.P4806534021380006043

/-! ## A351053.P8950754558606558414

`A106420(a(n-1))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A351053.P8950754558606558414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  A106420 (a (n - 1)).toNat

end

end A351053.P8950754558606558414

/-!
# A351056: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 - 5*x)) / (1 - 5*x).

The programs for A351056, there is no canonical definition to state claims against.
-/

/-! ## A351056.P12796394149497464800

`A351151(n)+A351132(n)`
-/

namespace A351056.P12796394149497464800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351151 n + A351132 n

end

end A351056.P12796394149497464800

/-! ## A351056.P2941258894303867729

`A004526(A213228(n)+A090192(n))`
-/

namespace A351056.P2941258894303867729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213228 n + A090192 n).toNat

end

end A351056.P2941258894303867729

/-! ## A351056.P15790281383136743725

`A123108(A213228(n)+A090192(n))`
-/

namespace A351056.P15790281383136743725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A213228 n + A090192 n).toNat

end

end A351056.P15790281383136743725

/-!
# A351057: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 - 6*x)) / (1 - 6*x).

The programs for A351057, there is no canonical definition to state claims against.
-/

/-! ## A351057.P6732179948661197623

`A351161(n)+A351152(n)`
-/

namespace A351057.P6732179948661197623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351161 n + A351152 n

end

end A351057.P6732179948661197623

/-! ## A351057.P16859438233513389463

`A351152(n)+A351152(n)-A033999(n)*A351187(n)`
-/

namespace A351057.P16859438233513389463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351152 n + (A351152 n - A033999 n * A351187 n)

end

end A351057.P16859438233513389463

/-! ## A351057.P12514130471031361775

`A351152(n)-A001489(A351152(n)-A033999(n)*A351187(n))`
-/

namespace A351057.P12514130471031361775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351152 n - A001489 (A351152 n - A033999 n * A351187 n).toNat

end

end A351057.P12514130471031361775

/-!
# A351058: Number of numbers <= n that are either nonprime divisors of n or primes not dividing n.

The programs for A351058, there is no canonical definition to state claims against.
-/

/-! ## A351058.P12656253567049293519

`A351519(n+1)-∑{p}[n+1, gcd(n, #)]`
-/

namespace A351058.P12656253567049293519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351519 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A351058.P12656253567049293519

/-! ## A351058.P4295027597421457231

`1-(A279436(n+1)-n)-∑{e}[∏{p}[n+1, #], #]`
-/

namespace A351058.P4295027597421457231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A279436 (n + 1) - (n : ℤ)) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A351058.P4295027597421457231

/-! ## A351058.P4761466679429700906

`A082514(n+1)-∑{p}[n+1, n²%#]%(n+1)-∑{e}[∏{p}[n+1, #], #]`
-/

namespace A351058.P4761466679429700906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (n + 1) - (((∑ p ∈ Nat.primeFactors (f1 n), n ^ 2 % p) % (n + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A351058.P4761466679429700906

/-! ## A351058.P16178751610575448001

`A048865(n+1)+A033273(n+1)`
-/

namespace A351058.P16178751610575448001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A033273 (n + 1)

end

end A351058.P16178751610575448001

/-! ## A351058.P10204769843426390545

`A351519(n+1)-A001221(n+1)`
-/

namespace A351058.P10204769843426390545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351519 (n + 1) - A001221 (n + 1)

end

end A351058.P10204769843426390545

/-! ## A351058.P15315855271891330248

`A378993(n+1)-A279436(n+1)`
-/

namespace A351058.P15315855271891330248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378993 (n + 1) - A279436 (n + 1)

end

end A351058.P15315855271891330248

/-! ## A351058.P140654673271252336

`A048865(n+1)+A055212(n+1)+1`
-/

namespace A351058.P140654673271252336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + (A055212 (n + 1) + 1)

end

end A351058.P140654673271252336

/-! ## A351058.P5200660740902136934

`A082513(n+1)+2*A033273(n+1)`
-/

namespace A351058.P5200660740902136934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (n + 1) + 2 * A033273 (n + 1)

end

end A351058.P5200660740902136934

/-! ## A351058.P3046366520036578855

`A082514(n+1)-2*A001221(n+1)`
-/

namespace A351058.P3046366520036578855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (n + 1) - 2 * A001221 (n + 1)

end

end A351058.P3046366520036578855

/-! ## A351058.P10888073172556721404

`A351519(n+1)-A001222(∏{p}[n+1, #])`
-/

namespace A351058.P10888073172556721404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351519 (n + 1) - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351058.P10888073172556721404

/-!
# A351061: Smallest positive integer whose square can be written as the sum of n positive perfect squares.

The programs for A351061, there is no canonical definition to state claims against.
-/

/-! ## A351061.P379782151038621931

`sqrt(A215539(n+1))`
-/

namespace A351061.P379782151038621931
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A215539 (n + 1) : ℝ)

end

end A351061.P379782151038621931

/-! ## A351061.P1140348900064310129

`root(A215539(n+1), A133265(A133265(n)))`
-/

namespace A351061.P1140348900064310129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A215539 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A351061.P1140348900064310129

/-! ## A351061.P14332829345471112497

`A000188(A215539(n+1)+A000007(n))`
-/

namespace A351061.P14332829345471112497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A215539 (n + 1) + A000007 n).toNat

end

end A351061.P14332829345471112497

/-! ## A351061.P4876300038832085776

`A000188(A215539(n+1)%A085027(n))`
-/

namespace A351061.P4876300038832085776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.tmod (A215539 (n + 1)) (A085027 n)).toNat

end

end A351061.P4876300038832085776

/-! ## A351061.P12781899001812673844

`A000196(A215539(n+1)+1)`
-/

namespace A351061.P12781899001812673844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A215539 (n + 1) + 1).toNat

end

end A351061.P12781899001812673844

/-! ## A351061.P12677576883041473423

`A002260(2*A215539(n+1))`
-/

namespace A351061.P12677576883041473423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A215539 (n + 1)).toNat

end

end A351061.P12677576883041473423

/-! ## A351061.P5846234404822039095

`A000188(2*A215539(n+1))`
-/

namespace A351061.P5846234404822039095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A215539 (n + 1)).toNat

end

end A351061.P5846234404822039095

/-! ## A351061.P13736455354349372598

`A000188(lcm(2, A215539(n+1)))`
-/

namespace A351061.P13736455354349372598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.lcm 2 (A215539 (n + 1)))

end

end A351061.P13736455354349372598

/-!
# A351062: Numbers which are the sum of two perfect powers with different exponents: m = a^x + b^y with a > 0, b > 0, x > 1, y > 1 and x different from y, with m not a perfect power.

The programs for A351062, there is no canonical definition to state claims against.
-/

/-! ## A351062.P3969375561100900274

`eq[2, A351064(n+1)]+1`
-/

namespace A351062.P3969375561100900274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351062.P3969375561100900274

/-! ## A351062.P15567564376706412932

`eq[2, A351064(n^floor(atan(n)))]`
-/

namespace A351062.P15567564376706412932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351064 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351062.P15567564376706412932

/-! ## A351062.P16149129550924855613

`eq[2, A351064(A028310(n))]`
-/

namespace A351062.P16149129550924855613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351064 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351062.P16149129550924855613

/-! ## A351062.P5621912201125165003

`A020725(eq[2, A351064(n+1)])`
-/

namespace A351062.P5621912201125165003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351062.P5621912201125165003

/-! ## A351062.P753925173159895206

`eq[2, A351064(A065033(2*n))]`
-/

namespace A351062.P753925173159895206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351064 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351062.P753925173159895206

/-!
# A351063: Sums of four perfect powers with different exponents: m = a^x + b^y + c^z + d^t with a > 0, b > 0, c > 0, d > 0, x > 1, y > 1, z > 1, t > 1 and x, y, z, t are all different, with m not representable with fewer such addends.

The programs for A351063, there is no canonical definition to state claims against.
-/

/-! ## A351063.P10379818282512166528

`or(A211992(A156616(n+3)), A348237(2*(n+1)))`
-/

namespace A351063.P10379818282512166528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A211992 (A156616 (n + 3)).toNat) (A348237 (2 * (n + 1)))

end

end A351063.P10379818282512166528

/-!
# A351064: Minimal number of positive perfect powers, with different exponents, whose sum is n (considering only minimal possible exponents for bases equal to 1).

The programs for A351064, there is no canonical definition to state claims against.
-/

/-! ## A351064.P3200066286176965863

`gcd(A003315(n+1), A105570(A022126(n)))`
-/

namespace A351064.P3200066286176965863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003315 (n + 1)) (A105570 (A022126 n).toNat)

end

end A351064.P3200066286176965863

/-! ## A351064.P12136941740524879587

`gcd(A003279(n), A003315(n+1))`
-/

namespace A351064.P12136941740524879587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003279 n) (A003315 (n + 1))

end

end A351064.P12136941740524879587

/-!
# A351065: Number of different ways to obtain n as a sum of the minimal possible number of positive perfect powers with different exponents (considering only minimal possible exponents for bases equal to 1).

The programs for A351065, there is no canonical definition to state claims against.
-/

/-! ## A351065.P11696802329949992738

`A249770(A280918(n+1)+A266402(n+1))`
-/

namespace A351065.P11696802329949992738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249770 (A280918 (n + 1) + A266402 (n + 1)).toNat

end

end A351065.P11696802329949992738

/-!
# A351067: Number of integers between the n-th and the (n+1)-th primorial such that the maximal exponent in their prime factorization is larger than the maximal digit in their primorial base expansion.

The programs for A351067, there is no canonical definition to state claims against.
-/

/-! ## A351067.P9303415804053908635

`Δ[A351068(round(sqrt(n²+1)))]`
-/

namespace A351067.P9303415804053908635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351068 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351067.P9303415804053908635

/-! ## A351067.P3365316471667958047

`abs(Δ[A351068(A051801(n))])`
-/

namespace A351067.P3365316471667958047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351068 (A051801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A351067.P3365316471667958047

/-! ## A351067.P6610380003416330476

`record[Δ[A351068(A005378(n))]]`
-/

namespace A351067.P6610380003416330476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351068 (A005378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351067.P6610380003416330476

/-! ## A351067.P7748291557297367889

`record[Δ[A351068(A008619(n))]]`
-/

namespace A351067.P7748291557297367889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351068 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351067.P7748291557297367889

/-!
# A351068: Number of integers less than the (n+1)-th primorial such that the maximal exponent in their prime factorization is larger than the maximal digit in their primorial base expansion.

The programs for A351068, there is no canonical definition to state claims against.
-/

/-! ## A351068.P3564688991468506957

`∑[A351067(n+1)]`
-/

namespace A351068.P3564688991468506957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351068.P3564688991468506957

/-! ## A351068.P8972435306164794593

`∑[record[A351067(A000121(n))]]`
-/

namespace A351068.P8972435306164794593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351067 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351068.P8972435306164794593

/-! ## A351068.P15237154277373220009

`∑[record[A351067(A000174(n))]]`
-/

namespace A351068.P15237154277373220009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351067 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351068.P15237154277373220009

/-! ## A351068.P11870856296631468286

`∑[record[A351067(A028920(n))]]`
-/

namespace A351068.P11870856296631468286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351067 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351068.P11870856296631468286

/-!
# A351069: Number of integers in range A002110(n) .. A002110(1+n)-1 such that the maximal digit in their primorial base expansion is not larger than the maximal exponent in their prime factorization, where A002110(n) gives the n-th primorial.

The programs for A351069, there is no canonical definition to state claims against.
-/

/-! ## A351069.P8203887100226480605

`xor(or(1, n)+n, A233583(5^n))`
-/

namespace A351069.P8203887100226480605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.lor 1 n + n : ℤ) (A233583 (5 ^ n))

end

end A351069.P8203887100226480605

/-!
# A351070: Number of integers less than the (n+1)-th primorial such that the maximal exponent in their prime factorization is not less than the maximal digit in their primorial base expansion.

The programs for A351070, there is no canonical definition to state claims against.
-/

/-! ## A351070.P5113301431313470594

`∑[A351069(n+1)]`
-/

namespace A351070.P5113301431313470594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351070.P5113301431313470594

/-! ## A351070.P10780332022813011547

`∑[record[A351069(A000174(n))]]`
-/

namespace A351070.P10780332022813011547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351069 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351070.P10780332022813011547

/-! ## A351070.P2685871298503572965

`∑[record[A351069(A022446(n))]]`
-/

namespace A351070.P2685871298503572965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351069 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351070.P2685871298503572965

/-! ## A351070.P1031290189221036017

`∑[record[A351069(A028920(n))]]`
-/

namespace A351070.P1031290189221036017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351069 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351070.P1031290189221036017

/-!
# A351071: Number of integers x in range A002110(n) .. A002110(1+n)-1 such that the k-th arithmetic derivative of A276086(x) is zero for some k, where A002110(n) is the n-th primorial.

The programs for A351071, there is no canonical definition to state claims against.
-/

/-! ## A351071.P183366018388204824

`A328307(A002110(1+n))-A328307(A002110(n))`
-/

namespace A351071.P183366018388204824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328307 (A002110 (1 + n)).toNat - A328307 (A002110 n).toNat

end

end A351071.P183366018388204824

/-! ## A351071.P16094095135268544343

`Δ[eq[2, A351257(n+1)]]`
-/

namespace A351071.P16094095135268544343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351257 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A351071.P16094095135268544343

/-! ## A351071.P11954481286117413604

`Δ[eq[A049240(n+1), A351258(n+1)]]`
-/

namespace A351071.P11954481286117413604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351258 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A351071.P11954481286117413604

/-!
# A351072: a(n) is the number of prime(1+n)-smooth numbers larger than one whose k-th arithmetic derivative is zero for some k.

The programs for A351072, there is no canonical definition to state claims against.
-/

/-! ## A351072.P17965035929835460399

`A328307(A002110(1+n))-2`
-/

namespace A351072.P17965035929835460399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328307 (A002110 (1 + n)).toNat - 2

end

end A351072.P17965035929835460399

/-! ## A351072.P17475850494468265844

`∑[A351071(n)]`
-/

namespace A351072.P17475850494468265844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351072.P17475850494468265844

/-! ## A351072.P6751645450681344074

`∑{digits}[A052246(n), A351071(#)]`
-/

namespace A351072.P6751645450681344074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A351071 x).sum

end

end A351072.P6751645450681344074

/-! ## A351072.P8341072077746044229

`A351071(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A351072.P8341072077746044229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A351071 (A028310 n).toNat + a (n - 1)

end

end A351072.P8341072077746044229

/-!
# A351073: Maximal exponent in the prime factorization of A276156(n).

The programs for A351073, there is no canonical definition to state claims against.
-/

/-! ## A351073.P13310729288491334930

`A051903(A276156(n+1))`
-/

namespace A351073.P13310729288491334930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A276156 (n + 1)).toNat

end

end A351073.P13310729288491334930

/-! ## A351073.P16770649944452741204

`A051903(eq[2, A328576(n)])`
-/

namespace A351073.P16770649944452741204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351073.P16770649944452741204

/-! ## A351073.P8916655745085071289

`A051903(record[A276156(abs(1-n))])`
-/

namespace A351073.P8916655745085071289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A351073.P8916655745085071289

/-! ## A351073.P18199748856746299528

`A051903(eq[1, A328114(n)])`
-/

namespace A351073.P18199748856746299528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351073.P18199748856746299528

/-! ## A351073.P3118394268914049202

`A051903(eq[A000038(n), A328615(n)])`
-/

namespace A351073.P3118394268914049202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A351073.P3118394268914049202

/-! ## A351073.P1615252285354315807

`A051903(eq[A000038(n), A328842(n)])`
-/

namespace A351073.P1615252285354315807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A351073.P1615252285354315807

/-!
# A351074: Difference between the maximal exponent in the prime factorization of A327860(n) and the maximal exponent in the prime factorization of n.

The programs for A351074, there is no canonical definition to state claims against.
-/

/-! ## A351074.P18208455295693580235

`A328391(n+1)-A051903(n+1)`
-/

namespace A351074.P18208455295693580235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A051903 (n + 1)

end

end A351074.P18208455295693580235

/-! ## A351074.P11224659988468283273

`A051903(A327860(n+1))-A051903(n+1)`
-/

namespace A351074.P11224659988468283273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A327860 (n + 1)).toNat - A051903 (n + 1)

end

end A351074.P11224659988468283273

/-! ## A351074.P13974357962400490066

`A350074(n+1)+A342026(n+1)`
-/

namespace A351074.P13974357962400490066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350074 (n + 1) + A342026 (n + 1)

end

end A351074.P13974357962400490066

/-! ## A351074.P5849852640690393675

`A328391(n+1)+1-A067132(n+1)`
-/

namespace A351074.P5849852640690393675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) + (1 - A067132 (n + 1))

end

end A351074.P5849852640690393675

/-! ## A351074.P1223113280313709112

`A328391(n+1)-val(A046523(n+1), 2)`
-/

namespace A351074.P1223113280313709112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 : ℤ)

end

end A351074.P1223113280313709112

/-! ## A351074.P11532411445975137352

`A328391(n+1)-A007814(A046523(n+1))`
-/

namespace A351074.P11532411445975137352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A007814 (A046523 (n + 1)).toNat

end

end A351074.P11532411445975137352

/-! ## A351074.P4832288870683962168

`A328391(n+1)-A023443(A067132(n+1))`
-/

namespace A351074.P4832288870683962168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A023443 (A067132 (n + 1)).toNat

end

end A351074.P4832288870683962168

/-! ## A351074.P447733826020009274

`A328391(n+1)-A051282(A101296(n+1))`
-/

namespace A351074.P447733826020009274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A051282 (A101296 (n + 1)).toNat

end

end A351074.P447733826020009274

/-! ## A351074.P15953625189139696387

`A328391(n+1)-A067029(A089247(n+1))`
-/

namespace A351074.P15953625189139696387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A067029 (A089247 (n + 1)).toNat

end

end A351074.P15953625189139696387

/-! ## A351074.P2996314474237085790

`A328391(n+1)-A001222(A238745(n+1))`
-/

namespace A351074.P2996314474237085790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A001222 (A238745 (n + 1)).toNat

end

end A351074.P2996314474237085790

/-! ## A351074.P11230279606137534733

`A328391(n+1)-A007814(A328400(n+1))`
-/

namespace A351074.P11230279606137534733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A007814 (A328400 (n + 1)).toNat

end

end A351074.P11230279606137534733

/-! ## A351074.P11182399849569785129

`A328391(n+1)-A061395(A329601(n+1))`
-/

namespace A351074.P11182399849569785129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A061395 (A329601 (n + 1)).toNat

end

end A351074.P11182399849569785129

/-! ## A351074.P1251089807579966654

`A328391(n+1)-A089309(A046523(n+1)-1)`
-/

namespace A351074.P1251089807579966654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A089309 (A046523 (n + 1) - 1).toNat

end

end A351074.P1251089807579966654

/-! ## A351074.P4719678115274898686

`A328391(n+1)-(A066301(n+1)+A057427(n))`
-/

namespace A351074.P4719678115274898686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - (A066301 (n + 1) + A057427 n)

end

end A351074.P4719678115274898686

/-! ## A351074.P2225243918232428672

`A328391(n+1)-(A062977(n+1)+A051904(n+1))`
-/

namespace A351074.P2225243918232428672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - (A062977 (n + 1) + A051904 (n + 1))

end

end A351074.P2225243918232428672

/-! ## A351074.P4198027770512518614

`A328114(n+1)+A342026(n+1)-A051903(n+1)`
-/

namespace A351074.P4198027770512518614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (n + 1) + (A342026 (n + 1) - A051903 (n + 1))

end

end A351074.P4198027770512518614

/-! ## A351074.P2422707277791436183

`A328391(n+1)+A350074(n+1)-A328114(n+1)`
-/

namespace A351074.P2422707277791436183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) + (A350074 (n + 1) - A328114 (n + 1))

end

end A351074.P2422707277791436183

/-!
# A351075: Numbers k such that the maximal exponent in the prime factorization of A327860(k) is less than A051903(k), the maximal exponent in the prime factorization of k.

The programs for A351075, there is no canonical definition to state claims against.
-/

/-! ## A351075.P13599918084151824718

`lt[A351077(n+1), 1]+1`
-/

namespace A351075.P13599918084151824718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351077 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A351075.P13599918084151824718

/-! ## A351075.P13522995834672765306

`lt[A351074(n+1), 0]+1`
-/

namespace A351075.P13522995834672765306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A351075.P13522995834672765306

/-! ## A351075.P16793729104267871917

`lt[A328391(n+1), A062977(n+1)+A051904(n+1)]+1`
-/

namespace A351075.P16793729104267871917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1) + A051904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A351075.P16793729104267871917

/-! ## A351075.P15499163318074667442

`lt[A351074(A028310(n)), 0]`
-/

namespace A351075.P15499163318074667442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351075.P15499163318074667442

/-! ## A351075.P9916809305701540667

`eq[A000038(n), A351077(n+1)]+1`
-/

namespace A351075.P9916809305701540667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A351075.P9916809305701540667

/-! ## A351075.P8816705158685847624

`lt[A328391(n+1), A067029(A089247(n+1))]+1`
-/

namespace A351075.P8816705158685847624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A089247 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A351075.P8816705158685847624

/-! ## A351075.P15372120754730508509

`lt[A328391(n+1), A089309(A046523(n+1)-1)]+1`
-/

namespace A351075.P15372120754730508509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A046523 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A351075.P15372120754730508509

/-! ## A351075.P13244816782831924678

`lt[A328391(n+1), A066301(n+1)+A057427(n)]+1`
-/

namespace A351075.P13244816782831924678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (n + 1) + A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A351075.P13244816782831924678

/-!
# A351076: Numbers k such that the maximal exponent in the prime factorization of A327860(k) is greater than or equal to A051903(k), the maximal exponent in the prime factorization of k.

The programs for A351076, there is no canonical definition to state claims against.
-/

/-! ## A351076.P16942189762914432315

`lt[0, A351077(n+1)]+1`
-/

namespace A351076.P16942189762914432315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A351076.P16942189762914432315

/-! ## A351076.P15019775653401421999

`lt[-1, A351074(n+1)]+1`
-/

namespace A351076.P15019775653401421999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A351076.P15019775653401421999

/-! ## A351076.P2690908029857548347

`comp[A351075(abs(1-n)+1)-1]+1`
-/

namespace A351076.P2690908029857548347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351075 (|1 - (n : ℤ)| + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A351076.P2690908029857548347

/-! ## A351076.P15029726338635858862

`record[A000027(n+1)*A351077(n+1)]`
-/

namespace A351076.P15029726338635858862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A351077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351076.P15029726338635858862

/-! ## A351076.P2467059195368833655

`eq[1, A351077(A000038(n)+n)]`
-/

namespace A351076.P2467059195368833655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351077 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351076.P2467059195368833655

/-! ## A351076.P2901307954497742917

`eq[char[A351075(n+1)], A000007(n)]`
-/

namespace A351076.P2901307954497742917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351075 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A351076.P2901307954497742917

/-! ## A351076.P819646476683857870

`filter[A085736(n+1), A351077(#)]`
-/

namespace A351076.P819646476683857870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351077 (f1 j).toNat = 1) n)

end

end A351076.P819646476683857870

/-!
# A351077: a(n) = 1 if the maximal exponent in the prime factorization of A327860(n) is greater than or equal to the maximal exponent in the prime factorization of n, otherwise 0.

The programs for A351077, there is no canonical definition to state claims against.
-/

/-! ## A351077.P12196783537808527656

`char[A351076(n+1)-1]`
-/

namespace A351077.P12196783537808527656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351076 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A351077.P12196783537808527656

/-! ## A351077.P806151226631953601

`ceil(sin(acot(A351074(n+1))))`
-/

namespace A351077.P806151226631953601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (SequenceMachineLib.acot (A351074 (n + 1) : ℝ))⌉

end

end A351077.P806151226631953601

/-! ## A351077.P2300496524089584867

`char[comp[A351075(n+1)-1]]`
-/

namespace A351077.P2300496524089584867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351075 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A351077.P2300496524089584867

/-! ## A351077.P13545736996600635999

`A006257(floor(2^A351074(n+1)))`
-/

namespace A351077.P13545736996600635999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 ⌊(2 : ℚ) ^ (A351074 (n + 1) : ℤ)⌋.toNat

end

end A351077.P13545736996600635999

/-! ## A351077.P8185062014974849896

`1-char[A351075(A063946(n)+1)-1]`
-/

namespace A351077.P8185062014974849896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351075 (A063946 n + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A351077.P8185062014974849896

/-! ## A351077.P1623336094202859118

`A010054(and(A033996(n+1), A351074(n+1)))`
-/

namespace A351077.P1623336094202859118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.land (A033996 (n + 1)) (A351074 (n + 1))).toNat

end

end A351077.P1623336094202859118

/-!
# A351079: a(n) is the largest term encountered on the path from n to 0 when iterating the map x -> x', or 0 if 0 cannot be reached from n (or if n is 0). Here x' is the arithmetic derivative of x, A003415.

The programs for A351079, there is no canonical definition to state claims against.
-/

/-! ## A351079.P2888083050622097149

`n%Δ[A007303(n+5)]`
-/

namespace A351079.P2888083050622097149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007303 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (f1 (n + 1) - f1 n)

end

end A351079.P2888083050622097149

/-! ## A351079.P17808149861942843742

`n*A051023(A027306(n))`
-/

namespace A351079.P17808149861942843742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051023 (A027306 n).toNat

end

end A351079.P17808149861942843742

/-! ## A351079.P1388003595042488662

`n%A040933(A304973(n))`
-/

namespace A351079.P1388003595042488662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A040933 (A304973 n).toNat)

end

end A351079.P1388003595042488662

/-! ## A351079.P14890784000248798652

`n*A104120(A189320(n+1))`
-/

namespace A351079.P14890784000248798652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104120 (A189320 (n + 1)).toNat

end

end A351079.P14890784000248798652

/-! ## A351079.P6503286303864978041

`n*A051023(ceil(A081672(n)/2))`
-/

namespace A351079.P6503286303864978041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051023 ⌈(A081672 n : ℚ) / 2⌉.toNat

end

end A351079.P6503286303864978041

/-!
# A351080: Lexicographically earliest infinite sequence such that a(i) = a(j) => A324198(i) = A324198(j) and A351083(i) = A351083(j) for all i, j >= 0.

The programs for A351080, there is no canonical definition to state claims against.
-/

/-! ## A351080.P15370932952817179240

`A124010(A032008(n+1))+A034853(n+7)`
-/

namespace A351080.P15370932952817179240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A032008 (n + 1)).toNat + A034853 (n + 7)

end

end A351080.P15370932952817179240

/-! ## A351080.P2217703483286255394

`A300230(A332807(n+1)%A141214(3*n+1))`
-/

namespace A351080.P2217703483286255394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300230 (Int.tmod (A332807 (n + 1)) (A141214 (3 * n + 1))).toNat

end

end A351080.P2217703483286255394

/-!
# A351081: a(n) = Product_{d|n} A019565(A289813(d)); a product obtained from the 1-digits present in ternary expansions of the divisors of n.

The programs for A351081, there is no canonical definition to state claims against.
-/

/-! ## A351081.P9166784151407325761

`A019565(A289813(n+1))*A293221(n+1)`
-/

namespace A351081.P9166784151407325761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A289813 (n + 1)).toNat * A293221 (n + 1)

end

end A351081.P9166784151407325761

/-! ## A351081.P2283125971647594459

`∏{d}[n+1, A019565(A289813(#))]`
-/

namespace A351081.P2283125971647594459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A019565 (A289813 d).toNat

end

end A351081.P2283125971647594459

/-! ## A351081.P11302904493548275543

`A293221(n+1)*A302033(A332497(n+1))`
-/

namespace A351081.P11302904493548275543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293221 (n + 1) * A302033 (A332497 (n + 1)).toNat

end

end A351081.P11302904493548275543

/-! ## A351081.P2175477409131592352

`∏{d}[n+1, A007913(A101278(#))]`
-/

namespace A351081.P2175477409131592352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007913 (A101278 d).toNat

end

end A351081.P2175477409131592352

/-! ## A351081.P5341599642338733764

`A293221(2*(n+1))%A336957(A212232(n+1))`
-/

namespace A351081.P5341599642338733764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293221 (2 * (n + 1))) (A336957 (A212232 (n + 1)).toNat)

end

end A351081.P5341599642338733764

/-!
# A351082: a(n) = Product_{d|n} A019565(A289814(d)); a product obtained from the 2-digits present in ternary expansions of the divisors of n.

The programs for A351082, there is no canonical definition to state claims against.
-/

/-! ## A351082.P475081194591565528

`A019565(A289814(n+1))*A293222(n+1)`
-/

namespace A351082.P475081194591565528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A289814 (n + 1)).toNat * A293222 (n + 1)

end

end A351082.P475081194591565528

/-! ## A351082.P10213803422848142313

`∏{d}[A187829(n+1), A289816(#)]`
-/

namespace A351082.P10213803422848142313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A289816 d

end

end A351082.P10213803422848142313

/-! ## A351082.P10478378069383914225

`A289816(A187829(n+1))*A293222(n+1)`
-/

namespace A351082.P10478378069383914225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A187829 (n + 1)).toNat * A293222 (n + 1)

end

end A351082.P10478378069383914225

/-! ## A351082.P3182102319516963621

`∏{d}[A077168(n), A289816(#)]`
-/

namespace A351082.P3182102319516963621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A289816 d

end

end A351082.P3182102319516963621

/-! ## A351082.P3641742805308587276

`A289816(n+1)*A293222(A077168(n))`
-/

namespace A351082.P3641742805308587276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (n + 1) * A293222 (A077168 n).toNat

end

end A351082.P3641742805308587276

/-!
# A351083: a(n) = gcd(n, A003415(A276086(n))), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A351083, there is no canonical definition to state claims against.
-/

/-! ## A351083.P2058095204626687882

`gcd(n, A327860(n))`
-/

namespace A351083.P2058095204626687882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A327860 n)

end

end A351083.P2058095204626687882

/-! ## A351083.P14799500562450355426

`A373145(A276086(n))`
-/

namespace A351083.P14799500562450355426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373145 (A276086 n).toNat

end

end A351083.P14799500562450355426

/-! ## A351083.P7235252509183007653

`gcd(n, A003415(A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351083.P7235252509183007653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003415 (A276086 n).toNat)

end

end A351083.P7235252509183007653

/-! ## A351083.P4617022804291169633

`gcd(A342016(n)+A276086(n), A109043(n))`
-/

namespace A351083.P4617022804291169633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342016 n + A276086 n) (A109043 n)

end

end A351083.P4617022804291169633

/-! ## A351083.P13907731583522666736

`gcd(A328572(n)*A342002(n), A109045(n))`
-/

namespace A351083.P13907731583522666736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328572 n * A342002 n) (A109045 n)

end

end A351083.P13907731583522666736

/-! ## A351083.P1743150976927165503

`gcd(A328572(n)*A346253(A328622(n)), A289234(A289234(n)))`
-/

namespace A351083.P1743150976927165503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328572 n * A346253 (A328622 n).toNat) (A289234 (A289234 n).toNat)

end

end A351083.P1743150976927165503

/-! ## A351083.P16263698479090900516

`gcd(A328572(n)*A344760(A289234(n)), A001057(2*n))`
-/

namespace A351083.P16263698479090900516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328572 n * A344760 (A289234 n).toNat) (A001057 (2 * n))

end

end A351083.P16263698479090900516

/-! ## A351083.P1218550263430917620

`gcd(n-2*n, A344026(A277022(n)))`
-/

namespace A351083.P1218550263430917620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (2 * n : ℤ)) (A344026 (A277022 n).toNat)

end

end A351083.P1218550263430917620

/-! ## A351083.P2336521450256648904

`gcd(A344026(A277022(n)), A351870(n))`
-/

namespace A351083.P2336521450256648904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A344026 (A277022 n).toNat) (A351870 n)

end

end A351083.P2336521450256648904

/-! ## A351083.P3875530517518275418

`gcd(2*n, A328572(n)*A342001(A276086(n)))`
-/

namespace A351083.P3875530517518275418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A328572 n * A342001 (A276086 n).toNat)

end

end A351083.P3875530517518275418

/-!
# A351084: a(n) = gcd(n, A328572(n)), where A328572 converts the primorial base expansion of n into its prime product form, but with 1 subtracted from all nonzero digits.

The programs for A351084, there is no canonical definition to state claims against.
-/

/-! ## A351084.P8317216344654227360

`gcd(n, A328572(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351084.P8317216344654227360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A328572 n)

end

end A351084.P8317216344654227360

/-! ## A351084.P15488652325307660501

`gcd(A324198(n), A351083(n))`
-/

namespace A351084.P15488652325307660501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324198 n) (A351083 n)

end

end A351084.P15488652325307660501

/-! ## A351084.P14297524691830165623

`gcd(2*n, A328575(n))`
-/

namespace A351084.P14297524691830165623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A328575 n)

end

end A351084.P14297524691830165623

/-! ## A351084.P2430527112178682761

`gcd(A276086(n), A351083(n))`
-/

namespace A351084.P2430527112178682761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 n) (A351083 n)

end

end A351084.P2430527112178682761

/-! ## A351084.P2754688275959641649

`gcd(A324198(n), A327860(n))`
-/

namespace A351084.P2754688275959641649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324198 n) (A327860 n)

end

end A351084.P2754688275959641649

/-! ## A351084.P7433864109391466190

`gcd(A005843(n), A276086(A328842(n)))`
-/

namespace A351084.P7433864109391466190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A276086 (A328842 n).toNat)

end

end A351084.P7433864109391466190

/-! ## A351084.P10958807357201125806

`gcd(A026741(n), A057521(A276086(n)))`
-/

namespace A351084.P10958807357201125806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 n) (A057521 (A276086 n).toNat)

end

end A351084.P10958807357201125806

/-! ## A351084.P15295807430643163731

`gcd(A101318(n+1), A340086(n+1))`
-/

namespace A351084.P15295807430643163731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101318 (n + 1)) (A340086 (n + 1))

end

end A351084.P15295807430643163731

/-!
# A351085: Lexicographically earliest infinite sequence such that a(i) = a(j) => A327858(i) = A327858(j) and A345000(i) = A345000(j) for all i, j >= 0.

The programs for A351085, there is no canonical definition to state claims against.
-/

/-! ## A351085.P2266435533014103255

`A000120(A325676(2*n+3)-A008851(n+1))`
-/

namespace A351085.P2266435533014103255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A325676 (2 * n + 3) - A008851 (n + 1)).toNat

end

end A351085.P2266435533014103255

/-! ## A351085.P5794866133273850494

`A000120(A056725(n+1)%A328627(3*n+1))`
-/

namespace A351085.P5794866133273850494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A056725 (n + 1)) (A328627 (3 * n + 1))).toNat

end

end A351085.P5794866133273850494

/-! ## A351085.P8798485042878447450

`A350064(lt[A350060(3*n+2), A350083(n+1)])`
-/

namespace A351085.P8798485042878447450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350060 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350064 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A351085.P8798485042878447450

/-!
# A351086: a(n) = gcd(A003415(n), A328572(n)), where A003415 is the arithmetic derivative and A328572 converts the primorial base expansion of n into its prime product form, but with 1 subtracted from all nonzero digits.

The programs for A351086, there is no canonical definition to state claims against.
-/

/-! ## A351086.P6301688401940102713

`gcd(A003415(n), A328572(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351086.P6301688401940102713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 n) (A328572 n)

end

end A351086.P6301688401940102713

/-! ## A351086.P5373622082205759630

`gcd(A327858(n), A345000(n))`
-/

namespace A351086.P5373622082205759630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327858 n) (A345000 n)

end

end A351086.P5373622082205759630

/-! ## A351086.P5232543592977806480

`gcd(A327858(n), A327860(n))`
-/

namespace A351086.P5232543592977806480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327858 n) (A327860 n)

end

end A351086.P5232543592977806480

/-! ## A351086.P6060172755811444828

`gcd(A000027(A327858(n)), A342015(n))`
-/

namespace A351086.P6060172755811444828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A327858 n).toNat) (A342015 n)

end

end A351086.P6060172755811444828

/-! ## A351086.P9953085264632708745

`gcd(A276086(A351234(n)), A329029(n))`
-/

namespace A351086.P9953085264632708745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (A351234 n).toNat) (A329029 n)

end

end A351086.P9953085264632708745

/-!
# A351087: Numbers k such that A327860(k) is a multiple of k, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A351087, there is no canonical definition to state claims against.
-/

/-! ## A351087.P8971472532071993967

`record[A351083(A351083(n))]`
-/

namespace A351087.P8971472532071993967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351083 (A351083 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351087.P8971472532071993967

/-! ## A351087.P13546000162545008403

`eq[n, A351083(n)]`
-/

namespace A351087.P13546000162545008403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351087.P13546000162545008403

/-! ## A351087.P13528013128666315017

`A351083(lt[n, A351083(n)+1])`
-/

namespace A351087.P13528013128666315017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351083 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A351087.P13528013128666315017

/-! ## A351087.P7037253698966623104

`A351083(lt[n-1, A351083(n)])`
-/

namespace A351087.P7037253698966623104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351083 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A351087.P7037253698966623104

/-! ## A351087.P16278951324487004780

`eq[n, gcd(n, A327860(n))]`
-/

namespace A351087.P16278951324487004780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A327860 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351087.P16278951324487004780

/-!
# A351088: Numbers k such that A327860(k) is reachable from k by iterating the arithmetic derivative (A003415) and there are no terms with p^p-factors on the path there.

The programs for A351088, there is no canonical definition to state claims against.
-/

/-! ## A351088.P747302398880310365

`∪[A002110(A099308(n+1)), A328110(n+1)]`
-/

namespace A351088.P747302398880310365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A099308 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351088.P747302398880310365

/-!
# A351091: a(n) = Product_{d|A000265(n)} A019565(A289813(d)); a product obtained from the 1-digits present in ternary expansions of the odd divisors of n.

The programs for A351091, there is no canonical definition to state claims against.
-/

/-! ## A351091.P15509864156237683972

`A351081(A000265(n+1))`
-/

namespace A351091.P15509864156237683972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351081 (A000265 (n + 1)).toNat

end

end A351091.P15509864156237683972

/-! ## A351091.P12368447078827348566

`A351081((n+1)/2^val(n+1, 2))`
-/

namespace A351091.P12368447078827348566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351081 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A351091.P12368447078827348566

/-! ## A351091.P14015970604383875069

`A351081((n+1)/(or(n, n+1)-n))`
-/

namespace A351091.P14015970604383875069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351081 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A351091.P14015970604383875069

/-! ## A351091.P13504596790268680085

`A351081((n+1)/xor(n, or(n, n+1)))`
-/

namespace A351091.P13504596790268680085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351081 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A351091.P13504596790268680085

/-! ## A351091.P10154121217526822891

`A351081((n+1)*2^-val(n+1, 2))`
-/

namespace A351091.P10154121217526822891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351081 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A351091.P10154121217526822891

/-! ## A351091.P9558737757249909223

`A351081(2^(log2(n+1)-val(n+1, 2)))`
-/

namespace A351091.P9558737757249909223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351081 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))).toNat

end

end A351091.P9558737757249909223

/-! ## A351091.P5804552032265525648

`A351081((n+1)/and(n+1, -(n+1)))`
-/

namespace A351091.P5804552032265525648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351081 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A351091.P5804552032265525648

/-! ## A351091.P2744502183627033642

`A351081((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A351091.P2744502183627033642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351081 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A351091.P2744502183627033642

/-! ## A351091.P9884575729196106625

`A351081((n+1)/round(xor(n, n+1)/2))`
-/

namespace A351091.P9884575729196106625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351081 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat

end

end A351091.P9884575729196106625

/-! ## A351091.P855572783345148818

`A351081(A153733(n)+1)`
-/

namespace A351091.P855572783345148818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351081 (A153733 n + 1).toNat

end

end A351091.P855572783345148818

/-!
# A351092: a(n) = Product_{d|A000265(n)} A019565(A289814(d)); a product obtained from the 2-digits present in ternary expansions of the odd divisors of n.

The programs for A351092, there is no canonical definition to state claims against.
-/

/-! ## A351092.P17721010443218984093

`A351082(A000265(n+1))`
-/

namespace A351092.P17721010443218984093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351082 (A000265 (n + 1)).toNat

end

end A351092.P17721010443218984093

/-! ## A351092.P1837245828243489940

`A351082((n+1)/2^val(n+1, 2))`
-/

namespace A351092.P1837245828243489940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A351092.P1837245828243489940

/-! ## A351092.P7542225214645457784

`A351082((n+1)/(or(n, n+1)-n))`
-/

namespace A351092.P7542225214645457784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A351092.P7542225214645457784

/-! ## A351092.P17668219104766027802

`A351082((n+1)/xor(n, or(n, n+1)))`
-/

namespace A351092.P17668219104766027802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A351092.P17668219104766027802

/-! ## A351092.P929351838331010387

`A351082((n+1)*2^-val(n+1, 2))`
-/

namespace A351092.P929351838331010387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A351092.P929351838331010387

/-! ## A351092.P11236477100006127670

`A351082(2^(log2(n+1)-val(n+1, 2)))`
-/

namespace A351092.P11236477100006127670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351082 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))).toNat

end

end A351092.P11236477100006127670

/-! ## A351092.P10257017988117803977

`A351082((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A351092.P10257017988117803977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A351092.P10257017988117803977

/-! ## A351092.P13448769808407543692

`A351082((n+1)/round(xor(n, n+1)/2))`
-/

namespace A351092.P13448769808407543692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat

end

end A351092.P13448769808407543692

/-! ## A351092.P9553505205914565966

`A351082(1/(1-and(n, n+1)/(n+1)))`
-/

namespace A351092.P9553505205914565966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351082 (SequenceMachineLib.roundAway (1 / (1 - (Nat.land n (n + 1) : ℚ) / (n + 1 : ℚ)))).toNat

end

end A351092.P9553505205914565966

/-! ## A351092.P4645952560938830488

`A351082(A153733(n)+1)`
-/

namespace A351092.P4645952560938830488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351082 (A153733 n + 1).toNat

end

end A351092.P4645952560938830488

/-!
# A351093: Lexicographically earliest infinite sequence such that a(i) = a(j) => A351091(i) = A351091(j), for all i, j >= 1.

The programs for A351093, there is no canonical definition to state claims against.
-/

/-! ## A351093.P4325012778329608313

`∏{e}[A092055(floor(n/(xor(n, n+1)+1))), #]`
-/

namespace A351093.P4325012778329608313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092055 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A351093.P4325012778329608313

/-! ## A351093.P151140612284035295

`A217710(2^((n+1)/2^val(n+1, 2)))`
-/

namespace A351093.P151140612284035295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217710 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ))).toNat

end

end A351093.P151140612284035295

/-! ## A351093.P5347261536017006035

`floor(sqrt(A227308((n+1)/2^val(n+1, 2))))`
-/

namespace A351093.P5347261536017006035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A227308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A351093.P5347261536017006035

/-! ## A351093.P53755314952778128

`A217710(2^((n+1)/(or(n, n+1)-n)))`
-/

namespace A351093.P53755314952778128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217710 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) : ℝ))).toNat

end

end A351093.P53755314952778128

/-! ## A351093.P629909594407583280

`A366563(A082392(n))`
-/

namespace A351093.P629909594407583280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366563 (A082392 n).toNat

end

end A351093.P629909594407583280

/-!
# A351094: Lexicographically earliest infinite sequence such that a(i) = a(j) => A351092(i) = A351092(j), for all i, j >= 1.

The programs for A351094, there is no canonical definition to state claims against.
-/

/-! ## A351094.P5926102164877594262

`A090402(2^A351092(n+1))`
-/

namespace A351094.P5926102164877594262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090402 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A351092 (n + 1) : ℤ))).toNat

end

end A351094.P5926102164877594262

/-! ## A351094.P6455916145931011461

`A322867(3^A351092(n+1))`
-/

namespace A351094.P6455916145931011461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322867 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A351092 (n + 1) : ℤ))).toNat

end

end A351094.P6455916145931011461

/-! ## A351094.P15686796649021410790

`A007318(2^A351092(n+1))%6`
-/

namespace A351094.P15686796649021410790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A351092 (n + 1) : ℤ))).toNat) 6

end

end A351094.P15686796649021410790

/-! ## A351094.P8403921070260067842

`A168542(2^A351092(n+1))%7`
-/

namespace A351094.P8403921070260067842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168542 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A351092 (n + 1) : ℤ))).toNat) 7

end

end A351094.P8403921070260067842

/-! ## A351094.P10075970812362582238

`A116479(A363969(n+1))`
-/

namespace A351094.P10075970812362582238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116479 (A363969 (n + 1)).toNat

end

end A351094.P10075970812362582238

/-!
# A351095: Semiprimes that are not the arithmetic derivative (A003415) of any integer.

The programs for A351095, there is no canonical definition to state claims against.
-/

/-! ## A351095.P11103876470751359639

`record[A066048(A189554(n+1))]`
-/

namespace A351095.P11103876470751359639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A189554 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351095.P11103876470751359639

/-! ## A351095.P10966128620412896584

`filter[A098700(n+1), A064911(#)]`
-/

namespace A351095.P10966128620412896584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A351095.P10966128620412896584

/-! ## A351095.P15719260852314423233

`filter[A189554(n+1), A064911(#)]`
-/

namespace A351095.P15719260852314423233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A351095.P15719260852314423233

/-! ## A351095.P9003785300189467311

`filter[A189554(n+1), A101040(#)]`
-/

namespace A351095.P9003785300189467311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A351095.P9003785300189467311

/-! ## A351095.P4731294094575870906

`filter[A098700(n+1), A353480(#)]`
-/

namespace A351095.P4731294094575870906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A351095.P4731294094575870906

/-! ## A351095.P4948481809442626568

`filter[A098700(n+1), A359828(#)]`
-/

namespace A351095.P4948481809442626568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A351095.P4948481809442626568

/-! ## A351095.P15044819436926586652

`filter[A189554(n+1), A353480(#)]`
-/

namespace A351095.P15044819436926586652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A351095.P15044819436926586652

/-! ## A351095.P4404064413432165412

`filter[A189554(n+1), A359828(#)]`
-/

namespace A351095.P4404064413432165412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A351095.P4404064413432165412

/-! ## A351095.P1951812972493392662

`∩[A001358(n+1), A098700(n+1)]`
-/

namespace A351095.P1951812972493392662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351095.P1951812972493392662

/-! ## A351095.P8749722963247291447

`∩[A046315(n+1), A098700(n+1)]`
-/

namespace A351095.P8749722963247291447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351095.P8749722963247291447

/-!
# A351096: Semiprimes that are the arithmetic derivative (A003415) of some number.

The programs for A351096, there is no canonical definition to state claims against.
-/

/-! ## A351096.P17152028112589275967

`filter[A239433(n+1), A064911(#)]`
-/

namespace A351096.P17152028112589275967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A351096.P17152028112589275967

/-! ## A351096.P5842523563090133340

`∩[A001358(n+1), A239433(n+1)]`
-/

namespace A351096.P5842523563090133340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351096.P5842523563090133340

/-! ## A351096.P13082533183827829645

`∩[A176540(n+1), A239433(n+1)]`
-/

namespace A351096.P13082533183827829645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351096.P13082533183827829645

/-! ## A351096.P4301183823848276563

`∩[A186621(n+1)+1, A239433(n+1)]`
-/

namespace A351096.P4301183823848276563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351096.P4301183823848276563

/-! ## A351096.P12842681082214604180

`∩[A088707(n+1)-1, A239433(n+1)]`
-/

namespace A351096.P12842681082214604180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351096.P12842681082214604180

/-! ## A351096.P10453755044732651924

`∩[lt[2, A098699(n)], A088707(n+1)-1]`
-/

namespace A351096.P10453755044732651924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A351096.P10453755044732651924

/-! ## A351096.P12295398205287418653

`∩[A100493(n+1)-(n+1), A239433(n+1)]`
-/

namespace A351096.P12295398205287418653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351096.P12295398205287418653

/-! ## A351096.P10072960676292953061

`∩[A239433(n+1), A065516(n)+a(n-1)]` with `a(0)=4`
-/

namespace A351096.P10072960676292953061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351096.P10072960676292953061

/-! ## A351096.P13168087904852221234

`∩[A239433(n+1), A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A351096.P13168087904852221234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351096.P13168087904852221234

/-!
# A351097: Difference between {the maximal digit value in primorial base expansion of the arithmetic derivative of n} and {the maximal exponent in the prime factorization of n}.

The programs for A351097, there is no canonical definition to state claims against.
-/

/-! ## A351097.P8782879779390554871

`A328390(n+1)-A051903(n+1)`
-/

namespace A351097.P8782879779390554871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (n + 1) - A051903 (n + 1)

end

end A351097.P8782879779390554871

/-! ## A351097.P7495762285465464379

`A051903(A327859(n+1))-A051903(n+1)`
-/

namespace A351097.P7495762285465464379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A327859 (n + 1)).toNat - A051903 (n + 1)

end

end A351097.P7495762285465464379

/-! ## A351097.P10376144649498486965

`A328390(n+1)+1-A067132(n+1)`
-/

namespace A351097.P10376144649498486965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (n + 1) + (1 - A067132 (n + 1))

end

end A351097.P10376144649498486965

/-! ## A351097.P160132823134087561

`A328390(n+1)-A023443(A067132(n+1))`
-/

namespace A351097.P160132823134087561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (n + 1) - A023443 (A067132 (n + 1)).toNat

end

end A351097.P160132823134087561

/-! ## A351097.P12426692739469925594

`A328390(n+1)-A061395(A181819(n+1))`
-/

namespace A351097.P12426692739469925594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (n + 1) - A061395 (A181819 (n + 1)).toNat

end

end A351097.P12426692739469925594

/-! ## A351097.P6579166851126252249

`A328114(A003415(n+1))-A051903(n+1)`
-/

namespace A351097.P6579166851126252249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A003415 (n + 1)).toNat - A051903 (n + 1)

end

end A351097.P6579166851126252249

/-!
# A351098: Numbers k such that the maximal digit value in primorial base expansion of the arithmetic derivative of k is less than the maximal exponent in the prime factorization of k.

The programs for A351098, there is no canonical definition to state claims against.
-/

/-! ## A351098.P13285444556191798594

`filter[A013929(n+1), A369637(#)]`
-/

namespace A351098.P13285444556191798594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P13285444556191798594

/-! ## A351098.P13022416875939410446

`filter[A305800(n+1), A369637(#)]`
-/

namespace A351098.P13022416875939410446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P13022416875939410446

/-! ## A351098.P10409227612494589780

`filter[A305801(n+1), A369637(#)]`
-/

namespace A351098.P10409227612494589780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P10409227612494589780

/-! ## A351098.P1479902408712637196

`filter[A305900(n+1), A369637(#)]`
-/

namespace A351098.P1479902408712637196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P1479902408712637196

/-! ## A351098.P3393500040681847939

`filter[A305901(n+1), A369637(#)]`
-/

namespace A351098.P3393500040681847939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P3393500040681847939

/-! ## A351098.P12385806636405475094

`filter[A344180(n), A369637(#)]`
-/

namespace A351098.P12385806636405475094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P12385806636405475094

/-! ## A351098.P8680627245273440664

`filter[A293892(n+1), A369637(#)]`
-/

namespace A351098.P8680627245273440664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P8680627245273440664

/-! ## A351098.P4701614989484419905

`filter[A300247(n+1), A369637(#)]`
-/

namespace A351098.P4701614989484419905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P4701614989484419905

/-! ## A351098.P8615696199092154634

`filter[A319701(n+1), A369637(#)]`
-/

namespace A351098.P8615696199092154634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P8615696199092154634

/-! ## A351098.P1092198691926067441

`filter[A319702(n+1), A369637(#)]`
-/

namespace A351098.P1092198691926067441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P1092198691926067441

/-! ## A351098.P14440254852746711258

`filter[A326203(n+1), A369637(#)]`
-/

namespace A351098.P14440254852746711258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P14440254852746711258

/-! ## A351098.P5744175703779685912

`filter[A346488(n+1), A369637(#)]`
-/

namespace A351098.P5744175703779685912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P5744175703779685912

/-! ## A351098.P14835887409954715719

`filter[A319357(n+1), A369637(#)]`
-/

namespace A351098.P14835887409954715719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P14835887409954715719

/-! ## A351098.P15021631492340829475

`filter[A326202(n+1), A369637(#)]`
-/

namespace A351098.P15021631492340829475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P15021631492340829475

/-! ## A351098.P15985253927449863926

`filter[A305980(n+1), A369637(#)]`
-/

namespace A351098.P15985253927449863926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P15985253927449863926

/-! ## A351098.P15728043331151157761

`filter[A322810(n+1), A369637(#)]`
-/

namespace A351098.P15728043331151157761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P15728043331151157761

/-! ## A351098.P182225153650193952

`filter[A326201(n+1), A369637(#)]`
-/

namespace A351098.P182225153650193952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P182225153650193952

/-! ## A351098.P17742752564422633305

`filter[A326139(n+1), A369637(#)]`
-/

namespace A351098.P17742752564422633305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P17742752564422633305

/-! ## A351098.P3887636991008843438

`lt[A351097(n+1), 0]+1`
-/

namespace A351098.P3887636991008843438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351097 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A351098.P3887636991008843438

