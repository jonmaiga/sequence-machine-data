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
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
# A345800: Numbers that are the sum of nine cubes in exactly eight ways.

The programs for A345800, there is no canonical definition to state claims against.
-/

/-! ## A345800.P10599998681533855632

`eq[8, A025462(n)]`
-/

namespace A345800.P10599998681533855632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345800.P10599998681533855632

/-!
# A345801: Numbers that are the sum of nine cubes in exactly nine ways.

The programs for A345801, there is no canonical definition to state claims against.
-/

/-! ## A345801.P12272136020828008559

`eq[9, A025462(n)]`
-/

namespace A345801.P12272136020828008559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345801.P12272136020828008559

/-!
# A345802: Numbers that are the sum of nine cubes in exactly ten ways.

The programs for A345802, there is no canonical definition to state claims against.
-/

/-! ## A345802.P7447794343417092664

`eq[10, A025462(n)]`
-/

namespace A345802.P7447794343417092664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345802.P7447794343417092664

/-!
# A345803: Numbers that are the sum of ten cubes in exactly one ways.

The programs for A345803, there is no canonical definition to state claims against.
-/

/-! ## A345803.P5600538633571132968

`eq[1, A025463(n)]`
-/

namespace A345803.P5600538633571132968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345803.P5600538633571132968

/-! ## A345803.P6910387798548768207

`lt[A005131(A025463(n)²), 1]`
-/

namespace A345803.P6910387798548768207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A025463 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345803.P6910387798548768207

/-! ## A345803.P9590827054866711728

`lt[A097851(A025463(n)²), 1]`
-/

