import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A112900: a(n) is the least positive integer in base 10 containing n fives that is divisible by n.

The programs for A112900, there is no canonical definition to state claims against.
-/

/-! ## A112900.P6282790627254101258

`(n+1)*A112901(n+1)`
-/

namespace A112900.P6282790627254101258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112901 (n + 1)

end

end A112900.P6282790627254101258

/-! ## A112900.P6285890798907266350

`A112901(n+1)*A291769(n)`
-/

namespace A112900.P6285890798907266350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112901 (n + 1) * A291769 n

end

end A112900.P6285890798907266350

/-! ## A112900.P8651969181855914116

`A112901(n+1)*A348553(n)`
-/

namespace A112900.P8651969181855914116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112901 (n + 1) * A348553 n

end

end A112900.P8651969181855914116

/-! ## A112900.P4655182010119483186

`A112901(A132271(n))*A132271(n)`
-/

namespace A112900.P4655182010119483186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112901 (A132271 n).toNat * A132271 n

end

end A112900.P4655182010119483186

/-! ## A112900.P17191632630600764215

`A112901(A216556(n))*A216556(n)`
-/

namespace A112900.P17191632630600764215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112901 (A216556 n).toNat * A216556 n

end

end A112900.P17191632630600764215

/-!
# A112901: a(n)*n = A112900(n).

The programs for A112901, there is no canonical definition to state claims against.
-/

/-! ## A112901.P12466353764983203083

`A112900(n+1)/(n+1)`
-/

namespace A112901.P12466353764983203083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112900 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112901.P12466353764983203083

/-! ## A112901.P3363574497098707230

`ceil(A112900(A291769(n))/A291769(n))`
-/

namespace A112901.P3363574497098707230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112900 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A112901.P3363574497098707230

/-! ## A112901.P13183175004803973213

`ceil(A112900(A348553(n))/A348553(n))`
-/

namespace A112901.P13183175004803973213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112900 (A348553 n).toNat : ℚ) / (A348553 n : ℚ)⌉

end

end A112901.P13183175004803973213

/-! ## A112901.P9826148829339674567

`round(A112900(A291769(n))/A348553(n))`
-/

namespace A112901.P9826148829339674567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112900 (A291769 n).toNat : ℚ) / (A348553 n : ℚ))

end

end A112901.P9826148829339674567

/-! ## A112901.P2886686984084432704

`(A112900(A291769(n))-A184945(n))/A291769(n)`
-/

namespace A112901.P2886686984084432704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112900 (A291769 n).toNat - A184945 n : ℚ) / (A291769 n : ℚ)

end

end A112901.P2886686984084432704

/-!
# A112902: a(n) is the least positive integer in base 10 containing n sixes that is divisible by n.

The programs for A112902, there is no canonical definition to state claims against.
-/

/-! ## A112902.P10948734115728858918

`(n+1)*A112903(n+1)`
-/

namespace A112902.P10948734115728858918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112903 (n + 1)

end

end A112902.P10948734115728858918

/-! ## A112902.P14139217192794037097

`A112903(n+1)*A291769(n)`
-/

namespace A112902.P14139217192794037097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112903 (n + 1) * A291769 n

end

end A112902.P14139217192794037097

/-! ## A112902.P12487448879053768748

`A112903(n+1)*A348553(n)`
-/

namespace A112902.P12487448879053768748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112903 (n + 1) * A348553 n

end

end A112902.P12487448879053768748

/-! ## A112902.P13592180984185438831

`A112903(A132271(n))*A132271(n)`
-/

namespace A112902.P13592180984185438831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112903 (A132271 n).toNat * A132271 n

end

end A112902.P13592180984185438831

/-! ## A112902.P13847379082718447281

`A112903(A216556(n))*A216556(n)`
-/

namespace A112902.P13847379082718447281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112903 (A216556 n).toNat * A216556 n

end

end A112902.P13847379082718447281

/-!
# A112903: a(n)*n = A112902(n).

The programs for A112903, there is no canonical definition to state claims against.
-/

/-! ## A112903.P175066047337461025

`A112902(n+1)/(n+1)`
-/

namespace A112903.P175066047337461025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112902 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112903.P175066047337461025

/-! ## A112903.P10938491144940204204

`ceil(A112902(A291769(n))/A291769(n))`
-/

namespace A112903.P10938491144940204204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112902 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A112903.P10938491144940204204

/-!
# A112904: a(n) is the least positive integer in base 10 containing n sevens that is divisible by n.

The programs for A112904, there is no canonical definition to state claims against.
-/

/-! ## A112904.P1661676216601948733

`(n+1)*A112905(n+1)`
-/

namespace A112904.P1661676216601948733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112905 (n + 1)

end

end A112904.P1661676216601948733

/-! ## A112904.P17364718345237395398

`A112905(n+1)*A291769(n)`
-/

namespace A112904.P17364718345237395398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112905 (n + 1) * A291769 n

end

end A112904.P17364718345237395398

/-! ## A112904.P13531007345961630817

`A112905(n+1)*A348553(n)`
-/

namespace A112904.P13531007345961630817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112905 (n + 1) * A348553 n

end

end A112904.P13531007345961630817

/-! ## A112904.P14559089227522810387

`A112905(A132271(n))*A132271(n)`
-/

namespace A112904.P14559089227522810387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112905 (A132271 n).toNat * A132271 n

end

end A112904.P14559089227522810387

/-! ## A112904.P9588466003526627228

`A112905(A216556(n))*A216556(n)`
-/

namespace A112904.P9588466003526627228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112905 (A216556 n).toNat * A216556 n

end

end A112904.P9588466003526627228

/-!
# A112905: a(n)*n = A112904(n).

The programs for A112905, there is no canonical definition to state claims against.
-/

/-! ## A112905.P4744825497567107357

`A112904(n+1)/(n+1)`
-/

namespace A112905.P4744825497567107357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112904 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112905.P4744825497567107357

/-! ## A112905.P247914528231050584

`ceil(A112904(A291769(n))/A291769(n))`
-/

namespace A112905.P247914528231050584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112904 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A112905.P247914528231050584

/-! ## A112905.P17001240065457059015

`ceil(A112904(A348553(n))/A348553(n))`
-/

namespace A112905.P17001240065457059015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112904 (A348553 n).toNat : ℚ) / (A348553 n : ℚ)⌉

end

end A112905.P17001240065457059015

/-! ## A112905.P10408419166509998588

`round(A112904(A291769(n))/A348553(n))`
-/

namespace A112905.P10408419166509998588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112904 (A291769 n).toNat : ℚ) / (A348553 n : ℚ))

end

end A112905.P10408419166509998588

/-! ## A112905.P7155069262531595664

`A112904(A291769(n))/A348553(n)*A033999(n)²`
-/

namespace A112905.P7155069262531595664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112904 (A291769 n).toNat : ℚ) / (A348553 n : ℚ) * (A033999 n ^ 2 : ℚ)

end

end A112905.P7155069262531595664

/-!
# A112906: A skew generalized Pascal triangle.

The programs for A112906, there is no canonical definition to state claims against.
-/

/-! ## A112906.P12117337049208205316

`A102705(A172249(n))`
-/

namespace A112906.P12117337049208205316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A172249 n).toNat

end

end A112906.P12117337049208205316

/-!
# A112907: a(n) is the least positive integer containing n eights that is divisible by n.

The programs for A112907, there is no canonical definition to state claims against.
-/

/-! ## A112907.P18003500413956552116

`(n+1)*A112908(n+1)`
-/

namespace A112907.P18003500413956552116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112908 (n + 1)

end

end A112907.P18003500413956552116

/-! ## A112907.P11025177895706748672

`A112908(n+1)*A291769(n)`
-/

namespace A112907.P11025177895706748672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112908 (n + 1) * A291769 n

end

end A112907.P11025177895706748672

/-! ## A112907.P13996312984969517078

`A112908(n+1)*A348553(n)`
-/

namespace A112907.P13996312984969517078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112908 (n + 1) * A348553 n

end

end A112907.P13996312984969517078

/-! ## A112907.P15865133132154025431

`A112908(A132271(n))*A132271(n)`
-/

namespace A112907.P15865133132154025431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112908 (A132271 n).toNat * A132271 n

end

end A112907.P15865133132154025431

/-! ## A112907.P14826479445189427989

`A112908(A216556(n))*A216556(n)`
-/

namespace A112907.P14826479445189427989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112908 (A216556 n).toNat * A216556 n

end

end A112907.P14826479445189427989

/-!
# A112908: a(n)*n = A112907(n).

The programs for A112908, there is no canonical definition to state claims against.
-/

/-! ## A112908.P14684487798735169384

`A112907(n+1)/(n+1)`
-/

namespace A112908.P14684487798735169384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112907 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112908.P14684487798735169384

/-! ## A112908.P10174492769671623722

`ceil(A112907(A291769(n))/A291769(n))`
-/

namespace A112908.P10174492769671623722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112907 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A112908.P10174492769671623722

/-! ## A112908.P2507507105265917811

`ceil(A112907(A348553(n))/A348553(n))`
-/

namespace A112908.P2507507105265917811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112907 (A348553 n).toNat : ℚ) / (A348553 n : ℚ)⌉

end

end A112908.P2507507105265917811

/-! ## A112908.P4697467530702891634

`round(A112907(A291769(n))/A348553(n))`
-/

namespace A112908.P4697467530702891634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112907 (A291769 n).toNat : ℚ) / (A348553 n : ℚ))

end

end A112908.P4697467530702891634

/-! ## A112908.P17442585639454060925

`A112907(A291769(n))/A348553(n)*(1-A057427(n))!`
-/

namespace A112908.P17442585639454060925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112907 (A291769 n).toNat : ℚ) / (A348553 n : ℚ) * (Nat.factorial (1 - A057427 n).toNat : ℚ)

end

end A112908.P17442585639454060925

/-!
# A112909: a(n) is the least positive integer in base 10 containing n nines that is divisible by n.

The programs for A112909, there is no canonical definition to state claims against.
-/

/-! ## A112909.P9949524189416546504

`(n+1)*A112910(n+1)`
-/

namespace A112909.P9949524189416546504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112910 (n + 1)

end

end A112909.P9949524189416546504

/-! ## A112909.P12176762769898978698

`A112910(n+1)*A291769(n)`
-/

namespace A112909.P12176762769898978698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112910 (n + 1) * A291769 n

end

end A112909.P12176762769898978698

/-! ## A112909.P15105718588531897462

`A112910(n+1)*A348553(n)`
-/

namespace A112909.P15105718588531897462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112910 (n + 1) * A348553 n

end

end A112909.P15105718588531897462

/-! ## A112909.P3516171646544486791

`A112910(A132271(n))*A132271(n)`
-/

namespace A112909.P3516171646544486791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112910 (A132271 n).toNat * A132271 n

end

end A112909.P3516171646544486791

/-! ## A112909.P15260111572802025454

`A112910(A216556(n))*A216556(n)`
-/

namespace A112909.P15260111572802025454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112910 (A216556 n).toNat * A216556 n

end

end A112909.P15260111572802025454

/-!
# A112910: a(n)*n = A112909(n).

The programs for A112910, there is no canonical definition to state claims against.
-/

/-! ## A112910.P2592426354601897897

`A112909(n+1)/(n+1)`
-/

namespace A112910.P2592426354601897897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112909 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112910.P2592426354601897897

/-! ## A112910.P15563120724482957912

`ceil(A112909(A291769(n))/A291769(n))`
-/

namespace A112910.P15563120724482957912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112909 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A112910.P15563120724482957912

/-! ## A112910.P14538021036676352429

`ceil(A112909(A348553(n))/A348553(n))`
-/

namespace A112910.P14538021036676352429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112909 (A348553 n).toNat : ℚ) / (A348553 n : ℚ)⌉

end

end A112910.P14538021036676352429

/-! ## A112910.P7677194977966252141

`round(A112909(A291769(n))/A348553(n))`
-/

namespace A112910.P7677194977966252141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112909 (A291769 n).toNat : ℚ) / (A348553 n : ℚ))

end

end A112910.P7677194977966252141

/-! ## A112910.P17909501390856719305

`A112909(A291769(n))/A291769(n)*A000005(((-1)^n)²)`
-/

