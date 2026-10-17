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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A075200: Number of polyominoes with n cells that tile the plane both by translation and by 180-degree rotation (Conway criterion).

The programs for A075200, there is no canonical definition to state claims against.
-/

/-! ## A075200.P12630564036804548801

`A075198(n+1)-A075199(n+1)`
-/

namespace A075200.P12630564036804548801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075198 (n + 1) - A075199 (n + 1)

end

end A075200.P12630564036804548801

/-! ## A075200.P6009374526797152278

`A075202(n+1)-A075201(n+1)`
-/

namespace A075200.P6009374526797152278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075202 (n + 1) - A075201 (n + 1)

end

end A075200.P6009374526797152278

/-! ## A075200.P3005265629352783882

`A075198(n+1)+A057428(n)*A075199(n+1)`
-/

namespace A075200.P3005265629352783882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075198 (n + 1) + A057428 n * A075199 (n + 1)

end

end A075200.P3005265629352783882

/-! ## A075200.P10226317387541236729

`A075202(n+1)+A057428(n)*A075201(n+1)`
-/

namespace A075200.P10226317387541236729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075202 (n + 1) + A057428 n * A075201 (n + 1)

end

end A075200.P10226317387541236729

/-! ## A075200.P18337779723703309067

`A075198(n+1)+A075199(n+1)*A260196(n)`
-/

namespace A075200.P18337779723703309067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075198 (n + 1) + A075199 (n + 1) * A260196 n

end

end A075200.P18337779723703309067

/-!
# A075201: Number of polyominoes with n cells that tile the plane by 180-degree rotation (Conway criterion) but not by translation.

The programs for A075201, there is no canonical definition to state claims against.
-/

/-! ## A075201.P8415988928092255801

`A075202(n+1)-A075200(n+1)`
-/

namespace A075201.P8415988928092255801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075202 (n + 1) - A075200 (n + 1)

end

end A075201.P8415988928092255801

/-! ## A075201.P12929141603693422411

`A075203(n+1)-A075198(n+1)`
-/

namespace A075201.P12929141603693422411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075203 (n + 1) - A075198 (n + 1)

end

end A075201.P12929141603693422411

/-! ## A075201.P3293580523169960476

`A075199(n+1)+A075202(n+1)-A075198(n+1)`
-/

namespace A075201.P3293580523169960476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075199 (n + 1) + (A075202 (n + 1) - A075198 (n + 1))

end

end A075201.P3293580523169960476

/-! ## A075201.P1595674952613582782

`A075203(n+1)-(A075200(n+1)+A075199(n+1))`
-/

namespace A075201.P1595674952613582782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075203 (n + 1) - (A075200 (n + 1) + A075199 (n + 1))

end

end A075201.P1595674952613582782

/-! ## A075201.P2823595509725839037

`A075205(n+1)-(A075204(n+1)+A075198(n+1))`
-/

namespace A075201.P2823595509725839037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075205 (n + 1) - (A075204 (n + 1) + A075198 (n + 1))

end

end A075201.P2823595509725839037

/-!
# A075202: Number of polyominoes with n cells that tile the plane by 180-degree rotation (Conway criterion).

The programs for A075202, there is no canonical definition to state claims against.
-/

/-! ## A075202.P10333418233006698346

`A075201(n+1)+A075200(n+1)`
-/

namespace A075202.P10333418233006698346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075201 (n + 1) + A075200 (n + 1)

end

end A075202.P10333418233006698346

/-! ## A075202.P14997260937355319542

`A075203(n+1)-A075199(n+1)`
-/

namespace A075202.P14997260937355319542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075203 (n + 1) - A075199 (n + 1)

end

end A075202.P14997260937355319542

/-! ## A075202.P4783816179974822026

`A075203(n+1)+A057428(n)*A075199(n+1)`
-/

namespace A075202.P4783816179974822026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075203 (n + 1) + A057428 n * A075199 (n + 1)

end

end A075202.P4783816179974822026

/-! ## A075202.P9194520039958031981

`A075203(n+1)+A075199(n+1)*A260196(n)`
-/

namespace A075202.P9194520039958031981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075203 (n + 1) + A075199 (n + 1) * A260196 n

end

end A075202.P9194520039958031981

/-! ## A075202.P16764648881958272973

`A075198(n+1)+A075201(n+1)-A075199(n+1)`
-/

namespace A075202.P16764648881958272973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075198 (n + 1) + (A075201 (n + 1) - A075199 (n + 1))

end

end A075202.P16764648881958272973

/-!
# A075203: Number of polyominoes with n cells that tile the plane by translation or by 180-degree rotation (Conway criterion).

The programs for A075203, there is no canonical definition to state claims against.
-/

/-! ## A075203.P8959621484611967071

`A075201(n+1)+A075198(n+1)`
-/

namespace A075203.P8959621484611967071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075201 (n + 1) + A075198 (n + 1)

end

end A075203.P8959621484611967071

/-! ## A075203.P10121989146627645571

`A075202(n+1)+A075199(n+1)`
-/

namespace A075203.P10121989146627645571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075202 (n + 1) + A075199 (n + 1)

end

end A075203.P10121989146627645571

/-! ## A075203.P1402645675708989161

`A075205(n+1)-A075204(n+1)`
-/

namespace A075203.P1402645675708989161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075205 (n + 1) - A075204 (n + 1)

end

end A075203.P1402645675708989161

/-! ## A075203.P7325472909456259427

`A075199(n+1)+A075201(n+1)+A075200(n+1)`
-/

namespace A075203.P7325472909456259427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075199 (n + 1) + (A075201 (n + 1) + A075200 (n + 1))

end

end A075203.P7325472909456259427

/-! ## A075203.P3862375247133159282

`A054359(n+1)-(A075206(n+1)+A075204(n+1))`
-/

namespace A075203.P3862375247133159282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054359 (n + 1) - (A075206 (n + 1) + A075204 (n + 1))

end

end A075203.P3862375247133159282

/-!
# A075204: Number of polyominoes with n cells that tile the plane isohedrally but not by translation or by 180-degree rotation (Conway criterion).

The programs for A075204, there is no canonical definition to state claims against.
-/

/-! ## A075204.P3415332782920560862

`A075205(n+1)-A075203(n+1)`
-/

namespace A075204.P3415332782920560862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075205 (n + 1) - A075203 (n + 1)

end

end A075204.P3415332782920560862

/-! ## A075204.P14358573663686078928

`A075205(C(n+1, n))%A075203(n+1)`
-/

namespace A075204.P14358573663686078928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075205 (Nat.choose (n + 1) n)) (A075203 (n + 1))

end

end A075204.P14358573663686078928

/-! ## A075204.P7435435530301249573

`A075205(A000027(n+1))%A075203(n+1)`
-/

namespace A075204.P7435435530301249573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075205 (A000027 (n + 1)).toNat) (A075203 (n + 1))

end

end A075204.P7435435530301249573

/-! ## A075204.P6474787174291619131

`A075205(A044922(n+1))%A075203(n+1)`
-/

namespace A075204.P6474787174291619131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075205 (A044922 (n + 1)).toNat) (A075203 (n + 1))

end

end A075204.P6474787174291619131

/-!
# A075205: Number of polyominoes with n cells that tile the plane isohedrally.

The programs for A075205, there is no canonical definition to state claims against.
-/

/-! ## A075205.P12550434701367742468

`A075204(n+1)+A075203(n+1)`
-/

namespace A075205.P12550434701367742468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075204 (n + 1) + A075203 (n + 1)

end

end A075205.P12550434701367742468

/-! ## A075205.P1526080770236839035

`A054359(n+1)-A075206(n+1)`
-/

namespace A075205.P1526080770236839035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054359 (n + 1) - A075206 (n + 1)

end

end A075205.P1526080770236839035

/-! ## A075205.P3942596047667009498

`A054359(n+1)+A057428(n)*A075206(n+1)`
-/

namespace A075205.P3942596047667009498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054359 (n + 1) + A057428 n * A075206 (n + 1)

end

end A075205.P3942596047667009498

/-! ## A075205.P12485061023910427265

`A054359(n+1)+A075206(n+1)*A260196(n)`
-/

namespace A075205.P12485061023910427265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054359 (n + 1) + A075206 (n + 1) * A260196 n

end

end A075205.P12485061023910427265

/-! ## A075205.P1329113322550425165

`Δ[A173271(n)]-(A075206(n+1)+A054360(n+1))`
-/

namespace A075205.P1329113322550425165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A075206 (n + 1) + A054360 (n + 1))

end

end A075205.P1329113322550425165

/-!
# A075206: Number of anisohedral polyominoes with n cells.

The programs for A075206, there is no canonical definition to state claims against.
-/

/-! ## A075206.P3936208373389588678

`A054359(n+1)-A075205(n+1)`
-/

namespace A075206.P3936208373389588678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054359 (n + 1) - A075205 (n + 1)

end

end A075206.P3936208373389588678

/-! ## A075206.P13148494054915498824

`A054359(C(n+1, n))%A075205(n+1)`
-/

namespace A075206.P13148494054915498824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054359 (Nat.choose (n + 1) n)) (A075205 (n + 1))

end

end A075206.P13148494054915498824

/-! ## A075206.P3892115992164721232

`A054359(A000027(n+1))%A075205(n+1)`
-/

namespace A075206.P3892115992164721232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054359 (A000027 (n + 1)).toNat) (A075205 (n + 1))

end

end A075206.P3892115992164721232

/-! ## A075206.P11582998052827771741

`A054359(A044922(n+1))%A075205(n+1)`
-/

namespace A075206.P11582998052827771741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054359 (A044922 (n + 1)).toNat) (A075205 (n + 1))

end

end A075206.P11582998052827771741

/-!
# A075207: Number of polyhexes with n cells that tile the plane by translation.

The programs for A075207, there is no canonical definition to state claims against.
-/

/-! ## A075207.P10706803811161230687

`A075209(n+1)+A075208(n+1)`
-/

namespace A075207.P10706803811161230687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075209 (n + 1) + A075208 (n + 1)

end

end A075207.P10706803811161230687

/-! ## A075207.P1983319493038399598

`A075212(n+1)-A075210(n+1)`
-/

namespace A075207.P1983319493038399598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075212 (n + 1) - A075210 (n + 1)

end

end A075207.P1983319493038399598

/-! ## A075207.P8205479575041874129

`A075212(n+1)+A075210(n+1)*A260196(n)`
-/

namespace A075207.P8205479575041874129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075212 (n + 1) + A075210 (n + 1) * A260196 n

end

end A075207.P8205479575041874129

/-! ## A075207.P7133359994182552918

`A075208(n+1)+A075211(n+1)-A075210(n+1)`
-/

namespace A075207.P7133359994182552918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075208 (n + 1) + (A075211 (n + 1) - A075210 (n + 1))

end

end A075207.P7133359994182552918

/-! ## A075207.P5398992751689319218

`A075209(n+1)+A075212(n+1)-A075211(n+1)`
-/

namespace A075207.P5398992751689319218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075209 (n + 1) + (A075212 (n + 1) - A075211 (n + 1))

end

end A075207.P5398992751689319218

/-!
# A075208: Number of polyhexes with n cells that tile the plane by translation but not by 180-degree rotation (Conway criterion).

The programs for A075208, there is no canonical definition to state claims against.
-/

/-! ## A075208.P1484429212550031627

`A075207(n+1)-A075209(n+1)`
-/

namespace A075208.P1484429212550031627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075207 (n + 1) - A075209 (n + 1)

end

end A075208.P1484429212550031627

/-! ## A075208.P798027373061327724

`A075212(n+1)-A075211(n+1)`
-/

namespace A075208.P798027373061327724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075212 (n + 1) - A075211 (n + 1)

end

end A075208.P798027373061327724

/-! ## A075208.P17187881389794777824

`A075212(A000027(n+1))%A075211(n+1)`
-/

namespace A075208.P17187881389794777824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075212 (A000027 (n + 1)).toNat) (A075211 (n + 1))

end

end A075208.P17187881389794777824

/-! ## A075208.P16644173980144172503

`A075212(A044922(n+1))%A075211(n+1)`
-/

namespace A075208.P16644173980144172503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075212 (A044922 (n + 1)).toNat) (A075211 (n + 1))

end

end A075208.P16644173980144172503

/-! ## A075208.P10148830492928903288

`A075212(A056192(n+1))%A075211(n+1)`
-/

namespace A075208.P10148830492928903288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075212 (A056192 (n + 1)).toNat) (A075211 (n + 1))

end

end A075208.P10148830492928903288

/-!
# A075209: Number of polyhexes with n cells that tile the plane both by translation and by 180-degree rotation (Conway criterion).

The programs for A075209, there is no canonical definition to state claims against.
-/

/-! ## A075209.P5739787247286967152

`A075207(n+1)-A075208(n+1)`
-/

namespace A075209.P5739787247286967152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075207 (n + 1) - A075208 (n + 1)

end

end A075209.P5739787247286967152

/-! ## A075209.P16611598954205703511

`A075211(n+1)-A075210(n+1)`
-/

namespace A075209.P16611598954205703511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075211 (n + 1) - A075210 (n + 1)

end

end A075209.P16611598954205703511

/-! ## A075209.P4135757502882366561

`A075207(n+1)+A057428(n)*A075208(n+1)`
-/

namespace A075209.P4135757502882366561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075207 (n + 1) + A057428 n * A075208 (n + 1)

end

end A075209.P4135757502882366561

/-! ## A075209.P3584447743596993595

`A075211(n+1)+A057428(n)*A075210(n+1)`
-/

namespace A075209.P3584447743596993595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075211 (n + 1) + A057428 n * A075210 (n + 1)

end

end A075209.P3584447743596993595

/-! ## A075209.P3706495319173751005

`A075207(n+1)+A075211(n+1)-A075212(n+1)`
-/

namespace A075209.P3706495319173751005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075207 (n + 1) + (A075211 (n + 1) - A075212 (n + 1))

end

end A075209.P3706495319173751005

/-!
# A075210: Number of polyhexes with n cells that tile the plane by 180-degree rotation (Conway criterion) but not by translation.

The programs for A075210, there is no canonical definition to state claims against.
-/

/-! ## A075210.P5383710781145415060

`A075211(n+1)-A075209(n+1)`
-/

namespace A075210.P5383710781145415060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075211 (n + 1) - A075209 (n + 1)

end

end A075210.P5383710781145415060

/-! ## A075210.P17373413930952241629

`A075212(n+1)-A075207(n+1)`
-/

namespace A075210.P17373413930952241629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075212 (n + 1) - A075207 (n + 1)

end

end A075210.P17373413930952241629

/-! ## A075210.P3731972988798563878

`A075208(n+1)+A075211(n+1)-A075207(n+1)`
-/

namespace A075210.P3731972988798563878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075208 (n + 1) + (A075211 (n + 1) - A075207 (n + 1))

end

end A075210.P3731972988798563878

/-! ## A075210.P8711592326939376493

`A075212(n+1)-(A075209(n+1)+A075208(n+1))`
-/

namespace A075210.P8711592326939376493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075212 (n + 1) - (A075209 (n + 1) + A075208 (n + 1))

end

end A075210.P8711592326939376493

/-! ## A075210.P6456246167507420706

`A075214(n+1)-(A075213(n+1)+A075207(n+1))`
-/

namespace A075210.P6456246167507420706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075214 (n + 1) - (A075213 (n + 1) + A075207 (n + 1))

end

end A075210.P6456246167507420706

/-!
# A075211: Number of polyhexes with n cells that tile the plane by 180-degree rotation (Conway criterion).

The programs for A075211, there is no canonical definition to state claims against.
-/

/-! ## A075211.P1657892266854228253

`A075210(n+1)+A075209(n+1)`
-/

namespace A075211.P1657892266854228253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075210 (n + 1) + A075209 (n + 1)

end

end A075211.P1657892266854228253

/-! ## A075211.P10352260603390007540

`A075212(n+1)-A075208(n+1)`
-/

namespace A075211.P10352260603390007540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075212 (n + 1) - A075208 (n + 1)

end

end A075211.P10352260603390007540

/-! ## A075211.P3415783975814847963

`A075212(n+1)+A057428(n)*A075208(n+1)`
-/

namespace A075211.P3415783975814847963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075212 (n + 1) + A057428 n * A075208 (n + 1)

end

end A075211.P3415783975814847963

/-! ## A075211.P4815031673721397249

`A075212(n+1)+A075208(n+1)*A260196(n)`
-/

namespace A075211.P4815031673721397249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075212 (n + 1) + A075208 (n + 1) * A260196 n

end

end A075211.P4815031673721397249

/-! ## A075211.P4205556878600124648

`A075207(n+1)+A075210(n+1)-A075208(n+1)`
-/

namespace A075211.P4205556878600124648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075207 (n + 1) + (A075210 (n + 1) - A075208 (n + 1))

end

end A075211.P4205556878600124648

/-!
# A075212: Number of polyhexes with n cells that tile the plane by translation or by 180-degree rotation (Conway criterion).

The programs for A075212, there is no canonical definition to state claims against.
-/

/-! ## A075212.P7306669234843102088

`A075210(n+1)+A075207(n+1)`
-/

namespace A075212.P7306669234843102088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075210 (n + 1) + A075207 (n + 1)

end

end A075212.P7306669234843102088

/-! ## A075212.P16784750016468468433

`A075211(n+1)+A075208(n+1)`
-/

namespace A075212.P16784750016468468433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075211 (n + 1) + A075208 (n + 1)

end

end A075212.P16784750016468468433

/-! ## A075212.P9566790763812172130

`A075214(n+1)-A075213(n+1)`
-/

namespace A075212.P9566790763812172130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075214 (n + 1) - A075213 (n + 1)

end

end A075212.P9566790763812172130

/-! ## A075212.P7601614908439827016

`A075214(n+1)+A075213(n+1)*A260196(n)`
-/

namespace A075212.P7601614908439827016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075214 (n + 1) + A075213 (n + 1) * A260196 n

