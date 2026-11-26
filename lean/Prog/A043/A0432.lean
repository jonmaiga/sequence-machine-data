import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A043200: Numbers k such that 2 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043200, there is no canonical definition to state claims against.
-/

/-! ## A043200.P14844150399218496272

`A043980(n+1)-A283978(A276080(n))`
-/

namespace A043200.P14844150399218496272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043980 (n + 1) - A283978 (A276080 n).toNat

end

end A043200.P14844150399218496272

/-! ## A043200.P2857467226893996118

`A043980(n+1)-A007814(A073515(n+1))`
-/

namespace A043200.P2857467226893996118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043980 (n + 1) - A007814 (A073515 (n + 1)).toNat

end

end A043200.P2857467226893996118

/-!
# A043201: Numbers k such that 3 and 4 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043201, there is no canonical definition to state claims against.
-/

/-! ## A043201.P16743836069334866729

`record[A000217(A043214(n+1))%A043214(n+1)]`
-/

namespace A043201.P16743836069334866729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A043214 (n + 1)).toNat) (A043214 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043201.P16743836069334866729

/-! ## A043201.P2762690338536102778

`record[A278529(A043214(1+n))]`
-/

namespace A043201.P2762690338536102778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043214 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043201.P2762690338536102778

/-! ## A043201.P11690536547836619174

`record[A025480(A043214(1+n))]`
-/

namespace A043201.P11690536547836619174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A043214 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043201.P11690536547836619174

/-! ## A043201.P11175212198736619607

`record[A078898(A043214(n+1))]`
-/

namespace A043201.P11175212198736619607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A043214 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043201.P11175212198736619607

/-! ## A043201.P4033013492476897359

`record[A001057(A043214(n+1)-1)]`
-/

namespace A043201.P4033013492476897359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043214 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043201.P4033013492476897359

/-! ## A043201.P15021071837371768027

`record[A152271(A043214(n+1)-1)]`
-/

namespace A043201.P15021071837371768027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A043214 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043201.P15021071837371768027

/-! ## A043201.P13084113011414084391

`record[A027656(A043214(n+1)-2)]`
-/

namespace A043201.P13084113011414084391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A043214 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043201.P13084113011414084391

/-! ## A043201.P2717993467937443878

`record[A174571(A043214(n+1)+A043214(n+1))]`
-/

namespace A043201.P2717993467937443878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A043214 (n + 1) + A043214 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043201.P2717993467937443878

/-!
# A043202: Numbers k such that 3 and 5 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043202, there is no canonical definition to state claims against.
-/

/-! ## A043202.P3765560474635136292

`A043982(n+1)-A184974(A161119(n))`
-/

namespace A043202.P3765560474635136292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043982 (n + 1) - A184974 (A161119 n).toNat

end

end A043202.P3765560474635136292

/-! ## A043202.P12800206941876740216

`A037477(C(A043171(n+1), 1-(∑{digits}[n, #]-n)))`
-/

namespace A043202.P12800206941876740216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A043171 (n + 1)).toNat (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))).toNat)

end

end A043202.P12800206941876740216

/-! ## A043202.P14307095247587844764

`A043982(A032551(n+2))`
-/

namespace A043202.P14307095247587844764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043982 (A032551 (n + 2)).toNat

end

end A043202.P14307095247587844764

/-!
# A043203: Numbers k such that 3 and 6 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043203, there is no canonical definition to state claims against.
-/

/-! ## A043203.P6675676792120255856

`A037477(A043172(n+1))`
-/

namespace A043203.P6675676792120255856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043172 (n + 1)).toNat

end

end A043203.P6675676792120255856

/-! ## A043203.P900356693632762544

`A037475(A043148(n+1)%A255093(n+1))`
-/

namespace A043203.P900356693632762544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Int.tmod (A043148 (n + 1)) (A255093 (n + 1))).toNat

end

end A043203.P900356693632762544

/-! ## A043203.P7052924160566103058

`A043983(n+1)-and(A192104(2*(n+2)), A287877(3*n+2))`
-/

namespace A043203.P7052924160566103058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043983 (n + 1) - Int.land (A192104 (2 * (n + 2))) (A287877 (3 * n + 2))

end

end A043203.P7052924160566103058

/-! ## A043203.P2842068364322904926

`A037475(A043148(n+1)^A124778(n))`
-/

namespace A043203.P2842068364322904926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043148 (n + 1) : ℚ) ^ (A124778 n : ℤ))).toNat

end

end A043203.P2842068364322904926

/-!
# A043204: Numbers k such that 3 and 7 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043204, there is no canonical definition to state claims against.
-/

/-! ## A043204.P1607429186729501572

`A028904(A043243(n+1))`
-/

namespace A043204.P1607429186729501572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A043243 (n + 1)).toNat

end

end A043204.P1607429186729501572

/-! ## A043204.P4742388215501976314

`A043984(n+1)-A270417(A042645(n))`
-/

namespace A043204.P4742388215501976314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043984 (n + 1) - A270417 (A042645 n).toNat

end

end A043204.P4742388215501976314

/-! ## A043204.P17586898063964395466

`A037477(A043173(n+1)^A136400(n+2))`
-/

namespace A043204.P17586898063964395466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043173 (n + 1) : ℚ) ^ (A136400 (n + 2) : ℤ))).toNat

end

end A043204.P17586898063964395466

/-!
# A043205: Numbers k such that 3 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043205, there is no canonical definition to state claims against.
-/

/-! ## A043205.P8893299559506068100

`A157271(A044321(n+1)-1)`
-/

namespace A043205.P8893299559506068100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A044321 (n + 1) - 1).toNat

end

end A043205.P8893299559506068100

/-! ## A043205.P4216127169635764096

`A157271(A043213(2*n+1))+4`
-/

namespace A043205.P4216127169635764096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A043213 (2 * n + 1)).toNat + 4

end

end A043205.P4216127169635764096

/-! ## A043205.P16305513223587833605

`A004526(A044321(n+1)^A107711(n))`
-/

namespace A043205.P16305513223587833605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A044321 (n + 1) : ℚ) ^ (A107711 n : ℤ))).toNat

end

end A043205.P16305513223587833605

/-!
# A043206: Numbers k such that 4 and 5 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043206, there is no canonical definition to state claims against.
-/

/-! ## A043206.P7647984679506949902

`A037477(A136400(n)!*A043174(n+1))`
-/

namespace A043206.P7647984679506949902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 ((Nat.factorial (A136400 n).toNat : ℤ) * A043174 (n + 1)).toNat

end

end A043206.P7647984679506949902

/-! ## A043206.P18046675473139301096

`A037475(A043149(n+1)^A147454(n+1))`
-/

namespace A043206.P18046675473139301096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043149 (n + 1) : ℚ) ^ (A147454 (n + 1) : ℤ))).toNat

end

end A043206.P18046675473139301096

/-! ## A043206.P12978090063961245218

`A043986(A032555(n+1))`
-/

namespace A043206.P12978090063961245218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043986 (A032555 (n + 1)).toNat

end

end A043206.P12978090063961245218

/-!
# A043207: Numbers k such that 4 and 6 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043207, there is no canonical definition to state claims against.
-/

/-! ## A043207.P3507230136374746593

`A037477(A043175(n+1)^A334184(n+1))`
-/

namespace A043207.P3507230136374746593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043175 (n + 1) : ℚ) ^ (A334184 (n + 1) : ℤ))).toNat

end

end A043207.P3507230136374746593

/-! ## A043207.P8604559775187986201

`A037475(C(A043150(n+1), A334184(n+1)))`
-/

namespace A043207.P8604559775187986201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Nat.choose (A043150 (n + 1)).toNat (A334184 (n + 1)).toNat)

end

end A043207.P8604559775187986201

/-! ## A043207.P10278034369475574181

`A037477(A043175(n+1)^A309932(n))`
-/

namespace A043207.P10278034369475574181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043175 (n + 1) : ℚ) ^ (A309932 n : ℤ))).toNat

end

end A043207.P10278034369475574181

/-! ## A043207.P16141482388068498195

`A043987(n+1)-A169778(A169764(n+1))`
-/

namespace A043207.P16141482388068498195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043987 (n + 1) - A169778 (A169764 (n + 1)).toNat

end

end A043207.P16141482388068498195

/-! ## A043207.P7275369977000360489

`A043987(A032555(n+1))`
-/

namespace A043207.P7275369977000360489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043987 (A032555 (n + 1)).toNat

end

end A043207.P7275369977000360489

/-!
# A043208: Numbers k such that 4 and 7 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043208, there is no canonical definition to state claims against.
-/

/-! ## A043208.P7390204109002100519

`A037477(A043176(n+1))`
-/

namespace A043208.P7390204109002100519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043176 (n + 1)).toNat

end

end A043208.P7390204109002100519

/-! ## A043208.P3895712119762411787

`A043209(n+1)+A039388(n+1)-A043212(A062399(n+1))`
-/

namespace A043208.P3895712119762411787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043209 (n + 1) + A039388 (n + 1) - A043212 (A062399 (n + 1)).toNat

end

end A043208.P3895712119762411787

/-! ## A043208.P11839307646568603792

`A043988(A032555(n+1))`
-/

namespace A043208.P11839307646568603792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043988 (A032555 (n + 1)).toNat

end

end A043208.P11839307646568603792

/-!
# A043209: Numbers k such that 4 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043209, there is no canonical definition to state claims against.
-/

/-! ## A043209.P13597559620004139550

`record[A028904(A043249(1+n))]`
-/

namespace A043209.P13597559620004139550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A043249 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043209.P13597559620004139550

/-! ## A043209.P18283682397032101195

`A028904(A043249(n+1))`
-/

namespace A043209.P18283682397032101195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A043249 (n + 1)).toNat

end

end A043209.P18283682397032101195

/-! ## A043209.P5369623007638689058

`A043989(n+1)`
-/

namespace A043209.P5369623007638689058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043989 (n + 1)

end

end A043209.P5369623007638689058

/-!
# A043210: Numbers k such that 5 and 6 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043210, there is no canonical definition to state claims against.
-/

/-! ## A043210.P14019684292247847175

`A043990(n+1)-A181153(A084600(n))`
-/

namespace A043210.P14019684292247847175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043990 (n + 1) - A181153 (A084600 n).toNat

end

end A043210.P14019684292247847175

/-! ## A043210.P227009926427209790

`A043990(A062399(n)+1)`
-/

namespace A043210.P227009926427209790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043990 (A062399 n + 1).toNat

end

end A043210.P227009926427209790

/-!
# A043211: Numbers k such that 5 and 7 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043211, there is no canonical definition to state claims against.
-/

/-! ## A043211.P5183570201398770030

`A028904(A043252(n+1))`
-/

namespace A043211.P5183570201398770030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A043252 (n + 1)).toNat

end

end A043211.P5183570201398770030

/-! ## A043211.P16332113421482436779

`A037477(A043178(n+1))`
-/

namespace A043211.P16332113421482436779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043178 (n + 1)).toNat

end

end A043211.P16332113421482436779

/-! ## A043211.P17442506118589919996

`A043991(∑[A053501(n)])`
-/

namespace A043211.P17442506118589919996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043991 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A043211.P17442506118589919996

/-!
# A043212: Numbers k such that 5 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043212, there is no canonical definition to state claims against.
-/

/-! ## A043212.P439078919582386456

`A043992(n+1)`
-/

namespace A043212.P439078919582386456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043992 (n + 1)

end

end A043212.P439078919582386456

/-!
# A043213: Numbers k such that 6 and 7 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043213, there is no canonical definition to state claims against.
-/

/-! ## A043213.P5660593893711469603

`record[A028904(A043255(1+n))]`
-/

namespace A043213.P5660593893711469603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A043255 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043213.P5660593893711469603

/-! ## A043213.P11766154251261029548

`A028904(A043255(n+1))`
-/

namespace A043213.P11766154251261029548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A043255 (n + 1)).toNat

end

end A043213.P11766154251261029548

/-!
# A043214: Numbers k such that 6 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043214, there is no canonical definition to state claims against.
-/

/-! ## A043214.P2273038084906399027

`A043994(n+1)`
-/

namespace A043214.P2273038084906399027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043994 (n + 1)

end

end A043214.P2273038084906399027

/-!
# A043215: Numbers k such that 7 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043215, there is no canonical definition to state claims against.
-/

/-! ## A043215.P10299822945525750004

`A043485(8*A187829(n+1))`
-/

namespace A043215.P10299822945525750004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043485 (8 * A187829 (n + 1)).toNat

end

end A043215.P10299822945525750004

/-!
# A043216: Numbers k such that 0 and 1 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043216, there is no canonical definition to state claims against.
-/

/-! ## A043216.P14161611729247973014

`A007095(A043180(n+1))`
-/

namespace A043216.P14161611729247973014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043180 (n + 1)).toNat

end

end A043216.P14161611729247973014

/-!
# A043217: Numbers k such that 0 and 2 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043217, there is no canonical definition to state claims against.
-/

/-! ## A043217.P18401751939969353441

`∩[A043221(n+1), A008588(n)]/3`
-/

namespace A043217.P18401751939969353441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 3

end

end A043217.P18401751939969353441

/-! ## A043217.P15950341773015511916

`record[A078898(A004396(A043221(n+1)))]`
-/

namespace A043217.P15950341773015511916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A004396 (A043221 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043217.P15950341773015511916

/-! ## A043217.P7720549493827881097

`record[A235049(A043218(n+1))-C(n, 33)]`
-/

namespace A043217.P7720549493827881097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043218 (n + 1)).toNat - (Nat.choose n 33 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043217.P7720549493827881097

/-! ## A043217.P15673177270591430662

`record[A235049(A165878(n)+A043218(n+1))]`
-/

namespace A043217.P15673177270591430662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A165878 n + A043218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043217.P15673177270591430662

/-! ## A043217.P1395015710843357549

`A007095(A043181(n+1)^A153683(n+1))`
-/

namespace A043217.P1395015710843357549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043181 (n + 1) : ℚ) ^ (A153683 (n + 1) : ℤ))).toNat

end

end A043217.P1395015710843357549

/-!
# A043218: Numbers k such that 0 and 3 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043218, there is no canonical definition to state claims against.
-/

/-! ## A043218.P17353183816698386138

`A007095(A043182(n+1)^A278657(n))`
-/

namespace A043218.P17353183816698386138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043182 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A043218.P17353183816698386138

/-! ## A043218.P9760258207134283032

`record[A015586(n)*A235049(A043219(n+1))]`
-/

namespace A043218.P9760258207134283032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015586 n * A235049 (A043219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043218.P9760258207134283032

/-! ## A043218.P7387521873627695462

`record[A016272(n)*A235049(A043219(n+1))]`
-/

namespace A043218.P7387521873627695462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 n * A235049 (A043219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043218.P7387521873627695462

/-!
# A043219: Numbers k such that 0 and 4 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043219, there is no canonical definition to state claims against.
-/

/-! ## A043219.P7886159296088596336

`A007095(A043183(n+1))`
-/

namespace A043219.P7886159296088596336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043183 (n + 1)).toNat

end

end A043219.P7886159296088596336

/-!
# A043220: Numbers k such that 0 and 5 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043220, there is no canonical definition to state claims against.
-/

/-! ## A043220.P15790742435247742344

`A007095(A043184(n+1)^A278657(n))`
-/

namespace A043220.P15790742435247742344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043184 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A043220.P15790742435247742344

/-! ## A043220.P17038239182707250807

`record[A235049(A165878(n)+A043221(n+1))]`
-/

namespace A043220.P17038239182707250807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A165878 n + A043221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043220.P17038239182707250807

/-! ## A043220.P9818583136059951577

`record[A235049(A043221(n+1)%A198298(3*n+1))]`
-/

namespace A043220.P9818583136059951577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (Int.tmod (A043221 (n + 1)) (A198298 (3 * n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043220.P9818583136059951577

/-!
# A043221: Numbers k such that 0 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043221, there is no canonical definition to state claims against.
-/

/-! ## A043221.P6158773120493637358

`record[A235049(A185255(n)+A043222(n+1))]`
-/

namespace A043221.P6158773120493637358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A185255 n + A043222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043221.P6158773120493637358

/-! ## A043221.P10225337854270429445

`record[A235049(A043222(n+1))+A185284(n)]`
-/

namespace A043221.P10225337854270429445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043222 (n + 1)).toNat + A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043221.P10225337854270429445

/-! ## A043221.P225999228874957040

`record[A014560(n)*A235049(A043222(n+1))]`
-/

namespace A043221.P225999228874957040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 n * A235049 (A043222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043221.P225999228874957040

/-! ## A043221.P9529517133590966522

`record[A235049(A043222(n+1)%A075954(n))]`
-/

namespace A043221.P9529517133590966522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (Int.tmod (A043222 (n + 1)) (A075954 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043221.P9529517133590966522

/-! ## A043221.P3727714197145502504

`record[A235049(A043222(n+1))-A034549(n+1)]`
-/

namespace A043221.P3727714197145502504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043222 (n + 1)).toNat - A034549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043221.P3727714197145502504

/-!
# A043222: Numbers k such that 0 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043222, there is no canonical definition to state claims against.
-/

/-! ## A043222.P1001693989475076094

`record[A235049(A043223(n+1))+A185284(n)]`
-/

namespace A043222.P1001693989475076094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043223 (n + 1)).toNat + A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043222.P1001693989475076094

/-! ## A043222.P13630697442866086855

`record[A014560(n)*A235049(A043223(n+1))]`
-/

namespace A043222.P13630697442866086855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 n * A235049 (A043223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043222.P13630697442866086855

/-! ## A043222.P5711300953851788905

`record[A235049(A043223(n+1)%A075954(n))]`
-/

namespace A043222.P5711300953851788905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (Int.tmod (A043223 (n + 1)) (A075954 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043222.P5711300953851788905

/-! ## A043222.P6501718813469185798

`record[A235049(A043223(n+1))-A034549(n+1)]`
-/

namespace A043222.P6501718813469185798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043223 (n + 1)).toNat - A034549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043222.P6501718813469185798

/-! ## A043222.P4673291278016519158

`record[A235049(A043223(n+1))-A034553(n+1)]`
-/

namespace A043222.P4673291278016519158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043223 (n + 1)).toNat - A034553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043222.P4673291278016519158

/-!
# A043223: Numbers k such that 0 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043223, there is no canonical definition to state claims against.
-/

/-! ## A043223.P14509045911964511863

`A007095(A043187(n+1))`
-/

namespace A043223.P14509045911964511863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043187 (n + 1)).toNat

end

end A043223.P14509045911964511863

/-!
# A043225: Numbers k such that 1 and 2 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043225, there is no canonical definition to state claims against.
-/

/-! ## A043225.P9968086854995796667

`A007095(A043188(n+1))`
-/

namespace A043225.P9968086854995796667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043188 (n + 1)).toNat

end

end A043225.P9968086854995796667

/-!
# A043226: Numbers k such that 1 and 3 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043226, there is no canonical definition to state claims against.
-/

/-! ## A043226.P5928966751378628374

`A007095(A043189(n+1))`
-/

namespace A043226.P5928966751378628374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043189 (n + 1)).toNat

end

end A043226.P5928966751378628374

/-! ## A043226.P6867292617430133468

`A007094(A043160(n+1)%A091100(n+1))`
-/

namespace A043226.P6867292617430133468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A043160 (n + 1)) (A091100 (n + 1))).toNat

end

end A043226.P6867292617430133468

/-!
# A043227: Numbers k such that 1 and 4 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043227, there is no canonical definition to state claims against.
-/

/-! ## A043227.P1311316659740666130