namespace A112910.P17909501390856719305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112909 (A291769 n).toNat : ℚ) / (A291769 n : ℚ) * (A000005 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A112910.P17909501390856719305

/-!
# A112911: Triangle T, read by rows, such that the matrix inverse satisfies: [T^-1](n,k) = -(k+1)*T(n-1,0) for n>k>=0, with T(n,n)=1 for n>=0.

The programs for A112911, there is no canonical definition to state claims against.
-/

/-! ## A112911.P17887347029299002577

`A152400(n)+A016389(A135878(n))`
-/

namespace A112911.P17887347029299002577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 n + A016389 (A135878 n).toNat

end

end A112911.P17887347029299002577

/-! ## A112911.P15035373169353731760

`A152400(n)-A058276(A134379(n))`
-/

namespace A112911.P15035373169353731760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 n - A058276 (A134379 n).toNat

end

end A112911.P15035373169353731760

/-! ## A112911.P5999341268732747887

`A152400(n)-A125005(A094587(n))`
-/

namespace A112911.P5999341268732747887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 n - A125005 (A094587 n).toNat

end

end A112911.P5999341268732747887

/-! ## A112911.P2708233245439656989

`A152400(n)-A118135(A135899(n))`
-/

namespace A112911.P2708233245439656989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 n - A118135 (A135899 n).toNat

end

end A112911.P2708233245439656989

/-! ## A112911.P6681878326928983059

`A152400(n)-A125005(A152405(n))`
-/

namespace A112911.P6681878326928983059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 n - A125005 (A152405 n).toNat

end

end A112911.P6681878326928983059

/-!
# A112912: Column 1 of triangle A112911.

The programs for A112912, there is no canonical definition to state claims against.
-/

/-! ## A112912.P12116906212488283859

`record[A112911(comp[∑[n]])]`
-/

namespace A112912.P12116906212488283859
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112911 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112912.P12116906212488283859

/-! ## A112912.P13939135498453696968

`A112911(∑[n+1]+1)`
-/

namespace A112912.P13939135498453696968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112911 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A112912.P13939135498453696968

/-! ## A112912.P16024568067431127255

`record[A103631(n)*A112911(n)]`
-/

namespace A112912.P16024568067431127255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A112911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112912.P16024568067431127255

/-! ## A112912.P13019055855315047468

`record[A112911(n)*A114219(n)]`
-/

namespace A112912.P13019055855315047468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112911 n * A114219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112912.P13019055855315047468

/-! ## A112912.P811615627540136187

`record[A112911(n)*A325280(n)]`
-/

namespace A112912.P811615627540136187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112911 n * A325280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112912.P811615627540136187

/-!
# A112913: Column 2 of triangle A112911.

The programs for A112913, there is no canonical definition to state claims against.
-/

/-! ## A112913.P15377621221918296024

`record[A112911(∑[n]+2)]`
-/

namespace A112913.P15377621221918296024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112911 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112913.P15377621221918296024

/-! ## A112913.P11056764301302763788

`A112911(∑[n+2]+3)`
-/

namespace A112913.P11056764301302763788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112911 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A112913.P11056764301302763788

/-! ## A112913.P14165922980102549904

`record[A010054(n)*A112911(n+2)]`
-/

namespace A112913.P14165922980102549904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A112911 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112913.P14165922980102549904

/-! ## A112913.P16444370640705261310

`record[gcd(A112883(n), A112911(n+2))]`
-/

namespace A112913.P16444370640705261310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112883 n) (A112911 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112913.P16444370640705261310

/-!
# A112914: Column 3 of triangle A112911.

The programs for A112914, there is no canonical definition to state claims against.
-/

/-! ## A112914.P17015635826896450808

`A112911(C(n+5, 2)-n-1)`
-/

namespace A112914.P17015635826896450808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112911 ((Nat.choose (n + 5) 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A112914.P17015635826896450808

/-! ## A112914.P4664318771569484584

`A112911(A167614(n+2))`
-/

namespace A112914.P4664318771569484584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112911 (A167614 (n + 2)).toNat

end

end A112914.P4664318771569484584

/-! ## A112914.P5729268696062420878

`A112911(A141214(n)+6)`
-/

namespace A112914.P5729268696062420878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112911 (A141214 n + 6).toNat

end

end A112914.P5729268696062420878

/-!
# A112915: Recurrence: a(n) = Sum_{k=0..n-1} (k+1)*(n-k)*a(k)*a(n-k-1) for n>0, with a(0)=1.

The programs for A112915, there is no canonical definition to state claims against.
-/

/-! ## A112915.P246385187803617839

`2^n*A088716(n)/(n+1)`
-/

namespace A112915.P246385187803617839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A088716 n : ℚ) / (n + 1 : ℚ)

end

end A112915.P246385187803617839

/-! ## A112915.P8271882084139600056

`A000079(n)/(n+1)*A088716(n)`
-/

namespace A112915.P8271882084139600056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (n + 1 : ℚ) * (A088716 n : ℚ)

end

end A112915.P8271882084139600056

/-! ## A112915.P7333244122318646568

`∑[A011782(n)]/(n+1)*A088716(n)`
-/

namespace A112915.P7333244122318646568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) * (A088716 n : ℚ)

end

end A112915.P7333244122318646568

/-! ## A112915.P5743699321320916665

`A218222(n+1)/(n+1)`
-/

namespace A112915.P5743699321320916665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218222 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112915.P5743699321320916665

/-! ## A112915.P17607908481746640

`A088716(n)*A102363(A000217(n))/(n+1)`
-/

namespace A112915.P17607908481746640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088716 n * A102363 (A000217 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A112915.P17607908481746640

/-! ## A112915.P6095014695004447481

`A088716(n)*A247936(A034856(n+1))/(n+1)`
-/

namespace A112915.P6095014695004447481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088716 n * A247936 (A034856 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A112915.P6095014695004447481

/-! ## A112915.P5332330049675578697

`abs(A301305(∑[n]+1))*A000079(n)/(n+1)`
-/

namespace A112915.P5332330049675578697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A301305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)| * A000079 n : ℚ) / (n + 1 : ℚ)

end

end A112915.P5332330049675578697

/-!
# A112916: Self-convolution of A088716, where a(n) = 2*A088716(n+1)/(n+2) for n>=0.

The programs for A112916, there is no canonical definition to state claims against.
-/

/-! ## A112916.P1200410122766681427

`2*A088716(n+1)/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112916.P1200410122766681427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A088716 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A112916.P1200410122766681427

/-! ## A112916.P10017246825819110532

`A112915(n+1)/2^n`
-/

namespace A112916.P10017246825819110532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112915 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A112916.P10017246825819110532

/-! ## A112916.P6239818130410753513

`round(A112915(n+1)/A000079(n))`
-/

namespace A112916.P6239818130410753513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112915 (n + 1) : ℚ) / (A000079 n : ℚ))

end

end A112916.P6239818130410753513

/-! ## A112916.P7550560664875797806

`A000079(n+1)*A112915(n+1)/(2*A000079(n)²)`
-/

namespace A112916.P7550560664875797806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A112915 (n + 1) : ℚ) / (2 * A000079 n ^ 2 : ℚ)

end

end A112916.P7550560664875797806

/-! ## A112916.P15540548223751996159

`A000079(n+1)*A112915(n+1)/A000079(2*n+1)`
-/

namespace A112916.P15540548223751996159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A112915 (n + 1) : ℚ) / (A000079 (2 * n + 1) : ℚ)

end

end A112916.P15540548223751996159

/-!
# A112919: Number of nonisomorphic connected bipartite H-graphs H(n:i,j;k,m) on 6n vertices (or nodes) for 1<=i,j,k,m

The programs for A112919, there is no canonical definition to state claims against.
-/

/-! ## A112919.P12751964213881667935

`A117599(A000035(n)*A240783(n+1))`
-/

namespace A112919.P12751964213881667935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (A000035 n * A240783 (n + 1)).toNat

end

end A112919.P12751964213881667935

/-! ## A112919.P3240125157974159399

`A268389(A061712(n+1))*A323094(n)`
-/

namespace A112919.P3240125157974159399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (A061712 (n + 1)).toNat * A323094 n

end

end A112919.P3240125157974159399

/-!
# A112925: Largest squarefree integer < the n-th prime.

The programs for A112925, the canonical program `A112925.P3128036367507799297` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112925 has offset 1).

The definition of A112925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112925.P779809399224889904

`A000040(n+1)-A240473(n+1)`
-/

namespace A112925.P779809399224889904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A240473 (n + 1)

end

end A112925.P779809399224889904

namespace A112925

/-- `A000040(n+1)-A240473(n+1)` -/
def P779809399224889904.Spec : Prop :=
  ∀ n, P779809399224889904.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P16540323498345323531

`A112926(n+1)-(A240474(n+1)+A240473(n+1))`
-/

namespace A112925.P16540323498345323531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1) - (A240474 (n + 1) + A240473 (n + 1))

end

end A112925.P16540323498345323531

namespace A112925

/-- `A112926(n+1)-(A240474(n+1)+A240473(n+1))` -/
def P16540323498345323531.Spec : Prop :=
  ∀ n, P16540323498345323531.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P1363632548712591807

`A005117(A112929(n+1))`
-/

namespace A112925.P1363632548712591807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A112929 (n + 1)).toNat

end

end A112925.P1363632548712591807

namespace A112925

/-- `A005117(A112929(n+1))` -/
def P1363632548712591807.Spec : Prop :=
  ∀ n, P1363632548712591807.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P11300630522124845501

`A005117(A071403(n+1)-1)`
-/

namespace A112925.P11300630522124845501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A071403 (n + 1) - 1).toNat

end

end A112925.P11300630522124845501

namespace A112925

/-- `A005117(A071403(n+1)-1)` -/
def P11300630522124845501.Spec : Prop :=
  ∀ n, P11300630522124845501.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P15177616591662434275

`A005117(A112930(n+1)-2)`
-/

namespace A112925.P15177616591662434275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A112930 (n + 1) - 2).toNat

end

end A112925.P15177616591662434275

namespace A112925

/-- `A005117(A112930(n+1)-2)` -/
def P15177616591662434275.Spec : Prop :=
  ∀ n, P15177616591662434275.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P4247374835830626774

`A005117(A337030(n+1)+n+1)`
-/

namespace A112925.P4247374835830626774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A337030 (n + 1) + (n + 1 : ℤ)).toNat

end

end A112925.P4247374835830626774

namespace A112925

/-- `A005117(A337030(n+1)+n+1)` -/
def P4247374835830626774.Spec : Prop :=
  ∀ n, P4247374835830626774.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P3128036367507799297

`A005117(A013928(A000040(n+1)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A112925

/-- `A005117(A013928(A000040(n+1)))` -/
def P3128036367507799297.Spec : Prop :=
  ∀ n, P3128036367507799297.a n = A112925 (n + 1)

theorem P3128036367507799297.correct : P3128036367507799297.Spec := by
  intro n
  simp only [A112925, Nat.add_sub_cancel]

end A112925

/-! ## A112925.P10726361363486135511

`A005117(A013928(A005117(A013928(A112926(n+1)))))`
-/

namespace A112925.P10726361363486135511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A013928 (A005117 (A013928 (A112926 (n + 1)).toNat).toNat).toNat).toNat

end

end A112925.P10726361363486135511

namespace A112925

/-- `A005117(A013928(A005117(A013928(A112926(n+1)))))` -/
def P10726361363486135511.Spec : Prop :=
  ∀ n, P10726361363486135511.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P16784043846684183176

`A076144(A071403(n+1))`
-/

namespace A112925.P16784043846684183176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076144 (A071403 (n + 1)).toNat

end

end A112925.P16784043846684183176

namespace A112925

/-- `A076144(A071403(n+1))` -/
def P16784043846684183176.Spec : Prop :=
  ∀ n, P16784043846684183176.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P14217869682048008850

`record[record[A007913(n+1)]/A068328(n+2)]`
-/

namespace A112925.P14217869682048008850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A068328 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112925.P14217869682048008850

namespace A112925

/-- `record[record[A007913(n+1)]/A068328(n+2)]` -/
def P14217869682048008850.Spec : Prop :=
  ∀ n, P14217869682048008850.a n = (A112925 (n + 1) : ℚ)

end A112925

/-! ## A112925.P17635774824047718952

`record[record[A007947(n+1)]/A068328(n+2)]`
-/

namespace A112925.P17635774824047718952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A068328 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112925.P17635774824047718952

namespace A112925

/-- `record[record[A007947(n+1)]/A068328(n+2)]` -/
def P17635774824047718952.Spec : Prop :=
  ∀ n, P17635774824047718952.a n = (A112925 (n + 1) : ℚ)

end A112925

/-! ## A112925.P9178479442386287425

`record[record[A055231(n+1)]/A068328(n+2)]`
-/

namespace A112925.P9178479442386287425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A068328 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112925.P9178479442386287425

namespace A112925

/-- `record[record[A055231(n+1)]/A068328(n+2)]` -/
def P9178479442386287425.Spec : Prop :=
  ∀ n, P9178479442386287425.a n = (A112925 (n + 1) : ℚ)

end A112925

/-! ## A112925.P16688783456263120866

`A005117(A243289(A071403(n+1))+n)`
-/

namespace A112925.P16688783456263120866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A243289 (A071403 (n + 1)).toNat + (n : ℤ)).toNat

end

end A112925.P16688783456263120866

namespace A112925

/-- `A005117(A243289(A071403(n+1))+n)` -/
def P16688783456263120866.Spec : Prop :=
  ∀ n, P16688783456263120866.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P2806180211158170746

`record[(lt[A057521(n+1), 2]+1)/A068328(n+2)]`
-/

namespace A112925.P2806180211158170746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1 : ℚ) / (A068328 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112925.P2806180211158170746

namespace A112925

/-- `record[(lt[A057521(n+1), 2]+1)/A068328(n+2)]` -/
def P2806180211158170746.Spec : Prop :=
  ∀ n, P2806180211158170746.a n = (A112925 (n + 1) : ℚ)

end A112925

/-! ## A112925.P13293675698519766043

`record[record[∏{p}[n, #]]/A068328(n+2)]`
-/

namespace A112925.P13293675698519766043
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A068328 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112925.P13293675698519766043

namespace A112925

/-- `record[record[∏{p}[n, #]]/A068328(n+2)]` -/
def P13293675698519766043.Spec : Prop :=
  ∀ n, P13293675698519766043.a n = (A112925 (n + 1) : ℚ)

end A112925

/-! ## A112925.P1668709081937290868

`A070321(A006093(n+1))`
-/

namespace A112925.P1668709081937290868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A006093 (n + 1)).toNat

end

end A112925.P1668709081937290868

namespace A112925

/-- `A070321(A006093(n+1))` -/
def P1668709081937290868.Spec : Prop :=
  ∀ n, P1668709081937290868.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P1227313917111622211

`A070321(record[A000010(n+1)])`
-/

namespace A112925.P1227313917111622211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112925.P1227313917111622211

namespace A112925

/-- `A070321(record[A000010(n+1)])` -/
def P1227313917111622211.Spec : Prop :=
  ∀ n, P1227313917111622211.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P15380614650940992990

`A070321(A000040(n+1)-1)`
-/

namespace A112925.P15380614650940992990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A000040 (n + 1) - 1).toNat

end

end A112925.P15380614650940992990

namespace A112925

/-- `A070321(A000040(n+1)-1)` -/
def P15380614650940992990.Spec : Prop :=
  ∀ n, P15380614650940992990.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P4734777169047992062

`A070321(record[A166333(n+1)-1])`
-/

namespace A112925.P4734777169047992062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112925.P4734777169047992062

namespace A112925

/-- `A070321(record[A166333(n+1)-1])` -/
def P4734777169047992062.Spec : Prop :=
  ∀ n, P4734777169047992062.a n = A112925 (n + 1)

end A112925

/-! ## A112925.P8716982146232514074

`A070321(A065890(n+1)+n+1)`
-/

namespace A112925.P8716982146232514074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A065890 (n + 1) + (n + 1 : ℤ)).toNat

end

end A112925.P8716982146232514074

namespace A112925

/-- `A070321(A065890(n+1)+n+1)` -/
def P8716982146232514074.Spec : Prop :=
  ∀ n, P8716982146232514074.a n = A112925 (n + 1)

end A112925

/-!
# A112926: Smallest squarefree integer > the n-th prime.

The programs for A112926, the canonical program `A112926.P6586575153116633314` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112926 has offset 1).

The definition of A112926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112926.P14638216024877348546

`A240474(n+1)+A000040(n+1)`
-/

namespace A112926.P14638216024877348546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240474 (n + 1) + A000040 (n + 1)

end

end A112926.P14638216024877348546

namespace A112926

/-- `A240474(n+1)+A000040(n+1)` -/
def P14638216024877348546.Spec : Prop :=
  ∀ n, P14638216024877348546.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P14802496282564457352

`A112925(n+1)+A240474(n+1)+A240473(n+1)`
-/

namespace A112926.P14802496282564457352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1) + (A240474 (n + 1) + A240473 (n + 1))

end

end A112926.P14802496282564457352

namespace A112926

/-- `A112925(n+1)+A240474(n+1)+A240473(n+1)` -/
def P14802496282564457352.Spec : Prop :=
  ∀ n, P14802496282564457352.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P6586575153116633314

`A005117(A112930(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A112926

/-- `A005117(A112930(n+1))` -/
def P6586575153116633314.Spec : Prop :=
  ∀ n, P6586575153116633314.a n = A112926 (n + 1)

theorem P6586575153116633314.correct : P6586575153116633314.Spec := by
  intro n
  simp only [A112926, Nat.add_sub_cancel]

end A112926

/-! ## A112926.P17759208499539132251

`A005117(A071403(n+1)+1)`
-/

namespace A112926.P17759208499539132251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A071403 (n + 1) + 1).toNat

end

end A112926.P17759208499539132251

namespace A112926

/-- `A005117(A071403(n+1)+1)` -/
def P17759208499539132251.Spec : Prop :=
  ∀ n, P17759208499539132251.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P5412366947795394826

`A005117(A112929(n+1)+2)`
-/

namespace A112926.P5412366947795394826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A112929 (n + 1) + 2).toNat

end

end A112926.P5412366947795394826

namespace A112926

/-- `A005117(A112929(n+1)+2)` -/
def P5412366947795394826.Spec : Prop :=
  ∀ n, P5412366947795394826.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P1993126916990300774

`A144338(A071403(n+1))`
-/

namespace A112926.P1993126916990300774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (A071403 (n + 1)).toNat

end

end A112926.P1993126916990300774

namespace A112926

/-- `A144338(A071403(n+1))` -/
def P1993126916990300774.Spec : Prop :=
  ∀ n, P1993126916990300774.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P7309373100167165893

`record[A079115(n+2)+A006530(n+2)]`
-/

namespace A112926.P7309373100167165893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (n + 2) + A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112926.P7309373100167165893

namespace A112926

/-- `record[A079115(n+2)+A006530(n+2)]` -/
def P7309373100167165893.Spec : Prop :=
  ∀ n, P7309373100167165893.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P15806825878442877274

`record[A079115(n+2)+A020639(n+2)]`
-/

namespace A112926.P15806825878442877274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (n + 2) + A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112926.P15806825878442877274

namespace A112926

/-- `record[A079115(n+2)+A020639(n+2)]` -/
def P15806825878442877274.Spec : Prop :=
  ∀ n, P15806825878442877274.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P10263852004820307875

`A079228(p?[comp[n²]])`
-/

namespace A112926.P10263852004820307875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A112926.P10263852004820307875

namespace A112926

/-- `A079228(p?[comp[n²]])` -/
def P10263852004820307875.Spec : Prop :=
  ∀ n, P10263852004820307875.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P6952083339397803224

`A067535(A008864(n+1))`
-/

namespace A112926.P6952083339397803224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A008864 (n + 1)).toNat

end

end A112926.P6952083339397803224

namespace A112926

/-- `A067535(A008864(n+1))` -/
def P6952083339397803224.Spec : Prop :=
  ∀ n, P6952083339397803224.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P15998227180557691521

`A079114(A000040(n+1))`
-/

namespace A112926.P15998227180557691521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (A000040 (n + 1)).toNat

end

end A112926.P15998227180557691521

namespace A112926

/-- `A079114(A000040(n+1))` -/
def P15998227180557691521.Spec : Prop :=
  ∀ n, P15998227180557691521.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P13326441835206907904

`A067535(A028815(n+1))`
-/

namespace A112926.P13326441835206907904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A028815 (n + 1)).toNat

end

end A112926.P13326441835206907904

namespace A112926

/-- `A067535(A028815(n+1))` -/
def P13326441835206907904.Spec : Prop :=
  ∀ n, P13326441835206907904.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P4176541023964493549

`A079114(A008578(n+2))`
-/

namespace A112926.P4176541023964493549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (A008578 (n + 2)).toNat

end

end A112926.P4176541023964493549

namespace A112926

/-- `A079114(A008578(n+2))` -/
def P4176541023964493549.Spec : Prop :=
  ∀ n, P4176541023964493549.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P16342568821990935274

`A079114(A182986(n+2))`
-/

namespace A112926.P16342568821990935274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (A182986 (n + 2)).toNat

end

end A112926.P16342568821990935274

namespace A112926

/-- `A079114(A182986(n+2))` -/
def P16342568821990935274.Spec : Prop :=
  ∀ n, P16342568821990935274.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P16686501265535733329

`A067535(A299763(n+2))`
-/

namespace A112926.P16686501265535733329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A299763 (n + 2)).toNat

end

end A112926.P16686501265535733329

namespace A112926

/-- `A067535(A299763(n+2))` -/
def P16686501265535733329.Spec : Prop :=
  ∀ n, P16686501265535733329.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P5890132891691644636

`A079114(record[A006530(n+2)])`
-/

namespace A112926.P5890132891691644636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112926.P5890132891691644636

namespace A112926

/-- `A079114(record[A006530(n+2)])` -/
def P5890132891691644636.Spec : Prop :=
  ∀ n, P5890132891691644636.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P12340308771842701350

`A079228(record[A006530(n+2)])`
-/

namespace A112926.P12340308771842701350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112926.P12340308771842701350

namespace A112926

/-- `A079228(record[A006530(n+2)])` -/
def P12340308771842701350.Spec : Prop :=
  ∀ n, P12340308771842701350.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P493090511023453092

`A079114(record[A020639(n+2)])`
-/

namespace A112926.P493090511023453092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112926.P493090511023453092

namespace A112926

/-- `A079114(record[A020639(n+2)])` -/
def P493090511023453092.Spec : Prop :=
  ∀ n, P493090511023453092.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P12067680043276624620

`A079228(record[A020639(n+2)])`
-/

namespace A112926.P12067680043276624620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112926.P12067680043276624620

namespace A112926

/-- `A079228(record[A020639(n+2)])` -/
def P12067680043276624620.Spec : Prop :=
  ∀ n, P12067680043276624620.a n = A112926 (n + 1)

end A112926

/-! ## A112926.P310165024771866543

`A067535(A000040(n+1)+1)`
-/

namespace A112926.P310165024771866543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A000040 (n + 1) + 1).toNat

end

end A112926.P310165024771866543

namespace A112926

/-- `A067535(A000040(n+1)+1)` -/
def P310165024771866543.Spec : Prop :=
  ∀ n, P310165024771866543.a n = A112926 (n + 1)

end A112926

/-!
# A112927: a(n) is the least prime such that the multiplicative order of 2 mod a(n) equals n, or a(n)=1 if no such prime exists.

The programs for A112927, there is no canonical definition to state claims against.
-/

/-! ## A112927.P5977006607120368309

`A064078(n+1)%A223077(A213744(n))`
-/

namespace A112927.P5977006607120368309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064078 (n + 1)) (A223077 (A213744 n).toNat)

end

end A112927.P5977006607120368309

/-! ## A112927.P10932186743809975412

`gcd(char[5]*A112633(n+1), A212953(n+1))`
-/

namespace A112927.P10932186743809975412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A112633 (n + 1)) (A212953 (n + 1))

end

end A112927.P10932186743809975412

/-! ## A112927.P3821884620171703115

`A020639(A064078(n+1))`
-/

namespace A112927.P3821884620171703115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A064078 (n + 1)).toNat

end

end A112927.P3821884620171703115

/-! ## A112927.P3148039698233459309

`A007913(A212953(n+1))`
-/

namespace A112927.P3148039698233459309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A212953 (n + 1)).toNat

end

end A112927.P3148039698233459309

/-! ## A112927.P325053275870383597

`A128059(A114894(n+1))`
-/

namespace A112927.P325053275870383597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A114894 (n + 1)).toNat

end

end A112927.P325053275870383597

/-!
# A112928: Primes in sequence A112926.

The programs for A112928, the canonical program `A112928.P14420708112015201937` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112928 has offset 1).

The definition of A112928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112928.P14420708112015201937

`p?[A112926(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A112928

/-- `p?[A112926(n+1)]` -/
def P14420708112015201937.Spec : Prop :=
  ∀ n, P14420708112015201937.a n = A112928 (n + 1)

theorem P14420708112015201937.correct : P14420708112015201937.Spec := by
  intro n
  simp only [A112928, Nat.add_sub_cancel]

end A112928

/-! ## A112928.P9027605968451168072

`A065091(A068360(n+1))`
-/

namespace A112928.P9027605968451168072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A068360 (n + 1)).toNat

end

end A112928.P9027605968451168072

namespace A112928

/-- `A065091(A068360(n+1))` -/
def P9027605968451168072.Spec : Prop :=
  ∀ n, P9027605968451168072.a n = A112928 (n + 1)

end A112928

/-! ## A112928.P2361226929808632077

`A000040(A068360(n+1)+1)`
-/

namespace A112928.P2361226929808632077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A068360 (n + 1) + 1).toNat