end

end A075212.P7601614908439827016

/-! ## A075212.P12297714307694301722

`A075208(n+1)+A075210(n+1)+A075209(n+1)`
-/

namespace A075212.P12297714307694301722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075208 (n + 1) + (A075210 (n + 1) + A075209 (n + 1))

end

end A075212.P12297714307694301722

/-!
# A075213: Number of polyhexes with n cells that tile the plane isohedrally but not by translation or by 180-degree rotation (Conway criterion).

The programs for A075213, there is no canonical definition to state claims against.
-/

/-! ## A075213.P10695734967598810704

`A075214(n+1)-A075212(n+1)`
-/

namespace A075213.P10695734967598810704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075214 (n + 1) - A075212 (n + 1)

end

end A075213.P10695734967598810704

/-! ## A075213.P11975551766183420660

`A075214(A000027(n+1))%A075212(n+1)`
-/

namespace A075213.P11975551766183420660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075214 (A000027 (n + 1)).toNat) (A075212 (n + 1))

end

end A075213.P11975551766183420660

/-! ## A075213.P7376998262315866173

`A075214(A044922(n+1))%A075212(n+1)`
-/

namespace A075213.P7376998262315866173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075214 (A044922 (n + 1)).toNat) (A075212 (n + 1))

end

end A075213.P7376998262315866173

/-! ## A075213.P7039045860794348431

`A075214(A064598(n+1))%A075212(n+1)`
-/

namespace A075213.P7039045860794348431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075214 (A064598 (n + 1)).toNat) (A075212 (n + 1))

end

end A075213.P7039045860794348431

/-!
# A075214: Number of polyhexes with n cells that tile the plane isohedrally.

The programs for A075214, there is no canonical definition to state claims against.
-/

/-! ## A075214.P14614839288184847847

`A075213(n+1)+A075212(n+1)`
-/

namespace A075214.P14614839288184847847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075213 (n + 1) + A075212 (n + 1)

end

end A075214.P14614839288184847847

/-! ## A075214.P13299108517245637830

`A070766(n+1)-A075215(n+1)`
-/

namespace A075214.P13299108517245637830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070766 (n + 1) - A075215 (n + 1)

end

end A075214.P13299108517245637830

/-! ## A075214.P14043548147553114668

`A070766(n+1)+A057428(n)*A075215(n+1)`
-/

namespace A075214.P14043548147553114668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070766 (n + 1) + A057428 n * A075215 (n + 1)

end

end A075214.P14043548147553114668

/-! ## A075214.P110530763746945850

`A070766(n+1)+A075215(n+1)*A260196(n)`
-/

namespace A075214.P110530763746945850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070766 (n + 1) + A075215 (n + 1) * A260196 n

end

end A075214.P110530763746945850

/-! ## A075214.P13280921982454334535

`A075207(n+1)+A075213(n+1)+A075210(n+1)`
-/

namespace A075214.P13280921982454334535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075207 (n + 1) + (A075213 (n + 1) + A075210 (n + 1))

end

end A075214.P13280921982454334535

/-!
# A075215: Number of anisohedral polyhexes with n cells.

The programs for A075215, there is no canonical definition to state claims against.
-/

/-! ## A075215.P6003139605613719338

`A070766(n+1)-A075214(n+1)`
-/

namespace A075215.P6003139605613719338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070766 (n + 1) - A075214 (n + 1)

end

end A075215.P6003139605613719338

/-! ## A075215.P3948728225728957756

`A070766(A000027(n+1))%A075214(n+1)`
-/

namespace A075215.P3948728225728957756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070766 (A000027 (n + 1)).toNat) (A075214 (n + 1))

end

end A075215.P3948728225728957756

/-! ## A075215.P6587994021788904963

`A070766(A028310(n+1))%A075214(n+1)`
-/

namespace A075215.P6587994021788904963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070766 (A028310 (n + 1)).toNat) (A075214 (n + 1))

end

end A075215.P6587994021788904963

/-! ## A075215.P2551667103885019883

`A070766(A044922(n+1))%A075214(n+1)`
-/

namespace A075215.P2551667103885019883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070766 (A044922 (n + 1)).toNat) (A075214 (n + 1))

end

end A075215.P2551667103885019883

/-! ## A075215.P13458834327609641431

`A070766(A064598(n+1))%A075214(n+1)`
-/

namespace A075215.P13458834327609641431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070766 (A064598 (n + 1)).toNat) (A075214 (n + 1))

end

end A075215.P13458834327609641431

/-!
# A075216: Number of polyiamonds with 2n cells that tile the plane by translation.

The programs for A075216, there is no canonical definition to state claims against.
-/

/-! ## A075216.P4833892206490190201

`A075218(n+1)+A075217(n+1)`
-/

namespace A075216.P4833892206490190201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075218 (n + 1) + A075217 (n + 1)

end

end A075216.P4833892206490190201

/-! ## A075216.P4512352656986326857

`record[A075221(n+2)-A075219(n+2)]`
-/

namespace A075216.P4512352656986326857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075221 (n + 2) - A075219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075216.P4512352656986326857

/-! ## A075216.P13634009738805167775

`A075221(2*(n+1))-A075219(2*(n+1))`
-/

namespace A075216.P13634009738805167775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075221 (2 * (n + 1)) - A075219 (2 * (n + 1))

end

end A075216.P13634009738805167775

/-! ## A075216.P13889734732944496538

`A075217(n+1)+record[A075220(n+2)-A075219(n+2)]`
-/

namespace A075216.P13889734732944496538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075220 (n + 2) - A075219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075217 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075216.P13889734732944496538

/-! ## A075216.P5050516946526996287

`A075217(n+1)+A075220(2*(n+1))-A075219(2*(n+1))`
-/

namespace A075216.P5050516946526996287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075217 (n + 1) + (A075220 (2 * (n + 1)) - A075219 (2 * (n + 1)))

end

end A075216.P5050516946526996287

/-!
# A075217: Number of polyiamonds with 2n cells that tile the plane by translation but not by 180-degree rotation (Conway criterion).

The programs for A075217, there is no canonical definition to state claims against.
-/

/-! ## A075217.P17831239321750554353

`A075216(n+1)-A075218(n+1)`
-/

namespace A075217.P17831239321750554353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075216 (n + 1) - A075218 (n + 1)

end

end A075217.P17831239321750554353

/-! ## A075217.P12926650580355668968

`A075221(2*(n+1))-A075220(2*(n+1))`
-/

namespace A075217.P12926650580355668968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075221 (2 * (n + 1)) - A075220 (2 * (n + 1))

end

end A075217.P12926650580355668968

/-! ## A075217.P5878375147587877156

`A075221(2*n+2)%A075220(2*n+2)`
-/

namespace A075217.P5878375147587877156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075221 (2 * n + 2)) (A075220 (2 * n + 2))

end

end A075217.P5878375147587877156

/-! ## A075217.P10924704397581132238

`A075216(n+1)-record[A075220(n+2)-A075219(n+2)]`
-/

namespace A075217.P10924704397581132238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075220 (n + 2) - A075219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075216 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075217.P10924704397581132238

/-! ## A075217.P17217641240175260407

`record[A075221(n+2)-A075219(n+2)]-A075218(n+1)`
-/

namespace A075217.P17217641240175260407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075221 (n + 2) - A075219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A075218 (n + 1)

end

end A075217.P17217641240175260407

/-!
# A075218: Number of polyiamonds with 2n cells that tile the plane both by translation and by 180-degree rotation (Conway criterion).

The programs for A075218, there is no canonical definition to state claims against.
-/

/-! ## A075218.P6862494163297347703

`A075216(n+1)-A075217(n+1)`
-/

namespace A075218.P6862494163297347703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075216 (n + 1) - A075217 (n + 1)

end

end A075218.P6862494163297347703

/-! ## A075218.P8065508303854133524

`record[A075220(n+2)-A075219(n+2)]`
-/

namespace A075218.P8065508303854133524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075220 (n + 2) - A075219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075218.P8065508303854133524

/-! ## A075218.P8045564898623803137

`A075220(2*(n+1))-A075219(2*(n+1))`
-/

namespace A075218.P8045564898623803137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075220 (2 * (n + 1)) - A075219 (2 * (n + 1))

end

end A075218.P8045564898623803137

/-! ## A075218.P7356191866634920711

`A075216(n+1)+A057428(n)*A075217(n+1)`
-/

namespace A075218.P7356191866634920711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075216 (n + 1) + A057428 n * A075217 (n + 1)

end

end A075218.P7356191866634920711

/-! ## A075218.P17840743158501283281

`record[A075221(n+2)-A075219(n+2)]-A075217(n+1)`
-/

namespace A075218.P17840743158501283281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075221 (n + 2) - A075219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A075217 (n + 1)

end

end A075218.P17840743158501283281

/-!
# A075220: Number of polyiamonds with n cells that tile the plane by 180-degree rotation (Conway criterion).

The programs for A075220, there is no canonical definition to state claims against.
-/

/-! ## A075220.P17979706710646402892

`A075221(n+1)-A030315(A000105(n))`
-/

namespace A075220.P17979706710646402892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075221 (n + 1) - A030315 (A000105 n).toNat

end

end A075220.P17979706710646402892

/-! ## A075220.P3810407932892310224

`A075221(n+1)-A025465(A173271(n))`
-/

namespace A075220.P3810407932892310224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075221 (n + 1) - A025465 (A173271 n).toNat

end

end A075220.P3810407932892310224

/-! ## A075220.P14652165332773539958

`A075221(n+1)-A295659(A001550(n))`
-/

namespace A075220.P14652165332773539958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075221 (n + 1) - A295659 (A001550 n).toNat

end

end A075220.P14652165332773539958

/-! ## A075220.P2060097145652286801

`A075221(A239218(n+1))-A086016(n)`
-/

namespace A075220.P2060097145652286801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075221 (A239218 (n + 1)).toNat - A086016 n

end

end A075220.P2060097145652286801

/-! ## A075220.P10022547588884730780

`A178798(A066983(n+1))+A075221(n+1)`
-/

namespace A075220.P10022547588884730780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A066983 (n + 1)).toNat + A075221 (n + 1)

end

end A075220.P10022547588884730780

/-!
# A075221: Number of polyiamonds with n cells that tile the plane by translation or by 180-degree rotation (Conway criterion).

The programs for A075221, there is no canonical definition to state claims against.
-/

/-! ## A075221.P17965689039758460929

`A075223(n+1)-A075222(n+1)`
-/

namespace A075221.P17965689039758460929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075223 (n + 1) - A075222 (n + 1)

end

end A075221.P17965689039758460929

/-! ## A075221.P17455441081243006482

`A075223(n+1)+A057428(n)*A075222(n+1)`
-/

namespace A075221.P17455441081243006482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075223 (n + 1) + A057428 n * A075222 (n + 1)

end

end A075221.P17455441081243006482

/-! ## A075221.P11210658309007424729

`A075223(n+1)+A075222(n+1)*A260196(n)`
-/

namespace A075221.P11210658309007424729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075223 (n + 1) + A075222 (n + 1) * A260196 n

end

end A075221.P11210658309007424729

/-! ## A075221.P15200956179394737471

`A071332(n+1)-(A075224(n+1)+A075222(n+1))`
-/

namespace A075221.P15200956179394737471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071332 (n + 1) - (A075224 (n + 1) + A075222 (n + 1))

end

end A075221.P15200956179394737471

/-! ## A075221.P9372038488415832288

`A000577(n+1)-(A075224(n+1)+A071333(n+1))-A075222(n+1)`
-/

namespace A075221.P9372038488415832288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - (A075224 (n + 1) + A071333 (n + 1)) - A075222 (n + 1)

end

end A075221.P9372038488415832288

/-!
# A075222: Number of polyiamonds with n cells that tile the plane isohedrally but not by translation or by 180-degree rotation (Conway criterion).

The programs for A075222, there is no canonical definition to state claims against.
-/

/-! ## A075222.P14387220252264216575

`A075223(n+1)-A075221(n+1)`
-/

namespace A075222.P14387220252264216575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075223 (n + 1) - A075221 (n + 1)

end

end A075222.P14387220252264216575

/-! ## A075222.P14550926100278894158

`A075223(A000027(n+1))%A075221(n+1)`
-/

namespace A075222.P14550926100278894158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075223 (A000027 (n + 1)).toNat) (A075221 (n + 1))

end

end A075222.P14550926100278894158

/-! ## A075222.P9263101529236121288

`A075223(A044922(n+1))%A075221(n+1)`
-/

namespace A075222.P9263101529236121288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075223 (A044922 (n + 1)).toNat) (A075221 (n + 1))

end

end A075222.P9263101529236121288

/-! ## A075222.P15167661645870631761

`A075223(n+1)%A075221(A090108(n+1))`
-/

namespace A075222.P15167661645870631761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075223 (n + 1)) (A075221 (A090108 (n + 1)).toNat)

end

end A075222.P15167661645870631761

/-!
# A075223: Number of polyiamonds with n cells that tile the plane isohedrally.

The programs for A075223, there is no canonical definition to state claims against.
-/

/-! ## A075223.P17164876106811126872

`A075222(n+1)+A075221(n+1)`
-/

namespace A075223.P17164876106811126872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075222 (n + 1) + A075221 (n + 1)

end

end A075223.P17164876106811126872

/-! ## A075223.P17452669926222718384

`A071332(n+1)-A075224(n+1)`
-/

namespace A075223.P17452669926222718384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071332 (n + 1) - A075224 (n + 1)

end

end A075223.P17452669926222718384

/-! ## A075223.P16277408862450762191

`A071332(n+1)+A057428(n)*A075224(n+1)`
-/

namespace A075223.P16277408862450762191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071332 (n + 1) + A057428 n * A075224 (n + 1)

end

end A075223.P16277408862450762191

/-! ## A075223.P17233164276232184748

`A071332(n+1)+A075224(n+1)*A260196(n)`
-/

namespace A075223.P17233164276232184748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071332 (n + 1) + A075224 (n + 1) * A260196 n

end

end A075223.P17233164276232184748

/-! ## A075223.P5120996449897230180

`A000577(n+1)-(A075224(n+1)+A071333(n+1))`
-/

namespace A075223.P5120996449897230180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - (A075224 (n + 1) + A071333 (n + 1))

end

end A075223.P5120996449897230180

/-!
# A075224: Number of anisohedral polyiamonds with n cells.

The programs for A075224, there is no canonical definition to state claims against.
-/

/-! ## A075224.P13838410091892147554

`A071332(n+1)-A075223(n+1)`
-/

namespace A075224.P13838410091892147554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071332 (n + 1) - A075223 (n + 1)

end

end A075224.P13838410091892147554

/-! ## A075224.P2744052177568445094

`A071332(A000027(n+1))%A075223(n+1)`
-/

namespace A075224.P2744052177568445094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071332 (A000027 (n + 1)).toNat) (A075223 (n + 1))

end

end A075224.P2744052177568445094

/-! ## A075224.P14822472202536705296

`A071332(A044922(n+1))%A075223(n+1)`
-/

namespace A075224.P14822472202536705296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071332 (A044922 (n + 1)).toNat) (A075223 (n + 1))

end

end A075224.P14822472202536705296

/-! ## A075224.P566245279927303432

`A071332(n+1)%A075223(A090108(n+1))`
-/

namespace A075224.P566245279927303432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071332 (n + 1)) (A075223 (A090108 (n + 1)).toNat)

end

end A075224.P566245279927303432

/-!
# A075225: Expansion of 2-AGM(1,1-8x) (where AGM denotes the arithmetic-geometric mean).

The programs for A075225, there is no canonical definition to state claims against.
-/

/-! ## A075225.P6393546753114351870

`abs(A060691(n))`
-/

namespace A075225.P6393546753114351870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060691 n|

end

end A075225.P6393546753114351870

/-! ## A075225.P1527735047252878570

`abs(A323385(n)/2^n)`
-/

namespace A075225.P1527735047252878570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A323385 n : ℚ) / (2 ^ n : ℚ)|

end

end A075225.P1527735047252878570

/-! ## A075225.P3643360723484844751

`lcm(A000034(n), A060691(n))`
-/

namespace A075225.P3643360723484844751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A060691 n)

end

end A075225.P3643360723484844751

/-! ## A075225.P17217589817125358731

`lcm(-A060691(n), A033999(n))`
-/

namespace A075225.P17217589817125358731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A060691 n) (A033999 n)

end

end A075225.P17217589817125358731

/-! ## A075225.P17446414347757613258

`floor(2/A020922(n)-A060691(n))`
-/

namespace A075225.P17446414347757613258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A020922 n : ℚ) - (A060691 n : ℚ)⌋

end

end A075225.P17446414347757613258

/-!
# A075226: Largest prime in the numerator of the 2^n sums generated from the set 1, 1/2, 1/3,..., 1/n.

The programs for A075226, there is no canonical definition to state claims against.
-/

/-! ## A075226.P4032570607658380471

`A106446(p?[∑{d}[n, #]])`
-/

namespace A075226.P4032570607658380471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106446 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A075226.P4032570607658380471

/-!
# A075227: Smallest odd prime not occurring in the numerator of any of the 2^n subset sums generated from the set 1/1, 1/2, 1/3, ..., 1/n.

The programs for A075227, there is no canonical definition to state claims against.
-/

/-! ## A075227.P16045747283295641240

`A171637(A058056(n+1)+A058043(n+2))`
-/

namespace A075227.P16045747283295641240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171637 (A058056 (n + 1) + A058043 (n + 2)).toNat

end

end A075227.P16045747283295641240

/-!
# A075229: Numbers k such that k^6 is an interprime = average of two successive primes.

The programs for A075229, there is no canonical definition to state claims against.
-/

/-! ## A075229.P7678455310090195432

`record[A056926(root(A234240(n+1), 3))]`
-/