`A007095(A043190(n+1))`
-/

namespace A043227.P1311316659740666130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043190 (n + 1)).toNat

end

end A043227.P1311316659740666130

/-!
# A043228: Numbers k such that 1 and 5 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043228, there is no canonical definition to state claims against.
-/

/-! ## A043228.P14721309030672471459

`A007095(A043191(n+1)%A134595(n))`
-/

namespace A043228.P14721309030672471459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043191 (n + 1)) (A134595 n)).toNat

end

end A043228.P14721309030672471459

/-! ## A043228.P10763737846973233890

`A007094(A043162(n+1))`
-/

namespace A043228.P10763737846973233890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043162 (n + 1)).toNat

end

end A043228.P10763737846973233890

/-! ## A043228.P7624057331001626162

`A007095(A043191(n+1))`
-/

namespace A043228.P7624057331001626162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043191 (n + 1)).toNat

end

end A043228.P7624057331001626162

/-!
# A043229: Numbers k such that 1 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043229, there is no canonical definition to state claims against.
-/

/-! ## A043229.P17432292668240462390

`A007095(A043192(n+1))`
-/

namespace A043229.P17432292668240462390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043192 (n + 1)).toNat

end

end A043229.P17432292668240462390

/-! ## A043229.P1220530127509914784

`A007094(A043163(n+1))`
-/

namespace A043229.P1220530127509914784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043163 (n + 1)).toNat

end

end A043229.P1220530127509914784

/-!
# A043230: Numbers k such that 1 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043230, there is no canonical definition to state claims against.
-/

/-! ## A043230.P13443426635919661255

`A007095(A043193(n+1))`
-/

namespace A043230.P13443426635919661255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043193 (n + 1)).toNat

end

end A043230.P13443426635919661255

/-! ## A043230.P4267140060498229180

`A007094(A043164(n+1)^A262438(n))`
-/

namespace A043230.P4267140060498229180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A043164 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043230.P4267140060498229180

/-!
# A043231: Numbers k such that 1 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043231, there is no canonical definition to state claims against.
-/

/-! ## A043231.P1299396385742828264

`A007095(A043194(n+1))`
-/

namespace A043231.P1299396385742828264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043194 (n + 1)).toNat

end

end A043231.P1299396385742828264

/-!
# A043232: Numbers k such that 1 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043232, there is no canonical definition to state claims against.
-/

/-! ## A043232.P1446977018478196139

`or(A001222(A061860(2*n)), A061877(2*(n+1)))`
-/

namespace A043232.P1446977018478196139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A061860 (2 * n)).toNat) (A061877 (2 * (n + 1)))

end

end A043232.P1446977018478196139

/-!
# A043233: Numbers k such that 2 and 3 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043233, there is no canonical definition to state claims against.
-/

/-! ## A043233.P17432692529903382586

`A007095(A043195(n+1))`
-/

namespace A043233.P17432692529903382586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043195 (n + 1)).toNat

end

end A043233.P17432692529903382586

/-!
# A043234: Numbers k such that 2 and 4 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043234, there is no canonical definition to state claims against.
-/

/-! ## A043234.P2187050038153490704

`A007095(A043196(n+1))`
-/

namespace A043234.P2187050038153490704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043196 (n + 1)).toNat

end

end A043234.P2187050038153490704

/-! ## A043234.P13612621496144709679

`A007094(A043166(n+1)%A089315(n))`
-/

namespace A043234.P13612621496144709679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A043166 (n + 1)) (A089315 n)).toNat

end

end A043234.P13612621496144709679

/-!
# A043235: Numbers k such that 2 and 5 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043235, there is no canonical definition to state claims against.
-/

/-! ## A043235.P16415868052009817363

`A007094(A043167(n+1))`
-/

namespace A043235.P16415868052009817363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043167 (n + 1)).toNat

end

end A043235.P16415868052009817363

/-! ## A043235.P9642017508062495321

`A007095(A043197(n+1))`
-/

namespace A043235.P9642017508062495321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043197 (n + 1)).toNat

end

end A043235.P9642017508062495321

/-!
# A043236: Numbers k such that 2 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043236, there is no canonical definition to state claims against.
-/

/-! ## A043236.P6180918324789484602

`A007095(A043198(n+1))`
-/

namespace A043236.P6180918324789484602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043198 (n + 1)).toNat

end

end A043236.P6180918324789484602

/-! ## A043236.P17225930903041665491

`A007094(A043168(A037442(n+1)))`
-/

namespace A043236.P17225930903041665491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043168 (A037442 (n + 1)).toNat).toNat

end

end A043236.P17225930903041665491

/-!
# A043237: Numbers k such that 2 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043237, there is no canonical definition to state claims against.
-/

/-! ## A043237.P5713150837329517942

`A007095(A043199(n+1)%A235210(n+1))`
-/

namespace A043237.P5713150837329517942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043199 (n + 1)) (A235210 (n + 1))).toNat

end

end A043237.P5713150837329517942

/-! ## A043237.P2092074174574038555

`A007095(A043199(n+1))`
-/

namespace A043237.P2092074174574038555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043199 (n + 1)).toNat

end

end A043237.P2092074174574038555

/-! ## A043237.P12858437540602668173

`A007094(A043169(n+1))`
-/

namespace A043237.P12858437540602668173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043169 (n + 1)).toNat

end

end A043237.P12858437540602668173

/-!
# A043238: Numbers k such that 2 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043238, there is no canonical definition to state claims against.
-/

/-! ## A043238.P11254708820508377489

`A007095(A043200(n+1))`
-/

namespace A043238.P11254708820508377489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043200 (n + 1)).toNat

end

end A043238.P11254708820508377489

/-!
# A043239: Numbers k such that 2 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043239, there is no canonical definition to state claims against.
-/

/-! ## A043239.P1597899034152162269

`A044019(A330929(n+1))`
-/

namespace A043239.P1597899034152162269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044019 (A330929 (n + 1)).toNat

end

end A043239.P1597899034152162269

/-!
# A043240: Numbers k such that 3 and 4 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043240, there is no canonical definition to state claims against.
-/

/-! ## A043240.P11641834286134768299

`A007095(A043201(n+1))`
-/

namespace A043240.P11641834286134768299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043201 (n + 1)).toNat

end

end A043240.P11641834286134768299

/-! ## A043240.P125365816064587162

`A044020(A032551(n+2))`
-/

namespace A043240.P125365816064587162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044020 (A032551 (n + 2)).toNat

end

end A043240.P125365816064587162

/-! ## A043240.P5647177366197376790

`A007094(A043950(A048333(A048333(A007094(n+1)))))`
-/

namespace A043240.P5647177366197376790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043950 (A048333 (A048333 (A007094 (n + 1)).toNat).toNat).toNat).toNat

end

end A043240.P5647177366197376790

/-!
# A043241: Numbers k such that 3 and 5 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043241, there is no canonical definition to state claims against.
-/

/-! ## A043241.P4660262355617298341

`A007095(A043202(n+1))`
-/

namespace A043241.P4660262355617298341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043202 (n + 1)).toNat

end

end A043241.P4660262355617298341

/-! ## A043241.P2607219464813851426

`A007094(A043171(n+1))`
-/

namespace A043241.P2607219464813851426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043171 (n + 1)).toNat

end

end A043241.P2607219464813851426

/-! ## A043241.P16128619419385159562

`A044021(A032551(n+2))`
-/

namespace A043241.P16128619419385159562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044021 (A032551 (n + 2)).toNat

end

end A043241.P16128619419385159562

/-!
# A043242: Numbers k such that 3 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043242, there is no canonical definition to state claims against.
-/

/-! ## A043242.P10824980907815707088

`A007095(A043203(n+1))`
-/

namespace A043242.P10824980907815707088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043203 (n + 1)).toNat

end

end A043242.P10824980907815707088

/-! ## A043242.P17377719774726569117

`A044022(A032551(n+2))`
-/

namespace A043242.P17377719774726569117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044022 (A032551 (n + 2)).toNat

end

end A043242.P17377719774726569117

/-!
# A043243: Numbers k such that 3 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043243, there is no canonical definition to state claims against.
-/

/-! ## A043243.P6134289233813343266

`A037479(A043204(n+1))`
-/

namespace A043243.P6134289233813343266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (A043204 (n + 1)).toNat

end

end A043243.P6134289233813343266

/-! ## A043243.P7622327915457363301

`A007095(A043204(n+1)%A134595(n))`
-/

namespace A043243.P7622327915457363301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043204 (n + 1)) (A134595 n)).toNat

end

end A043243.P7622327915457363301

/-! ## A043243.P9226033387734570883

`A235049(A043249(n+3))`
-/

namespace A043243.P9226033387734570883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043249 (n + 3)).toNat

end

end A043243.P9226033387734570883

/-! ## A043243.P7895880363775961030

`A007094(A043173(n+1))`
-/

namespace A043243.P7895880363775961030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043173 (n + 1)).toNat

end

end A043243.P7895880363775961030

/-!
# A043244: Numbers k such that 3 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043244, there is no canonical definition to state claims against.
-/

/-! ## A043244.P17737559838896601225

`A007095(A043205(n+1))`
-/

namespace A043244.P17737559838896601225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043205 (n + 1)).toNat

end

end A043244.P17737559838896601225

/-! ## A043244.P3842946576279553076

`A044024(A032551(n+2))`
-/

namespace A043244.P3842946576279553076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044024 (A032551 (n + 2)).toNat

end

end A043244.P3842946576279553076

/-!
# A043245: Numbers k such that 3 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043245, there is no canonical definition to state claims against.
-/

/-! ## A043245.P3362899559445315662

`A280193(A326132(2*(n+1)))+A045809(2*(n+1))`
-/

namespace A043245.P3362899559445315662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A326132 (2 * (n + 1))).toNat + A045809 (2 * (n + 1))

end

end A043245.P3362899559445315662

/-! ## A043245.P16621874375841111863

`A044025(n+1)-A004198(A243324(n+1))`
-/

namespace A043245.P16621874375841111863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044025 (n + 1) - A004198 (A243324 (n + 1)).toNat

end

end A043245.P16621874375841111863

/-! ## A043245.P12316621214382372532

`A044025(A032551(n+2))`
-/

namespace A043245.P12316621214382372532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044025 (A032551 (n + 2)).toNat

end

end A043245.P12316621214382372532

/-!
# A043246: Numbers k such that 4 and 5 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043246, there is no canonical definition to state claims against.
-/

/-! ## A043246.P13136133840203169120

`A007095(A043206(n+1))`
-/

namespace A043246.P13136133840203169120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043206 (n + 1)).toNat

end

end A043246.P13136133840203169120

/-! ## A043246.P6730611952726323281

`A007093(A043149(n+1)^A119788(n+1))`
-/

namespace A043246.P6730611952726323281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.roundAway ((A043149 (n + 1) : ℚ) ^ (A119788 (n + 1) : ℤ))).toNat

end

end A043246.P6730611952726323281

/-! ## A043246.P9442889039297032920

`A044026(A032555(n+1))`
-/

namespace A043246.P9442889039297032920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044026 (A032555 (n + 1)).toNat

end

end A043246.P9442889039297032920

/-!
# A043247: Numbers k such that 4 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043247, there is no canonical definition to state claims against.
-/

/-! ## A043247.P12924123345778798932

`A007095(A043207(n+1))`
-/

namespace A043247.P12924123345778798932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043207 (n + 1)).toNat

end

end A043247.P12924123345778798932

/-! ## A043247.P12787003990324257498

`A007094(A043175(n+1)^A262438(n))`
-/

namespace A043247.P12787003990324257498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A043175 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043247.P12787003990324257498

/-! ## A043247.P13210725103928831940

`A044027(A032555(n+1))`
-/

namespace A043247.P13210725103928831940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044027 (A032555 (n + 1)).toNat

end

end A043247.P13210725103928831940

/-!
# A043248: Numbers k such that 4 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043248, there is no canonical definition to state claims against.
-/

/-! ## A043248.P17643658152663983849

`A007095(A043208(n+1)%A048255(n+1))`
-/

namespace A043248.P17643658152663983849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043208 (n + 1)) (A048255 (n + 1))).toNat

end

end A043248.P17643658152663983849

/-! ## A043248.P16558740688169936006

`A007094(A043176(n+1))`
-/

namespace A043248.P16558740688169936006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043176 (n + 1)).toNat

end

end A043248.P16558740688169936006

/-! ## A043248.P6476335829414902392

`A007095(A043208(n+1))`
-/

namespace A043248.P6476335829414902392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043208 (n + 1)).toNat

end

end A043248.P6476335829414902392

/-! ## A043248.P483940752325302970

`A044028(A032555(n+1))`
-/

namespace A043248.P483940752325302970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044028 (A032555 (n + 1)).toNat

end

end A043248.P483940752325302970

/-!
# A043249: Numbers k such that 4 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043249, there is no canonical definition to state claims against.
-/

/-! ## A043249.P7302182510925635937

`A007095(A043209(n+1))`
-/

namespace A043249.P7302182510925635937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043209 (n + 1)).toNat

end

end A043249.P7302182510925635937

/-! ## A043249.P14625598085097595008

`A044029(A032555(n+1))`
-/

namespace A043249.P14625598085097595008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044029 (A032555 (n + 1)).toNat

end

end A043249.P14625598085097595008

/-!
# A043250: Numbers k such that 4 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043250, there is no canonical definition to state claims against.
-/

/-! ## A043250.P12658439427617386856

`A044030(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A043250.P12658439427617386856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044030 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A043250.P12658439427617386856

/-!
# A043251: Numbers k such that 5 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043251, there is no canonical definition to state claims against.
-/

/-! ## A043251.P15929720407255217673

`A007095(A043210(n+1))`
-/

namespace A043251.P15929720407255217673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043210 (n + 1)).toNat

end

end A043251.P15929720407255217673

/-! ## A043251.P1766980306254376002

`A007094(A043177(n+1)%A153048(n+1))`
-/

namespace A043251.P1766980306254376002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A043177 (n + 1)) (A153048 (n + 1))).toNat

end

end A043251.P1766980306254376002

/-! ## A043251.P5887118254311785353

`A007094(A043177(n+1)^A333737(n))`
-/

namespace A043251.P5887118254311785353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A043177 (n + 1) : ℚ) ^ (A333737 n : ℤ))).toNat

end

end A043251.P5887118254311785353

/-!
# A043252: Numbers k such that 5 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043252, there is no canonical definition to state claims against.
-/

/-! ## A043252.P13327077698083112731

`A007095(A043211(n+1)%A125016(2*n+3))`
-/

namespace A043252.P13327077698083112731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043211 (n + 1)) (A125016 (2 * n + 3))).toNat

end

end A043252.P13327077698083112731

/-! ## A043252.P14215898316257938820

`A007094(A043178(n+1))`
-/

namespace A043252.P14215898316257938820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043178 (n + 1)).toNat

end

end A043252.P14215898316257938820

/-!
# A043253: Numbers k such that 5 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043253, there is no canonical definition to state claims against.
-/

/-! ## A043253.P15740748492334603553

`A007095(A043212(n+1))`
-/

namespace A043253.P15740748492334603553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043212 (n + 1)).toNat

end

end A043253.P15740748492334603553

/-!
# A043255: Numbers k such that 6 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043255, there is no canonical definition to state claims against.
-/

/-! ## A043255.P16413794081255633733

`A007095(A043213(n+1))`
-/

namespace A043255.P16413794081255633733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043213 (n + 1)).toNat

end

end A043255.P16413794081255633733

/-!
# A043256: Numbers k such that 6 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043256, there is no canonical definition to state claims against.
-/

/-! ## A043256.P6746582773161822504

`A007095(A043214(n+1)%A068216(n+3))`
-/

namespace A043256.P6746582773161822504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043214 (n + 1)) (A068216 (n + 3))).toNat

end

end A043256.P6746582773161822504

/-! ## A043256.P1541087995804510577

`A007095(A043214(n+1))`
-/

namespace A043256.P1541087995804510577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043214 (n + 1)).toNat

end

end A043256.P1541087995804510577

/-!
# A043257: Numbers k such that 6 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043257, there is no canonical definition to state claims against.
-/

/-! ## A043257.P4560634194391282381

`A044037(n+1)`
-/

namespace A043257.P4560634194391282381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044037 (n + 1)

end

end A043257.P4560634194391282381

/-!
# A043258: Numbers k such that 7 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043258, there is no canonical definition to state claims against.
-/

/-! ## A043258.P1634897866409464299

`A044038(n+1)`
-/

namespace A043258.P1634897866409464299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044038 (n + 1)

end

end A043258.P1634897866409464299

/-!
# A043259: Numbers k such that 7 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043259, there is no canonical definition to state claims against.
-/

/-! ## A043259.P5964640324489324278

`A044039(n+1)`
-/

namespace A043259.P5964640324489324278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044039 (n + 1)

end

end A043259.P5964640324489324278

/-! ## A043259.P1231567098516990206

`A031499(8*A187829(n+1))`
-/

namespace A043259.P1231567098516990206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031499 (8 * A187829 (n + 1)).toNat

end

end A043259.P1231567098516990206

/-! ## A043259.P11516021448423834288

`A045807(record[or(2, n)+1]%A268662(n+1))`
-/

namespace A043259.P11516021448423834288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) (A268662 (n + 1))).toNat

end

end A043259.P11516021448423834288

/-!
# A043260: Numbers k such that 8 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043260, there is no canonical definition to state claims against.
-/

/-! ## A043260.P9067049080878799704

`A044040(n+1)-A185255(A004275(n))`
-/

namespace A043260.P9067049080878799704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1) - A185255 (A004275 n).toNat

end

end A043260.P9067049080878799704

/-!
# A043261: Sum of the binary digits of the n-th base-2 palindrome.

The programs for A043261, the canonical program `A043261.P11586141180231525670` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043261 has offset 1).

The definition of A043261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043261.P11586141180231525670

`∑{digits}[A057148(1+n), #]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043261

/-- `∑{digits}[A057148(1+n), #]` -/
def P11586141180231525670.Spec : Prop :=
  ∀ n, (P11586141180231525670.a n : ℤ) = A043261 (n + 1)

theorem P11586141180231525670.correct : P11586141180231525670.Spec := by
  intro n
  simp only [A043261, Nat.add_sub_cancel]

end A043261

/-! ## A043261.P5947296192276711734

`∑{digits}[A101705(1+n), A096268(#)]`
-/

namespace A043261.P5947296192276711734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101705 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A096268 x).sum

end

end A043261.P5947296192276711734

namespace A043261

/-- `∑{digits}[A101705(1+n), A096268(#)]` -/
def P5947296192276711734.Spec : Prop :=
  ∀ n, P5947296192276711734.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P14780386166544343691

`∑{digits}[A101705(n+1), A103609(A103609(#+1))]`
-/

namespace A043261.P14780386166544343691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A103609 (A103609 (x + 1)).toNat).sum

end

end A043261.P14780386166544343691

namespace A043261

/-- `∑{digits}[A101705(n+1), A103609(A103609(#+1))]` -/
def P14780386166544343691.Spec : Prop :=
  ∀ n, P14780386166544343691.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P8780830948502388499

`A001222(A001316(A006995(n+1)))`
-/

namespace A043261.P8780830948502388499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (A006995 (n + 1)).toNat).toNat

end

end A043261.P8780830948502388499

namespace A043261

/-- `A001222(A001316(A006995(n+1)))` -/
def P8780830948502388499.Spec : Prop :=
  ∀ n, P8780830948502388499.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P17495696434579336656

`A274036(A006995(n+1))`
-/

namespace A043261.P17495696434579336656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (A006995 (n + 1)).toNat