end

end A112928.P2361226929808632077

namespace A112928

/-- `A000040(A068360(n+1)+1)` -/
def P2361226929808632077.Spec : Prop :=
  ∀ n, P2361226929808632077.a n = A112928 (n + 1)

end A112928

/-! ## A112928.P13739698008937309081

`∩[A000040(n+1), A112926(n+1)]`
-/

namespace A112928.P13739698008937309081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P13739698008937309081

namespace A112928

/-- `∩[A000040(n+1), A112926(n+1)]` -/
def P13739698008937309081.Spec : Prop :=
  ∀ n, (P13739698008937309081.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P9787933347360311899

`∩[A006005(n+1), A112926(n+1)]`
-/

namespace A112928.P9787933347360311899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P9787933347360311899

namespace A112928

/-- `∩[A006005(n+1), A112926(n+1)]` -/
def P9787933347360311899.Spec : Prop :=
  ∀ n, (P9787933347360311899.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P3202096109878191042

`∩[A008578(n+1), A112926(n+1)]`
-/

namespace A112928.P3202096109878191042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P3202096109878191042

namespace A112928

/-- `∩[A008578(n+1), A112926(n+1)]` -/
def P3202096109878191042.Spec : Prop :=
  ∀ n, (P3202096109878191042.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P12148250345417536712

`∩[A033946(n+1), A112926(n+1)]`
-/

namespace A112928.P12148250345417536712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P12148250345417536712

namespace A112928

/-- `∩[A033946(n+1), A112926(n+1)]` -/
def P12148250345417536712.Spec : Prop :=
  ∀ n, (P12148250345417536712.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P1705548012234873079

`∩[A046022(n+1), A112926(n+1)]`
-/

namespace A112928.P1705548012234873079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P1705548012234873079

namespace A112928

/-- `∩[A046022(n+1), A112926(n+1)]` -/
def P1705548012234873079.Spec : Prop :=
  ∀ n, (P1705548012234873079.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P16011108517378321682

`∩[A060770(n+1), A112926(n+1)]`
-/

namespace A112928.P16011108517378321682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P16011108517378321682

namespace A112928

/-- `∩[A060770(n+1), A112926(n+1)]` -/
def P16011108517378321682.Spec : Prop :=
  ∀ n, (P16011108517378321682.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P15358502123716043690

`∩[A062972(n+1), A112926(n+1)]`
-/

namespace A112928.P15358502123716043690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P15358502123716043690

namespace A112928

/-- `∩[A062972(n+1), A112926(n+1)]` -/
def P15358502123716043690.Spec : Prop :=
  ∀ n, (P15358502123716043690.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P4123787053893222508

`∩[A065091(n+1), A112926(n+1)]`
-/

namespace A112928.P4123787053893222508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P4123787053893222508

namespace A112928

/-- `∩[A065091(n+1), A112926(n+1)]` -/
def P4123787053893222508.Spec : Prop :=
  ∀ n, (P4123787053893222508.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P9530906615161688448

`∩[A066542(n+1), A112926(n+1)]`
-/

namespace A112928.P9530906615161688448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P9530906615161688448

namespace A112928

/-- `∩[A066542(n+1), A112926(n+1)]` -/
def P9530906615161688448.Spec : Prop :=
  ∀ n, (P9530906615161688448.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P11925635471154590978

`∩[A067126(n+1), A112926(n+1)]`
-/

namespace A112928.P11925635471154590978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P11925635471154590978

namespace A112928

/-- `∩[A067126(n+1), A112926(n+1)]` -/
def P11925635471154590978.Spec : Prop :=
  ∀ n, (P11925635471154590978.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P12564029796286962328

`∩[A140826(n+1), A112926(n+1)]`
-/

namespace A112928.P12564029796286962328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P12564029796286962328

namespace A112928

/-- `∩[A140826(n+1), A112926(n+1)]` -/
def P12564029796286962328.Spec : Prop :=
  ∀ n, (P12564029796286962328.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P6050531213767233714

`∩[A112926(n+1), A158611(n+1)]`
-/

namespace A112928.P6050531213767233714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P6050531213767233714

namespace A112928

/-- `∩[A112926(n+1), A158611(n+1)]` -/
def P6050531213767233714.Spec : Prop :=
  ∀ n, (P6050531213767233714.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P582796850282705142

`∩[A112926(n+1), A174090(n+1)]`
-/

namespace A112928.P582796850282705142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P582796850282705142

namespace A112928

/-- `∩[A112926(n+1), A174090(n+1)]` -/
def P582796850282705142.Spec : Prop :=
  ∀ n, (P582796850282705142.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P8410875316382216545

`∩[A112926(n+1), A216285(n+1)]`
-/

namespace A112928.P8410875316382216545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P8410875316382216545

namespace A112928

/-- `∩[A112926(n+1), A216285(n+1)]` -/
def P8410875316382216545.Spec : Prop :=
  ∀ n, (P8410875316382216545.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P9189711283214250937

`∩[A112926(n+1), A028815(n)-1]`
-/

namespace A112928.P9189711283214250937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P9189711283214250937

namespace A112928

/-- `∩[A112926(n+1), A028815(n)-1]` -/
def P9189711283214250937.Spec : Prop :=
  ∀ n, (P9189711283214250937.a n : ℤ) = A112928 (n + 1)

end A112928

/-! ## A112928.P13120941746458914294

`p?[A240474(n+1)+A000040(n+1)]`
-/

namespace A112928.P13120941746458914294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240474 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112928.P13120941746458914294

namespace A112928

/-- `p?[A240474(n+1)+A000040(n+1)]` -/
def P13120941746458914294.Spec : Prop :=
  ∀ n, P13120941746458914294.a n = A112928 (n + 1)

end A112928

/-! ## A112928.P8521554394952792557

`∩[A008864(n+1)-1, A112926(n+1)]`
-/

namespace A112928.P8521554394952792557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112928.P8521554394952792557

namespace A112928

/-- `∩[A008864(n+1)-1, A112926(n+1)]` -/
def P8521554394952792557.Spec : Prop :=
  ∀ n, (P8521554394952792557.a n : ℤ) = A112928 (n + 1)

end A112928

/-!
# A112929: Number of squarefree integers less than the n-th prime.

The programs for A112929, the canonical program `A112929.P128816744454326581` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112929 has offset 1).

The definition of A112929 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112929.P128816744454326581

`A013928(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A112929

/-- `A013928(A000040(n+1))` -/
def P128816744454326581.Spec : Prop :=
  ∀ n, P128816744454326581.a n = A112929 (n + 1)

theorem P128816744454326581.correct : P128816744454326581.Spec := by
  intro n
  simp only [A112929, Nat.add_sub_cancel]

end A112929

/-! ## A112929.P5281351572573985601

`A071403(n+1)-1`
-/

namespace A112929.P5281351572573985601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071403 (n + 1) - 1

end

end A112929.P5281351572573985601

namespace A112929

/-- `A071403(n+1)-1` -/
def P5281351572573985601.Spec : Prop :=
  ∀ n, P5281351572573985601.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P15964023436633304897

`A112930(n+1)-2`
-/

namespace A112929.P15964023436633304897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1) - 2

end

end A112929.P15964023436633304897

namespace A112929

/-- `A112930(n+1)-2` -/
def P15964023436633304897.Spec : Prop :=
  ∀ n, P15964023436633304897.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P12962662638983537305

`A337030(n+1)+1+n`
-/

namespace A112929.P12962662638983537305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337030 (n + 1) + 1 + (n : ℤ)

end

end A112929.P12962662638983537305

namespace A112929

/-- `A337030(n+1)+1+n` -/
def P12962662638983537305.Spec : Prop :=
  ∀ n, P12962662638983537305.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P917208524241755984

`A373198(n)+a(n-1)` with `a(0)=1`
-/

namespace A112929.P917208524241755984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A373198 n + a (n - 1)

end

end A112929.P917208524241755984

namespace A112929

/-- `A373198(n)+a(n-1)` -/
def P917208524241755984.Spec : Prop :=
  ∀ n, P917208524241755984.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P67137388980744564

`A013928(Δ[A007504(n)])`
-/

namespace A112929.P67137388980744564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (f1 (n + 1) - f1 n).toNat

end

end A112929.P67137388980744564

namespace A112929

/-- `A013928(Δ[A007504(n)])` -/
def P67137388980744564.Spec : Prop :=
  ∀ n, P67137388980744564.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P3941226303942308392

`A013928(A008578(n+2))`
-/

namespace A112929.P3941226303942308392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A008578 (n + 2)).toNat

end

end A112929.P3941226303942308392

namespace A112929

/-- `A013928(A008578(n+2))` -/
def P3941226303942308392.Spec : Prop :=
  ∀ n, P3941226303942308392.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P8208005714070456569

`A013928(A182986(n+2))`
-/

namespace A112929.P8208005714070456569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A182986 (n + 2)).toNat

end

end A112929.P8208005714070456569

namespace A112929

/-- `A013928(A182986(n+2))` -/
def P8208005714070456569.Spec : Prop :=
  ∀ n, P8208005714070456569.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P7368189752034288321

`A013928(sqrt(A001248(n+1)))`
-/

namespace A112929.P7368189752034288321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A112929.P7368189752034288321

namespace A112929

/-- `A013928(sqrt(A001248(n+1)))` -/
def P7368189752034288321.Spec : Prop :=
  ∀ n, P7368189752034288321.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P6254101659998447444

`A013928(record[A006530(n+2)])`
-/

namespace A112929.P6254101659998447444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112929.P6254101659998447444

namespace A112929

/-- `A013928(record[A006530(n+2)])` -/
def P6254101659998447444.Spec : Prop :=
  ∀ n, P6254101659998447444.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P17550358425381625599

`A013928(record[A020639(n+2)])`
-/

namespace A112929.P17550358425381625599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112929.P17550358425381625599

namespace A112929

/-- `A013928(record[A020639(n+2)])` -/
def P17550358425381625599.Spec : Prop :=
  ∀ n, P17550358425381625599.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P1826469255868676528

`A013928(A006093(n+1)+1)`
-/

namespace A112929.P1826469255868676528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A006093 (n + 1) + 1).toNat

end

end A112929.P1826469255868676528

namespace A112929

/-- `A013928(A006093(n+1)+1)` -/
def P1826469255868676528.Spec : Prop :=
  ∀ n, P1826469255868676528.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P8012135852328770894

`A013928(A112925(n+1)+1)`
-/

namespace A112929.P8012135852328770894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A112925 (n + 1) + 1).toNat

end

end A112929.P8012135852328770894

namespace A112929

/-- `A013928(A112925(n+1)+1)` -/
def P8012135852328770894.Spec : Prop :=
  ∀ n, P8012135852328770894.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P15659497980394938020

`A013928(A008864(n+1)-1)`
-/

namespace A112929.P15659497980394938020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A008864 (n + 1) - 1).toNat

end

end A112929.P15659497980394938020

namespace A112929

/-- `A013928(A008864(n+1)-1)` -/
def P15659497980394938020.Spec : Prop :=
  ∀ n, P15659497980394938020.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P13746106130739859615

`A013928(A028815(n+1)-1)`
-/

namespace A112929.P13746106130739859615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A028815 (n + 1) - 1).toNat

end

end A112929.P13746106130739859615

namespace A112929

/-- `A013928(A028815(n+1)-1)` -/
def P13746106130739859615.Spec : Prop :=
  ∀ n, P13746106130739859615.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P13230494260255725637

`A013928(A112926(n+1))-1`
-/

namespace A112929.P13230494260255725637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A112926 (n + 1)).toNat - 1

end

end A112929.P13230494260255725637

namespace A112929

/-- `A013928(A112926(n+1))-1` -/
def P13230494260255725637.Spec : Prop :=
  ∀ n, P13230494260255725637.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P17102941582332717455

`A107079(A299763(n+2))-2`
-/

namespace A112929.P17102941582332717455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A299763 (n + 2)).toNat - 2

end

end A112929.P17102941582332717455

namespace A112929

/-- `A107079(A299763(n+2))-2` -/
def P17102941582332717455.Spec : Prop :=
  ∀ n, P17102941582332717455.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P6810785836155205051

`A107079(record[A006530(n+2)])-1`
-/

namespace A112929.P6810785836155205051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A112929.P6810785836155205051

namespace A112929

/-- `A107079(record[A006530(n+2)])-1` -/
def P6810785836155205051.Spec : Prop :=
  ∀ n, P6810785836155205051.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P15275673688381421885

`A107079(record[A020639(n+2)])-1`
-/

namespace A112929.P15275673688381421885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A112929.P15275673688381421885

namespace A112929

/-- `A107079(record[A020639(n+2)])-1` -/
def P15275673688381421885.Spec : Prop :=
  ∀ n, P15275673688381421885.a n = A112929 (n + 1)

end A112929

/-! ## A112929.P17666504172503092358

`A107079(A000040(n+1)+1)-2`
-/

namespace A112929.P17666504172503092358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A000040 (n + 1) + 1).toNat - 2

end

end A112929.P17666504172503092358

namespace A112929

/-- `A107079(A000040(n+1)+1)-2` -/
def P17666504172503092358.Spec : Prop :=
  ∀ n, P17666504172503092358.a n = A112929 (n + 1)

end A112929

/-!
# A112930: a(n) = order of n-th term of A112926 among squarefree integers.

The programs for A112930, the canonical program `A112930.P7126053726691172401` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112930 has offset 1).

The definition of A112930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112930.P8306376464893236038

`A071403(n+1)+1`
-/

namespace A112930.P8306376464893236038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071403 (n + 1) + 1

end

end A112930.P8306376464893236038

namespace A112930

/-- `A071403(n+1)+1` -/
def P8306376464893236038.Spec : Prop :=
  ∀ n, P8306376464893236038.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P7126053726691172401

`A112929(n+1)+2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112930

/-- `A112929(n+1)+2` -/
def P7126053726691172401.Spec : Prop :=
  ∀ n, P7126053726691172401.a n = A112930 (n + 1)

theorem P7126053726691172401.correct : P7126053726691172401.Spec := by
  intro n
  simp only [A112930, Nat.add_sub_cancel]

end A112930

/-! ## A112930.P14558795882560852445

`A337030(n+1)+3+n`
-/

namespace A112930.P14558795882560852445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337030 (n + 1) + 3 + (n : ℤ)

end

end A112930.P14558795882560852445

namespace A112930

/-- `A337030(n+1)+3+n` -/
def P14558795882560852445.Spec : Prop :=
  ∀ n, P14558795882560852445.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P15235006847529992560

`A373198(n)+a(n-1)` with `a(0)=3`
-/

namespace A112930.P15235006847529992560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A373198 n + a (n - 1)

end

end A112930.P15235006847529992560

namespace A112930

/-- `A373198(n)+a(n-1)` -/
def P15235006847529992560.Spec : Prop :=
  ∀ n, P15235006847529992560.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P10660646941923511730

`A107079(A008864(n+1))`
-/

namespace A112930.P10660646941923511730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A008864 (n + 1)).toNat

end

end A112930.P10660646941923511730

namespace A112930

/-- `A107079(A008864(n+1))` -/
def P10660646941923511730.Spec : Prop :=
  ∀ n, P10660646941923511730.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P10942840447298232026

`A107079(A028815(n+1))`
-/

namespace A112930.P10942840447298232026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A028815 (n + 1)).toNat

end

end A112930.P10942840447298232026

namespace A112930

/-- `A107079(A028815(n+1))` -/
def P10942840447298232026.Spec : Prop :=
  ∀ n, P10942840447298232026.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P766005937097746998

`A107079(A299763(n+2))`
-/

namespace A112930.P766005937097746998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A299763 (n + 2)).toNat

end

end A112930.P766005937097746998

namespace A112930

/-- `A107079(A299763(n+2))` -/
def P766005937097746998.Spec : Prop :=
  ∀ n, P766005937097746998.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P11785161884510146941

`A013928(Δ[A007504(n)])+2`
-/

namespace A112930.P11785161884510146941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (f1 (n + 1) - f1 n).toNat + 2

end

end A112930.P11785161884510146941

namespace A112930

/-- `A013928(Δ[A007504(n)])+2` -/
def P11785161884510146941.Spec : Prop :=
  ∀ n, P11785161884510146941.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P6739585120504462567

`A107079(A000040(n+1)+1)`
-/

namespace A112930.P6739585120504462567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A000040 (n + 1) + 1).toNat

end

end A112930.P6739585120504462567

namespace A112930

/-- `A107079(A000040(n+1)+1)` -/
def P6739585120504462567.Spec : Prop :=
  ∀ n, P6739585120504462567.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P10211431881571481222

`A013928(A112926(n+1)+1)`
-/

namespace A112930.P10211431881571481222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A112926 (n + 1) + 1).toNat

end

end A112930.P10211431881571481222

namespace A112930

/-- `A013928(A112926(n+1)+1)` -/
def P10211431881571481222.Spec : Prop :=
  ∀ n, P10211431881571481222.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P10457075493972866526

`A107079(A008578(n+2)+1)`
-/

namespace A112930.P10457075493972866526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A008578 (n + 2) + 1).toNat

end

end A112930.P10457075493972866526

namespace A112930

/-- `A107079(A008578(n+2)+1)` -/
def P10457075493972866526.Spec : Prop :=
  ∀ n, P10457075493972866526.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P13336892063326644991

`A013928(A182986(n+2))+2`
-/

namespace A112930.P13336892063326644991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A182986 (n + 2)).toNat + 2

end

end A112930.P13336892063326644991

namespace A112930

/-- `A013928(A182986(n+2))+2` -/
def P13336892063326644991.Spec : Prop :=
  ∀ n, P13336892063326644991.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P5371817459012791040

`A013928(sqrt(A001248(n+1)))+2`
-/

namespace A112930.P5371817459012791040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat + 2

end

end A112930.P5371817459012791040

namespace A112930

/-- `A013928(sqrt(A001248(n+1)))+2` -/
def P5371817459012791040.Spec : Prop :=
  ∀ n, P5371817459012791040.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P12893909163769826879

`A107079(record[A006530(n+2)+1])`
-/

namespace A112930.P12893909163769826879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112930.P12893909163769826879

namespace A112930

/-- `A107079(record[A006530(n+2)+1])` -/
def P12893909163769826879.Spec : Prop :=
  ∀ n, P12893909163769826879.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P17336056746580122487

`A107079(record[A020639(n+2)+1])`
-/

namespace A112930.P17336056746580122487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112930.P17336056746580122487

namespace A112930

/-- `A107079(record[A020639(n+2)+1])` -/
def P17336056746580122487.Spec : Prop :=
  ∀ n, P17336056746580122487.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P6736068950582286912

`A013928(p?[A000040(n+1)])+2`
-/

namespace A112930.P6736068950582286912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 2

end

end A112930.P6736068950582286912

namespace A112930

/-- `A013928(p?[A000040(n+1)])+2` -/
def P6736068950582286912.Spec : Prop :=
  ∀ n, P6736068950582286912.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P4968344244629758999

`A013928(record[A006530(n+2)])+2`
-/

namespace A112930.P4968344244629758999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A112930.P4968344244629758999

namespace A112930

/-- `A013928(record[A006530(n+2)])+2` -/
def P4968344244629758999.Spec : Prop :=
  ∀ n, P4968344244629758999.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P1929777022177782141

`A013928(record[A020639(n+2)])+2`
-/

namespace A112930.P1929777022177782141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A112930.P1929777022177782141

namespace A112930

/-- `A013928(record[A020639(n+2)])+2` -/
def P1929777022177782141.Spec : Prop :=
  ∀ n, P1929777022177782141.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P1012417325742643342

`A013928(A000040(n+1)+1)+1`
-/

namespace A112930.P1012417325742643342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A000040 (n + 1) + 1).toNat + 1

end

end A112930.P1012417325742643342

namespace A112930

/-- `A013928(A000040(n+1)+1)+1` -/
def P1012417325742643342.Spec : Prop :=
  ∀ n, P1012417325742643342.a n = A112930 (n + 1)

end A112930

/-! ## A112930.P17497800602293279631

`A013928(A006093(n+1)+1)+2`
-/

namespace A112930.P17497800602293279631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A006093 (n + 1) + 1).toNat + 2

end

end A112930.P17497800602293279631

namespace A112930

/-- `A013928(A006093(n+1)+1)+2` -/
def P17497800602293279631.Spec : Prop :=
  ∀ n, P17497800602293279631.a n = A112930 (n + 1)

end A112930

/-!
# A112933: Constant terms arising in an asymptotic formula for 1/(zeta(s)-1) as s --> infinity.

The programs for A112933, there is no canonical definition to state claims against.
-/

/-! ## A112933.P17609946584689908806

`A057079(A110565(n+1)+A110510(n))`
-/

namespace A112933.P17609946584689908806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A110565 (n + 1) + A110510 n).toNat

end

end A112933.P17609946584689908806

/-!
# A112934: a(0) = 1; a(n+1) = Sum_{k=0..n} a(k)*A001147(n-k), where A001147 = double factorial numbers.

The programs for A112934, there is no canonical definition to state claims against.
-/

/-! ## A112934.P3896626063905235734

`A355721(abs(1-∑[n]))`
-/

namespace A112934.P3896626063905235734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355721 |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A112934.P3896626063905235734

/-! ## A112934.P4419541391261035918

`A355721(A212342(n))-log2(1/2)-1`
-/

namespace A112934.P4419541391261035918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A355721 (A212342 n).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - 1

end

end A112934.P4419541391261035918

/-! ## A112934.P18163254864850489703

`A355721(A212342(n))%A048617(n)`
-/

namespace A112934.P18163254864850489703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355721 (A212342 n).toNat) (A048617 n)

end

end A112934.P18163254864850489703

/-! ## A112934.P8747160423412183523

`A113143(∑[n+3])`
-/

namespace A112934.P8747160423412183523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112934.P8747160423412183523

/-! ## A112934.P3555515198868839567

`A122840(n+1)+A113143(A141214(n))`
-/

namespace A112934.P3555515198868839567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (n + 1) + A113143 (A141214 n).toNat

end

end A112934.P3555515198868839567

/-!
# A112935: Logarithmic derivative of A112934 such that a(n)=(1/2)*A112934(n+1) for n>0, where A112934 equals the INVERT transform of double factorials A001147.

The programs for A112935, there is no canonical definition to state claims against.
-/

/-! ## A112935.P9341437311919338335

`1/2*A112934(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112935.P9341437311919338335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A112934 (n + 2) : ℚ)

end

end A112935.P9341437311919338335

/-! ## A112935.P14451540509353021875

`A112934(n+2)/2`
-/

namespace A112935.P14451540509353021875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112934 (n + 2) : ℚ) / 2

end

end A112935.P14451540509353021875

/-! ## A112935.P13422015634584243979

`a(n-1)*ratio[A112934(n+1)]` with `a(0)=1`
-/

namespace A112935.P13422015634584243979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112934 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A112935.P13422015634584243979

/-! ## A112935.P11934817504012921408

`record[A112934(n)/A169695(A001105(n))]`
-/

namespace A112935.P11934817504012921408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112934 n : ℚ) / (A169695 (A001105 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112935.P11934817504012921408

/-!
# A112936: INVERT transform (with offset) of triple factorials (A008544), where g.f. satisfies: A(x) = 1 + x*[d/dx x*A(x)^3]/A(x)^3.

The programs for A112936, there is no canonical definition to state claims against.
-/

/-! ## A112936.P966937509840624853

`A355793(∑[n]+or(1, -n)%2)`
-/

namespace A112936.P966937509840624853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (Int.lor 1 (-(n : ℤ))) 2).toNat

end

end A112936.P966937509840624853

/-! ## A112936.P8376371788445177605

`A355793(A212342(n))`
-/

namespace A112936.P8376371788445177605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (A212342 n).toNat

end

end A112936.P8376371788445177605

/-! ## A112936.P863044202888803375

`A355793(eq[1, A028338(n)])`
-/

namespace A112936.P863044202888803375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112936.P863044202888803375

/-! ## A112936.P11513670726952878077

`A355793(eq[1, A039599(n)])`
-/

namespace A112936.P11513670726952878077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112936.P11513670726952878077

/-! ## A112936.P7257567145613666355

`A355793(eq[1, A054336(n)])`
-/

namespace A112936.P7257567145613666355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112936.P7257567145613666355

/-!
# A112937: Logarithmic derivative of A112936 such that a(n)=(1/3)*A112936(n+1) for n>0, where A112936 equals the INVERT transform (with offset) of triple factorials A008544.

The programs for A112937, there is no canonical definition to state claims against.
-/

/-! ## A112937.P496384070913847394

`1/3*A112936(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112937.P496384070913847394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A112936 (n + 2) : ℚ)

end

end A112937.P496384070913847394

/-! ## A112937.P18376849637481419900

`A112936(n+2)/3`
-/

namespace A112937.P18376849637481419900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112936 (n + 2) : ℚ) / 3

end

end A112937.P18376849637481419900

/-! ## A112937.P5149127149496632723

`record[A112936(n)/gcd(3, A008545(n))]`
-/

namespace A112937.P5149127149496632723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112936 n : ℚ) / (Int.gcd 3 (A008545 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112937.P5149127149496632723

/-!
# A112938: INVERT transform (with offset) of quadruple factorials (A008545), where g.f. satisfies: A(x) = 1 + x*[d/dx x*A(x)^4]/A(x)^4.

The programs for A112938, there is no canonical definition to state claims against.
-/

/-! ## A112938.P2501049273721455539

`A008574(floor(A303057(n)/3))`
-/

namespace A112938.P2501049273721455539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 ⌊(A303057 n : ℚ) / 3⌋.toNat

end

end A112938.P2501049273721455539

/-!
# A112939: Logarithmic derivative of A112938 such that a(n)=(1/4)*A112938(n+1) for n>0, where A112938 equals the INVERT transform (with offset) of quadruple factorials A008545.

The programs for A112939, there is no canonical definition to state claims against.
-/

/-! ## A112939.P8214081626582518790

`1/4*A112938(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112939.P8214081626582518790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A112938 (n + 2) : ℚ)

end

end A112939.P8214081626582518790

/-! ## A112939.P5700760411886810796

`A112938(n+2)/4`
-/

namespace A112939.P5700760411886810796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112938 (n + 2) : ℚ) / 4

end

end A112939.P5700760411886810796

/-! ## A112939.P18098831568721476090

`record[A112938(n)/gcd(4, A008546(n))]`
-/

namespace A112939.P18098831568721476090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112938 n : ℚ) / (Int.gcd 4 (A008546 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112939.P18098831568721476090

/-!
# A112940: INVERT transform (with offset) of quintuple factorials (A008546), where g.f. satisfies: A(x) = 1 + x*[d/dx x*A(x)^5]/A(x)^5.

The programs for A112940, there is no canonical definition to state claims against.
-/

/-! ## A112940.P10651246321124448193

`5*A035247(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A112940.P10651246321124448193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * A035247 (a (n - 1)).toNat

end

end A112940.P10651246321124448193

/-! ## A112940.P4979626575442488292

`A001068(A109153(n)²)`
-/

namespace A112940.P4979626575442488292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A109153 n ^ 2).toNat

end

end A112940.P4979626575442488292

/-!
# A112941: Logarithmic derivative of A112940 such that a(n)=(1/5)*A112940(n+1) for n>0, where A112940 equals the INVERT transform (with offset) of quintuple factorials A008546.

The programs for A112941, there is no canonical definition to state claims against.
-/

/-! ## A112941.P152895450023999628

`1/5*A112940(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112941.P152895450023999628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A112940 (n + 2) : ℚ)

end

end A112941.P152895450023999628

/-! ## A112941.P15913538073705072911

`A112940(n+2)/5`
-/

namespace A112941.P15913538073705072911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112940 (n + 2) : ℚ) / 5

end

end A112941.P15913538073705072911

/-!
# A112942: INVERT transform (with offset) of sextuple factorials (A008543), where g.f. satisfies: A(x) = 1 + x*[d/dx x*A(x)^6]/A(x)^6.

The programs for A112942, there is no canonical definition to state claims against.
-/

/-! ## A112942.P11777434686772332929

`A301453(Δ[Δ[(n-2)^n]])`
-/

namespace A112942.P11777434686772332929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301453 (f1 (n + 1) - f1 n).toNat

end

end A112942.P11777434686772332929

/-!
# A112943: Logarithmic derivative of A112942 such that a(n)=(1/6)*A112942(n+1) for n>0, where A112942 equals the INVERT transform (with offset) of sextuple factorials A008543.

The programs for A112943, there is no canonical definition to state claims against.
-/

/-! ## A112943.P13839707765116228325

`1/6*A112942(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112943.P13839707765116228325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (A112942 (n + 2) : ℚ)

end

end A112943.P13839707765116228325

/-! ## A112943.P1637496211402852846

`A112942(n+2)/6`
-/

namespace A112943.P1637496211402852846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112942 (n + 2) : ℚ) / 6

end

end A112943.P1637496211402852846

/-!
# A112944: Number of unrooted regular odd-valent planar maps with 2 vertices; maps are considered up to orientation-preserving homeomorphisms and the vertices are of valency 2n+1.

The programs for A112944, there is no canonical definition to state claims against.
-/

/-! ## A112944.P16180579405079956821

`A113182(Δ[n²])`
-/

namespace A112944.P16180579405079956821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A112944.P16180579405079956821

/-! ## A112944.P17169331204548361933

`root(A113182(2*n+1), 2)²`
-/

namespace A112944.P17169331204548361933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A113182 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A112944.P17169331204548361933

/-! ## A112944.P13379169964309528104

`record[A113182(n%6+n+1)]`
-/

namespace A112944.P13379169964309528104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113182 (n % 6 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112944.P13379169964309528104

/-! ## A112944.P5566775880812177515

`record[(-1)^n*A113182(n+1)]`
-/

namespace A112944.P5566775880812177515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112944.P5566775880812177515

/-! ## A112944.P6393619442971558178

`record[A113182(A012264(n))]`
-/

namespace A112944.P6393619442971558178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113182 (A012264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112944.P6393619442971558178

/-!
# A112948: Number of unrooted 3-regular planar maps with 2n vertices, up to orientation-preserving isomorphisms.

The programs for A112948, there is no canonical definition to state claims against.
-/

/-! ## A112948.P1198820100208803957

`A194204(6*A038038(n+1))`
-/

namespace A112948.P1198820100208803957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194204 (6 * A038038 (n + 1)).toNat

end

end A112948.P1198820100208803957

/-!
# A112951: a(n) = number of indecomposable Schur rings over the group Z_{2^n}.

The programs for A112951, there is no canonical definition to state claims against.
-/

/-! ## A112951.P6690588443846397207

`A110654(A150659(n)+A048679(n))`
-/

namespace A112951.P6690588443846397207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150659 n + A048679 n).toNat

end

end A112951.P6690588443846397207

/-! ## A112951.P14521794989373485969

`A244988(A150656(n)+A038722(n+1))`
-/

namespace A112951.P14521794989373485969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244988 (A150656 n + A038722 (n + 1)).toNat

end

end A112951.P14521794989373485969

/-! ## A112951.P14686456738146328225

`A244988(A194909(n+1)+A150656(n))`
-/

namespace A112951.P14686456738146328225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244988 (A194909 (n + 1) + A150656 n).toNat

end

end A112951.P14686456738146328225

/-!
# A112952: Smaller of two ternary (base 3) numbers (each using only 0's and 1's, the latter's positions never coinciding) such that the decimal representation of their difference is n.

The programs for A112952, there is no canonical definition to state claims against.
-/

/-! ## A112952.P8708871262129493346

`A007089(A060373(n))`
-/

namespace A112952.P8708871262129493346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A060373 n).toNat

end

end A112952.P8708871262129493346

/-! ## A112952.P14545589300638775268

`A007088(A343229(n))`
-/

namespace A112952.P14545589300638775268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A343229 n).toNat

end

end A112952.P14545589300638775268

/-! ## A112952.P3539278634104443650

`A185544(2*A343229(n))`
-/

namespace A112952.P3539278634104443650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A343229 n).toNat