namespace A075229.P7678455310090195432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway ((A234240 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075229.P7678455310090195432

/-! ## A075229.P6093138083718223977

`record[A037213(A075191(n+1))]`
-/

namespace A075229.P6093138083718223977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A075191 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075229.P6093138083718223977

/-! ## A075229.P16560038147827742721

`record[A037213(root(A234240(n+1), 3))]`
-/

namespace A075229.P16560038147827742721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (SequenceMachineLib.roundAway ((A234240 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075229.P16560038147827742721

/-!
# A075231: Numbers k such that k^8 is an interprime = average of two successive primes.

The programs for A075231, there is no canonical definition to state claims against.
-/

/-! ## A075231.P6420265162244606500

`sqrt(∩[A075192(n+1), n²])`
-/

namespace A075231.P6420265162244606500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A075231.P6420265162244606500

/-!
# A075235: Primes whose base 5 reversal is also prime.

The programs for A075235, there is no canonical definition to state claims against.
-/

/-! ## A075235.P4679600619884501859

`p?[(n+1)*(A000005(A030104(n+1))-1)]`
-/

namespace A075235.P4679600619884501859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000005 (A030104 (n + 1)).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075235.P4679600619884501859

/-! ## A075235.P17286924079364684037

`A030104(p?[A030104(A000040(n+1))])`
-/

namespace A075235.P17286924079364684037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075235.P17286924079364684037

/-! ## A075235.P7783673236512647235

`A030104(p?[A030104(A005180(n+1))])`
-/

namespace A075235.P7783673236512647235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075235.P7783673236512647235

/-! ## A075235.P8010090210804468982

`A030104(p?[A030104(A008578(n+1))])`
-/

namespace A075235.P8010090210804468982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075235.P8010090210804468982

/-! ## A075235.P2808437223717023914

`A030104(p?[A030104(A033946(n+1))])`
-/

namespace A075235.P2808437223717023914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (A033946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075235.P2808437223717023914

/-! ## A075235.P5013683575584350959

`A030104(p?[A105700(n)²*A030104(n)])`
-/

namespace A075235.P5013683575584350959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2 * A030104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075235.P5013683575584350959

/-! ## A075235.P4114893903138737949

`p?[n*A105700(A030104(n))]`
-/

namespace A075235.P4114893903138737949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105700 (A030104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075235.P4114893903138737949

/-! ## A075235.P17746304136148723186

`eq[A032741(A030104(n)), A327642(n)]`
-/

namespace A075235.P17746304136148723186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A030104 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075235.P17746304136148723186

/-! ## A075235.P12499803220859733308

`eq[1, A032741(A030104(n))*A032741(n)]`
-/

namespace A075235.P12499803220859733308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A030104 n).toNat * A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075235.P12499803220859733308

/-! ## A075235.P14047986338174153287

`A030104(p?[A003415(n)*A030104(n)])`
-/

namespace A075235.P14047986338174153287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A030104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075235.P14047986338174153287

/-!
# A075236: Primes whose base 6 reversal is also prime.

The programs for A075236, there is no canonical definition to state claims against.
-/

/-! ## A075236.P3162692037980761543

`p?[(n+1)*A001222(A030105(n+1))]`
-/

namespace A075236.P3162692037980761543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A030105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075236.P3162692037980761543

/-! ## A075236.P14373196073623409878

`p?[n*A032741(A030105(n))]`
-/

namespace A075236.P14373196073623409878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A030105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075236.P14373196073623409878

/-! ## A075236.P8703249127286179063

`A030105(p?[A030105(A000040(n+1))])`
-/

namespace A075236.P8703249127286179063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075236.P8703249127286179063

/-! ## A075236.P3089093185850133276

`A030105(p?[A030105(A008578(n+1))])`
-/

namespace A075236.P3089093185850133276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075236.P3089093185850133276

/-! ## A075236.P13938105145834173452

`A030105(p?[A010051(n+1)*A030105(n+1)])`
-/

namespace A075236.P13938105145834173452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A030105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075236.P13938105145834173452

/-!
# A075237: Primes whose base 7 reversal is also prime.

The programs for A075237, there is no canonical definition to state claims against.
-/

/-! ## A075237.P18261676357460647241

`p?[(n+1)*A001222(A030106(n+1))]`
-/

namespace A075237.P18261676357460647241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A030106 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075237.P18261676357460647241

/-! ## A075237.P4744047484964905314

`A030106(p?[A030106(A000040(n+1))])`
-/

namespace A075237.P4744047484964905314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075237.P4744047484964905314

/-! ## A075237.P5601455009966159048

`A030106(p?[A030106(A005180(n+1))])`
-/

namespace A075237.P5601455009966159048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075237.P5601455009966159048

/-! ## A075237.P11470263763249476727

`A030106(p?[A030106(A008578(n+1))])`
-/

namespace A075237.P11470263763249476727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075237.P11470263763249476727

/-! ## A075237.P2974939335310087775

`A030106(p?[A030106(A061397(n+1))])`
-/

namespace A075237.P2974939335310087775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075237.P2974939335310087775

/-! ## A075237.P15541244490070417192

`p?[n*A032741(A030106(n))]`
-/

namespace A075237.P15541244490070417192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A030106 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075237.P15541244490070417192

/-!
# A075238: Primes whose base 8 reversal is also prime.

The programs for A075238, there is no canonical definition to state claims against.
-/

/-! ## A075238.P18111316647899461697

`p?[(n+1)*(A000005(A030107(n+1))-1)]`
-/

namespace A075238.P18111316647899461697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000005 (A030107 (n + 1)).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075238.P18111316647899461697

/-! ## A075238.P9104719980820874025

`p?[n*A105700(A030107(n))]`
-/

namespace A075238.P9104719980820874025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105700 (A030107 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075238.P9104719980820874025

/-! ## A075238.P10711661850742334080

`A030107(p?[A030107(A000040(n+1))])`
-/

namespace A075238.P10711661850742334080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075238.P10711661850742334080

/-! ## A075238.P15393636117625966166

`A030107(p?[A030107(A008578(n+1))])`
-/

namespace A075238.P15393636117625966166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075238.P15393636117625966166

/-! ## A075238.P9115259516818477320

`A030107(p?[A030107(A061397(n+1))])`
-/

namespace A075238.P9115259516818477320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075238.P9115259516818477320

/-! ## A075238.P3687291228417805490

`A030107(p?[A030107(A089026(n+1))])`
-/

namespace A075238.P3687291228417805490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075238.P3687291228417805490

/-!
# A075239: Primes whose base 9 reversal is also prime.

The programs for A075239, there is no canonical definition to state claims against.
-/

/-! ## A075239.P741737507199015484

`eq[A074206(A264979(n)), A210442(n)]`
-/

namespace A075239.P741737507199015484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A264979 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075239.P741737507199015484

/-! ## A075239.P15155646149734346462

`∩[A040990(n+1), A334966(n+1)]`
-/

namespace A075239.P15155646149734346462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075239.P15155646149734346462

/-! ## A075239.P14796060223187346901

`A256484(lt[A105623(n), A330060(3*n+1)])`
-/

namespace A075239.P14796060223187346901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075239.P14796060223187346901

/-! ## A075239.P15102162382656721749

`A255073(A077168(n))`
-/

namespace A075239.P15102162382656721749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255073 (A077168 n).toNat

end

end A075239.P15102162382656721749

/-! ## A075239.P12052878898315307991

`∩[A028785(n+1), A255073(n+1)]`
-/

namespace A075239.P12052878898315307991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075239.P12052878898315307991

/-!
# A075242: Least base for which the n-th composite number whose reversal in that base is a prime, or zero if impossible.

The programs for A075242, there is no canonical definition to state claims against.
-/

/-! ## A075242.P3843648142997391764

`A227864(Δ[A053767(n)])`
-/

namespace A075242.P3843648142997391764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 (f1 (n + 1) - f1 n).toNat

end

end A075242.P3843648142997391764

/-! ## A075242.P3515458546444411885

`A227864(A002808(n+1))`
-/

namespace A075242.P3515458546444411885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 (A002808 (n + 1)).toNat

end

end A075242.P3515458546444411885

/-! ## A075242.P15981171915052464213

`A227864(A056653(n+1))`
-/

namespace A075242.P15981171915052464213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 (A056653 (n + 1)).toNat

end

end A075242.P15981171915052464213

/-! ## A075242.P2485249992342299560

`A227864(A018252(n+2))`
-/

namespace A075242.P2485249992342299560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 (A018252 (n + 2)).toNat

end

end A075242.P2485249992342299560

/-! ## A075242.P16552155504221384996

`A227864(A053767(n+1)-A053767(n))`
-/

namespace A075242.P16552155504221384996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 (A053767 (n + 1) - A053767 n).toNat

end

end A075242.P16552155504221384996

/-!
# A075244: Least number requiring the base n to produce a prime by base reversal.

The programs for A075244, there is no canonical definition to state claims against.
-/

/-! ## A075244.P2123112219641524361

`A320273(A066195(n))`
-/

namespace A075244.P2123112219641524361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320273 (A066195 n).toNat

end

end A075244.P2123112219641524361

/-!
# A075245: x-value of the solution (x,y,z) to 4/n = 1/x + 1/y + 1/z satisfying 0 < x < y < z and having the largest z-value. The y and z components are in A075246 and A075247.

The programs for A075245, there is no canonical definition to state claims against.
-/

/-! ## A075245.P1143549360023807993

`A257844(A335668(2*(n+1)))+A257839(n+3)`
-/

namespace A075245.P1143549360023807993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257844 (A335668 (2 * (n + 1))).toNat + A257839 (n + 3)

end

end A075245.P1143549360023807993

/-! ## A075245.P5695446593136493083

`A257839(n+3)+A008683(A123296(n+4))`
-/

namespace A075245.P5695446593136493083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (n + 3) + A008683 (A123296 (n + 4)).toNat

end

end A075245.P5695446593136493083

/-! ## A075245.P11112823062970909106

`A257839(n+3)+A000007(A132828(3*n+2))`
-/

namespace A075245.P11112823062970909106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (n + 3) + A000007 (A132828 (3 * n + 2)).toNat

end

end A075245.P11112823062970909106

/-! ## A075245.P18070711835445339235

`A295316(A000290(3*n+2))+A257839(n+3)`
-/

namespace A075245.P18070711835445339235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (A000290 (3 * n + 2)).toNat + A257839 (n + 3)

end

end A075245.P18070711835445339235

/-! ## A075245.P6850802430993799329

`A001221(A146348(n+1))*A257839(n+3)`
-/

namespace A075245.P6850802430993799329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A146348 (n + 1)).toNat * A257839 (n + 3)

end

end A075245.P6850802430993799329

/-! ## A075245.P8276008087205956462

`A257839(n+3)%A073488(A319567(n))`
-/

namespace A075245.P8276008087205956462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257839 (n + 3)) (A073488 (A319567 n).toNat)

end

end A075245.P8276008087205956462

/-! ## A075245.P18097232492162982562

`A257839(n+3)*A319567(A318450(n+1))`
-/

namespace A075245.P18097232492162982562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (n + 3) * A319567 (A318450 (n + 1)).toNat

end

end A075245.P18097232492162982562

/-! ## A075245.P4898928769854416725

`A257839(n+3)+A000038(A305972(n+1))`
-/

namespace A075245.P4898928769854416725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (n + 3) + A000038 (A305972 (n + 1)).toNat

end

end A075245.P4898928769854416725

/-!
# A075246: y-value of the solution (x,y,z) to 4/n = 1/x + 1/y + 1/z satisfying 0 < x < y < z and having the largest z-value. The x and z components are in A075245 and A075247.

The programs for A075246, there is no canonical definition to state claims against.
-/

/-! ## A075246.P13334237345322011441

`A257840(n+3)+A000007(A329315(n+1))`
-/

namespace A075246.P13334237345322011441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257840 (n + 3) + A000007 (A329315 (n + 1)).toNat

end

end A075246.P13334237345322011441

/-! ## A075246.P4438280475842020620

`A257840(n+3)%A130434(A003144(n+4))`
-/

namespace A075246.P4438280475842020620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257840 (n + 3)) (A130434 (A003144 (n + 4)).toNat)

end

end A075246.P4438280475842020620

/-! ## A075246.P9288529681199933004

`A294937(A103806(2*(n+1)))+A257840(n+3)`
-/

namespace A075246.P9288529681199933004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (A103806 (2 * (n + 1))).toNat + A257840 (n + 3)

end

end A075246.P9288529681199933004

/-! ## A075246.P17579520612926852338

`A257840(n+3)+A063524(A261077(n+5))`
-/

namespace A075246.P17579520612926852338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257840 (n + 3) + A063524 (A261077 (n + 5)).toNat

end

end A075246.P17579520612926852338

/-! ## A075246.P15895072483480354042

`A257840(n+3)/A054977(A293635(n+1))`
-/

namespace A075246.P15895072483480354042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257840 (n + 3) : ℚ) / (A054977 (A293635 (n + 1)).toNat : ℚ)

end

end A075246.P15895072483480354042

/-! ## A075246.P11194699779722916317

`A051903(A050265(n+5))*A257840(n+3)`
-/

namespace A075246.P11194699779722916317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A050265 (n + 5)).toNat * A257840 (n + 3)

end

end A075246.P11194699779722916317

/-! ## A075246.P1290230013592754715

`A257840(n+3)*A325313(A246045(3*(n+1)))`
-/

namespace A075246.P1290230013592754715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257840 (n + 3) * A325313 (A246045 (3 * (n + 1))).toNat

end

end A075246.P1290230013592754715

/-! ## A075246.P12609230675355312328

`A257840(n+3)+C(A111125(n), A339115(n+6))`
-/

namespace A075246.P12609230675355312328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257840 (n + 3) + (Nat.choose (A111125 n).toNat (A339115 (n + 6)).toNat : ℤ)

end

end A075246.P12609230675355312328

/-! ## A075246.P6567653575587978938

`A257840(n+3)+A000007(2*A043068(n+1))`
-/

namespace A075246.P6567653575587978938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257840 (n + 3) + A000007 (2 * A043068 (n + 1)).toNat

end

end A075246.P6567653575587978938

/-! ## A075246.P14749460944659684364

`A257840(n+3)/A054977(A212101(n+1))`
-/

namespace A075246.P14749460944659684364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257840 (n + 3) : ℚ) / (A054977 (A212101 (n + 1)).toNat : ℚ)

end

end A075246.P14749460944659684364

/-!
# A075247: Largest possible z-value of an integer solution (x,y,z) to 4/n = 1/x + 1/y + 1/z satisfying 0 < x < y < z. The x and y components are in A075245 and A075246.

The programs for A075247, there is no canonical definition to state claims against.
-/

/-! ## A075247.P17603963898189294423

`A257841(n+3)%A257841(A301682(2*n+1))`
-/

namespace A075247.P17603963898189294423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257841 (n + 3)) (A257841 (A301682 (2 * n + 1)).toNat)

end

end A075247.P17603963898189294423

/-! ## A075247.P9797207707171208193

`lcm(A257857(n+1)!, A257841(n+3))`
-/

namespace A075247.P9797207707171208193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A257857 (n + 1)).toNat : ℤ) (A257841 (n + 3))

end

end A075247.P9797207707171208193

/-! ## A075247.P15364509739779570289

`A257841(n+3)%A257841(A003627(n+5))`
-/

namespace A075247.P15364509739779570289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257841 (n + 3)) (A257841 (A003627 (n + 5)).toNat)

end

end A075247.P15364509739779570289

/-! ## A075247.P9421757492575398463

`A007814(A262406(2*n+5))!*A257841(n+3)`
-/

namespace A075247.P9421757492575398463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A007814 (A262406 (2 * n + 5)).toNat).toNat : ℤ) * A257841 (n + 3)

end

end A075247.P9421757492575398463

/-! ## A075247.P3432477804795332976

`A257857(A006530(n+1)+1)!*A257841(n+3)`
-/

namespace A075247.P3432477804795332976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A257857 (A006530 (n + 1) + 1).toNat).toNat : ℤ) * A257841 (n + 3)

end

end A075247.P3432477804795332976

/-! ## A075247.P6909219444808556990

`A257841(n+3)%A128375(A320466(n))`
-/

namespace A075247.P6909219444808556990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257841 (n + 3)) (A128375 (A320466 n).toNat)

end

end A075247.P6909219444808556990

/-! ## A075247.P12143364969425519715

`A341620(A327481(n+1))+A257841(n+3)`
-/

namespace A075247.P12143364969425519715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (A327481 (n + 1)).toNat + A257841 (n + 3)

end

end A075247.P12143364969425519715

/-! ## A075247.P2056556731343818476

`A257841(n+3)/C(A215461(n), n)!`
-/

namespace A075247.P2056556731343818476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257841 (n + 3) : ℚ) / (Nat.factorial (Nat.choose (A215461 n).toNat n) : ℚ)

end

end A075247.P2056556731343818476

/-! ## A075247.P8510579239919484730

`A000034(A046092(n))*A257841(n+3)`
-/

namespace A075247.P8510579239919484730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A046092 n).toNat * A257841 (n + 3)

end

end A075247.P8510579239919484730

/-!
# A075248: Number of solutions (x,y,z) to 5/n = 1/x + 1/y + 1/z satisfying 0 < x < y < z.

The programs for A075248, there is no canonical definition to state claims against.
-/

/-! ## A075248.P5972704598924160319

`A227612(∑[n+5]+n+12)`
-/

namespace A075248.P5972704598924160319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227612 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A075248.P5972704598924160319

/-! ## A075248.P5563991134718652777

`A227612(A046691(n+4))+C(n, 64)`
-/

namespace A075248.P5563991134718652777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227612 (A046691 (n + 4)).toNat + (Nat.choose n 64 : ℤ)

end

end A075248.P5563991134718652777

/-! ## A075248.P2751211929000753268

`A057427(n)*A227612(A046691(n+4))`
-/

namespace A075248.P2751211929000753268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A227612 (A046691 (n + 4)).toNat

end

end A075248.P2751211929000753268

/-! ## A075248.P16902292019853879032