end

end A043261.P17495696434579336656

namespace A043261

/-- `A274036(A006995(n+1))` -/
def P17495696434579336656.Spec : Prop :=
  ∀ n, P17495696434579336656.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P9962957173040278830

`log2(A001316(2*A006995(n+1)))`
-/

namespace A043261.P9962957173040278830
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (2 * A006995 (n + 1)).toNat : ℝ)

end

end A043261.P9962957173040278830

namespace A043261

/-- `log2(A001316(2*A006995(n+1)))` -/
def P9962957173040278830.Spec : Prop :=
  ∀ n, P9962957173040278830.a n = (A043261 (n + 1) : ℝ)

end A043261

/-! ## A043261.P2518493792984364617

`∑{d}[A006995(n+1), A297115(#)]`
-/

namespace A043261.P2518493792984364617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297115 d

end

end A043261.P2518493792984364617

namespace A043261

/-- `∑{d}[A006995(n+1), A297115(#)]` -/
def P2518493792984364617.Spec : Prop :=
  ∀ n, P2518493792984364617.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P10367523376557719615

`A005811(A126684(n+1))`
-/

namespace A043261.P10367523376557719615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A126684 (n + 1)).toNat

end

end A043261.P10367523376557719615

namespace A043261

/-- `A005811(A126684(n+1))` -/
def P10367523376557719615.Spec : Prop :=
  ∀ n, P10367523376557719615.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P9654883939257400916

`A000120(A006995(n+1))`
-/

namespace A043261.P9654883939257400916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006995 (n + 1)).toNat

end

end A043261.P9654883939257400916

namespace A043261

/-- `A000120(A006995(n+1))` -/
def P9654883939257400916.Spec : Prop :=
  ∀ n, P9654883939257400916.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P14472527100775215433

`A159780(eq[n, A030101(n)])`
-/

namespace A043261.P14472527100775215433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043261.P14472527100775215433

namespace A043261

/-- `A159780(eq[n, A030101(n)])` -/
def P14472527100775215433.Spec : Prop :=
  ∀ n, P14472527100775215433.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P14099155214682568954

`A000120(record[A331471(n)])`
-/

namespace A043261.P14099155214682568954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043261.P14099155214682568954

namespace A043261

/-- `A000120(record[A331471(n)])` -/
def P14099155214682568954.Spec : Prop :=
  ∀ n, P14099155214682568954.a n = A043261 (n + 1)

end A043261

/-!
# A043262: Sum of digits of n-th base 3 palindrome.

The programs for A043262, the canonical program `A043262.P2056796869770239774` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043262 has offset 1).

The definition of A043262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043262.P2056796869770239774

`∑{digits}[A118594(1+n), #]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043262

/-- `∑{digits}[A118594(1+n), #]` -/
def P2056796869770239774.Spec : Prop :=
  ∀ n, (P2056796869770239774.a n : ℤ) = A043262 (n + 1)

theorem P2056796869770239774.correct : P2056796869770239774.Spec := by
  intro n
  simp only [A043262, Nat.add_sub_cancel]

end A043262

/-! ## A043262.P7695680869519757381

`∑{digits}[A006072(1+n), A005811(#)]`
-/

namespace A043262.P7695680869519757381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005811 x).sum

end

end A043262.P7695680869519757381

namespace A043262

/-- `∑{digits}[A006072(1+n), A005811(#)]` -/
def P7695680869519757381.Spec : Prop :=
  ∀ n, P7695680869519757381.a n = A043262 (n + 1)

end A043262

/-! ## A043262.P5521974406965889713

`∑{digits}[A006072(1+n), A130130(#)]`
-/

namespace A043262.P5521974406965889713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A130130 x).sum

end

end A043262.P5521974406965889713

namespace A043262

/-- `∑{digits}[A006072(1+n), A130130(#)]` -/
def P5521974406965889713.Spec : Prop :=
  ∀ n, P5521974406965889713.a n = A043262 (n + 1)

end A043262

/-! ## A043262.P1628671579250543783

`∑{digits}[A006072(n+1), A001222(#+1)]`
-/

namespace A043262.P1628671579250543783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001222 (x + 1)).sum

end

end A043262.P1628671579250543783

namespace A043262

/-- `∑{digits}[A006072(n+1), A001222(#+1)]` -/
def P1628671579250543783.Spec : Prop :=
  ∀ n, P1628671579250543783.a n = A043262 (n + 1)

end A043262

/-! ## A043262.P13762445764642268723

`∑{digits}[A006072(n+1), A025800(#+1)]`
-/

namespace A043262.P13762445764642268723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025800 (x + 1)).sum

end

end A043262.P13762445764642268723

namespace A043262

/-- `∑{digits}[A006072(n+1), A025800(#+1)]` -/
def P13762445764642268723.Spec : Prop :=
  ∀ n, P13762445764642268723.a n = A043262 (n + 1)

end A043262

/-! ## A043262.P619786922395094429

`A053735(record[A265511(n)])`
-/

namespace A043262.P619786922395094429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043262.P619786922395094429

namespace A043262

/-- `A053735(record[A265511(n)])` -/
def P619786922395094429.Spec : Prop :=
  ∀ n, P619786922395094429.a n = A043262 (n + 1)

end A043262

/-! ## A043262.P8663323628219888970

`∑{digits}[record[gcd(A007089(n), A055947(n))], #]`
-/

namespace A043262.P8663323628219888970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007089 n) (A055947 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A043262.P8663323628219888970

namespace A043262

/-- `∑{digits}[record[gcd(A007089(n), A055947(n))], #]` -/
def P8663323628219888970.Spec : Prop :=
  ∀ n, (P8663323628219888970.a n : ℤ) = A043262 (n + 1)

end A043262

/-!
# A043263: Sum of the digits of the n-th base 4 palindrome.

The programs for A043263, there is no canonical definition to state claims against.
-/

/-! ## A043263.P12676703439390087837

`∑{digits}[A118595(1+n), #]`
-/

namespace A043263.P12676703439390087837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043263.P12676703439390087837

/-! ## A043263.P3617107375645640275

`A053737(A014192(1+n))`
-/

namespace A043263.P3617107375645640275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A014192 (1 + n)).toNat

end

end A043263.P3617107375645640275

/-! ## A043263.P5536300009847019272

`∑{digits}[A007090(record[and(n, A030103(n))]), #]`
-/

namespace A043263.P5536300009847019272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A030103 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043263.P5536300009847019272

/-! ## A043263.P12915462975532992108

`A326746(A118595(n+1))`
-/

namespace A043263.P12915462975532992108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A118595 (n + 1)).toNat

end

end A043263.P12915462975532992108

/-! ## A043263.P6874150387583450227

`A007953(A118595(n+1))`
-/

namespace A043263.P6874150387583450227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A118595 (n + 1)).toNat

end

end A043263.P6874150387583450227

/-!
# A043264: Sum of the digits of the n-th base 5 palindrome.

The programs for A043264, there is no canonical definition to state claims against.
-/

/-! ## A043264.P7720649990163128545

`∑{digits}[A118596(1+n), #]`
-/

namespace A043264.P7720649990163128545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P7720649990163128545

/-! ## A043264.P390916218288331682

`∑{digits}[A062287(n+1)/2, #]`
-/

namespace A043264.P390916218288331682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062287 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P390916218288331682

/-! ## A043264.P13955630022185594466

`A001281(∑{digits}[A062287(1+n), #])`
-/

namespace A043264.P13955630022185594466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062287 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P13955630022185594466

/-! ## A043264.P16117666798135705819

`A004525(∑{digits}[A062287(n+1), #])`
-/

namespace A043264.P16117666798135705819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P16117666798135705819

/-! ## A043264.P15974255898638167464

`A004526(∑{digits}[A062287(n+1), #])`
-/

namespace A043264.P15974255898638167464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P15974255898638167464

/-! ## A043264.P17292128133017286031

`A006370(∑{digits}[A062287(n+1), #])`
-/

namespace A043264.P17292128133017286031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P17292128133017286031

/-! ## A043264.P294776174453182237

`A053824(A029952(n+1))`
-/

namespace A043264.P294776174453182237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A029952 (n + 1)).toNat

end

end A043264.P294776174453182237

/-! ## A043264.P10513457898970297439

`A326746(A118596(n+1))`
-/

namespace A043264.P10513457898970297439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A118596 (n + 1)).toNat

end

end A043264.P10513457898970297439

/-!
# A043265: Sum of the digits of the n-th base 6 palindrome.

The programs for A043265, the canonical program `A043265.P16558491353191641742` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043265 has offset 1).

The definition of A043265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043265.P16558491353191641742

`∑{digits}[A118597(1+n), #]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043265

/-- `∑{digits}[A118597(1+n), #]` -/
def P16558491353191641742.Spec : Prop :=
  ∀ n, (P16558491353191641742.a n : ℤ) = A043265 (n + 1)

theorem P16558491353191641742.correct : P16558491353191641742.Spec := by
  intro n
  simp only [A043265, Nat.add_sub_cancel]

end A043265

/-! ## A043265.P12755405282231583273

`log2(∏{digits}[A118597(1+n), A007055(#)])`
-/

namespace A043265.P12755405282231583273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (1 + n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007055 x).prod : ℤ) : ℝ)

end

end A043265.P12755405282231583273

namespace A043265

/-- `log2(∏{digits}[A118597(1+n), A007055(#)])` -/
def P12755405282231583273.Spec : Prop :=
  ∀ n, P12755405282231583273.a n = (A043265 (n + 1) : ℝ)

end A043265

/-! ## A043265.P5568072063973561919

`val(∏{digits}[A118597(n+1), A007055(#)], 2)`
-/

namespace A043265.P5568072063973561919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007055 x).prod.toNat 2

end

end A043265.P5568072063973561919

namespace A043265

/-- `val(∏{digits}[A118597(n+1), A007055(#)], 2)` -/
def P5568072063973561919.Spec : Prop :=
  ∀ n, (P5568072063973561919.a n : ℤ) = A043265 (n + 1)

end A043265

/-! ## A043265.P7697274639208785791

`A053827(A029953(1+n))`
-/

namespace A043265.P7697274639208785791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A029953 (1 + n)).toNat

end

end A043265.P7697274639208785791

namespace A043265

/-- `A053827(A029953(1+n))` -/
def P7697274639208785791.Spec : Prop :=
  ∀ n, P7697274639208785791.a n = A043265 (n + 1)

end A043265

/-! ## A043265.P459680692856905792

`∑{digits}[A007092(A029953(n+1)), A004086(#)]`
-/

namespace A043265.P459680692856905792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A029953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004086 x).sum

end

end A043265.P459680692856905792

namespace A043265

/-- `∑{digits}[A007092(A029953(n+1)), A004086(#)]` -/
def P459680692856905792.Spec : Prop :=
  ∀ n, P459680692856905792.a n = A043265 (n + 1)

end A043265

/-! ## A043265.P939339585005727537

`A326746(A118597(n+1))`
-/

namespace A043265.P939339585005727537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A118597 (n + 1)).toNat

end

end A043265.P939339585005727537

namespace A043265

/-- `A326746(A118597(n+1))` -/
def P939339585005727537.Spec : Prop :=
  ∀ n, P939339585005727537.a n = A043265 (n + 1)

end A043265

/-! ## A043265.P11454708355790194964

`A007953(A118597(n+1))`
-/

namespace A043265.P11454708355790194964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A118597 (n + 1)).toNat

end

end A043265.P11454708355790194964

namespace A043265

/-- `A007953(A118597(n+1))` -/
def P11454708355790194964.Spec : Prop :=
  ∀ n, P11454708355790194964.a n = A043265 (n + 1)

end A043265

/-!
# A043266: Sum of the digits of the n-th base 7 palindrome.

The programs for A043266, the canonical program `A043266.P6328720298031536006` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043266 has offset 1).

The definition of A043266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043266.P6328720298031536006

`∑{digits}[A118598(1+n), #]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043266

/-- `∑{digits}[A118598(1+n), #]` -/
def P6328720298031536006.Spec : Prop :=
  ∀ n, (P6328720298031536006.a n : ℤ) = A043266 (n + 1)

theorem P6328720298031536006.correct : P6328720298031536006.Spec := by
  intro n
  simp only [A043266, Nat.add_sub_cancel]

end A043266

/-! ## A043266.P14659769842792252373

`A053828(A029954(n+1))`
-/

namespace A043266.P14659769842792252373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A029954 (n + 1)).toNat

end

end A043266.P14659769842792252373

namespace A043266

/-- `A053828(A029954(n+1))` -/
def P14659769842792252373.Spec : Prop :=
  ∀ n, P14659769842792252373.a n = A043266 (n + 1)

end A043266

/-! ## A043266.P15311972233786856056

`∑{digits}[A007093(A029954(1+n)), A262087(#)]`
-/

namespace A043266.P15311972233786856056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A029954 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A262087 x).sum

end

end A043266.P15311972233786856056

namespace A043266

/-- `∑{digits}[A007093(A029954(1+n)), A262087(#)]` -/
def P15311972233786856056.Spec : Prop :=
  ∀ n, P15311972233786856056.a n = A043266 (n + 1)

end A043266

/-! ## A043266.P10823112891483666442

`∑{digits}[A007093(A029954(n+1)), A265525(#)]`
-/

namespace A043266.P10823112891483666442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A029954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A265525 x).sum

end

end A043266.P10823112891483666442

namespace A043266

/-- `∑{digits}[A007093(A029954(n+1)), A265525(#)]` -/
def P10823112891483666442.Spec : Prop :=
  ∀ n, P10823112891483666442.a n = A043266 (n + 1)

end A043266

/-! ## A043266.P17593699756969147712

`A007953(A118598(n+1)%or(n+2, n)²)`
-/

namespace A043266.P17593699756969147712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (Int.tmod (A118598 (n + 1)) (Nat.lor (n + 2) n ^ 2 : ℤ)).toNat

end

end A043266.P17593699756969147712

namespace A043266

/-- `A007953(A118598(n+1)%or(n+2, n)²)` -/
def P17593699756969147712.Spec : Prop :=
  ∀ n, P17593699756969147712.a n = A043266 (n + 1)

end A043266

/-! ## A043266.P17234803548335714433

`A007953(A118598(n+1))`
-/

namespace A043266.P17234803548335714433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A118598 (n + 1)).toNat

end

end A043266.P17234803548335714433

namespace A043266

/-- `A007953(A118598(n+1))` -/
def P17234803548335714433.Spec : Prop :=
  ∀ n, P17234803548335714433.a n = A043266 (n + 1)

end A043266

/-! ## A043266.P15578108021767069732

`∑{digits}[record[A047813(A007093(n))], #]`
-/

namespace A043266.P15578108021767069732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A007093 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043266.P15578108021767069732

namespace A043266

/-- `∑{digits}[record[A047813(A007093(n))], #]` -/
def P15578108021767069732.Spec : Prop :=
  ∀ n, (P15578108021767069732.a n : ℤ) = A043266 (n + 1)

end A043266

/-! ## A043266.P16242682301647839000

`A004092(5*A118598(n+1))`
-/

namespace A043266.P16242682301647839000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A118598 (n + 1)).toNat

end

end A043266.P16242682301647839000

namespace A043266

/-- `A004092(5*A118598(n+1))` -/
def P16242682301647839000.Spec : Prop :=
  ∀ n, P16242682301647839000.a n = A043266 (n + 1)

end A043266

/-!
# A043267: Sum of the digits of the n-th base 8 palindrome.

The programs for A043267, the canonical program `A043267.P13903830029709710112` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043267 has offset 1).

The definition of A043267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043267.P13903830029709710112

`∑{digits}[A118599(n+1), #]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043267

/-- `∑{digits}[A118599(n+1), #]` -/
def P13903830029709710112.Spec : Prop :=
  ∀ n, (P13903830029709710112.a n : ℤ) = A043267 (n + 1)

theorem P13903830029709710112.correct : P13903830029709710112.Spec := by
  intro n
  simp only [A043267, Nat.add_sub_cancel]

end A043267

/-! ## A043267.P481712077876602936

`A053829(A029803(n+1))`
-/

namespace A043267.P481712077876602936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A029803 (n + 1)).toNat

end

end A043267.P481712077876602936

namespace A043267

/-- `A053829(A029803(n+1))` -/
def P481712077876602936.Spec : Prop :=
  ∀ n, P481712077876602936.a n = A043267 (n + 1)

end A043267

/-! ## A043267.P10885219982184526097

`A007953(A118599(1+n))`
-/

namespace A043267.P10885219982184526097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A118599 (1 + n)).toNat

end

end A043267.P10885219982184526097

namespace A043267

/-- `A007953(A118599(1+n))` -/
def P10885219982184526097.Spec : Prop :=
  ∀ n, P10885219982184526097.a n = A043267 (n + 1)

end A043267

/-! ## A043267.P2027123682667214807

`∑{digits}[record[A047813(A007094(n))], #]`
-/

namespace A043267.P2027123682667214807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A007094 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043267.P2027123682667214807

namespace A043267

/-- `∑{digits}[record[A047813(A007094(n))], #]` -/
def P2027123682667214807.Spec : Prop :=
  ∀ n, (P2027123682667214807.a n : ℤ) = A043267 (n + 1)

end A043267

/-! ## A043267.P2267892248271738392

`∑{digits}[record[A235049(A118600(n+1))], #]`
-/

namespace A043267.P2267892248271738392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A118600 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043267.P2267892248271738392

namespace A043267

/-- `∑{digits}[record[A235049(A118600(n+1))], #]` -/
def P2267892248271738392.Spec : Prop :=
  ∀ n, (P2267892248271738392.a n : ℤ) = A043267 (n + 1)

end A043267

/-!
# A043268: Sum of digits of n-th base 9 palindrome.

The programs for A043268, the canonical program `A043268.P12149107845254770252` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043268 has offset 1).

The definition of A043268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043268.P12149107845254770252

`∑{digits}[A118600(1+n), #]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043268

/-- `∑{digits}[A118600(1+n), #]` -/
def P12149107845254770252.Spec : Prop :=
  ∀ n, (P12149107845254770252.a n : ℤ) = A043268 (n + 1)

theorem P12149107845254770252.correct : P12149107845254770252.Spec := by
  intro n
  simp only [A043268, Nat.add_sub_cancel]

end A043268

/-! ## A043268.P7082346898553889710

`A053830(A029955(1+n))`
-/

namespace A043268.P7082346898553889710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A029955 (1 + n)).toNat

end

end A043268.P7082346898553889710

namespace A043268

/-- `A053830(A029955(1+n))` -/
def P7082346898553889710.Spec : Prop :=
  ∀ n, P7082346898553889710.a n = A043268 (n + 1)

end A043268

/-! ## A043268.P12352024814675028412

`A053830(record[A265523(n)])`
-/

namespace A043268.P12352024814675028412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043268.P12352024814675028412

namespace A043268

/-- `A053830(record[A265523(n)])` -/
def P12352024814675028412.Spec : Prop :=
  ∀ n, P12352024814675028412.a n = A043268 (n + 1)

end A043268

/-! ## A043268.P5076031753580674219

`∑{digits}[A007095(record[A265523(n)]), #]`
-/

namespace A043268.P5076031753580674219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043268.P5076031753580674219

namespace A043268

/-- `∑{digits}[A007095(record[A265523(n)]), #]` -/
def P5076031753580674219.Spec : Prop :=
  ∀ n, (P5076031753580674219.a n : ℤ) = A043268 (n + 1)

end A043268

/-! ## A043268.P16109193582388999670

`∑{digits}[A007095(A029955(n+1)), A007095(#)]`
-/