end

end A112952.P3539278634104443650

/-! ## A112952.P3582119918895842297

`A007089(A060372(n)-n)`
-/

namespace A112952.P3582119918895842297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A060372 n - (n : ℤ)).toNat

end

end A112952.P3582119918895842297

/-! ## A112952.P15087588481137818105

`A046031(A060372(n)-n)`
-/

namespace A112952.P15087588481137818105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (A060372 n - (n : ℤ)).toNat

end

end A112952.P15087588481137818105

/-! ## A112952.P682809708370833514

`A112867(A060372(n)-n)`
-/

namespace A112952.P682809708370833514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (A060372 n - (n : ℤ)).toNat

end

end A112952.P682809708370833514

/-! ## A112952.P14366976509273792592

`A140267(A060372(n)-n)`
-/

namespace A112952.P14366976509273792592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 (A060372 n - (n : ℤ)).toNat

end

end A112952.P14366976509273792592

/-! ## A112952.P1257397578152803778

`A140267(A060373(2*n-n))`
-/

namespace A112952.P1257397578152803778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 (A060373 (2 * n - n)).toNat

end

end A112952.P1257397578152803778

/-! ## A112952.P7626486260781892923

`A007089((A060374(n)-n)/2)`
-/

namespace A112952.P7626486260781892923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway ((A060374 n - (n : ℤ) : ℚ) / 2)).toNat