`A000038(n)!*A227612(A046691(n+4))`
-/

namespace A075248.P16902292019853879032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A227612 (A046691 (n + 4)).toNat

end

end A075248.P16902292019853879032

/-!
# A075249: x-value of the solution (x,y,z) to 5/n = 1/x + 1/y + 1/z satisfying 0 < x < y < z and having the largest z-value. The y and z components are in A075250 and A075251.

The programs for A075249, there is no canonical definition to state claims against.
-/

/-! ## A075249.P463309130780531966

`∑[A144597(A003215(n))]+1`
-/

namespace A075249.P463309130780531966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144597 (A003215 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A075249.P463309130780531966

/-! ## A075249.P459211723199978006

`A008676(3*n+4)%A329165(n+1)+1`
-/

namespace A075249.P459211723199978006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008676 (3 * n + 4)) (A329165 (n + 1)) + 1

end

end A075249.P459211723199978006

/-! ## A075249.P4866776943395725486

`A057427(A000009(n+2))+A002266(n+3)`
-/

namespace A075249.P4866776943395725486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000009 (n + 2)).toNat + A002266 (n + 3)

end

end A075249.P4866776943395725486

/-! ## A075249.P14514058410539077791

`A002266(n+3)-A057428(A092098(n+1))`
-/

namespace A075249.P14514058410539077791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (n + 3) - A057428 (A092098 (n + 1)).toNat

end

end A075249.P14514058410539077791

/-! ## A075249.P1202378649395251018

`A003415(A141935(n+5))+A002266(n+3)`
-/

namespace A075249.P1202378649395251018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A141935 (n + 5)).toNat + A002266 (n + 3)

end

end A075249.P1202378649395251018

/-! ## A075249.P10731542384918262553

`A057427(A341951(n+11))+A002266(n+3)`
-/

namespace A075249.P10731542384918262553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A341951 (n + 11)).toNat + A002266 (n + 3)

end

end A075249.P10731542384918262553

/-! ## A075249.P10759738794495627819

`A049559(A366688(2*(n+2)))+A002266(n+3)`
-/

namespace A075249.P10759738794495627819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A366688 (2 * (n + 2))).toNat + A002266 (n + 3)

end

end A075249.P10759738794495627819

/-! ## A075249.P4778124748247220995

`A055396(A077065(2*n+1))+A008616(2*n+1)`
-/

namespace A075249.P4778124748247220995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A077065 (2 * n + 1)).toNat + A008616 (2 * n + 1)

end

end A075249.P4778124748247220995

/-!
# A075253: Trajectory of 77 under the Reverse and Add! operation carried out in base 2.

The programs for A075253, there is no canonical definition to state claims against.
-/

/-! ## A075253.P12606098403823714204

`A055944(a(n-1))` with `a(0)=77`
-/

namespace A075253.P12606098403823714204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [77] fun n a =>
  A055944 (a (n - 1)).toNat

end

end A075253.P12606098403823714204

/-! ## A075253.P12841925594437817184

`A055944(a(A023443(n)))+A000007(n)` with `a(0)=77`
-/

namespace A075253.P12841925594437817184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [77] fun n a =>
  A055944 (a (A023443 n).toNat).toNat + A000007 n

end

end A075253.P12841925594437817184

/-! ## A075253.P436958148210335795

`A055944(a(A023443(n)))+A000038(n)` with `a(0)=77`
-/

namespace A075253.P436958148210335795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [77] fun n a =>
  A055944 (a (A023443 n).toNat).toNat + A000038 n

end

end A075253.P436958148210335795

/-! ## A075253.P17920350136788514908

`A055944(a(A023443(n)))%A058042(n)` with `a(0)=77`
-/

namespace A075253.P17920350136788514908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [77] fun n a =>
  Int.tmod (A055944 (a (A023443 n).toNat).toNat) (A058042 n)

end

end A075253.P17920350136788514908

/-!
# A075254: a(n) = n + (sum of prime factors of n taken with repetition).

The programs for A075254, the canonical program `A075254.P9638240427792623168` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075254 has offset 1).

The definition of A075254 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A075255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075254.P9638240427792623168

`2*A001414(n+1)+A075255(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075254

/-- `2*A001414(n+1)+A075255(n+1)` -/
def P9638240427792623168.Spec : Prop :=
  ∀ n, P9638240427792623168.a n = A075254 (n + 1)

theorem P9638240427792623168.correct : P9638240427792623168.Spec := by
  intro n
  simp only [A075254, Nat.add_sub_cancel]

end A075254

/-! ## A075254.P2355114397750491400

`∑{p}[n+1, #*val(n+1, #)]+1+n`
-/

namespace A075254.P2355114397750491400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 + n

end

end A075254.P2355114397750491400

namespace A075254

/-- `∑{p}[n+1, #*val(n+1, #)]+1+n` -/
def P2355114397750491400.Spec : Prop :=
  ∀ n, (P2355114397750491400.a n : ℤ) = A075254 (n + 1)

end A075254

/-! ## A075254.P194712758521367301

`A036288(n+1)+n`
-/

namespace A075254.P194712758521367301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) + (n : ℤ)

end

end A075254.P194712758521367301

namespace A075254

/-- `A036288(n+1)+n` -/
def P194712758521367301.Spec : Prop :=
  ∀ n, P194712758521367301.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P14158712097266673918

`Δ[A025281(n)]+1+n`
-/

namespace A075254.P14158712097266673918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A075254.P14158712097266673918

namespace A075254

/-- `Δ[A025281(n)]+1+n` -/
def P14158712097266673918.Spec : Prop :=
  ∀ n, P14158712097266673918.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P16609877637799882170

`n+1+A001414(n+1)`
-/

namespace A075254.P16609877637799882170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 + A001414 (n + 1))

end

end A075254.P16609877637799882170

namespace A075254

/-- `n+1+A001414(n+1)` -/
def P16609877637799882170.Spec : Prop :=
  ∀ n, P16609877637799882170.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P9143292759465020223

`A100006(n+1)-1+n`
-/

namespace A075254.P9143292759465020223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - 1 + (n : ℤ)

end

end A075254.P9143292759465020223

namespace A075254

/-- `A100006(n+1)-1+n` -/
def P9143292759465020223.Spec : Prop :=
  ∀ n, P9143292759465020223.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P3729081253650552089

`sqrt(A074373(n+1))+1+n`
-/

namespace A075254.P3729081253650552089
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074373 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A075254.P3729081253650552089

namespace A075254

/-- `sqrt(A074373(n+1))+1+n` -/
def P3729081253650552089.Spec : Prop :=
  ∀ n, P3729081253650552089.a n = (A075254 (n + 1) : ℝ)

end A075254

/-! ## A075254.P942116405749266079

`2*(n+1)-A075255(n+1)`
-/

namespace A075254.P942116405749266079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A075255 (n + 1)

end

end A075254.P942116405749266079

namespace A075254

/-- `2*(n+1)-A075255(n+1)` -/
def P942116405749266079.Spec : Prop :=
  ∀ n, P942116405749266079.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P9954338583422885612

`n+1+A280292(n+1)+∑{p}[n+1, #]`
-/

namespace A075254.P9954338583422885612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A280292 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A075254.P9954338583422885612

namespace A075254

/-- `n+1+A280292(n+1)+∑{p}[n+1, #]` -/
def P9954338583422885612.Spec : Prop :=
  ∀ n, P9954338583422885612.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P6328550429912088320

`A100006(n+1)+A023443(n)`
-/

namespace A075254.P6328550429912088320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) + A023443 n

end

end A075254.P6328550429912088320

namespace A075254

/-- `A100006(n+1)+A023443(n)` -/
def P6328550429912088320.Spec : Prop :=
  ∀ n, P6328550429912088320.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P7591978647873293492

`A100006(n+1)-A024000(n)`
-/

namespace A075254.P7591978647873293492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - A024000 n

end

end A075254.P7591978647873293492

namespace A075254

/-- `A100006(n+1)-A024000(n)` -/
def P7591978647873293492.Spec : Prop :=
  ∀ n, P7591978647873293492.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P16541865399233851637

`Δ[A000096(n)-(n-A025281(n))]`
-/

namespace A075254.P16541865399233851637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - ((n : ℤ) - A025281 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075254.P16541865399233851637

namespace A075254

/-- `Δ[A000096(n)-(n-A025281(n))]` -/
def P16541865399233851637.Spec : Prop :=
  ∀ n, P16541865399233851637.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P9233588125117512778

`A064800(n+1)+A059975(n+1)`
-/

namespace A075254.P9233588125117512778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) + A059975 (n + 1)

end

end A075254.P9233588125117512778

namespace A075254

/-- `A064800(n+1)+A059975(n+1)` -/
def P9233588125117512778.Spec : Prop :=
  ∀ n, P9233588125117512778.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P1274024500347451927

`A280292(n+1)+A075653(n+1)`
-/

namespace A075254.P1274024500347451927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1) + A075653 (n + 1)

end

end A075254.P1274024500347451927

namespace A075254

/-- `A280292(n+1)+A075653(n+1)` -/
def P1274024500347451927.Spec : Prop :=
  ∀ n, P1274024500347451927.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P10330073570777208397

`A352167(n+1)+A143545(n+1)`
-/

namespace A075254.P10330073570777208397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352167 (n + 1) + A143545 (n + 1)

end

end A075254.P10330073570777208397

namespace A075254

/-- `A352167(n+1)+A143545(n+1)` -/
def P10330073570777208397.Spec : Prop :=
  ∀ n, P10330073570777208397.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P16324311465017909345

`A181894(A354547(n+1))+1+n`
-/

namespace A075254.P16324311465017909345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (A354547 (n + 1)).toNat + 1 + (n : ℤ)

end

end A075254.P16324311465017909345

namespace A075254

/-- `A181894(A354547(n+1))+1+n` -/
def P16324311465017909345.Spec : Prop :=
  ∀ n, P16324311465017909345.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P2510914518397890306

`A000203(n+1)-A374127(n+1)`
-/

namespace A075254.P2510914518397890306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A374127 (n + 1)

end

end A075254.P2510914518397890306

namespace A075254

/-- `A000203(n+1)-A374127(n+1)` -/
def P2510914518397890306.Spec : Prop :=
  ∀ n, P2510914518397890306.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P11742535957900695977

`A059975(n+1)+A073093(n+1)+n`
-/

namespace A075254.P11742535957900695977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (n + 1) + (A073093 (n + 1) + (n : ℤ))

end

end A075254.P11742535957900695977

namespace A075254

/-- `A059975(n+1)+A073093(n+1)+n` -/
def P11742535957900695977.Spec : Prop :=
  ∀ n, P11742535957900695977.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P6763011556723233735

`A001222(n+1)+A275314(n+1)+n`
-/

namespace A075254.P6763011556723233735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A275314 (n + 1) + (n : ℤ))

end

end A075254.P6763011556723233735

namespace A075254

/-- `A001222(n+1)+A275314(n+1)+n` -/
def P6763011556723233735.Spec : Prop :=
  ∀ n, P6763011556723233735.a n = A075254 (n + 1)

end A075254

/-! ## A075254.P832458472628984964

`n+1+A025281(n+1)-A025281(n)`
-/

namespace A075254.P832458472628984964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A025281 (n + 1) - A025281 n)

end

end A075254.P832458472628984964

namespace A075254

/-- `n+1+A025281(n+1)-A025281(n)` -/
def P832458472628984964.Spec : Prop :=
  ∀ n, P832458472628984964.a n = A075254 (n + 1)

end A075254

/-!
# A075255: a(n) = n - (sum of prime factors of n (with repetition)).

The programs for A075255, the canonical program `A075255.P16384092306382431295` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075255 has offset 1).

The definition of A075255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075255.P16384092306382431295

`1-∑{p}[n+1, #*val(n+1, #)]+n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A075255

/-- `1-∑{p}[n+1, #*val(n+1, #)]+n` -/
def P16384092306382431295.Spec : Prop :=
  ∀ n, P16384092306382431295.a n = A075255 (n + 1)

theorem P16384092306382431295.correct : P16384092306382431295.Spec := by
  intro n
  simp only [A075255, Nat.add_sub_cancel]

end A075255

/-! ## A075255.P3621221951775135156

`1-Δ[A025281(n)]+n`
-/

namespace A075255.P3621221951775135156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A075255.P3621221951775135156

namespace A075255

/-- `1-Δ[A025281(n)]+n` -/
def P3621221951775135156.Spec : Prop :=
  ∀ n, P3621221951775135156.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P12402854408001661280

`1-A001414(n+1)+n`
-/

namespace A075255.P12402854408001661280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001414 (n + 1) + (n : ℤ)

end

end A075255.P12402854408001661280

namespace A075255

/-- `1-A001414(n+1)+n` -/
def P12402854408001661280.Spec : Prop :=
  ∀ n, P12402854408001661280.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P13409151710649250294

`2-A036288(n+1)+n`
-/

namespace A075255.P13409151710649250294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036288 (n + 1) + (n : ℤ)

end

end A075255.P13409151710649250294

namespace A075255

/-- `2-A036288(n+1)+n` -/
def P13409151710649250294.Spec : Prop :=
  ∀ n, P13409151710649250294.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P2082778352063209935

`3-A100006(n+1)+n`
-/

namespace A075255.P2082778352063209935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A100006 (n + 1) + (n : ℤ)

end

end A075255.P2082778352063209935

namespace A075255

/-- `3-A100006(n+1)+n` -/
def P2082778352063209935.Spec : Prop :=
  ∀ n, P2082778352063209935.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P15951023028581527868

`1-sqrt(A074373(n+1))+n`
-/

namespace A075255.P15951023028581527868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (A074373 (n + 1) : ℝ) + (n : ℝ)

end

end A075255.P15951023028581527868

namespace A075255

/-- `1-sqrt(A074373(n+1))+n` -/
def P15951023028581527868.Spec : Prop :=
  ∀ n, P15951023028581527868.a n = (A075255 (n + 1) : ℝ)

end A075255

/-! ## A075255.P12937792060621550359

`2*(n+1)-A075254(n+1)`
-/

namespace A075255.P12937792060621550359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A075254 (n + 1)

end

end A075255.P12937792060621550359

namespace A075255

/-- `2*(n+1)-A075254(n+1)` -/
def P12937792060621550359.Spec : Prop :=
  ∀ n, P12937792060621550359.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P17083046066505776380

`Δ[A000096(n)-A025281(n)]-1`
-/

namespace A075255.P17083046066505776380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A075255.P17083046066505776380

namespace A075255

/-- `Δ[A000096(n)-A025281(n)]-1` -/
def P17083046066505776380.Spec : Prop :=
  ∀ n, P17083046066505776380.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P5139245291996006218

`A086664(n+1)+A078771(n+1)`
-/

namespace A075255.P5139245291996006218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086664 (n + 1) + A078771 (n + 1)

end

end A075255.P5139245291996006218

namespace A075255

/-- `A086664(n+1)+A078771(n+1)` -/
def P5139245291996006218.Spec : Prop :=
  ∀ n, P5139245291996006218.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P3622695646696179243

`A220114(n+1)+A092510(n+1)`
-/

namespace A075255.P3622695646696179243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220114 (n + 1) + A092510 (n + 1)

end

end A075255.P3622695646696179243

namespace A075255

/-- `A220114(n+1)+A092510(n+1)` -/
def P3622695646696179243.Spec : Prop :=
  ∀ n, P3622695646696179243.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P8109317523877125057

`A374127(n+1)+A033879(n+1)`
-/

namespace A075255.P8109317523877125057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374127 (n + 1) + A033879 (n + 1)

end

end A075255.P8109317523877125057

namespace A075255

/-- `A374127(n+1)+A033879(n+1)` -/
def P8109317523877125057.Spec : Prop :=
  ∀ n, P8109317523877125057.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P12715311569938606673

`A086665(n+1)-A001065(n+1)`
-/

namespace A075255.P12715311569938606673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086665 (n + 1) - A001065 (n + 1)

end

end A075255.P12715311569938606673

namespace A075255

/-- `A086665(n+1)-A001065(n+1)` -/
def P12715311569938606673.Spec : Prop :=
  ∀ n, P12715311569938606673.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P18410187711565825907

`A069345(n+1)-A059975(n+1)`
-/

namespace A075255.P18410187711565825907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1) - A059975 (n + 1)

end

end A075255.P18410187711565825907

namespace A075255

/-- `A069345(n+1)-A059975(n+1)` -/
def P18410187711565825907.Spec : Prop :=
  ∀ n, P18410187711565825907.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P10698485869391088258

`A341865(n+1)-A001222(n+1)`
-/

namespace A075255.P10698485869391088258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341865 (n + 1) - A001222 (n + 1)

end

end A075255.P10698485869391088258

namespace A075255

/-- `A341865(n+1)-A001222(n+1)` -/
def P10698485869391088258.Spec : Prop :=
  ∀ n, P10698485869391088258.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P18377623453006356570

`1-A181894(A354547(n+1))+n`
-/

namespace A075255.P18377623453006356570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A181894 (A354547 (n + 1)).toNat + (n : ℤ)

end

end A075255.P18377623453006356570

namespace A075255

/-- `1-A181894(A354547(n+1))+n` -/
def P18377623453006356570.Spec : Prop :=
  ∀ n, P18377623453006356570.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P14923035104737122125

`n+1+A025281(n)-A025281(n+1)`
-/

namespace A075255.P14923035104737122125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A025281 n - A025281 (n + 1))

end

end A075255.P14923035104737122125

namespace A075255

/-- `n+1+A025281(n)-A025281(n+1)` -/
def P14923035104737122125.Spec : Prop :=
  ∀ n, P14923035104737122125.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P12658400746443012960

`n+1-(A280292(n+1)+A008472(n+1))`
-/

namespace A075255.P12658400746443012960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A280292 (n + 1) + A008472 (n + 1))

end

end A075255.P12658400746443012960

namespace A075255