namespace A043268.P16109193582388999670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A029955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007095 x).sum

end

end A043268.P16109193582388999670

namespace A043268

/-- `∑{digits}[A007095(A029955(n+1)), A007095(#)]` -/
def P16109193582388999670.Spec : Prop :=
  ∀ n, P16109193582388999670.a n = A043268 (n + 1)

end A043268

/-! ## A043268.P9723222158261607282

`A007953(A118600(n+1))`
-/

namespace A043268.P9723222158261607282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A118600 (n + 1)).toNat

end

end A043268.P9723222158261607282

namespace A043268

/-- `A007953(A118600(n+1))` -/
def P9723222158261607282.Spec : Prop :=
  ∀ n, P9723222158261607282.a n = A043268 (n + 1)

end A043268

/-! ## A043268.P8161477091678546860

`∑{digits}[record[A235049(A002113(n+1))], #]`
-/

namespace A043268.P8161477091678546860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A002113 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043268.P8161477091678546860

namespace A043268

/-- `∑{digits}[record[A235049(A002113(n+1))], #]` -/
def P8161477091678546860.Spec : Prop :=
  ∀ n, (P8161477091678546860.a n : ℤ) = A043268 (n + 1)

end A043268

/-! ## A043268.P7580890188251151475

`A004092(5*A118600(n+1))`
-/

namespace A043268.P7580890188251151475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A118600 (n + 1)).toNat

end

end A043268.P7580890188251151475

namespace A043268

/-- `A004092(5*A118600(n+1))` -/
def P7580890188251151475.Spec : Prop :=
  ∀ n, P7580890188251151475.a n = A043268 (n + 1)

end A043268

/-!
# A043269: a(n) is the sum of the digits of n-th base-10 palindrome.

The programs for A043269, there is no canonical definition to state claims against.
-/

/-! ## A043269.P10532019419593107376

`A007953(A002113(n+1))`
-/

namespace A043269.P10532019419593107376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002113 (n + 1)).toNat

end

end A043269.P10532019419593107376

/-! ## A043269.P8210115674768386860

`∑{digits}[A002113(1+n), #]`
-/

namespace A043269.P8210115674768386860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P8210115674768386860

/-! ## A043269.P6109462792117525601

`∑{digits}[sqrt(A014186(1+n)), #]`
-/

namespace A043269.P6109462792117525601
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014186 (1 + n) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P6109462792117525601

/-! ## A043269.P9199712455163120898

`∑{digits}[A014187(n)^(1/3), #]`
-/

namespace A043269.P9199712455163120898
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P9199712455163120898

/-! ## A043269.P4581212655098842492

`∑{digits}[∑[A086862(abs(1-n)+1)]-1, #]`
-/

namespace A043269.P4581212655098842492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P4581212655098842492

/-! ## A043269.P1144153274490082077

`∑{digits}[record[A002113(A328399(n))], #]`
-/

namespace A043269.P1144153274490082077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P1144153274490082077

/-! ## A043269.P4106645622822161001

`∑{digits}[A086862(n+1)-∑[A086862(n+1)], #]`
-/

namespace A043269.P4106645622822161001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P4106645622822161001

/-! ## A043269.P11728444402230531587

`∑{digits}[record[A002113(A152271(n))], #]`
-/

namespace A043269.P11728444402230531587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P11728444402230531587

/-! ## A043269.P2426743277224862464

`∑{digits}[record[A047813(n)], #]`
-/

namespace A043269.P2426743277224862464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P2426743277224862464

/-! ## A043269.P16527028525150590168

`∑{digits}[record[A262087(n)], #]`
-/

namespace A043269.P16527028525150590168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P16527028525150590168

/-! ## A043269.P185552398352826565

`∑{digits}[record[A265525(n)], #]`
-/

namespace A043269.P185552398352826565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P185552398352826565

/-! ## A043269.P15434079863566816669

`∑{digits}[record[A331472(n)], #]`
-/

namespace A043269.P15434079863566816669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P15434079863566816669

/-! ## A043269.P8015456758703703086

`∑{digits}[lt[A241173(n), 1], #]`
-/

namespace A043269.P8015456758703703086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A043269.P8015456758703703086

/-! ## A043269.P5503749163358105312

`∑{digits}[lt[A262257(n), 1], #]`
-/

namespace A043269.P5503749163358105312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262257 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A043269.P5503749163358105312

/-! ## A043269.P9262136045333317831

`∑{digits}[lt[A338827(n), 1], #]`
-/

namespace A043269.P9262136045333317831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A043269.P9262136045333317831

/-! ## A043269.P2946666206152418928

`A007953(record[A047813(n)])`
-/

namespace A043269.P2946666206152418928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043269.P2946666206152418928

/-!
# A043270: Sum of the digits of the n-th base 11 palindrome.

The programs for A043270, there is no canonical definition to state claims against.
-/

/-! ## A043270.P6700881909528118152

`A053831(A029956(1+n))`
-/

namespace A043270.P6700881909528118152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (A029956 (1 + n)).toNat

end

end A043270.P6700881909528118152

/-!
# A043271: Sum of the digits of the n-th base 12 palindrome.

The programs for A043271, there is no canonical definition to state claims against.
-/

/-! ## A043271.P800329665457985334

`A053832(A029957(1+n))`
-/

namespace A043271.P800329665457985334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (A029957 (1 + n)).toNat

end

end A043271.P800329665457985334

/-!
# A043272: Sum of the digits of the n-th base 13 palindrome.

The programs for A043272, there is no canonical definition to state claims against.
-/

/-! ## A043272.P13468369830497576272

`A053833(A029958(1+n))`
-/

namespace A043272.P13468369830497576272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053833 (A029958 (1 + n)).toNat

end

end A043272.P13468369830497576272

/-!
# A043273: Sum of the digits of the n-th base 14 palindrome.

The programs for A043273, there is no canonical definition to state claims against.
-/

/-! ## A043273.P11958626867345376365

`A053834(A029959(1+n))`
-/

namespace A043273.P11958626867345376365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053834 (A029959 (1 + n)).toNat

end

end A043273.P11958626867345376365

/-! ## A043273.P9772052185259638266

`A053834(A048325(n))`
-/

namespace A043273.P9772052185259638266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053834 (A048325 n).toNat

end

end A043273.P9772052185259638266

/-!
# A043274: Sum of the digits of the n-th base 15 palindrome.

The programs for A043274, there is no canonical definition to state claims against.
-/

/-! ## A043274.P17399661017633119116

`A053835(A029960(1+n))`
-/

namespace A043274.P17399661017633119116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053835 (A029960 (1 + n)).toNat

end

end A043274.P17399661017633119116

/-! ## A043274.P12129249521979336015

`A053835(A048326(n))`
-/

namespace A043274.P12129249521979336015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053835 (A048326 n).toNat

end

end A043274.P12129249521979336015

/-!
# A043275: Sum of the digits of the n-th base 16 palindrome.

The programs for A043275, there is no canonical definition to state claims against.
-/

/-! ## A043275.P7192511112872653989

`A053836(A029730(1+n))`
-/

namespace A043275.P7192511112872653989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A029730 (1 + n)).toNat

end

end A043275.P7192511112872653989

/-!
# A043276: a(n) = maximal run length in base-2 representation of n.

The programs for A043276, the canonical program `A043276.P1642899858786712398` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043276 has offset 1).

The definition of A043276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043276.P717208204523462544

`A061395(A382255(1+n))`
-/

namespace A043276.P717208204523462544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A382255 (1 + n)).toNat

end

end A043276.P717208204523462544

namespace A043276

/-- `A061395(A382255(1+n))` -/
def P717208204523462544.Spec : Prop :=
  ∀ n, P717208204523462544.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P6453589865177374837

`max(A038374(n+1), A087117(n+1))`
-/

namespace A043276.P6453589865177374837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A038374 (n + 1)) (A087117 (n + 1))

end

end A043276.P6453589865177374837

namespace A043276

/-- `max(A038374(n+1), A087117(n+1))` -/
def P6453589865177374837.Spec : Prop :=
  ∀ n, P6453589865177374837.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P1642899858786712398

`A087117(A341915(n+1))+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043276

/-- `A087117(A341915(n+1))+1` -/
def P1642899858786712398.Spec : Prop :=
  ∀ n, P1642899858786712398.a n = A043276 (n + 1)

theorem P1642899858786712398.correct : P1642899858786712398.Spec := by
  intro n
  simp only [A043276, Nat.add_sub_cancel]

end A043276

/-! ## A043276.P6128138463163477913

`A087117(xor(n+1, floor((n+1)/2)))+1`
-/

namespace A043276.P6128138463163477913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (Int.xor (n + 1 : ℤ) ⌊(n + 1 : ℚ) / 2⌋).toNat + 1

end

end A043276.P6128138463163477913

namespace A043276

/-- `A087117(xor(n+1, floor((n+1)/2)))+1` -/
def P6128138463163477913.Spec : Prop :=
  ∀ n, P6128138463163477913.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P4243924184066091201

`A333766(A003188(n+1))`
-/

namespace A043276.P4243924184066091201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A003188 (n + 1)).toNat

end

end A043276.P4243924184066091201

namespace A043276

/-- `A333766(A003188(n+1))` -/
def P4243924184066091201.Spec : Prop :=
  ∀ n, P4243924184066091201.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P13385489730834651494

`A038374(A335835(1+n))`
-/

namespace A043276.P13385489730834651494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A335835 (1 + n)).toNat

end

end A043276.P13385489730834651494

namespace A043276

/-- `A038374(A335835(1+n))` -/
def P13385489730834651494.Spec : Prop :=
  ∀ n, P13385489730834651494.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P10235453494167305817

`A090996(A335835(n+1))`
-/

namespace A043276.P10235453494167305817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A335835 (n + 1)).toNat

end

end A043276.P10235453494167305817

namespace A043276

/-- `A090996(A335835(n+1))` -/
def P10235453494167305817.Spec : Prop :=
  ∀ n, P10235453494167305817.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P7985901637651206598

`A136480(A335834(n+1))`
-/

namespace A043276.P7985901637651206598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A335834 (n + 1)).toNat

end

end A043276.P7985901637651206598

namespace A043276

/-- `A136480(A335834(n+1))` -/
def P7985901637651206598.Spec : Prop :=
  ∀ n, P7985901637651206598.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P3871331231270887054

`A007814(or(1, A335834(n+1)-1)+1)`
-/

namespace A043276.P3871331231270887054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor 1 (A335834 (n + 1) - 1) + 1).toNat

end

end A043276.P3871331231270887054

namespace A043276

/-- `A007814(or(1, A335834(n+1)-1)+1)` -/
def P3871331231270887054.Spec : Prop :=
  ∀ n, P3871331231270887054.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P5960316535317099340

`A333352(2*A382255(n+1))`
-/

namespace A043276.P5960316535317099340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333352 (2 * A382255 (n + 1)).toNat

end

end A043276.P5960316535317099340

namespace A043276

/-- `A333352(2*A382255(n+1))` -/
def P5960316535317099340.Spec : Prop :=
  ∀ n, P5960316535317099340.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P6387633663785437588

`A043277(A005836(n+2))`
-/

namespace A043276.P6387633663785437588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A005836 (n + 2)).toNat

end

end A043276.P6387633663785437588

namespace A043276

/-- `A043277(A005836(n+2))` -/
def P6387633663785437588.Spec : Prop :=
  ∀ n, P6387633663785437588.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P6762371115651126832

`A067132(A286468(n+1))`
-/

namespace A043276.P6762371115651126832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (A286468 (n + 1)).toNat

end

end A043276.P6762371115651126832

namespace A043276

/-- `A067132(A286468(n+1))` -/
def P6762371115651126832.Spec : Prop :=
  ∀ n, P6762371115651126832.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P15541040666512224178

`A043277(A055661(n+1))`
-/

namespace A043276.P15541040666512224178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A055661 (n + 1)).toNat

end

end A043276.P15541040666512224178

namespace A043276

/-- `A043277(A055661(n+1))` -/
def P15541040666512224178.Spec : Prop :=
  ∀ n, P15541040666512224178.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P14286931761579590727

`A043278(A000695(n+1))`
-/

namespace A043276.P14286931761579590727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A000695 (n + 1)).toNat

end

end A043276.P14286931761579590727

namespace A043276

/-- `A043278(A000695(n+1))` -/
def P14286931761579590727.Spec : Prop :=
  ∀ n, P14286931761579590727.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P10618793404032911146

`A175599(n+1)+A175597(n+1)`
-/

namespace A043276.P10618793404032911146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (n + 1) + A175597 (n + 1)

end

end A043276.P10618793404032911146

namespace A043276

/-- `A175599(n+1)+A175597(n+1)` -/
def P10618793404032911146.Spec : Prop :=
  ∀ n, P10618793404032911146.a n = A043276 (n + 1)

theorem P10618793404032911146.correct : P10618793404032911146.Spec := by
  intro n
  simp only [A043276, Nat.add_sub_cancel, A043276.P10618793404032911146.a, A043276.P1642899858786712398.a, A087117, A087117.P16590069521577039516.a, A175597, A175597.P15187906800499114256.a, A175599, A175599.P15103203248488645960.a, A341915, A341915.P17925517424698579369.a, A007814, A007814.P13537437864234730737.a, A025480, A025480.P15873863116418380882.a, A035928, A035928.P1929867611185398910.a, A080542, A080542.P9634742044237708567.a, A144790, A144790.P15607644562133245083.a, A001511, A001511.P17146462531039486101.a, A004526, A004526.P10084182425416171735.a, A006519, A006519.P10435570611646570274.a, A036044, A036044.P16648927426293672306.a, A038572, A038572.P6039021529582153667.a, A051904, A051904.P3503880915053639126.f1, A051904.P3503880915053639126.a, A062383, A062383.P4595411753464333460.a, A278222, A278222.P17984582888025768899.a, A000035, A000035.P2023072528413494694.a, A006068, A006068.P433290056721054414.a, A028310, A028310.P18130301328277559831.a, A035327, A035327.P258997810375859489.a, A053644, A053644.P1707366427427647095.a, A055945, A055945.P5963763732554067333.a, A171977, A171977.P14092944863121073856.a, A278219, A278219.P3825217007817809804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A043276

/-! ## A043276.P8521627664225868602

`A175681(n+1)-A175597(n+1)`
-/

namespace A043276.P8521627664225868602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175681 (n + 1) - A175597 (n + 1)

end

end A043276.P8521627664225868602

namespace A043276

/-- `A175681(n+1)-A175597(n+1)` -/
def P8521627664225868602.Spec : Prop :=
  ∀ n, P8521627664225868602.a n = A043276 (n + 1)

theorem P8521627664225868602.correct : P8521627664225868602.Spec := by
  intro n
  simp only [A043276, Nat.add_sub_cancel, A043276.P8521627664225868602.a, A043276.P1642899858786712398.a, A087117, A087117.P16590069521577039516.a, A175597, A175597.P15187906800499114256.a, A175681, A175681.P8833139429948162726.a, A341915, A341915.P17925517424698579369.a, A007814, A007814.P13537437864234730737.a, A025480, A025480.P15873863116418380882.a, A035928, A035928.P1929867611185398910.a, A080542, A080542.P9634742044237708567.a, A144790, A144790.P15607644562133245083.a, A001511, A001511.P17146462531039486101.a, A004526, A004526.P10084182425416171735.a, A006519, A006519.P10435570611646570274.a, A036044, A036044.P16648927426293672306.a, A038572, A038572.P6039021529582153667.a, A051904, A051904.P3503880915053639126.f1, A051904.P3503880915053639126.a, A062383, A062383.P4595411753464333460.a, A278222, A278222.P17984582888025768899.a, A000035, A000035.P2023072528413494694.a, A006068, A006068.P433290056721054414.a, A028310, A028310.P18130301328277559831.a, A035327, A035327.P258997810375859489.a, A053644, A053644.P1707366427427647095.a, A055945, A055945.P5963763732554067333.a, A171977, A171977.P14092944863121073856.a, A278219, A278219.P3825217007817809804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A043276

/-! ## A043276.P15684466263609734831

`A175665(n+1)/A175597(n+1)`
-/

namespace A043276.P15684466263609734831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175665 (n + 1) : ℚ) / (A175597 (n + 1) : ℚ)

end

end A043276.P15684466263609734831

namespace A043276

/-- `A175665(n+1)/A175597(n+1)` -/
def P15684466263609734831.Spec : Prop :=
  ∀ n, P15684466263609734831.a n = (A043276 (n + 1) : ℚ)

end A043276

/-!
# A043277: Maximal run length in base 3 representation of n.

The programs for A043277, the canonical program `A043277.P4229213591346107339` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043277 has offset 1).

The definition of A043277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043277.P4229213591346107339

`A043276(A371256(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A043277

/-- `A043276(A371256(n+1))` -/
def P4229213591346107339.Spec : Prop :=
  ∀ n, P4229213591346107339.a n = A043277 (n + 1)

theorem P4229213591346107339.correct : P4229213591346107339.Spec := by
  intro n
  simp only [A043277, Nat.add_sub_cancel]

end A043277

/-! ## A043277.P7404418558252868283

`A043278(A023717(1+n))`
-/

namespace A043277.P7404418558252868283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A023717 (1 + n)).toNat

end

end A043277.P7404418558252868283

namespace A043277

/-- `A043278(A023717(1+n))` -/
def P7404418558252868283.Spec : Prop :=
  ∀ n, P7404418558252868283.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P18366853319225281387

`A043278(A006288(n+1))`
-/

namespace A043277.P18366853319225281387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A006288 (n + 1)).toNat

end

end A043277.P18366853319225281387

namespace A043277

/-- `A043278(A006288(n+1))` -/
def P18366853319225281387.Spec : Prop :=
  ∀ n, P18366853319225281387.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P8552961646223830814

`A043279(A037453(n+1))`
-/

namespace A043277.P8552961646223830814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A037453 (n + 1)).toNat

end

end A043277.P8552961646223830814

namespace A043277

/-- `A043279(A037453(n+1))` -/
def P8552961646223830814.Spec : Prop :=
  ∀ n, P8552961646223830814.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P3673618278112349404

`A043280(A037454(n+1))`
-/

namespace A043277.P3673618278112349404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A037454 (n + 1)).toNat

end

end A043277.P3673618278112349404

namespace A043277

/-- `A043280(A037454(n+1))` -/
def P3673618278112349404.Spec : Prop :=
  ∀ n, P3673618278112349404.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P15917477190723561780

`A043283(A037314(n+1))`
-/

namespace A043277.P15917477190723561780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A037314 (n + 1)).toNat

end

end A043277.P15917477190723561780

namespace A043277

/-- `A043283(A037314(n+1))` -/
def P15917477190723561780.Spec : Prop :=
  ∀ n, P15917477190723561780.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P6186672062455897477

`A043281(A037455(n+1))`
-/

namespace A043277.P6186672062455897477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A037455 (n + 1)).toNat

end

end A043277.P6186672062455897477

namespace A043277

/-- `A043281(A037455(n+1))` -/
def P6186672062455897477.Spec : Prop :=
  ∀ n, P6186672062455897477.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P14153533773384803262

`A043282(A037456(n+1))`
-/

namespace A043277.P14153533773384803262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A037456 (n + 1)).toNat

end

end A043277.P14153533773384803262

namespace A043277

/-- `A043282(A037456(n+1))` -/
def P14153533773384803262.Spec : Prop :=
  ∀ n, P14153533773384803262.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P10387459054247998192

`A043284(A007089(n+1))`
-/

namespace A043277.P10387459054247998192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007089 (n + 1)).toNat

end