end

end A112952.P7626486260781892923

/-! ## A112952.P3184656383751512316

`A112867((A060374(n)-n)/2)`
-/

namespace A112952.P3184656383751512316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (SequenceMachineLib.roundAway ((A060374 n - (n : ℤ) : ℚ) / 2)).toNat

end

end A112952.P3184656383751512316

/-!
# A112953: a(1) = 0; a(n) = pi(n)^pi(n) for n>1, where pi is the prime counting function (A000720).

The programs for A112953, there is no canonical definition to state claims against.
-/

/-! ## A112953.P17613213819586474194

`∑{e}[A048656(n+1), #^#]`
-/

namespace A112953.P17613213819586474194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ Nat.factorization (f1 n).natAbs p

end

end A112953.P17613213819586474194

/-! ## A112953.P13737557823106461353

`A112621(2^∑[∑{p}[n+1, val(#, n+1)]])`
-/

namespace A112953.P13737557823106461353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112621 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A112953.P13737557823106461353

/-! ## A112953.P10804427483440030106

`A112621(2^∑[∑{p}[n+1, C(#, n+1)]])`
-/

namespace A112953.P10804427483440030106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112621 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A112953.P10804427483440030106

/-! ## A112953.P232658081038868055

`A112621(2^∑[∑{p}[n+1, floor(#/(n+1))]])`
-/

namespace A112953.P232658081038868055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112621 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A112953.P232658081038868055

/-! ## A112953.P17678528942273313700

`A112621(2^(∑[∏{p}[n+1, val(#, n+1)]]-1))`
-/

namespace A112953.P17678528942273313700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112621 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ))).toNat

end

end A112953.P17678528942273313700

/-!
# A112955: Greatest number m such that phi(m) = n*tau(m), with phi=A000010 and tau=A000005; a(n)=0 if no such m exists.

The programs for A112955, there is no canonical definition to state claims against.
-/

/-! ## A112955.P9898990244535766423

`A378089(∑[A112954(n+1)])`
-/

namespace A112955.P9898990244535766423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112955.P9898990244535766423

/-!
# A112956: a(n) = number of ways the set {1,2,...,n} can be split into proper subsets with equal sums.

The programs for A112956, there is no canonical definition to state claims against.
-/

/-! ## A112956.P2167720729207472209

`A035470(n+1)-1`
-/

namespace A112956.P2167720729207472209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035470 (n + 1) - 1

end

end A112956.P2167720729207472209

/-! ## A112956.P11608545240843744680

`abs(A035470(Δ[n²]-n)-1)`
-/

namespace A112956.P11608545240843744680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035470 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1|

end

end A112956.P11608545240843744680

/-! ## A112956.P13729438539598499446

`A057428(n+1)+A035470(n+1)`
-/

namespace A112956.P13729438539598499446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A035470 (n + 1)

end

end A112956.P13729438539598499446

/-! ## A112956.P5585470726273477338

`A134824(n+2)+A035470(n+1)`
-/

namespace A112956.P5585470726273477338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A035470 (n + 1)

end

end A112956.P5585470726273477338

/-! ## A112956.P14492843847279343111

`A153881(n+2)+A035470(n+1)`
-/

namespace A112956.P14492843847279343111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A035470 (n + 1)

end

end A112956.P14492843847279343111

/-!
# A112957: a(1) = a(2) = a(3) = 1; for n > 1, a(n+3) = a(n)^2 + a(n+1)^2 + a(n+2)^2.

The programs for A112957, there is no canonical definition to state claims against.
-/

/-! ## A112957.P5550701069040163197

`a(n-1)²+a(n-2)²+a(n-3)²` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A112957.P5550701069040163197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) ^ 2 + a (n - 2) ^ 2 + a (n - 3) ^ 2

end

end A112957.P5550701069040163197

/-! ## A112957.P8767856218595637110

`A006723(n)*A072878(A274126(n+1))`
-/

namespace A112957.P8767856218595637110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006723 n * A072878 (A274126 (n + 1)).toNat

end

end A112957.P8767856218595637110

/-! ## A112957.P14670748801456754589

`∏{d}[A072878(n+2), #]`
-/

namespace A112957.P14670748801456754589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072878 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A112957.P14670748801456754589

/-!
# A112958: a(1) = a(2) = a(3) = a(4) = 1; for n>1: a(n+4) = a(n)^2 + a(n+1)^2 + a(n+2)^2 + a(n+3)^2.

The programs for A112958, the canonical program `A112958.P15914173958103362058` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112958 has offset 1).

The definition of A112958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112958.P15914173958103362058

`a(n-1)²+a(n-2)²+a(n-3)²+a(n-4)²` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112958

/-- `a(n-1)²+a(n-2)²+a(n-3)²+a(n-4)²` -/
def P15914173958103362058.Spec : Prop :=
  ∀ n, (P15914173958103362058.a n : ℤ) = A112958 (n + 1)

theorem P15914173958103362058.correct : P15914173958103362058.Spec := by
  intro n
  simp only [A112958, Nat.add_sub_cancel]

end A112958

/-! ## A112958.P16272168032080411576

`A072879(A172414(n)+n)`
-/

namespace A112958.P16272168032080411576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072879 (A172414 n + (n : ℤ)).toNat

end

end A112958.P16272168032080411576

namespace A112958

/-- `A072879(A172414(n)+n)` -/
def P16272168032080411576.Spec : Prop :=
  ∀ n, P16272168032080411576.a n = A112958 (n + 1)

end A112958

/-! ## A112958.P18176766973490596293

`A072879(A072941(n+1)+1)`
-/

namespace A112958.P18176766973490596293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072879 (A072941 (n + 1) + 1).toNat

end

end A112958.P18176766973490596293

namespace A112958

/-- `A072879(A072941(n+1)+1)` -/
def P18176766973490596293.Spec : Prop :=
  ∀ n, P18176766973490596293.a n = A112958 (n + 1)

end A112958

/-! ## A112958.P7568286069220530501

`A072879(n+2)%A000058(n)`
-/

namespace A112958.P7568286069220530501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072879 (n + 2)) (A000058 n)

end

end A112958.P7568286069220530501

namespace A112958

/-- `A072879(n+2)%A000058(n)` -/
def P7568286069220530501.Spec : Prop :=
  ∀ n, P7568286069220530501.a n = A112958 (n + 1)

end A112958

/-! ## A112958.P13922437426713026825

`A057427(A292400(n))*A072879(n+2)`
-/

namespace A112958.P13922437426713026825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A292400 n).toNat * A072879 (n + 2)

end

end A112958.P13922437426713026825

namespace A112958

/-- `A057427(A292400(n))*A072879(n+2)` -/
def P13922437426713026825.Spec : Prop :=
  ∀ n, P13922437426713026825.a n = A112958 (n + 1)

end A112958

/-!
# A112959: a(1) = a(2) = a(3) = a(4) = a(5) = 1; for n>1: a(n+5) = (a(n))^2 + (a(n+1))^2 + (a(n+2))^2 + (a(n+3))^2 + (a(n+4))^2.

The programs for A112959, there is no canonical definition to state claims against.
-/

/-! ## A112959.P17970872720164099913

`a(n-1)²+a(n-2)²+a(n-3)²+a(n-4)²+a(n-5)²` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A112959.P17970872720164099913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - 1) ^ 2 + a (n - 2) ^ 2 + a (n - 3) ^ 2 + a (n - 4) ^ 2 + a (n - 5) ^ 2

end

end A112959.P17970872720164099913

/-! ## A112959.P8100841951506542877

`A072880(record[A072233(n)])`
-/

namespace A112959.P8100841951506542877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072880 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112959.P8100841951506542877

/-! ## A112959.P12809270787922307380

`A072880(∑[A243753(A213221(2*n))])`
-/

namespace A112959.P12809270787922307380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243753 (A213221 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072880 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112959.P12809270787922307380

/-! ## A112959.P4991620919253303235

`A072880(A074137(n+1))`
-/

namespace A112959.P4991620919253303235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072880 (A074137 (n + 1)).toNat

end

end A112959.P4991620919253303235

/-! ## A112959.P13759999312377272883

`∏{p}[A072880(n+2), #]`
-/

namespace A112959.P13759999312377272883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072880 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A112959.P13759999312377272883

/-!
# A112960: a(1) = a(2) = a(3) = a(4) = a(5) = a(6) = 1; for n>1: a(n+6) = (a(n))^2 + (a(n+1))^2 + (a(n+2))^2 + (a(n+3))^2 + (a(n+4))^2 + (a(n+5))^2.

The programs for A112960, there is no canonical definition to state claims against.
-/

/-! ## A112960.P16758431406702153843

`A165900(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=6`
-/

namespace A112960.P16758431406702153843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 6] fun n a =>
  A165900 (a (n - 1) + 1).toNat

end

end A112960.P16758431406702153843

/-! ## A112960.P2690699657942965416

`A199201(A358451(n)+A010815(n+4))`
-/

namespace A112960.P2690699657942965416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (A358451 n + A010815 (n + 4)).toNat

end

end A112960.P2690699657942965416

/-!
# A112961: a(n) = a(n-1)^3 + a(n-2)^3 for n >= 2 with a(0) = 0, a(1) = 1.

The programs for A112961, the canonical program `A112961.P16502287866802873612` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112961 has offset 0).

The definition of A112961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^3+a(n-2)^3` (program `A112961.P16502287866802873612`, by `A112961.P16502287866802873612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112961.P16502287866802873612

`a(n-1)^3+a(n-2)^3` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112961

/-- `a(n-1)^3+a(n-2)^3` -/
def P16502287866802873612.Spec : Prop :=
  ∀ n, (P16502287866802873612.a n : ℤ) = A112961 n

theorem P16502287866802873612.correct : P16502287866802873612.Spec := by
  intro n
  simp only [A112961]

end A112961

/-! ## A112961.P4598067806455891421

`n^a(n-1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=9, a(5)=737`
-/

namespace A112961.P4598067806455891421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 9, 737] fun n a =>
  n ^ a (n - 1)

end

end A112961.P4598067806455891421

namespace A112961

/-- `n^a(n-1)` -/
def P4598067806455891421.Spec : Prop :=
  ∀ n, (P4598067806455891421.a n : ℤ) = A112961 n

end A112961

/-!
# A112969: a(n) = a(n-1)^4 + a(n-2)^4 for n >= 2 with a(0) = 0, a(1) = 1.

The programs for A112969, the canonical program `A112969.P8209830086794348302` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112969 has offset 0).

The definition of A112969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^4+a(n-2)^4` (program `A112969.P8209830086794348302`, by `A112969.P8209830086794348302.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112969.P8209830086794348302

`a(n-1)^4+a(n-2)^4` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112969

/-- `a(n-1)^4+a(n-2)^4` -/
def P8209830086794348302.Spec : Prop :=
  ∀ n, (P8209830086794348302.a n : ℤ) = A112969 n

theorem P8209830086794348302.correct : P8209830086794348302.Spec := by
  intro n
  simp only [A112969]

end A112969

/-! ## A112969.P9234626446388561378

`a(n-1)²²+a(n-2)²²` with `a(0)=0, a(1)=1`
-/

namespace A112969.P9234626446388561378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) ^ 2) ^ 2 + (a (n - 2) ^ 2) ^ 2

end

end A112969.P9234626446388561378

namespace A112969

/-- `a(n-1)²²+a(n-2)²²` -/
def P9234626446388561378.Spec : Prop :=
  ∀ n, (P9234626446388561378.a n : ℤ) = A112969 n

theorem P9234626446388561378.correct : P9234626446388561378.Spec := by
  intro n
  simp only [A112969, Nat.add_sub_cancel, A112969.P9234626446388561378.a, A112969.P8209830086794348302.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A112969

/-!
# A112970: A generalized Stern sequence.

The programs for A112970, there is no canonical definition to state claims against.
-/

/-! ## A112970.P396859484430565912

`A350126(A003602(n+1)%A350141(n+1))`
-/

namespace A112970.P396859484430565912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350126 (Int.tmod (A003602 (n + 1)) (A350141 (n + 1))).toNat

end

end A112970.P396859484430565912

/-! ## A112970.P178228275326334531

`A350126(A003602(n+1))%A309235(n+1)`
-/

namespace A112970.P178228275326334531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350126 (A003602 (n + 1)).toNat) (A309235 (n + 1))

end

end A112970.P178228275326334531

/-! ## A112970.P7557277319290307991

`A121997(A228754((n+1)/gcd(n+1, Δ[(2*n)²²²])))`
-/

namespace A112970.P7557277319290307991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((2 * n) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (A228754 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ))).toNat).toNat

end

end A112970.P7557277319290307991

/-!
# A112972: Number of ways the set {1,2,...,n} can be split into three subsets of equal sums.

The programs for A112972, there is no canonical definition to state claims against.
-/

/-! ## A112972.P16725205885338190577

`A317577(n+1)/6`
-/

namespace A112972.P16725205885338190577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317577 (n + 1) : ℚ) / 6

end

end A112972.P16725205885338190577

/-! ## A112972.P6678833830710361239

`A008615(A317577(n+1))`
-/

namespace A112972.P6678833830710361239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A317577 (n + 1)).toNat

end

end A112972.P6678833830710361239

/-! ## A112972.P5313693136498427091

`A103221(A317577(n+1)+1)`
-/

namespace A112972.P5313693136498427091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A317577 (n + 1) + 1).toNat

end

end A112972.P5313693136498427091

/-! ## A112972.P12570476286916455421

`A071281(A317577(n+1)+2)`
-/

namespace A112972.P12570476286916455421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 (A317577 (n + 1) + 2).toNat

end

end A112972.P12570476286916455421

/-! ## A112972.P13233746908632519386

`A112689(lcm(2, A317577(n+1)))`
-/

namespace A112972.P13233746908632519386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (Int.lcm 2 (A317577 (n + 1)))

end

end A112972.P13233746908632519386

/-!
# A112973: Riordan array (1/(1-x-x^2), x(1+x)/(1-x-x^2)^2).

The programs for A112973, there is no canonical definition to state claims against.
-/

/-! ## A112973.P16189185438936241238

`A162303(n)-A060952(A274487(n))`
-/

namespace A112973.P16189185438936241238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162303 n - A060952 (A274487 n).toNat

end

end A112973.P16189185438936241238

/-! ## A112973.P8693941816035107637

`A162303(n)-A185284(A250167(n+1))`
-/

namespace A112973.P8693941816035107637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162303 n - A185284 (A250167 (n + 1)).toNat

end

end A112973.P8693941816035107637

/-! ## A112973.P5665425408415376066

`A162303(n)-A342707(A231246(n+1))`
-/

namespace A112973.P5665425408415376066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162303 n - A342707 (A231246 (n + 1)).toNat

end

end A112973.P5665425408415376066

/-!
# A112975: Lexicographically earliest permutation of the natural numbers such that each term has a common divisor with at least two earlier terms, a(n)=n for n

The programs for A112975, there is no canonical definition to state claims against.
-/

/-! ## A112975.P1446460484227305596

`A112978(A112977(n+1))`
-/

namespace A112975.P1446460484227305596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112978 (A112977 (n + 1)).toNat

end

end A112975.P1446460484227305596

/-! ## A112975.P8214333889633024409

`A112977(A112978(n-log2(1/2)))`
-/