/-- `n+1-(A280292(n+1)+A008472(n+1))` -/
def P12658400746443012960.Spec : Prop :=
  ∀ n, P12658400746443012960.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P10756484741873232382

`A075653(n+1)+A076694(n+1)-A075254(n+1)`
-/

namespace A075255.P10756484741873232382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) + (A076694 (n + 1) - A075254 (n + 1))

end

end A075255.P10756484741873232382

namespace A075255

/-- `A075653(n+1)+A076694(n+1)-A075254(n+1)` -/
def P10756484741873232382.Spec : Prop :=
  ∀ n, P10756484741873232382.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P3868531640793430583

`(A082344(n+1)-A082343(n+1))*A082299(n+1)`
-/

namespace A075255.P3868531640793430583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082344 (n + 1) - A082343 (n + 1)) * A082299 (n + 1)

end

end A075255.P3868531640793430583

namespace A075255

/-- `(A082344(n+1)-A082343(n+1))*A082299(n+1)` -/
def P3868531640793430583.Spec : Prop :=
  ∀ n, P3868531640793430583.a n = A075255 (n + 1)

end A075255

/-! ## A075255.P5193928704274165254

`n+1-(A008472(n+1)+A075254(n+1)-A075653(n+1))`
-/

namespace A075255.P5193928704274165254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A008472 (n + 1) + (A075254 (n + 1) - A075653 (n + 1)))

end

end A075255.P5193928704274165254

namespace A075255

/-- `n+1-(A008472(n+1)+A075254(n+1)-A075653(n+1))` -/
def P5193928704274165254.Spec : Prop :=
  ∀ n, P5193928704274165254.a n = A075255 (n + 1)

end A075255

/-!
# A075256: List of pairs of numbers (a < b) in the sequence {a,b}-> {Max[{a,b}]-Min[{a,b}],k*Min[{a,b}]} with k=3 and the first pair {a=1,b=2}.

The programs for A075256, there is no canonical definition to state claims against.
-/

/-! ## A075256.P6327318267138605181

`A261029(A261051(n))+A246277(n+1)`
-/

namespace A075256.P6327318267138605181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 (A261051 n).toNat + A246277 (n + 1)

end

end A075256.P6327318267138605181

/-! ## A075256.P2208423103642980458

`A100060(A191049(n+1))+A028422(3*(n+1))`
-/

namespace A075256.P2208423103642980458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100060 (A191049 (n + 1)).toNat + A028422 (3 * (n + 1))

end

end A075256.P2208423103642980458

/-! ## A075256.P10457800216553836359

`A001055(3*(n+1))-A014707(A301634(n+1))`
-/

namespace A075256.P10457800216553836359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (3 * (n + 1)) - A014707 (A301634 (n + 1)).toNat

end

end A075256.P10457800216553836359

/-!
# A075257: Smaller terms in the pairs of numbers (a < b) in the sequence {a,b}-> {Max[{a,b}]-Min[{a,b}],k*Min[{a,b}]} with k=3 and the first pair {a=1,b=2}. See A075256.

The programs for A075257, there is no canonical definition to state claims against.
-/

/-! ## A075257.P15171446475748156530

`A075256(2*n+1)`
-/

namespace A075257.P15171446475748156530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075256 (2 * n + 1)

end

end A075257.P15171446475748156530

/-! ## A075257.P15054384405491871219

`abs(1-A075256(n+1+n))+1`
-/

namespace A075257.P15054384405491871219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A075256 (n + 1 + n)| + 1

end

end A075257.P15054384405491871219

/-! ## A075257.P2261922596057350012

`and(-1, A075256(A005408(n)))`
-/

namespace A075257.P2261922596057350012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A075256 (A005408 n).toNat)

end

end A075257.P2261922596057350012

/-! ## A075257.P3340608748237398474

`xor(char[A231092(n+1)], A075256(n+1+n))`
-/

namespace A075257.P3340608748237398474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231092 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A075256 (n + 1 + n))

end

end A075257.P3340608748237398474

/-! ## A075257.P10326617302812565417

`xor(char[A253269(n+1)], A075256(n+1+n))`
-/

namespace A075257.P10326617302812565417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253269 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A075256 (n + 1 + n))

end

end A075257.P10326617302812565417

/-! ## A075257.P11924745436992935486

`xor(char[A005429(n+4)], A075256(n+1+n))`
-/

namespace A075257.P11924745436992935486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005429 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A075256 (n + 1 + n))

end

end A075257.P11924745436992935486

/-! ## A075257.P3365390303253457964

`xor(char[A226529(n+5)], A075256(n+1+n))`
-/

namespace A075257.P3365390303253457964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226529 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A075256 (n + 1 + n))

end

end A075257.P3365390303253457964

/-! ## A075257.P16216810958573198576

`A075256(A005408(n))%A075258(n+1)`
-/

namespace A075257.P16216810958573198576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075256 (A005408 n).toNat) (A075258 (n + 1))

end

end A075257.P16216810958573198576

/-!
# A075258: Larger terms of the pairs (a < b) in the sequence {a,b}-> {Max[{a,b}]-Min[{a,b}],k*Min[{a,b}]} with k=3 and the first pair {a=1,b=2}. See A075256.

The programs for A075258, there is no canonical definition to state claims against.
-/

/-! ## A075258.P236435915948773296

`A075256(2*(n+1))`
-/

namespace A075258.P236435915948773296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075256 (2 * (n + 1))

end

end A075258.P236435915948773296

/-! ## A075258.P9218913498959208795

`or(char[1], A075256(n+2+n))`
-/

namespace A075258.P9218913498959208795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A075256 (n + 2 + n))

end

end A075258.P9218913498959208795

/-! ## A075258.P15295133410003600758

`A075256(n+2+n)^A007318(C(3, n))`
-/

namespace A075258.P15295133410003600758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075256 (n + 2 + n) : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A075258.P15295133410003600758

/-! ## A075258.P784321638228103729

`A075256(n+2+n)%A206021(n+1)`
-/

namespace A075258.P784321638228103729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075256 (n + 2 + n)) (A206021 (n + 1))

end

end A075258.P784321638228103729

/-! ## A075258.P725428281401329675

`A204853(A316092(n+1))+A075256(n+2+n)`
-/

namespace A075258.P725428281401329675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 (A316092 (n + 1)).toNat + A075256 (n + 2 + n)

end

end A075258.P725428281401329675

/-! ## A075258.P10016940803897121253

`∑{d}[A075256(n+2+n), A000010(#)]`
-/

namespace A075258.P10016940803897121253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075256 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A075258.P10016940803897121253

/-!
# A075260: x-value of the solution (x,y,z) to 3/(2n+1) = 1/x + 1/y + 1/z satisfying 0 < x < y < z, odd x, y, z and having the largest z-value. The y and z components are in A075261 and A075262.

The programs for A075260, there is no canonical definition to state claims against.
-/

/-! ## A075260.P14644942975057423914

`A130823(n+5)+A000925(A102697(2*(n+2)))`
-/

namespace A075260.P14644942975057423914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (n + 5) + A000925 (A102697 (2 * (n + 2))).toNat

end

end A075260.P14644942975057423914

/-!
# A075263: Triangle of coefficients of polynomials H(n,x) formed from the first (n+1) terms of the power series expansion of ( -x/log(1-x) )^(n+1), multiplied by n!.

The programs for A075263, there is no canonical definition to state claims against.
-/

/-! ## A075263.P14631657431971097359

`A033999(A002262(n))*A130850(n)`
-/

namespace A075263.P14631657431971097359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A130850 n

end

end A075263.P14631657431971097359

/-! ## A075263.P3318183739866058799

`A097807(A061579(n))*A130850(n)`
-/

namespace A075263.P3318183739866058799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A130850 n

end

end A075263.P3318183739866058799

/-! ## A075263.P13949463168822312270

`A033999(A294317(n))*A130850(n)`
-/

namespace A075263.P13949463168822312270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A130850 n

end

end A075263.P13949463168822312270

/-! ## A075263.P10468157021038970664

`A062157(A002260(n+1))*A130850(n)`
-/

namespace A075263.P10468157021038970664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A130850 n

end

end A075263.P10468157021038970664

/-! ## A075263.P12123139926142904477

`A028246(n+1)/A163626(n)*A130850(n)`
-/

namespace A075263.P12123139926142904477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A163626 n : ℚ) * (A130850 n : ℚ)

end

end A075263.P12123139926142904477

/-! ## A075263.P181036434667423149

`A008276(n+1)/A094638(n+1)*A130850(n)`
-/

namespace A075263.P181036434667423149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008276 (n + 1) : ℚ) / (A094638 (n + 1) : ℚ) * (A130850 n : ℚ)

end

end A075263.P181036434667423149

/-! ## A075263.P11980153826227248442

`A028246(A038722(n+1))*A033999(A002262(n))`
-/

namespace A075263.P11980153826227248442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (A038722 (n + 1)).toNat * A033999 (A002262 n).toNat

end

end A075263.P11980153826227248442

/-! ## A075263.P15185416918002755567

`A130850(n)*A163626(n)/abs(A163626(n))`
-/

namespace A075263.P15185416918002755567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130850 n * A163626 n : ℚ) / (|A163626 n| : ℚ)

end

end A075263.P15185416918002755567

/-! ## A075263.P18082279985910256536

`A130850(n)*A165586(A059268(n))`
-/

namespace A075263.P18082279985910256536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 n * A165586 (A059268 n).toNat

end

end A075263.P18082279985910256536

/-! ## A075263.P14958080214371206171

`A119502(n)*A213735(n)`
-/

namespace A075263.P14958080214371206171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A213735 n

end

end A075263.P14958080214371206171

/-!
# A075266: Numerator of the coefficient of x^n in log(-log(1-x)/x).

The programs for A075266, there is no canonical definition to state claims against.
-/

/-! ## A075266.P16425791050735959359

`A187718(A020522(n)+A000104(n))`
-/

namespace A075266.P16425791050735959359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187718 (A020522 n + A000104 n).toNat

end

end A075266.P16425791050735959359

/-!
# A075267: Denominator of the coefficient of x^n in log(-log(1-x)/x).

The programs for A075267, there is no canonical definition to state claims against.
-/

/-! ## A075267.P12385778349724566575

`A262235(n+1)/(n+2)`
-/

namespace A075267.P12385778349724566575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262235 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A075267.P12385778349724566575

/-! ## A075267.P10857440765607122670

`A028310(A077611(n+1))*A079612(n+1)`
-/

namespace A075267.P10857440765607122670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A077611 (n + 1)).toNat * A079612 (n + 1)

end

end A075267.P10857440765607122670

/-!
# A075269: Product of Lucas numbers and inverted Lucas numbers: a(n)=A000032(n)*A075193(n).

The programs for A075269, the canonical program `A075269.P16329555458538880526` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075269 has offset 0).

The definition of A075269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075269.P16329555458538880526

`(-1)^n*A215602(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075269

/-- `(-1)^n*A215602(n)` -/
def P16329555458538880526.Spec : Prop :=
  ∀ n, P16329555458538880526.a n = A075269 n

theorem P16329555458538880526.correct : P16329555458538880526.Spec := by
  intro n
  simp only [A075269]

end A075269

/-! ## A075269.P5026483521809880558

`A000032(n)*A075193(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075269.P5026483521809880558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A075193 n

end

end A075269.P5026483521809880558

namespace A075269

/-- `A000032(n)*A075193(n)` -/
def P5026483521809880558.Spec : Prop :=
  ∀ n, P5026483521809880558.a n = A075269 n

end A075269

/-! ## A075269.P17236079027396411644

`1-A098149(n+1)`
-/

namespace A075269.P17236079027396411644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A098149 (n + 1)

end

end A075269.P17236079027396411644

namespace A075269

/-- `1-A098149(n+1)` -/
def P17236079027396411644.Spec : Prop :=
  ∀ n, P17236079027396411644.a n = A075269 n

end A075269

/-! ## A075269.P4490312415107771525

`1-Δ[A333378(2*n)]`
-/

namespace A075269.P4490312415107771525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A075269.P4490312415107771525

namespace A075269

/-- `1-Δ[A333378(2*n)]` -/
def P4490312415107771525.Spec : Prop :=
  ∀ n, P4490312415107771525.a n = A075269 n

end A075269

/-! ## A075269.P12869061320455972374

`A075150(n)-a(n-1)` with `a(0)=2`
-/

namespace A075269.P12869061320455972374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A075150 n - a (n - 1)

end

end A075269.P12869061320455972374

namespace A075269

/-- `A075150(n)-a(n-1)` -/
def P12869061320455972374.Spec : Prop :=
  ∀ n, P12869061320455972374.a n = A075269 n

end A075269

/-! ## A075269.P13830773590640183707

`(-1)^n*A000032(Δ[n²])+1`
-/

namespace A075269.P13830773590640183707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A075269.P13830773590640183707

namespace A075269

/-- `(-1)^n*A000032(Δ[n²])+1` -/
def P13830773590640183707.Spec : Prop :=
  ∀ n, P13830773590640183707.a n = A075269 n

end A075269

/-! ## A075269.P6539140984465841398

`(floor((-ϕ)^n)+1)*A000032(n+1)`
-/

namespace A075269.P6539140984465841398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(-Real.goldenRatio) ^ n⌋ + 1) * A000032 (n + 1)

end

end A075269.P6539140984465841398

namespace A075269

/-- `(floor((-ϕ)^n)+1)*A000032(n+1)` -/
def P6539140984465841398.Spec : Prop :=
  ∀ n, P6539140984465841398.a n = A075269 n

end A075269

/-! ## A075269.P1878593178515757590

`A000032(2*n+1)/(-1)^n+1`
-/

namespace A075269.P1878593178515757590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) : ℚ) / ((-1) ^ n : ℚ) + 1

end

end A075269.P1878593178515757590

namespace A075269

/-- `A000032(2*n+1)/(-1)^n+1` -/
def P1878593178515757590.Spec : Prop :=
  ∀ n, P1878593178515757590.a n = (A075269 n : ℚ)

end A075269

/-! ## A075269.P11280482726180676117

`A000032(n)*Δ[A061084(n)]`
-/

namespace A075269.P11280482726180676117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (f1 (n + 1) - f1 n)

end

end A075269.P11280482726180676117

namespace A075269

/-- `A000032(n)*Δ[A061084(n)]` -/
def P11280482726180676117.Spec : Prop :=
  ∀ n, P11280482726180676117.a n = A075269 n

end A075269

/-! ## A075269.P13343097966433882310

`Δ[A001610(n)]*A075193(n)`
-/

namespace A075269.P13343097966433882310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A075193 n

end

end A075269.P13343097966433882310

namespace A075269

/-- `Δ[A001610(n)]*A075193(n)` -/
def P13343097966433882310.Spec : Prop :=
  ∀ n, P13343097966433882310.a n = A075269 n

end A075269

/-! ## A075269.P9865630063527925442

`A002878(n)*A033999(n)+1`
-/

namespace A075269.P9865630063527925442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n * A033999 n + 1

end

end A075269.P9865630063527925442

namespace A075269

/-- `A002878(n)*A033999(n)+1` -/
def P9865630063527925442.Spec : Prop :=
  ∀ n, P9865630063527925442.a n = A075269 n

end A075269

/-! ## A075269.P11696963026262683444

`(A001612(n)-1)*A075193(n)`
-/

namespace A075269.P11696963026262683444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001612 n - 1) * A075193 n

end

end A075269.P11696963026262683444

namespace A075269

/-- `(A001612(n)-1)*A075193(n)` -/
def P11696963026262683444.Spec : Prop :=
  ∀ n, P11696963026262683444.a n = A075269 n

end A075269

/-! ## A075269.P4466944466906423500

`(A000211(n)-2)*A075193(n)`
-/

namespace A075269.P4466944466906423500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000211 n - 2) * A075193 n

end

end A075269.P4466944466906423500

namespace A075269

/-- `(A000211(n)-2)*A075193(n)` -/
def P4466944466906423500.Spec : Prop :=
  ∀ n, P4466944466906423500.a n = A075269 n

end A075269

/-! ## A075269.P5559982717298771588

`A075193(n)*A127218(2*n)`
-/

namespace A075269.P5559982717298771588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n * A127218 (2 * n)

end

end A075269.P5559982717298771588

namespace A075269

/-- `A075193(n)*A127218(2*n)` -/
def P5559982717298771588.Spec : Prop :=
  ∀ n, P5559982717298771588.a n = A075269 n

end A075269

/-! ## A075269.P14601097457823532225

`Δ[A001610(n)]*Δ[A061084(n)]`
-/

namespace A075269.P14601097457823532225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A075269.P14601097457823532225

namespace A075269

/-- `Δ[A001610(n)]*Δ[A061084(n)]` -/
def P14601097457823532225.Spec : Prop :=
  ∀ n, P14601097457823532225.a n = A075269 n

end A075269

/-! ## A075269.P4362195217452785031

`A000032(n+1)*A061084(n+1)`
-/

namespace A075269.P4362195217452785031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A061084 (n + 1)

end

end A075269.P4362195217452785031

namespace A075269

/-- `A000032(n+1)*A061084(n+1)` -/
def P4362195217452785031.Spec : Prop :=
  ∀ n, P4362195217452785031.a n = A075269 n

end A075269

/-! ## A075269.P2297226517024457620

`A000204(n+1)*A061084(n+1)`
-/

namespace A075269.P2297226517024457620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A061084 (n + 1)

end

end A075269.P2297226517024457620

namespace A075269

/-- `A000204(n+1)*A061084(n+1)` -/
def P2297226517024457620.Spec : Prop :=
  ∀ n, P2297226517024457620.a n = A075269 n

end A075269

/-! ## A075269.P4809033690606999917

`A075150(n)-A000032(n)*A061084(n)`
-/

namespace A075269.P4809033690606999917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 n - A000032 n * A061084 n

end

end A075269.P4809033690606999917

namespace A075269

/-- `A075150(n)-A000032(n)*A061084(n)` -/
def P4809033690606999917.Spec : Prop :=
  ∀ n, P4809033690606999917.a n = A075269 n