end A043277.P10387459054247998192

namespace A043277

/-- `A043284(A007089(n+1))` -/
def P10387459054247998192.Spec : Prop :=
  ∀ n, P10387459054247998192.a n = A043277 (n + 1)

end A043277

/-!
# A043278: Maximal run length in base 4 representation of n.

The programs for A043278, there is no canonical definition to state claims against.
-/

/-! ## A043278.P10761195917235202564

`A043279(A037459(1+n))`
-/

namespace A043278.P10761195917235202564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A037459 (1 + n)).toNat

end

end A043278.P10761195917235202564

/-! ## A043278.P14572319678358734207

`A043280(A037460(n+1))`
-/

namespace A043278.P14572319678358734207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A037460 (n + 1)).toNat

end

end A043278.P14572319678358734207

/-! ## A043278.P10932136876618734889

`A043283(A037463(n+1))`
-/

namespace A043278.P10932136876618734889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A037463 (n + 1)).toNat

end

end A043278.P10932136876618734889

/-! ## A043278.P3472620317799528097

`A043281(A037461(n+1))`
-/

namespace A043278.P3472620317799528097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A037461 (n + 1)).toNat

end

end A043278.P3472620317799528097

/-! ## A043278.P12866479804495203077

`A043282(A037462(n+1))`
-/

namespace A043278.P12866479804495203077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A037462 (n + 1)).toNat

end

end A043278.P12866479804495203077

/-! ## A043278.P6626947099414145620

`A043290(A000695(n+1))`
-/

namespace A043278.P6626947099414145620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A000695 (n + 1)).toNat

end

end A043278.P6626947099414145620

/-! ## A043278.P1605451548792699187

`A043284(A007090(n+1))`
-/

namespace A043278.P1605451548792699187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007090 (n + 1)).toNat

end

end A043278.P1605451548792699187

/-!
# A043279: Maximal run length in base 5 representation of n.

The programs for A043279, the canonical program `A043279.P17090456312154926930` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043279 has offset 1).

The definition of A043279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043279.P2271033141178981439

`A043280(A037465(1+n))`
-/

namespace A043279.P2271033141178981439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A037465 (1 + n)).toNat

end

end A043279.P2271033141178981439

namespace A043279

/-- `A043280(A037465(1+n))` -/
def P2271033141178981439.Spec : Prop :=
  ∀ n, P2271033141178981439.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P17090456312154926930

`A043283(A037468(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043279

/-- `A043283(A037468(1+n))` -/
def P17090456312154926930.Spec : Prop :=
  ∀ n, P17090456312154926930.a n = A043279 (n + 1)

theorem P17090456312154926930.correct : P17090456312154926930.Spec := by
  intro n
  simp only [A043279, Nat.add_sub_cancel]

end A043279

/-! ## A043279.P5748621553214321696

`A043281(A037466(1+n))`
-/

namespace A043279.P5748621553214321696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A037466 (1 + n)).toNat

end

end A043279.P5748621553214321696

namespace A043279

/-- `A043281(A037466(1+n))` -/
def P5748621553214321696.Spec : Prop :=
  ∀ n, P5748621553214321696.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P1625360553496287547

`A043282(A037467(n+1))`
-/

namespace A043279.P1625360553496287547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A037467 (n + 1)).toNat

end

end A043279.P1625360553496287547

namespace A043279

/-- `A043282(A037467(n+1))` -/
def P1625360553496287547.Spec : Prop :=
  ∀ n, P1625360553496287547.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P3371811456251998963

`A043284(A007091(n+1))`
-/

namespace A043279.P3371811456251998963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007091 (n + 1)).toNat

end

end A043279.P3371811456251998963

namespace A043279

/-- `A043284(A007091(n+1))` -/
def P3371811456251998963.Spec : Prop :=
  ∀ n, P3371811456251998963.a n = A043279 (n + 1)

end A043279

/-!
# A043280: Maximal run length in base 6 representation of n.

The programs for A043280, the canonical program `A043280.P14008103423448566025` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043280 has offset 1).

The definition of A043280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043280.P14008103423448566025

`A043283(A037472(1+n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043280

/-- `A043283(A037472(1+n))` -/
def P14008103423448566025.Spec : Prop :=
  ∀ n, P14008103423448566025.a n = A043280 (n + 1)

theorem P14008103423448566025.correct : P14008103423448566025.Spec := by
  intro n
  simp only [A043280, Nat.add_sub_cancel]

end A043280

/-! ## A043280.P2768370438308396121

`A043281(A020657(2+n))`
-/

namespace A043280.P2768370438308396121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A020657 (2 + n)).toNat

end

end A043280.P2768370438308396121

namespace A043280

/-- `A043281(A020657(2+n))` -/
def P2768370438308396121.Spec : Prop :=
  ∀ n, P2768370438308396121.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P7500483331402617088

`A043282(A037471(n+1))`
-/

namespace A043280.P7500483331402617088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A037471 (n + 1)).toNat

end

end A043280.P7500483331402617088

namespace A043280

/-- `A043282(A037471(n+1))` -/
def P7500483331402617088.Spec : Prop :=
  ∀ n, P7500483331402617088.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P17536459518923988057

`A043285(A212495(n+2)/2)`
-/

namespace A043280.P17536459518923988057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043285 (SequenceMachineLib.roundAway ((A212495 (n + 2) : ℚ) / 2)).toNat

end

end A043280.P17536459518923988057

namespace A043280

/-- `A043285(A212495(n+2)/2)` -/
def P17536459518923988057.Spec : Prop :=
  ∀ n, P17536459518923988057.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P16601289085965813846

`A043284(A007092(n+1))`
-/

namespace A043280.P16601289085965813846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007092 (n + 1)).toNat

end

end A043280.P16601289085965813846

namespace A043280

/-- `A043284(A007092(n+1))` -/
def P16601289085965813846.Spec : Prop :=
  ∀ n, P16601289085965813846.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P18007885430872353804

`A043285(A212495(n+2))`
-/

namespace A043280.P18007885430872353804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043285 (A212495 (n + 2)).toNat

end

end A043280.P18007885430872353804

namespace A043280

/-- `A043285(A212495(n+2))` -/
def P18007885430872353804.Spec : Prop :=
  ∀ n, P18007885430872353804.a n = A043280 (n + 1)

end A043280

/-!
# A043281: Maximal run length in base-7 representation of n.

The programs for A043281, the canonical program `A043281.P17760128895614890144` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043281 has offset 1).

The definition of A043281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043281.P17760128895614890144

`A043283(A037475(1+n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043281

/-- `A043283(A037475(1+n))` -/
def P17760128895614890144.Spec : Prop :=
  ∀ n, P17760128895614890144.a n = A043281 (n + 1)

theorem P17760128895614890144.correct : P17760128895614890144.Spec := by
  intro n
  simp only [A043281, Nat.add_sub_cancel]

end A043281

/-! ## A043281.P16554277793493248774

`A043282(A037474(1+n))`
-/

namespace A043281.P16554277793493248774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A037474 (1 + n)).toNat

end

end A043281.P16554277793493248774

namespace A043281

/-- `A043282(A037474(1+n))` -/
def P16554277793493248774.Spec : Prop :=
  ∀ n, P16554277793493248774.a n = A043281 (n + 1)

end A043281

/-! ## A043281.P4961491682090356968

`A043284(A007093(1+n))`
-/

namespace A043281.P4961491682090356968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007093 (1 + n)).toNat

end

end A043281.P4961491682090356968

namespace A043281

/-- `A043284(A007093(1+n))` -/
def P4961491682090356968.Spec : Prop :=
  ∀ n, P4961491682090356968.a n = A043281 (n + 1)

end A043281

/-! ## A043281.P7661693497995384442

`gcd(A264119(n), A309098(n))`
-/

namespace A043281.P7661693497995384442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264119 n) (A309098 n)

end

end A043281.P7661693497995384442

namespace A043281

/-- `gcd(A264119(n), A309098(n))` -/
def P7661693497995384442.Spec : Prop :=
  ∀ n, (P7661693497995384442.a n : ℤ) = A043281 (n + 1)

end A043281

/-!
# A043282: Maximal run length in base 8 representation of n.

The programs for A043282, the canonical program `A043282.P5881847742895163389` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043282 has offset 1).

The definition of A043282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043282.P5881847742895163389

`A043283(A037477(1+n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043282

/-- `A043283(A037477(1+n))` -/
def P5881847742895163389.Spec : Prop :=
  ∀ n, P5881847742895163389.a n = A043282 (n + 1)

theorem P5881847742895163389.correct : P5881847742895163389.Spec := by
  intro n
  simp only [A043282, Nat.add_sub_cancel]

end A043282

/-! ## A043282.P8119846030762135302

`A043284(A007094(1+n))`
-/

namespace A043282.P8119846030762135302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007094 (1 + n)).toNat

end

end A043282.P8119846030762135302

namespace A043282

/-- `A043284(A007094(1+n))` -/
def P8119846030762135302.Spec : Prop :=
  ∀ n, P8119846030762135302.a n = A043282 (n + 1)

end A043282

/-! ## A043282.P8454870293896999553

`runs[dr(A258881(n))]`
-/

namespace A043282.P8454870293896999553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A258881 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A043282.P8454870293896999553

namespace A043282

/-- `runs[dr(A258881(n))]` -/
def P8454870293896999553.Spec : Prop :=
  ∀ n, (P8454870293896999553.a n : ℤ) = A043282 (n + 1)

end A043282

/-! ## A043282.P11444380655507729839

`A131534(A038390(n+1))`
-/

namespace A043282.P11444380655507729839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (A038390 (n + 1)).toNat

end

end A043282.P11444380655507729839

namespace A043282

/-- `A131534(A038390(n+1))` -/
def P11444380655507729839.Spec : Prop :=
  ∀ n, P11444380655507729839.a n = A043282 (n + 1)

end A043282

/-!
# A043283: Maximal run length in base-9 representation of n.

The programs for A043283, the canonical program `A043283.P5098320167279475588` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043283 has offset 1).

The definition of A043283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043283.P5098320167279475588

`A043290(A023717(1+n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043283

/-- `A043290(A023717(1+n))` -/
def P5098320167279475588.Spec : Prop :=
  ∀ n, P5098320167279475588.a n = A043283 (n + 1)

theorem P5098320167279475588.correct : P5098320167279475588.Spec := by
  intro n
  simp only [A043283, Nat.add_sub_cancel]

end A043283

/-! ## A043283.P14231758689169219342

`A043284(record[A222252(1+n)])`
-/

namespace A043283.P14231758689169219342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043283.P14231758689169219342

namespace A043283

/-- `A043284(record[A222252(1+n)])` -/
def P14231758689169219342.Spec : Prop :=
  ∀ n, P14231758689169219342.a n = A043283 (n + 1)

end A043283

/-! ## A043283.P1366248186157245329

`A000032(A151810(n)^A044940(n+1))`
-/

namespace A043283.P1366248186157245329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A151810 n : ℚ) ^ (A044940 (n + 1) : ℤ))).toNat

end

end A043283.P1366248186157245329

namespace A043283

/-- `A000032(A151810(n)^A044940(n+1))` -/
def P1366248186157245329.Spec : Prop :=
  ∀ n, P1366248186157245329.a n = A043283 (n + 1)

end A043283

/-!
# A043284: Maximal run length in base-10 representation of n.

The programs for A043284, there is no canonical definition to state claims against.
-/

/-! ## A043284.P10215398923626413261

`A043290(A102489(1+n))`
-/

namespace A043284.P10215398923626413261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A102489 (1 + n)).toNat

end

end A043284.P10215398923626413261

/-! ## A043284.P13340409212061721597

`A055642(A057169(1+n))-A043562(n+1)`
-/

namespace A043284.P13340409212061721597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A057169 (1 + n)).toNat - A043562 (n + 1)

end

end A043284.P13340409212061721597

/-! ## A043284.P1027377278975810330

`A037833(n+1)+1-A057427(A037878(n+1)^A040743(n))`
-/

namespace A043284.P1027377278975810330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (n + 1) + 1 - A057427 (SequenceMachineLib.roundAway ((A037878 (n + 1) : ℚ) ^ (A040743 n : ℤ))).toNat

end

end A043284.P1027377278975810330

/-! ## A043284.P3521566760728780967

`A321804(n+1)%11+2`
-/

namespace A043284.P3521566760728780967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321804 (n + 1)) 11 + 2

end

end A043284.P3521566760728780967

/-! ## A043284.P12326555294837139324

`A055640(A321804(n+1)+11)`
-/

namespace A043284.P12326555294837139324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A321804 (n + 1) + 11).toNat

end

end A043284.P12326555294837139324

/-! ## A043284.P11674229236387873018

`A055642(gcd(A193581(n+1), A321804(n+1)))`
-/

namespace A043284.P11674229236387873018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.gcd (A193581 (n + 1)) (A321804 (n + 1)))

end

end A043284.P11674229236387873018

/-! ## A043284.P4741143772930369428

`A199343(A037817(n+1)-ceil(A037851(n+1)/A166046(n)))`
-/

namespace A043284.P4741143772930369428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A037817 (n + 1) - ⌈(A037851 (n + 1) : ℚ) / (A166046 n : ℚ)⌉).toNat

end

end A043284.P4741143772930369428

/-! ## A043284.P5651484568690053756

`1+A044941(n+1)`
-/

namespace A043284.P5651484568690053756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044941 (n + 1)

end

end A043284.P5651484568690053756

/-! ## A043284.P17087547696929720362

`round(ratio[A278566(A332550(n))])`
-/

namespace A043284.P17087547696929720362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278566 (A332550 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A043284.P17087547696929720362

/-! ## A043284.P10947049254021227264

`A281007(gcd(n+1, A321804(n+1)))`
-/

namespace A043284.P10947049254021227264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (Int.gcd (n + 1 : ℤ) (A321804 (n + 1)))

end

end A043284.P10947049254021227264

/-! ## A043284.P498897933417238744

`A040000((A321804(n+1)+1)*2*n)`
-/

namespace A043284.P498897933417238744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 ((A321804 (n + 1) + 1) * (2 * n : ℤ)).toNat

end

end A043284.P498897933417238744

/-!
# A043285: Maximal run length in base 11 representation of n.

The programs for A043285, the canonical program `A043285.P5992412748016172201` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043285 has offset 1).

The definition of A043285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043285.P11302216485083046775

`A043286(A043702(n+1)+Δ[A043702(n+2)]!!)`
-/

namespace A043285.P11302216485083046775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043702 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043286 (A043702 (n + 1) + (Nat.factorial (Nat.factorial (f1 (n + 1) - f1 n).toNat) : ℤ)).toNat

end

end A043285.P11302216485083046775

namespace A043285

/-- `A043286(A043702(n+1)+Δ[A043702(n+2)]!!)` -/
def P11302216485083046775.Spec : Prop :=
  ∀ n, P11302216485083046775.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P1546965028360689851

`A043286(A040223(n)+lt[A107504(n²), 2])`
-/

namespace A043285.P1546965028360689851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107504 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043286 (A040223 n + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)).toNat

end

end A043285.P1546965028360689851

namespace A043285

/-- `A043286(A040223(n)+lt[A107504(n²), 2])` -/
def P1546965028360689851.Spec : Prop :=
  ∀ n, P1546965028360689851.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P5992412748016172201

`1+val(n+1, 12)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A043285

/-- `1+val(n+1, 12)` -/
def P5992412748016172201.Spec : Prop :=
  ∀ n, (P5992412748016172201.a n : ℤ) = A043285 (n + 1)

theorem P5992412748016172201.correct : P5992412748016172201.Spec := by
  intro n
  simp only [A043285, Nat.add_sub_cancel]

end A043285

/-! ## A043285.P8698524198504319580

`Δ[A113763(n+1)]`
-/

namespace A043285.P8698524198504319580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043285.P8698524198504319580

namespace A043285

/-- `Δ[A113763(n+1)]` -/
def P8698524198504319580.Spec : Prop :=
  ∀ n, P8698524198504319580.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P11414112306282094991

`Δ[A023806(n+2)]`
-/

namespace A043285.P11414112306282094991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023806 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043285.P11414112306282094991

namespace A043285

/-- `Δ[A023806(n+2)]` -/
def P11414112306282094991.Spec : Prop :=
  ∀ n, P11414112306282094991.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P5689762541995767053

`Δ[A043651(n+2)]`
-/

namespace A043285.P5689762541995767053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043285.P5689762541995767053

namespace A043285

/-- `Δ[A043651(n+2)]` -/
def P5689762541995767053.Spec : Prop :=
  ∀ n, P5689762541995767053.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P6749409544674003713

`Δ[A043701(n+2)]`
-/

namespace A043285.P6749409544674003713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043701 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043285.P6749409544674003713

namespace A043285

/-- `Δ[A043701(n+2)]` -/
def P6749409544674003713.Spec : Prop :=
  ∀ n, P6749409544674003713.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P3262727784655559767

`val(A042869(n), 13)+1`
-/

namespace A043285.P3262727784655559767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A042869 n).toNat 13 + 1

end

end A043285.P3262727784655559767

namespace A043285

/-- `val(A042869(n), 13)+1` -/
def P3262727784655559767.Spec : Prop :=
  ∀ n, (P3262727784655559767.a n : ℤ) = A043285 (n + 1)

end A043285

/-! ## A043285.P3545604117206483998

`A100063(∑[A047201(n+7)])`
-/

namespace A043285.P3545604117206483998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A043285.P3545604117206483998

namespace A043285

/-- `A100063(∑[A047201(n+7)])` -/
def P3545604117206483998.Spec : Prop :=
  ∀ n, P3545604117206483998.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P14495860692773022592

`2-A168185(A328617(n+1))`
-/

namespace A043285.P14495860692773022592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A168185 (A328617 (n + 1)).toNat

end

end A043285.P14495860692773022592

namespace A043285

/-- `2-A168185(A328617(n+1))` -/
def P14495860692773022592.Spec : Prop :=
  ∀ n, P14495860692773022592.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P15743100255444601741

`A334507(n+1)^Δ[A064459(n)]`
-/

namespace A043285.P15743100255444601741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334507 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A043285.P15743100255444601741

namespace A043285

/-- `A334507(n+1)^Δ[A064459(n)]` -/
def P15743100255444601741.Spec : Prop :=
  ∀ n, P15743100255444601741.a n = (A043285 (n + 1) : ℚ)

end A043285

/-! ## A043285.P12727995219225902469

`A334507(n+1)^Δ[A342696(n)]`
-/

namespace A043285.P12727995219225902469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334507 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A043285.P12727995219225902469

namespace A043285

/-- `A334507(n+1)^Δ[A342696(n)]` -/
def P12727995219225902469.Spec : Prop :=
  ∀ n, P12727995219225902469.a n = (A043285 (n + 1) : ℚ)

end A043285

/-! ## A043285.P6793497273708309571

`gcd(A177704(n), A242424(A000096(n+7)))`
-/

namespace A043285.P6793497273708309571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A177704 n) (A242424 (A000096 (n + 7)).toNat)

end

end A043285.P6793497273708309571

namespace A043285

/-- `gcd(A177704(n), A242424(A000096(n+7)))` -/
def P6793497273708309571.Spec : Prop :=
  ∀ n, (P6793497273708309571.a n : ℤ) = A043285 (n + 1)

end A043285

/-! ## A043285.P9800527292381457326

`A143484(A129202(n))`
-/

namespace A043285.P9800527292381457326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143484 (A129202 n).toNat

end

end A043285.P9800527292381457326

namespace A043285