namespace A112975.P8214333889633024409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112977 (A112978 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A112975.P8214333889633024409

/-!
# A112976: Position of n-th prime in A112975.

The programs for A112976, there is no canonical definition to state claims against.
-/

/-! ## A112976.P6066476623566901310

`eq[1, A105700(A112975(n+1))]+1`
-/

namespace A112976.P6066476623566901310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A112975 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112976.P6066476623566901310

/-! ## A112976.P9851786406527977274

`eq[1, A001222(A112975(n+2))]+2`
-/

namespace A112976.P9851786406527977274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A112975 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A112976.P9851786406527977274

/-! ## A112976.P4143694528981313569

`A112978(p?[xor(1, n)+1])`
-/

namespace A112976.P4143694528981313569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112978 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A112976.P4143694528981313569

/-! ## A112976.P6942856529377555597

`A112978(p?[n%3+n])`
-/

namespace A112976.P6942856529377555597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112978 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A112976.P6942856529377555597

/-! ## A112976.P7020995045142091195

`A112978(A000040(n+1))`
-/

namespace A112976.P7020995045142091195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112978 (A000040 (n + 1)).toNat

end

end A112976.P7020995045142091195

/-!
# A112977: A112975(A112975(n)).

The programs for A112977, there is no canonical definition to state claims against.
-/

/-! ## A112977.P2426711076159500033

`A112975(A112975(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112977.P2426711076159500033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112975 (A112975 (n + 1)).toNat

end

end A112977.P2426711076159500033

/-! ## A112977.P8079324908827041633

`A112975(-xor(A112975(-xor(n, -1))-1, -1))`
-/

namespace A112977.P8079324908827041633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112975 (-Int.xor (A112975 (-Int.xor (n : ℤ) (-1)).toNat - 1) (-1)).toNat

end

end A112977.P8079324908827041633

/-! ## A112977.P8705387636602645980

`A112975(A112975(n-log2(1/2))-1-log2(1/2))`
-/

namespace A112977.P8705387636602645980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112975 (SequenceMachineLib.roundAway ((A112975 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - 1 : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A112977.P8705387636602645980

/-!
# A112978: Inverse of A112975.

The programs for A112978, there is no canonical definition to state claims against.
-/

/-! ## A112978.P717222264526642300

`A112975(A112979(n+1))`
-/

namespace A112978.P717222264526642300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112975 (A112979 (n + 1)).toNat

end

end A112978.P717222264526642300

/-! ## A112978.P12856780686242474698

`A112979(A112975(-xor(n, -1)))`
-/

namespace A112978.P12856780686242474698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112979 (A112975 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A112978.P12856780686242474698

/-! ## A112978.P10187565250821630442

`A112979(A112975(n-log2(1/2)))`
-/

namespace A112978.P10187565250821630442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112979 (A112975 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A112978.P10187565250821630442

/-!
# A112979: A112978(A112978(n)).

The programs for A112979, there is no canonical definition to state claims against.
-/

/-! ## A112979.P4118863703974373029

`A112978(A112978(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112979.P4118863703974373029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112978 (A112978 (n + 1)).toNat

end

end A112979.P4118863703974373029

/-!
# A112980: a(0) = 0, a(1) = 1; for n>=2: a(n) = a(n-1)^5 + a(n-2)^5.

The programs for A112980, the canonical program `A112980.P1713059441668288340` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112980 has offset 0).

The definition of A112980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^5+a(n-2)^5` (program `A112980.P1713059441668288340`, by `A112980.P1713059441668288340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112980.P1713059441668288340

`a(n-1)^5+a(n-2)^5` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112980

/-- `a(n-1)^5+a(n-2)^5` -/
def P1713059441668288340.Spec : Prop :=
  ∀ n, (P1713059441668288340.a n : ℤ) = A112980 n

theorem P1713059441668288340.correct : P1713059441668288340.Spec := by
  intro n
  simp only [A112980]

end A112980

/-!
# A112981: a(1) = a(2) = a(3) = 1; for n>3: a(n) = a(n-1)^3 + a(n-2)^3 + a(n-3)^3.

The programs for A112981, the canonical program `A112981.P16231094216216444721` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112981 has offset 1).

The definition of A112981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^3+a(n-2)^3+a(n-3)^3` (program `A112981.P16231094216216444721`, by `A112981.P16231094216216444721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112981.P16231094216216444721

`a(n-1)^3+a(n-2)^3+a(n-3)^3` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112981

/-- `a(n-1)^3+a(n-2)^3+a(n-3)^3` -/
def P16231094216216444721.Spec : Prop :=
  ∀ n, (P16231094216216444721.a n : ℤ) = A112981 (n + 1)

theorem P16231094216216444721.correct : P16231094216216444721.Spec := by
  intro n
  simp only [A112981, Nat.add_sub_cancel]

end A112981

/-! ## A112981.P7525158510409115215

`A343497(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A112981.P7525158510409115215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A343497 (a (n - 1)).toNat

end

end A112981.P7525158510409115215

namespace A112981

/-- `A343497(a(n-1))` -/
def P7525158510409115215.Spec : Prop :=
  ∀ n, P7525158510409115215.a n = A112981 (n + 1)

end A112981

/-!
# A112982: a(1) = a(2) = a(3) = a(4) = 1; for n>4: a(n) = a(n-1)^4 + a(n-2)^4 + a(n-3)^4 + a(n-4)^4.

The programs for A112982, there is no canonical definition to state claims against.
-/

/-! ## A112982.P16296668075790311859

`a(n-1)^4+a(n-2)^4+a(n-3)^4+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A112982.P16296668075790311859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) ^ 4 + a (n - 2) ^ 4 + a (n - 3) ^ 4 + a (n - 4)

end

end A112982.P16296668075790311859

/-! ## A112982.P11732391656117633870

`4^a(n-1)+3` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A112982.P11732391656117633870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 4] fun n a =>
  4 ^ a (n - 1) + 3

end

end A112982.P11732391656117633870

/-!
# A112983: a(n) = 2^(n+1) mod n.

The programs for A112983, the canonical program `A112983.P5057447493853888811` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112983 has offset 1).

The definition of A112983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112983.P9323881268793493405

`A015910(n+1)-A082900(n+1)`
-/

namespace A112983.P9323881268793493405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1) - A082900 (n + 1)

end

end A112983.P9323881268793493405

namespace A112983

/-- `A015910(n+1)-A082900(n+1)` -/
def P9323881268793493405.Spec : Prop :=
  ∀ n, P9323881268793493405.a n = A112983 (n + 1)

end A112983

/-! ## A112983.P13782405214193761254

`1-A082494(n+1)+n-A082900(n+1)`
-/

namespace A112983.P13782405214193761254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082494 (n + 1) + (n : ℤ) - A082900 (n + 1)

end

end A112983.P13782405214193761254

namespace A112983

/-- `1-A082494(n+1)+n-A082900(n+1)` -/
def P13782405214193761254.Spec : Prop :=
  ∀ n, P13782405214193761254.a n = A112983 (n + 1)

end A112983

/-! ## A112983.P13890376942845871016

`A191561(n+1)%(n+1)-A082900(n+1)`
-/

namespace A112983.P13890376942845871016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191561 (n + 1)) (n + 1 : ℤ) - A082900 (n + 1)

end

end A112983.P13890376942845871016

namespace A112983

/-- `A191561(n+1)%(n+1)-A082900(n+1)` -/
def P13890376942845871016.Spec : Prop :=
  ∀ n, P13890376942845871016.a n = A112983 (n + 1)

end A112983

/-! ## A112983.P4369675182143843196

`A233442(n+1)%(n+1)-A082900(n+1)`
-/

namespace A112983.P4369675182143843196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233442 (n + 1)) (n + 1 : ℤ) - A082900 (n + 1)

end

end A112983.P4369675182143843196

namespace A112983

/-- `A233442(n+1)%(n+1)-A082900(n+1)` -/
def P4369675182143843196.Spec : Prop :=
  ∀ n, P4369675182143843196.a n = A112983 (n + 1)

end A112983

/-! ## A112983.P5057447493853888811

`A005843(A015910(n+1))%A000027(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112983

/-- `A005843(A015910(n+1))%A000027(n+1)` -/
def P5057447493853888811.Spec : Prop :=
  ∀ n, P5057447493853888811.a n = A112983 (n + 1)

theorem P5057447493853888811.correct : P5057447493853888811.Spec := by
  intro n
  simp only [A112983, Nat.add_sub_cancel]

end A112983

/-! ## A112983.P17563331730687488912

`A053204(n+1)%(n+1)-A082900(n+1)`
-/

namespace A112983.P17563331730687488912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053204 (n + 1)) (n + 1 : ℤ) - A082900 (n + 1)

end

end A112983.P17563331730687488912

namespace A112983

/-- `A053204(n+1)%(n+1)-A082900(n+1)` -/
def P17563331730687488912.Spec : Prop :=
  ∀ n, P17563331730687488912.a n = A112983 (n + 1)

end A112983

/-! ## A112983.P12249692836154937432

`log2(A112985(n+2))`
-/

namespace A112983.P12249692836154937432
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A112985 (n + 2) : ℝ)

end

end A112983.P12249692836154937432

namespace A112983

/-- `log2(A112985(n+2))` -/
def P12249692836154937432.Spec : Prop :=
  ∀ n, P12249692836154937432.a n = (A112983 (n + 1) : ℝ)

end A112983

/-! ## A112983.P14446164646367281196

`val(A112985(n+2), A060236(A026231(n+1)))`
-/

namespace A112983.P14446164646367281196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A112985 (n + 2)).toNat (A060236 (A026231 (n + 1)).toNat).toNat

end

end A112983.P14446164646367281196

namespace A112983

/-- `val(A112985(n+2), A060236(A026231(n+1)))` -/
def P14446164646367281196.Spec : Prop :=
  ∀ n, (P14446164646367281196.a n : ℤ) = A112983 (n + 1)

end A112983

/-! ## A112983.P16165441584798116097

`val(A112985(n+2), ratio[A000079(n)])`
-/

namespace A112983.P16165441584798116097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A112985 (n + 2)).toNat (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A112983.P16165441584798116097

namespace A112983

/-- `val(A112985(n+2), ratio[A000079(n)])` -/
def P16165441584798116097.Spec : Prop :=
  ∀ n, (P16165441584798116097.a n : ℤ) = A112983 (n + 1)

end A112983

/-! ## A112983.P8252113632482758715

`(2^(n+2))%(n+1)`
-/

namespace A112983.P8252113632482758715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2) % (n + 1)

end

end A112983.P8252113632482758715

namespace A112983

/-- `(2^(n+2))%(n+1)` -/
def P8252113632482758715.Spec : Prop :=
  ∀ n, (P8252113632482758715.a n : ℤ) = A112983 (n + 1)

end A112983

/-! ## A112983.P916561974455170183

`abs(A146541(n)%-(n+1))`
-/

namespace A112983.P916561974455170183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A146541 n) (-(n + 1 : ℤ))|

end

end A112983.P916561974455170183

namespace A112983

/-- `abs(A146541(n)%-(n+1))` -/
def P916561974455170183.Spec : Prop :=
  ∀ n, P916561974455170183.a n = A112983 (n + 1)

end A112983

/-! ## A112983.P1758877721664741266

`abs(A122803(n+2)%(n+1))`
-/

namespace A112983.P1758877721664741266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A122803 (n + 2)) (n + 1 : ℤ)|

end

end A112983.P1758877721664741266

namespace A112983

/-- `abs(A122803(n+2)%(n+1))` -/
def P1758877721664741266.Spec : Prop :=
  ∀ n, P1758877721664741266.a n = A112983 (n + 1)

end A112983

/-! ## A112983.P12285823818843143480

`abs(A020707(n)%(1-char[1]+n))`
-/

namespace A112983.P12285823818843143480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A020707 n) (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ))|

end

end A112983.P12285823818843143480

namespace A112983

/-- `abs(A020707(n)%(1-char[1]+n))` -/
def P12285823818843143480.Spec : Prop :=
  ∀ n, P12285823818843143480.a n = A112983 (n + 1)

end A112983

/-! ## A112983.P17418700304934412919

`abs(A000079(n+2)%(Δ[n²]-n))`
-/

namespace A112983.P17418700304934412919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000079 (n + 2)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))|

end

end A112983.P17418700304934412919

namespace A112983

/-- `abs(A000079(n+2)%(Δ[n²]-n))` -/
def P17418700304934412919.Spec : Prop :=
  ∀ n, P17418700304934412919.a n = A112983 (n + 1)

end A112983

/-! ## A112983.P9993695703199083127

`A004526(A000079(n+3)%(2*(n+1)))`
-/

namespace A112983.P9993695703199083127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A000079 (n + 3)) (2 * (n + 1) : ℤ)).toNat

end

end A112983.P9993695703199083127

namespace A112983

/-- `A004526(A000079(n+3)%(2*(n+1)))` -/
def P9993695703199083127.Spec : Prop :=
  ∀ n, P9993695703199083127.a n = A112983 (n + 1)

end A112983

/-! ## A112983.P17659350666147193753

`abs(Δ[4*n*Δ[A000225(n)]]%(n+1))`
-/

namespace A112983.P17659350666147193753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)|

end

end A112983.P17659350666147193753

namespace A112983

/-- `abs(Δ[4*n*Δ[A000225(n)]]%(n+1))` -/
def P17659350666147193753.Spec : Prop :=
  ∀ n, P17659350666147193753.a n = A112983 (n + 1)

end A112983

/-! ## A112983.P6273777974400351580

`val(A112985(n+2), A331985(A003714(3*n+4)))`
-/

namespace A112983.P6273777974400351580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A112985 (n + 2)).toNat (A331985 (A003714 (3 * n + 4)).toNat).toNat

end

end A112983.P6273777974400351580

namespace A112983

/-- `val(A112985(n+2), A331985(A003714(3*n+4)))` -/
def P6273777974400351580.Spec : Prop :=
  ∀ n, (P6273777974400351580.a n : ℤ) = A112983 (n + 1)

end A112983

/-! ## A112983.P15909965328055520248

`A118759(A000079(n+2)%(n+1))`
-/

namespace A112983.P15909965328055520248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A000079 (n + 2)) (n + 1 : ℤ)).toNat

end

end A112983.P15909965328055520248

namespace A112983

/-- `A118759(A000079(n+2)%(n+1))` -/
def P15909965328055520248.Spec : Prop :=
  ∀ n, P15909965328055520248.a n = A112983 (n + 1)

end A112983

/-!
# A112984: Numbers k such that 2^k mod k-1 is odd.

The programs for A112984, the canonical program `A112984.P7561031540095205542` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112984 has offset 1).

The definition of A112984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112984.P7561031540095205542

`lt[A064680(n), A015910(n+1)]+2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112984

/-- `lt[A064680(n), A015910(n+1)]+2` -/
def P7561031540095205542.Spec : Prop :=
  ∀ n, (P7561031540095205542.a n : ℤ) = A112984 (n + 1)

theorem P7561031540095205542.correct : P7561031540095205542.Spec := by
  intro n
  simp only [A112984, Nat.add_sub_cancel]

end A112984

/-! ## A112984.P2208436702055123115

`lt[A215747(n+1), A015910(n+1)]+2`
-/

namespace A112984.P2208436702055123115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A112984.P2208436702055123115

namespace A112984

/-- `lt[A215747(n+1), A015910(n+1)]+2` -/
def P2208436702055123115.Spec : Prop :=
  ∀ n, (P2208436702055123115.a n : ℤ) = A112984 (n + 1)

end A112984

/-! ## A112984.P7321218817094055534

`eq[2, A112985(n)%3]`
-/

namespace A112984.P7321218817094055534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112985 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112984.P7321218817094055534

namespace A112984

/-- `eq[2, A112985(n)%3]` -/
def P7321218817094055534.Spec : Prop :=
  ∀ n, (P7321218817094055534.a n : ℤ) = A112984 (n + 1)

end A112984

/-!
# A112985: 2^(2^n mod n-1).

The programs for A112985, there is no canonical definition to state claims against.
-/

/-! ## A112985.P626500982488995504

`2^(A000079(n)%A002260(A090288(n)))`
-/

namespace A112985.P626500982488995504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (A000079 n) (A002260 (A090288 n).toNat) : ℤ)

end

end A112985.P626500982488995504

/-! ## A112985.P166361705235336756

`A000079(A000079(n)%A002260(A090288(n)))`
-/

namespace A112985.P166361705235336756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (A000079 n) (A002260 (A090288 n).toNat)).toNat

end

end A112985.P166361705235336756

/-!
# A112986: Crossing number of K_{4,n} on the real projective plane.

The programs for A112986, the canonical program `A112986.P7790074939484375266` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112986 has offset 0).

The definition of A112986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112986.P7790074939484375266