end A075269

/-!
# A075270: Sum of Lucas numbers and inverted Lucas numbers: a(n) = A000032(n)*A075193(n).

The programs for A075270, the canonical program `A075270.P10527873114600533333` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075270 has offset 0).

The definition of A075270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075270.P10527873114600533333

`3*a(n-2)-a(n-4)` with `a(0)=3, a(1)=-2, a(2)=7, a(3)=-3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A075270

/-- `3*a(n-2)-a(n-4)` -/
def P10527873114600533333.Spec : Prop :=
  ∀ n, P10527873114600533333.a n = A075270 n

theorem P10527873114600533333.correct : P10527873114600533333.Spec := by
  intro n
  simp only [A075270]

end A075270

/-! ## A075270.P3658681710670641817

`Δ[lcm(5, a(n-1))-a(n-2)]` with `a(0)=2, a(1)=5`
-/

namespace A075270.P3658681710670641817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  (Int.lcm 5 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075270.P3658681710670641817

namespace A075270

/-- `Δ[lcm(5, a(n-1))-a(n-2)]` -/
def P3658681710670641817.Spec : Prop :=
  ∀ n, P3658681710670641817.a n = A075270 n

end A075270

/-! ## A075270.P10520369849942551904

`A203976(n)-a(n-1)` with `a(0)=3`
-/

namespace A075270.P10520369849942551904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A203976 n - a (n - 1)

end

end A075270.P10520369849942551904

namespace A075270

/-- `A203976(n)-a(n-1)` -/
def P10520369849942551904.Spec : Prop :=
  ∀ n, P10520369849942551904.a n = A075270 n

end A075270

/-! ## A075270.P15471887490153970730

`A075193(n)+A000032(n)`
-/

namespace A075270.P15471887490153970730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n + A000032 n

end

end A075270.P15471887490153970730

namespace A075270

/-- `A075193(n)+A000032(n)` -/
def P15471887490153970730.Spec : Prop :=
  ∀ n, P15471887490153970730.a n = A075270 n

end A075270

/-! ## A075270.P4131024932014708986

`A075091(n)-A061084(n)`
-/

namespace A075270.P4131024932014708986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075091 n - A061084 n

end

end A075270.P4131024932014708986

namespace A075270

/-- `A075091(n)-A061084(n)` -/
def P4131024932014708986.Spec : Prop :=
  ∀ n, P4131024932014708986.a n = A075270 n

end A075270

/-! ## A075270.P12720550403357773000

`A000032(n)+Δ[A061084(n)]`
-/

namespace A075270.P12720550403357773000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (f1 (n + 1) - f1 n)

end

end A075270.P12720550403357773000

namespace A075270

/-- `A000032(n)+Δ[A061084(n)]` -/
def P12720550403357773000.Spec : Prop :=
  ∀ n, P12720550403357773000.a n = A075270 n

end A075270

/-! ## A075270.P17648956491206717089

`Δ[A061084(n)+A001610(n)]`
-/

namespace A075270.P17648956491206717089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n + A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075270.P17648956491206717089

namespace A075270

/-- `Δ[A061084(n)+A001610(n)]` -/
def P17648956491206717089.Spec : Prop :=
  ∀ n, P17648956491206717089.a n = A075270 n

end A075270

/-! ## A075270.P9535753584454902844

`A075193(n)+Δ[A001610(n)]`
-/

namespace A075270.P9535753584454902844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n + (f1 (n + 1) - f1 n)

end

end A075270.P9535753584454902844

namespace A075270

/-- `A075193(n)+Δ[A001610(n)]` -/
def P9535753584454902844.Spec : Prop :=
  ∀ n, P9535753584454902844.a n = A075270 n

end A075270

/-! ## A075270.P7262433253879098059

`A001612(n)+A075193(n)-1`
-/

namespace A075270.P7262433253879098059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + (A075193 n - 1)

end

end A075270.P7262433253879098059

namespace A075270

/-- `A001612(n)+A075193(n)-1` -/
def P7262433253879098059.Spec : Prop :=
  ∀ n, P7262433253879098059.a n = A075270 n

end A075270

/-! ## A075270.P2923816551262887072

`A000032(n)-A061084(n+2)`
-/

namespace A075270.P2923816551262887072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A061084 (n + 2)

end

end A075270.P2923816551262887072

namespace A075270

/-- `A000032(n)-A061084(n+2)` -/
def P2923816551262887072.Spec : Prop :=
  ∀ n, P2923816551262887072.a n = A075270 n

end A075270

/-! ## A075270.P4269757597589091262

`A000211(n)+A075193(n)-2`
-/

namespace A075270.P4269757597589091262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n + (A075193 n - 2)

end

end A075270.P4269757597589091262

namespace A075270

/-- `A000211(n)+A075193(n)-2` -/
def P4269757597589091262.Spec : Prop :=
  ∀ n, P4269757597589091262.a n = A075270 n

end A075270

/-! ## A075270.P9910947270328583110

`A127218(2*n)+A075193(n)`
-/

namespace A075270.P9910947270328583110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) + A075193 n

end

end A075270.P9910947270328583110

namespace A075270

/-- `A127218(2*n)+A075193(n)` -/
def P9910947270328583110.Spec : Prop :=
  ∀ n, P9910947270328583110.a n = A075270 n

end A075270

/-! ## A075270.P12388087201778549152

`Δ[A061084(n)+A000204(n+1)]`
-/

namespace A075270.P12388087201778549152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n + A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075270.P12388087201778549152

namespace A075270

/-- `Δ[A061084(n)+A000204(n+1)]` -/
def P12388087201778549152.Spec : Prop :=
  ∀ n, P12388087201778549152.a n = A075270 n

end A075270

/-! ## A075270.P5799182033317723041

`Δ[A061084(n)+A001612(n+1)]`
-/

namespace A075270.P5799182033317723041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n + A001612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075270.P5799182033317723041

namespace A075270

/-- `Δ[A061084(n)+A001612(n+1)]` -/
def P5799182033317723041.Spec : Prop :=
  ∀ n, P5799182033317723041.a n = A075270 n

end A075270

/-! ## A075270.P6986595220478755435

`A075193(n)+Δ[A000211(n+1)]`
-/

namespace A075270.P6986595220478755435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n + (f1 (n + 1) - f1 n)

end

end A075270.P6986595220478755435

namespace A075270

/-- `A075193(n)+Δ[A000211(n+1)]` -/
def P6986595220478755435.Spec : Prop :=
  ∀ n, P6986595220478755435.a n = A075270 n

end A075270

/-! ## A075270.P10045812773763259407

`A001612(n)-(1-Δ[A061084(n)])`
-/

namespace A075270.P10045812773763259407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - (1 - (f1 (n + 1) - f1 n))

end

end A075270.P10045812773763259407

namespace A075270

/-- `A001612(n)-(1-Δ[A061084(n)])` -/
def P10045812773763259407.Spec : Prop :=
  ∀ n, P10045812773763259407.a n = A075270 n

end A075270

/-! ## A075270.P14973155250196108427

`A127218(2*n)+Δ[A061084(n)]`
-/

namespace A075270.P14973155250196108427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) + (f1 (n + 1) - f1 n)

end

end A075270.P14973155250196108427

namespace A075270

/-- `A127218(2*n)+Δ[A061084(n)]` -/
def P14973155250196108427.Spec : Prop :=
  ∀ n, P14973155250196108427.a n = A075270 n

end A075270

/-! ## A075270.P773215353599514204

`A000032(n+2)-A075091(n+1)`
-/

namespace A075270.P773215353599514204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - A075091 (n + 1)

end

end A075270.P773215353599514204

namespace A075270

/-- `A000032(n+2)-A075091(n+1)` -/
def P773215353599514204.Spec : Prop :=
  ∀ n, P773215353599514204.a n = A075270 n

end A075270

/-! ## A075270.P7460240113628532763

`A000204(n+2)-A075091(n+1)`
-/

namespace A075270.P7460240113628532763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) - A075091 (n + 1)

end

end A075270.P7460240113628532763

namespace A075270

/-- `A000204(n+2)-A075091(n+1)` -/
def P7460240113628532763.Spec : Prop :=
  ∀ n, P7460240113628532763.a n = A075270 n

end A075270

/-!
# A075271: a(0) = 1 and, for n >= 1, (BM)a(n) = 2*a(n-1), where BM is the BinomialMean transform.

The programs for A075271, there is no canonical definition to state claims against.
-/

/-! ## A075271.P4199679934359506551

`A075272(n+1)/2`
-/

namespace A075271.P4199679934359506551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075272 (n + 1) : ℚ) / 2

end

end A075271.P4199679934359506551

/-! ## A075271.P6103815362023334384

`Δ[∑[A075272(n)]/2]`
-/

namespace A075271.P6103815362023334384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075272 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075271.P6103815362023334384

/-! ## A075271.P9773127195367428721

`record[ratio[A075272(A193592(n))]]`
-/

namespace A075271.P9773127195367428721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075272 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075271.P9773127195367428721

/-!
# A075272: BinomialMean (BM) transform of A075271, which see for the definition of (BM).

The programs for A075272, there is no canonical definition to state claims against.
-/

/-! ## A075272.P11887230159795996678

`2*A368101(a(n-1))` with `a(0)=1`
-/

namespace A075272.P11887230159795996678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A368101 (a (n - 1)).toNat

end

end A075272.P11887230159795996678

/-!
# A075273: Number of reachable arrangements of coins in the game Blet starting with 2n coins.

The programs for A075273, there is no canonical definition to state claims against.
-/

/-! ## A075273.P589846873902785708

`A183542(A140560(n+2))`
-/

namespace A075273.P589846873902785708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183542 (A140560 (n + 2)).toNat

end

end A075273.P589846873902785708

/-!
# A075276: Generalized Markoff numbers: union of numbers a, b, c, d satisfying the Markoff(4) equation a^2 + b^2 + c^2 + d^2 = 4*a*b*c*d.

The programs for A075276, there is no canonical definition to state claims against.
-/

/-! ## A075276.P14603081687865660806

`A163774(n)-A002264(A097801(n))`
-/

namespace A075276.P14603081687865660806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163774 n - A002264 (A097801 n).toNat

end

end A075276.P14603081687865660806

/-!
# A075277: Interprimes (A024675) which are of the form s*prime, s=2.

The programs for A075277, there is no canonical definition to state claims against.
-/

/-! ## A075277.P12692061577263892401

`2*A118134(n+1)`
-/

namespace A075277.P12692061577263892401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118134 (n + 1)

end

end A075277.P12692061577263892401

/-! ## A075277.P1160693185793767536

`A118134(A000027(n+1))+A118134(n+1)`
-/

namespace A075277.P1160693185793767536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (A000027 (n + 1)).toNat + A118134 (n + 1)

end

end A075277.P1160693185793767536

/-! ## A075277.P9812533348013759586

`A118134(n+1)+A118134((n+1)%A000040(n+1))`
-/

namespace A075277.P9812533348013759586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1) + A118134 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A075277.P9812533348013759586

/-! ## A075277.P16510332923200066412

`A118134(n+1)+A118134(n+1)%A339414(n+1)`
-/

namespace A075277.P16510332923200066412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1) + Int.tmod (A118134 (n + 1)) (A339414 (n + 1))

end

end A075277.P16510332923200066412

/-! ## A075277.P1499100423536605678

`∩[A001747(n+1), A078443(n+1)]`
-/

namespace A075277.P1499100423536605678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P1499100423536605678

/-! ## A075277.P15395447066716541313

`∩[A066190(n+1), A078443(n+1)]`
-/

namespace A075277.P15395447066716541313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P15395447066716541313

/-! ## A075277.P2963904949518438550

`∩[A066664(n+1), A078443(n+1)]`
-/

namespace A075277.P2963904949518438550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P2963904949518438550

/-! ## A075277.P6416843951858090187

`∩[A078443(n+1), A100484(n+1)]`
-/

namespace A075277.P6416843951858090187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P6416843951858090187

/-! ## A075277.P9921252784498872599

`∩[A078443(n+1), A161344(n+1)]`
-/

namespace A075277.P9921252784498872599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P9921252784498872599

/-! ## A075277.P6930627867380248860

`∩[A050990(n+1), A078443(n+1)]`
-/

namespace A075277.P6930627867380248860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P6930627867380248860

/-! ## A075277.P14273755287067472687

`∩[A062091(n+1), A078443(n+1)]`
-/

namespace A075277.P14273755287067472687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P14273755287067472687

/-! ## A075277.P15645896005479704725

`∩[A078443(n+1), A138929(n+1)]`
-/

namespace A075277.P15645896005479704725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P15645896005479704725

/-! ## A075277.P5435635182571055252

`A118134(n+1)+A008475(p?[A118134(n+1)])`
-/

namespace A075277.P5435635182571055252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1) + A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075277.P5435635182571055252

/-! ## A075277.P6016851612209362443

`∩[A078443(n+1), A284665(n+1)]`
-/

namespace A075277.P6016851612209362443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P6016851612209362443

/-! ## A075277.P10387866687281732104

`∩[A001747(n+1), A072568(n+1)]`
-/

namespace A075277.P10387866687281732104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P10387866687281732104

/-! ## A075277.P3440989228430688569

`∩[A072568(n+1), A078443(n+1)]`
-/

namespace A075277.P3440989228430688569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P3440989228430688569

/-! ## A075277.P13306112465711614650

`∩[A072568(n+1), A100484(n+1)]`
-/

namespace A075277.P13306112465711614650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P13306112465711614650

/-! ## A075277.P1673196541784131770

`∩[A072568(n+1), A161344(n+1)]`
-/

namespace A075277.P1673196541784131770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075277.P1673196541784131770

/-!
# A075278: Interprimes which are of the form s*prime, s=3.

The programs for A075278, there is no canonical definition to state claims against.
-/

/-! ## A075278.P16582845922951597849

`3*A163487(n+1)`
-/

namespace A075278.P16582845922951597849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A163487 (n + 1)

end

end A075278.P16582845922951597849

/-! ## A075278.P17115333537485665933

`record[3*A163487(A291769(n))]`
-/

namespace A075278.P17115333537485665933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A163487 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075278.P17115333537485665933

/-! ## A075278.P8942131301547605433

`∩[A001748(n+1), A078443(n+1)]`
-/

namespace A075278.P8942131301547605433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P8942131301547605433

/-! ## A075278.P10707678263941823519

`∩[A078443(n+1), A112773(n+1)]`
-/

namespace A075278.P10707678263941823519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P10707678263941823519

/-! ## A075278.P7279948919238960557

`∩[A001748(n+1), A162800(n)]`
-/

namespace A075278.P7279948919238960557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P7279948919238960557

/-! ## A075278.P776085653342313417

`∩[A112773(n+1), A162800(n)]`
-/

namespace A075278.P776085653342313417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P776085653342313417

/-! ## A075278.P9888228629983199362

`∩[A001748(n+1), A024675(n+1)]`
-/

namespace A075278.P9888228629983199362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P9888228629983199362

/-! ## A075278.P2555425030902205854

`∩[A024675(n+1), A112773(n+1)]`
-/

namespace A075278.P2555425030902205854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P2555425030902205854

/-! ## A075278.P16261522467106851446

`∩[A001748(n+1), A162735(n+1)]`
-/

namespace A075278.P16261522467106851446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P16261522467106851446

/-! ## A075278.P4578294827157434126

`∩[A112773(n+1), A162735(n+1)]`
-/

namespace A075278.P4578294827157434126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P4578294827157434126

/-! ## A075278.P3108817918853417011

`∩[A001748(n+1), A145025(n+1)]`
-/

namespace A075278.P3108817918853417011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P3108817918853417011

/-! ## A075278.P11675021950567273637

`∩[A112773(n+1), A145025(n+1)]`
-/

namespace A075278.P11675021950567273637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P11675021950567273637

/-! ## A075278.P11248770411923821285

`∩[A078443(n+1), A106843(n+1)]`
-/

namespace A075278.P11248770411923821285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P11248770411923821285

/-! ## A075278.P4631068765864189844

`∩[A001748(n+1), A063934(n+1)]`
-/

namespace A075278.P4631068765864189844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075278.P4631068765864189844

/-!
# A075279: Interprimes which are of the form s*prime, s=4.

The programs for A075279, there is no canonical definition to state claims against.
-/

/-! ## A075279.P10411940868392415422

`4*A164132(n+1)`
-/

namespace A075279.P10411940868392415422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A164132 (n + 1)

end

end A075279.P10411940868392415422

/-! ## A075279.P11581736382879838182

`∩[A001749(n+1), A072568(n+1)]`
-/

namespace A075279.P11581736382879838182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P11581736382879838182

/-! ## A075279.P2592074756702665270

`∩[A072568(n+1), A337877(n+1)]`
-/

namespace A075279.P2592074756702665270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P2592074756702665270

/-! ## A075279.P4489292011777688374

`∩[2*A100484(n+1), A072568(n+1)]`
-/

namespace A075279.P4489292011777688374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P4489292011777688374

/-! ## A075279.P17592939602124270074

`∩[2*A161344(n+1), A072568(n+1)]`
-/

namespace A075279.P17592939602124270074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P17592939602124270074

/-! ## A075279.P2802294996555001971

`∩[2*A001747(n+2), A072568(n+2)]`
-/

namespace A075279.P2802294996555001971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001747 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P2802294996555001971

/-! ## A075279.P14066813852941184673

`∩[A001749(n+1), A162800(n)]`
-/

namespace A075279.P14066813852941184673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P14066813852941184673

/-! ## A075279.P2783774701316591022

`∩[A001749(n+1), A024675(n+1)]`
-/

namespace A075279.P2783774701316591022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P2783774701316591022

/-! ## A075279.P13821077722990307076

`∩[A001749(n+1), A162735(n+1)]`
-/

namespace A075279.P13821077722990307076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P13821077722990307076

/-! ## A075279.P17245827400517648053

`∩[2*A100484(n+1), A162800(n)]`
-/

namespace A075279.P17245827400517648053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P17245827400517648053

/-! ## A075279.P3789359561207186533

`∩[2*A161344(n+1), A162800(n)]`
-/

namespace A075279.P3789359561207186533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P3789359561207186533

/-! ## A075279.P17203785918659941804

`∩[2*A100484(n+1), A024675(n+1)]`
-/

namespace A075279.P17203785918659941804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P17203785918659941804

/-! ## A075279.P16372852799034657416

`∩[2*A161344(n+1), A024675(n+1)]`
-/

namespace A075279.P16372852799034657416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P16372852799034657416

/-! ## A075279.P14554574768040756951

`∩[2*A001747(n+2), A024675(n+2)]`
-/

namespace A075279.P14554574768040756951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001747 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P14554574768040756951

/-! ## A075279.P15315932409943958511

`∩[A001749(n+1), A145025(n+1)]`
-/

namespace A075279.P15315932409943958511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P15315932409943958511

/-! ## A075279.P4508238223945915646

`∩[2*A100484(n+1), A145025(n+1)]`
-/

namespace A075279.P4508238223945915646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P4508238223945915646

/-! ## A075279.P8999283858330346065

`∩[2*A161344(n+1), A145025(n+1)]`
-/

namespace A075279.P8999283858330346065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P8999283858330346065

/-! ## A075279.P13521069419361405480

`∩[2*A001747(n+2), A145025(n+2)]`
-/

namespace A075279.P13521069419361405480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001747 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P13521069419361405480

/-! ## A075279.P496682303495801134

`∩[A072568(n+1), A096156(n+1)]`
-/

namespace A075279.P496682303495801134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P496682303495801134

/-! ## A075279.P11756598229364512558

`∩[A072568(n+1), A110187(n+1)]`
-/

namespace A075279.P11756598229364512558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075279.P11756598229364512558

/-!
# A075280: Interprimes which are of the form s*prime, s=5.

The programs for A075280, there is no canonical definition to state claims against.
-/

/-! ## A075280.P15598730339063451096

`5*A289270(n+1)`
-/

namespace A075280.P15598730339063451096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A289270 (n + 1)

end

end A075280.P15598730339063451096

/-! ## A075280.P3352971698030781087

`∩[A078443(n+1), A126228(n+1)]`
-/

namespace A075280.P3352971698030781087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075280.P3352971698030781087

/-! ## A075280.P10383260444873729635

`∩[A001750(n+1), A078443(n+1)]`
-/

namespace A075280.P10383260444873729635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075280.P10383260444873729635

/-! ## A075280.P15196109406967177771

`∩[A001750(n+1), A126228(n+1)]`
-/

namespace A075280.P15196109406967177771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075280.P15196109406967177771

/-! ## A075280.P16333250195505722448

`∩[A078443(n+1), A128703(n+1)]`
-/

namespace A075280.P16333250195505722448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075280.P16333250195505722448

/-! ## A075280.P1757967924764438209

`∩[A001750(n+1), A072569(n+1)]`
-/

namespace A075280.P1757967924764438209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075280.P1757967924764438209

/-! ## A075280.P605941351892422984

`filter[A126228(n+1), A354927(#)]`
-/

namespace A075280.P605941351892422984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A075280.P605941351892422984

/-! ## A075280.P7777740415995052448

`filter[A126228(n+1), A359828(#)]`
-/

namespace A075280.P7777740415995052448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A075280.P7777740415995052448

/-! ## A075280.P17485843265222443229

`filter[A126228(n+1), A374128(#)]`
-/

namespace A075280.P17485843265222443229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A075280.P17485843265222443229

/-! ## A075280.P5234262492639232897

`∩[A078443(n+1), A017329(n)]`
-/

namespace A075280.P5234262492639232897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075280.P5234262492639232897

/-! ## A075280.P1900751963387028454

`∩[A078443(n+1), A088648(n)]`
-/

namespace A075280.P1900751963387028454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088648 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075280.P1900751963387028454

/-! ## A075280.P10444453960926598504

`∩[A078443(n+1), A277592(n+1)]`
-/

namespace A075280.P10444453960926598504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075280.P10444453960926598504

/-! ## A075280.P15307675745235494125

`∩[A078443(n+1), A121025(n+1)]`
-/

namespace A075280.P15307675745235494125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075280.P15307675745235494125

/-! ## A075280.P1850807372645762587

`filter[A126228(n+1), A064911(#)]`
-/

namespace A075280.P1850807372645762587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A075280.P1850807372645762587

/-! ## A075280.P5194221993698012788

`filter[A126228(n+1), A101040(#)]`
-/

namespace A075280.P5194221993698012788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A075280.P5194221993698012788

/-! ## A075280.P8572768409147888766

`filter[A126228(n+1), A280710(#)]`
-/

namespace A075280.P8572768409147888766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A075280.P8572768409147888766

/-! ## A075280.P5936528793704203592

`filter[A126228(n+1), A340370(#)]`
-/

namespace A075280.P5936528793704203592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A075280.P5936528793704203592

/-! ## A075280.P16138970740293682319

`filter[A126228(n+1), A353471(#)]`
-/

namespace A075280.P16138970740293682319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A075280.P16138970740293682319

/-! ## A075280.P8765591607274992075

`filter[A126228(n+1), A353480(#)]`
-/

namespace A075280.P8765591607274992075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A075280.P8765591607274992075

/-!
# A075281: Interprimes which are of the form s*prime, s=6.

The programs for A075281, there is no canonical definition to state claims against.
-/

/-! ## A075281.P7749419806399841756

`6*A164134(n+1)`
-/

namespace A075281.P7749419806399841756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A164134 (n + 1)

end

end A075281.P7749419806399841756

/-! ## A075281.P9204401387677445996

`∩[A072570(n+1), A091191(n+1)]`
-/

namespace A075281.P9204401387677445996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P9204401387677445996

/-! ## A075281.P13452854437900912547

`∩[A072570(n+1), A138636(n+1)]`
-/

namespace A075281.P13452854437900912547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P13452854437900912547

/-! ## A075281.P7537589394832048934

`∩[A072570(n+1), A275082(n+1)]`
-/

namespace A075281.P7537589394832048934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P7537589394832048934

/-! ## A075281.P4985083819715483964

`∩[A072570(n+1), A357696(n+1)]`
-/

namespace A075281.P4985083819715483964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P4985083819715483964

/-! ## A075281.P11685199973591172157

`∩[A072568(n+1), A138636(n+1)]`
-/

namespace A075281.P11685199973591172157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P11685199973591172157

/-! ## A075281.P13540291772185099610

`∩[A138636(n+1), A162800(n)]`
-/

namespace A075281.P13540291772185099610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P13540291772185099610

/-! ## A075281.P6028849173346078339

`∩[A024675(n+1), A138636(n+1)]`
-/

namespace A075281.P6028849173346078339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P6028849173346078339

/-! ## A075281.P18089559247966712757

`∩[A138636(n+1), A162735(n+1)]`
-/

namespace A075281.P18089559247966712757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P18089559247966712757

/-! ## A075281.P2053068045534453159

`∩[2*A001748(n+1), A162800(n)]`
-/

namespace A075281.P2053068045534453159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P2053068045534453159

/-! ## A075281.P94561306251090241

`∩[2*A001748(n+1), A024675(n+1)]`
-/

namespace A075281.P94561306251090241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P94561306251090241

/-! ## A075281.P11759205151807993614

`∩[2*A001748(n+1), A162735(n+1)]`
-/

namespace A075281.P11759205151807993614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P11759205151807993614

/-! ## A075281.P6782238170004946572

`∩[2*A112773(n+2), A024675(n+2)]`
-/

namespace A075281.P6782238170004946572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112773 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P6782238170004946572

/-! ## A075281.P12707894407966654250

`record[6*A006530(A072570(n+1))]`
-/

namespace A075281.P12707894407966654250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006530 (A072570 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075281.P12707894407966654250

/-! ## A075281.P16253331251498941968

`∩[A138636(n+1), A145025(n+1)]`
-/

namespace A075281.P16253331251498941968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P16253331251498941968

/-! ## A075281.P4292966676725873973

`∩[2*A001748(n+1), A145025(n+1)]`
-/

namespace A075281.P4292966676725873973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P4292966676725873973

/-! ## A075281.P13440772921544779585

`∩[2*A112773(n+2), A145025(n+2)]`
-/

namespace A075281.P13440772921544779585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112773 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P13440772921544779585

/-! ## A075281.P1095297711536793443

`∩[A072570(n+1), A075818(n+1)]`
-/

namespace A075281.P1095297711536793443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075281.P1095297711536793443

/-! ## A075281.P5392503761428073860

`filter[A072570(n+1), A294930(#)]`
-/

namespace A075281.P5392503761428073860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A075281.P5392503761428073860

/-!
# A075282: Interprimes which are of the form s*prime, s=7.

The programs for A075282, the canonical program `A075282.P5321928366413685694` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075282 has offset 1).

The definition of A075282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075282.P7763913237988633119

`∩[A078443(n+1), A126229(n+1)]`
-/

namespace A075282.P7763913237988633119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075282.P7763913237988633119

namespace A075282

/-- `∩[A078443(n+1), A126229(n+1)]` -/
def P7763913237988633119.Spec : Prop :=
  ∀ n, (P7763913237988633119.a n : ℤ) = A075282 (n + 1)

end A075282

/-! ## A075282.P13567546404782726788

`∩[A078443(n+1), A272470(n+1)]`
-/

namespace A075282.P13567546404782726788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075282.P13567546404782726788

namespace A075282

/-- `∩[A078443(n+1), A272470(n+1)]` -/
def P13567546404782726788.Spec : Prop :=
  ∀ n, (P13567546404782726788.a n : ℤ) = A075282 (n + 1)

end A075282

/-! ## A075282.P2229075007654319209

`∩[A126229(n+1), A272470(n+1)]`
-/

namespace A075282.P2229075007654319209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075282.P2229075007654319209

namespace A075282

/-- `∩[A126229(n+1), A272470(n+1)]` -/
def P2229075007654319209.Spec : Prop :=
  ∀ n, (P2229075007654319209.a n : ℤ) = A075282 (n + 1)

end A075282

/-! ## A075282.P5321928366413685694

`7*p?[A165298(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A075282

/-- `7*p?[A165298(n+1)]` -/
def P5321928366413685694.Spec : Prop :=
  ∀ n, P5321928366413685694.a n = A075282 (n + 1)

theorem P5321928366413685694.correct : P5321928366413685694.Spec := by
  intro n
  simp only [A075282, Nat.add_sub_cancel]

end A075282

/-! ## A075282.P15847597510450945598

`∩[A078443(n+1), A128705(n+1)]`
-/

namespace A075282.P15847597510450945598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075282.P15847597510450945598

namespace A075282

/-- `∩[A078443(n+1), A128705(n+1)]` -/
def P15847597510450945598.Spec : Prop :=
  ∀ n, (P15847597510450945598.a n : ℤ) = A075282 (n + 1)

end A075282

/-! ## A075282.P11554742909019663950

`∩[A078443(n+1), A147587(n)]`
-/

namespace A075282.P11554742909019663950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075282.P11554742909019663950

namespace A075282

/-- `∩[A078443(n+1), A147587(n)]` -/
def P11554742909019663950.Spec : Prop :=
  ∀ n, (P11554742909019663950.a n : ℤ) = A075282 (n + 1)

end A075282

/-! ## A075282.P167519630369189296

`A008589(p?[A165298(n+1)])`
-/

namespace A075282.P167519630369189296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075282.P167519630369189296

namespace A075282

/-- `A008589(p?[A165298(n+1)])` -/
def P167519630369189296.Spec : Prop :=
  ∀ n, P167519630369189296.a n = A075282 (n + 1)

end A075282

/-! ## A075282.P3289185443833634723

`lcm(7, A223490(p?[A165298(n+1)]))`
-/

namespace A075282.P3289185443833634723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A223490 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A075282.P3289185443833634723

namespace A075282

/-- `lcm(7, A223490(p?[A165298(n+1)]))` -/
def P3289185443833634723.Spec : Prop :=
  ∀ n, (P3289185443833634723.a n : ℤ) = A075282 (n + 1)

end A075282

/-! ## A075282.P1822765479358317976

`filter[A126229(n+1), A064911(#)]`
-/

namespace A075282.P1822765479358317976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A075282.P1822765479358317976

namespace A075282

/-- `filter[A126229(n+1), A064911(#)]` -/
def P1822765479358317976.Spec : Prop :=
  ∀ n, P1822765479358317976.a n = A075282 (n + 1)

end A075282

/-!
# A075283: Interprimes which are of the form s*prime, s=8.

The programs for A075283, the canonical program `A075283.P12820807251186463982` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075283 has offset 1).

The definition of A075283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075283.P12820807251186463982

`∩[A063080(n+1), A072571(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075283

/-- `∩[A063080(n+1), A072571(n+1)]` -/
def P12820807251186463982.Spec : Prop :=
  ∀ n, (P12820807251186463982.a n : ℤ) = A075283 (n + 1)

theorem P12820807251186463982.correct : P12820807251186463982.Spec := by
  intro n
  simp only [A075283, Nat.add_sub_cancel]

end A075283

/-! ## A075283.P251016877883805454

`∩[A072571(n+1), A120700(n+1)]`
-/

namespace A075283.P251016877883805454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075283.P251016877883805454

namespace A075283

/-- `∩[A072571(n+1), A120700(n+1)]` -/
def P251016877883805454.Spec : Prop :=
  ∀ n, (P251016877883805454.a n : ℤ) = A075283 (n + 1)

end A075283

/-! ## A075283.P4856001477115983994

`∩[A072568(n+1), A120700(n+1)]`
-/

namespace A075283.P4856001477115983994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075283.P4856001477115983994

namespace A075283

/-- `∩[A072568(n+1), A120700(n+1)]` -/
def P4856001477115983994.Spec : Prop :=
  ∀ n, (P4856001477115983994.a n : ℤ) = A075283 (n + 1)

end A075283

/-! ## A075283.P4930380096882261915

`∩[A234275(A000040(n+1)), A072568(n+1)]`
-/

namespace A075283.P4930380096882261915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075283.P4930380096882261915

namespace A075283

/-- `∩[A234275(A000040(n+1)), A072568(n+1)]` -/
def P4930380096882261915.Spec : Prop :=
  ∀ n, (P4930380096882261915.a n : ℤ) = A075283 (n + 1)

end A075283

/-!
# A075284: Interprimes which are of the form s*prime, s=9.

The programs for A075284, there is no canonical definition to state claims against.
-/

/-! ## A075284.P17047084752318040959

`∩[9*A000040(n+1), A145025(n+2)]`
-/

namespace A075284.P17047084752318040959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075284.P17047084752318040959

/-!
# A075285: Interprimes which are of the form s*prime, s=10.

The programs for A075285, the canonical program `A075285.P9659011496630236086` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075285 has offset 1).

The definition of A075285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075285.P9659011496630236086

`∩[A072568(n+1), A142342(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A075285

/-- `∩[A072568(n+1), A142342(n+1)]` -/
def P9659011496630236086.Spec : Prop :=
  ∀ n, (P9659011496630236086.a n : ℤ) = A075285 (n + 1)

theorem P9659011496630236086.correct : P9659011496630236086.Spec := by
  intro n
  simp only [A075285, Nat.add_sub_cancel]

end A075285

/-! ## A075285.P5980613075315569959

`∩[A142342(n+1), A162800(n)]`
-/

namespace A075285.P5980613075315569959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075285.P5980613075315569959

namespace A075285

/-- `∩[A142342(n+1), A162800(n)]` -/
def P5980613075315569959.Spec : Prop :=
  ∀ n, (P5980613075315569959.a n : ℤ) = A075285 (n + 1)

end A075285

/-! ## A075285.P16660229675659827067

`∩[A024675(n+1), A142342(n+1)]`
-/

namespace A075285.P16660229675659827067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075285.P16660229675659827067

namespace A075285

/-- `∩[A024675(n+1), A142342(n+1)]` -/
def P16660229675659827067.Spec : Prop :=
  ∀ n, (P16660229675659827067.a n : ℤ) = A075285 (n + 1)

end A075285

/-! ## A075285.P4933622682012715340

`∩[A142342(n+1), A162735(n+1)]`
-/

namespace A075285.P4933622682012715340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075285.P4933622682012715340

namespace A075285

/-- `∩[A142342(n+1), A162735(n+1)]` -/
def P4933622682012715340.Spec : Prop :=
  ∀ n, (P4933622682012715340.a n : ℤ) = A075285 (n + 1)

end A075285

/-! ## A075285.P4007905758946020025

`∩[A142342(n+1), A145025(n+1)]`
-/

namespace A075285.P4007905758946020025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075285.P4007905758946020025

namespace A075285

/-- `∩[A142342(n+1), A145025(n+1)]` -/
def P4007905758946020025.Spec : Prop :=
  ∀ n, (P4007905758946020025.a n : ℤ) = A075285 (n + 1)

end A075285

/-! ## A075285.P488244288914185447

`∩[10*A000040(n+1), A145025(n+1)]`
-/

namespace A075285.P488244288914185447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075285.P488244288914185447

namespace A075285

/-- `∩[10*A000040(n+1), A145025(n+1)]` -/
def P488244288914185447.Spec : Prop :=
  ∀ n, (P488244288914185447.a n : ℤ) = A075285 (n + 1)

end A075285

/-! ## A075285.P4402939346056786645

`∩[A063934(n+1), A142342(n+1)]`
-/

namespace A075285.P4402939346056786645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075285.P4402939346056786645

namespace A075285

/-- `∩[A063934(n+1), A142342(n+1)]` -/
def P4402939346056786645.Spec : Prop :=
  ∀ n, (P4402939346056786645.a n : ℤ) = A075285 (n + 1)

end A075285

/-!
# A075286: Interprimes which are of the form s*prime, s=11.

The programs for A075286, there is no canonical definition to state claims against.
-/

/-! ## A075286.P4758435208104569196

`∩[A078443(n+1), A084969(n+1)]`
-/

namespace A075286.P4758435208104569196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075286.P4758435208104569196

/-! ## A075286.P8359622888003381484

`filter[A126230(n+1), A064911(#)]`
-/

namespace A075286.P8359622888003381484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A075286.P8359622888003381484

/-!
# A075287: Interprimes which are of the form s*prime, s=12.

The programs for A075287, the canonical program `A075287.P9261930736193490140` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075287 has offset 1).

The definition of A075287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075287.P9261930736193490140

`∩[2*A138636(n+1), A072570(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075287

/-- `∩[2*A138636(n+1), A072570(n+1)]` -/
def P9261930736193490140.Spec : Prop :=
  ∀ n, (P9261930736193490140.a n : ℤ) = A075287 (n + 1)

theorem P9261930736193490140.correct : P9261930736193490140.Spec := by
  intro n
  simp only [A075287, Nat.add_sub_cancel]

end A075287

/-! ## A075287.P5210397077391281715

`∩[2*A275082(n+1), A072570(n+1)]`
-/

namespace A075287.P5210397077391281715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075287.P5210397077391281715

namespace A075287

/-- `∩[2*A275082(n+1), A072570(n+1)]` -/
def P5210397077391281715.Spec : Prop :=
  ∀ n, (P5210397077391281715.a n : ℤ) = A075287 (n + 1)

end A075287

/-! ## A075287.P4713643348830108046

`∩[2*A138636(n+1), A072568(n+1)]`
-/

namespace A075287.P4713643348830108046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075287.P4713643348830108046

namespace A075287

/-- `∩[2*A138636(n+1), A072568(n+1)]` -/
def P4713643348830108046.Spec : Prop :=
  ∀ n, (P4713643348830108046.a n : ℤ) = A075287 (n + 1)

end A075287

/-! ## A075287.P1445096394969603075

`∩[2*A075818(n+1), A072570(n+1)]`
-/

namespace A075287.P1445096394969603075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075287.P1445096394969603075

namespace A075287

/-- `∩[2*A075818(n+1), A072570(n+1)]` -/
def P1445096394969603075.Spec : Prop :=
  ∀ n, (P1445096394969603075.a n : ℤ) = A075287 (n + 1)

end A075287

/-! ## A075287.P13016218517744922041

`∩[A072570(n+1), A086975(n+1)]`
-/

namespace A075287.P13016218517744922041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075287.P13016218517744922041

namespace A075287

/-- `∩[A072570(n+1), A086975(n+1)]` -/
def P13016218517744922041.Spec : Prop :=
  ∀ n, (P13016218517744922041.a n : ℤ) = A075287 (n + 1)

end A075287

/-!
# A075289: Interprimes which are of the form s*prime, s=14.

The programs for A075289, there is no canonical definition to state claims against.
-/

/-! ## A075289.P341330793902014832

`∩[A072568(n+1), A008589(A253106(n+1))]`
-/

namespace A075289.P341330793902014832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A253106 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075289.P341330793902014832

/-! ## A075289.P3072609921494107972

`∩[A072568(n+1), A008589(A318990(n+1))]`
-/

namespace A075289.P3072609921494107972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A318990 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075289.P3072609921494107972

/-! ## A075289.P1519885492979066457

`∩[A072568(n+1), A008589(A157931(n+1))]`
-/

namespace A075289.P1519885492979066457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A157931 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075289.P1519885492979066457

/-! ## A075289.P9415448457348587630

`∩[A008589(A001747(n+1)), A072568(n+1)]`
-/

namespace A075289.P9415448457348587630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A001747 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075289.P9415448457348587630

/-! ## A075289.P6515654357811200872

`∩[A072568(n+1), A008589(A100484(n+1))]`
-/

namespace A075289.P6515654357811200872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A100484 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075289.P6515654357811200872

/-!
# A075290: Interprimes which are of the form s*prime, s=15.

The programs for A075290, the canonical program `A075290.P9989029104900541804` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075290 has offset 1).

The definition of A075290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075290.P9989029104900541804

`∩[5*3*p?[round(8*n/7)], A024675(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075290

/-- `∩[5*3*p?[round(8*n/7)], A024675(n+1)]` -/
def P9989029104900541804.Spec : Prop :=
  ∀ n, (P9989029104900541804.a n : ℤ) = A075290 (n + 1)

theorem P9989029104900541804.correct : P9989029104900541804.Spec := by
  intro n
  simp only [A075290, Nat.add_sub_cancel]

end A075290

/-! ## A075290.P11311367114124764458

`∩[A008597(A000040(n+1)), A024675(n+1)]`
-/

namespace A075290.P11311367114124764458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075290.P11311367114124764458

namespace A075290

/-- `∩[A008597(A000040(n+1)), A024675(n+1)]` -/
def P11311367114124764458.Spec : Prop :=
  ∀ n, (P11311367114124764458.a n : ℤ) = A075290 (n + 1)

end A075290

/-!
# A075291: Interprimes which are of the form s*prime, s=16.

The programs for A075291, the canonical program `A075291.P15903210363753547292` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075291 has offset 1).

The definition of A075291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075291.P17776517740608956825

`∩[A030628(n+1), A072571(n+1)]`
-/

namespace A075291.P17776517740608956825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075291.P17776517740608956825

namespace A075291

/-- `∩[A030628(n+1), A072571(n+1)]` -/
def P17776517740608956825.Spec : Prop :=
  ∀ n, (P17776517740608956825.a n : ℤ) = A075291 (n + 1)

end A075291

/-! ## A075291.P4016688376275998303

`∩[A072571(n+1), A083251(n+1)]`
-/

namespace A075291.P4016688376275998303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075291.P4016688376275998303

namespace A075291

/-- `∩[A072571(n+1), A083251(n+1)]` -/
def P4016688376275998303.Spec : Prop :=
  ∀ n, (P4016688376275998303.a n : ℤ) = A075291 (n + 1)

end A075291

/-! ## A075291.P15903210363753547292

`∩[2*A063080(n+1), A072571(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075291

/-- `∩[2*A063080(n+1), A072571(n+1)]` -/
def P15903210363753547292.Spec : Prop :=
  ∀ n, (P15903210363753547292.a n : ℤ) = A075291 (n + 1)

theorem P15903210363753547292.correct : P15903210363753547292.Spec := by
  intro n
  simp only [A075291, Nat.add_sub_cancel]

end A075291

/-! ## A075291.P1451577037621287053

`∩[2*A069809(n+1), A072571(n+1)]`
-/

namespace A075291.P1451577037621287053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075291.P1451577037621287053

namespace A075291

/-- `∩[2*A069809(n+1), A072571(n+1)]` -/
def P1451577037621287053.Spec : Prop :=
  ∀ n, (P1451577037621287053.a n : ℤ) = A075291 (n + 1)

end A075291

/-! ## A075291.P6879594227535458292

`∩[2*A120700(n+1), A072571(n+1)]`
-/

namespace A075291.P6879594227535458292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075291.P6879594227535458292

namespace A075291

/-- `∩[2*A120700(n+1), A072571(n+1)]` -/
def P6879594227535458292.Spec : Prop :=
  ∀ n, (P6879594227535458292.a n : ℤ) = A075291 (n + 1)

end A075291

/-! ## A075291.P17585752159657680996

`∩[A030628(n+1), A072568(n+1)]`
-/

namespace A075291.P17585752159657680996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075291.P17585752159657680996

namespace A075291

/-- `∩[A030628(n+1), A072568(n+1)]` -/
def P17585752159657680996.Spec : Prop :=
  ∀ n, (P17585752159657680996.a n : ℤ) = A075291 (n + 1)

end A075291

/-!
# A075293: Interprimes which are of the form s*prime, s=18.

The programs for A075293, there is no canonical definition to state claims against.
-/

/-! ## A075293.P17671617265984844226

`∩[A008591(A001358(n+1)), A072568(n+1)]`
-/

namespace A075293.P17671617265984844226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A001358 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075293.P17671617265984844226

/-! ## A075293.P9844370132542419876

`∩[A072568(n+1), A008591(A091376(n+1))]`
-/

namespace A075293.P9844370132542419876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A091376 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075293.P9844370132542419876

/-! ## A075293.P13863948576197753624

`∩[A008458(A001748(n+1)), A024675(n+1)]`
-/

namespace A075293.P13863948576197753624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A001748 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075293.P13863948576197753624

/-!
# A075295: Interprimes which are of the form s*prime, s=20.

The programs for A075295, the canonical program `A075295.P568193268372435100` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075295 has offset 1).

The definition of A075295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075295.P568193268372435100

`∩[2*A142342(n+1), A072568(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A075295

/-- `∩[2*A142342(n+1), A072568(n+1)]` -/
def P568193268372435100.Spec : Prop :=
  ∀ n, (P568193268372435100.a n : ℤ) = A075295 (n + 1)

theorem P568193268372435100.correct : P568193268372435100.Spec := by
  intro n
  simp only [A075295, Nat.add_sub_cancel]

end A075295

/-! ## A075295.P14863794882025734208

`∩[A008587(A001749(n+1)), A072568(n+1)]`
-/

namespace A075295.P14863794882025734208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A001749 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075295.P14863794882025734208

namespace A075295

/-- `∩[A008587(A001749(n+1)), A072568(n+1)]` -/
def P14863794882025734208.Spec : Prop :=
  ∀ n, (P14863794882025734208.a n : ℤ) = A075295 (n + 1)

end A075295

/-!
# A075296: Interprimes (A024675) which are of the form s*prime, s=21.

The programs for A075296, there is no canonical definition to state claims against.
-/

/-! ## A075296.P13146044648243284615

`record[lcm(21, A277879(n+2))]`
-/

namespace A075296.P13146044648243284615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 21 (A277879 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075296.P13146044648243284615

/-!
# A075298: Inverted (definition in A075193) generalized tribonacci numbers A001644.

The programs for A075298, the canonical program `A075298.P4260161505018535156` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075298 has offset 0).

The definition of A075298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 754 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075298.P4260161505018535156

`a(n-3)-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=-5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A075298

/-- `a(n-3)-(a(n-1)+a(n-2))` -/
def P4260161505018535156.Spec : Prop :=
  ∀ n, P4260161505018535156.a n = A075298 n

theorem P4260161505018535156.correct : P4260161505018535156.Spec := by
  intro n
  simp only [A075298]

end A075298

/-! ## A075298.P18278105442050838729

`a(n-3)-a(n-1)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=-5`
-/

namespace A075298.P18278105442050838729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -5] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 2)

end

end A075298.P18278105442050838729

namespace A075298

/-- `a(n-3)-a(n-1)-a(n-2)` -/
def P18278105442050838729.Spec : Prop :=
  ∀ n, P18278105442050838729.a n = A075298 n

theorem P18278105442050838729.correct : P18278105442050838729.Spec := by
  intro n
  simp only [A075298, Nat.add_sub_cancel, A075298.P18278105442050838729.a, A075298.P4260161505018535156.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A075298

/-! ## A075298.P13395437854912318969

`-A073145(n+1)`
-/

namespace A075298.P13395437854912318969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A073145 (n + 1)

end

end A075298.P13395437854912318969

namespace A075298

/-- `-A073145(n+1)` -/
def P13395437854912318969.Spec : Prop :=
  ∀ n, P13395437854912318969.a n = A075298 n

end A075298

/-! ## A075298.P5066245564092618404

`Δ[-∑[A073145(n)]]`
-/

namespace A075298.P5066245564092618404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075298.P5066245564092618404

namespace A075298

/-- `Δ[-∑[A073145(n)]]` -/
def P5066245564092618404.Spec : Prop :=
  ∀ n, P5066245564092618404.a n = A075298 n

end A075298

/-! ## A075298.P16594379402672903493

`A000035(2*n)-A073145(n+1)`
-/

namespace A075298.P16594379402672903493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A073145 (n + 1)

end

end A075298.P16594379402672903493

namespace A075298

/-- `A000035(2*n)-A073145(n+1)` -/
def P16594379402672903493.Spec : Prop :=
  ∀ n, P16594379402672903493.a n = A075298 n

end A075298

/-! ## A075298.P4688711107662496158

`A056594(2*n+1)-A073145(n+1)`
-/

namespace A075298.P4688711107662496158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) - A073145 (n + 1)

end

end A075298.P4688711107662496158

namespace A075298

/-- `A056594(2*n+1)-A073145(n+1)` -/
def P4688711107662496158.Spec : Prop :=
  ∀ n, P4688711107662496158.a n = A075298 n

end A075298

/-! ## A075298.P10591212451227902168

`A319200(n+1)+A078046(n)-A073145(n+1)`
-/

namespace A075298.P10591212451227902168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319200 (n + 1) + (A078046 n - A073145 (n + 1))

end

end A075298.P10591212451227902168

namespace A075298

/-- `A319200(n+1)+A078046(n)-A073145(n+1)` -/
def P10591212451227902168.Spec : Prop :=
  ∀ n, P10591212451227902168.a n = A075298 n

end A075298

/-! ## A075298.P9948409143992345500

`A000032(n+1)-A190913(n+1)`
-/

namespace A075298.P9948409143992345500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A190913 (n + 1)

end

end A075298.P9948409143992345500

namespace A075298

/-- `A000032(n+1)-A190913(n+1)` -/
def P9948409143992345500.Spec : Prop :=
  ∀ n, P9948409143992345500.a n = A075298 n

end A075298

/-! ## A075298.P3078493101536744109

`A000204(n+1)-A190913(n+1)`
-/

namespace A075298.P3078493101536744109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A190913 (n + 1)

end

end A075298.P3078493101536744109

namespace A075298

/-- `A000204(n+1)-A190913(n+1)` -/
def P3078493101536744109.Spec : Prop :=
  ∀ n, P3078493101536744109.a n = A075298 n

end A075298

/-! ## A075298.P17703270990365003866

`A001610(n)+1-A190913(n+1)`
-/

namespace A075298.P17703270990365003866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + 1 - A190913 (n + 1)

end

end A075298.P17703270990365003866

namespace A075298

/-- `A001610(n)+1-A190913(n+1)` -/
def P17703270990365003866.Spec : Prop :=
  ∀ n, P17703270990365003866.a n = A075298 n

end A075298

/-! ## A075298.P16556275142078716675

`A001612(n+1)-(A190913(n+1)+1)`
-/

namespace A075298.P16556275142078716675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) - (A190913 (n + 1) + 1)

end

end A075298.P16556275142078716675

namespace A075298

/-- `A001612(n+1)-(A190913(n+1)+1)` -/
def P16556275142078716675.Spec : Prop :=
  ∀ n, P16556275142078716675.a n = A075298 n

end A075298

/-! ## A075298.P1420322736659458896

`A000211(n+1)-(A190913(n+1)+2)`
-/

namespace A075298.P1420322736659458896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1) - (A190913 (n + 1) + 2)

end

end A075298.P1420322736659458896

namespace A075298

/-- `A000211(n+1)-(A190913(n+1)+2)` -/
def P1420322736659458896.Spec : Prop :=
  ∀ n, P1420322736659458896.a n = A075298 n

end A075298

/-! ## A075298.P8672929374648921469

`A075091(n+1)*A075091(n)-A073145(n+1)`
-/

namespace A075298.P8672929374648921469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075091 (n + 1) * A075091 n - A073145 (n + 1)

end

end A075298.P8672929374648921469

namespace A075298

/-- `A075091(n+1)*A075091(n)-A073145(n+1)` -/
def P8672929374648921469.Spec : Prop :=
  ∀ n, P8672929374648921469.a n = A075298 n

end A075298

/-! ## A075298.P8655073065955082715

`A075418(n)-A001644(n)`
-/

namespace A075298.P8655073065955082715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075418 n - A001644 n

end

end A075298.P8655073065955082715

namespace A075298

/-- `A075418(n)-A001644(n)` -/
def P8655073065955082715.Spec : Prop :=
  ∀ n, P8655073065955082715.a n = A075298 n

end A075298

/-! ## A075298.P1219255871893770598

`A001644(n+1)-A075092(n+1)`
-/

namespace A075298.P1219255871893770598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) - A075092 (n + 1)

end

end A075298.P1219255871893770598

namespace A075298

/-- `A001644(n+1)-A075092(n+1)` -/
def P1219255871893770598.Spec : Prop :=
  ∀ n, P1219255871893770598.a n = A075298 n

end A075298

/-! ## A075298.P2506930289775475438

`A001648(n+1)-(A073817(n+1)+A073145(n+1))`
-/

namespace A075298.P2506930289775475438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (n + 1) - (A073817 (n + 1) + A073145 (n + 1))

end

end A075298.P2506930289775475438

namespace A075298

/-- `A001648(n+1)-(A073817(n+1)+A073145(n+1))` -/
def P2506930289775475438.Spec : Prop :=
  ∀ n, P2506930289775475438.a n = A075298 n

end A075298

/-! ## A075298.P2912229407116263884

`A212804(2*n+1)-(A073145(n+1)+A000045(2*n))`
-/

namespace A075298.P2912229407116263884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n + 1) - (A073145 (n + 1) + A000045 (2 * n))

end

end A075298.P2912229407116263884

namespace A075298

/-- `A212804(2*n+1)-(A073145(n+1)+A000045(2*n))` -/
def P2912229407116263884.Spec : Prop :=
  ∀ n, P2912229407116263884.a n = A075298 n

end A075298

/-! ## A075298.P17713591858383112727

`A075091(2*n+1)-A073145(n+1)`
-/

namespace A075298.P17713591858383112727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075091 (2 * n + 1) - A073145 (n + 1)

end

end A075298.P17713591858383112727

namespace A075298

/-- `A075091(2*n+1)-A073145(n+1)` -/
def P17713591858383112727.Spec : Prop :=
  ∀ n, P17713591858383112727.a n = A075298 n

end A075298