/-- `A143484(A129202(n))` -/
def P9800527292381457326.Spec : Prop :=
  ∀ n, P9800527292381457326.a n = A043285 (n + 1)

end A043285

/-!
# A043286: Maximal run length in base-12 representation of n.

The programs for A043286, the canonical program `A043286.P8083685496794825638` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043286 has offset 1).

The definition of A043286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043286.P7441442546332245346

`Δ[A043657(2+n)]`
-/

namespace A043286.P7441442546332245346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043657 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043286.P7441442546332245346

namespace A043286

/-- `Δ[A043657(2+n)]` -/
def P7441442546332245346.Spec : Prop :=
  ∀ n, P7441442546332245346.a n = A043286 (n + 1)

end A043286

/-! ## A043286.P10290594371379652773

`Δ[A043702(2+n)]`
-/

namespace A043286.P10290594371379652773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043702 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043286.P10290594371379652773

namespace A043286

/-- `Δ[A043702(2+n)]` -/
def P10290594371379652773.Spec : Prop :=
  ∀ n, P10290594371379652773.a n = A043286 (n + 1)

end A043286

/-! ## A043286.P2964352083388603597

`val(A261216(∑[n+1]), 13)+1`
-/

namespace A043286.P2964352083388603597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A261216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 13 + 1

end

end A043286.P2964352083388603597

namespace A043286

/-- `val(A261216(∑[n+1]), 13)+1` -/
def P2964352083388603597.Spec : Prop :=
  ∀ n, (P2964352083388603597.a n : ℤ) = A043286 (n + 1)

end A043286

/-! ## A043286.P5792850060770139632

`char[13*A034356(n+1)-1]+1`
-/

namespace A043286.P5792850060770139632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A034356 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A043286.P5792850060770139632

namespace A043286

/-- `char[13*A034356(n+1)-1]+1` -/
def P5792850060770139632.Spec : Prop :=
  ∀ n, (P5792850060770139632.a n : ℤ) = A043286 (n + 1)

end A043286

/-! ## A043286.P17941409166979403701

`A000629(C(∏{e}[n+1, #+1], 13*(n+1)%13))`
-/

namespace A043286.P17941409166979403701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) (13 * ((n + 1) % 13)))

end

end A043286.P17941409166979403701

namespace A043286

/-- `A000629(C(∏{e}[n+1, #+1], 13*(n+1)%13))` -/
def P17941409166979403701.Spec : Prop :=
  ∀ n, P17941409166979403701.a n = A043286 (n + 1)

end A043286

/-! ## A043286.P11378888286462600343

`A135010(A054494(n+1)²)`
-/

namespace A043286.P11378888286462600343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A054494 (n + 1) ^ 2).toNat

end

end A043286.P11378888286462600343

namespace A043286

/-- `A135010(A054494(n+1)²)` -/
def P11378888286462600343.Spec : Prop :=
  ∀ n, P11378888286462600343.a n = A043286 (n + 1)

end A043286

/-! ## A043286.P1493171731111942481

`A139549(A054494(n+1)-1)`
-/

namespace A043286.P1493171731111942481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139549 (A054494 (n + 1) - 1).toNat

end

end A043286.P1493171731111942481

namespace A043286

/-- `A139549(A054494(n+1)-1)` -/
def P1493171731111942481.Spec : Prop :=
  ∀ n, P1493171731111942481.a n = A043286 (n + 1)

end A043286

/-! ## A043286.P5659005509135265200

`gcd(2, A178334(A054494(n+1)²))`
-/

namespace A043286.P5659005509135265200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A178334 (A054494 (n + 1) ^ 2).toNat)

end

end A043286.P5659005509135265200

namespace A043286

/-- `gcd(2, A178334(A054494(n+1)²))` -/
def P5659005509135265200.Spec : Prop :=
  ∀ n, (P5659005509135265200.a n : ℤ) = A043286 (n + 1)

end A043286

/-! ## A043286.P11525435869790503837

`A000079(val(A261216(∑[n+1]), 13))`
-/

namespace A043286.P11525435869790503837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A261216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 13)

end

end A043286.P11525435869790503837

namespace A043286

/-- `A000079(val(A261216(∑[n+1]), 13))` -/
def P11525435869790503837.Spec : Prop :=
  ∀ n, P11525435869790503837.a n = A043286 (n + 1)

end A043286

/-! ## A043286.P5051324335989039901

`A000123(val(A261216(∑[n+1]), 13))`
-/

namespace A043286.P5051324335989039901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (SequenceMachineLib.valuation (A261216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 13)

end

end A043286.P5051324335989039901

namespace A043286

/-- `A000123(val(A261216(∑[n+1]), 13))` -/
def P5051324335989039901.Spec : Prop :=
  ∀ n, P5051324335989039901.a n = A043286 (n + 1)

end A043286

/-! ## A043286.P9326918035256003783

`A068009(val(A261216(∑[n+1]), 13))`
-/

namespace A043286.P9326918035256003783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.valuation (A261216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 13)

end

end A043286.P9326918035256003783

namespace A043286

/-- `A068009(val(A261216(∑[n+1]), 13))` -/
def P9326918035256003783.Spec : Prop :=
  ∀ n, P9326918035256003783.a n = A043286 (n + 1)

end A043286

/-! ## A043286.P7537512114357066558

`A193723(val(A261216(∑[n+1]), 13))`
-/

namespace A043286.P7537512114357066558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193723 (SequenceMachineLib.valuation (A261216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 13)

end

end A043286.P7537512114357066558

namespace A043286

/-- `A193723(val(A261216(∑[n+1]), 13))` -/
def P7537512114357066558.Spec : Prop :=
  ∀ n, P7537512114357066558.a n = A043286 (n + 1)

end A043286

/-! ## A043286.P3278150376223722533

`(val(n+1, 13)+1)%A161863(abs(A130595(n)))`
-/

namespace A043286.P3278150376223722533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (n + 1) 13 + 1 : ℤ) (A161863 |A130595 n|.toNat)

end

end A043286.P3278150376223722533

namespace A043286

/-- `(val(n+1, 13)+1)%A161863(abs(A130595(n)))` -/
def P3278150376223722533.Spec : Prop :=
  ∀ n, P3278150376223722533.a n = A043286 (n + 1)

end A043286

/-! ## A043286.P8966020149743776319

`A102382(gcd(A004770(n+3), A006003(n+1)))`
-/

namespace A043286.P8966020149743776319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 (Int.gcd (A004770 (n + 3)) (A006003 (n + 1)))

end

end A043286.P8966020149743776319

namespace A043286

/-- `A102382(gcd(A004770(n+3), A006003(n+1)))` -/
def P8966020149743776319.Spec : Prop :=
  ∀ n, P8966020149743776319.a n = A043286 (n + 1)

end A043286

/-! ## A043286.P8083685496794825638

`2-A011583((n+1)²)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043286

/-- `2-A011583((n+1)²)` -/
def P8083685496794825638.Spec : Prop :=
  ∀ n, P8083685496794825638.a n = A043286 (n + 1)

theorem P8083685496794825638.correct : P8083685496794825638.Spec := by
  intro n
  simp only [A043286, Nat.add_sub_cancel]

end A043286

/-!
# A043287: Maximal run length in base-13 representation of n.

The programs for A043287, the canonical program `A043287.P1481354817054238234` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043287 has offset 1).

The definition of A043287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043287.P11764241306904494228

`A043288(A043669(n+1)+Δ[A043669(n+2)]!!)`
-/

namespace A043287.P11764241306904494228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (A043669 (n + 1) + (Nat.factorial (Nat.factorial (f1 (n + 1) - f1 n).toNat) : ℤ)).toNat

end

end A043287.P11764241306904494228

namespace A043287

/-- `A043288(A043669(n+1)+Δ[A043669(n+2)]!!)` -/
def P11764241306904494228.Spec : Prop :=
  ∀ n, P11764241306904494228.a n = A043287 (n + 1)

end A043287

/-! ## A043287.P6212155469982913483

`Δ[A043663(n+2)]`
-/

namespace A043287.P6212155469982913483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043663 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043287.P6212155469982913483

namespace A043287

/-- `Δ[A043663(n+2)]` -/
def P6212155469982913483.Spec : Prop :=
  ∀ n, P6212155469982913483.a n = A043287 (n + 1)

end A043287

/-! ## A043287.P10665545172849123801

`Δ[A043703(n+2)]`
-/

namespace A043287.P10665545172849123801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043703 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043287.P10665545172849123801

namespace A043287

/-- `Δ[A043703(n+2)]` -/
def P10665545172849123801.Spec : Prop :=
  ∀ n, P10665545172849123801.a n = A043287 (n + 1)

end A043287

/-! ## A043287.P16355303422840842669

`char[14*A300383(n+1)-1]+1`
-/

namespace A043287.P16355303422840842669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A300383 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A043287.P16355303422840842669

namespace A043287

/-- `char[14*A300383(n+1)-1]+1` -/
def P16355303422840842669.Spec : Prop :=
  ∀ n, (P16355303422840842669.a n : ℤ) = A043287 (n + 1)

end A043287

/-! ## A043287.P1481354817054238234

`A080225(lcm(30, A026491(n)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043287

/-- `A080225(lcm(30, A026491(n)))` -/
def P1481354817054238234.Spec : Prop :=
  ∀ n, P1481354817054238234.a n = A043287 (n + 1)

theorem P1481354817054238234.correct : P1481354817054238234.Spec := by
  intro n
  simp only [A043287, Nat.add_sub_cancel]

end A043287

/-! ## A043287.P5657973363784601052

`runs[A025483(∑[n+1])]`
-/

namespace A043287.P5657973363784601052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025483 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A043287.P5657973363784601052

namespace A043287

/-- `runs[A025483(∑[n+1])]` -/
def P5657973363784601052.Spec : Prop :=
  ∀ n, (P5657973363784601052.a n : ℤ) = A043287 (n + 1)

end A043287

/-! ## A043287.P7659958222716016604

`A040796((n+1)²+2)`
-/

namespace A043287.P7659958222716016604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040796 ((n + 1) ^ 2 + 2)

end

end A043287.P7659958222716016604

namespace A043287

/-- `A040796((n+1)²+2)` -/
def P7659958222716016604.Spec : Prop :=
  ∀ n, P7659958222716016604.a n = A043287 (n + 1)

end A043287

/-! ## A043287.P11151465915878208367

`runs[∑[A144176(n+2)]]`
-/

namespace A043287.P11151465915878208367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144176 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A043287.P11151465915878208367

namespace A043287

/-- `runs[∑[A144176(n+2)]]` -/
def P11151465915878208367.Spec : Prop :=
  ∀ n, (P11151465915878208367.a n : ℤ) = A043287 (n + 1)

end A043287

/-!
# A043288: Maximal run length in base-14 representation of n.

The programs for A043288, the canonical program `A043288.P335549344883481070` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043288 has offset 1).

The definition of A043288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043288.P2894743892399180961

`A043289(A043675(n+1)+Δ[A043675(n+2)]!!)`
-/

namespace A043288.P2894743892399180961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043289 (A043675 (n + 1) + (Nat.factorial (Nat.factorial (f1 (n + 1) - f1 n).toNat) : ℤ)).toNat

end

end A043288.P2894743892399180961

namespace A043288

/-- `A043289(A043675(n+1)+Δ[A043675(n+2)]!!)` -/
def P2894743892399180961.Spec : Prop :=
  ∀ n, P2894743892399180961.a n = A043288 (n + 1)

end A043288

/-! ## A043288.P5025082266217717510

`A214708(Δ[A043704(n+2)]^ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A043288.P5025082266217717510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043704 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214708 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) ^ (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℤ))).toNat

end

end A043288.P5025082266217717510

namespace A043288

/-- `A214708(Δ[A043704(n+2)]^ceil((n+1)/∏{p}[n+1, (n+1)/#]))` -/
def P5025082266217717510.Spec : Prop :=
  ∀ n, P5025082266217717510.a n = A043288 (n + 1)

end A043288

/-! ## A043288.P335549344883481070

`Δ[A043669(2+n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043288

/-- `Δ[A043669(2+n)]` -/
def P335549344883481070.Spec : Prop :=
  ∀ n, P335549344883481070.a n = A043288 (n + 1)

theorem P335549344883481070.correct : P335549344883481070.Spec := by
  intro n
  simp only [A043288, Nat.add_sub_cancel]

end A043288

/-! ## A043288.P8578290238147720400

`Δ[A043704(2+n)]`
-/

namespace A043288.P8578290238147720400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043704 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043288.P8578290238147720400

namespace A043288

/-- `Δ[A043704(2+n)]` -/
def P8578290238147720400.Spec : Prop :=
  ∀ n, P8578290238147720400.a n = A043288 (n + 1)

end A043288

/-! ## A043288.P2112768087706067179

`A322356(A304481(n+1))%3`
-/

namespace A043288.P2112768087706067179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322356 (A304481 (n + 1)).toNat) 3

end

end A043288.P2112768087706067179

namespace A043288

/-- `A322356(A304481(n+1))%3` -/
def P2112768087706067179.Spec : Prop :=
  ∀ n, P2112768087706067179.a n = A043288 (n + 1)

end A043288

/-! ## A043288.P4588647652925183844

`A280801(Δ[A055647(n)+A055646(n)])`
-/

namespace A043288.P4588647652925183844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n + A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280801 (f1 (n + 1) - f1 n).toNat

end

end A043288.P4588647652925183844

namespace A043288

/-- `A280801(Δ[A055647(n)+A055646(n)])` -/
def P4588647652925183844.Spec : Prop :=
  ∀ n, P4588647652925183844.a n = A043288 (n + 1)

end A043288

/-! ## A043288.P15030034653042572010

`A003989(Δ[A055647(n)+A055646(n)]²)`
-/

namespace A043288.P15030034653042572010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n + A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A043288.P15030034653042572010

namespace A043288

/-- `A003989(Δ[A055647(n)+A055646(n)]²)` -/
def P15030034653042572010.Spec : Prop :=
  ∀ n, P15030034653042572010.a n = A043288 (n + 1)

end A043288

/-! ## A043288.P14002822351218791705

`A000034(3*Δ[A055647(n)+A055646(n)])`
-/

namespace A043288.P14002822351218791705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n + A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (3 * (f1 (n + 1) - f1 n)).toNat

end

end A043288.P14002822351218791705

namespace A043288

/-- `A000034(3*Δ[A055647(n)+A055646(n)])` -/
def P14002822351218791705.Spec : Prop :=
  ∀ n, P14002822351218791705.a n = A043288 (n + 1)

end A043288

/-! ## A043288.P10657332401416081102

`A053989(3*Δ[A055647(n)+A055646(n)])`
-/

namespace A043288.P10657332401416081102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n + A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (3 * (f1 (n + 1) - f1 n)).toNat

end

end A043288.P10657332401416081102

namespace A043288

/-- `A053989(3*Δ[A055647(n)+A055646(n)])` -/
def P10657332401416081102.Spec : Prop :=
  ∀ n, P10657332401416081102.a n = A043288 (n + 1)

end A043288

/-! ## A043288.P14390081829194566476

`A231820(3*Δ[A055647(n)+A055646(n)])`
-/

namespace A043288.P14390081829194566476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n + A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (3 * (f1 (n + 1) - f1 n)).toNat

end

end A043288.P14390081829194566476

namespace A043288

/-- `A231820(3*Δ[A055647(n)+A055646(n)])` -/
def P14390081829194566476.Spec : Prop :=
  ∀ n, P14390081829194566476.a n = A043288 (n + 1)

end A043288

/-! ## A043288.P17437556732744661045

`A322356(n+1)%A000523(A000523(A023197(n+1)))`
-/

namespace A043288.P17437556732744661045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322356 (n + 1)) (A000523 (A000523 (A023197 (n + 1)).toNat).toNat)

end

end A043288.P17437556732744661045

namespace A043288

/-- `A322356(n+1)%A000523(A000523(A023197(n+1)))` -/
def P17437556732744661045.Spec : Prop :=
  ∀ n, P17437556732744661045.a n = A043288 (n + 1)

end A043288

/-! ## A043288.P3159006481605201291

`runs[A247650(n+3)]`
-/

namespace A043288.P3159006481605201291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247650 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A043288.P3159006481605201291

namespace A043288

/-- `runs[A247650(n+3)]` -/
def P3159006481605201291.Spec : Prop :=
  ∀ n, (P3159006481605201291.a n : ℤ) = A043288 (n + 1)

end A043288

/-! ## A043288.P13725277525189915319

`gcd(A140345(n+1), A363550(n))`
-/

namespace A043288.P13725277525189915319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140345 (n + 1)) (A363550 n)

end

end A043288.P13725277525189915319

namespace A043288

/-- `gcd(A140345(n+1), A363550(n))` -/
def P13725277525189915319.Spec : Prop :=
  ∀ n, (P13725277525189915319.a n : ℤ) = A043288 (n + 1)

end A043288

/-! ## A043288.P8571686919809726339

`A177706(A032765(n))`
-/

namespace A043288.P8571686919809726339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177706 (A032765 n).toNat

end

end A043288.P8571686919809726339

namespace A043288

/-- `A177706(A032765(n))` -/
def P8571686919809726339.Spec : Prop :=
  ∀ n, P8571686919809726339.a n = A043288 (n + 1)

end A043288

/-! ## A043288.P8274147403539504711

`gcd(A010750(n), A177706(n))`
-/

namespace A043288.P8274147403539504711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010750 n) (A177706 n)

end

end A043288.P8274147403539504711

namespace A043288

/-- `gcd(A010750(n), A177706(n))` -/
def P8274147403539504711.Spec : Prop :=
  ∀ n, (P8274147403539504711.a n : ℤ) = A043288 (n + 1)

end A043288

/-! ## A043288.P14455093064616365542

`gcd(A010746(n), A177706(n))`
-/

namespace A043288.P14455093064616365542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010746 n) (A177706 n)

end

end A043288.P14455093064616365542

namespace A043288

/-- `gcd(A010746(n), A177706(n))` -/
def P14455093064616365542.Spec : Prop :=
  ∀ n, (P14455093064616365542.a n : ℤ) = A043288 (n + 1)

end A043288

/-! ## A043288.P11277285444253332902

`runs[A097541(∑[n+1])]`
-/

namespace A043288.P11277285444253332902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097541 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A043288.P11277285444253332902

namespace A043288

/-- `runs[A097541(∑[n+1])]` -/
def P11277285444253332902.Spec : Prop :=
  ∀ n, (P11277285444253332902.a n : ℤ) = A043288 (n + 1)

end A043288

/-! ## A043288.P5814305915341181444

`runs[A104489(∑[n+1])]`
-/

namespace A043288.P5814305915341181444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104489 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A043288.P5814305915341181444

namespace A043288

/-- `runs[A104489(∑[n+1])]` -/
def P5814305915341181444.Spec : Prop :=
  ∀ n, (P5814305915341181444.a n : ℤ) = A043288 (n + 1)

end A043288

/-!
# A043289: Maximal run length in base-15 representation of n.

The programs for A043289, the canonical program `A043289.P2676077445732993452` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043289 has offset 1).

The definition of A043289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043289.P16118394781775462950

`A071187(gcd(Δ[A043675(n+2)]!, A076413(n+1)))`
-/

namespace A043289.P16118394781775462950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071187 (Int.gcd (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) (A076413 (n + 1)))

end

end A043289.P16118394781775462950

namespace A043289

/-- `A071187(gcd(Δ[A043675(n+2)]!, A076413(n+1)))` -/
def P16118394781775462950.Spec : Prop :=
  ∀ n, P16118394781775462950.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P7643747296999416839

`Δ[A043675(2+n)]`
-/

namespace A043289.P7643747296999416839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043289.P7643747296999416839

namespace A043289

/-- `Δ[A043675(2+n)]` -/
def P7643747296999416839.Spec : Prop :=
  ∀ n, P7643747296999416839.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P6750468918356007487

`Δ[A043705(2+n)]`
-/

namespace A043289.P6750468918356007487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043705 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A043289.P6750468918356007487

namespace A043289

/-- `Δ[A043705(2+n)]` -/
def P6750468918356007487.Spec : Prop :=
  ∀ n, P6750468918356007487.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P9954217112254746099

`A276949(23*∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A043289.P9954217112254746099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (23 * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A043289.P9954217112254746099

namespace A043289

/-- `A276949(23*∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P9954217112254746099.Spec : Prop :=
  ∀ n, P9954217112254746099.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P12662269768004840716

`gcd(A042257(n), A177704(n))`
-/

namespace A043289.P12662269768004840716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A042257 n) (A177704 n)

end

end A043289.P12662269768004840716

namespace A043289

/-- `gcd(A042257(n), A177704(n))` -/
def P12662269768004840716.Spec : Prop :=
  ∀ n, (P12662269768004840716.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P2676077445732993452

`A014709(51*A336642(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043289

/-- `A014709(51*A336642(n+1))` -/
def P2676077445732993452.Spec : Prop :=
  ∀ n, P2676077445732993452.a n = A043289 (n + 1)

theorem P2676077445732993452.correct : P2676077445732993452.Spec := by
  intro n
  simp only [A043289, Nat.add_sub_cancel]

end A043289

/-! ## A043289.P3486610418800290393

`gcd(A001316(n²), A053164(n+1))`
-/

namespace A043289.P3486610418800290393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001316 (n ^ 2)) (A053164 (n + 1))

end

end A043289.P3486610418800290393

namespace A043289

/-- `gcd(A001316(n²), A053164(n+1))` -/
def P3486610418800290393.Spec : Prop :=
  ∀ n, (P3486610418800290393.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P2015862032331395141

`A007968(A007494(A000188(n+1)²))`
-/

namespace A043289.P2015862032331395141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A007494 (A000188 (n + 1) ^ 2).toNat).toNat

end

end A043289.P2015862032331395141

namespace A043289

/-- `A007968(A007494(A000188(n+1)²))` -/
def P2015862032331395141.Spec : Prop :=
  ∀ n, P2015862032331395141.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P4742229934056760870

`A004530(A032527(A000188(n+1))²)`
-/

namespace A043289.P4742229934056760870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A032527 (A000188 (n + 1)).toNat ^ 2).toNat

end

end A043289.P4742229934056760870

namespace A043289

/-- `A004530(A032527(A000188(n+1))²)` -/
def P4742229934056760870.Spec : Prop :=
  ∀ n, P4742229934056760870.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P9420130227947544661

`A014963(A010301(A000188(n+1))!)`
-/

namespace A043289.P9420130227947544661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.factorial (A010301 (A000188 (n + 1)).toNat).toNat)

end

end A043289.P9420130227947544661

namespace A043289

/-- `A014963(A010301(A000188(n+1))!)` -/
def P9420130227947544661.Spec : Prop :=
  ∀ n, P9420130227947544661.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P8015577864404547258

`gcd(A040526(n), A042175(n))`
-/

namespace A043289.P8015577864404547258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040526 n) (A042175 n)

end

end A043289.P8015577864404547258

namespace A043289

/-- `gcd(A040526(n), A042175(n))` -/
def P8015577864404547258.Spec : Prop :=
  ∀ n, (P8015577864404547258.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P8650415344447639938

`gcd(A040673(n), A041249(n))`
-/

namespace A043289.P8650415344447639938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040673 n) (A041249 n)

end

end A043289.P8650415344447639938

namespace A043289

/-- `gcd(A040673(n), A041249(n))` -/
def P8650415344447639938.Spec : Prop :=
  ∀ n, (P8650415344447639938.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P1269050033117651429

`gcd(A000034(n), A042361(n))`
-/

namespace A043289.P1269050033117651429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000034 n) (A042361 n)

end

end A043289.P1269050033117651429

namespace A043289

/-- `gcd(A000034(n), A042361(n))` -/
def P1269050033117651429.Spec : Prop :=
  ∀ n, (P1269050033117651429.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P1437807155124359860

`gcd(A041981(n), A108413(n))`
-/

namespace A043289.P1437807155124359860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041981 n) (A108413 n)

end

end A043289.P1437807155124359860

namespace A043289

/-- `gcd(A041981(n), A108413(n))` -/
def P1437807155124359860.Spec : Prop :=
  ∀ n, (P1437807155124359860.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P880087880059460946

`gcd(A040722(n), A041171(n))`
-/

namespace A043289.P880087880059460946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040722 n) (A041171 n)

end

end A043289.P880087880059460946

namespace A043289

/-- `gcd(A040722(n), A041171(n))` -/
def P880087880059460946.Spec : Prop :=
  ∀ n, (P880087880059460946.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P14716714857569930326

`gcd(A006342(n), A040722(n))`
-/

namespace A043289.P14716714857569930326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006342 n) (A040722 n)

end

end A043289.P14716714857569930326

namespace A043289

/-- `gcd(A006342(n), A040722(n))` -/
def P14716714857569930326.Spec : Prop :=
  ∀ n, (P14716714857569930326.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P11919953001032112528

`and(3^n, val(n+1, 4)!)`
-/

namespace A043289.P11919953001032112528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (3 ^ n) (Nat.factorial (SequenceMachineLib.valuation (n + 1) 4))

end

end A043289.P11919953001032112528

namespace A043289

/-- `and(3^n, val(n+1, 4)!)` -/
def P11919953001032112528.Spec : Prop :=
  ∀ n, (P11919953001032112528.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P7019746554407127821

`gcd(A000034(n), A041535(n))`
-/

namespace A043289.P7019746554407127821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000034 n) (A041535 n)

end

end A043289.P7019746554407127821

namespace A043289

/-- `gcd(A000034(n), A041535(n))` -/
def P7019746554407127821.Spec : Prop :=
  ∀ n, (P7019746554407127821.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P17451077555007458363

`gcd(A041125(n), A177704(n))`
-/

namespace A043289.P17451077555007458363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041125 n) (A177704 n)

end

end A043289.P17451077555007458363

namespace A043289

/-- `gcd(A041125(n), A177704(n))` -/
def P17451077555007458363.Spec : Prop :=
  ∀ n, (P17451077555007458363.a n : ℤ) = A043289 (n + 1)

end A043289

/-!
# A043290: Maximal run length in base 16 representation of n.

The programs for A043290, the canonical program `A043290.P10258835075994519670` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043290 has offset 1).

The definition of A043290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043290.P10258835075994519670

`val(A309002(n+1), 17)!`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043290

/-- `val(A309002(n+1), 17)!` -/
def P10258835075994519670.Spec : Prop :=
  ∀ n, (P10258835075994519670.a n : ℤ) = A043290 (n + 1)

theorem P10258835075994519670.correct : P10258835075994519670.Spec := by
  intro n
  simp only [A043290, Nat.add_sub_cancel]

end A043290

/-! ## A043290.P12980659157644239623

`val(A341293(n+1), 17)+1`
-/

namespace A043290.P12980659157644239623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A341293 (n + 1)).toNat 17 + 1

end

end A043290.P12980659157644239623

namespace A043290

/-- `val(A341293(n+1), 17)+1` -/
def P12980659157644239623.Spec : Prop :=
  ∀ n, (P12980659157644239623.a n : ℤ) = A043290 (n + 1)

end A043290

/-! ## A043290.P1192501897212184032

`A000041(val(A309002(n+1), 17))`
-/

namespace A043290.P1192501897212184032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P1192501897212184032

namespace A043290

/-- `A000041(val(A309002(n+1), 17))` -/
def P1192501897212184032.Spec : Prop :=
  ∀ n, P1192501897212184032.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P9226595884270095120

`A000108(val(A309002(n+1), 17))`
-/

namespace A043290.P9226595884270095120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P9226595884270095120

namespace A043290

/-- `A000108(val(A309002(n+1), 17))` -/
def P9226595884270095120.Spec : Prop :=
  ∀ n, P9226595884270095120.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P12565434694103839604

`A000142(val(A309002(n+1), 17))`
-/

namespace A043290.P12565434694103839604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P12565434694103839604

namespace A043290

/-- `A000142(val(A309002(n+1), 17))` -/
def P12565434694103839604.Spec : Prop :=
  ∀ n, P12565434694103839604.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P16688865603249477470

`A001405(val(A309002(n+1), 17))`
-/

namespace A043290.P16688865603249477470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P16688865603249477470

namespace A043290

/-- `A001405(val(A309002(n+1), 17))` -/
def P16688865603249477470.Spec : Prop :=
  ∀ n, P16688865603249477470.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P1350491830573780891

`A077957(val(A309002(n+1), 17))`
-/

namespace A043290.P1350491830573780891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P1350491830573780891

namespace A043290

/-- `A077957(val(A309002(n+1), 17))` -/
def P1350491830573780891.Spec : Prop :=
  ∀ n, P1350491830573780891.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P15451331234583521581

`A289501(val(A309002(n+1), 17))`
-/

namespace A043290.P15451331234583521581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289501 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P15451331234583521581

namespace A043290

/-- `A289501(val(A309002(n+1), 17))` -/
def P15451331234583521581.Spec : Prop :=
  ∀ n, P15451331234583521581.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P2453580238213211990

`A327064(val(A309002(n+1), 17))`
-/

namespace A043290.P2453580238213211990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327064 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P2453580238213211990

namespace A043290

/-- `A327064(val(A309002(n+1), 17))` -/
def P2453580238213211990.Spec : Prop :=
  ∀ n, P2453580238213211990.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P10540011293647390859

`A341291(val(A341293(n+1), 17))`
-/

namespace A043290.P10540011293647390859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341291 (SequenceMachineLib.valuation (A341293 (n + 1)).toNat 17)

end

end A043290.P10540011293647390859

namespace A043290

/-- `A341291(val(A341293(n+1), 17))` -/
def P10540011293647390859.Spec : Prop :=
  ∀ n, P10540011293647390859.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P13369220159473925128

`A000010(val(A309002(n+1), 17)+1)`
-/

namespace A043290.P13369220159473925128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17 + 1)

end

end A043290.P13369220159473925128

namespace A043290

/-- `A000010(val(A309002(n+1), 17)+1)` -/
def P13369220159473925128.Spec : Prop :=
  ∀ n, P13369220159473925128.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P5684322969088803728

`A036038(val(A309002(n+1), 17)+1)`
-/

namespace A043290.P5684322969088803728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17 + 1)

end

end A043290.P5684322969088803728

namespace A043290

/-- `A036038(val(A309002(n+1), 17)+1)` -/
def P5684322969088803728.Spec : Prop :=
  ∀ n, P5684322969088803728.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P16504361340327473350

`2-A290452(val(A309002(n+1), 17))`
-/

namespace A043290.P16504361340327473350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A290452 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P16504361340327473350

namespace A043290

/-- `2-A290452(val(A309002(n+1), 17))` -/
def P16504361340327473350.Spec : Prop :=
  ∀ n, P16504361340327473350.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P13511220224994748523

`A065033(val(A066023(n+1), 17))`
-/

namespace A043290.P13511220224994748523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.valuation (A066023 (n + 1)).toNat 17)

end

end A043290.P13511220224994748523

namespace A043290

/-- `A065033(val(A066023(n+1), 17))` -/
def P13511220224994748523.Spec : Prop :=
  ∀ n, P13511220224994748523.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P14458474605440248021

`A132217(val(A066023(n+1), 17))`
-/

namespace A043290.P14458474605440248021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132217 (SequenceMachineLib.valuation (A066023 (n + 1)).toNat 17)

end

end A043290.P14458474605440248021

namespace A043290

/-- `A132217(val(A066023(n+1), 17))` -/
def P14458474605440248021.Spec : Prop :=
  ∀ n, P14458474605440248021.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P10899538310590669452

`∏{e}[3-A171026(A006530(n+1)+1)², #]`
-/

namespace A043290.P10899538310590669452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A171026 (A006530 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A043290.P10899538310590669452

namespace A043290

/-- `∏{e}[3-A171026(A006530(n+1)+1)², #]` -/
def P10899538310590669452.Spec : Prop :=
  ∀ n, (P10899538310590669452.a n : ℤ) = A043290 (n + 1)

end A043290

/-! ## A043290.P2764796307657632597

`2-A011584((n+1)²)`
-/

namespace A043290.P2764796307657632597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A011584 ((n + 1) ^ 2)

end

end A043290.P2764796307657632597

namespace A043290

/-- `2-A011584((n+1)²)` -/
def P2764796307657632597.Spec : Prop :=
  ∀ n, P2764796307657632597.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P3719368370735191343

`A069877(val(A316563(n+1), 17))`
-/

namespace A043290.P3719368370735191343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (SequenceMachineLib.valuation (A316563 (n + 1)).toNat 17)

end

end A043290.P3719368370735191343

namespace A043290

/-- `A069877(val(A316563(n+1), 17))` -/
def P3719368370735191343.Spec : Prop :=
  ∀ n, P3719368370735191343.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P5875429499956076332

`∏{e}[A068963(n+1), A000010(#)]`
-/

namespace A043290.P5875429499956076332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A043290.P5875429499956076332

namespace A043290

/-- `∏{e}[A068963(n+1), A000010(#)]` -/
def P5875429499956076332.Spec : Prop :=
  ∀ n, P5875429499956076332.a n = A043290 (n + 1)

end A043290

/-!
# A043291: Every run length in base 2 is 2.

The programs for A043291, the canonical program `A043291.P14424377653976249789` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043291 has offset 1).

The definition of A043291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A043291.P2345151180009691508

`ogf(3/(1-4x-x^2+4x^3))`
-/

namespace A043291.P2345151180009691508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -4, -1, 4] n