`floor(n/3)*(2*n-3)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112986

/-- `floor(n/3)*(2*n-3)` -/
def P7790074939484375266.Spec : Prop :=
  ∀ n, P7790074939484375266.a n = A112986 n

theorem P7790074939484375266.correct : P7790074939484375266.Spec := by
  intro n
  simp only [A112986]

end A112986

/-! ## A112986.P13549066752567404084

`(2*n-3)*(n-n%3)/3`
-/

namespace A112986.P13549066752567404084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) - 3) * ((n : ℤ) - ((n % 3 : ℕ) : ℤ)) : ℚ) / 3

end

end A112986.P13549066752567404084

namespace A112986

/-- `(2*n-3)*(n-n%3)/3` -/
def P13549066752567404084.Spec : Prop :=
  ∀ n, P13549066752567404084.a n = (A112986 n : ℚ)

end A112986

/-! ## A112986.P530018396149155632

`abs((2*n-3)*A002264(n))`
-/

namespace A112986.P530018396149155632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n : ℤ) - 3) * A002264 n|

end

end A112986.P530018396149155632

namespace A112986

/-- `abs((2*n-3)*A002264(n))` -/
def P530018396149155632.Spec : Prop :=
  ∀ n, P530018396149155632.a n = A112986 n

end A112986

/-! ## A112986.P8923713006090358678

`ceil((n-2)/3)*A004275(n)-ceil((n-2)/3)`
-/

namespace A112986.P8923713006090358678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 2 : ℚ) / 3⌉ * A004275 n - ⌈((n : ℤ) - 2 : ℚ) / 3⌉

end

end A112986.P8923713006090358678

namespace A112986

/-- `ceil((n-2)/3)*A004275(n)-ceil((n-2)/3)` -/
def P8923713006090358678.Spec : Prop :=
  ∀ n, P8923713006090358678.a n = A112986 n

end A112986

/-! ## A112986.P17847213964919059981

`A058937(A047228(n+1))`
-/

namespace A112986.P17847213964919059981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058937 (A047228 (n + 1)).toNat

end

end A112986.P17847213964919059981

namespace A112986

/-- `A058937(A047228(n+1))` -/
def P17847213964919059981.Spec : Prop :=
  ∀ n, P17847213964919059981.a n = A112986 n

end A112986

/-! ## A112986.P7230479036631959922

`A001840(A047240(n+1))-A047240(n+1)`
-/

namespace A112986.P7230479036631959922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A047240 (n + 1)).toNat - A047240 (n + 1)

end

end A112986.P7230479036631959922

namespace A112986

/-- `A001840(A047240(n+1))-A047240(n+1)` -/
def P7230479036631959922.Spec : Prop :=
  ∀ n, P7230479036631959922.a n = A112986 n

end A112986

/-! ## A112986.P8897084885225788675

`A174709(2*n+1)+A000567(A152467(2*n))`
-/

namespace A112986.P8897084885225788675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (2 * n + 1) + A000567 (A152467 (2 * n)).toNat

end

end A112986.P8897084885225788675

namespace A112986

/-- `A174709(2*n+1)+A000567(A152467(2*n))` -/
def P8897084885225788675.Spec : Prop :=
  ∀ n, P8897084885225788675.a n = A112986 n

end A112986

/-!
# A112987: a(n) = 2^(2^n mod n) for n > 0; a(0) = 2.

The programs for A112987, the canonical program `A112987.P11133508842565046312` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112987 has offset 0).

The definition of A112987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112987.P1984936347678518878

`a(A033718(A017293(n)))^A015910(n)` with `a(0)=2`
-/

namespace A112987.P1984936347678518878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (A033718 (A017293 n).toNat).toNat ^ (A015910 n : ℤ)

end

end A112987.P1984936347678518878

namespace A112987

/-- `a(A033718(A017293(n)))^A015910(n)` -/
def P1984936347678518878.Spec : Prop :=
  ∀ n, P1984936347678518878.a n = (A112987 n : ℚ)

end A112987

/-! ## A112987.P8062936093027047427

`2^((a(n%-1)^n)%n)` with `a(0)=2`
-/

namespace A112987.P8062936093027047427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 ^ (a (Int.tmod (n : ℤ) (-1)).toNat ^ n % n)

end

end A112987.P8062936093027047427

namespace A112987

/-- `2^((a(n%-1)^n)%n)` -/
def P8062936093027047427.Spec : Prop :=
  ∀ n, (P8062936093027047427.a n : ℤ) = A112987 n

end A112987

/-! ## A112987.P9148847651921348606

`2^(((gcd(3, a(n-1))+1)^n)%n)` with `a(0)=2`
-/

namespace A112987.P9148847651921348606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 ^ ((Nat.gcd 3 (a (n - 1)) + 1) ^ n % n)

end

end A112987.P9148847651921348606

namespace A112987

/-- `2^(((gcd(3, a(n-1))+1)^n)%n)` -/
def P9148847651921348606.Spec : Prop :=
  ∀ n, (P9148847651921348606.a n : ℤ) = A112987 n

end A112987

/-! ## A112987.P2823588568196245848

`2^((gcd(2, 2*a(n-1))^n)%n)` with `a(0)=2`
-/

namespace A112987.P2823588568196245848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 ^ (Nat.gcd 2 (2 * a (n - 1)) ^ n % n)

end

end A112987.P2823588568196245848

namespace A112987

/-- `2^((gcd(2, 2*a(n-1))^n)%n)` -/
def P2823588568196245848.Spec : Prop :=
  ∀ n, (P2823588568196245848.a n : ℤ) = A112987 n

end A112987

/-! ## A112987.P14566066383350374390

`2^((2^n)%(A289207(n)+2))`
-/

namespace A112987.P14566066383350374390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (2 ^ n : ℤ) (A289207 n + 2) : ℤ)

end

end A112987.P14566066383350374390

namespace A112987

/-- `2^((2^n)%(A289207(n)+2))` -/
def P14566066383350374390.Spec : Prop :=
  ∀ n, P14566066383350374390.a n = (A112987 n : ℚ)

end A112987

/-! ## A112987.P11133508842565046312

`A000079(A000079(n)%(abs(1-n)+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A112987

/-- `A000079(A000079(n)%(abs(1-n)+1))` -/
def P11133508842565046312.Spec : Prop :=
  ∀ n, P11133508842565046312.a n = A112987 n

theorem P11133508842565046312.correct : P11133508842565046312.Spec := by
  intro n
  simp only [A112987]

end A112987

/-! ## A112987.P3119691784540272871

`A033718(a(A002265(n+1)))^A015910(n)` with `a(0)=2`
-/

namespace A112987.P3119691784540272871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A033718 (SequenceMachineLib.roundAway (a (A002265 (n + 1)).toNat)).toNat : ℚ) ^ (A015910 n : ℤ)

end

end A112987.P3119691784540272871

namespace A112987

/-- `A033718(a(A002265(n+1)))^A015910(n)` -/
def P3119691784540272871.Spec : Prop :=
  ∀ n, P3119691784540272871.a n = (A112987 n : ℚ)

end A112987

/-!
# A112988: Position of n-th prime in A089088.

The programs for A112988, the canonical program `A112988.P2584169627832420674` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112988 has offset 1).

The definition of A112988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112988.P13041559765709672330

`A120632(n+1)+A057427(n)`
-/

namespace A112988.P13041559765709672330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) + A057427 n

end

end A112988.P13041559765709672330

namespace A112988

/-- `A120632(n+1)+A057427(n)` -/
def P13041559765709672330.Spec : Prop :=
  ∀ n, P13041559765709672330.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P206599366846291251

`A120632(n+1)-A057428(n)`
-/

namespace A112988.P206599366846291251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) - A057428 n

end

end A112988.P206599366846291251

namespace A112988

/-- `A120632(n+1)-A057428(n)` -/
def P206599366846291251.Spec : Prop :=
  ∀ n, P206599366846291251.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P3102041526951223745

`A065897(n+1)+A065475(n+1)`
-/

namespace A112988.P3102041526951223745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) + A065475 (n + 1)

end

end A112988.P3102041526951223745

namespace A112988

/-- `A065897(n+1)+A065475(n+1)` -/
def P3102041526951223745.Spec : Prop :=
  ∀ n, P3102041526951223745.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P8584009497689124943

`A165972(n+1)+A120633(n+1)`
-/

namespace A112988.P8584009497689124943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1) + A120633 (n + 1)

end

end A112988.P8584009497689124943

namespace A112988

/-- `A165972(n+1)+A120633(n+1)` -/
def P8584009497689124943.Spec : Prop :=
  ∀ n, P8584009497689124943.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P12842423211548666476

`A120632(n+1)+and(1, A030101(n))`
-/

namespace A112988.P12842423211548666476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) + Int.land 1 (A030101 n)

end

end A112988.P12842423211548666476

namespace A112988

/-- `A120632(n+1)+and(1, A030101(n))` -/
def P12842423211548666476.Spec : Prop :=
  ∀ n, P12842423211548666476.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P234572992763558611

`A163468(n+1)+n-A000007(n)`
-/

namespace A112988.P234572992763558611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163468 (n + 1) + ((n : ℤ) - A000007 n)

end

end A112988.P234572992763558611

namespace A112988

/-- `A163468(n+1)+n-A000007(n)` -/
def P234572992763558611.Spec : Prop :=
  ∀ n, P234572992763558611.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P12370644463292942673

`A120632(n+1)+1-A036987(2*n)`
-/

namespace A112988.P12370644463292942673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) + 1 - A036987 (2 * n)

end

end A112988.P12370644463292942673

namespace A112988

/-- `A120632(n+1)+1-A036987(2*n)` -/
def P12370644463292942673.Spec : Prop :=
  ∀ n, P12370644463292942673.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P9993713494404019380

`A120632(n+1)+and(1, A000040(n+1))`
-/

namespace A112988.P9993713494404019380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) + Int.land 1 (A000040 (n + 1))

end

end A112988.P9993713494404019380

namespace A112988

/-- `A120632(n+1)+and(1, A000040(n+1))` -/
def P9993713494404019380.Spec : Prop :=
  ∀ n, P9993713494404019380.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P3684680046778359703

`A246514(n+1)+A093515(A005408(n))`
-/

namespace A112988.P3684680046778359703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) + A093515 (A005408 n).toNat

end

end A112988.P3684680046778359703

namespace A112988

/-- `A246514(n+1)+A093515(A005408(n))` -/
def P3684680046778359703.Spec : Prop :=
  ∀ n, P3684680046778359703.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P5574791464870381179

`A120632(n+1)+A110146(A040976(n+1))`
-/

namespace A112988.P5574791464870381179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) + A110146 (A040976 (n + 1)).toNat

end

end A112988.P5574791464870381179

namespace A112988

/-- `A120632(n+1)+A110146(A040976(n+1))` -/
def P5574791464870381179.Spec : Prop :=
  ∀ n, P5574791464870381179.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P14499734269752088464

`A080513(A163300(n+1))+A065897(n+1)`
-/

namespace A112988.P14499734269752088464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A163300 (n + 1)).toNat + A065897 (n + 1)

end

end A112988.P14499734269752088464

namespace A112988

/-- `A080513(A163300(n+1))+A065897(n+1)` -/
def P14499734269752088464.Spec : Prop :=
  ∀ n, P14499734269752088464.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P2584169627832420674