namespace A345803.P9590827054866711728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097851 (A025463 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345803.P9590827054866711728

/-! ## A345803.P4390283894340010492

`lt[A000032(A025463(n)²), 2]`
-/

namespace A345803.P4390283894340010492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A025463 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345803.P4390283894340010492

/-! ## A345803.P470178174232538712

`lt[A006370(A025463(n)+1), 2]`
-/

namespace A345803.P470178174232538712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A025463 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345803.P470178174232538712

/-! ## A345803.P778078870541228599

`eq[A025453(n)+1, A025454(n)]`
-/

namespace A345803.P778078870541228599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345803.P778078870541228599

/-! ## A345803.P18342970182561355866

`lt[A002942((A025463(n)+9)²), 10]`
-/

namespace A345803.P18342970182561355866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 ((A025463 n + 9) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345803.P18342970182561355866

/-! ## A345803.P1232248678729685950

`lt[(1-A025463(n))², A057427(n)]`
-/

namespace A345803.P1232248678729685950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025463 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345803.P1232248678729685950

/-! ## A345803.P17245409385393889104

`lt[A000040(A025463(n)+1)%3, 1]`
-/

namespace A345803.P17245409385393889104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A025463 n + 1).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345803.P17245409385393889104

/-! ## A345803.P13981228560748122962

`lt[(A025463(n)*A057428(n)+1)², 1]`
-/

namespace A345803.P13981228560748122962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025463 n * A057428 n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345803.P13981228560748122962

/-! ## A345803.P16656043830219837005

`eq[A020725(A025453(n)), A025454(n)]`
-/

namespace A345803.P16656043830219837005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A025453 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345803.P16656043830219837005

/-! ## A345803.P17377780733831377472

`lt[A000007(n), A025464(A025463(n))]`
-/

namespace A345803.P17377780733831377472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 (A025463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345803.P17377780733831377472

/-! ## A345803.P18185914136409634744

`lt[A000038(n), A025464(A025463(n))]`
-/

namespace A345803.P18185914136409634744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 (A025463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345803.P18185914136409634744

/-! ## A345803.P10293066035148979968

`lt[A005131(A025463(n)), A057427(n)]`
-/

namespace A345803.P10293066035148979968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A025463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345803.P10293066035148979968

/-! ## A345803.P10431636831949272476

`eq[A025454(n)-A025453(n), A141044(n)]`
-/

namespace A345803.P10431636831949272476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n - A025453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345803.P10431636831949272476

/-! ## A345803.P4649515771610798710

`A000720(p?[A008578(n+1)*A025463(n)])`
-/

namespace A345803.P4649515771610798710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A025463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A345803.P4649515771610798710

/-! ## A345803.P17301892563979374239

`A058933(p?[A008578(n+1)*A025463(n)])`
-/

namespace A345803.P17301892563979374239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A025463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A345803.P17301892563979374239

/-! ## A345803.P14145414792510618151

`A230980(p?[A008578(n+1)*A025463(n)])`
-/

namespace A345803.P14145414792510618151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A025463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A345803.P14145414792510618151

/-! ## A345803.P17958082323731731206

`record[A003333(n+1)/A025463(A003333(n+1))]`
-/

namespace A345803.P17958082323731731206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003333 (n + 1) : ℚ) / (A025463 (A003333 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345803.P17958082323731731206

/-!
# A345804: Numbers that are the sum of ten cubes in exactly two ways.

The programs for A345804, there is no canonical definition to state claims against.
-/

/-! ## A345804.P4508687747453005136

`eq[2, A025463(n)]`
-/

namespace A345804.P4508687747453005136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345804.P4508687747453005136

/-! ## A345804.P11158818753229531586

`eq[A025453(n)+2, A025454(n)]`
-/

namespace A345804.P11158818753229531586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345804.P11158818753229531586

/-! ## A345804.P14374993546892985632

`lt[(2-A025463(n))², A057427(n)]`
-/

namespace A345804.P14374993546892985632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A025463 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345804.P14374993546892985632

/-! ## A345804.P13248565958782730594

`eq[A025454(n), A030545(A025453(n))]`
-/

namespace A345804.P13248565958782730594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 (A025453 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345804.P13248565958782730594

/-! ## A345804.P9773467915265969673

`lt[A000007(n), A025455(A025463(n))]`
-/

namespace A345804.P9773467915265969673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A025463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345804.P9773467915265969673

/-! ## A345804.P7931741545134521359

`lt[A000038(n), A025455(A025463(n))]`
-/

namespace A345804.P7931741545134521359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A025463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345804.P7931741545134521359

/-!
# A345805: Numbers that are the sum of ten cubes in exactly three ways.

The programs for A345805, there is no canonical definition to state claims against.
-/

/-! ## A345805.P14997531708623749170

`eq[3, A025463(n)]`
-/

namespace A345805.P14997531708623749170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345805.P14997531708623749170

/-!
# A345806: Numbers that are the sum of ten cubes in exactly four ways.

The programs for A345806, there is no canonical definition to state claims against.
-/

/-! ## A345806.P16527490571164607108

`eq[4, A025463(n)]`
-/

namespace A345806.P16527490571164607108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345806.P16527490571164607108

/-! ## A345806.P5029987509650350229

`A345552(lt[A007310(n+5), A358889(2*n+3)])`
-/

namespace A345806.P5029987509650350229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358889 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345552 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345806.P5029987509650350229

/-! ## A345806.P12961850113450888151

`A345552(A093641(n+1)%A076193(n+1))`
-/

namespace A345806.P12961850113450888151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345552 (Int.tmod (A093641 (n + 1)) (A076193 (n + 1))).toNat

end

end A345806.P12961850113450888151

/-! ## A345806.P6720661636111114313

`A345552(∑[A288972(n)!])`
-/

namespace A345806.P6720661636111114313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A288972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345552 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345806.P6720661636111114313

/-! ## A345806.P10483363061480042361

`A345552(A093641(n+1))%(A336679(n+1)^((A078547(n+1)+1)/2))`
-/

namespace A345806.P10483363061480042361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345552 (A093641 (n + 1)).toNat) (SequenceMachineLib.roundAway ((A336679 (n + 1) : ℝ) ^ ((A078547 (n + 1) + 1 : ℚ) / 2 : ℝ)))

end

end A345806.P10483363061480042361

/-!
# A345807: Numbers that are the sum of ten cubes in exactly five ways.

The programs for A345807, there is no canonical definition to state claims against.
-/

/-! ## A345807.P12173766198112135462

`eq[5, A025463(n)]`
-/

namespace A345807.P12173766198112135462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345807.P12173766198112135462

/-!
# A345808: Numbers that are the sum of ten cubes in exactly six ways.

The programs for A345808, there is no canonical definition to state claims against.
-/

/-! ## A345808.P16652752142439023370

`eq[6, A025463(n)]`
-/

namespace A345808.P16652752142439023370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345808.P16652752142439023370

/-! ## A345808.P15122972951374549296

`A345554(eq[A051223(n+1), A209436(n+1)])`
-/

namespace A345808.P15122972951374549296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345554 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A345808.P15122972951374549296

/-!
# A345809: Numbers that are the sum of ten cubes in exactly seven ways.

The programs for A345809, there is no canonical definition to state claims against.
-/

/-! ## A345809.P6785663819486764519

`eq[7, A025463(n)]`
-/

namespace A345809.P6785663819486764519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345809.P6785663819486764519

/-! ## A345809.P18401099386505162786

`A345555(n+1)+A184955(n)%A345483(n+1)`
-/

namespace A345809.P18401099386505162786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345555 (n + 1) + Int.tmod (A184955 n) (A345483 (n + 1))

end

end A345809.P18401099386505162786

/-! ## A345809.P5392887365364685763

`A345555(n+1)+A184955(A222251(n))`
-/

namespace A345809.P5392887365364685763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345555 (n + 1) + A184955 (A222251 n).toNat

end

end A345809.P5392887365364685763

/-!
# A345810: Numbers that are the sum of ten cubes in exactly eight ways.

The programs for A345810, there is no canonical definition to state claims against.
-/

/-! ## A345810.P8386553230190832632

`eq[8, A025463(n)]`
-/

namespace A345810.P8386553230190832632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345810.P8386553230190832632

/-! ## A345810.P5526797972393217494

`A345556(A232868(n+1)%A188776(n+5))`
-/

namespace A345810.P5526797972393217494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345556 (Int.tmod (A232868 (n + 1)) (A188776 (n + 5))).toNat

end

end A345810.P5526797972393217494

/-!
# A345811: Numbers that are the sum of ten cubes in exactly nine ways.

The programs for A345811, there is no canonical definition to state claims against.
-/

/-! ## A345811.P16520810477643908955

`eq[9, A025463(n)]`
-/

namespace A345811.P16520810477643908955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345811.P16520810477643908955

/-! ## A345811.P6765175705140180450

`lt[A330319(n+1), A045503(A025463(n))]`
-/

namespace A345811.P6765175705140180450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 (A025463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345811.P6765175705140180450

/-! ## A345811.P14022570186208743344

`lt[A336668(n+1), A045512(A025463(n))]`
-/

namespace A345811.P14022570186208743344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A025463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345811.P14022570186208743344

/-! ## A345811.P9707715316761559295

`lt[A226190(n+1), A086066(A025463(n))]`
-/

namespace A345811.P9707715316761559295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A025463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345811.P9707715316761559295

/-! ## A345811.P16057298973871315097

`A345557(A051037(n+1)%A201648(n+1))`
-/

namespace A345811.P16057298973871315097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345557 (Int.tmod (A051037 (n + 1)) (A201648 (n + 1))).toNat

end

end A345811.P16057298973871315097

/-!
# A345812: Numbers that are the sum of ten cubes in exactly ten ways.

The programs for A345812, there is no canonical definition to state claims against.
-/

/-! ## A345812.P15367583639250000473

`eq[10, A025463(n)]`
-/

namespace A345812.P15367583639250000473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345812.P15367583639250000473

/-! ## A345812.P15787610858535979930

`lt[A000007(n), A025463(A025463(n))]`
-/

namespace A345812.P15787610858535979930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 (A025463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345812.P15787610858535979930

/-! ## A345812.P9175219849383091990

`A345558(A036537(n+1)%A115931(n+1))`
-/

namespace A345812.P9175219849383091990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345558 (Int.tmod (A036537 (n + 1)) (A115931 (n + 1))).toNat

end

end A345812.P9175219849383091990

/-!
# A345816: Numbers that are the sum of six fourth powers in exactly four ways.

The programs for A345816, there is no canonical definition to state claims against.
-/

/-! ## A345816.P9566716494576285567

`A345561(lt[A103859(n+5), A000118(n)])`
-/

namespace A345816.P9566716494576285567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103859 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345561 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345816.P9566716494576285567

/-!
# A345817: Numbers that are the sum of six fourth powers in exactly five ways.

The programs for A345817, there is no canonical definition to state claims against.
-/

/-! ## A345817.P7074629483592817417

`A345562(A138302(n+1))%A345562(A232281(n+2))`
-/

namespace A345817.P7074629483592817417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345562 (A138302 (n + 1)).toNat) (A345562 (A232281 (n + 2)).toNat)

end

end A345817.P7074629483592817417

/-! ## A345817.P4272450464876927616

`record[A345562(n+1)%A345563(A146676(n+1))]`
-/

namespace A345817.P4272450464876927616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345562 (n + 1)) (A345563 (A146676 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345817.P4272450464876927616

/-! ## A345817.P4905407841421258095

`A345562(record[gcd(n, A028240(2*n))])`
-/

namespace A345817.P4905407841421258095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A028240 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A345817.P4905407841421258095

/-! ## A345817.P13792013802361673972

`record[A345562(A374996(3*n+4))]`
-/

namespace A345817.P13792013802361673972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345562 (A374996 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345817.P13792013802361673972

/-!
# A345818: Numbers that are the sum of six fourth powers in exactly six ways.

The programs for A345818, there is no canonical definition to state claims against.
-/

/-! ## A345818.P12328354606446653994

`record[A345563(n+2)-A028240(3*n+4)]`
-/

namespace A345818.P12328354606446653994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345563 (n + 2) - A028240 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345818.P12328354606446653994

/-! ## A345818.P4645820651850380408

`A345563(A309432(n)+A032555(n+1))`
-/

namespace A345818.P4645820651850380408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345563 (A309432 n + A032555 (n + 1)).toNat

end

end A345818.P4645820651850380408

/-! ## A345818.P2880875925324255521

`A345563(A309432(n)+A032559(n+1))`
-/

namespace A345818.P2880875925324255521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345563 (A309432 n + A032559 (n + 1)).toNat

end

end A345818.P2880875925324255521

/-!
# A345819: Numbers that are the sum of six fourth powers in exactly seven ways.

The programs for A345819, there is no canonical definition to state claims against.
-/

/-! ## A345819.P7422180030761161444

`A345564(lt[A167591(3*n+2), A002450(n+1)])`
-/

namespace A345819.P7422180030761161444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167591 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345564 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345819.P7422180030761161444

/-! ## A345819.P6496001884099916142

`A345564((A032555(n+1)-n)*A325367(n+1))`
-/

namespace A345819.P6496001884099916142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345564 ((A032555 (n + 1) - (n : ℤ)) * A325367 (n + 1)).toNat

end

end A345819.P6496001884099916142

/-! ## A345819.P9917063999719240287

`A345564(A325367(n+1))%A344943(A032555(n+1))`
-/

namespace A345819.P9917063999719240287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345564 (A325367 (n + 1)).toNat) (A344943 (A032555 (n + 1)).toNat)

end

end A345819.P9917063999719240287

/-! ## A345819.P2672526473141869474

`A345564(A325367(n+1)^A146676(n+1))`
-/

namespace A345819.P2672526473141869474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345564 (SequenceMachineLib.roundAway ((A325367 (n + 1) : ℚ) ^ (A146676 (n + 1) : ℤ))).toNat

end

end A345819.P2672526473141869474

/-!
# A345820: Numbers that are the sum of six fourth powers in exactly eight ways.

The programs for A345820, there is no canonical definition to state claims against.
-/

/-! ## A345820.P13779487983606404292

`A345565(record[(n-1)%(A160486(2*n+5)+1)]+2)`
-/

namespace A345820.P13779487983606404292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (A160486 (2 * n + 5) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A345820.P13779487983606404292

/-! ## A345820.P7734279615960025050

`A345565(A325678((n+1)²+1))`
-/

namespace A345820.P7734279615960025050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345565 (A325678 ((n + 1) ^ 2 + 1)).toNat

end

end A345820.P7734279615960025050

/-! ## A345820.P8018320824742145387

`record[gcd(A251742(n), A345565(n+1))]`
-/

namespace A345820.P8018320824742145387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251742 n) (A345565 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345820.P8018320824742145387

/-!
# A345821: Numbers that are the sum of six fourth powers in exactly nine ways.

The programs for A345821, there is no canonical definition to state claims against.
-/

/-! ## A345821.P8860499774700478540

`A345566(C(A341057(n+2), A339353(2*n+1)))`
-/

namespace A345821.P8860499774700478540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345566 (Nat.choose (A341057 (n + 2)).toNat (A339353 (2 * n + 1)).toNat)

end

end A345821.P8860499774700478540

/-!
# A345822: Numbers that are the sum of six fourth powers in exactly ten ways.

The programs for A345822, there is no canonical definition to state claims against.
-/

/-! ## A345822.P389410170933808725

`A345567(A033948(n+1)%A223472(n+1))`
-/

namespace A345822.P389410170933808725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345567 (Int.tmod (A033948 (n + 1)) (A223472 (n + 1))).toNat

end

end A345822.P389410170933808725

/-! ## A345822.P8424318473533507930

`A345567(A033948(n+1))%A344196(A033948(3*n+2))`
-/

namespace A345822.P8424318473533507930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345567 (A033948 (n + 1)).toNat) (A344196 (A033948 (3 * n + 2)).toNat)

end

end A345822.P8424318473533507930

/-! ## A345822.P5726448693370268500

`A345567(lt[A350504(n), A151708(n)])`
-/

namespace A345822.P5726448693370268500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345567 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345822.P5726448693370268500

/-! ## A345822.P11208868091860117871

`A345567(A033948(n+1)^A223475(n+1))`
-/

namespace A345822.P11208868091860117871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345567 (SequenceMachineLib.roundAway ((A033948 (n + 1) : ℚ) ^ (A223475 (n + 1) : ℤ))).toNat

end

end A345822.P11208868091860117871

/-!
# A345826: Numbers that are the sum of seven fourth powers in exactly four ways.

The programs for A345826, there is no canonical definition to state claims against.
-/

/-! ## A345826.P75344685812611825

`A345570(lt[A005897(n), A287639(n+1)])`
-/

namespace A345826.P75344685812611825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345570 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345826.P75344685812611825

/-! ## A345826.P7827820951892747421

`A345570(lt[A266755(n), A046471(n+1)]+1)`
-/

namespace A345826.P7827820951892747421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345570 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A345826.P7827820951892747421

/-! ## A345826.P17313487707197543863

`A345570(record[A341021(n)])`
-/

namespace A345826.P17313487707197543863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341021 (n + 20)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345570 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A345826.P17313487707197543863

/-! ## A345826.P2745898073487068879

`A345570(A348810(n)+A007095(n+1))`
-/

namespace A345826.P2745898073487068879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345570 (A348810 n + A007095 (n + 1)).toNat

end

end A345826.P2745898073487068879

/-!
# A345827: Numbers that are the sum of seven fourth powers in exactly five ways.

The programs for A345827, there is no canonical definition to state claims against.
-/

/-! ## A345827.P13171311938722969739

`A345571(A046100(n+1)%A076681(n+1))`
-/

namespace A345827.P13171311938722969739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345571 (Int.tmod (A046100 (n + 1)) (A076681 (n + 1))).toNat

end

end A345827.P13171311938722969739

/-! ## A345827.P9185509775625265919

`A345571(A187829(n+1)%A077168(n+4))`
-/

namespace A345827.P9185509775625265919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345571 (Int.tmod (A187829 (n + 1)) (A077168 (n + 4))).toNat

end

end A345827.P9185509775625265919

/-! ## A345827.P15604059589883721233

`A345571(and(A046100(n+1), A211997(2*(n+2))))`
-/

namespace A345827.P15604059589883721233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345571 (Int.land (A046100 (n + 1)) (A211997 (2 * (n + 2)))).toNat

end

end A345827.P15604059589883721233

/-!
# A345828: Numbers that are the sum of seven fourth powers in exactly six ways.

The programs for A345828, there is no canonical definition to state claims against.
-/

/-! ## A345828.P14371232453269742625

`record[A345572(n+1)/A146285(n+1)]`
-/

namespace A345828.P14371232453269742625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345572 (n + 1) : ℚ) / (A146285 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345828.P14371232453269742625

/-! ## A345828.P6753239225069118424

`A345572(lt[A091737(n), A008000(n)])`
-/

namespace A345828.P6753239225069118424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345572 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345828.P6753239225069118424

/-! ## A345828.P2023191787705800116

`A345572(lt[A091737(n), A159053(n+1)])`
-/

namespace A345828.P2023191787705800116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345572 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345828.P2023191787705800116

/-! ## A345828.P2641265842543400743

`A345572(lt[A365228(n+1), A005897(n)])`
-/

namespace A345828.P2641265842543400743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345572 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345828.P2641265842543400743

/-! ## A345828.P290877981140867880

`A345572(lt[A056371(n+1), A263896(n+1)])`
-/

namespace A345828.P290877981140867880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345572 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345828.P290877981140867880

/-!
# A345830: Numbers that are the sum of seven fourth powers in exactly eight ways.

The programs for A345830, there is no canonical definition to state claims against.
-/

/-! ## A345830.P13843453811669996972

`A345574(lt[A076633(n+1), A005032(n)])`
-/

namespace A345830.P13843453811669996972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345830.P13843453811669996972

/-!
# A345831: Numbers that are the sum of seven fourth powers in exactly nine ways.

The programs for A345831, there is no canonical definition to state claims against.
-/

/-! ## A345831.P16834360454312486732

`A345575(∑[A108998(n)!])`
-/

namespace A345831.P16834360454312486732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A108998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345575 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345831.P16834360454312486732

/-! ## A345831.P4995673145897183812

`A345575(A108319(n+1)%A135825(n))`
-/

namespace A345831.P4995673145897183812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345575 (Int.tmod (A108319 (n + 1)) (A135825 n)).toNat

end

end A345831.P4995673145897183812

/-!
# A345832: Numbers that are the sum of seven fourth powers in exactly ten ways.

The programs for A345832, there is no canonical definition to state claims against.
-/

/-! ## A345832.P7732696924292762870

`A345576(eq[1, A005447(n)]+1)`
-/

namespace A345832.P7732696924292762870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A345832.P7732696924292762870

/-! ## A345832.P7999721886899473400

`record[A345576(n+1)^A156601(n)]`
-/

namespace A345832.P7999721886899473400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345576 (n + 1) : ℚ) ^ (A156601 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345832.P7999721886899473400

/-!
# A345836: Numbers that are the sum of eight fourth powers in exactly four ways.

The programs for A345836, there is no canonical definition to state claims against.
-/

/-! ## A345836.P2972610744646942367

`A345579(A034709(n+1)%A211139(n+1))`
-/

namespace A345836.P2972610744646942367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345579 (Int.tmod (A034709 (n + 1)) (A211139 (n + 1))).toNat

end

end A345836.P2972610744646942367

/-! ## A345836.P419079004007874238

`A345579(∑[(A307768(2*(n+2))%A102627(n+1))!])`
-/

namespace A345836.P419079004007874238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A307768 (2 * (n + 2))) (A102627 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345579 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345836.P419079004007874238

/-!
# A345837: Numbers that are the sum of eight fourth powers in exactly five ways.

The programs for A345837, there is no canonical definition to state claims against.
-/

/-! ## A345837.P8935422678178334017

`A345580(A064223(n+1)%A345650(2*(n+1)))`
-/

namespace A345837.P8935422678178334017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345580 (Int.tmod (A064223 (n + 1)) (A345650 (2 * (n + 1)))).toNat

end

end A345837.P8935422678178334017

/-! ## A345837.P12516273564213148368

`A345580(∪[A187829(2*(n+2)), A032555(n+1)])`
-/

namespace A345837.P12516273564213148368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345580 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A345837.P12516273564213148368

/-! ## A345837.P11880528249490359922

`A345580(∪[A187829(2*(n+2)), A032559(n+1)])`
-/

namespace A345837.P11880528249490359922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345580 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A345837.P11880528249490359922

/-!
# A345838: Numbers that are the sum of eight fourth powers in exactly six ways.

The programs for A345838, there is no canonical definition to state claims against.
-/

/-! ## A345838.P15839788664121287608

`A345581(A328161(n+1)%A134587(n+1))`
-/

namespace A345838.P15839788664121287608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345581 (Int.tmod (A328161 (n + 1)) (A134587 (n + 1))).toNat

end

end A345838.P15839788664121287608

/-! ## A345838.P3807348132184005431

`A345581(∑[A185234(n)!])`
-/

namespace A345838.P3807348132184005431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185234 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345838.P3807348132184005431

/-! ## A345838.P4485337007074093561

`record[gcd(A307891(n+1), A345581(n+1))]`
-/

namespace A345838.P4485337007074093561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307891 (n + 1)) (A345581 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345838.P4485337007074093561

/-! ## A345838.P16372746354128075316

`A345581(A309049(n)+A032551(n+1))`
-/

namespace A345838.P16372746354128075316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345581 (A309049 n + A032551 (n + 1)).toNat

end

end A345838.P16372746354128075316

/-!
# A345839: Numbers that are the sum of eight fourth powers in exactly seven ways.

The programs for A345839, there is no canonical definition to state claims against.
-/

/-! ## A345839.P7273781870468472346

`A345582(A295020(n+1)^A351086(n))`
-/

namespace A345839.P7273781870468472346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345582 (SequenceMachineLib.roundAway ((A295020 (n + 1) : ℚ) ^ (A351086 n : ℤ))).toNat

end

end A345839.P7273781870468472346

/-! ## A345839.P4446124457097419962

`A345582(C(A295020(n+1), A351086(n)))`
-/

namespace A345839.P4446124457097419962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345582 (Nat.choose (A295020 (n + 1)).toNat (A351086 n).toNat)

end

end A345839.P4446124457097419962

/-!
# A345840: Numbers that are the sum of eight fourth powers in exactly eight ways.

The programs for A345840, there is no canonical definition to state claims against.
-/

/-! ## A345840.P4750932352398887636

`A345583(A284509(n+1)%A061978(2*n+5))`
-/

namespace A345840.P4750932352398887636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345583 (Int.tmod (A284509 (n + 1)) (A061978 (2 * n + 5))).toNat

end

end A345840.P4750932352398887636

/-! ## A345840.P9520584111190300956

`A345583(lt[A304716(2*(n+1)), A089032(n+1)])`
-/

namespace A345840.P9520584111190300956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304716 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345583 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345840.P9520584111190300956

/-!
# A345841: Numbers that are the sum of eight fourth powers in exactly nine ways.

The programs for A345841, there is no canonical definition to state claims against.
-/

/-! ## A345841.P12892237614732256284

`A345584(A225229(n+1)^A146234(n+1))`
-/

namespace A345841.P12892237614732256284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345584 (SequenceMachineLib.roundAway ((A225229 (n + 1) : ℚ) ^ (A146234 (n + 1) : ℤ))).toNat

end

end A345841.P12892237614732256284

/-! ## A345841.P11711093156438885373

`A345584(A225229(n+1)^A146792(n+1))`
-/

namespace A345841.P11711093156438885373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345584 (SequenceMachineLib.roundAway ((A225229 (n + 1) : ℚ) ^ (A146792 (n + 1) : ℤ))).toNat

end

end A345841.P11711093156438885373

/-!
# A345842: Numbers that are the sum of eight fourth powers in exactly ten ways.

The programs for A345842, there is no canonical definition to state claims against.
-/

/-! ## A345842.P12306457450772337041

`A345585(lt[A104345(n), A006530(n+1)])`
-/

namespace A345842.P12306457450772337041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345585 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345842.P12306457450772337041

/-! ## A345842.P3081232178249658813

`A345585(A208982(n+1))%A170993(2*n+5)`
-/

namespace A345842.P3081232178249658813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345585 (A208982 (n + 1)).toNat) (A170993 (2 * n + 5))

end

end A345842.P3081232178249658813

/-! ## A345842.P2731847224008099234

`A345585(record[∑[A321899(3*n+1)]])`
-/

namespace A345842.P2731847224008099234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321899 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A345842.P2731847224008099234

/-! ## A345842.P3437839708016373415

`A345585(A018321(n+1))%A120609(3*(n+1))`
-/

namespace A345842.P3437839708016373415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345585 (A018321 (n + 1)).toNat) (A120609 (3 * (n + 1)))

end

end A345842.P3437839708016373415

/-!
# A345846: Numbers that are the sum of nine fourth powers in exactly four ways.

The programs for A345846, there is no canonical definition to state claims against.
-/

/-! ## A345846.P16688788386201962208

`A345588(A020753(n+1))`
-/

namespace A345846.P16688788386201962208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345588 (A020753 (n + 1)).toNat

end

end A345846.P16688788386201962208

/-! ## A345846.P7776487488022996438

`A345588(∑[A124778(n)^A134273(n+1)])`
-/

namespace A345846.P7776487488022996438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124778 n : ℚ) ^ (A134273 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345588 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345846.P7776487488022996438

/-! ## A345846.P9599458014478875836

`A345588(∑[A124778(2*n+1)])`
-/

namespace A345846.P9599458014478875836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345846.P9599458014478875836

/-! ## A345846.P4515355021984258630

`record[A345588(n+1)%A345589(A134273(n+1))]`
-/

namespace A345846.P4515355021984258630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345588 (n + 1)) (A345589 (A134273 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345846.P4515355021984258630

/-!
# A345847: Numbers that are the sum of nine fourth powers in exactly five ways.

The programs for A345847, there is no canonical definition to state claims against.
-/

/-! ## A345847.P13985418613254593340

`A345589(or(A032555(n+1), A067631(n+2)))`
-/

namespace A345847.P13985418613254593340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345589 (Int.lor (A032555 (n + 1)) (A067631 (n + 2))).toNat

end

end A345847.P13985418613254593340

/-! ## A345847.P399955769028157753

`A345589(or(A032559(n+1), A067631(n+2)))`
-/

namespace A345847.P399955769028157753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345589 (Int.lor (A032559 (n + 1)) (A067631 (n + 2))).toNat

end

end A345847.P399955769028157753

/-! ## A345847.P12999678646519043117

`A345589(or(A067631(n+2), A077739(n+1)))`
-/

namespace A345847.P12999678646519043117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345589 (Int.lor (A067631 (n + 2)) (A077739 (n + 1))).toNat

end

end A345847.P12999678646519043117

/-! ## A345847.P5757668012065782469

`A345589(or(A067631(n+2), A078213(n+1)))`
-/

namespace A345847.P5757668012065782469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345589 (Int.lor (A067631 (n + 2)) (A078213 (n + 1))).toNat

end

end A345847.P5757668012065782469

/-! ## A345847.P2893982987080782247

`A345589(or(A067631(n+2), A082217(n+1)))`
-/

namespace A345847.P2893982987080782247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345589 (Int.lor (A067631 (n + 2)) (A082217 (n + 1))).toNat

end

end A345847.P2893982987080782247

/-!
# A345848: Numbers that are the sum of nine fourth powers in exactly six ways.

The programs for A345848, there is no canonical definition to state claims against.
-/

/-! ## A345848.P12872128088231406035

`A345590(lt[A051908(2*n+1), A030604(n)])`
-/

namespace A345848.P12872128088231406035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051908 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345590 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345848.P12872128088231406035

/-! ## A345848.P9088055809394134238

`record[A345590(n+1)-A005872(A262795(n+1))]`
-/

namespace A345848.P9088055809394134238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345590 (n + 1) - A005872 (A262795 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345848.P9088055809394134238

/-!
# A345849: Numbers that are the sum of nine fourth powers in exactly seven ways.

The programs for A345849, there is no canonical definition to state claims against.
-/

/-! ## A345849.P4109162169354504912

`A345591(A352826(n+1)^A325813(n+1))`
-/

namespace A345849.P4109162169354504912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345591 (SequenceMachineLib.roundAway ((A352826 (n + 1) : ℚ) ^ (A325813 (n + 1) : ℤ))).toNat

end

end A345849.P4109162169354504912

/-!
# A345850: Numbers that are the sum of nine fourth powers in exactly eight ways.

The programs for A345850, there is no canonical definition to state claims against.
-/

/-! ## A345850.P7316410418626292230

`A345592(record[A265330(n+2)])`
-/

namespace A345850.P7316410418626292230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265330 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345592 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A345850.P7316410418626292230

/-! ## A345850.P14852671711441057181

`A345592(∑[A108998(n)!])`
-/

namespace A345850.P14852671711441057181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A108998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345592 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345850.P14852671711441057181

/-! ## A345850.P14314856539787612545

`A345592(∑[A099927(n)^A287197(n)])`
-/

namespace A345850.P14314856539787612545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099927 n : ℚ) ^ (A287197 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345592 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345850.P14314856539787612545

/-!
# A345851: Numbers that are the sum of nine fourth powers in exactly nine ways.

The programs for A345851, there is no canonical definition to state claims against.
-/

/-! ## A345851.P16805413588399448588

`A345593(lt[A102573(2*n+5), A361775(n)])`
-/

namespace A345851.P16805413588399448588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102573 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345593 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345851.P16805413588399448588

/-! ## A345851.P14694573904245316779

`A345593(A245794(n)!*A065475(n+1))`
-/

namespace A345851.P14694573904245316779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345593 ((Nat.factorial (A245794 n).toNat : ℤ) * A065475 (n + 1)).toNat

end

end A345851.P14694573904245316779

/-! ## A345851.P16193938578432865511

`A345593(A065475(n+1)/A245794(n)!)`
-/

namespace A345851.P16193938578432865511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345593 (SequenceMachineLib.roundAway ((A065475 (n + 1) : ℚ) / (Nat.factorial (A245794 n).toNat : ℚ))).toNat

end

end A345851.P16193938578432865511

/-! ## A345851.P18257958017438610332

`A345593(A065475(n+1)^A186746(n)!)`
-/

namespace A345851.P18257958017438610332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345593 (A065475 (n + 1) ^ Nat.factorial (A186746 n).toNat).toNat

end

end A345851.P18257958017438610332

/-! ## A345851.P11422934047793235603

`A345593(A065475(n+1)^A245794(n)!)`
-/

namespace A345851.P11422934047793235603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345593 (A065475 (n + 1) ^ Nat.factorial (A245794 n).toNat).toNat

end

end A345851.P11422934047793235603

/-!
# A345852: Numbers that are the sum of nine fourth powers in exactly ten ways.

The programs for A345852, there is no canonical definition to state claims against.
-/

/-! ## A345852.P1024535632594239789

`A345594(lt[A360068(3*n+4), A183126(n)])`
-/

namespace A345852.P1024535632594239789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345594 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345852.P1024535632594239789

/-!
# A345856: Numbers that are the sum of ten fourth powers in exactly four ways.

The programs for A345856, there is no canonical definition to state claims against.
-/

/-! ## A345856.P10541137643553060433

`A345597(A020753(n+1))`
-/

namespace A345856.P10541137643553060433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345597 (A020753 (n + 1)).toNat

end

end A345856.P10541137643553060433

/-! ## A345856.P13323754470244290019

`A345597(∑[A124778(n)^A134273(n+1)])`
-/

namespace A345856.P13323754470244290019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124778 n : ℚ) ^ (A134273 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345597 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345856.P13323754470244290019

/-! ## A345856.P9244170395538712564

`A345597(∑[A124778(2*n+1)])`
-/

namespace A345856.P9244170395538712564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345597 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345856.P9244170395538712564

/-! ## A345856.P8057296803330052213

`record[A345597(n+1)%A345570(A134273(n+1))]`
-/

namespace A345856.P8057296803330052213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345597 (n + 1)) (A345570 (A134273 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345856.P8057296803330052213

/-!
# A345857: Numbers that are the sum of ten fourth powers in exactly five ways.

The programs for A345857, there is no canonical definition to state claims against.
-/

/-! ## A345857.P14324888424021956187

`A345598(A000037(n+1)-A124778(3*n))`
-/

namespace A345857.P14324888424021956187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345598 (A000037 (n + 1) - A124778 (3 * n)).toNat

end

end A345857.P14324888424021956187

/-! ## A345857.P17919681716027082731

`A345598(A289105(n+1)%A006435(n+1))`
-/

namespace A345857.P17919681716027082731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345598 (Int.tmod (A289105 (n + 1)) (A006435 (n + 1))).toNat

end

end A345857.P17919681716027082731

/-!
# A345858: Numbers that are the sum of ten fourth powers in exactly six ways.

The programs for A345858, there is no canonical definition to state claims against.
-/

/-! ## A345858.P5478379911304222383

`A345599(∑[A156045(A036040(n+1))])`
-/

namespace A345858.P5478379911304222383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156045 (A036040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345599 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345858.P5478379911304222383

/-! ## A345858.P10769265507085376043

`A345599(A004709(n+1)%A059610(2*n+3))`
-/

namespace A345858.P10769265507085376043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345599 (Int.tmod (A004709 (n + 1)) (A059610 (2 * n + 3))).toNat

end

end A345858.P10769265507085376043

/-! ## A345858.P6214308450988374198

`A345599(A020660(n+1)%A053346(n+1))`
-/

namespace A345858.P6214308450988374198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345599 (Int.tmod (A020660 (n + 1)) (A053346 (n + 1))).toNat

end

end A345858.P6214308450988374198

/-!
# A345861: Numbers that are the sum of ten fourth powers in exactly nine ways.

The programs for A345861, there is no canonical definition to state claims against.
-/

/-! ## A345861.P4972051741344853821

`record[A345602(A304689((n+1)²))]`
-/

namespace A345861.P4972051741344853821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345602 (A304689 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345861.P4972051741344853821

/-! ## A345861.P3878592543592149064

`A345602(∑[A054547(n+1)!])`
-/

namespace A345861.P3878592543592149064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A054547 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345602 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345861.P3878592543592149064

/-!
# A345862: Numbers that are the sum of ten fourth powers in exactly ten ways.

The programs for A345862, there is no canonical definition to state claims against.
-/

/-! ## A345862.P7842559642236984661

`record[A345603(Δ[A026455(n+1)])]`
-/

namespace A345862.P7842559642236984661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345603 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345862.P7842559642236984661

/-! ## A345862.P7971796760816960247

`record[gcd(A251742(n), A345603(n+1))]`
-/

namespace A345862.P7971796760816960247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251742 n) (A345603 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345862.P7971796760816960247

/-!
# A345863: Numbers that are the sum of five fifth powers in five or more ways.

The programs for A345863, there is no canonical definition to state claims against.
-/

/-! ## A345863.P11009890835761501930

`A346257(∏{p}[n+1, #]^∑{p}[n+1, ceil(n/#)])`
-/

namespace A345863.P11009890835761501930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346257 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉ : ℤ))).toNat

end

end A345863.P11009890835761501930

/-!
# A345867: Total number of 0's in the binary expansions of the first n primes.

The programs for A345867, the canonical program `A345867.P3810117440269639629` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345867 has offset 1).

The definition of A345867 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095375, A328659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345867.P3810117440269639629

`A328659(n+1)-A095375(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345867

/-- `A328659(n+1)-A095375(n+1)` -/
def P3810117440269639629.Spec : Prop :=
  ∀ n, P3810117440269639629.a n = A345867 (n + 1)

theorem P3810117440269639629.correct : P3810117440269639629.Spec := by
  intro n
  simp only [A345867, Nat.add_sub_cancel]

end A345867

/-! ## A345867.P1544400621235796239

`∑[A035103(n+1)]`
-/

namespace A345867.P1544400621235796239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P1544400621235796239

namespace A345867

/-- `∑[A035103(n+1)]` -/
def P1544400621235796239.Spec : Prop :=
  ∀ n, P1544400621235796239.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P13958047207956169255

`∑[A102566(n+1)-1]`
-/

namespace A345867.P13958047207956169255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102566 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P13958047207956169255

namespace A345867

/-- `∑[A102566(n+1)-1]` -/
def P13958047207956169255.Spec : Prop :=
  ∀ n, P13958047207956169255.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P629072999340880343

`∑[A000120(A159006(n+1)/2)]`
-/

namespace A345867.P629072999340880343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A159006 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P629072999340880343

namespace A345867

/-- `∑[A000120(A159006(n+1)/2)]` -/
def P629072999340880343.Spec : Prop :=
  ∀ n, P629072999340880343.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P606088581724546274

`∑[A023416(A102781(n+1))]`
-/

namespace A345867.P606088581724546274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A102781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P606088581724546274

namespace A345867

/-- `∑[A023416(A102781(n+1))]` -/
def P606088581724546274.Spec : Prop :=
  ∀ n, P606088581724546274.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P5737536608649413551

`∑[A000120(A159006(n+1))]`
-/

namespace A345867.P5737536608649413551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A159006 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P5737536608649413551

namespace A345867

/-- `∑[A000120(A159006(n+1))]` -/
def P5737536608649413551.Spec : Prop :=
  ∀ n, P5737536608649413551.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P13321885026331574805

`∑[A023416(A000040(n+1))]`
-/

namespace A345867.P13321885026331574805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P13321885026331574805

namespace A345867

/-- `∑[A023416(A000040(n+1))]` -/
def P13321885026331574805.Spec : Prop :=
  ∀ n, P13321885026331574805.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P9925149064098510841

`∑[A023416(A008578(n+2))]`
-/

namespace A345867.P9925149064098510841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P9925149064098510841

namespace A345867

/-- `∑[A023416(A008578(n+2))]` -/
def P9925149064098510841.Spec : Prop :=
  ∀ n, P9925149064098510841.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P14955097739571376986

`∑[A023416(record[A014963(n+2)])]`
-/

namespace A345867.P14955097739571376986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P14955097739571376986

namespace A345867

/-- `∑[A023416(record[A014963(n+2)])]` -/
def P14955097739571376986.Spec : Prop :=
  ∀ n, P14955097739571376986.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P5787050196567616863

`∑[A080791(record[A006530(n+2)])]`
-/

namespace A345867.P5787050196567616863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P5787050196567616863

namespace A345867

/-- `∑[A080791(record[A006530(n+2)])]` -/
def P5787050196567616863.Spec : Prop :=
  ∀ n, P5787050196567616863.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P15803931457214220189

`∑[A080791(record[A014963(n+2)])]`
-/

namespace A345867.P15803931457214220189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P15803931457214220189

namespace A345867

/-- `∑[A080791(record[A014963(n+2)])]` -/
def P15803931457214220189.Spec : Prop :=
  ∀ n, P15803931457214220189.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P9923455213910933090

`∑[A080791(A040976(n+1)+2)]`
-/

namespace A345867.P9923455213910933090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A040976 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P9923455213910933090

namespace A345867

/-- `∑[A080791(A040976(n+1)+2)]` -/
def P9923455213910933090.Spec : Prop :=
  ∀ n, P9923455213910933090.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P18050781433304154175

`∑[A080791(record[A000010(n+1)+1])]`
-/

namespace A345867.P18050781433304154175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P18050781433304154175

namespace A345867

/-- `∑[A080791(record[A000010(n+1)+1])]` -/
def P18050781433304154175.Spec : Prop :=
  ∀ n, P18050781433304154175.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P12946290407974369745

`∑[A023416(record[A001414(2*n+1)])]`
-/

namespace A345867.P12946290407974369745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P12946290407974369745

namespace A345867

/-- `∑[A023416(record[A001414(2*n+1)])]` -/
def P12946290407974369745.Spec : Prop :=
  ∀ n, P12946290407974369745.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P1402097169331774210

`∑[A080791(eq[2, A000005(n+1)]+1)]`
-/

namespace A345867.P1402097169331774210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P1402097169331774210

namespace A345867

/-- `∑[A080791(eq[2, A000005(n+1)]+1)]` -/
def P1402097169331774210.Spec : Prop :=
  ∀ n, P1402097169331774210.a n = A345867 (n + 1)

end A345867

/-! ## A345867.P11822750106800705831

`∑[A023416(A072055(n+1))]`
-/

namespace A345867.P11822750106800705831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A072055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P11822750106800705831

namespace A345867

/-- `∑[A023416(A072055(n+1))]` -/
def P11822750106800705831.Spec : Prop :=
  ∀ n, P11822750106800705831.a n = A345867 (n + 1)

end A345867

/-!
# A345870: Expansion of e.g.f. Product_{k>=1} ((1 + x^k)/(1 - x^k))^(1/k!).

The programs for A345870, there is no canonical definition to state claims against.
-/

/-! ## A345870.P3933348261606294275

`A028310(A136580(n+1)-A028234(2*n+5))`
-/

namespace A345870.P3933348261606294275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A136580 (n + 1) - A028234 (2 * n + 5)).toNat

end

end A345870.P3933348261606294275

/-!
# A345871: Expansion of e.g.f. Product_{k>=1} ((1 + x^k)/(1 - x^k))^(1/(2*k!)).

The programs for A345871, there is no canonical definition to state claims against.
-/

/-! ## A345871.P188745987558015630

`A262868(A273988(n+2)+1)`
-/

namespace A345871.P188745987558015630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (A273988 (n + 2) + 1).toNat

end

end A345871.P188745987558015630

/-! ## A345871.P851679540127724811

`A124757(n)+A090552(A011782(n))`
-/

namespace A345871.P851679540127724811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 n + A090552 (A011782 n).toNat

end

end A345871.P851679540127724811

/-! ## A345871.P11795441562071148128

`A328507(n)+A085856(A328509(n))`
-/

namespace A345871.P11795441562071148128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328507 n + A085856 (A328509 n).toNat

end

end A345871.P11795441562071148128

/-!
# A345874: a(n) is the number of distinct pairs of positive integers (u, v) such that A065157(u, v) = n.

The programs for A345874, there is no canonical definition to state claims against.
-/

/-! ## A345874.P3612781552532609911

`A227568(A001511(n+1)*A001511(A167321(n+1)))`
-/

namespace A345874.P3612781552532609911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A001511 (n + 1) * A001511 (A167321 (n + 1)).toNat).toNat

end

end A345874.P3612781552532609911

/-! ## A345874.P4685766373782368210

`A083399(n+1)+A005091(A000045(n+1))`
-/

namespace A345874.P4685766373782368210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) + A005091 (A000045 (n + 1)).toNat

end

end A345874.P4685766373782368210

/-! ## A345874.P4697106828316001502

`A094235(A034444(n+1))+A005091(A000045(n+1))`
-/

namespace A345874.P4697106828316001502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094235 (A034444 (n + 1)).toNat + A005091 (A000045 (n + 1)).toNat

end

end A345874.P4697106828316001502

/-! ## A345874.P16289149394150194207

`A031278(A004136(n+1))-A305052(n+1)`
-/

namespace A345874.P16289149394150194207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031278 (A004136 (n + 1)).toNat - A305052 (n + 1)

end

end A345874.P16289149394150194207

/-! ## A345874.P285285389706807497

`A036450(A400831(n+1))`
-/

namespace A345874.P285285389706807497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (A400831 (n + 1)).toNat

end

end A345874.P285285389706807497

/-!
# A345876: a(n) = Sum_{k=0..n} binomial(2*n, n-k) * k^n.

The programs for A345876, the canonical program `A345876.P11502421910300347281` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345876 has offset 0).

The definition of A345876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n, n-#)*#^n]` (program `A345876.P11502421910300347281`, by `A345876.P11502421910300347281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A345876.P11502421910300347281

`∑{#}[n, C(2*n, n-#)*#^n]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A345876

/-- `∑{#}[n, C(2*n, n-#)*#^n]` -/
def P11502421910300347281.Spec : Prop :=
  ∀ n, (P11502421910300347281.a n : ℤ) = A345876 n

theorem P11502421910300347281.correct : P11502421910300347281.Spec := by
  intro n
  simp only [A345876]

end A345876

/-! ## A345876.P13907733523939752390

`A028310(n)*A028310(A118792(n))`
-/

namespace A345876.P13907733523939752390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A028310 (A118792 n).toNat

end

end A345876.P13907733523939752390

namespace A345876

/-- `A028310(n)*A028310(A118792(n))` -/
def P13907733523939752390.Spec : Prop :=
  ∀ n, P13907733523939752390.a n = A345876 n

end A345876

/-!
# A345877: a(1) = 1, a(n) = a(n-1)/2 if a(n-1) is even, otherwise a(n) = n - a(n-1).

The programs for A345877, the canonical program `A345877.P10141757346312010755` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345877 has offset 1).

The definition of A345877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345877.P10141757346312010755

`A211161(∑[n]-a(n-1)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A345877

/-- `A211161(∑[n]-a(n-1)+1)` -/
def P10141757346312010755.Spec : Prop :=
  ∀ n, P10141757346312010755.a n = A345877 (n + 1)

theorem P10141757346312010755.correct : P10141757346312010755.Spec := by
  intro n
  simp only [A345877, Nat.add_sub_cancel]

end A345877

/-! ## A345877.P11774664639878143607

`A228125(C(A182402(n+2), A196879(n)))`
-/

namespace A345877.P11774664639878143607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228125 (Nat.choose (A182402 (n + 2)).toNat (A196879 n).toNat)

end

end A345877.P11774664639878143607

namespace A345877

/-- `A228125(C(A182402(n+2), A196879(n)))` -/
def P11774664639878143607.Spec : Prop :=
  ∀ n, P11774664639878143607.a n = A345877 (n + 1)

end A345877

/-!
# A345878: G.f. A(x) satisfies: A(x) = x / exp(2 * Sum_{k>=1} A(x^k) / k).

The programs for A345878, there is no canonical definition to state claims against.
-/

/-! ## A345878.P3897883019475545448

`A023193(A005053(n))*A033999(n)`
-/

namespace A345878.P3897883019475545448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A005053 n).toNat * A033999 n

end

end A345878.P3897883019475545448

/-! ## A345878.P8785358440850480437

`A014271(A292125(n+1))*A014275(n)`
-/

namespace A345878.P8785358440850480437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014271 (A292125 (n + 1)).toNat * A014275 n

end

end A345878.P8785358440850480437

/-!
# A345882: Number of numbers expressible as b(1)*b(2)*...*b(n) with 1 <= b(i) <= i for each i.

The programs for A345882, there is no canonical definition to state claims against.
-/

/-! ## A345882.P16072323384295342942

`A347685(n)+a(n-1)` with `a(0)=1`
-/

namespace A345882.P16072323384295342942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A347685 n + a (n - 1)

end

end A345882.P16072323384295342942

/-! ## A345882.P284650835573201983

`∑[A347685(round(sqrt(n²+1)))]`
-/

namespace A345882.P284650835573201983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347685 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345882.P284650835573201983

/-! ## A345882.P18408200044580669199

`∑[A347685(n+1)]+1-A347685(n+1)`
-/

namespace A345882.P18408200044580669199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A347685 (n + 1))

end

end A345882.P18408200044580669199

/-! ## A345882.P6792576088788933433

`∏[n+1]-A347686(n+1)`
-/

namespace A345882.P6792576088788933433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A347686 (n + 1)

end

end A345882.P6792576088788933433

/-!
# A345883: G.f. A(x) satisfies: A(x) = x / exp(3 * Sum_{k>=1} A(x^k) / k).

The programs for A345883, there is no canonical definition to state claims against.
-/

/-! ## A345883.P15581761341254734686

`A121373(A051406(n))*A365122(n)`
-/

namespace A345883.P15581761341254734686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A051406 n).toNat * A365122 n

end

end A345883.P15581761341254734686

/-!
# A345884: G.f. A(x) satisfies: A(x) = x * exp(2 * Sum_{k>=1} (-1)^k * A(x^k) / k).

The programs for A345884, there is no canonical definition to state claims against.
-/

/-! ## A345884.P13512968848430944983

`A000006((n+2)^n+1)/(-1)^n`
-/

namespace A345884.P13512968848430944983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000006 ((n + 2) ^ n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A345884.P13512968848430944983

/-!
# A345887: Number of tilings of an n-cell circular array with rectangular tiles of any size, and where the number of possible colors of a tile is given by the largest cell covered.

The programs for A345887, the canonical program `A345887.P10524329361228166936` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345887 has offset 1).

The definition of A345887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345887.P9723726180048398996

`(n+1)*∑{#}[n, (n+1)!/(#+1)!]`
-/

namespace A345887.P9723726180048398996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (n + 1) : ℚ) / (Nat.factorial (k + 1) : ℚ))

end

end A345887.P9723726180048398996

namespace A345887

/-- `(n+1)*∑{#}[n, (n+1)!/(#+1)!]` -/
def P9723726180048398996.Spec : Prop :=
  ∀ n, P9723726180048398996.a n = (A345887 (n + 1) : ℚ)

end A345887

/-! ## A345887.P10524329361228166936

`A193657(n+1)-1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A345887

/-- `A193657(n+1)-1` -/
def P10524329361228166936.Spec : Prop :=
  ∀ n, P10524329361228166936.a n = A345887 (n + 1)

theorem P10524329361228166936.correct : P10524329361228166936.Spec := by
  intro n
  simp only [A345887, Nat.add_sub_cancel]

end A345887

/-! ## A345887.P8622708033296846601

`(n+1)*A002627(n+1)`
-/

namespace A345887.P8622708033296846601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002627 (n + 1)

end

end A345887.P8622708033296846601

namespace A345887

/-- `(n+1)*A002627(n+1)` -/
def P8622708033296846601.Spec : Prop :=
  ∀ n, P8622708033296846601.a n = A345887 (n + 1)

end A345887

/-! ## A345887.P17757450917673322442

`a(n-1)*(n+1)²/n+n+1` with `a(0)=1`
-/

namespace A345887.P17757450917673322442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((n + 1) ^ 2 : ℚ) / (n : ℚ) + (n + 1 : ℚ)

end

end A345887.P17757450917673322442

namespace A345887

/-- `a(n-1)*(n+1)²/n+n+1` -/
def P17757450917673322442.Spec : Prop :=
  ∀ n, P17757450917673322442.a n = (A345887 (n + 1) : ℚ)

end A345887

/-! ## A345887.P13583738721896455552

`Δ[n²+(n+1)*a(n-1)]` with `a(0)=0`
-/

namespace A345887.P13583738721896455552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  n ^ 2 + (n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A345887.P13583738721896455552

namespace A345887

/-- `Δ[n²+(n+1)*a(n-1)]` -/
def P13583738721896455552.Spec : Prop :=
  ∀ n, P13583738721896455552.a n = A345887 (n + 1)

end A345887

/-! ## A345887.P10896246903138227327

`abs(Δ[(n+1)*(a(n-1)-n)])` with `a(0)=1`
-/

namespace A345887.P10896246903138227327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A345887.P10896246903138227327

namespace A345887

/-- `abs(Δ[(n+1)*(a(n-1)-n)])` -/
def P10896246903138227327.Spec : Prop :=
  ∀ n, P10896246903138227327.a n = A345887 (n + 1)

end A345887

/-! ## A345887.P12335814853417904797

`-Δ[(n+1)*(a(n-1)-n)]` with `a(0)=1`
-/

namespace A345887.P12335814853417904797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A345887.P12335814853417904797

namespace A345887

/-- `-Δ[(n+1)*(a(n-1)-n)]` -/
def P12335814853417904797.Spec : Prop :=
  ∀ n, P12335814853417904797.a n = A345887 (n + 1)

end A345887

/-! ## A345887.P7862098361332240967

`Δ[(n+1)*(a(n-1)+1)]-1` with `a(0)=0`
-/

namespace A345887.P7862098361332240967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1) * (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A345887.P7862098361332240967

namespace A345887

/-- `Δ[(n+1)*(a(n-1)+1)]-1` -/
def P7862098361332240967.Spec : Prop :=
  ∀ n, P7862098361332240967.a n = A345887 (n + 1)

end A345887

/-! ## A345887.P2157070473371483471

`(n+1)*((n+1)*a(n-1)/n+1)` with `a(0)=1`
-/

namespace A345887.P2157070473371483471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) * (a (n - 1) / (n : ℚ)) + 1)

end

end A345887.P2157070473371483471

namespace A345887

/-- `(n+1)*((n+1)*a(n-1)/n+1)` -/
def P2157070473371483471.Spec : Prop :=
  ∀ n, P2157070473371483471.a n = (A345887 (n + 1) : ℚ)

end A345887

/-! ## A345887.P17560571737174295193

`∑[A193668(n+1)]`
-/

namespace A345887.P17560571737174295193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345887.P17560571737174295193

namespace A345887

/-- `∑[A193668(n+1)]` -/
def P17560571737174295193.Spec : Prop :=
  ∀ n, P17560571737174295193.a n = A345887 (n + 1)

end A345887

/-!
# A345888: a(n) = n + (n - 1) * pi(n).

The programs for A345888, the canonical program `A345888.P1923969659124018582` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345888 has offset 1).

The definition of A345888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+n*A000720(n+1)` (program `A345888.P1923969659124018582`, by `A345888.P1923969659124018582.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A345888.P1923969659124018582

`n+1+n*A000720(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345888

/-- `n+1+n*A000720(n+1)` -/
def P1923969659124018582.Spec : Prop :=
  ∀ n, P1923969659124018582.a n = A345888 (n + 1)

theorem P1923969659124018582.correct : P1923969659124018582.Spec := by
  intro n
  simp only [A345888, Nat.add_sub_cancel]

end A345888

/-! ## A345888.P3197163480927102092

`n*∑[∑{e}[n+1, #]!%2]+1`
-/

namespace A345888.P3197163480927102092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A345888.P3197163480927102092

namespace A345888

/-- `n*∑[∑{e}[n+1, #]!%2]+1` -/
def P3197163480927102092.Spec : Prop :=
  ∀ n, (P3197163480927102092.a n : ℤ) = A345888 (n + 1)

end A345888

/-! ## A345888.P14812368818418005378

`n*∑[C(2, ∑{e}[n+1, #+1])]+1`
-/

namespace A345888.P14812368818418005378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A345888.P14812368818418005378

namespace A345888

/-- `n*∑[C(2, ∑{e}[n+1, #+1])]+1` -/
def P14812368818418005378.Spec : Prop :=
  ∀ n, (P14812368818418005378.a n : ℤ) = A345888 (n + 1)

end A345888

/-! ## A345888.P2156097988068779088

`n*(∑[char[p?[xor(1, n)]-1]]+1)+1`
-/

namespace A345888.P2156097988068779088
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A345888.P2156097988068779088

namespace A345888

/-- `n*(∑[char[p?[xor(1, n)]-1]]+1)+1` -/
def P2156097988068779088.Spec : Prop :=
  ∀ n, (P2156097988068779088.a n : ℤ) = A345888 (n + 1)

end A345888

/-! ## A345888.P3305871715795295830

`n*∑[C(n, ∑{d}[n+1, #-1])]+1`
-/

namespace A345888.P3305871715795295830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A345888.P3305871715795295830

namespace A345888

/-- `n*∑[C(n, ∑{d}[n+1, #-1])]+1` -/
def P3305871715795295830.Spec : Prop :=
  ∀ n, (P3305871715795295830.a n : ℤ) = A345888 (n + 1)

end A345888

/-! ## A345888.P1397052993429530945

`n*(∑[char[p?[2*n+1]-1]]+2)+1`
-/

namespace A345888.P1397052993429530945
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 1

end

end A345888.P1397052993429530945

namespace A345888

/-- `n*(∑[char[p?[2*n+1]-1]]+2)+1` -/
def P1397052993429530945.Spec : Prop :=
  ∀ n, (P1397052993429530945.a n : ℤ) = A345888 (n + 1)

end A345888

/-! ## A345888.P4890624721059027577

`n*(∑[∑{p}[n+1, val(#, n+1)]]+1)+1`
-/

namespace A345888.P4890624721059027577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A345888.P4890624721059027577

namespace A345888

/-- `n*(∑[∑{p}[n+1, val(#, n+1)]]+1)+1` -/
def P4890624721059027577.Spec : Prop :=
  ∀ n, (P4890624721059027577.a n : ℤ) = A345888 (n + 1)

end A345888

/-! ## A345888.P6470930957435165043

`n*(∑[∑{p}[n+1, C(#, n+1)]]+1)+1`
-/

namespace A345888.P6470930957435165043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A345888.P6470930957435165043

namespace A345888

/-- `n*(∑[∑{p}[n+1, C(#, n+1)]]+1)+1` -/
def P6470930957435165043.Spec : Prop :=
  ∀ n, (P6470930957435165043.a n : ℤ) = A345888 (n + 1)

end A345888

/-! ## A345888.P12166590313938406427

`n*(∑[C(n, ∏{e}[n+1, n*#])]+1)+1`
-/

namespace A345888.P12166590313938406427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A345888.P12166590313938406427

namespace A345888

/-- `n*(∑[C(n, ∏{e}[n+1, n*#])]+1)+1` -/
def P12166590313938406427.Spec : Prop :=
  ∀ n, (P12166590313938406427.a n : ℤ) = A345888 (n + 1)

end A345888

/-! ## A345888.P16716854955058913981

`n*A036234(n+1)+1`
-/

namespace A345888.P16716854955058913981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036234 (n + 1) + 1

end

end A345888.P16716854955058913981

namespace A345888

/-- `n*A036234(n+1)+1` -/
def P16716854955058913981.Spec : Prop :=
  ∀ n, P16716854955058913981.a n = A345888 (n + 1)

theorem P16716854955058913981.correct : P16716854955058913981.Spec := by
  intro n
  simp only [A345888, Nat.add_sub_cancel, A345888.P16716854955058913981.a, A345888.P1923969659124018582.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A345888

/-! ## A345888.P9850819888357372968

`A128913(n+1)+A062298(n+1)`
-/

namespace A345888.P9850819888357372968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (n + 1) + A062298 (n + 1)

end

end A345888.P9850819888357372968

namespace A345888

/-- `A128913(n+1)+A062298(n+1)` -/
def P9850819888357372968.Spec : Prop :=
  ∀ n, P9850819888357372968.a n = A345888 (n + 1)

theorem P9850819888357372968.correct : P9850819888357372968.Spec := by
  intro n
  simp only [A345888, Nat.add_sub_cancel, A345888.P9850819888357372968.a, A345888.P1923969659124018582.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, A128913, A128913.P17301333717528200460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A345888

/-! ## A345888.P9398852800996336499

`n*A230980(n+1)+n+1`
-/

namespace A345888.P9398852800996336499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230980 (n + 1) + (n + 1 : ℤ)

end

end A345888.P9398852800996336499

namespace A345888

/-- `n*A230980(n+1)+n+1` -/
def P9398852800996336499.Spec : Prop :=
  ∀ n, P9398852800996336499.a n = A345888 (n + 1)

end A345888

/-! ## A345888.P1130461061678042668

`n*(∑[char[record[∏{p}[n, #-1]]]]+1)+1`
-/

namespace A345888.P1130461061678042668
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A345888.P1130461061678042668

namespace A345888

/-- `n*(∑[char[record[∏{p}[n, #-1]]]]+1)+1` -/
def P1130461061678042668.Spec : Prop :=
  ∀ n, (P1130461061678042668.a n : ℤ) = A345888 (n + 1)

end A345888

/-! ## A345888.P4696629576242573530

`n*(∑[char[eq[1, ∑{e}[n+1, #]]]]+1)+1`
-/

namespace A345888.P4696629576242573530
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A345888.P4696629576242573530

namespace A345888

/-- `n*(∑[char[eq[1, ∑{e}[n+1, #]]]]+1)+1` -/
def P4696629576242573530.Spec : Prop :=
  ∀ n, (P4696629576242573530.a n : ℤ) = A345888 (n + 1)

end A345888

/-! ## A345888.P17288575300425743931

`A137588(A000040(n+1))+A128913(n+1)`
-/

namespace A345888.P17288575300425743931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A000040 (n + 1)).toNat + A128913 (n + 1)

end

end A345888.P17288575300425743931

namespace A345888

/-- `A137588(A000040(n+1))+A128913(n+1)` -/
def P17288575300425743931.Spec : Prop :=
  ∀ n, P17288575300425743931.a n = A345888 (n + 1)

end A345888

/-! ## A345888.P13345770584806935802

`A128140(A256885(n+1))`
-/

namespace A345888.P13345770584806935802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (A256885 (n + 1)).toNat

end

end A345888.P13345770584806935802

namespace A345888

/-- `A128140(A256885(n+1))` -/
def P13345770584806935802.Spec : Prop :=
  ∀ n, P13345770584806935802.a n = A345888 (n + 1)

end A345888

/-! ## A345888.P15175872968573685478

`A159797(A374426(n+1))`
-/

namespace A345888.P15175872968573685478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 (A374426 (n + 1)).toNat

end

end A345888.P15175872968573685478

namespace A345888

/-- `A159797(A374426(n+1))` -/
def P15175872968573685478.Spec : Prop :=
  ∀ n, P15175872968573685478.a n = A345888 (n + 1)

end A345888

/-!
# A345889: Number of tilings of an n-cell circular array with rectangular tiles of any size, and where the number of possible colors of a tile is given by the smallest cell covered.

The programs for A345889, the canonical program `A345889.P5355872161182548140` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345889 has offset 1).

The definition of A345889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345889.P5355872161182548140

`A014288(n+2)-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A345889

/-- `A014288(n+2)-1` -/
def P5355872161182548140.Spec : Prop :=
  ∀ n, P5355872161182548140.a n = A345889 (n + 1)

theorem P5355872161182548140.correct : P5355872161182548140.Spec := by
  intro n
  simp only [A345889, Nat.add_sub_cancel]

end A345889

/-! ## A345889.P14241263210165236823

`a(n-1)+A001710(n+2)` with `a(0)=1`
-/

namespace A345889.P14241263210165236823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001710 (n + 2)

end

end A345889.P14241263210165236823

namespace A345889

/-- `a(n-1)+A001710(n+2)` -/
def P14241263210165236823.Spec : Prop :=
  ∀ n, P14241263210165236823.a n = A345889 (n + 1)

end A345889

/-! ## A345889.P16198663167405497715

`A054116(n+2)/2`
-/

namespace A345889.P16198663167405497715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054116 (n + 2) : ℚ) / 2

end

end A345889.P16198663167405497715

namespace A345889

/-- `A054116(n+2)/2` -/
def P16198663167405497715.Spec : Prop :=
  ∀ n, P16198663167405497715.a n = (A345889 (n + 1) : ℚ)

end A345889

/-! ## A345889.P18062075150293928370

`A003422(n+3)/2-1`
-/

namespace A345889.P18062075150293928370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003422 (n + 3) : ℚ) / 2 - 1

end

end A345889.P18062075150293928370

namespace A345889

/-- `A003422(n+3)/2-1` -/
def P18062075150293928370.Spec : Prop :=
  ∀ n, P18062075150293928370.a n = (A345889 (n + 1) : ℚ)

end A345889

/-! ## A345889.P5881545165372245117

`∑[n!*∑[n+1]]`
-/

namespace A345889.P5881545165372245117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345889.P5881545165372245117

namespace A345889

/-- `∑[n!*∑[n+1]]` -/
def P5881545165372245117.Spec : Prop :=
  ∀ n, (P5881545165372245117.a n : ℤ) = A345889 (n + 1)

end A345889

/-! ## A345889.P3131439984179712752

`∑[∏[a(n-1)+1]]` with `a(0)=1, a(1)=3`
-/

namespace A345889.P3131439984179712752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345889.P3131439984179712752

namespace A345889

/-- `∑[∏[a(n-1)+1]]` -/
def P3131439984179712752.Spec : Prop :=
  ∀ n, (P3131439984179712752.a n : ℤ) = A345889 (n + 1)

end A345889

/-! ## A345889.P5737907987612184619

`∑[(n+2)*a(n-1)]` with `a(0)=1`
-/

namespace A345889.P5737907987612184619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 2) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345889.P5737907987612184619

namespace A345889

/-- `∑[(n+2)*a(n-1)]` -/
def P5737907987612184619.Spec : Prop :=
  ∀ n, (P5737907987612184619.a n : ℤ) = A345889 (n + 1)

end A345889

/-! ## A345889.P9420750837414637525

`∏[n+3-(n+2)/a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A345889.P9420750837414637525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (n + 3 : ℚ) - (n + 2 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A345889.P9420750837414637525

namespace A345889

/-- `∏[n+3-(n+2)/a(n-1)]` -/
def P9420750837414637525.Spec : Prop :=
  ∀ n, P9420750837414637525.a n = (A345889 (n + 1) : ℚ)

end A345889

/-! ## A345889.P3403222916687421217

`a(n-1)+(n+2)*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A345889.P3403222916687421217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (n + 2 : ℤ) * (a (n - 1) - a (n - 2))

end

end A345889.P3403222916687421217

namespace A345889

/-- `a(n-1)+(n+2)*(a(n-1)-a(n-2))` -/
def P3403222916687421217.Spec : Prop :=
  ∀ n, P3403222916687421217.a n = A345889 (n + 1)

end A345889

/-! ## A345889.P11062570391272334463

`∑[record[A249253(n)]]`
-/

namespace A345889.P11062570391272334463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249253 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345889.P11062570391272334463

namespace A345889

/-- `∑[record[A249253(n)]]` -/
def P11062570391272334463.Spec : Prop :=
  ∀ n, P11062570391272334463.a n = A345889 (n + 1)

end A345889

/-!
# A345890: a(n) = n + (n - 1) * (n - pi(n)).

The programs for A345890, the canonical program `A345890.P12359278602129498565` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345890 has offset 1).

The definition of A345890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+n*(n+1-A000720(n+1))` (program `A345890.P12359278602129498565`, by `A345890.P12359278602129498565.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A345890.P12359278602129498565

`n+1+n*(n+1-A000720(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345890

/-- `n+1+n*(n+1-A000720(n+1))` -/
def P12359278602129498565.Spec : Prop :=
  ∀ n, P12359278602129498565.a n = A345890 (n + 1)

theorem P12359278602129498565.correct : P12359278602129498565.Spec := by
  intro n
  simp only [A345890, Nat.add_sub_cancel]

end A345890

/-! ## A345890.P5198866474465879892

`n*(∑[C(n, ∑{p}[n+1, C(#, n)])]+1)+1`
-/

namespace A345890.P5198866474465879892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A345890.P5198866474465879892

namespace A345890

/-- `n*(∑[C(n, ∑{p}[n+1, C(#, n)])]+1)+1` -/
def P5198866474465879892.Spec : Prop :=
  ∀ n, (P5198866474465879892.a n : ℤ) = A345890 (n + 1)

end A345890

/-! ## A345890.P4683669706703864251

`n*∑[∏{p}[n+1, C(#%n, #)]]+n+1`
-/

namespace A345890.P4683669706703864251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A345890.P4683669706703864251

namespace A345890

/-- `n*∑[∏{p}[n+1, C(#%n, #)]]+n+1` -/
def P4683669706703864251.Spec : Prop :=
  ∀ n, (P4683669706703864251.a n : ℤ) = A345890 (n + 1)

end A345890

/-! ## A345890.P5098975146430936302

`(n+1)²-n*∑[C(C(2, ∑{e}[n+1, #]), 2)]`
-/

namespace A345890.P5098975146430936302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A345890.P5098975146430936302

namespace A345890

/-- `(n+1)²-n*∑[C(C(2, ∑{e}[n+1, #]), 2)]` -/
def P5098975146430936302.Spec : Prop :=
  ∀ n, P5098975146430936302.a n = A345890 (n + 1)

theorem P5098975146430936302.correct : P5098975146430936302.Spec := by
  intro n
  simp only [A345890, Nat.add_sub_cancel, A345890.P5098975146430936302.f2, A345890.P5098975146430936302.f1, A345890.P5098975146430936302.a, A345890.P12359278602129498565.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A345890

/-! ## A345890.P7307764890836083479

`(n+1)²-n*∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A345890.P7307764890836083479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A345890.P7307764890836083479

namespace A345890

/-- `(n+1)²-n*∑[∑{p}[n+1, val(#, n+1)]]` -/
def P7307764890836083479.Spec : Prop :=
  ∀ n, P7307764890836083479.a n = A345890 (n + 1)

end A345890

/-! ## A345890.P11519956267422465513

`n*(A062298(n+1)+1)+1`
-/

namespace A345890.P11519956267422465513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A062298 (n + 1) + 1) + 1

end

end A345890.P11519956267422465513

namespace A345890

/-- `n*(A062298(n+1)+1)+1` -/
def P11519956267422465513.Spec : Prop :=
  ∀ n, P11519956267422465513.a n = A345890 (n + 1)

theorem P11519956267422465513.correct : P11519956267422465513.Spec := by
  intro n
  simp only [A345890, Nat.add_sub_cancel, A345890.P11519956267422465513.a, A345890.P12359278602129498565.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A345890

/-! ## A345890.P15619687785159665991

`(n+1)²-n*A000720(n+1)`
-/

namespace A345890.P15619687785159665991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (n : ℤ) * A000720 (n + 1)

end

end A345890.P15619687785159665991

namespace A345890

/-- `(n+1)²-n*A000720(n+1)` -/
def P15619687785159665991.Spec : Prop :=
  ∀ n, P15619687785159665991.a n = A345890 (n + 1)

theorem P15619687785159665991.correct : P15619687785159665991.Spec := by
  intro n
  simp only [A345890, Nat.add_sub_cancel, A345890.P15619687785159665991.a, A345890.P12359278602129498565.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A345890

/-! ## A345890.P6952993082802556199

`n*∑[char[A018252(n+1)-1]]+n+1`
-/

namespace A345890.P6952993082802556199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A345890.P6952993082802556199

namespace A345890

/-- `n*∑[char[A018252(n+1)-1]]+n+1` -/
def P6952993082802556199.Spec : Prop :=
  ∀ n, (P6952993082802556199.a n : ℤ) = A345890 (n + 1)

end A345890

/-! ## A345890.P3251515316075207779

`(n+1)²-n*∑[char[record[A000010(n+1)]]]`
-/

namespace A345890.P3251515316075207779
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A345890.P3251515316075207779

namespace A345890

/-- `(n+1)²-n*∑[char[record[A000010(n+1)]]]` -/
def P3251515316075207779.Spec : Prop :=
  ∀ n, P3251515316075207779.a n = A345890 (n + 1)

end A345890

/-! ## A345890.P8654329263827686549

`A005451(n+1)+n*A086936(n+1)`
-/

namespace A345890.P8654329263827686549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1) + (n : ℤ) * A086936 (n + 1)

end

end A345890.P8654329263827686549

namespace A345890

/-- `A005451(n+1)+n*A086936(n+1)` -/
def P8654329263827686549.Spec : Prop :=
  ∀ n, P8654329263827686549.a n = A345890 (n + 1)

end A345890

/-! ## A345890.P1721280808034166614

`n*A086936(n+2)+1`
-/

namespace A345890.P1721280808034166614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A086936 (n + 2) + 1

end

end A345890.P1721280808034166614

namespace A345890

/-- `n*A086936(n+2)+1` -/
def P1721280808034166614.Spec : Prop :=
  ∀ n, P1721280808034166614.a n = A345890 (n + 1)

end A345890

/-! ## A345890.P16176165138604350305

`n*∑[1-char[eq[1, ∑{e}[n+1, #]]]]+1+n`
-/

namespace A345890.P16176165138604350305
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A345890.P16176165138604350305

namespace A345890

/-- `n*∑[1-char[eq[1, ∑{e}[n+1, #]]]]+1+n` -/
def P16176165138604350305.Spec : Prop :=
  ∀ n, P16176165138604350305.a n = A345890 (n + 1)

end A345890

/-! ## A345890.P9619578524738146485

`A162610(A256885(n+1))`
-/

namespace A345890.P9619578524738146485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (A256885 (n + 1)).toNat

end

end A345890.P9619578524738146485

namespace A345890

/-- `A162610(A256885(n+1))` -/
def P9619578524738146485.Spec : Prop :=
  ∀ n, P9619578524738146485.a n = A345890 (n + 1)

end A345890

/-!
# A345891: a(n) = n + (n - 1) * phi(n).

The programs for A345891, the canonical program `A345891.P1680838059371173555` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345891 has offset 1).

The definition of A345891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+n*A000010(n+1)` (program `A345891.P1680838059371173555`, by `A345891.P1680838059371173555.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A345891.P7487788465764126550

`A062955(n+1)+n+1`
-/

namespace A345891.P7487788465764126550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062955 (n + 1) + (n + 1 : ℤ)

end

end A345891.P7487788465764126550

namespace A345891

/-- `A062955(n+1)+n+1` -/
def P7487788465764126550.Spec : Prop :=
  ∀ n, P7487788465764126550.a n = A345891 (n + 1)

theorem P7487788465764126550.correct : P7487788465764126550.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P7487788465764126550.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A062955, A062955.P10591233305349930181.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P1680838059371173555

`n+1+n*A000010(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A345891

/-- `n+1+n*A000010(n+1)` -/
def P1680838059371173555.Spec : Prop :=
  ∀ n, P1680838059371173555.a n = A345891 (n + 1)

theorem P1680838059371173555.correct : P1680838059371173555.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel]

end A345891

/-! ## A345891.P8886937129153151100

`∑{#}[n, (n+1)^floor(1/gcd(n+1, #))]`
-/

namespace A345891.P8886937129153151100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n + 1 : ℚ) ^ (⌊1 / (Nat.gcd (n + 1) k : ℚ)⌋ : ℤ)

end

end A345891.P8886937129153151100

namespace A345891

/-- `∑{#}[n, (n+1)^floor(1/gcd(n+1, #))]` -/
def P8886937129153151100.Spec : Prop :=
  ∀ n, P8886937129153151100.a n = (A345891 (n + 1) : ℚ)

end A345891

/-! ## A345891.P2258929144544952827

`n*((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)+1`
-/

namespace A345891.P2258929144544952827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1) + 1

end

end A345891.P2258929144544952827

namespace A345891

/-- `n*((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)+1` -/
def P2258929144544952827.Spec : Prop :=
  ∀ n, P2258929144544952827.a n = (A345891 (n + 1) : ℚ)

end A345891

/-! ## A345891.P3714224020188851848

`n*A039649(n+1)+1`
-/

namespace A345891.P3714224020188851848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A039649 (n + 1) + 1

end

end A345891.P3714224020188851848

namespace A345891

/-- `n*A039649(n+1)+1` -/
def P3714224020188851848.Spec : Prop :=
  ∀ n, P3714224020188851848.a n = A345891 (n + 1)

theorem P3714224020188851848.correct : P3714224020188851848.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P3714224020188851848.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P3842904738095480497

`n*(Δ[A005728(n)]+1)+1`
-/

namespace A345891.P3842904738095480497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n + 1) + 1

end

end A345891.P3842904738095480497

namespace A345891

/-- `n*(Δ[A005728(n)]+1)+1` -/
def P3842904738095480497.Spec : Prop :=
  ∀ n, P3842904738095480497.a n = A345891 (n + 1)

end A345891

/-! ## A345891.P6143760095939765383

`n*Δ[A002088(n)]+n+1`
-/

namespace A345891.P6143760095939765383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) + (n + 1 : ℤ)

end

end A345891.P6143760095939765383

namespace A345891

/-- `n*Δ[A002088(n)]+n+1` -/
def P6143760095939765383.Spec : Prop :=
  ∀ n, P6143760095939765383.a n = A345891 (n + 1)

end A345891

/-! ## A345891.P3383519117197155361

`n*(A109606(n+1)+2)+1`
-/

namespace A345891.P3383519117197155361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A109606 (n + 1) + 2) + 1

end

end A345891.P3383519117197155361

namespace A345891

/-- `n*(A109606(n+1)+2)+1` -/
def P3383519117197155361.Spec : Prop :=
  ∀ n, P3383519117197155361.a n = A345891 (n + 1)

theorem P3383519117197155361.correct : P3383519117197155361.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P3383519117197155361.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P428211377561277066

`n*A000010(ϕ²-(ϕ-n))-xor(n, -1)`
-/

namespace A345891.P428211377561277066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000010 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - Int.xor (n : ℤ) (-1)

end

end A345891.P428211377561277066

namespace A345891

/-- `n*A000010(ϕ²-(ϕ-n))-xor(n, -1)` -/
def P428211377561277066.Spec : Prop :=
  ∀ n, P428211377561277066.a n = A345891 (n + 1)

end A345891

/-! ## A345891.P7016226656915872544

`A051953(n+1)+A002618(n+1)`
-/

namespace A345891.P7016226656915872544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A002618 (n + 1)

end

end A345891.P7016226656915872544

namespace A345891

/-- `A051953(n+1)+A002618(n+1)` -/
def P7016226656915872544.Spec : Prop :=
  ∀ n, P7016226656915872544.a n = A345891 (n + 1)

theorem P7016226656915872544.correct : P7016226656915872544.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P7016226656915872544.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A002618, A002618.P8397693677428532773.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P8455356232746676202

`A219428(n+1)+A046152(n+1)`
-/

namespace A345891.P8455356232746676202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + A046152 (n + 1)

end

end A345891.P8455356232746676202

namespace A345891

/-- `A219428(n+1)+A046152(n+1)` -/
def P8455356232746676202.Spec : Prop :=
  ∀ n, P8455356232746676202.a n = A345891 (n + 1)

theorem P8455356232746676202.correct : P8455356232746676202.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P8455356232746676202.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A046152, A046152.P7809861723130686075.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P7096421526764007629

`n*A020725(A000010(n+1))+1`
-/

namespace A345891.P7096421526764007629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020725 (A000010 (n + 1)).toNat + 1

end

end A345891.P7096421526764007629

namespace A345891

/-- `n*A020725(A000010(n+1))+1` -/
def P7096421526764007629.Spec : Prop :=
  ∀ n, P7096421526764007629.a n = A345891 (n + 1)

end A345891

/-! ## A345891.P7606503685022602348

`A005408(n)+n*A109606(n+1)`
-/

namespace A345891.P7606503685022602348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (n : ℤ) * A109606 (n + 1)

end

end A345891.P7606503685022602348

namespace A345891

/-- `A005408(n)+n*A109606(n+1)` -/
def P7606503685022602348.Spec : Prop :=
  ∀ n, P7606503685022602348.a n = A345891 (n + 1)

theorem P7606503685022602348.correct : P7606503685022602348.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P7606503685022602348.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A005408, A005408.P17437947328870227736.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P17294020338960206598

`A046151(n+1)+A051953(n+1)+1`
-/

namespace A345891.P17294020338960206598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (n + 1) + (A051953 (n + 1) + 1)

end

end A345891.P17294020338960206598

namespace A345891

/-- `A046151(n+1)+A051953(n+1)+1` -/
def P17294020338960206598.Spec : Prop :=
  ∀ n, P17294020338960206598.a n = A345891 (n + 1)

theorem P17294020338960206598.correct : P17294020338960206598.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P17294020338960206598.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A046151, A046151.P159560385155613916.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P1201146235658972139

`A002618(n+1)+A219428(n+1)+1`
-/

namespace A345891.P1201146235658972139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) + (A219428 (n + 1) + 1)

end

end A345891.P1201146235658972139

namespace A345891

/-- `A002618(n+1)+A219428(n+1)+1` -/
def P1201146235658972139.Spec : Prop :=
  ∀ n, P1201146235658972139.a n = A345891 (n + 1)

theorem P1201146235658972139.correct : P1201146235658972139.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P1201146235658972139.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A002618, A002618.P8397693677428532773.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P14242788730920257428

`A046152(n+1)+A051953(n+1)-1`
-/

namespace A345891.P14242788730920257428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (n + 1) + (A051953 (n + 1) - 1)

end

end A345891.P14242788730920257428

namespace A345891

/-- `A046152(n+1)+A051953(n+1)-1` -/
def P14242788730920257428.Spec : Prop :=
  ∀ n, P14242788730920257428.a n = A345891 (n + 1)

theorem P14242788730920257428.correct : P14242788730920257428.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P14242788730920257428.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A046152, A046152.P7809861723130686075.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P14094797088613077366

`A002618(n+1)-A109606(n+1)+n`
-/

namespace A345891.P14094797088613077366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - A109606 (n + 1) + (n : ℤ)

end

end A345891.P14094797088613077366

namespace A345891

/-- `A002618(n+1)-A109606(n+1)+n` -/
def P14094797088613077366.Spec : Prop :=
  ∀ n, P14094797088613077366.a n = A345891 (n + 1)

theorem P14094797088613077366.correct : P14094797088613077366.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P14094797088613077366.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A002618, A002618.P8397693677428532773.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P13647006968467078603

`(n+1)²+A051953(n+1)-A053650(n+1)`
-/

namespace A345891.P13647006968467078603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A051953 (n + 1) - A053650 (n + 1))

end

end A345891.P13647006968467078603

namespace A345891

/-- `(n+1)²+A051953(n+1)-A053650(n+1)` -/
def P13647006968467078603.Spec : Prop :=
  ∀ n, P13647006968467078603.a n = A345891 (n + 1)

theorem P13647006968467078603.correct : P13647006968467078603.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P13647006968467078603.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A053650, A053650.P6469571087341810863.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P16662704996555676276

`A051953(n+1)+A127473(n+1)+A117295(n+1)`
-/

namespace A345891.P16662704996555676276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A127473 (n + 1) + A117295 (n + 1))

end

end A345891.P16662704996555676276

namespace A345891

/-- `A051953(n+1)+A127473(n+1)+A117295(n+1)` -/
def P16662704996555676276.Spec : Prop :=
  ∀ n, P16662704996555676276.a n = A345891 (n + 1)

theorem P16662704996555676276.correct : P16662704996555676276.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P16662704996555676276.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A117295, A117295.P10773175204365160888.a, A127473, A127473.P9698007400369304439.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345891

/-! ## A345891.P9640638475497863823

`A000217(n+1)+A000217(n+1)-A345892(n+1)`
-/

namespace A345891.P9640638475497863823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 (n + 1) - A345892 (n + 1))

end

end A345891.P9640638475497863823

namespace A345891

/-- `A000217(n+1)+A000217(n+1)-A345892(n+1)` -/
def P9640638475497863823.Spec : Prop :=
  ∀ n, P9640638475497863823.a n = A345891 (n + 1)

theorem P9640638475497863823.correct : P9640638475497863823.Spec := by
  intro n
  simp only [A345891, Nat.add_sub_cancel, A345891.P9640638475497863823.a, A345891.P1680838059371173555.a, A000010, A000010.P4673923239450215316.a, A000217, A000217.P10269402890581615239.a, A345892, A345892.P16235346904455731503.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A345891

/-!
# A345892: a(n) = n + (n - 1) * (n - phi(n)).

The programs for A345892, the canonical program `A345892.P16235346904455731503` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345892 has offset 1).

The definition of A345892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+n*(n+1-A000010(n+1))` (program `A345892.P16235346904455731503`, by `A345892.P16235346904455731503.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A345892.P16235346904455731503

`n+1+n*(n+1-A000010(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A345892

/-- `n+1+n*(n+1-A000010(n+1))` -/
def P16235346904455731503.Spec : Prop :=
  ∀ n, P16235346904455731503.a n = A345892 (n + 1)

theorem P16235346904455731503.correct : P16235346904455731503.Spec := by
  intro n
  simp only [A345892, Nat.add_sub_cancel]

end A345892

/-! ## A345892.P8061524162409848686

`∑{#}[n, (n+1)^(1-floor(1/gcd(n+1, #)))]`
-/

namespace A345892.P8061524162409848686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n + 1 : ℚ) ^ (1 - ⌊1 / (Nat.gcd (n + 1) k : ℚ)⌋ : ℤ)

end

end A345892.P8061524162409848686

namespace A345892

/-- `∑{#}[n, (n+1)^(1-floor(1/gcd(n+1, #)))]` -/
def P8061524162409848686.Spec : Prop :=
  ∀ n, P8061524162409848686.a n = (A345892 (n + 1) : ℚ)

end A345892

/-! ## A345892.P10004913634549136843

`(n+1)²-n*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A345892.P10004913634549136843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) - (n : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A345892.P10004913634549136843

namespace A345892

/-- `(n+1)²-n*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P10004913634549136843.Spec : Prop :=
  ∀ n, P10004913634549136843.a n = (A345892 (n + 1) : ℚ)

end A345892

/-! ## A345892.P11440846416945395541

`n*(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+2)+1`
-/

namespace A345892.P11440846416945395541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 2) + 1

end

end A345892.P11440846416945395541

namespace A345892

/-- `n*(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+2)+1` -/
def P11440846416945395541.Spec : Prop :=
  ∀ n, P11440846416945395541.a n = (A345892 (n + 1) : ℚ)

end A345892

/-! ## A345892.P5623614744195512318

`n*A062830(n+1)+1`
-/

namespace A345892.P5623614744195512318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062830 (n + 1) + 1

end

end A345892.P5623614744195512318

namespace A345892

/-- `n*A062830(n+1)+1` -/
def P5623614744195512318.Spec : Prop :=
  ∀ n, P5623614744195512318.a n = A345892 (n + 1)

end A345892

/-! ## A345892.P6878085849585588226

`(n+1)²-A062955(n+1)`
-/

namespace A345892.P6878085849585588226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A062955 (n + 1)

end

end A345892.P6878085849585588226

namespace A345892

/-- `(n+1)²-A062955(n+1)` -/
def P6878085849585588226.Spec : Prop :=
  ∀ n, P6878085849585588226.a n = A345892 (n + 1)

theorem P6878085849585588226.correct : P6878085849585588226.Spec := by
  intro n
  simp only [A345892, Nat.add_sub_cancel, A345892.P6878085849585588226.a, A345892.P16235346904455731503.a, A000010, A000010.P4673923239450215316.a, A062955, A062955.P10591233305349930181.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345892

/-! ## A345892.P6976021719147649483

`n*(A051953(n+1)+1)+1`
-/

namespace A345892.P6976021719147649483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A051953 (n + 1) + 1) + 1

end

end A345892.P6976021719147649483

namespace A345892

/-- `n*(A051953(n+1)+1)+1` -/
def P6976021719147649483.Spec : Prop :=
  ∀ n, P6976021719147649483.a n = A345892 (n + 1)

theorem P6976021719147649483.correct : P6976021719147649483.Spec := by
  intro n
  simp only [A345892, Nat.add_sub_cancel, A345892.P6976021719147649483.a, A345892.P16235346904455731503.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345892

/-! ## A345892.P14382643242305868398

`(n+1)²-n*A000010(n+1)`
-/

namespace A345892.P14382643242305868398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (n : ℤ) * A000010 (n + 1)

end

end A345892.P14382643242305868398

namespace A345892

/-- `(n+1)²-n*A000010(n+1)` -/
def P14382643242305868398.Spec : Prop :=
  ∀ n, P14382643242305868398.a n = A345892 (n + 1)

theorem P14382643242305868398.correct : P14382643242305868398.Spec := by
  intro n
  simp only [A345892, Nat.add_sub_cancel, A345892.P14382643242305868398.a, A345892.P16235346904455731503.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A345892

/-! ## A345892.P1792182016267993702

`n*(A219428(n+1)+1)+n+1`
-/

namespace A345892.P1792182016267993702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A219428 (n + 1) + 1) + (n + 1 : ℤ)

end

end A345892.P1792182016267993702

namespace A345892

/-- `n*(A219428(n+1)+1)+n+1` -/
def P1792182016267993702.Spec : Prop :=
  ∀ n, P1792182016267993702.a n = A345892 (n + 1)

theorem P1792182016267993702.correct : P1792182016267993702.Spec := by
  intro n
  simp only [A345892, Nat.add_sub_cancel, A345892.P1792182016267993702.a, A345892.P16235346904455731503.a, A000010, A000010.P4673923239450215316.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345892

/-! ## A345892.P16625751147851859081

`(n+1)²-n*(A039649(n+1)-1)`
-/

namespace A345892.P16625751147851859081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (n : ℤ) * (A039649 (n + 1) - 1)

end

end A345892.P16625751147851859081

namespace A345892

/-- `(n+1)²-n*(A039649(n+1)-1)` -/
def P16625751147851859081.Spec : Prop :=
  ∀ n, P16625751147851859081.a n = A345892 (n + 1)

theorem P16625751147851859081.correct : P16625751147851859081.Spec := by
  intro n
  simp only [A345892, Nat.add_sub_cancel, A345892.P16625751147851859081.a, A345892.P16235346904455731503.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345892

/-! ## A345892.P3575291324131789169

`A053650(n+1)+A000010(n+1)`
-/

namespace A345892.P3575291324131789169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053650 (n + 1) + A000010 (n + 1)

end

end A345892.P3575291324131789169

namespace A345892

/-- `A053650(n+1)+A000010(n+1)` -/
def P3575291324131789169.Spec : Prop :=
  ∀ n, P3575291324131789169.a n = A345892 (n + 1)

theorem P3575291324131789169.correct : P3575291324131789169.Spec := by
  intro n
  simp only [A345892, Nat.add_sub_cancel, A345892.P3575291324131789169.a, A345892.P16235346904455731503.a, A000010, A000010.P4673923239450215316.a, A053650, A053650.P6469571087341810863.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345892

/-! ## A345892.P5667548395995843410

`A349679(n+1)+A308473(n+1)`
-/

namespace A345892.P5667548395995843410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349679 (n + 1) + A308473 (n + 1)

end

end A345892.P5667548395995843410

namespace A345892

/-- `A349679(n+1)+A308473(n+1)` -/
def P5667548395995843410.Spec : Prop :=
  ∀ n, P5667548395995843410.a n = A345892 (n + 1)

end A345892

/-! ## A345892.P8332270365780378504

`A264724(n+1)-A002618(n+1)`
-/

namespace A345892.P8332270365780378504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1) - A002618 (n + 1)

end

end A345892.P8332270365780378504

namespace A345892

/-- `A264724(n+1)-A002618(n+1)` -/
def P8332270365780378504.Spec : Prop :=
  ∀ n, P8332270365780378504.a n = A345892 (n + 1)

theorem P8332270365780378504.correct : P8332270365780378504.Spec := by
  intro n
  simp only [A345892, Nat.add_sub_cancel, A345892.P8332270365780378504.a, A345892.P16235346904455731503.a, A000010, A000010.P4673923239450215316.a, A002618, A002618.P8397693677428532773.a, A264724, A264724.P2483294076025266206.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345892

/-! ## A345892.P10925224002818855017

`A005408(n)+n*A016035(n+1)`
-/

namespace A345892.P10925224002818855017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (n : ℤ) * A016035 (n + 1)

end

end A345892.P10925224002818855017

namespace A345892

/-- `A005408(n)+n*A016035(n+1)` -/
def P10925224002818855017.Spec : Prop :=
  ∀ n, P10925224002818855017.a n = A345892 (n + 1)

end A345892

/-! ## A345892.P9595162625003642540

`A002088(n+1)+A053650(n+1)-A002088(n)`
-/

namespace A345892.P9595162625003642540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (A053650 (n + 1) - A002088 n)

end

end A345892.P9595162625003642540

namespace A345892

/-- `A002088(n+1)+A053650(n+1)-A002088(n)` -/
def P9595162625003642540.Spec : Prop :=
  ∀ n, P9595162625003642540.a n = A345892 (n + 1)

end A345892

/-! ## A345892.P374823601664587788

`A002618(n+1)+A053650(n+1)-A062955(n+1)`
-/

namespace A345892.P374823601664587788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) + (A053650 (n + 1) - A062955 (n + 1))

end

end A345892.P374823601664587788

namespace A345892

/-- `A002618(n+1)+A053650(n+1)-A062955(n+1)` -/
def P374823601664587788.Spec : Prop :=
  ∀ n, P374823601664587788.a n = A345892 (n + 1)

theorem P374823601664587788.correct : P374823601664587788.Spec := by
  intro n
  simp only [A345892, Nat.add_sub_cancel, A345892.P374823601664587788.a, A345892.P16235346904455731503.a, A000010, A000010.P4673923239450215316.a, A002618, A002618.P8397693677428532773.a, A053650, A053650.P6469571087341810863.a, A062955, A062955.P10591233305349930181.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345892

/-! ## A345892.P12245761901967249585

`A000010(n+1)+A009195(n+1)*A052106(n+1)`
-/

namespace A345892.P12245761901967249585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A009195 (n + 1) * A052106 (n + 1)

end

end A345892.P12245761901967249585

namespace A345892

/-- `A000010(n+1)+A009195(n+1)*A052106(n+1)` -/
def P12245761901967249585.Spec : Prop :=
  ∀ n, P12245761901967249585.a n = A345892 (n + 1)

end A345892

/-! ## A345892.P3726531932251749445

`A002378(n+1)-A345891(n+1)`
-/

namespace A345892.P3726531932251749445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) - A345891 (n + 1)

end

end A345892.P3726531932251749445

namespace A345892

/-- `A002378(n+1)-A345891(n+1)` -/
def P3726531932251749445.Spec : Prop :=
  ∀ n, P3726531932251749445.a n = A345892 (n + 1)

theorem P3726531932251749445.correct : P3726531932251749445.Spec := by
  intro n
  simp only [A345892, Nat.add_sub_cancel, A345892.P3726531932251749445.a, A345892.P16235346904455731503.a, A000010, A000010.P4673923239450215316.a, A002378, A002378.P6342434596694243671.a, A345891, A345891.P1680838059371173555.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345892

/-! ## A345892.P9976280602597837212

`n*A000010((n+1)²)%(n+2)+1`
-/

namespace A345892.P9976280602597837212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A000010 ((n + 1) ^ 2)) (n + 2 : ℤ) + 1

end

end A345892.P9976280602597837212

namespace A345892

/-- `n*A000010((n+1)²)%(n+2)+1` -/
def P9976280602597837212.Spec : Prop :=
  ∀ n, P9976280602597837212.a n = A345892 (n + 1)

end A345892

/-! ## A345892.P8169936849828671173

`A264724(n+1)-A000010((n+1)²)`
-/

namespace A345892.P8169936849828671173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1) - A000010 ((n + 1) ^ 2)

end

end A345892.P8169936849828671173

namespace A345892

/-- `A264724(n+1)-A000010((n+1)²)` -/
def P8169936849828671173.Spec : Prop :=
  ∀ n, P8169936849828671173.a n = A345892 (n + 1)

end A345892

/-!
# A345893: a(n) = Sum_{d|n} n^phi(d).

The programs for A345893, the canonical program `A345893.P9142068273855579266` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345893 has offset 1).

The definition of A345893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345893.P9142068273855579266

`∑{d}[n+1, (n+1)^A000010(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A345893

/-- `∑{d}[n+1, (n+1)^A000010(#)]` -/
def P9142068273855579266.Spec : Prop :=
  ∀ n, P9142068273855579266.a n = (A345893 (n + 1) : ℚ)

end A345893

/-! ## A345893.P625691710733559811

`(n+1)*A345092(n+1)`
-/

namespace A345893.P625691710733559811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A345092 (n + 1)

end

end A345893.P625691710733559811

namespace A345893

/-- `(n+1)*A345092(n+1)` -/
def P625691710733559811.Spec : Prop :=
  ∀ n, P625691710733559811.a n = A345893 (n + 1)

end A345893

/-! ## A345893.P5857022244542866069

`∑{d}[n+1, (n+1)^A109606(#)]*(n+1)`
-/

namespace A345893.P5857022244542866069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A109606 d : ℤ)) * (n + 1 : ℚ)

end

end A345893.P5857022244542866069

namespace A345893

/-- `∑{d}[n+1, (n+1)^A109606(#)]*(n+1)` -/
def P5857022244542866069.Spec : Prop :=
  ∀ n, P5857022244542866069.a n = (A345893 (n + 1) : ℚ)

end A345893

/-!
# A345894: Positive integers representable by the two cyclotomic binary forms Phi_5(x,y) and Phi_12(u,v).

The programs for A345894, there is no canonical definition to state claims against.
-/

/-! ## A345894.P2304240611851637778

`A340588(n+1)-A049084(A143600(n))`
-/

namespace A345894.P2304240611851637778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340588 (n + 1) - A049084 (A143600 n).toNat

end

end A345894.P2304240611851637778

/-! ## A345894.P15170931691992565807

`A374291(n+1)-A124788(A052264(n))`
-/

namespace A345894.P15170931691992565807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374291 (n + 1) - A124788 (A052264 n).toNat

end

end A345894.P15170931691992565807

/-!
# A345895: a(n) = Sum_{d|n} n^sigma(d).

The programs for A345895, the canonical program `A345895.P17884250528782245440` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345895 has offset 1).

The definition of A345895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345895.P17884250528782245440

`∑{d}[n+1, (n+1)^A000203(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345895

/-- `∑{d}[n+1, (n+1)^A000203(#)]` -/
def P17884250528782245440.Spec : Prop :=
  ∀ n, P17884250528782245440.a n = (A345895 (n + 1) : ℚ)

end A345895

/-! ## A345895.P7290345666337255986

`∑{d}[n+1, (n+1)^A097012((n+1)/#)]`
-/

namespace A345895.P7290345666337255986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A097012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ)

end

end A345895.P7290345666337255986

namespace A345895

/-- `∑{d}[n+1, (n+1)^A097012((n+1)/#)]` -/
def P7290345666337255986.Spec : Prop :=
  ∀ n, P7290345666337255986.a n = (A345895 (n + 1) : ℚ)

end A345895

/-!
# A345897: a(n) = 2*n^4/3 - 4*n^3/3 + 11*n^2/6 - 13*n/6 + 1.

The programs for A345897, the canonical program `A345897.P8038473256665312500` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345897 has offset 0).

The definition of A345897 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A345897.anchor (n : ℕ) : (A345897 n : ℚ) = (2 * n ^ 4 : ℚ) / 3 - (4 * n ^ 3 : ℚ) / 3 + (11 * n ^ 2 : ℚ) / 6 - (13 * n : ℚ) / 6 + 1` in `Proof.A345.A345897`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A345897.P8949463272397713196

`ogf((1-5x+14x^2-x^3+7x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A345897.P8949463272397713196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 14, -1, 7] [1, -5, 10, -10, 5, -1] n

end

end A345897.P8949463272397713196

namespace A345897

/-- `ogf((1-5x+14x^2-x^3+7x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P8949463272397713196.Spec : Prop :=
  ∀ n, P8949463272397713196.a n = A345897 n

end A345897

/-! ## A345897.P8038473256665312500

`2*n^4/3-4*n^3/3+11*n²/6-13*n/6+1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A345897

/-- `2*n^4/3-4*n^3/3+11*n²/6-13*n/6+1` -/
def P8038473256665312500.Spec : Prop :=
  ∀ n, P8038473256665312500.a n = (A345897 n : ℚ)

end A345897

/-! ## A345897.P13632480290880870962

`A136161(2*(1-n+n²)²-(C(n+3, 2)-4))`
-/

namespace A345897.P13632480290880870962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136161 (2 * (1 - (n : ℤ) + (n ^ 2 : ℤ)) ^ 2 - ((Nat.choose (n + 3) 2 : ℤ) - 4)).toNat

end

end A345897.P13632480290880870962

namespace A345897

/-- `A136161(2*(1-n+n²)²-(C(n+3, 2)-4))` -/
def P13632480290880870962.Spec : Prop :=
  ∀ n, P13632480290880870962.a n = A345897 n

end A345897

/-!
# A345898: Odd powers of primes q such that each of (q-1)/2 and (q+1)/2 is either a power of prime or a semiprime.

The programs for A345898, there is no canonical definition to state claims against.
-/

/-! ## A345898.P4518544282413588361

`A318978(∑[A242784(2*n+1)²])`
-/

namespace A345898.P4518544282413588361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345898.P4518544282413588361

/-! ## A345898.P16040185491083166686

`record[or(A175685(n+1), A222334(n+1))]`
-/

namespace A345898.P16040185491083166686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175685 (n + 1)) (A222334 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345898.P16040185491083166686

/-! ## A345898.P8751717238249239775

`lt[0, A257000(A033048(n))]`
-/

namespace A345898.P8751717238249239775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A033048 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345898.P8751717238249239775

/-! ## A345898.P6631528260033759902

`eq[A227903(n+1), A244237(n)]`
-/

namespace A345898.P6631528260033759902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244237 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345898.P6631528260033759902

/-!
# A345899: Exponents d of powers of 2, q = 2^d, such that each of q-1 and q+1 is either a power of prime or a semiprime.

The programs for A345899, there is no canonical definition to state claims against.
-/

/-! ## A345899.P15024640446243812181

`record[A002034(A283364(n+1))]`
-/

namespace A345899.P15024640446243812181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A283364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345899.P15024640446243812181

/-! ## A345899.P4485342391041462240

`filter[A283364(n+1), A327866(#)]`
-/

namespace A345899.P4485342391041462240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327866 (f1 j).toNat = 1) n)

end

end A345899.P4485342391041462240

/-! ## A345899.P13750331692838786211

`A283364(comp[A001642(n+1)-A060444(n+4)])`
-/

namespace A345899.P13750331692838786211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001642 (n + 1) - A060444 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283364 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A345899.P13750331692838786211

/-! ## A345899.P4007438253088447468

`record[A071030(A160135(n+1))*A283364(n+1)]`
-/

namespace A345899.P4007438253088447468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 (A160135 (n + 1)).toNat * A283364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345899.P4007438253088447468