end

end A043291.P2345151180009691508

namespace A043291

/-- `ogf(3/(1-4x-x^2+4x^3))` -/
def P2345151180009691508.Spec : Prop :=
  ∀ n, P2345151180009691508.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P14424377653976249789

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=3, a(1)=12, a(2)=51`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A043291

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P14424377653976249789.Spec : Prop :=
  ∀ n, P14424377653976249789.a n = A043291 (n + 1)

theorem P14424377653976249789.correct : P14424377653976249789.Spec := by
  intro n
  simp only [A043291, Nat.add_sub_cancel]

end A043291

/-! ## A043291.P11452951515127999387

`3*A033114(n+1)`
-/

namespace A043291.P11452951515127999387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033114 (n + 1)

end

end A043291.P11452951515127999387

namespace A043291

/-- `3*A033114(n+1)` -/
def P11452951515127999387.Spec : Prop :=
  ∀ n, P11452951515127999387.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P17591521611218279386

`floor(4^(n+2)/5)`
-/

namespace A043291.P17591521611218279386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ (n + 2) : ℚ) / 5⌋

end

end A043291.P17591521611218279386

namespace A043291

/-- `floor(4^(n+2)/5)` -/
def P17591521611218279386.Spec : Prop :=
  ∀ n, P17591521611218279386.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P14182564055953408237

`∑[Δ[4^n]-a(n-1)]` with `a(0)=3`
-/

namespace A043291.P14182564055953408237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043291.P14182564055953408237

namespace A043291

/-- `∑[Δ[4^n]-a(n-1)]` -/
def P14182564055953408237.Spec : Prop :=
  ∀ n, P14182564055953408237.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P8692887178449785316

`3*∑[4^n-a(n-1)]` with `a(0)=1`
-/

namespace A043291.P8692887178449785316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A043291.P8692887178449785316

namespace A043291

/-- `3*∑[4^n-a(n-1)]` -/
def P8692887178449785316.Spec : Prop :=
  ∀ n, P8692887178449785316.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P17593340834332251642

`4^(n+1)-(a(n-1)+1)` with `a(0)=3`
-/

namespace A043291.P17593340834332251642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (4 ^ (n + 1) : ℤ) - (a (n - 1) + 1)

end

end A043291.P17593340834332251642

namespace A043291

/-- `4^(n+1)-(a(n-1)+1)` -/
def P17593340834332251642.Spec : Prop :=
  ∀ n, P17593340834332251642.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P10951501501262995879

`4*4^n-1-a(n-1)` with `a(0)=3`
-/

namespace A043291.P10951501501262995879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (4 * 4 ^ n : ℤ) - 1 - a (n - 1)

end

end A043291.P10951501501262995879

namespace A043291

/-- `4*4^n-1-a(n-1)` -/
def P10951501501262995879.Spec : Prop :=
  ∀ n, P10951501501262995879.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P12172461050989279446

`a(n-1)+3*or(1, a(n-1))` with `a(0)=3`
-/

namespace A043291.P12172461050989279446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 3 * Nat.lor 1 (a (n - 1))

end

end A043291.P12172461050989279446

namespace A043291

/-- `a(n-1)+3*or(1, a(n-1))` -/
def P12172461050989279446.Spec : Prop :=
  ∀ n, (P12172461050989279446.a n : ℤ) = A043291 (n + 1)

end A043291

/-! ## A043291.P12541266585667652459

`3*(n+1)%2+4*a(n-1)` with `a(0)=3`
-/

namespace A043291.P12541266585667652459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * ((n + 1) % 2) + 4 * a (n - 1)

end

end A043291.P12541266585667652459

namespace A043291

/-- `3*(n+1)%2+4*a(n-1)` -/
def P12541266585667652459.Spec : Prop :=
  ∀ n, (P12541266585667652459.a n : ℤ) = A043291 (n + 1)

end A043291

/-! ## A043291.P1493816223362510644

`4*a(n-1)+gcd(4, a(n-1))-1` with `a(0)=3`
-/

namespace A043291.P1493816223362510644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * a (n - 1) + ((Int.gcd 4 (a (n - 1)) : ℤ) - 1)

end

end A043291.P1493816223362510644

namespace A043291

/-- `4*a(n-1)+gcd(4, a(n-1))-1` -/
def P1493816223362510644.Spec : Prop :=
  ∀ n, P1493816223362510644.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P14679486595116789131

`3-(a(n-1)%4-4*a(n-1))` with `a(0)=3`
-/

namespace A043291.P14679486595116789131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - (Int.tmod (a (n - 1)) 4 - 4 * a (n - 1))

end

end A043291.P14679486595116789131

namespace A043291

/-- `3-(a(n-1)%4-4*a(n-1))` -/
def P14679486595116789131.Spec : Prop :=
  ∀ n, P14679486595116789131.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P3122663236958349931

`A077854(Δ[n²])`
-/

namespace A043291.P3122663236958349931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A043291.P3122663236958349931

namespace A043291

/-- `A077854(Δ[n²])` -/
def P3122663236958349931.Spec : Prop :=
  ∀ n, P3122663236958349931.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P13751309330961990439

`∑[A330795(n+1)]`
-/

namespace A043291.P13751309330961990439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043291.P13751309330961990439

namespace A043291

/-- `∑[A330795(n+1)]` -/
def P13751309330961990439.Spec : Prop :=
  ∀ n, P13751309330961990439.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P8368783452411017497

`3*A083593(2*n)`
-/

namespace A043291.P8368783452411017497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083593 (2 * n)

end

end A043291.P8368783452411017497

namespace A043291

/-- `3*A083593(2*n)` -/
def P8368783452411017497.Spec : Prop :=
  ∀ n, P8368783452411017497.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P4843810644706096772

`3*A281216(2*n)`
-/

namespace A043291.P4843810644706096772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A281216 (2 * n)

end

end A043291.P4843810644706096772

namespace A043291

/-- `3*A281216(2*n)` -/
def P4843810644706096772.Spec : Prop :=
  ∀ n, P4843810644706096772.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P3742180226157549806

`3*A283216(2*n)`
-/

namespace A043291.P3742180226157549806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A283216 (2 * n)

end

end A043291.P3742180226157549806

namespace A043291

/-- `3*A283216(2*n)` -/
def P3742180226157549806.Spec : Prop :=
  ∀ n, P3742180226157549806.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P15730566855227079603

`3*A115451(Δ[n²])`
-/

namespace A043291.P15730566855227079603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A115451 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A043291.P15730566855227079603

namespace A043291

/-- `3*A115451(Δ[n²])` -/
def P15730566855227079603.Spec : Prop :=
  ∀ n, P15730566855227079603.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P1412242697759170434

`3*A215095(Δ[n²])`
-/

namespace A043291.P1412242697759170434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A215095 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A043291.P1412242697759170434

namespace A043291

/-- `3*A215095(Δ[n²])` -/
def P1412242697759170434.Spec : Prop :=
  ∀ n, P1412242697759170434.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P7578745073751049929

`∑[record[A199402(n+1)]]`
-/

namespace A043291.P7578745073751049929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199402 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043291.P7578745073751049929

namespace A043291

/-- `∑[record[A199402(n+1)]]` -/
def P7578745073751049929.Spec : Prop :=
  ∀ n, P7578745073751049929.a n = A043291 (n + 1)

end A043291

/-!
# A043292: Numbers that divide 10^k + 1 for some k.

The programs for A043292, there is no canonical definition to state claims against.
-/

/-! ## A043292.P7896503575657601467

`record[A006530(record[A339352(n)])]`
-/

namespace A043292.P7896503575657601467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043292.P7896503575657601467

/-! ## A043292.P17727215969639858009

`record[A014963(record[A339352(n)])]`
-/

namespace A043292.P17727215969639858009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043292.P17727215969639858009

/-! ## A043292.P13470473489701839053

`record[A020639(record[A339352(n)])]`
-/

namespace A043292.P13470473489701839053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043292.P13470473489701839053

/-! ## A043292.P9238669448011955671

`record[A033677(record[A339352(n)])]`
-/

namespace A043292.P9238669448011955671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043292.P9238669448011955671

/-! ## A043292.P14516354020862778276

`record[A020639(lt[2, A100880(2*n+1)])]`
-/

namespace A043292.P14516354020862778276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100880 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043292.P14516354020862778276

/-!
# A043293: Numbers n such that lcm(sigma(n),phi(n)) is a perfect square.

The programs for A043293, there is no canonical definition to state claims against.
-/

/-! ## A043293.P7923759805329996094

`∑[A334923(A134915(n))]`
-/

namespace A043293.P7923759805329996094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334923 (A134915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043293.P7923759805329996094

/-! ## A043293.P4420482420928042619

`A249728(record[ratio[A305470(n+1)]])`
-/

namespace A043293.P4420482420928042619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305470 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A043293.P4420482420928042619

/-!
# A043294: Sum of digits of binomial(2n,n).

The programs for A043294, the canonical program `A043294.P17313216890179425883` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043294 has offset 1).

The definition of A043294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043294.P17313216890179425883

`∑{digits}[∏[2/(n+1)-4], #]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A043294

/-- `∑{digits}[∏[2/(n+1)-4], #]` -/
def P17313216890179425883.Spec : Prop :=
  ∀ n, (P17313216890179425883.a n : ℤ) = A043294 (n + 1)

theorem P17313216890179425883.correct : P17313216890179425883.Spec := by
  intro n
  simp only [A043294, Nat.add_sub_cancel]

end A043294

/-! ## A043294.P344884557364268462

`A096145(∑[4*(n+1)])`
-/

namespace A043294.P344884557364268462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096145 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A043294.P344884557364268462

namespace A043294

/-- `A096145(∑[4*(n+1)])` -/
def P344884557364268462.Spec : Prop :=
  ∀ n, P344884557364268462.a n = A043294 (n + 1)

end A043294

/-!
# A043295: Sum of digits of numerator of Bernoulli number B(2n).

The programs for A043295, there is no canonical definition to state claims against.
-/

/-! ## A043295.P7714186154267427895

`∑{digits}[A000367(n+1), #]`
-/

namespace A043295.P7714186154267427895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P7714186154267427895

/-! ## A043295.P16192163570683136649

`∑{digits}[A027641(A103517(n)), #]`
-/

namespace A043295.P16192163570683136649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A103517 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P16192163570683136649

/-! ## A043295.P1380490722421277621

`∑{digits}[A164555(Δ[A002378(n)]), #]`
-/

namespace A043295.P1380490722421277621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P1380490722421277621

/-! ## A043295.P6365429996018769189

`∑{digits}[A027641(A004277(n+1)), #]`
-/

namespace A043295.P6365429996018769189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A004277 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P6365429996018769189

/-! ## A043295.P1379500286121676362

`∑{digits}[A027641(A005408(n)+1), #]`
-/

namespace A043295.P1379500286121676362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A005408 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P1379500286121676362

/-! ## A043295.P10277121517349673619

`∑{digits}[A027641(A005843(n+1)), #]`
-/

namespace A043295.P10277121517349673619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A005843 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P10277121517349673619

/-! ## A043295.P18286550839103726847

`∑{digits}[A162298(A014105(n+1)), #]`
-/

namespace A043295.P18286550839103726847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162298 (A014105 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P18286550839103726847

/-! ## A043295.P18267113706242351263

`∑{digits}[A027641(A317440(n+1)), #]`
-/

namespace A043295.P18267113706242351263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A317440 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P18267113706242351263

/-! ## A043295.P14351685467110190926

`∑{digits}[A176327(A317108(n+1)), #]`
-/

namespace A043295.P14351685467110190926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 (A317108 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P14351685467110190926

/-! ## A043295.P706568708501756712

`∑{digits}[A176840(n+2), #]`
-/

namespace A043295.P706568708501756712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176840 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P706568708501756712

/-!
# A043296: Sum of digits of denominator of Bernoulli number B(2n).

The programs for A043296, the canonical program `A043296.P1256347733658503674` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043296 has offset 1).

The definition of A043296 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002445, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A043296.P1256347733658503674

`A007953(A002445(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043296

/-- `A007953(A002445(n+1))` -/
def P1256347733658503674.Spec : Prop :=
  ∀ n, P1256347733658503674.a n = A043296 (n + 1)

theorem P1256347733658503674.correct : P1256347733658503674.Spec := by
  intro n
  simp only [A043296, Nat.add_sub_cancel]

end A043296

/-! ## A043296.P10494821017853379886

`∑{digits}[A002445(n+1), #]`
-/

namespace A043296.P10494821017853379886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P10494821017853379886

namespace A043296

/-- `∑{digits}[A002445(n+1), #]` -/
def P10494821017853379886.Spec : Prop :=
  ∀ n, (P10494821017853379886.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P4131001122634964163

`∑{digits}[A027762(n+1), #]`
-/

namespace A043296.P4131001122634964163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027762 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P4131001122634964163

namespace A043296

/-- `∑{digits}[A027762(n+1), #]` -/
def P4131001122634964163.Spec : Prop :=
  ∀ n, (P4131001122634964163.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P12726762382867970882

`∑{digits}[A140814(n+1), #]`
-/

namespace A043296.P12726762382867970882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P12726762382867970882

namespace A043296

/-- `∑{digits}[A140814(n+1), #]` -/
def P12726762382867970882.Spec : Prop :=
  ∀ n, (P12726762382867970882.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P9855460702900331342

`∑{digits}[A027642(2*(n+1)), #]`
-/

namespace A043296.P9855460702900331342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P9855460702900331342

namespace A043296

/-- `∑{digits}[A027642(2*(n+1)), #]` -/
def P9855460702900331342.Spec : Prop :=
  ∀ n, (P9855460702900331342.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P2274976742265108522

`∑{digits}[A027760(2*(n+1)), #]`
-/

namespace A043296.P2274976742265108522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P2274976742265108522

namespace A043296

/-- `∑{digits}[A027760(2*(n+1)), #]` -/
def P2274976742265108522.Spec : Prop :=
  ∀ n, (P2274976742265108522.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P18329826314016678981

`∑{digits}[A141056(2*(n+1)), #]`
-/

namespace A043296.P18329826314016678981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P18329826314016678981

namespace A043296

/-- `∑{digits}[A141056(2*(n+1)), #]` -/
def P18329826314016678981.Spec : Prop :=
  ∀ n, (P18329826314016678981.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P15961447253734212919

`∑{digits}[A164020(2*(n+1)), #]`
-/

namespace A043296.P15961447253734212919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P15961447253734212919

namespace A043296

/-- `∑{digits}[A164020(2*(n+1)), #]` -/
def P15961447253734212919.Spec : Prop :=
  ∀ n, (P15961447253734212919.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P9057417503120498995

`∑{digits}[2*A001897(n+1), #]`
-/

namespace A043296.P9057417503120498995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P9057417503120498995

namespace A043296

/-- `∑{digits}[2*A001897(n+1), #]` -/
def P9057417503120498995.Spec : Prop :=
  ∀ n, (P9057417503120498995.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P18388408794194722219

`∑{digits}[A006954(n+2), #]`
-/

namespace A043296.P18388408794194722219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006954 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P18388408794194722219

namespace A043296

/-- `∑{digits}[A006954(n+2), #]` -/
def P18388408794194722219.Spec : Prop :=
  ∀ n, (P18388408794194722219.a n : ℤ) = A043296 (n + 1)

end A043296

/-!
# A043297: Primes p such that B(4*p) has denominator 30 where B(2n) are the Bernoulli numbers.

The programs for A043297, the canonical program `A043297.P1803761097073732209` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043297 has offset 1).

The definition of A043297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043297.P1803761097073732209

`p?[A119480(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043297

/-- `p?[A119480(n+1)]` -/
def P1803761097073732209.Spec : Prop :=
  ∀ n, P1803761097073732209.a n = A043297 (n + 1)

theorem P1803761097073732209.correct : P1803761097073732209.Spec := by
  intro n
  simp only [A043297, Nat.add_sub_cancel]

end A043297

/-! ## A043297.P16953476204589841709

`∩[A045319(n+1), A119480(n+1)]`
-/

namespace A043297.P16953476204589841709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P16953476204589841709

namespace A043297

/-- `∩[A045319(n+1), A119480(n+1)]` -/
def P16953476204589841709.Spec : Prop :=
  ∀ n, (P16953476204589841709.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P13396267628970047743

`∩[A045344(n+1), A119480(n+1)]`
-/

namespace A043297.P13396267628970047743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P13396267628970047743

namespace A043297

/-- `∩[A045344(n+1), A119480(n+1)]` -/
def P13396267628970047743.Spec : Prop :=
  ∀ n, (P13396267628970047743.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P10484791218201531877

`∩[A000040(n+1), A119480(n+1)]`
-/

namespace A043297.P10484791218201531877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P10484791218201531877

namespace A043297

/-- `∩[A000040(n+1), A119480(n+1)]` -/
def P10484791218201531877.Spec : Prop :=
  ∀ n, (P10484791218201531877.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P6063797235347929803

`∩[A051948(n+1), A119480(n+1)]`
-/

namespace A043297.P6063797235347929803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P6063797235347929803

namespace A043297

/-- `∩[A051948(n+1), A119480(n+1)]` -/
def P6063797235347929803.Spec : Prop :=
  ∀ n, (P6063797235347929803.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P9767404339687033439

`∩[A053813(n+1), A119480(n+1)]`
-/

namespace A043297.P9767404339687033439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P9767404339687033439

namespace A043297

/-- `∩[A053813(n+1), A119480(n+1)]` -/
def P9767404339687033439.Spec : Prop :=
  ∀ n, (P9767404339687033439.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P11721127369928998287

`∩[A251595(n+1), A119480(n+1)]`
-/

namespace A043297.P11721127369928998287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P11721127369928998287

namespace A043297

/-- `∩[A251595(n+1), A119480(n+1)]` -/
def P11721127369928998287.Spec : Prop :=
  ∀ n, (P11721127369928998287.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P7672996206321029939

`∩[A066191(n+1), A119480(n+1)]`
-/

namespace A043297.P7672996206321029939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P7672996206321029939

namespace A043297

/-- `∩[A066191(n+1), A119480(n+1)]` -/
def P7672996206321029939.Spec : Prop :=
  ∀ n, (P7672996206321029939.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P14862644351149104624

`record[A006530(A119480(n+2))]`
-/

namespace A043297.P14862644351149104624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A119480 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043297.P14862644351149104624

namespace A043297

/-- `record[A006530(A119480(n+2))]` -/
def P14862644351149104624.Spec : Prop :=
  ∀ n, P14862644351149104624.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P17513826052828402207

`filter[A119480(n+1), A010051(#)]`
-/

namespace A043297.P17513826052828402207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A043297.P17513826052828402207

namespace A043297

/-- `filter[A119480(n+1), A010051(#)]` -/
def P17513826052828402207.Spec : Prop :=
  ∀ n, P17513826052828402207.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P1176958673152050482

`filter[A119480(n+1), A358751(#)]`
-/

namespace A043297.P1176958673152050482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A043297.P1176958673152050482

namespace A043297

/-- `filter[A119480(n+1), A358751(#)]` -/
def P1176958673152050482.Spec : Prop :=
  ∀ n, P1176958673152050482.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P5939595810282063257

`∩[A036844(n+1), A119480(n+1)]`
-/

namespace A043297.P5939595810282063257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P5939595810282063257

namespace A043297

/-- `∩[A036844(n+1), A119480(n+1)]` -/
def P5939595810282063257.Spec : Prop :=
  ∀ n, (P5939595810282063257.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P3273728661043602603

`filter[A119480(n+1), A323153(#)]`
-/

namespace A043297.P3273728661043602603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A043297.P3273728661043602603

namespace A043297

/-- `filter[A119480(n+1), A323153(#)]` -/
def P3273728661043602603.Spec : Prop :=
  ∀ n, P3273728661043602603.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P14105841405864358795

`filter[A119480(n+1), A342460(#)]`
-/

namespace A043297.P14105841405864358795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A043297.P14105841405864358795

namespace A043297

/-- `filter[A119480(n+1), A342460(#)]` -/
def P14105841405864358795.Spec : Prop :=
  ∀ n, P14105841405864358795.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P10622867448553522724

`∩[A106843(n+1), A119480(n+1)]`
-/

namespace A043297.P10622867448553522724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P10622867448553522724

namespace A043297

/-- `∩[A106843(n+1), A119480(n+1)]` -/
def P10622867448553522724.Spec : Prop :=
  ∀ n, (P10622867448553522724.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P12835458597578759500

`∩[A054010(n+1), A119480(n+1)]`
-/

namespace A043297.P12835458597578759500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P12835458597578759500

namespace A043297

/-- `∩[A054010(n+1), A119480(n+1)]` -/
def P12835458597578759500.Spec : Prop :=
  ∀ n, (P12835458597578759500.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P15343509833824726602

`p?[A119656(n+1)+A006093(n+1)]`
-/

namespace A043297.P15343509833824726602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119656 (n + 1) + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A043297.P15343509833824726602

namespace A043297

/-- `p?[A119656(n+1)+A006093(n+1)]` -/
def P15343509833824726602.Spec : Prop :=
  ∀ n, P15343509833824726602.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P5357791115956436674

`record[A006530(A051225(n+1))]`
-/

namespace A043297.P5357791115956436674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043297.P5357791115956436674

namespace A043297

/-- `record[A006530(A051225(n+1))]` -/
def P5357791115956436674.Spec : Prop :=
  ∀ n, P5357791115956436674.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P18427956108895821034

`record[A006530(A051226(n+1))]`
-/

namespace A043297.P18427956108895821034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051226 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043297.P18427956108895821034

namespace A043297

/-- `record[A006530(A051226(n+1))]` -/
def P18427956108895821034.Spec : Prop :=
  ∀ n, P18427956108895821034.a n = A043297 (n + 1)

end A043297

/-!
# A043298: Numbers n such that B(6*n) has denominator 42 where B(2k) are the Bernoulli numbers.

The programs for A043298, there is no canonical definition to state claims against.
-/

/-! ## A043298.P14882019498936792708

`A051227(1+n)/3`
-/

namespace A043298.P14882019498936792708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051227 (1 + n) : ℚ) / 3

end

end A043298.P14882019498936792708

/-! ## A043298.P10613022269503128675

`A051228(1+n)/6`
-/

namespace A043298.P10613022269503128675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051228 (1 + n) : ℚ) / 6

end

end A043298.P10613022269503128675

/-! ## A043298.P4076543260699579158

`A093411(A051228(n+1))`
-/

namespace A043298.P4076543260699579158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A051228 (n + 1)).toNat

end

end A043298.P4076543260699579158

/-! ## A043298.P7684827799086993769

`A117358(2*lcm(A010696(n), A051227(n+1)))`
-/

namespace A043298.P7684827799086993769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * Int.lcm (A010696 n) (A051227 (n + 1)))

end

end A043298.P7684827799086993769

/-! ## A043298.P14459810573859289720

`A117358(6*A051227(n+1))`
-/

namespace A043298.P14459810573859289720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (6 * A051227 (n + 1)).toNat

end

end A043298.P14459810573859289720

/-! ## A043298.P17646915667648547848

`A002264(A051227(n+1))`
-/

namespace A043298.P17646915667648547848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A051227 (n + 1)).toNat

end

end A043298.P17646915667648547848

/-! ## A043298.P18244007363552853011

`A289436(A051227(1+n))`
-/

namespace A043298.P18244007363552853011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A051227 (1 + n)).toNat

end

end A043298.P18244007363552853011

/-! ## A043298.P17047591852083132853

`A008611(A051227(n+1)+1)`
-/

namespace A043298.P17047591852083132853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A051227 (n + 1) + 1).toNat

end

end A043298.P17047591852083132853

/-! ## A043298.P17782640019673464054

`A096605(A051227(n+1)+1)`
-/

namespace A043298.P17782640019673464054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096605 (A051227 (n + 1) + 1).toNat

end

end A043298.P17782640019673464054

/-! ## A043298.P15085260504888591601

`A086161(A051227(n+1)-2)`
-/

namespace A043298.P15085260504888591601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A051227 (n + 1) - 2).toNat

end

end A043298.P15085260504888591601

/-! ## A043298.P3137889205915474410

`A051275(A051227(n+1)-3)`
-/

namespace A043298.P3137889205915474410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (A051227 (n + 1) - 3).toNat

end

end A043298.P3137889205915474410

/-! ## A043298.P4660236028982225713

`A214685(or(1, A051227(n+1)))`
-/

namespace A043298.P4660236028982225713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (Int.lor 1 (A051227 (n + 1))).toNat

end

end A043298.P4660236028982225713

/-! ## A043298.P15643962301635307401

`A008615(A051228(n+1))`
-/

namespace A043298.P15643962301635307401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A051228 (n + 1)).toNat

end

end A043298.P15643962301635307401

/-! ## A043298.P5448077807193477163

`A214685(2*A051227(n+1))`
-/

namespace A043298.P5448077807193477163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (2 * A051227 (n + 1)).toNat

end

end A043298.P5448077807193477163

/-! ## A043298.P12325173226751998999

`A004396(2*A051227(n+1))-A051227(n+1)`
-/

namespace A043298.P12325173226751998999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A051227 (n + 1)).toNat - A051227 (n + 1)

end

end A043298.P12325173226751998999