`A006005(n+1)+A077150(A006005(n+1))+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A112988

/-- `A006005(n+1)+A077150(A006005(n+1))+1` -/
def P2584169627832420674.Spec : Prop :=
  ∀ n, P2584169627832420674.a n = A112988 (n + 1)

theorem P2584169627832420674.correct : P2584169627832420674.Spec := by
  intro n
  simp only [A112988, Nat.add_sub_cancel]

end A112988

/-! ## A112988.P357797944240272606

`A065897(n+1)+A001221(A100484(n+1))+n`
-/

namespace A112988.P357797944240272606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) + (A001221 (A100484 (n + 1)).toNat + (n : ℤ))

end

end A112988.P357797944240272606

namespace A112988

/-- `A065897(n+1)+A001221(A100484(n+1))+n` -/
def P357797944240272606.Spec : Prop :=
  ∀ n, P357797944240272606.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P14983912950557960835

`A326178(A120632(n+1))`
-/

namespace A112988.P14983912950557960835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A120632 (n + 1)).toNat

end

end A112988.P14983912950557960835

namespace A112988

/-- `A326178(A120632(n+1))` -/
def P14983912950557960835.Spec : Prop :=
  ∀ n, P14983912950557960835.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P16866515667371535116

`record[A112990(n+2)]`
-/

namespace A112988.P16866515667371535116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112990 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112988.P16866515667371535116

namespace A112988

/-- `record[A112990(n+2)]` -/
def P16866515667371535116.Spec : Prop :=
  ∀ n, P16866515667371535116.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P13167354931456428518

`A112990(Δ[A007504(n)])`
-/

namespace A112988.P13167354931456428518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112990 (f1 (n + 1) - f1 n).toNat

end

end A112988.P13167354931456428518

namespace A112988

/-- `A112990(Δ[A007504(n)])` -/
def P13167354931456428518.Spec : Prop :=
  ∀ n, P13167354931456428518.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P6093872314655320777

`A112990(A000040(n+1))`
-/

namespace A112988.P6093872314655320777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112990 (A000040 (n + 1)).toNat

end

end A112988.P6093872314655320777

namespace A112988

/-- `A112990(A000040(n+1))` -/
def P6093872314655320777.Spec : Prop :=
  ∀ n, P6093872314655320777.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P12341677847955296341

`A112990(A008578(n+2))`
-/

namespace A112988.P12341677847955296341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112990 (A008578 (n + 2)).toNat

end

end A112988.P12341677847955296341

namespace A112988

/-- `A112990(A008578(n+2))` -/
def P12341677847955296341.Spec : Prop :=
  ∀ n, P12341677847955296341.a n = A112988 (n + 1)

end A112988

/-! ## A112988.P5935445417430204557

`A112990(A182986(n+2))`
-/

namespace A112988.P5935445417430204557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112990 (A182986 (n + 2)).toNat

end

end A112988.P5935445417430204557

namespace A112988

/-- `A112990(A182986(n+2))` -/
def P5935445417430204557.Spec : Prop :=
  ∀ n, P5935445417430204557.a n = A112988 (n + 1)

end A112988

/-!
# A112989: Terms in A006899 which are closer to the next term than to the previous one.

The programs for A112989, there is no canonical definition to state claims against.
-/

/-! ## A112989.P16695205018359193698

`A334151(2*n+3)`
-/

namespace A112989.P16695205018359193698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334151 (2 * n + 3)

end

end A112989.P16695205018359193698

/-! ## A112989.P16078491011882377356

`A006899(ceil((n+1)*(4-sqrt(2)))+2)`
-/

namespace A112989.P16078491011882377356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (⌈(n + 1 : ℝ) * (4 - Real.sqrt (2 : ℝ))⌉ + 2).toNat

end

end A112989.P16078491011882377356

/-! ## A112989.P7699078813291194452

`record[A334151(A198954(n)+2)]`
-/

namespace A112989.P7699078813291194452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334151 (A198954 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112989.P7699078813291194452

/-! ## A112989.P12555788023851089256

`record[A334151(Δ[A116942(2*n)])]`
-/

namespace A112989.P12555788023851089256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334151 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112989.P12555788023851089256

/-! ## A112989.P16381822645358997817

`record[A334151(A026251(n+1)+1)]`
-/

namespace A112989.P16381822645358997817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334151 (A026251 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112989.P16381822645358997817

/-!
# A112990: Inverse of A089088.

The programs for A112990, there is no canonical definition to state claims against.
-/

/-! ## A112990.P2671560214244038814

`A137622(n+1)+Δ[A294108(n+1)]`
-/

namespace A112990.P2671560214244038814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137622 (n + 1) + (f1 (n + 1) - f1 n)

end

end A112990.P2671560214244038814

/-! ## A112990.P744310009497601940

`A256628(n+1)+A175337(A256648(n))`
-/

namespace A112990.P744310009497601940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256628 (n + 1) + A175337 (A256648 n).toNat

end

end A112990.P744310009497601940

/-! ## A112990.P14257925995570963603

`A256628(n+1)+A189668(A006086(n+1))`
-/

namespace A112990.P14257925995570963603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256628 (n + 1) + A189668 (A006086 (n + 1)).toNat

end

end A112990.P14257925995570963603

/-! ## A112990.P3560812060591468076

`or(A125005(A037916(2*(n+2))), A256628(n+1))`
-/

namespace A112990.P3560812060591468076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125005 (A037916 (2 * (n + 2))).toNat) (A256628 (n + 1))

end

end A112990.P3560812060591468076

/-! ## A112990.P8006079728909955866

`A256628(n+1)+A000007(A018004(n))`
-/

namespace A112990.P8006079728909955866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256628 (n + 1) + A000007 (A018004 n).toNat

end

end A112990.P8006079728909955866

/-!
# A112991: a(n)=ceiling(2^(mod(2^n,n)+1)/3)-ceiling(2^mod(2^n,n)/3).

The programs for A112991, there is no canonical definition to state claims against.
-/

/-! ## A112991.P10926102760215806265

`round(A112987(n)/3)`
-/

namespace A112991.P10926102760215806265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112987 n : ℚ) / 3)

end

end A112991.P10926102760215806265

/-! ## A112991.P10894268134190339115

`A001045(log2(A112987(n)))`
-/

namespace A112991.P10894268134190339115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.roundAway (Real.logb 2 (A112987 n : ℝ))).toNat

end

end A112991.P10894268134190339115

/-! ## A112991.P18001103479260737172

`A001045(val(A112987(n), 2))`
-/

namespace A112991.P18001103479260737172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.valuation (A112987 n).toNat 2)

end

end A112991.P18001103479260737172

/-! ## A112991.P4675219197980703205

`A133684(log2(A112987(n)²))`
-/

namespace A112991.P4675219197980703205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (SequenceMachineLib.roundAway (Real.logb 2 (A112987 n ^ 2 : ℝ))).toNat

end

end A112991.P4675219197980703205

/-! ## A112991.P4705855975021013287

`A128209(log2(A112987(n)))-1`
-/

namespace A112991.P4705855975021013287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 (SequenceMachineLib.roundAway (Real.logb 2 (A112987 n : ℝ))).toNat - 1

end

end A112991.P4705855975021013287

/-! ## A112991.P16331177953876881480

`A153643(log2(A112987(n)))-2`
-/

namespace A112991.P16331177953876881480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 (SequenceMachineLib.roundAway (Real.logb 2 (A112987 n : ℝ))).toNat - 2

end

end A112991.P16331177953876881480

/-! ## A112991.P13048962781193229099

`A133684(2*log2(A112987(n)))`
-/

namespace A112991.P13048962781193229099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (SequenceMachineLib.roundAway (2 * Real.logb 2 (A112987 n : ℝ))).toNat

end

end A112991.P13048962781193229099

/-! ## A112991.P3557455549411271301

`A014113(log2(A112987(n)))/2`
-/

namespace A112991.P3557455549411271301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014113 (SequenceMachineLib.roundAway (Real.logb 2 (A112987 n : ℝ))).toNat : ℚ) / 2

end

end A112991.P3557455549411271301

/-! ## A112991.P5618352748646695938

`A001045(A000079(n)%A233583(n+1))`
-/

namespace A112991.P5618352748646695938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Int.tmod (A000079 n) (A233583 (n + 1))).toNat

end

end A112991.P5618352748646695938

/-! ## A112991.P12282244097484456710

`A001045(A100314(n)%A233583(n+1))`
-/

namespace A112991.P12282244097484456710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Int.tmod (A100314 n) (A233583 (n + 1))).toNat

end

end A112991.P12282244097484456710

/-!
# A112993: Exclusionary cubes: cubes of the terms in A112994.

The programs for A112993, there is no canonical definition to state claims against.
-/

/-! ## A112993.P15486124310417820178

`A112994(n+1)^3`
-/

namespace A112993.P15486124310417820178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112994 (n + 1) ^ 3

end

end A112993.P15486124310417820178

/-! ## A112993.P5518222273572687420

`A000578(A112994(n+1))`
-/

namespace A112993.P5518222273572687420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A112994 (n + 1)).toNat

end

end A112993.P5518222273572687420

/-! ## A112993.P16533758315141136960

`record[A137564(A029785(n+1))^3]`
-/

namespace A112993.P16533758315141136960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A029785 (n + 1)).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112993.P16533758315141136960

/-! ## A112993.P15595502658581694209

`record[A137564(root(A029786(n+1), 3))^3]`
-/

namespace A112993.P15595502658581694209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (SequenceMachineLib.roundAway ((A029786 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112993.P15595502658581694209

/-! ## A112993.P14495595213280853663

`record[A320486(root(A029786(n+1), 3))^3]`
-/

namespace A112993.P14495595213280853663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (SequenceMachineLib.roundAway ((A029786 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112993.P14495595213280853663

/-!
# A112994: Numbers whose cubes are exclusionary: numbers k such that k has no repeated digits and k and k^3 have no digits in common.

The programs for A112994, there is no canonical definition to state claims against.
-/

/-! ## A112994.P15415107535096044546

`root(A112993(n+1), 3)`
-/

namespace A112994.P15415107535096044546
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A112993 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A112994.P15415107535096044546

/-! ## A112994.P4878850931095816378

`record[A137564(A029785(n+1))]`
-/

namespace A112994.P4878850931095816378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A029785 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112994.P4878850931095816378

/-! ## A112994.P8925740655404148856

`filter[A029785(n+1), A178788(#)]`
-/

namespace A112994.P8925740655404148856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A112994.P8925740655404148856

/-! ## A112994.P12770709281157928040

`record[A137564(root(A029786(n+1), 3))]`
-/

namespace A112994.P12770709281157928040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (SequenceMachineLib.roundAway ((A029786 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112994.P12770709281157928040

/-! ## A112994.P15108838606210490892

`record[A320486(root(A029786(n+1), 3))]`
-/

namespace A112994.P15108838606210490892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (SequenceMachineLib.roundAway ((A029786 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112994.P15108838606210490892

/-!
# A112995: Triangular array T(n,k)=number of partitions of n in which the least part is <=k, for 1<=k<=n, n>=1.

The programs for A112995, there is no canonical definition to state claims against.
-/

/-! ## A112995.P12382746118752299979

`∑[A026794(n+1)*A123110(n)]`
-/

namespace A112995.P12382746118752299979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1) * A123110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112995.P12382746118752299979

/-! ## A112995.P999082204246351209

`∑[A026794(n+1)%A075117(n)]`
-/

namespace A112995.P999082204246351209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026794 (n + 1)) (A075117 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112995.P999082204246351209

/-! ## A112995.P1497817458750591113

`∑[C(A026794(n+1), A210765(n+1))]`
-/

namespace A112995.P1497817458750591113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026794 (n + 1)).toNat (A210765 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112995.P1497817458750591113

/-! ## A112995.P14293880004198586590

`∑[A026794(n+1)*A267813(A005843(n))]`
-/

namespace A112995.P14293880004198586590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1) * A267813 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112995.P14293880004198586590

/-! ## A112995.P9797402727407811060

`∑[A026794(n+1)*A057427(A238342(n))]`
-/

namespace A112995.P9797402727407811060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1) * A057427 (A238342 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112995.P9797402727407811060

/-! ## A112995.P6466097782635034254

`∑[A026794(n+1)*A057427(A244657(n+1))]`
-/

namespace A112995.P6466097782635034254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1) * A057427 (A244657 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112995.P6466097782635034254

/-! ## A112995.P7618689716046585374

`∑[A026794(n+1)*A057427(A244925(n+1))]`
-/

namespace A112995.P7618689716046585374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1) * A057427 (A244925 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112995.P7618689716046585374

/-!
# A112996: A table distributing the values 1 2 5 14 43 144 523 2048 38486 182905 ... A047970 based on row sums of subtables counting permutations of partitions.

The programs for A112996, there is no canonical definition to state claims against.
-/

/-! ## A112996.P6841331742526515126

`A006054(A283666(n+4))+A001222(2^A179745(n+1))`
-/

namespace A112996.P6841331742526515126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (A283666 (n + 4)).toNat + A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A179745 (n + 1) : ℤ))).toNat

end

end A112996.P6841331742526515126

/-! ## A112996.P18207670263997405777

`A179745((n+1)*A278657(n))+A006054(A283666(n+4))`
-/

namespace A112996.P18207670263997405777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179745 ((n + 1 : ℤ) * A278657 n).toNat + A006054 (A283666 (n + 4)).toNat

end

end A112996.P18207670263997405777

/-!
# A112997: Sum of first n primes minus sum of their indices.

The programs for A112997, the canonical program `A112997.P3713856926934514710` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112997 has offset 1).

The definition of A112997 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112997.P3713856926934514710

`A007504(n+1)-(n+1)*(n+2)/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A112997

/-- `A007504(n+1)-(n+1)*(n+2)/2` -/
def P3713856926934514710.Spec : Prop :=
  ∀ n, P3713856926934514710.a n = (A112997 (n + 1) : ℚ)

end A112997

/-! ## A112997.P17319994244787129622

`∑[A014689(n+1)]`
-/

namespace A112997.P17319994244787129622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P17319994244787129622

namespace A112997

/-- `∑[A014689(n+1)]` -/
def P17319994244787129622.Spec : Prop :=
  ∀ n, P17319994244787129622.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P2113086516140268491

`∑[∑[A075526(n)]-n]`
-/

namespace A112997.P2113086516140268491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P2113086516140268491

namespace A112997

/-- `∑[∑[A075526(n)]-n]` -/
def P2113086516140268491.Spec : Prop :=
  ∀ n, P2113086516140268491.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P47634870844057299

`∑[A065890(n+1)+1]`
-/

namespace A112997.P47634870844057299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P47634870844057299

namespace A112997

/-- `∑[A065890(n+1)+1]` -/
def P47634870844057299.Spec : Prop :=
  ∀ n, P47634870844057299.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P18230654420468394983

`∑[A014692(n+1)-1]`
-/

namespace A112997.P18230654420468394983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P18230654420468394983

namespace A112997

/-- `∑[A014692(n+1)-1]` -/
def P18230654420468394983.Spec : Prop :=
  ∀ n, P18230654420468394983.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P4306510715674112675

`A108754(n+1)+∑[n]`
-/

namespace A112997.P4306510715674112675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A112997.P4306510715674112675

namespace A112997

/-- `A108754(n+1)+∑[n]` -/
def P4306510715674112675.Spec : Prop :=
  ∀ n, P4306510715674112675.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P14218695003287036618

`∑[A131733(n+1)+n]`
-/

namespace A112997.P14218695003287036618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P14218695003287036618

namespace A112997

/-- `∑[A131733(n+1)+n]` -/
def P14218695003287036618.Spec : Prop :=
  ∀ n, P14218695003287036618.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P15707137607273000307

`∑[A006093(n+1)-n]`
-/

namespace A112997.P15707137607273000307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P15707137607273000307

namespace A112997

/-- `∑[A006093(n+1)-n]` -/
def P15707137607273000307.Spec : Prop :=
  ∀ n, P15707137607273000307.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P1300454851877447027

`A101301(n+1)-∑[n]`
-/

namespace A112997.P1300454851877447027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A112997.P1300454851877447027

namespace A112997

/-- `A101301(n+1)-∑[n]` -/
def P1300454851877447027.Spec : Prop :=
  ∀ n, P1300454851877447027.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P8410462772951962370

`∑[∑[A054541(n+1)-1]]`
-/

namespace A112997.P8410462772951962370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P8410462772951962370

namespace A112997

/-- `∑[∑[A054541(n+1)-1]]` -/
def P8410462772951962370.Spec : Prop :=
  ∀ n, P8410462772951962370.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P16144258265438893159

`∑[∑[A230847(n+1)-2]]`
-/

namespace A112997.P16144258265438893159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P16144258265438893159

namespace A112997

/-- `∑[∑[A230847(n+1)-2]]` -/
def P16144258265438893159.Spec : Prop :=
  ∀ n, P16144258265438893159.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P17825513745318320397

`∑[sqrt(A005722(n+1))-n]`
-/

namespace A112997.P17825513745318320397
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ) - (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P17825513745318320397

namespace A112997

/-- `∑[sqrt(A005722(n+1))-n]` -/
def P17825513745318320397.Spec : Prop :=
  ∀ n, P17825513745318320397.a n = (A112997 (n + 1) : ℝ)

end A112997

/-! ## A112997.P2413789472373384310

`A135267(n+1)+∑[n+1]`
-/

namespace A112997.P2413789472373384310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135267 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A112997.P2413789472373384310

namespace A112997

/-- `A135267(n+1)+∑[n+1]` -/
def P2413789472373384310.Spec : Prop :=
  ∀ n, P2413789472373384310.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P5854082469890810450

`∑[A000040(n+1)-(n+1)]`
-/

namespace A112997.P5854082469890810450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P5854082469890810450

namespace A112997

/-- `∑[A000040(n+1)-(n+1)]` -/
def P5854082469890810450.Spec : Prop :=
  ∀ n, P5854082469890810450.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P8132349434817128420

`∑[A040976(n+1)+1-n]`
-/

namespace A112997.P8132349434817128420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P8132349434817128420

namespace A112997

/-- `∑[A040976(n+1)+1-n]` -/
def P8132349434817128420.Spec : Prop :=
  ∀ n, P8132349434817128420.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P6601944894324832283

`∑[A173072(n+1)+n-1]`
-/

namespace A112997.P6601944894324832283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P6601944894324832283

namespace A112997

/-- `∑[A173072(n+1)+n-1]` -/
def P6601944894324832283.Spec : Prop :=
  ∀ n, P6601944894324832283.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P13275391197675807770

`∑[A008864(n+1)-(n+2)]`
-/

namespace A112997.P13275391197675807770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P13275391197675807770

namespace A112997

/-- `∑[A008864(n+1)-(n+2)]` -/
def P13275391197675807770.Spec : Prop :=
  ∀ n, P13275391197675807770.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P5862760292928693201

`∑[A095116(n+1)]-(n+1)²`
-/

namespace A112997.P5862760292928693201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A112997.P5862760292928693201

namespace A112997

/-- `∑[A095116(n+1)]-(n+1)²` -/
def P5862760292928693201.Spec : Prop :=
  ∀ n, P5862760292928693201.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P17226000706103102346

`∑[A000040(2*n-(n-1))-1-n]`
-/

namespace A112997.P17226000706103102346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P17226000706103102346

namespace A112997

/-- `∑[A000040(2*n-(n-1))-1-n]` -/
def P17226000706103102346.Spec : Prop :=
  ∀ n, P17226000706103102346.a n = A112997 (n + 1)

end A112997

/-! ## A112997.P10797465724332352724

`A000040(C(n+1, n))+a(n-1)-(n+1)` with `a(0)=1`
-/

namespace A112997.P10797465724332352724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Nat.choose (n + 1) n) + (a (n - 1) - (n + 1 : ℤ))

end

end A112997.P10797465724332352724

namespace A112997

/-- `A000040(C(n+1, n))+a(n-1)-(n+1)` -/
def P10797465724332352724.Spec : Prop :=
  ∀ n, P10797465724332352724.a n = A112997 (n + 1)

end A112997

/-!
# A112998: Numbers n such that n, n+1 and n+2 are 1,2,3-almost primes.

The programs for A112998, there is no canonical definition to state claims against.
-/

/-! ## A112998.P11487925888028424519

`12*A186696(n+1)+1`
-/

namespace A112998.P11487925888028424519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A186696 (n + 1) + 1

end

end A112998.P11487925888028424519

/-! ## A112998.P11042381897451695578

`∩[A005383(n+1), A129928(n+1)]`
-/

namespace A112998.P11042381897451695578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P11042381897451695578

/-! ## A112998.P18181390194022412091

`∩[A048968(n+1), A129928(n+1)]`
-/

namespace A112998.P18181390194022412091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P18181390194022412091

/-! ## A112998.P18080347201715889099

`∩[A057920(n+1), A129928(n+1)]`
-/

namespace A112998.P18080347201715889099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P18080347201715889099

/-! ## A112998.P15599523965161747334

`∩[A064519(n+1), A129928(n+1)]`
-/

namespace A112998.P15599523965161747334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P15599523965161747334

/-! ## A112998.P10853080051566784450

`∩[A079147(n+1), A129928(n+1)]`
-/

namespace A112998.P10853080051566784450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P10853080051566784450

/-! ## A112998.P18076835412529465737

`∩[A079149(n+1), A129928(n+1)]`
-/

namespace A112998.P18076835412529465737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P18076835412529465737

/-! ## A112998.P13906855286269698650

`∩[A129928(n+1), A137815(n+1)]`
-/

namespace A112998.P13906855286269698650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P13906855286269698650

/-! ## A112998.P9458067252681302346

`∩[A129928(n+1), A164977(n+1)]`
-/

namespace A112998.P9458067252681302346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P9458067252681302346

/-! ## A112998.P3411954466432154759

`∩[A129928(n+1), A167609(n+1)]`
-/

namespace A112998.P3411954466432154759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P3411954466432154759

/-! ## A112998.P14962024824863796491

`∩[A129928(n+1), A171262(n+1)]`
-/

namespace A112998.P14962024824863796491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P14962024824863796491

/-! ## A112998.P15061881238467428353

`∩[A129928(n+1), A192577(n+1)]`
-/

namespace A112998.P15061881238467428353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P15061881238467428353

/-! ## A112998.P1848770366795469564

`∩[A129928(n+1), A265396(n+1)]`
-/

namespace A112998.P1848770366795469564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P1848770366795469564

/-! ## A112998.P8714003835315292613

`∩[A129928(n+1), A348659(n+1)]`
-/

namespace A112998.P8714003835315292613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P8714003835315292613

/-! ## A112998.P15605960810322446548

`∩[A129928(n+1), A350593(n+1)]`
-/

namespace A112998.P15605960810322446548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P15605960810322446548

/-! ## A112998.P3457057665724694828

`p?[A342258(n+1)-1]`
-/

namespace A112998.P3457057665724694828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342258 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112998.P3457057665724694828

/-! ## A112998.P7032116035148447370

`∩[A005383(n+1), A063641(n+1)]`
-/

namespace A112998.P7032116035148447370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P7032116035148447370

/-! ## A112998.P7315045679954363022

`∩[A048968(n+1), A063641(n+1)]`
-/

namespace A112998.P7315045679954363022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P7315045679954363022

/-! ## A112998.P5642112183754715768

`∩[A057920(n+1), A063641(n+1)]`
-/

namespace A112998.P5642112183754715768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P5642112183754715768

/-! ## A112998.P1294412295586527603

`∩[A063641(n+1), A064519(n+1)]`
-/

namespace A112998.P1294412295586527603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112998.P1294412295586527603

/-!
# A112999: Partial sums of A036740.

The programs for A112999, there is no canonical definition to state claims against.
-/

/-! ## A112999.P15497407272295951300

`∑[(n+1)!^(n+1)]`
-/

namespace A112999.P15497407272295951300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112999.P15497407272295951300

/-! ## A112999.P10187453908643238064

`∑[∏[n+1]^(n+1)]`
-/

namespace A112999.P10187453908643238064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112999.P10187453908643238064

/-! ## A112999.P13011890196963215023

`Δ[abs(∑[∑[n!^n]]-n)]`
-/

namespace A112999.P13011890196963215023
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112999.P13011890196963215023

/-! ## A112999.P11348965334438117859

`a(n-1)+(n+1)!^(n+1)` with `a(0)=1`
-/

namespace A112999.P11348965334438117859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.factorial (n + 1) ^ (n + 1)

end

end A112999.P11348965334438117859

/-! ## A112999.P10731238785284461311

`a(n-1)+∏[n+1]^(n+1)` with `a(0)=1`
-/

namespace A112999.P10731238785284461311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∏ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A112999.P10731238785284461311

