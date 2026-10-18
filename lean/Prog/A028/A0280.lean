import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C017
import Seq.B000.C022
import Seq.B000.C029
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B003.C002
import Seq.B005.C001
import Seq.B006.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C008

/-!
# A028000: Expansion of 1/((1-2*x)*(1-6*x)*(1-9*x)*(1-11*x)).

The programs for A028000, there is no canonical definition to state claims against.
-/

/-! ## A028000.P14700504364724254914

`A020606(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A028000.P14700504364724254914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020606 n + 2 * a (n - 1)

end

end A028000.P14700504364724254914

/-! ## A028000.P2444703341539524316

`2*A021294(n)-A021194(n)`
-/

namespace A028000.P2444703341539524316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021294 n - A021194 n

end

end A028000.P2444703341539524316

/-! ## A028000.P2763638983337845625

`2*A025953(n)-A025941(n)`
-/

namespace A028000.P2763638983337845625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025953 n - A025941 n

end

end A028000.P2763638983337845625

/-! ## A028000.P3274908025301960740

`(A028140(n)+A025981(n))/2`
-/

namespace A028000.P3274908025301960740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028140 n + A025981 n : ℚ) / 2

end

end A028000.P3274908025301960740

/-! ## A028000.P13446729634943119943

`A021284(n)+A021314(n)-A021194(n)`
-/

namespace A028000.P13446729634943119943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021284 n + (A021314 n - A021194 n)

end

end A028000.P13446729634943119943

/-! ## A028000.P1396382944923808573

`A025952(n)+A025955(n)-A025941(n)`
-/

namespace A028000.P1396382944923808573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025952 n + (A025955 n - A025941 n)

end

end A028000.P1396382944923808573

/-! ## A028000.P5861721272678841782

`2*A028004(n)-A028023(n)`
-/

namespace A028000.P5861721272678841782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028004 n - A028023 n

end

end A028000.P5861721272678841782

/-!
# A028001: Expansion of 1/((1-2x)(1-6x)(1-9x)(1-12x)).

The programs for A028001, there is no canonical definition to state claims against.
-/

/-! ## A028001.P14991780648089192123

`a(n-1)+A020724(n)+a(n-1)` with `a(0)=1`
-/

namespace A028001.P14991780648089192123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020724 n + a (n - 1))

end

end A028001.P14991780648089192123

/-! ## A028001.P7432175738091502256

`2*A016324(n)-A016306(n)`
-/

namespace A028001.P7432175738091502256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016324 n - A016306 n

end

end A028001.P7432175738091502256

/-! ## A028001.P11031072871057740382

`2*A025954(n)-A025942(n)`
-/

namespace A028001.P11031072871057740382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025954 n - A025942 n

end

end A028001.P11031072871057740382

/-! ## A028001.P5218799097430445117

`2*a(n-1)+A000244(n)*A016269(n)` with `a(0)=1`
-/

namespace A028001.P5218799097430445117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A000244 n * A016269 n

end

end A028001.P5218799097430445117

/-! ## A028001.P13177969510819319548

`A025942(n)+A025954(n)-A025939(n)`
-/

namespace A028001.P13177969510819319548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025942 n + (A025954 n - A025939 n)

end

end A028001.P13177969510819319548

/-!
# A028002: Expansion of 1/((1-2*x)*(1-6*x)*(1-10*x)*(1-11*x)).

The programs for A028002, there is no canonical definition to state claims against.
-/

/-! ## A028002.P4568089514958192403

`A016325(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A028002.P4568089514958192403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016325 n + 6 * a (n - 1)

end

end A028002.P4568089514958192403

/-! ## A028002.P12528201587603381675

`A016307(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A028002.P12528201587603381675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016307 n + 11 * a (n - 1)

end

end A028002.P12528201587603381675

/-! ## A028002.P18121305672218441414

`a(n-1)+A020726(n)+a(n-1)` with `a(0)=1`
-/

namespace A028002.P18121305672218441414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020726 n + a (n - 1))

end

end A028002.P18121305672218441414

/-! ## A028002.P13068249420213109396

`Δ[A021204(n)-A021202(n)]`
-/

namespace A028002.P13068249420213109396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021204 n - A021202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028002.P13068249420213109396

/-! ## A028002.P849646392154666144

`2*A021314(n)-A021202(n)`
-/

namespace A028002.P849646392154666144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021314 n - A021202 n

end

end A028002.P849646392154666144

/-! ## A028002.P16872524757362123488

`2*A028000(n)-A026795(n)`
-/

namespace A028002.P16872524757362123488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028000 n - A026795 n

end

end A028002.P16872524757362123488

/-! ## A028002.P12891167376201588469

`2*A028003(n)-A028004(n)`
-/

namespace A028002.P12891167376201588469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028003 n - A028004 n

end

end A028002.P12891167376201588469

/-!
# A028003: Expansion of 1/((1-2x)(1-6x)(1-10x)(1-12x)).

The programs for A028003, the canonical program `A028003.P8682461671152515831` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028003 has offset 0).

The definition of A028003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028003.P8682461671152515831

`(576*12^n-625*10^n+90*6^n-2^n)/40`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028003

/-- `(576*12^n-625*10^n+90*6^n-2^n)/40` -/
def P8682461671152515831.Spec : Prop :=
  ∀ n, P8682461671152515831.a n = (A028003 n : ℚ)

end A028003

/-! ## A028003.P1566488669084172541

`2^n*A021414(n)`
-/

namespace A028003.P1566488669084172541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A021414 n

end

end A028003.P1566488669084172541

namespace A028003

/-- `2^n*A021414(n)` -/
def P1566488669084172541.Spec : Prop :=
  ∀ n, P1566488669084172541.a n = A028003 n

end A028003

/-! ## A028003.P10016604565496659820

`2^n*∑[A017269(n)]`
-/

namespace A028003.P10016604565496659820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028003.P10016604565496659820

namespace A028003

/-- `2^n*∑[A017269(n)]` -/
def P10016604565496659820.Spec : Prop :=
  ∀ n, P10016604565496659820.a n = A028003 n

end A028003

/-! ## A028003.P13324022355765141748

`a(n-1)+A020758(n)+a(n-1)` with `a(0)=1`
-/

namespace A028003.P13324022355765141748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020758 n + a (n - 1))

end

end A028003.P13324022355765141748

namespace A028003

/-- `a(n-1)+A020758(n)+a(n-1)` -/
def P13324022355765141748.Spec : Prop :=
  ∀ n, P13324022355765141748.a n = A028003 n

end A028003

/-! ## A028003.P17253011260996201024

`∑[A017269(n)]*A011782(n+1)`
-/

namespace A028003.P17253011260996201024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 (n + 1)

end

end A028003.P17253011260996201024

namespace A028003

/-- `∑[A017269(n)]*A011782(n+1)` -/
def P17253011260996201024.Spec : Prop :=
  ∀ n, P17253011260996201024.a n = A028003 n

end A028003

/-! ## A028003.P8839736923958227141

`A021414(n)*A130321(A000217(n))`
-/

namespace A028003.P8839736923958227141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021414 n * A130321 (A000217 n).toNat

end

end A028003.P8839736923958227141

namespace A028003

/-- `A021414(n)*A130321(A000217(n))` -/
def P8839736923958227141.Spec : Prop :=
  ∀ n, P8839736923958227141.a n = A028003 n

end A028003

/-! ## A028003.P11486976887478729310

`∑[A017269(n)]*A247936(A034856(n+1))`
-/

namespace A028003.P11486976887478729310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A247936 (A034856 (n + 1)).toNat

end

end A028003.P11486976887478729310

namespace A028003

/-- `∑[A017269(n)]*A247936(A034856(n+1))` -/
def P11486976887478729310.Spec : Prop :=
  ∀ n, P11486976887478729310.a n = A028003 n

end A028003

/-!
# A028004: Expansion of 1/((1-2x)(1-6x)(1-11x)(1-12x)).

The programs for A028004, the canonical program `A028004.P8885431873324431264` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028004 has offset 0).

The definition of A028004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028004.P8885431873324431264

`(6*12^(n+3)-8*11^(n+3)+3*6^(n+3)-2^(n+3))/360`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028004

/-- `(6*12^(n+3)-8*11^(n+3)+3*6^(n+3)-2^(n+3))/360` -/
def P8885431873324431264.Spec : Prop :=
  ∀ n, P8885431873324431264.a n = (A028004 n : ℚ)

end A028004

/-! ## A028004.P117482617463425280

`a(n-1)+A020766(n)+a(n-1)` with `a(0)=1`
-/

namespace A028004.P117482617463425280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020766 n + a (n - 1))

end

end A028004.P117482617463425280

namespace A028004

/-- `a(n-1)+A020766(n)+a(n-1)` -/
def P117482617463425280.Spec : Prop :=
  ∀ n, P117482617463425280.a n = A028004 n

end A028004

/-! ## A028004.P10990916292469424039

`Δ[A021214(n)-A021204(n)]`
-/

namespace A028004.P10990916292469424039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021214 n - A021204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028004.P10990916292469424039

namespace A028004

/-- `Δ[A021214(n)-A021204(n)]` -/
def P10990916292469424039.Spec : Prop :=
  ∀ n, P10990916292469424039.a n = A028004 n

end A028004

/-! ## A028004.P4037393570544030191

`2*A021334(n)-A021214(n)`
-/

namespace A028004.P4037393570544030191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021334 n - A021214 n

end

end A028004.P4037393570544030191

namespace A028004

/-- `2*A021334(n)-A021214(n)` -/
def P4037393570544030191.Spec : Prop :=
  ∀ n, P4037393570544030191.a n = A028004 n

end A028004

/-! ## A028004.P2091336475409040776

`2*A028003(n)-A028002(n)`
-/

namespace A028004.P2091336475409040776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028003 n - A028002 n

end

end A028004.P2091336475409040776

namespace A028004

/-- `2*A028003(n)-A028002(n)` -/
def P2091336475409040776.Spec : Prop :=
  ∀ n, P2091336475409040776.a n = A028004 n

end A028004

/-! ## A028004.P14259143061216842670

`A016309(n+1)-A016308(n+1)`
-/

namespace A028004.P14259143061216842670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016309 (n + 1) - A016308 (n + 1)

end

end A028004.P14259143061216842670

namespace A028004

/-- `A016309(n+1)-A016308(n+1)` -/
def P14259143061216842670.Spec : Prop :=
  ∀ n, P14259143061216842670.a n = A028004 n

end A028004

/-!
# A028005: Expansion of 1/((1-2x)(1-7x)(1-8x)(1-9x)).

The programs for A028005, the canonical program `A028005.P13155927876554615617` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028005 has offset 0).

The definition of A028005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028005.P13155927876554615617

`(15*9^(n+3)-35*8^(n+3)+3*7^(n+4)-2^(n+3))/210`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028005

/-- `(15*9^(n+3)-35*8^(n+3)+3*7^(n+4)-2^(n+3))/210` -/
def P13155927876554615617.Spec : Prop :=
  ∀ n, P13155927876554615617.a n = (A028005 n : ℚ)

end A028005

/-! ## A028005.P12329640799335572479

`a(n-1)+A020782(n)+a(n-1)` with `a(0)=1`
-/

namespace A028005.P12329640799335572479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020782 n + a (n - 1))

end

end A028005.P12329640799335572479

namespace A028005

/-- `a(n-1)+A020782(n)+a(n-1)` -/
def P12329640799335572479.Spec : Prop :=
  ∀ n, P12329640799335572479.a n = A028005 n

end A028005

/-! ## A028005.P6563537747018081132

`Δ[A021229(n)-A021224(n)]`
-/

namespace A028005.P6563537747018081132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021229 n - A021224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028005.P6563537747018081132

namespace A028005

/-- `Δ[A021229(n)-A021224(n)]` -/
def P6563537747018081132.Spec : Prop :=
  ∀ n, P6563537747018081132.a n = A028005 n

end A028005

/-! ## A028005.P15970833076065931037

`Δ[A021264(n)-A021229(n)]`
-/

namespace A028005.P15970833076065931037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021264 n - A021229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028005.P15970833076065931037

namespace A028005

/-- `Δ[A021264(n)-A021229(n)]` -/
def P15970833076065931037.Spec : Prop :=
  ∀ n, P15970833076065931037.a n = A028005 n

end A028005

/-! ## A028005.P4471135911868245109

`2*A025997(n)-A025992(n)`
-/

namespace A028005.P4471135911868245109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025997 n - A025992 n

end

end A028005.P4471135911868245109

namespace A028005

/-- `2*A025997(n)-A025992(n)` -/
def P4471135911868245109.Spec : Prop :=
  ∀ n, P4471135911868245109.a n = A028005 n

end A028005

/-! ## A028005.P17965010329134987284

`A016312(n+1)-A016311(n+1)`
-/

namespace A028005.P17965010329134987284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016312 (n + 1) - A016311 (n + 1)

end

end A028005.P17965010329134987284

namespace A028005

/-- `A016312(n+1)-A016311(n+1)` -/
def P17965010329134987284.Spec : Prop :=
  ∀ n, P17965010329134987284.a n = A028005 n

end A028005

/-! ## A028005.P16803616997458839811

`2*A028006(n)-A028009(n)`
-/

namespace A028005.P16803616997458839811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028006 n - A028009 n

end

end A028005.P16803616997458839811

namespace A028005

/-- `2*A028006(n)-A028009(n)` -/
def P16803616997458839811.Spec : Prop :=
  ∀ n, P16803616997458839811.a n = A028005 n

end A028005

/-! ## A028005.P13789054018183729141

`2*A028007(n)-A028016(n)`
-/

namespace A028005.P13789054018183729141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028007 n - A028016 n

end

end A028005.P13789054018183729141

namespace A028005

/-- `2*A028007(n)-A028016(n)` -/
def P13789054018183729141.Spec : Prop :=
  ∀ n, P13789054018183729141.a n = A028005 n

end A028005

/-!
# A028006: Expansion of 1/((1-2x)(1-7x)(1-8x)(1-10x)).

The programs for A028006, the canonical program `A028006.P4345146394146014032` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028006 has offset 0).

The definition of A028006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028006.P4345146394146014032

`(5*10^(n+3)-20*8^(n+3)+16*7^(n+3)-2^(n+3))/240`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028006

/-- `(5*10^(n+3)-20*8^(n+3)+16*7^(n+3)-2^(n+3))/240` -/
def P4345146394146014032.Spec : Prop :=
  ∀ n, P4345146394146014032.a n = (A028006 n : ℚ)

end A028006

/-! ## A028006.P18087138667223606959

`A016311(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A028006.P18087138667223606959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016311 n + 10 * a (n - 1)

end

end A028006.P18087138667223606959

namespace A028006

/-- `A016311(n)+10*a(n-1)` -/
def P18087138667223606959.Spec : Prop :=
  ∀ n, P18087138667223606959.a n = A028006 n

end A028006

/-! ## A028006.P4268617873785805209

`a(n-1)+A020838(n)+a(n-1)` with `a(0)=1`
-/

namespace A028006.P4268617873785805209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020838 n + a (n - 1))

end

end A028006.P4268617873785805209

namespace A028006

/-- `a(n-1)+A020838(n)+a(n-1)` -/
def P4268617873785805209.Spec : Prop :=
  ∀ n, P4268617873785805209.a n = A028006 n

end A028006

/-! ## A028006.P6708485053560937517

`Δ[A021268(n)-A021234(n)]`
-/

namespace A028006.P6708485053560937517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021268 n - A021234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028006.P6708485053560937517

namespace A028006

/-- `Δ[A021268(n)-A021234(n)]` -/
def P6708485053560937517.Spec : Prop :=
  ∀ n, P6708485053560937517.a n = A028006 n

end A028006

/-! ## A028006.P7335641514137073293

`2*A025977(n)-A025971(n)`
-/

namespace A028006.P7335641514137073293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025977 n - A025971 n

end

end A028006.P7335641514137073293

namespace A028006

/-- `2*A025977(n)-A025971(n)` -/
def P7335641514137073293.Spec : Prop :=
  ∀ n, P7335641514137073293.a n = A028006 n

end A028006

/-! ## A028006.P3022482918583043911

`2*A028009(n)-A028015(n)`
-/

namespace A028006.P3022482918583043911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028009 n - A028015 n

end

end A028006.P3022482918583043911

namespace A028006

/-- `2*A028009(n)-A028015(n)` -/
def P3022482918583043911.Spec : Prop :=
  ∀ n, P3022482918583043911.a n = A028006 n

end A028006

/-! ## A028006.P17979164151827104611

`A025994(n)+A025998(n)-A025992(n)`
-/

namespace A028006.P17979164151827104611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025994 n + (A025998 n - A025992 n)

end

end A028006.P17979164151827104611

namespace A028006

/-- `A025994(n)+A025998(n)-A025992(n)` -/
def P17979164151827104611.Spec : Prop :=
  ∀ n, P17979164151827104611.a n = A028006 n

end A028006

/-!
# A028007: Expansion of 1/((1-2x)(1-7x)(1-8x)(1-11x)).

The programs for A028007, the canonical program `A028007.P9691698827847657066` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028007 has offset 0).

The definition of A028007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028007.P9691698827847657066

`(5*11^(n+3)-30*8^(n+3)+27*7^(n+3)-2^(n+4))/540`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028007

/-- `(5*11^(n+3)-30*8^(n+3)+27*7^(n+3)-2^(n+4))/540` -/
def P9691698827847657066.Spec : Prop :=
  ∀ n, P9691698827847657066.a n = (A028007 n : ℚ)

end A028007

/-! ## A028007.P17324628417957382896

`A020968(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A028007.P17324628417957382896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020968 n + 2 * a (n - 1)

end

end A028007.P17324628417957382896

namespace A028007

/-- `A020968(n)+2*a(n-1)` -/
def P17324628417957382896.Spec : Prop :=
  ∀ n, P17324628417957382896.a n = A028007 n

end A028007

/-! ## A028007.P10126008835023074287

`Δ[A021274(n)-A021244(n)]`
-/

namespace A028007.P10126008835023074287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021274 n - A021244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028007.P10126008835023074287

namespace A028007

/-- `Δ[A021274(n)-A021244(n)]` -/
def P10126008835023074287.Spec : Prop :=
  ∀ n, P10126008835023074287.a n = A028007 n

end A028007

/-! ## A028007.P17685636494427690397

`2*A025950(n)-A025943(n)`
-/

namespace A028007.P17685636494427690397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025950 n - A025943 n

end

end A028007.P17685636494427690397

namespace A028007

/-- `2*A025950(n)-A025943(n)` -/
def P17685636494427690397.Spec : Prop :=
  ∀ n, P17685636494427690397.a n = A028007 n

end A028007

/-! ## A028007.P842881788865923806

`2*A025995(n)-A025992(n)`
-/

namespace A028007.P842881788865923806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025995 n - A025992 n

end

end A028007.P842881788865923806

namespace A028007

/-- `2*A025995(n)-A025992(n)` -/
def P842881788865923806.Spec : Prop :=
  ∀ n, P842881788865923806.a n = A028007 n

end A028007

/-! ## A028007.P2063680594651587825

`2*A028010(n)-A028016(n)`
-/

namespace A028007.P2063680594651587825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028010 n - A028016 n

end

end A028007.P2063680594651587825

namespace A028007

/-- `2*A028010(n)-A028016(n)` -/
def P2063680594651587825.Spec : Prop :=
  ∀ n, P2063680594651587825.a n = A028007 n

end A028007

/-! ## A028007.P5489375528582887861

`A025974(n)+A025978(n)-A025971(n)`
-/

namespace A028007.P5489375528582887861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025974 n + (A025978 n - A025971 n)

end

end A028007.P5489375528582887861

namespace A028007

/-- `A025974(n)+A025978(n)-A025971(n)` -/
def P5489375528582887861.Spec : Prop :=
  ∀ n, P5489375528582887861.a n = A028007 n

end A028007

/-!
# A028008: Expansion of 1/((1-2x)(1-7x)(1-8x)(1-12x)).

The programs for A028008, the canonical program `A028008.P7439928837201268552` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028008 has offset 0).

The definition of A028008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028008.P7439928837201268552

`(3*12^(n+3)-25*8^(n+3)+24*7^(n+3)-2^(n+4))/600`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028008

/-- `(3*12^(n+3)-25*8^(n+3)+24*7^(n+3)-2^(n+4))/600` -/
def P7439928837201268552.Spec : Prop :=
  ∀ n, P7439928837201268552.a n = (A028008 n : ℚ)

end A028008

/-! ## A028008.P2296361718383408111

`a(n-1)+A020969(n)+a(n-1)` with `a(0)=1`
-/

namespace A028008.P2296361718383408111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020969 n + a (n - 1))

end

end A028008.P2296361718383408111

namespace A028008

/-- `a(n-1)+A020969(n)+a(n-1)` -/
def P2296361718383408111.Spec : Prop :=
  ∀ n, P2296361718383408111.a n = A028008 n

end A028008

/-! ## A028008.P17702918085891578044

`Δ[A021279(n)-A021254(n)]`
-/

namespace A028008.P17702918085891578044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021279 n - A021254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028008.P17702918085891578044

namespace A028008

/-- `Δ[A021279(n)-A021254(n)]` -/
def P17702918085891578044.Spec : Prop :=
  ∀ n, P17702918085891578044.a n = A028008 n

end A028008

/-! ## A028008.P356747372796972982

`2*A028011(n)-A028017(n)`
-/

namespace A028008.P356747372796972982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028011 n - A028017 n

end

end A028008.P356747372796972982

namespace A028008

/-- `2*A028011(n)-A028017(n)` -/
def P356747372796972982.Spec : Prop :=
  ∀ n, P356747372796972982.a n = A028008 n

end A028008

/-! ## A028008.P11562010490200424750

`A025947(n)+A025951(n)-A025943(n)`
-/

namespace A028008.P11562010490200424750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025947 n + (A025951 n - A025943 n)

end

end A028008.P11562010490200424750

namespace A028008

/-- `A025947(n)+A025951(n)-A025943(n)` -/
def P11562010490200424750.Spec : Prop :=
  ∀ n, P11562010490200424750.a n = A028008 n

end A028008

/-! ## A028008.P8879844530620833793

`A028007(n)+A028020(n)-A028014(n)`
-/

namespace A028008.P8879844530620833793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028007 n + (A028020 n - A028014 n)

end

end A028008.P8879844530620833793

namespace A028008

/-- `A028007(n)+A028020(n)-A028014(n)` -/
def P8879844530620833793.Spec : Prop :=
  ∀ n, P8879844530620833793.a n = A028008 n

end A028008

/-!
# A028009: Expansion of 1/((1-2x)(1-7x)(1-9x)(1-10x)).

The programs for A028009, there is no canonical definition to state claims against.
-/

/-! ## A028009.P9189505716099376074

`A020970(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A028009.P9189505716099376074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020970 n + 2 * a (n - 1)

end

end A028009.P9189505716099376074

/-! ## A028009.P9510803348951314697

`Δ[A021234(n)-A021229(n)]`
-/

namespace A028009.P9510803348951314697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021234 n - A021229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028009.P9510803348951314697

/-! ## A028009.P2052154424519395765

`2*A025980(n)-A025972(n)`
-/

namespace A028009.P2052154424519395765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025980 n - A025972 n

end

end A028009.P2052154424519395765

/-! ## A028009.P11423898631879356384

`2*A028006(n)-A028005(n)`
-/

namespace A028009.P11423898631879356384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028006 n - A028005 n

end

end A028009.P11423898631879356384

/-! ## A028009.P8160622535535457918

`A016313(n+1)-A016312(n+1)`
-/

namespace A028009.P8160622535535457918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016313 (n + 1) - A016312 (n + 1)

end

end A028009.P8160622535535457918

/-! ## A028009.P2903063548567923078

`2*A028012(n)-A028021(n)`
-/

namespace A028009.P2903063548567923078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028012 n - A028021 n

end

end A028009.P2903063548567923078

/-!
# A028010: Expansion of 1/((1-2x)(1-7x)(1-9x)(1-11x)).

The programs for A028010, there is no canonical definition to state claims against.
-/

/-! ## A028010.P11224722017043374052

`A016312(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A028010.P11224722017043374052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016312 n + 11 * a (n - 1)

end

end A028010.P11224722017043374052

/-! ## A028010.P12147149784914063745

`a(n-1)+A020971(n)+a(n-1)` with `a(0)=1`
-/

namespace A028010.P12147149784914063745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020971 n + a (n - 1))

end

end A028010.P12147149784914063745

/-! ## A028010.P7883989179736280031

`2*A025953(n)-A025944(n)`
-/

namespace A028010.P7883989179736280031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025953 n - A025944 n

end

end A028010.P7883989179736280031

/-! ## A028010.P4630984263221682148

`2*A026028(n)-A025995(n)`
-/

namespace A028010.P4630984263221682148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026028 n - A025995 n

end

end A028010.P4630984263221682148

/-! ## A028010.P14979218543032370650

`(A028012(n)+A028009(n))/2`
-/

namespace A028010.P14979218543032370650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028012 n + A028009 n : ℚ) / 2

end

end A028010.P14979218543032370650

/-! ## A028010.P17380400251835635624

`(A028016(n)+A028007(n))/2`
-/

namespace A028010.P17380400251835635624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028016 n + A028007 n : ℚ) / 2

end

end A028010.P17380400251835635624

/-! ## A028010.P12382624104423720779

`(A016314(n+1)-A016312(n+1))/2`
-/

namespace A028010.P12382624104423720779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016314 (n + 1) - A016312 (n + 1) : ℚ) / 2

end

end A028010.P12382624104423720779

/-! ## A028010.P1873976998145672132

`(A016322(n+1)-A016314(n+1))/2`
-/

namespace A028010.P1873976998145672132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016322 (n + 1) - A016314 (n + 1) : ℚ) / 2

end

end A028010.P1873976998145672132

/-! ## A028010.P18067303076478264624

`A025952(n)+A025955(n)-A025944(n)`
-/

namespace A028010.P18067303076478264624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025952 n + (A025955 n - A025944 n)

end

end A028010.P18067303076478264624

/-!
# A028011: Expansion of 1/((1-2x)(1-7x)(1-9x)(1-12x)).

The programs for A028011, there is no canonical definition to state claims against.
-/

/-! ## A028011.P5883060785247276720

`A020972(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A028011.P5883060785247276720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020972 n + 2 * a (n - 1)

end

end A028011.P5883060785247276720

/-! ## A028011.P722411771791366212

`(A028017(n)+A028008(n))/2`
-/

namespace A028011.P722411771791366212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028017 n + A028008 n : ℚ) / 2

end

end A028011.P722411771791366212

/-! ## A028011.P294053853795567665

`A028009(n)+A028022(n)-A028013(n)`
-/

namespace A028011.P294053853795567665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028009 n + (A028022 n - A028013 n)

end

end A028011.P294053853795567665

/-! ## A028011.P2384694961771971427

`A028014(n)+A028014(n)-A028023(n)`
-/

namespace A028011.P2384694961771971427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028014 n + (A028014 n - A028023 n)

end

end A028011.P2384694961771971427

/-! ## A028011.P9944540387628854441

`2*A028014(n)-A028023(n)`
-/

namespace A028011.P9944540387628854441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028014 n - A028023 n

end

end A028011.P9944540387628854441

/-!
# A028012: Expansion of 1/((1-2x)(1-7x)(1-10x)(1-11x)).

The programs for A028012, the canonical program `A028012.P10957122250842599850` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028012 has offset 0).

The definition of A028012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028012.P10957122250842599850

`(10*11^(n+3)-15*10^(n+3)+6*7^(n+3)-2^(n+3))/360`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028012

/-- `(10*11^(n+3)-15*10^(n+3)+6*7^(n+3)-2^(n+3))/360` -/
def P10957122250842599850.Spec : Prop :=
  ∀ n, P10957122250842599850.a n = (A028012 n : ℚ)

end A028012

/-! ## A028012.P8144183488217041419

`a(n-1)+A020973(n)+a(n-1)` with `a(0)=1`
-/

namespace A028012.P8144183488217041419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020973 n + a (n - 1))

end

end A028012.P8144183488217041419

namespace A028012

/-- `a(n-1)+A020973(n)+a(n-1)` -/
def P8144183488217041419.Spec : Prop :=
  ∀ n, P8144183488217041419.a n = A028012 n

end A028012

/-! ## A028012.P8517246989357125129

`Δ[A021244(n)-A021234(n)]`
-/

namespace A028012.P8517246989357125129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021244 n - A021234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028012.P8517246989357125129

namespace A028012

/-- `Δ[A021244(n)-A021234(n)]` -/
def P8517246989357125129.Spec : Prop :=
  ∀ n, P8517246989357125129.a n = A028012 n

end A028012

/-! ## A028012.P6704945112045252763

`2*A025955(n)-A025945(n)`
-/

namespace A028012.P6704945112045252763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025955 n - A025945 n

end

end A028012.P6704945112045252763

namespace A028012

/-- `2*A025955(n)-A025945(n)` -/
def P6704945112045252763.Spec : Prop :=
  ∀ n, P6704945112045252763.a n = A028012 n

end A028012

/-! ## A028012.P13882925640627624496

`2*A028010(n)-A028009(n)`
-/

namespace A028012.P13882925640627624496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028010 n - A028009 n

end

end A028012.P13882925640627624496

namespace A028012

/-- `2*A028010(n)-A028009(n)` -/
def P13882925640627624496.Spec : Prop :=
  ∀ n, P13882925640627624496.a n = A028012 n

end A028012

/-! ## A028012.P6586501940207860291

`A028006(n)+A028018(n)-A028007(n)`
-/

namespace A028012.P6586501940207860291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028006 n + (A028018 n - A028007 n)

end

end A028012.P6586501940207860291

namespace A028012

/-- `A028006(n)+A028018(n)-A028007(n)` -/
def P6586501940207860291.Spec : Prop :=
  ∀ n, P6586501940207860291.a n = A028012 n

end A028012

/-! ## A028012.P13075368656561146267

`A028007(n)+A028016(n)-A028009(n)`
-/

namespace A028012.P13075368656561146267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028007 n + (A028016 n - A028009 n)

end

end A028012.P13075368656561146267

namespace A028012

/-- `A028007(n)+A028016(n)-A028009(n)` -/
def P13075368656561146267.Spec : Prop :=
  ∀ n, P13075368656561146267.a n = A028012 n

end A028012

/-! ## A028012.P10814847760237917817

`2*A028013(n)-A028014(n)`
-/

namespace A028012.P10814847760237917817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028013 n - A028014 n

end

end A028012.P10814847760237917817

namespace A028012

/-- `2*A028013(n)-A028014(n)` -/
def P10814847760237917817.Spec : Prop :=
  ∀ n, P10814847760237917817.a n = A028012 n

end A028012

/-!
# A028013: Expansion of 1/((1-2*x)*(1-7*x)*(1-10*x)*(1-12*x)).

The programs for A028013, there is no canonical definition to state claims against.
-/

/-! ## A028013.P7529963179297169592

`a(n-1)+A020974(n)+a(n-1)` with `a(0)=1`
-/

namespace A028013.P7529963179297169592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020974 n + a (n - 1))

end

end A028013.P7529963179297169592

/-! ## A028013.P16523273919882346192

`2*A025984(n)-A025975(n)`
-/

namespace A028013.P16523273919882346192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025984 n - A025975 n

end

end A028013.P16523273919882346192

/-! ## A028013.P17034122647189155431

`2*A028008(n)-A028006(n)`
-/

namespace A028013.P17034122647189155431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028008 n - A028006 n

end

end A028013.P17034122647189155431

/-! ## A028013.P5210441111298032812

`(A028014(n)+A028012(n))/2`
-/

namespace A028013.P5210441111298032812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028014 n + A028012 n : ℚ) / 2

end

end A028013.P5210441111298032812

/-! ## A028013.P14901458469353110610

`A025983(n)+A025985(n)-A025975(n)`
-/

namespace A028013.P14901458469353110610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025983 n + (A025985 n - A025975 n)

end

end A028013.P14901458469353110610

/-! ## A028013.P12988077024804157822

`A028009(n)+A028022(n)-A028011(n)`
-/

namespace A028013.P12988077024804157822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028009 n + (A028022 n - A028011 n)

end

end A028013.P12988077024804157822

/-!
# A028014: Expansion of 1/((1-2x)(1-7x)(1-11x)(1-12x)).

The programs for A028014, the canonical program `A028014.P7518189498338103450` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028014 has offset 0).

The definition of A028014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028014.P7518189498338103450

`(18*12^(n+3)-25*11^(n+3)+9*7^(n+3)-2^(n+4))/900`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028014

/-- `(18*12^(n+3)-25*11^(n+3)+9*7^(n+3)-2^(n+4))/900` -/
def P7518189498338103450.Spec : Prop :=
  ∀ n, P7518189498338103450.a n = (A028014 n : ℚ)

end A028014

/-! ## A028014.P7008320519138386544

`a(n-1)+A020975(n)+a(n-1)` with `a(0)=1`
-/

namespace A028014.P7008320519138386544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020975 n + a (n - 1))

end

end A028014.P7008320519138386544

namespace A028014

/-- `a(n-1)+A020975(n)+a(n-1)` -/
def P7008320519138386544.Spec : Prop :=
  ∀ n, P7008320519138386544.a n = A028014 n

end A028014

/-! ## A028014.P7294981682529315743

`Δ[A021254(n)-A021244(n)]`
-/

namespace A028014.P7294981682529315743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021254 n - A021244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028014.P7294981682529315743

namespace A028014

/-- `Δ[A021254(n)-A021244(n)]` -/
def P7294981682529315743.Spec : Prop :=
  ∀ n, P7294981682529315743.a n = A028014 n

end A028014

/-! ## A028014.P6970040150804328530

`2*A025957(n)-A025947(n)`
-/

namespace A028014.P6970040150804328530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025957 n - A025947 n

end

end A028014.P6970040150804328530

namespace A028014

/-- `2*A025957(n)-A025947(n)` -/
def P6970040150804328530.Spec : Prop :=
  ∀ n, P6970040150804328530.a n = A028014 n

end A028014

/-! ## A028014.P10367939412950613658

`2*A028013(n)-A028012(n)`
-/

namespace A028014.P10367939412950613658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028013 n - A028012 n

end

end A028014.P10367939412950613658

namespace A028014

/-- `2*A028013(n)-A028012(n)` -/
def P10367939412950613658.Spec : Prop :=
  ∀ n, P10367939412950613658.a n = A028014 n

end A028014

/-! ## A028014.P3978495214590086753

`A028007(n)+A028020(n)-A028008(n)`
-/

namespace A028014.P3978495214590086753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028007 n + (A028020 n - A028008 n)

end

end A028014.P3978495214590086753

namespace A028014

/-- `A028007(n)+A028020(n)-A028008(n)` -/
def P3978495214590086753.Spec : Prop :=
  ∀ n, P3978495214590086753.a n = A028014 n

end A028014

/-!
# A028015: Expansion of 1/((1-2x)(1-8x)(1-9x)(1-10x)).

The programs for A028015, the canonical program `A028015.P13197273361062074034` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028015 has offset 0).

The definition of A028015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028015.P13197273361062074034

`(21*10^(n+3)-48*9^(n+3)+28*8^(n+3)-2^(n+3))/336`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028015

/-- `(21*10^(n+3)-48*9^(n+3)+28*8^(n+3)-2^(n+3))/336` -/
def P13197273361062074034.Spec : Prop :=
  ∀ n, P13197273361062074034.a n = (A028015 n : ℚ)

end A028015

/-! ## A028015.P4321392004599809577

`A016316(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A028015.P4321392004599809577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016316 n + 10 * a (n - 1)

end

end A028015.P4321392004599809577

namespace A028015

/-- `A016316(n)+10*a(n-1)` -/
def P4321392004599809577.Spec : Prop :=
  ∀ n, P4321392004599809577.a n = A028015 n

end A028015

/-! ## A028015.P14222818167732332837

`a(n-1)+A020976(n)+a(n-1)` with `a(0)=1`
-/

namespace A028015.P14222818167732332837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020976 n + a (n - 1))

end

end A028015.P14222818167732332837

namespace A028015

/-- `a(n-1)+A020976(n)+a(n-1)` -/
def P14222818167732332837.Spec : Prop :=
  ∀ n, P14222818167732332837.a n = A028015 n

end A028015

/-! ## A028015.P7442426281988432922

`Δ[A021268(n)-A021264(n)]`
-/

namespace A028015.P7442426281988432922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021268 n - A021264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028015.P7442426281988432922

namespace A028015

/-- `Δ[A021268(n)-A021264(n)]` -/
def P7442426281988432922.Spec : Prop :=
  ∀ n, P7442426281988432922.a n = A028015 n

end A028015

/-! ## A028015.P9037549498404324663

`2*A028009(n)-A028006(n)`
-/

namespace A028015.P9037549498404324663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028009 n - A028006 n

end

end A028015.P9037549498404324663

namespace A028015

/-- `2*A028009(n)-A028006(n)` -/
def P9037549498404324663.Spec : Prop :=
  ∀ n, P9037549498404324663.a n = A028015 n

end A028015

/-! ## A028015.P17908852309830957383

`A016317(n+1)-A016316(n+1)`
-/

namespace A028015.P17908852309830957383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016317 (n + 1) - A016316 (n + 1)

end

end A028015.P17908852309830957383

namespace A028015

/-- `A016317(n+1)-A016316(n+1)` -/
def P17908852309830957383.Spec : Prop :=
  ∀ n, P17908852309830957383.a n = A028015 n

end A028015

/-! ## A028015.P13680728500525530137

`A028006(n)+A028009(n)-A028005(n)`
-/

namespace A028015.P13680728500525530137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028006 n + (A028009 n - A028005 n)

end

end A028015.P13680728500525530137

namespace A028015

/-- `A028006(n)+A028009(n)-A028005(n)` -/
def P13680728500525530137.Spec : Prop :=
  ∀ n, P13680728500525530137.a n = A028015 n

end A028015

/-! ## A028015.P15625619662173410473

`Δ[A021284(n)-A021268(n)]`
-/

namespace A028015.P15625619662173410473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021284 n - A021268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028015.P15625619662173410473

namespace A028015

/-- `Δ[A021284(n)-A021268(n)]` -/
def P15625619662173410473.Spec : Prop :=
  ∀ n, P15625619662173410473.a n = A028015 n

end A028015

/-! ## A028015.P15008743710614732621

`2*A028017(n)-A028022(n)`
-/

namespace A028015.P15008743710614732621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028017 n - A028022 n

end

end A028015.P15008743710614732621

namespace A028015

/-- `2*A028017(n)-A028022(n)` -/
def P15008743710614732621.Spec : Prop :=
  ∀ n, P15008743710614732621.a n = A028015 n

end A028015

/-!
# A028016: Expansion of 1/((1-2x)(1-8x)(1-9x)(1-11x)).

The programs for A028016, the canonical program `A028016.P7444843843300628289` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028016 has offset 0).

The definition of A028016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028016.P7444843843300628289

`(7*11^(n+3)-3*9^(n+4)+21*8^(n+3)-2^(n+3))/378`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028016

/-- `(7*11^(n+3)-3*9^(n+4)+21*8^(n+3)-2^(n+3))/378` -/
def P7444843843300628289.Spec : Prop :=
  ∀ n, P7444843843300628289.a n = (A028016 n : ℚ)

end A028016

/-! ## A028016.P12864495882455985379

`a(n-1)+A020977(n)+a(n-1)` with `a(0)=1`
-/

namespace A028016.P12864495882455985379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020977 n + a (n - 1))

end

end A028016.P12864495882455985379

namespace A028016

/-- `a(n-1)+A020977(n)+a(n-1)` -/
def P12864495882455985379.Spec : Prop :=
  ∀ n, P12864495882455985379.a n = A028016 n

end A028016

/-! ## A028016.P18101670961570083134

`Δ[A021294(n)-A021274(n)]`
-/

namespace A028016.P18101670961570083134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021294 n - A021274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028016.P18101670961570083134

namespace A028016

/-- `Δ[A021294(n)-A021274(n)]` -/
def P18101670961570083134.Spec : Prop :=
  ∀ n, P18101670961570083134.a n = A028016 n

end A028016

/-! ## A028016.P13913389541570950867

`2*A028007(n)-A028005(n)`
-/

namespace A028016.P13913389541570950867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028007 n - A028005 n

end

end A028016.P13913389541570950867

namespace A028016

/-- `2*A028007(n)-A028005(n)` -/
def P13913389541570950867.Spec : Prop :=
  ∀ n, P13913389541570950867.a n = A028016 n

end A028016

/-! ## A028016.P15372889276968278720

`2*A028010(n)-A028007(n)`
-/

namespace A028016.P15372889276968278720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028010 n - A028007 n

end

end A028016.P15372889276968278720

namespace A028016

/-- `2*A028010(n)-A028007(n)` -/
def P15372889276968278720.Spec : Prop :=
  ∀ n, P15372889276968278720.a n = A028016 n

end A028016

/-! ## A028016.P6104591429083067434

`2*A028018(n)-A028021(n)`
-/

namespace A028016.P6104591429083067434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028018 n - A028021 n

end

end A028016.P6104591429083067434

namespace A028016

/-- `2*A028018(n)-A028021(n)` -/
def P6104591429083067434.Spec : Prop :=
  ∀ n, P6104591429083067434.a n = A028016 n

end A028016

/-! ## A028016.P1070722198364577906

`A028009(n)+A028012(n)-A028007(n)`
-/

namespace A028016.P1070722198364577906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028009 n + (A028012 n - A028007 n)

end

end A028016.P1070722198364577906

namespace A028016

/-- `A028009(n)+A028012(n)-A028007(n)` -/
def P1070722198364577906.Spec : Prop :=
  ∀ n, P1070722198364577906.a n = A028016 n

end A028016

/-!
# A028017: Expansion of 1/((1-2x)(1-8x)(1-9x)(1-12x)).

The programs for A028017, the canonical program `A028017.P17563709142539021129` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028017 has offset 0).

The definition of A028017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028017.P17563709142539021129

`(7*12^(n+3)-40*9^(n+3)+35*8^(n+3)-2^(n+4))/840`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028017

/-- `(7*12^(n+3)-40*9^(n+3)+35*8^(n+3)-2^(n+4))/840` -/
def P17563709142539021129.Spec : Prop :=
  ∀ n, P17563709142539021129.a n = (A028017 n : ℚ)

end A028017

/-! ## A028017.P11896928351038224592

`A020978(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A028017.P11896928351038224592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020978 n + 2 * a (n - 1)

end

end A028017.P11896928351038224592

namespace A028017

/-- `A020978(n)+2*a(n-1)` -/
def P11896928351038224592.Spec : Prop :=
  ∀ n, P11896928351038224592.a n = A028017 n

end A028017

/-! ## A028017.P15953262597204018074

`2*A028011(n)-A028008(n)`
-/

namespace A028017.P15953262597204018074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028011 n - A028008 n

end

end A028017.P15953262597204018074

namespace A028017

/-- `2*A028011(n)-A028008(n)` -/
def P15953262597204018074.Spec : Prop :=
  ∀ n, P15953262597204018074.a n = A028017 n

end A028017

/-! ## A028017.P914170238448384934

`2*A028019(n)-A028022(n)`
-/

namespace A028017.P914170238448384934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028019 n - A028022 n

end

end A028017.P914170238448384934

namespace A028017

/-- `2*A028019(n)-A028022(n)` -/
def P914170238448384934.Spec : Prop :=
  ∀ n, P914170238448384934.a n = A028017 n

end A028017

/-! ## A028017.P11049468357703114810

`A028016(n)+A028023(n)-A028020(n)`
-/

namespace A028017.P11049468357703114810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028016 n + (A028023 n - A028020 n)

end

end A028017.P11049468357703114810

namespace A028017

/-- `A028016(n)+A028023(n)-A028020(n)` -/
def P11049468357703114810.Spec : Prop :=
  ∀ n, P11049468357703114810.a n = A028017 n

end A028017

/-! ## A028017.P6231373437291086626

`A028018(n)+A028020(n)-A028022(n)`
-/

namespace A028017.P6231373437291086626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028018 n + (A028020 n - A028022 n)

end

end A028017.P6231373437291086626

namespace A028017

/-- `A028018(n)+A028020(n)-A028022(n)` -/
def P6231373437291086626.Spec : Prop :=
  ∀ n, P6231373437291086626.a n = A028017 n

end A028017

/-! ## A028017.P12479598134906357482

`Δ[A021304(n)-A021279(n)]`
-/

namespace A028017.P12479598134906357482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021304 n - A021279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028017.P12479598134906357482

namespace A028017

/-- `Δ[A021304(n)-A021279(n)]` -/
def P12479598134906357482.Spec : Prop :=
  ∀ n, P12479598134906357482.a n = A028017 n

end A028017

/-!
# A028018: Expansion of 1/((1-2x)(1-8x)(1-10x)(1-11x)).

The programs for A028018, the canonical program `A028018.P3000566333833015566` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028018 has offset 0).

The definition of A028018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028018.P3000566333833015566

`(16*11^(n+3)-27*10^(n+3)+12*8^(n+3)-2^(n+3))/432`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028018

/-- `(16*11^(n+3)-27*10^(n+3)+12*8^(n+3)-2^(n+3))/432` -/
def P3000566333833015566.Spec : Prop :=
  ∀ n, P3000566333833015566.a n = (A028018 n : ℚ)

end A028018

/-! ## A028018.P7332876187517723187

`a(n-1)+A020979(n)+a(n-1)` with `a(0)=1`
-/

namespace A028018.P7332876187517723187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020979 n + a (n - 1))

end

end A028018.P7332876187517723187

namespace A028018

/-- `a(n-1)+A020979(n)+a(n-1)` -/
def P7332876187517723187.Spec : Prop :=
  ∀ n, P7332876187517723187.a n = A028018 n

end A028018

/-! ## A028018.P17646172892806312185

`Δ[A021274(n)-A021268(n)]`
-/

namespace A028018.P17646172892806312185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021274 n - A021268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028018.P17646172892806312185

namespace A028018

/-- `Δ[A021274(n)-A021268(n)]` -/
def P17646172892806312185.Spec : Prop :=
  ∀ n, P17646172892806312185.a n = A028018 n

end A028018

/-! ## A028018.P1505422057620408622

`2*A028016(n)-A028015(n)`
-/

namespace A028018.P1505422057620408622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028016 n - A028015 n

end

end A028018.P1505422057620408622

namespace A028018

/-- `2*A028016(n)-A028015(n)` -/
def P1505422057620408622.Spec : Prop :=
  ∀ n, P1505422057620408622.a n = A028018 n

end A028018

/-! ## A028018.P18371118580768081545

`A028007(n)+A028012(n)-A028006(n)`
-/

namespace A028018.P18371118580768081545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028007 n + (A028012 n - A028006 n)

end

end A028018.P18371118580768081545

namespace A028018

/-- `A028007(n)+A028012(n)-A028006(n)` -/
def P18371118580768081545.Spec : Prop :=
  ∀ n, P18371118580768081545.a n = A028018 n

end A028018

/-! ## A028018.P5562140213493174828

`2*A028019(n)-A028020(n)`
-/

namespace A028018.P5562140213493174828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028019 n - A028020 n

end

end A028018.P5562140213493174828

namespace A028018

/-- `2*A028019(n)-A028020(n)` -/
def P5562140213493174828.Spec : Prop :=
  ∀ n, P5562140213493174828.a n = A028018 n

end A028018

/-! ## A028018.P11732310077280231628

`2*A028020(n)-A028024(n)`
-/

namespace A028018.P11732310077280231628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028020 n - A028024 n

end

end A028018.P11732310077280231628

namespace A028018

/-- `2*A028020(n)-A028024(n)` -/
def P11732310077280231628.Spec : Prop :=
  ∀ n, P11732310077280231628.a n = A028018 n

end A028018

/-!
# A028019: Expansion of 1/((1-2x)(1-8x)(1-10x)(1-12x)).

The programs for A028019, the canonical program `A028019.P1757697459447434439` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028019 has offset 0).

The definition of A028019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028019.P1757697459447434439

`(6*12^(n+3)-15*10^(n+3)+10*8^(n+3)-2^(n+3))/480`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028019

/-- `(6*12^(n+3)-15*10^(n+3)+10*8^(n+3)-2^(n+3))/480` -/
def P1757697459447434439.Spec : Prop :=
  ∀ n, P1757697459447434439.a n = (A028019 n : ℚ)

end A028019

/-! ## A028019.P14339561167881306366

`2^n*A021744(n)`
-/

namespace A028019.P14339561167881306366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A021744 n

end

end A028019.P14339561167881306366

namespace A028019

/-- `2^n*A021744(n)` -/
def P14339561167881306366.Spec : Prop :=
  ∀ n, P14339561167881306366.a n = A028019 n

end A028019

/-! ## A028019.P17535959789990035952

`2^n*∑[A016103(n)]`
-/

namespace A028019.P17535959789990035952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028019.P17535959789990035952

namespace A028019

/-- `2^n*∑[A016103(n)]` -/
def P17535959789990035952.Spec : Prop :=
  ∀ n, P17535959789990035952.a n = A028019 n

end A028019

/-! ## A028019.P10698110048470142119

`A020980(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A028019.P10698110048470142119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020980 n + 2 * a (n - 1)

end

end A028019.P10698110048470142119

namespace A028019

/-- `A020980(n)+2*a(n-1)` -/
def P10698110048470142119.Spec : Prop :=
  ∀ n, P10698110048470142119.a n = A028019 n

end A028019

/-! ## A028019.P14486949010242985935

`A016326(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A028019.P14486949010242985935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016326 n + 8 * a (n - 1)

end

end A028019.P14486949010242985935

namespace A028019

/-- `A016326(n)+8*a(n-1)` -/
def P14486949010242985935.Spec : Prop :=
  ∀ n, P14486949010242985935.a n = A028019 n

end A028019

/-! ## A028019.P12181576394126959957

`2^n*∑[A245020(n+2)/2]`
-/

namespace A028019.P12181576394126959957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245020 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028019.P12181576394126959957

namespace A028019

/-- `2^n*∑[A245020(n+2)/2]` -/
def P12181576394126959957.Spec : Prop :=
  ∀ n, P12181576394126959957.a n = (A028019 n : ℚ)

end A028019

/-! ## A028019.P3098688607747915932

`∑[A016103(n)]*A000079(n)`
-/

namespace A028019.P3098688607747915932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A028019.P3098688607747915932

namespace A028019

/-- `∑[A016103(n)]*A000079(n)` -/
def P3098688607747915932.Spec : Prop :=
  ∀ n, P3098688607747915932.a n = A028019 n

end A028019

/-! ## A028019.P4164293075710992811

`∑[A016103(n)]*Δ[A000225(n)]`
-/

namespace A028019.P4164293075710992811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A028019.P4164293075710992811

namespace A028019

/-- `∑[A016103(n)]*Δ[A000225(n)]` -/
def P4164293075710992811.Spec : Prop :=
  ∀ n, P4164293075710992811.a n = A028019 n

end A028019

/-!
# A028020: Expansion of 1/((1-2x)(1-8x)(1-11x)(1-12x)).

The programs for A028020, there is no canonical definition to state claims against.
-/

/-! ## A028020.P893965491936789402

`a(n-1)+A020981(n)+a(n-1)` with `a(0)=1`
-/

namespace A028020.P893965491936789402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020981 n + a (n - 1))

end

end A028020.P893965491936789402

/-! ## A028020.P17902734271556235396

`Δ[A021279(n)-A021274(n)]`
-/

namespace A028020.P17902734271556235396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021279 n - A021274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028020.P17902734271556235396

/-! ## A028020.P15848969010522769161

`2*A028019(n)-A028018(n)`
-/

namespace A028020.P15848969010522769161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028019 n - A028018 n

end

end A028020.P15848969010522769161

/-! ## A028020.P12058875450760397170

`A028008(n)+A028014(n)-A028007(n)`
-/

namespace A028020.P12058875450760397170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028008 n + (A028014 n - A028007 n)

end

end A028020.P12058875450760397170

/-! ## A028020.P8554209805495311775

`A028016(n)+A028023(n)-A028017(n)`
-/

namespace A028020.P8554209805495311775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028016 n + (A028023 n - A028017 n)

end

end A028020.P8554209805495311775

/-! ## A028020.P1039513790552585665

`(A028024(n)+A028018(n))/2`
-/

namespace A028020.P1039513790552585665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028024 n + A028018 n : ℚ) / 2

end

end A028020.P1039513790552585665

/-!
# A028021: Expansion of 1/((1-2x)(1-9x)(1-10x)(1-11x)).

The programs for A028021, the canonical program `A028021.P13457334057264455486` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028021 has offset 0).

The definition of A028021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028021.P13457334057264455486

`(28*11^(n+3)-63*10^(n+3)+36*9^(n+3)-2^(n+3))/504`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028021

/-- `(28*11^(n+3)-63*10^(n+3)+36*9^(n+3)-2^(n+3))/504` -/
def P13457334057264455486.Spec : Prop :=
  ∀ n, P13457334057264455486.a n = (A028021 n : ℚ)

end A028021

/-! ## A028021.P14313229799173487280

`A020982(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A028021.P14313229799173487280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020982 n + 2 * a (n - 1)

end

end A028021.P14313229799173487280

namespace A028021

/-- `A020982(n)+2*a(n-1)` -/
def P14313229799173487280.Spec : Prop :=
  ∀ n, P14313229799173487280.a n = A028021 n

end A028021

/-! ## A028021.P17301044694954167191

`Δ[A021294(n)-A021284(n)]`
-/

namespace A028021.P17301044694954167191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021294 n - A021284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028021.P17301044694954167191

namespace A028021

/-- `Δ[A021294(n)-A021284(n)]` -/
def P17301044694954167191.Spec : Prop :=
  ∀ n, P17301044694954167191.a n = A028021 n

end A028021

/-! ## A028021.P1850578492489358203

`2*A028012(n)-A028009(n)`
-/

namespace A028021.P1850578492489358203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028012 n - A028009 n

end

end A028021.P1850578492489358203

namespace A028021

/-- `2*A028012(n)-A028009(n)` -/
def P1850578492489358203.Spec : Prop :=
  ∀ n, P1850578492489358203.a n = A028021 n

end A028021

/-! ## A028021.P7948311288490096958

`A016322(n+1)-A016321(n+1)`
-/

namespace A028021.P7948311288490096958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016322 (n + 1) - A016321 (n + 1)

end

end A028021.P7948311288490096958

namespace A028021

/-- `A016322(n+1)-A016321(n+1)` -/
def P7948311288490096958.Spec : Prop :=
  ∀ n, P7948311288490096958.a n = A028021 n

end A028021

/-! ## A028021.P6303029300358751749

`Δ[A021314(n)-A021294(n)]`
-/

namespace A028021.P6303029300358751749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021314 n - A021294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028021.P6303029300358751749

namespace A028021

/-- `Δ[A021314(n)-A021294(n)]` -/
def P6303029300358751749.Spec : Prop :=
  ∀ n, P6303029300358751749.a n = A028021 n

end A028021

/-! ## A028021.P14221775398198560611

`A016325(n+1)-A016322(n+1)`
-/

namespace A028021.P14221775398198560611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016325 (n + 1) - A016322 (n + 1)

end

end A028021.P14221775398198560611

namespace A028021

/-- `A016325(n+1)-A016322(n+1)` -/
def P14221775398198560611.Spec : Prop :=
  ∀ n, P14221775398198560611.a n = A028021 n

end A028021

/-! ## A028021.P857450532289376178

`2*A028022(n)-A028023(n)`
-/

namespace A028021.P857450532289376178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028022 n - A028023 n

end

end A028021.P857450532289376178

namespace A028021

/-- `2*A028022(n)-A028023(n)` -/
def P857450532289376178.Spec : Prop :=
  ∀ n, P857450532289376178.a n = A028021 n

end A028021

/-! ## A028021.P2810135904336771410

`A028022(n)+A028023(n)-A028024(n)`
-/

namespace A028021.P2810135904336771410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028022 n + (A028023 n - A028024 n)

end

end A028021.P2810135904336771410

namespace A028021

/-- `A028022(n)+A028023(n)-A028024(n)` -/
def P2810135904336771410.Spec : Prop :=
  ∀ n, P2810135904336771410.a n = A028021 n

end A028021

/-!
# A028022: Expansion of 1/((1-2x)(1-9x)(1-10x)(1-12x)).

The programs for A028022, there is no canonical definition to state claims against.
-/

/-! ## A028022.P14797865362122542602

`a(n-1)+A020983(n)+a(n-1)` with `a(0)=1`
-/

namespace A028022.P14797865362122542602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020983 n + a (n - 1))

end

end A028022.P14797865362122542602

/-! ## A028022.P2395498265148247599

`a(n-1)+A016326(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A028022.P2395498265148247599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016326 n + 8 * a (n - 1))

end

end A028022.P2395498265148247599

/-! ## A028022.P4735496980240442346

`2*A028017(n)-A028015(n)`
-/

namespace A028022.P4735496980240442346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028017 n - A028015 n

end

end A028022.P4735496980240442346

/-! ## A028022.P704090064623403948

`2*A028019(n)-A028017(n)`
-/

namespace A028022.P704090064623403948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028019 n - A028017 n

end

end A028022.P704090064623403948

/-! ## A028022.P8946593744968427719

`(A028023(n)+A028021(n))/2`
-/

namespace A028022.P8946593744968427719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028023 n + A028021 n : ℚ) / 2

end

end A028022.P8946593744968427719

/-! ## A028022.P16272365904107962435

`A028011(n)+A028013(n)-A028009(n)`
-/

namespace A028022.P16272365904107962435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028011 n + (A028013 n - A028009 n)

end

end A028022.P16272365904107962435

/-! ## A028022.P18187086377374889247

`A028018(n)+A028020(n)-A028017(n)`
-/

namespace A028022.P18187086377374889247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028018 n + (A028020 n - A028017 n)

end

end A028022.P18187086377374889247

/-! ## A028022.P5708183703069794409

`Δ[A021324(n)-A021304(n)]`
-/

namespace A028022.P5708183703069794409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021324 n - A021304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028022.P5708183703069794409

/-! ## A028022.P17085285780542874316

`2*A028023(n)-A028024(n)`
-/

namespace A028022.P17085285780542874316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028023 n - A028024 n

end

end A028022.P17085285780542874316

/-! ## A028022.P4037840404079224088

`A028021(n)+A028024(n)-A028023(n)`
-/

namespace A028022.P4037840404079224088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028021 n + (A028024 n - A028023 n)

end

end A028022.P4037840404079224088

/-!
# A028023: Expansion of 1/((1-2x)(1-9x)(1-11x)(1-12x)).

The programs for A028023, the canonical program `A028023.P8177061928968976377` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028023 has offset 0).

The definition of A028023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028023.P8177061928968976377

`(21*12^(n+3)-35*11^(n+3)+15*9^(n+3)-2^(n+3))/630`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028023

/-- `(21*12^(n+3)-35*11^(n+3)+15*9^(n+3)-2^(n+3))/630` -/
def P8177061928968976377.Spec : Prop :=
  ∀ n, P8177061928968976377.a n = (A028023 n : ℚ)

end A028023

/-! ## A028023.P10841146558757708372

`a(n-1)+A020984(n)+a(n-1)` with `a(0)=1`
-/

namespace A028023.P10841146558757708372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020984 n + a (n - 1))

end

end A028023.P10841146558757708372

namespace A028023

/-- `a(n-1)+A020984(n)+a(n-1)` -/
def P10841146558757708372.Spec : Prop :=
  ∀ n, P10841146558757708372.a n = A028023 n

end A028023

/-! ## A028023.P7307694448063002660

`2*A028004(n)-A028000(n)`
-/

namespace A028023.P7307694448063002660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028004 n - A028000 n

end

end A028023.P7307694448063002660

namespace A028023

/-- `2*A028004(n)-A028000(n)` -/
def P7307694448063002660.Spec : Prop :=
  ∀ n, P7307694448063002660.a n = A028023 n

end A028023

/-! ## A028023.P2177120562637677508

`2*A028022(n)-A028021(n)`
-/

namespace A028023.P2177120562637677508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028022 n - A028021 n

end

end A028023.P2177120562637677508

namespace A028023

/-- `2*A028022(n)-A028021(n)` -/
def P2177120562637677508.Spec : Prop :=
  ∀ n, P2177120562637677508.a n = A028023 n

end A028023

/-! ## A028023.P12404586478746743814

`A028014(n)+A028014(n)-A028011(n)`
-/

namespace A028023.P12404586478746743814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028014 n + (A028014 n - A028011 n)

end

end A028023.P12404586478746743814

namespace A028023

/-- `A028014(n)+A028014(n)-A028011(n)` -/
def P12404586478746743814.Spec : Prop :=
  ∀ n, P12404586478746743814.a n = A028023 n

end A028023

/-! ## A028023.P4874449408705567752

`Δ[A021304(n)-A021294(n)]`
-/

namespace A028023.P4874449408705567752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021304 n - A021294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028023.P4874449408705567752

namespace A028023

/-- `Δ[A021304(n)-A021294(n)]` -/
def P4874449408705567752.Spec : Prop :=
  ∀ n, P4874449408705567752.a n = A028023 n

end A028023

/-! ## A028023.P8673560259501615783

`2*A028014(n)-A028011(n)`
-/

namespace A028023.P8673560259501615783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028014 n - A028011 n

end

end A028023.P8673560259501615783

namespace A028023

/-- `2*A028014(n)-A028011(n)` -/
def P8673560259501615783.Spec : Prop :=
  ∀ n, P8673560259501615783.a n = A028023 n

end A028023

/-! ## A028023.P7317262768695245563

`A028021(n)+A028024(n)-A028022(n)`
-/

namespace A028023.P7317262768695245563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028021 n + (A028024 n - A028022 n)

end

end A028023.P7317262768695245563

namespace A028023

/-- `A028021(n)+A028024(n)-A028022(n)` -/
def P7317262768695245563.Spec : Prop :=
  ∀ n, P7317262768695245563.a n = A028023 n

end A028023

/-!
# A028024: Expansion of 1/((1-2x)(1-10x)(1-11x)(1-12x)).

The programs for A028024, the canonical program `A028024.P11342237976681919125` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028024 has offset 0).

The definition of A028024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028024.P11342237976681919125

`(36*12^(n+3)-80*11^(n+3)+45*10^(n+3)-2^(n+3))/720`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028024

/-- `(36*12^(n+3)-80*11^(n+3)+45*10^(n+3)-2^(n+3))/720` -/
def P11342237976681919125.Spec : Prop :=
  ∀ n, P11342237976681919125.a n = (A028024 n : ℚ)

end A028024

/-! ## A028024.P5272832580794478377

`a(n-1)+A021021(n)+a(n-1)` with `a(0)=1`
-/

namespace A028024.P5272832580794478377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A021021 n + a (n - 1))

end

end A028024.P5272832580794478377

namespace A028024

/-- `a(n-1)+A021021(n)+a(n-1)` -/
def P5272832580794478377.Spec : Prop :=
  ∀ n, P5272832580794478377.a n = A028024 n

end A028024

/-! ## A028024.P1714342499695190584

`Δ[A021324(n)-A021314(n)]`
-/

namespace A028024.P1714342499695190584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021324 n - A021314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028024.P1714342499695190584

namespace A028024

/-- `Δ[A021324(n)-A021314(n)]` -/
def P1714342499695190584.Spec : Prop :=
  ∀ n, P1714342499695190584.a n = A028024 n

end A028024

/-! ## A028024.P5177266462550471044

`Δ[A021334(n)-A021324(n)]`
-/

namespace A028024.P5177266462550471044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021334 n - A021324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028024.P5177266462550471044

namespace A028024

/-- `Δ[A021334(n)-A021324(n)]` -/
def P5177266462550471044.Spec : Prop :=
  ∀ n, P5177266462550471044.a n = A028024 n

end A028024

/-! ## A028024.P2177262628770722072

`2*A028020(n)-A028018(n)`
-/

namespace A028024.P2177262628770722072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028020 n - A028018 n

end

end A028024.P2177262628770722072

namespace A028024

/-- `2*A028020(n)-A028018(n)` -/
def P2177262628770722072.Spec : Prop :=
  ∀ n, P2177262628770722072.a n = A028024 n

end A028024

/-! ## A028024.P5404237409674194696

`2*A028023(n)-A028022(n)`
-/

namespace A028024.P5404237409674194696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028023 n - A028022 n

end

end A028024.P5404237409674194696

namespace A028024

/-- `2*A028023(n)-A028022(n)` -/
def P5404237409674194696.Spec : Prop :=
  ∀ n, P5404237409674194696.a n = A028024 n

end A028024

/-! ## A028024.P17583066363557032204

`A016326(n+1)-A016325(n+1)`
-/

namespace A028024.P17583066363557032204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016326 (n + 1) - A016325 (n + 1)

end

end A028024.P17583066363557032204

namespace A028024

/-- `A016326(n+1)-A016325(n+1)` -/
def P17583066363557032204.Spec : Prop :=
  ∀ n, P17583066363557032204.a n = A028024 n

end A028024

/-! ## A028024.P5315403760940770238

`A028022(n)+A028023(n)-A028021(n)`
-/

namespace A028024.P5315403760940770238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028022 n + (A028023 n - A028021 n)

end

end A028024.P5315403760940770238

namespace A028024

/-- `A028022(n)+A028023(n)-A028021(n)` -/
def P5315403760940770238.Spec : Prop :=
  ∀ n, P5315403760940770238.a n = A028024 n

end A028024

/-!
# A028025: Expansion of 1/((1-3x)*(1-4x)*(1-5x)*(1-6x)).

The programs for A028025, the canonical program `A028025.P6599344251456017264` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028025 has offset 0).

The definition of A028025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028025.P6599344251456017264

`A017269(n)+4*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028025

/-- `A017269(n)+4*a(n-1)` -/
def P6599344251456017264.Spec : Prop :=
  ∀ n, P6599344251456017264.a n = A028025 n

theorem P6599344251456017264.correct : P6599344251456017264.Spec := by
  intro n
  simp only [A028025]

end A028025

/-! ## A028025.P4409566276044538999

`Δ[A021354(n)-A021344(n)]`
-/

namespace A028025.P4409566276044538999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021354 n - A021344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028025.P4409566276044538999

namespace A028025

/-- `Δ[A021354(n)-A021344(n)]` -/
def P4409566276044538999.Spec : Prop :=
  ∀ n, P4409566276044538999.a n = A028025 n

end A028025

/-! ## A028025.P8104828262566261442

`Δ[A021414(n)-A021354(n)]`
-/

namespace A028025.P8104828262566261442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021414 n - A021354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028025.P8104828262566261442

namespace A028025

/-- `Δ[A021414(n)-A021354(n)]` -/
def P8104828262566261442.Spec : Prop :=
  ∀ n, P8104828262566261442.a n = A028025 n

end A028025

/-! ## A028025.P1078074901727598955

`2*A016103(n)-A016753(n)`
-/

namespace A028025.P1078074901727598955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016103 n - A016753 n

end

end A028025.P1078074901727598955

namespace A028025

/-- `2*A016103(n)-A016753(n)` -/
def P1078074901727598955.Spec : Prop :=
  ∀ n, P1078074901727598955.a n = A028025 n

end A028025

/-! ## A028025.P4238587591171373092

`A016765(n+1)-A016753(n+1)`
-/

namespace A028025.P4238587591171373092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016765 (n + 1) - A016753 (n + 1)

end

end A028025.P4238587591171373092

namespace A028025

/-- `A016765(n+1)-A016753(n+1)` -/
def P4238587591171373092.Spec : Prop :=
  ∀ n, P4238587591171373092.a n = A028025 n

end A028025

/-! ## A028025.P11658421277416922533

`(A126629(n+2)-A126628(n+2))/2`
-/

namespace A028025.P11658421277416922533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126629 (n + 2) - A126628 (n + 2) : ℚ) / 2

end

end A028025.P11658421277416922533

namespace A028025

/-- `(A126629(n+2)-A126628(n+2))/2` -/
def P11658421277416922533.Spec : Prop :=
  ∀ n, P11658421277416922533.a n = (A028025 n : ℚ)

end A028025

/-! ## A028025.P15777930931512715878

`(A126632(n+2)-A126631(n+2))/2`
-/

namespace A028025.P15777930931512715878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126632 (n + 2) - A126631 (n + 2) : ℚ) / 2

end

end A028025.P15777930931512715878

namespace A028025

/-- `(A126632(n+2)-A126631(n+2))/2` -/
def P15777930931512715878.Spec : Prop :=
  ∀ n, P15777930931512715878.a n = (A028025 n : ℚ)

end A028025

/-! ## A028025.P17868696396984235605

`2*A028026(n)-A028032(n)`
-/

namespace A028025.P17868696396984235605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028026 n - A028032 n

end

end A028025.P17868696396984235605

namespace A028025

/-- `2*A028026(n)-A028032(n)` -/
def P17868696396984235605.Spec : Prop :=
  ∀ n, P17868696396984235605.a n = A028025 n

end A028025

/-! ## A028025.P15835979014157947817

`A143495(A166136(n+2))`
-/

namespace A028025.P15835979014157947817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143495 (A166136 (n + 2)).toNat

end

end A028025.P15835979014157947817

namespace A028025

/-- `A143495(A166136(n+2))` -/
def P15835979014157947817.Spec : Prop :=
  ∀ n, P15835979014157947817.a n = A028025 n

end A028025

/-! ## A028025.P55294743618550854

`A143395(A167614(n+2))`
-/

namespace A028025.P55294743618550854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143395 (A167614 (n + 2)).toNat

end

end A028025.P55294743618550854

namespace A028025

/-- `A143395(A167614(n+2))` -/
def P55294743618550854.Spec : Prop :=
  ∀ n, P55294743618550854.a n = A028025 n

end A028025

/-!
# A028026: Expansion of 1/((1-3x)(1-4x)(1-5x)(1-7x)).

The programs for A028026, the canonical program `A028026.P17713287493122255422` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028026 has offset 0).

The definition of A028026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028026.P17713287493122255422

`(7^(n+3)-6*5^(n+3)+8*4^(n+3)-3^(n+4))/24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028026

/-- `(7^(n+3)-6*5^(n+3)+8*4^(n+3)-3^(n+4))/24` -/
def P17713287493122255422.Spec : Prop :=
  ∀ n, P17713287493122255422.a n = (A028026 n : ℚ)

end A028026

/-! ## A028026.P16274657561358519296

`Δ[A021424(n)-A021364(n)]`
-/

namespace A028026.P16274657561358519296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021424 n - A021364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028026.P16274657561358519296

namespace A028026

/-- `Δ[A021424(n)-A021364(n)]` -/
def P16274657561358519296.Spec : Prop :=
  ∀ n, P16274657561358519296.a n = A028026 n

end A028026

/-! ## A028026.P17353536663695620707

`Δ[A021754(n)-A021424(n)]`
-/

namespace A028026.P17353536663695620707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021754 n - A021424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028026.P17353536663695620707

namespace A028026

/-- `Δ[A021754(n)-A021424(n)]` -/
def P17353536663695620707.Spec : Prop :=
  ∀ n, P17353536663695620707.a n = A028026 n

end A028026

/-! ## A028026.P1941111086670008410

`2*A021424(n)-A021344(n)`
-/

namespace A028026.P1941111086670008410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021424 n - A021344 n

end

end A028026.P1941111086670008410

namespace A028026

/-- `2*A021424(n)-A021344(n)` -/
def P1941111086670008410.Spec : Prop :=
  ∀ n, P1941111086670008410.a n = A028026 n

end A028026

/-! ## A028026.P12217423901174945225

`2*A025959(n)-A025931(n)`
-/

namespace A028026.P12217423901174945225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025959 n - A025931 n

end

end A028026.P12217423901174945225

namespace A028026

/-- `2*A025959(n)-A025931(n)` -/
def P12217423901174945225.Spec : Prop :=
  ∀ n, P12217423901174945225.a n = A028026 n

end A028026

/-! ## A028026.P11185847642782439930

`2*A028032(n)-A028053(n)`
-/

namespace A028026.P11185847642782439930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028032 n - A028053 n

end

end A028026.P11185847642782439930

namespace A028026

/-- `2*A028032(n)-A028053(n)` -/
def P11185847642782439930.Spec : Prop :=
  ∀ n, P11185847642782439930.a n = A028026 n

end A028026

/-!
# A028027: Expansion of 1 / ((1 - 3*x)*(1 - 4*x)*(1 - 5*x)*(1 - 8*x)).

The programs for A028027, the canonical program `A028027.P12816828639631211538` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028027 has offset 0).

The definition of A028027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028027.P12816828639631211538

`(8^(n+3)-10*5^(n+3)+15*4^(n+3)-6*3^(n+3))/60`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028027

/-- `(8^(n+3)-10*5^(n+3)+15*4^(n+3)-6*3^(n+3))/60` -/
def P12816828639631211538.Spec : Prop :=
  ∀ n, P12816828639631211538.a n = (A028027 n : ℚ)

end A028027

/-! ## A028027.P146250855424217773

`A018250(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028027.P146250855424217773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018250 n + 3 * a (n - 1)

end

end A028027.P146250855424217773

namespace A028027

/-- `A018250(n)+3*a(n-1)` -/
def P146250855424217773.Spec : Prop :=
  ∀ n, P146250855424217773.a n = A028027 n

end A028027

/-! ## A028027.P11473384670073793526

`2*A028033(n)-A028054(n)`
-/

namespace A028027.P11473384670073793526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028033 n - A028054 n

end

end A028027.P11473384670073793526

namespace A028027

/-- `2*A028033(n)-A028054(n)` -/
def P11473384670073793526.Spec : Prop :=
  ∀ n, P11473384670073793526.a n = A028027 n

end A028027

/-! ## A028027.P18259949506500609170

`A021374(n)+A021434(n)-A021344(n)`
-/

namespace A028027.P18259949506500609170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021374 n + (A021434 n - A021344 n)

end

end A028027.P18259949506500609170

namespace A028027

/-- `A021374(n)+A021434(n)-A021344(n)` -/
def P18259949506500609170.Spec : Prop :=
  ∀ n, P18259949506500609170.a n = A028027 n

end A028027

/-! ## A028027.P6411042958552424959

`Δ[A021434(n)-A021374(n)]`
-/

namespace A028027.P6411042958552424959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021434 n - A021374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028027.P6411042958552424959

namespace A028027

/-- `Δ[A021434(n)-A021374(n)]` -/
def P6411042958552424959.Spec : Prop :=
  ∀ n, P6411042958552424959.a n = A028027 n

end A028027

/-! ## A028027.P2479233627676870326

`2*A028030(n)-A028045(n)`
-/

namespace A028027.P2479233627676870326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028030 n - A028045 n

end

end A028027.P2479233627676870326

namespace A028027

/-- `2*A028030(n)-A028045(n)` -/
def P2479233627676870326.Spec : Prop :=
  ∀ n, P2479233627676870326.a n = A028027 n

end A028027

/-!
# A028028: Expansion of 1/((1-3*x)*(1-4*x)*(1-5*x)*(1-9*x)).

The programs for A028028, the canonical program `A028028.P12018773882128858980` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028028 has offset 0).

The definition of A028028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028028.P12018773882128858980

`243/40*9^n-125/8*5^n+64/5*4^n-9/4*3^n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028028

/-- `243/40*9^n-125/8*5^n+64/5*4^n-9/4*3^n` -/
def P12018773882128858980.Spec : Prop :=
  ∀ n, P12018773882128858980.a n = (A028028 n : ℚ)

end A028028

/-! ## A028028.P14472866375101212500

`Δ[A021454(n)-A021379(n)]`
-/

namespace A028028.P14472866375101212500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021454 n - A021379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028028.P14472866375101212500

namespace A028028

/-- `Δ[A021454(n)-A021379(n)]` -/
def P14472866375101212500.Spec : Prop :=
  ∀ n, P14472866375101212500.a n = A028028 n

end A028028

/-! ## A028028.P9706357290374909579

`Δ[A021772(n)-A021454(n)]`
-/

namespace A028028.P9706357290374909579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021772 n - A021454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028028.P9706357290374909579

namespace A028028

/-- `Δ[A021772(n)-A021454(n)]` -/
def P9706357290374909579.Spec : Prop :=
  ∀ n, P9706357290374909579.a n = A028028 n

end A028028

/-!
# A028029: Expansion of 1/((1-3x)(1-4x)(1-5x)(1-10x)).

The programs for A028029, the canonical program `A028029.P5114941386363700503` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028029 has offset 0).

The definition of A028029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028029.P5114941386363700503

`(10^(n+3)-21*5^(n+3)+35*4^(n+3)-15*3^(n+3))/210`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028029

/-- `(10^(n+3)-21*5^(n+3)+35*4^(n+3)-15*3^(n+3))/210` -/
def P5114941386363700503.Spec : Prop :=
  ∀ n, P5114941386363700503.a n = (A028029 n : ℚ)

end A028029

/-! ## A028029.P16152363468150253938

`2*A025962(n)-A025934(n)`
-/

namespace A028029.P16152363468150253938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025962 n - A025934 n

end

end A028029.P16152363468150253938

namespace A028029

/-- `2*A025962(n)-A025934(n)` -/
def P16152363468150253938.Spec : Prop :=
  ∀ n, P16152363468150253938.a n = A028029 n

end A028029

/-! ## A028029.P281107005611170757

`A021049(n)+A021144(n)-A021074(n)`
-/

namespace A028029.P281107005611170757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021049 n + (A021144 n - A021074 n)

end

end A028029.P281107005611170757

namespace A028029

/-- `A021049(n)+A021144(n)-A021074(n)` -/
def P281107005611170757.Spec : Prop :=
  ∀ n, P281107005611170757.a n = A028029 n

end A028029

/-! ## A028029.P14680757188843747956

`Δ[A021464(n)-A021384(n)]`
-/

namespace A028029.P14680757188843747956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021464 n - A021384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028029.P14680757188843747956

namespace A028029

/-- `Δ[A021464(n)-A021384(n)]` -/
def P14680757188843747956.Spec : Prop :=
  ∀ n, P14680757188843747956.a n = A028029 n

end A028029

/-! ## A028029.P7452085948103576849

`Δ[A021774(n)-A021464(n)]`
-/

namespace A028029.P7452085948103576849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021774 n - A021464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028029.P7452085948103576849

namespace A028029

/-- `Δ[A021774(n)-A021464(n)]` -/
def P7452085948103576849.Spec : Prop :=
  ∀ n, P7452085948103576849.a n = A028029 n

end A028029

/-! ## A028029.P17144807246983291311

`A028033(n)+A028044(n)-A028056(n)`
-/

namespace A028029.P17144807246983291311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028033 n + (A028044 n - A028056 n)

end

end A028029.P17144807246983291311

namespace A028029

/-- `A028033(n)+A028044(n)-A028056(n)` -/
def P17144807246983291311.Spec : Prop :=
  ∀ n, P17144807246983291311.a n = A028029 n

end A028029

/-!
# A028030: Expansion of 1/((1-3x)(1-4x)(1-5x)(1-11x)).

The programs for A028030, the canonical program `A028030.P17354880496093594523` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028030 has offset 0).

The definition of A028030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028030.P17354880496093594523

`(11^(n+3)-28*5^(n+3)+48*4^(n+3)-21*3^(n+3))/336`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028030

/-- `(11^(n+3)-28*5^(n+3)+48*4^(n+3)-21*3^(n+3))/336` -/
def P17354880496093594523.Spec : Prop :=
  ∀ n, P17354880496093594523.a n = (A028030 n : ℚ)

end A028030

/-! ## A028030.P11029508177474973694

`2*A021784(n)-A021394(n)`
-/

namespace A028030.P11029508177474973694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021784 n - A021394 n

end

end A028030.P11029508177474973694

namespace A028030

/-- `2*A021784(n)-A021394(n)` -/
def P11029508177474973694.Spec : Prop :=
  ∀ n, P11029508177474973694.a n = A028030 n

end A028030

/-! ## A028030.P17723988067497163019

`2*A025963(n)-A025935(n)`
-/

namespace A028030.P17723988067497163019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025963 n - A025935 n

end

end A028030.P17723988067497163019

namespace A028030

/-- `2*A025963(n)-A025935(n)` -/
def P17723988067497163019.Spec : Prop :=
  ∀ n, P17723988067497163019.a n = A028030 n

end A028030

/-! ## A028030.P15043978158424466648

`2*A028036(n)-A028057(n)`
-/

namespace A028030.P15043978158424466648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028036 n - A028057 n

end

end A028030.P15043978158424466648

namespace A028030

/-- `2*A028036(n)-A028057(n)` -/
def P15043978158424466648.Spec : Prop :=
  ∀ n, P15043978158424466648.a n = A028030 n

end A028030

/-! ## A028030.P8310366075514814083

`A021764(n)+A021924(n)-A021394(n)`
-/

namespace A028030.P8310366075514814083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021764 n + (A021924 n - A021394 n)

end

end A028030.P8310366075514814083

namespace A028030

/-- `A021764(n)+A021924(n)-A021394(n)` -/
def P8310366075514814083.Spec : Prop :=
  ∀ n, P8310366075514814083.a n = A028030 n

end A028030

/-! ## A028030.P2759261559568320854

`A025935(n)+A025963(n)-A025928(n)`
-/

namespace A028030.P2759261559568320854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025935 n + (A025963 n - A025928 n)

end

end A028030.P2759261559568320854

namespace A028030

/-- `A025935(n)+A025963(n)-A025928(n)` -/
def P2759261559568320854.Spec : Prop :=
  ∀ n, P2759261559568320854.a n = A028030 n

end A028030

/-!
# A028031: Expansion of 1/((1-3x)(1-4x)(1-5x)(1-12x)).

The programs for A028031, the canonical program `A028031.P10857721197199582604` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028031 has offset 0).

The definition of A028031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028031.P10857721197199582604

`(12^(n+3)-36*5^(n+3)+63*4^(n+3)-28*3^(n+3))/504`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028031

/-- `(12^(n+3)-36*5^(n+3)+63*4^(n+3)-28*3^(n+3))/504` -/
def P10857721197199582604.Spec : Prop :=
  ∀ n, P10857721197199582604.a n = (A028031 n : ℚ)

end A028031

/-! ## A028031.P5058020317750146026

`A019041(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028031.P5058020317750146026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019041 n + 3 * a (n - 1)

end

end A028031.P5058020317750146026

namespace A028031

/-- `A019041(n)+3*a(n-1)` -/
def P5058020317750146026.Spec : Prop :=
  ∀ n, P5058020317750146026.a n = A028031 n

end A028031

/-! ## A028031.P8139413005861704337

`A016753(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A028031.P8139413005861704337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016753 n + 12 * a (n - 1)

end

end A028031.P8139413005861704337

namespace A028031

/-- `A016753(n)+12*a(n-1)` -/
def P8139413005861704337.Spec : Prop :=
  ∀ n, P8139413005861704337.a n = A028031 n

end A028031

/-! ## A028031.P14160392483506163026

`A021794(n)+A021794(n)-A021404(n)`
-/

namespace A028031.P14160392483506163026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021794 n + (A021794 n - A021404 n)

end

end A028031.P14160392483506163026

namespace A028031

/-- `A021794(n)+A021794(n)-A021404(n)` -/
def P14160392483506163026.Spec : Prop :=
  ∀ n, P14160392483506163026.a n = A028031 n

end A028031

/-! ## A028031.P3060964449140605964

`A025936(n)+A025964(n)-A025929(n)`
-/

namespace A028031.P3060964449140605964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025936 n + (A025964 n - A025929 n)

end

end A028031.P3060964449140605964

namespace A028031

/-- `A025936(n)+A025964(n)-A025929(n)` -/
def P3060964449140605964.Spec : Prop :=
  ∀ n, P3060964449140605964.a n = A028031 n

end A028031

/-! ## A028031.P18427609847133463811

`Δ[A021484(n)-A021404(n)]`
-/

namespace A028031.P18427609847133463811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021484 n - A021404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028031.P18427609847133463811

namespace A028031

/-- `Δ[A021484(n)-A021404(n)]` -/
def P18427609847133463811.Spec : Prop :=
  ∀ n, P18427609847133463811.a n = A028031 n

end A028031

/-! ## A028031.P4951486456387361463

`2*A021794(n)-A021404(n)`
-/

namespace A028031.P4951486456387361463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021794 n - A021404 n

end

end A028031.P4951486456387361463

namespace A028031

/-- `2*A021794(n)-A021404(n)` -/
def P4951486456387361463.Spec : Prop :=
  ∀ n, P4951486456387361463.a n = A028031 n

end A028031

/-! ## A028031.P11136220936353485415

`2*A025964(n)-A025936(n)`
-/

namespace A028031.P11136220936353485415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025964 n - A025936 n

end

end A028031.P11136220936353485415

namespace A028031

/-- `2*A025964(n)-A025936(n)` -/
def P11136220936353485415.Spec : Prop :=
  ∀ n, P11136220936353485415.a n = A028031 n

end A028031

/-!
# A028032: Expansion of 1/((1-3x)(1-4x)(1-6x)(1-7x)).

The programs for A028032, the canonical program `A028032.P17711119966446657567` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028032 has offset 0).

The definition of A028032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028032.P17711119966446657567

`(7^(n+3)-2*6^(n+3)+2*4^(n+3)-3^(n+3))/12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028032

/-- `(7^(n+3)-2*6^(n+3)+2*4^(n+3)-3^(n+3))/12` -/
def P17711119966446657567.Spec : Prop :=
  ∀ n, P17711119966446657567.a n = (A028032 n : ℚ)

end A028032

/-! ## A028032.P1185249201229276202

`a(n-1)+a(n-1)+A019316(n)+a(n-1)` with `a(0)=1`
-/

namespace A028032.P1185249201229276202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (A019316 n + a (n - 1)))

end

end A028032.P1185249201229276202

namespace A028032

/-- `a(n-1)+a(n-1)+A019316(n)+a(n-1)` -/
def P1185249201229276202.Spec : Prop :=
  ∀ n, P1185249201229276202.a n = A028032 n

end A028032

/-! ## A028032.P14472863431289528019

`Δ[A021364(n)-A021354(n)]`
-/

namespace A028032.P14472863431289528019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021364 n - A021354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028032.P14472863431289528019

namespace A028032

/-- `Δ[A021364(n)-A021354(n)]` -/
def P14472863431289528019.Spec : Prop :=
  ∀ n, P14472863431289528019.a n = A028032 n

end A028032

/-! ## A028032.P3454844260938731903

`2*A021494(n)-A021354(n)`
-/

namespace A028032.P3454844260938731903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021494 n - A021354 n

end

end A028032.P3454844260938731903

namespace A028032

/-- `2*A021494(n)-A021354(n)` -/
def P3454844260938731903.Spec : Prop :=
  ∀ n, P3454844260938731903.a n = A028032 n

end A028032

/-! ## A028032.P16248882976445785074

`2*A025965(n)-A025937(n)`
-/

namespace A028032.P16248882976445785074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025965 n - A025937 n

end

end A028032.P16248882976445785074

namespace A028032

/-- `2*A025965(n)-A025937(n)` -/
def P16248882976445785074.Spec : Prop :=
  ∀ n, P16248882976445785074.a n = A028032 n

end A028032

/-! ## A028032.P2878222889514438535

`2*A028026(n)-A028025(n)`
-/

namespace A028032.P2878222889514438535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028026 n - A028025 n

end

end A028032.P2878222889514438535

namespace A028032

/-- `2*A028026(n)-A028025(n)` -/
def P2878222889514438535.Spec : Prop :=
  ∀ n, P2878222889514438535.a n = A028032 n

end A028032

/-! ## A028032.P7106443310827658462

`Δ[A021804(n)-A021494(n)]`
-/

namespace A028032.P7106443310827658462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021804 n - A021494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028032.P7106443310827658462

namespace A028032

/-- `Δ[A021804(n)-A021494(n)]` -/
def P7106443310827658462.Spec : Prop :=
  ∀ n, P7106443310827658462.a n = A028032 n

end A028032

/-! ## A028032.P16096155447189836901

`2*A028035(n)-A028076(n)`
-/

namespace A028032.P16096155447189836901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028035 n - A028076 n

end

end A028032.P16096155447189836901

namespace A028032

/-- `2*A028035(n)-A028076(n)` -/
def P16096155447189836901.Spec : Prop :=
  ∀ n, P16096155447189836901.a n = A028032 n

end A028032

/-! ## A028032.P14357140253435288899

`2*A028036(n)-A028133(n)`
-/

namespace A028032.P14357140253435288899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028036 n - A028133 n

end

end A028032.P14357140253435288899

namespace A028032

/-- `2*A028036(n)-A028133(n)` -/
def P14357140253435288899.Spec : Prop :=
  ∀ n, P14357140253435288899.a n = A028032 n

end A028032

/-!
# A028033: Expansion of 1/((1-3x)(1-4x)(1-6x)(1-8x)).

The programs for A028033, the canonical program `A028033.P5326427776762067664` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028033 has offset 0).

The definition of A028033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028033.P5326427776762067664

`Δ[A016214(n)-A016222(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028033

/-- `Δ[A016214(n)-A016222(n)]` -/
def P5326427776762067664.Spec : Prop :=
  ∀ n, P5326427776762067664.a n = A028033 n

theorem P5326427776762067664.correct : P5326427776762067664.Spec := by
  intro n
  simp only [A028033]

end A028033

/-! ## A028033.P7342905289593050797

`(A028038(n)+A028032(n))/2`
-/

namespace A028033.P7342905289593050797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028038 n + A028032 n : ℚ) / 2

end

end A028033.P7342905289593050797

namespace A028033

/-- `(A028038(n)+A028032(n))/2` -/
def P7342905289593050797.Spec : Prop :=
  ∀ n, P7342905289593050797.a n = (A028033 n : ℚ)

end A028033

/-! ## A028033.P2572734842822734106

`2*A028054(n)-A028110(n)`
-/

namespace A028033.P2572734842822734106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028054 n - A028110 n

end

end A028033.P2572734842822734106

namespace A028033

/-- `2*A028054(n)-A028110(n)` -/
def P2572734842822734106.Spec : Prop :=
  ∀ n, P2572734842822734106.a n = A028033 n

end A028033

/-! ## A028033.P17974000375311839983

`A016140(n+1)-A016149(n+1)`
-/

namespace A028033.P17974000375311839983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016140 (n + 1) - A016149 (n + 1)

end

end A028033.P17974000375311839983

namespace A028033

/-- `A016140(n+1)-A016149(n+1)` -/
def P17974000375311839983.Spec : Prop :=
  ∀ n, P17974000375311839983.a n = A028033 n

end A028033

/-! ## A028033.P4132173133886480643

`Δ[A021814(n)-A021503(n)]`
-/

namespace A028033.P4132173133886480643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021814 n - A021503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028033.P4132173133886480643

namespace A028033

/-- `Δ[A021814(n)-A021503(n)]` -/
def P4132173133886480643.Spec : Prop :=
  ∀ n, P4132173133886480643.a n = A028033 n

end A028033

/-! ## A028033.P8330213316256738660

`2*A028035(n)-A028044(n)`
-/

namespace A028033.P8330213316256738660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028035 n - A028044 n

end

end A028033.P8330213316256738660

namespace A028033

/-- `2*A028035(n)-A028044(n)` -/
def P8330213316256738660.Spec : Prop :=
  ∀ n, P8330213316256738660.a n = A028033 n

end A028033

/-!
# A028034: Expansion of 1/((1-3x)(1-4x)(1-6x)(1-9x)).

The programs for A028034, the canonical program `A028034.P11537605159952484375` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028034 has offset 0).

The definition of A028034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028034.P11537605159952484375

`(9^(n+3)-5*6^(n+3)+9*4^(n+3)-5*3^(n+3))/90`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028034

/-- `(9^(n+3)-5*6^(n+3)+9*4^(n+3)-5*3^(n+3))/90` -/
def P11537605159952484375.Spec : Prop :=
  ∀ n, P11537605159952484375.a n = (A028034 n : ℚ)

end A028034

/-! ## A028034.P16534116035022150400

`A016765(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A028034.P16534116035022150400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016765 n + 9 * a (n - 1)

end

end A028034.P16534116035022150400

namespace A028034

/-- `A016765(n)+9*a(n-1)` -/
def P16534116035022150400.Spec : Prop :=
  ∀ n, P16534116035022150400.a n = A028034 n

end A028034

/-! ## A028034.P17416411224659340142

`2*A025967(n)-A025939(n)`
-/

namespace A028034.P17416411224659340142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025967 n - A025939 n

end

end A028034.P17416411224659340142

namespace A028034

/-- `2*A025967(n)-A025939(n)` -/
def P17416411224659340142.Spec : Prop :=
  ∀ n, P17416411224659340142.a n = A028034 n

end A028034

/-! ## A028034.P13495616616342729052

`2*A028055(n)-A028111(n)`
-/

namespace A028034.P13495616616342729052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028055 n - A028111 n

end

end A028034.P13495616616342729052

namespace A028034

/-- `2*A028055(n)-A028111(n)` -/
def P13495616616342729052.Spec : Prop :=
  ∀ n, P13495616616342729052.a n = A028034 n

end A028034

/-! ## A028034.P12584581359677216636

`A021379(n)+A021504(n)-A021354(n)`
-/

namespace A028034.P12584581359677216636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021379 n + (A021504 n - A021354 n)

end

end A028034.P12584581359677216636

namespace A028034

/-- `A021379(n)+A021504(n)-A021354(n)` -/
def P12584581359677216636.Spec : Prop :=
  ∀ n, P12584581359677216636.a n = A028034 n

end A028034

/-! ## A028034.P18107107572982223784

`Δ[A021824(n)-A021504(n)]`
-/

namespace A028034.P18107107572982223784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021824 n - A021504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028034.P18107107572982223784

namespace A028034

/-- `Δ[A021824(n)-A021504(n)]` -/
def P18107107572982223784.Spec : Prop :=
  ∀ n, P18107107572982223784.a n = A028034 n

end A028034

/-!
# A028035: Expansion of 1/((1-3x)(1-4x)(1-6x)(1-10x)).

The programs for A028035, the canonical program `A028035.P10814708552198430760` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028035 has offset 0).

The definition of A028035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028035.P10814708552198430760

`(10^(n+3)-7*6^(n+3)+14*4^(n+3)-8*3^(n+3))/168`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028035

/-- `(10^(n+3)-7*6^(n+3)+14*4^(n+3)-8*3^(n+3))/168` -/
def P10814708552198430760.Spec : Prop :=
  ∀ n, P10814708552198430760.a n = (A028035 n : ℚ)

end A028035

/-! ## A028035.P9123577667297382357

`2*A025940(n)-A025927(n)`
-/

namespace A028035.P9123577667297382357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025940 n - A025927 n

end

end A028035.P9123577667297382357

namespace A028035

/-- `2*A025940(n)-A025927(n)` -/
def P9123577667297382357.Spec : Prop :=
  ∀ n, P9123577667297382357.a n = A028035 n

end A028035

/-! ## A028035.P17949683109734532223

`6*a(n-1)+A016981(n)+A000007(n)` with `a(0)=1`
-/

namespace A028035.P17949683109734532223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + (A016981 n + A000007 n)

end

end A028035.P17949683109734532223

namespace A028035

/-- `6*a(n-1)+A016981(n)+A000007(n)` -/
def P17949683109734532223.Spec : Prop :=
  ∀ n, P17949683109734532223.a n = A028035 n

end A028035

/-! ## A028035.P10457770057667564411

`A025938(n)+A025949(n)-A025927(n)`
-/

namespace A028035.P10457770057667564411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025938 n + (A025949 n - A025927 n)

end

end A028035.P10457770057667564411

namespace A028035

/-- `A025938(n)+A025949(n)-A025927(n)` -/
def P10457770057667564411.Spec : Prop :=
  ∀ n, P10457770057667564411.a n = A028035 n

end A028035

/-! ## A028035.P3014339035334007232

`A025945(n)+A025965(n)-A025937(n)`
-/

namespace A028035.P3014339035334007232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025945 n + (A025965 n - A025937 n)

end

end A028035.P3014339035334007232

namespace A028035

/-- `A025945(n)+A025965(n)-A025937(n)` -/
def P3014339035334007232.Spec : Prop :=
  ∀ n, P3014339035334007232.a n = A028035 n

end A028035

/-! ## A028035.P8767261608311675282

`Δ[A021829(n)-A021514(n)]`
-/

namespace A028035.P8767261608311675282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021829 n - A021514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028035.P8767261608311675282

namespace A028035

/-- `Δ[A021829(n)-A021514(n)]` -/
def P8767261608311675282.Spec : Prop :=
  ∀ n, P8767261608311675282.a n = A028035 n

end A028035

/-!
# A028036: Expansion of 1/((1-3x)(1-4x)(1-6x)(1-11x)).

The programs for A028036, there is no canonical definition to state claims against.
-/

/-! ## A028036.P16826272358594833466

`2*A021394(n)-A021354(n)`
-/

namespace A028036.P16826272358594833466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021394 n - A021354 n

end

end A028036.P16826272358594833466

/-! ## A028036.P2429065691036388304

`2*A025941(n)-A025928(n)`
-/

namespace A028036.P2429065691036388304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025941 n - A025928 n

end

end A028036.P2429065691036388304

/-! ## A028036.P2493208407058270765

`2*A025969(n)-A025941(n)`
-/

namespace A028036.P2493208407058270765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025969 n - A025941 n

end

end A028036.P2493208407058270765

/-! ## A028036.P6870864129004378537

`(A028133(n)+A028032(n))/2`
-/

namespace A028036.P6870864129004378537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028133 n + A028032 n : ℚ) / 2

end

end A028036.P6870864129004378537

/-! ## A028036.P1022960984553458881

`2*A028048(n)-A028140(n)`
-/

namespace A028036.P1022960984553458881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028048 n - A028140 n

end

end A028036.P1022960984553458881

/-!
# A028037: Expansion of 1/((1-3x)(1-4x)(1-6x)(1-12x)).

The programs for A028037, the canonical program `A028037.P4655326577807636979` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028037 has offset 0).

The definition of A028037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028037.P4655326577807636979

`(12^(n+3)-12*6^(n+3)+27*4^(n+3)-16*3^(n+3))/432`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028037

/-- `(12^(n+3)-12*6^(n+3)+27*4^(n+3)-16*3^(n+3))/432` -/
def P4655326577807636979.Spec : Prop :=
  ∀ n, P4655326577807636979.a n = (A028037 n : ℚ)

end A028037

/-! ## A028037.P15230669752807564445

`A025942(n)+A025942(n)-A025929(n)`
-/

namespace A028037.P15230669752807564445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025942 n + (A025942 n - A025929 n)

end

end A028037.P15230669752807564445

namespace A028037

/-- `A025942(n)+A025942(n)-A025929(n)` -/
def P15230669752807564445.Spec : Prop :=
  ∀ n, P15230669752807564445.a n = A028037 n

end A028037

/-! ## A028037.P12189764138047667522

`A025970(n)+A025970(n)-A025942(n)`
-/

namespace A028037.P12189764138047667522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025970 n + (A025970 n - A025942 n)

end

end A028037.P12189764138047667522

namespace A028037

/-- `A025970(n)+A025970(n)-A025942(n)` -/
def P12189764138047667522.Spec : Prop :=
  ∀ n, P12189764138047667522.a n = A028037 n

end A028037

/-! ## A028037.P4895261585617387818

`2*A025942(n)-A025929(n)`
-/

namespace A028037.P4895261585617387818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025942 n - A025929 n

end

end A028037.P4895261585617387818

namespace A028037

/-- `2*A025942(n)-A025929(n)` -/
def P4895261585617387818.Spec : Prop :=
  ∀ n, P4895261585617387818.a n = A028037 n

end A028037

/-! ## A028037.P8683872574533507710

`2*A025970(n)-A025942(n)`
-/

namespace A028037.P8683872574533507710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025970 n - A025942 n

end

end A028037.P8683872574533507710

namespace A028037

/-- `2*A025970(n)-A025942(n)` -/
def P8683872574533507710.Spec : Prop :=
  ∀ n, P8683872574533507710.a n = A028037 n

end A028037

/-! ## A028037.P8404124849006426289

`floor(A001241(n+1)/A000079(n))`
-/

namespace A028037.P8404124849006426289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001241 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A028037.P8404124849006426289

namespace A028037

/-- `floor(A001241(n+1)/A000079(n))` -/
def P8404124849006426289.Spec : Prop :=
  ∀ n, P8404124849006426289.a n = A028037 n

end A028037

/-!
# A028038: Expansion of 1/((1-3x)(1-4x)(1-7x)(1-8x)).

The programs for A028038, the canonical program `A028038.P13657263197382989896` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028038 has offset 0).

The definition of A028038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028038.P13657263197382989896

`(3*8^(n+3)-5*7^(n+3)+5*4^(n+3)-3^(n+4))/60`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028038

/-- `(3*8^(n+3)-5*7^(n+3)+5*4^(n+3)-3^(n+4))/60` -/
def P13657263197382989896.Spec : Prop :=
  ∀ n, P13657263197382989896.a n = (A028038 n : ℚ)

end A028038

/-! ## A028038.P6484746096855016890

`Δ[A021374(n)-A021364(n)]`
-/

namespace A028038.P6484746096855016890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021374 n - A021364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028038.P6484746096855016890

namespace A028038

/-- `Δ[A021374(n)-A021364(n)]` -/
def P6484746096855016890.Spec : Prop :=
  ∀ n, P6484746096855016890.a n = A028038 n

end A028038

/-! ## A028038.P13849622640078596868

`2*A021544(n)-A021374(n)`
-/

namespace A028038.P13849622640078596868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021544 n - A021374 n

end

end A028038.P13849622640078596868

namespace A028038

/-- `2*A021544(n)-A021374(n)` -/
def P13849622640078596868.Spec : Prop :=
  ∀ n, P13849622640078596868.a n = A028038 n

end A028038

/-! ## A028038.P5742907955679434433

`2*A028033(n)-A028032(n)`
-/

namespace A028038.P5742907955679434433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028033 n - A028032 n

end

end A028038.P5742907955679434433

namespace A028038

/-- `2*A028033(n)-A028032(n)` -/
def P5742907955679434433.Spec : Prop :=
  ∀ n, P5742907955679434433.a n = A028038 n

end A028038

/-! ## A028038.P7933045532318587409

`Δ[A021854(n)-A021544(n)]`
-/

namespace A028038.P7933045532318587409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021854 n - A021544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028038.P7933045532318587409

namespace A028038

/-- `Δ[A021854(n)-A021544(n)]` -/
def P7933045532318587409.Spec : Prop :=
  ∀ n, P7933045532318587409.a n = A028038 n

end A028038

/-!
# A028039: Expansion of 1/((1-3x)(1-4x)(1-7x)(1-9x)).

The programs for A028039, the canonical program `A028039.P14687410652055840267` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028039 has offset 0).

The definition of A028039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028039.P14687410652055840267

`A019613(n)+3*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028039

/-- `A019613(n)+3*a(n-1)` -/
def P14687410652055840267.Spec : Prop :=
  ∀ n, P14687410652055840267.a n = A028039 n

theorem P14687410652055840267.correct : P14687410652055840267.Spec := by
  intro n
  simp only [A028039]

end A028039

/-! ## A028039.P8438472682461170408

`2*A021594(n)-A021379(n)`
-/

namespace A028039.P8438472682461170408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021594 n - A021379 n

end

end A028039.P8438472682461170408

namespace A028039

/-- `2*A021594(n)-A021379(n)` -/
def P8438472682461170408.Spec : Prop :=
  ∀ n, P8438472682461170408.a n = A028039 n

end A028039

/-! ## A028039.P10327074616939028992

`2*A021824(n)-A021494(n)`
-/

namespace A028039.P10327074616939028992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021824 n - A021494 n

end

end A028039.P10327074616939028992

namespace A028039

/-- `2*A021824(n)-A021494(n)` -/
def P10327074616939028992.Spec : Prop :=
  ∀ n, P10327074616939028992.a n = A028039 n

end A028039

/-! ## A028039.P3508643305214220809

`2*A028028(n)-A028026(n)`
-/

namespace A028039.P3508643305214220809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028028 n - A028026 n

end

end A028039.P3508643305214220809

namespace A028039

/-- `2*A028028(n)-A028026(n)` -/
def P3508643305214220809.Spec : Prop :=
  ∀ n, P3508643305214220809.a n = A028039 n

end A028039

/-! ## A028039.P12387512025124477494

`A021544(n)+A021634(n)-A021379(n)`
-/

namespace A028039.P12387512025124477494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021544 n + (A021634 n - A021379 n)

end

end A028039.P12387512025124477494

namespace A028039

/-- `A021544(n)+A021634(n)-A021379(n)` -/
def P12387512025124477494.Spec : Prop :=
  ∀ n, P12387512025124477494.a n = A028039 n

end A028039

/-! ## A028039.P14264068034891020209

`Δ[A021864(n)-A021594(n)]`
-/

namespace A028039.P14264068034891020209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021864 n - A021594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028039.P14264068034891020209

namespace A028039

/-- `Δ[A021864(n)-A021594(n)]` -/
def P14264068034891020209.Spec : Prop :=
  ∀ n, P14264068034891020209.a n = A028039 n

end A028039

/-! ## A028039.P10930868563889655949

`2*A028041(n)-A028048(n)`
-/

namespace A028039.P10930868563889655949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028041 n - A028048 n

end

end A028039.P10930868563889655949

namespace A028039

/-- `2*A028041(n)-A028048(n)` -/
def P10930868563889655949.Spec : Prop :=
  ∀ n, P10930868563889655949.a n = A028039 n

end A028039

/-!
# A028040: Expansion of g.f. 1/((1-3*x)*(1-4*x)*(1-7*x)*(1-10*x)).

The programs for A028040, the canonical program `A028040.P7225720076472788256` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028040 has offset 0).

The definition of A028040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028040.P7225720076472788256

`(2*10^(n+3)-7^(n+4)+14*4^(n+3)-3^(n+5))/252`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028040

/-- `(2*10^(n+3)-7^(n+4)+14*4^(n+3)-3^(n+5))/252` -/
def P7225720076472788256.Spec : Prop :=
  ∀ n, P7225720076472788256.a n = (A028040 n : ℚ)

end A028040

/-! ## A028040.P17164634964483329201

`A019618(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028040.P17164634964483329201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019618 n + 3 * a (n - 1)

end

end A028040.P17164634964483329201

namespace A028040

/-- `A019618(n)+3*a(n-1)` -/
def P17164634964483329201.Spec : Prop :=
  ∀ n, P17164634964483329201.a n = A028040 n

end A028040

/-! ## A028040.P4326054951366703539

`A021384(n)+A021604(n)-A021364(n)`
-/

namespace A028040.P4326054951366703539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021384 n + (A021604 n - A021364 n)

end

end A028040.P4326054951366703539

namespace A028040

/-- `A021384(n)+A021604(n)-A021364(n)` -/
def P4326054951366703539.Spec : Prop :=
  ∀ n, P4326054951366703539.a n = A028040 n

end A028040

/-! ## A028040.P3329997752249992678

`A025973(n)+A025973(n)-A025945(n)`
-/

namespace A028040.P3329997752249992678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025973 n + (A025973 n - A025945 n)

end

end A028040.P3329997752249992678

namespace A028040

/-- `A025973(n)+A025973(n)-A025945(n)` -/
def P3329997752249992678.Spec : Prop :=
  ∀ n, P3329997752249992678.a n = A028040 n

end A028040

/-! ## A028040.P8249460666237550071

`Δ[A021874(n)-A021604(n)]`
-/

namespace A028040.P8249460666237550071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021874 n - A021604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028040.P8249460666237550071

namespace A028040

/-- `Δ[A021874(n)-A021604(n)]` -/
def P8249460666237550071.Spec : Prop :=
  ∀ n, P8249460666237550071.a n = A028040 n

end A028040

/-! ## A028040.P13982901007407139795

`2*A021604(n)-A021384(n)`
-/

namespace A028040.P13982901007407139795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021604 n - A021384 n

end

end A028040.P13982901007407139795

namespace A028040

/-- `2*A021604(n)-A021384(n)` -/
def P13982901007407139795.Spec : Prop :=
  ∀ n, P13982901007407139795.a n = A028040 n

end A028040

/-! ## A028040.P1229831793717404834

`2*A025973(n)-A025945(n)`
-/

namespace A028040.P1229831793717404834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025973 n - A025945 n

end

end A028040.P1229831793717404834

namespace A028040

/-- `2*A025973(n)-A025945(n)` -/
def P1229831793717404834.Spec : Prop :=
  ∀ n, P1229831793717404834.a n = A028040 n

end A028040

/-!
# A028041: Expansion of 1/((1-3x)(1-4x)(1-7x)(1-11x)).

The programs for A028041, there is no canonical definition to state claims against.
-/

/-! ## A028041.P15319614732530033567

`A019623(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028041.P15319614732530033567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019623 n + 3 * a (n - 1)

end

end A028041.P15319614732530033567

/-! ## A028041.P13002746362273285185

`2*A021614(n)-A021394(n)`
-/

namespace A028041.P13002746362273285185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021614 n - A021394 n

end

end A028041.P13002746362273285185

/-! ## A028041.P13916097165844125261

`2*A025974(n)-A025946(n)`
-/

namespace A028041.P13916097165844125261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025974 n - A025946 n

end

end A028041.P13916097165844125261

/-! ## A028041.P94169101782504700

`A021474(n)+A021784(n)-A021424(n)`
-/

namespace A028041.P94169101782504700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021474 n + (A021784 n - A021424 n)

end

end A028041.P94169101782504700

/-! ## A028041.P12476960731225269291

`A021594(n)+A021694(n)-A021394(n)`
-/

namespace A028041.P12476960731225269291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021594 n + (A021694 n - A021394 n)

end

end A028041.P12476960731225269291

/-! ## A028041.P16698652451815451333

`(A028048(n)+A028039(n))/2`
-/

namespace A028041.P16698652451815451333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028048 n + A028039 n : ℚ) / 2

end

end A028041.P16698652451815451333

/-!
# A028042: Expansion of 1/((1-3x)(1-4x)(1-7x)(1-12x)).

The programs for A028042, the canonical program `A028042.P12878343662682153614` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028042 has offset 0).

The definition of A028042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028042.P12878343662682153614

`(12^(n+3)-6*7^(n+3)+15*4^(n+3)-10*3^(n+3))/360`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028042

/-- `(12^(n+3)-6*7^(n+3)+15*4^(n+3)-10*3^(n+3))/360` -/
def P12878343662682153614.Spec : Prop :=
  ∀ n, P12878343662682153614.a n = (A028042 n : ℚ)

end A028042

/-! ## A028042.P7279198666780545465

`A021629(n)+A021629(n)-A021404(n)`
-/

namespace A028042.P7279198666780545465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021629 n + (A021629 n - A021404 n)

end

end A028042.P7279198666780545465

namespace A028042

/-- `A021629(n)+A021629(n)-A021404(n)` -/
def P7279198666780545465.Spec : Prop :=
  ∀ n, P7279198666780545465.a n = A028042 n

end A028042

/-! ## A028042.P1893143644192325349

`A021484(n)+A022456(n)-A021404(n)`
-/

namespace A028042.P1893143644192325349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021484 n + (A022456 n - A021404 n)

end

end A028042.P1893143644192325349

namespace A028042

/-- `A021484(n)+A022456(n)-A021404(n)` -/
def P1893143644192325349.Spec : Prop :=
  ∀ n, P1893143644192325349.a n = A028042 n

end A028042

/-! ## A028042.P3769098631034940954

`A021794(n)+A022456(n)-A021484(n)`
-/

namespace A028042.P3769098631034940954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021794 n + (A022456 n - A021484 n)

end

end A028042.P3769098631034940954

namespace A028042

/-- `A021794(n)+A022456(n)-A021484(n)` -/
def P3769098631034940954.Spec : Prop :=
  ∀ n, P3769098631034940954.a n = A028042 n

end A028042

/-! ## A028042.P15486034649089977769

`A025975(n)+A025975(n)-A025947(n)`
-/

namespace A028042.P15486034649089977769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025975 n + (A025975 n - A025947 n)

end

end A028042.P15486034649089977769

namespace A028042

/-- `A025975(n)+A025975(n)-A025947(n)` -/
def P15486034649089977769.Spec : Prop :=
  ∀ n, P15486034649089977769.a n = A028042 n

end A028042

/-! ## A028042.P11002843079323115666

`Δ[A021894(n)-A021629(n)]`
-/

namespace A028042.P11002843079323115666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021894 n - A021629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028042.P11002843079323115666

namespace A028042

/-- `Δ[A021894(n)-A021629(n)]` -/
def P11002843079323115666.Spec : Prop :=
  ∀ n, P11002843079323115666.a n = A028042 n

end A028042

/-! ## A028042.P8483662636434079236

`2*A021629(n)-A021404(n)`
-/

namespace A028042.P8483662636434079236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021629 n - A021404 n

end

end A028042.P8483662636434079236

namespace A028042

/-- `2*A021629(n)-A021404(n)` -/
def P8483662636434079236.Spec : Prop :=
  ∀ n, P8483662636434079236.a n = A028042 n

end A028042

/-! ## A028042.P7399448421026332198

`2*A025975(n)-A025947(n)`
-/

namespace A028042.P7399448421026332198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025975 n - A025947 n

end

end A028042.P7399448421026332198

namespace A028042

/-- `2*A025975(n)-A025947(n)` -/
def P7399448421026332198.Spec : Prop :=
  ∀ n, P7399448421026332198.a n = A028042 n

end A028042

/-! ## A028042.P18302319815624445787

`2*A028052(n)-A028154(n)`
-/

namespace A028042.P18302319815624445787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028052 n - A028154 n

end

end A028042.P18302319815624445787

namespace A028042

/-- `2*A028052(n)-A028154(n)` -/
def P18302319815624445787.Spec : Prop :=
  ∀ n, P18302319815624445787.a n = A028042 n

end A028042

/-!
# A028043: Expansion of 1/((1-3x)(1-4x)(1-8x)(1-9x)).

The programs for A028043, the canonical program `A028043.P10306104810134960044` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028043 has offset 0).

The definition of A028043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028043.P10306104810134960044

`A018056(n)+4*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028043

/-- `A018056(n)+4*a(n-1)` -/
def P10306104810134960044.Spec : Prop :=
  ∀ n, P10306104810134960044.a n = A028043 n

theorem P10306104810134960044.correct : P10306104810134960044.Spec := by
  intro n
  simp only [A028043]

end A028043

/-! ## A028043.P15367844163344072859

`Δ[A021379(n)-A021374(n)]`
-/

namespace A028043.P15367844163344072859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021379 n - A021374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028043.P15367844163344072859

namespace A028043

/-- `Δ[A021379(n)-A021374(n)]` -/
def P15367844163344072859.Spec : Prop :=
  ∀ n, P15367844163344072859.a n = A028043 n

end A028043

/-! ## A028043.P2490897181067167042

`2*A028039(n)-A028038(n)`
-/

namespace A028043.P2490897181067167042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028039 n - A028038 n

end

end A028043.P2490897181067167042

namespace A028043

/-- `2*A028039(n)-A028038(n)` -/
def P2490897181067167042.Spec : Prop :=
  ∀ n, P2490897181067167042.a n = A028043 n

end A028043

/-! ## A028043.P14611381361901950424

`Δ[A021904(n)-A021634(n)]`
-/

namespace A028043.P14611381361901950424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021904 n - A021634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028043.P14611381361901950424

namespace A028043

/-- `Δ[A021904(n)-A021634(n)]` -/
def P14611381361901950424.Spec : Prop :=
  ∀ n, P14611381361901950424.a n = A028043 n

end A028043

/-! ## A028043.P2306558069324392244

`2*A028044(n)-A028047(n)`
-/

namespace A028043.P2306558069324392244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028044 n - A028047 n

end

end A028043.P2306558069324392244

namespace A028043

/-- `2*A028044(n)-A028047(n)` -/
def P2306558069324392244.Spec : Prop :=
  ∀ n, P2306558069324392244.a n = A028043 n

end A028043

/-!
# A028044: Expansion of 1/((1-3x)(1-4x)(1-8x)(1-10x)).

The programs for A028044, the canonical program `A028044.P9657594243599804500` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028044 has offset 0).

The definition of A028044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028044.P9657594243599804500

`(10^(n+4)-21*8^(n+3)+35*4^(n+3)-8*3^(n+4))/840`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028044

/-- `(10^(n+4)-21*8^(n+3)+35*4^(n+3)-8*3^(n+4))/840` -/
def P9657594243599804500.Spec : Prop :=
  ∀ n, P9657594243599804500.a n = (A028044 n : ℚ)

end A028044

/-! ## A028044.P8828582290309710074

`Δ[A021914(n)-A021644(n)]`
-/

namespace A028044.P8828582290309710074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021914 n - A021644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028044.P8828582290309710074

namespace A028044

/-- `Δ[A021914(n)-A021644(n)]` -/
def P8828582290309710074.Spec : Prop :=
  ∀ n, P8828582290309710074.a n = A028044 n

end A028044

/-! ## A028044.P11589544656564866497

`2*A025977(n)-A025949(n)`
-/

namespace A028044.P11589544656564866497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025977 n - A025949 n

end

end A028044.P11589544656564866497

namespace A028044

/-- `2*A025977(n)-A025949(n)` -/
def P11589544656564866497.Spec : Prop :=
  ∀ n, P11589544656564866497.a n = A028044 n

end A028044

/-! ## A028044.P12168794663601817540

`2*A028035(n)-A028033(n)`
-/

namespace A028044.P12168794663601817540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028035 n - A028033 n

end

end A028044.P12168794663601817540

namespace A028044

/-- `2*A028035(n)-A028033(n)` -/
def P12168794663601817540.Spec : Prop :=
  ∀ n, P12168794663601817540.a n = A028044 n

end A028044

/-! ## A028044.P10720226333060704692

`2*A028065(n)-A028121(n)`
-/

namespace A028044.P10720226333060704692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028065 n - A028121 n

end

end A028044.P10720226333060704692

namespace A028044

/-- `2*A028065(n)-A028121(n)` -/
def P10720226333060704692.Spec : Prop :=
  ∀ n, P10720226333060704692.a n = A028044 n

end A028044

/-!
# A028045: Expansion of 1/((1-3x)(1-4x)(1-8x)(1-11x)).

The programs for A028045, there is no canonical definition to state claims against.
-/

/-! ## A028045.P14418314250161393696

`2*A028030(n)-A028027(n)`
-/

namespace A028045.P14418314250161393696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028030 n - A028027 n

end

end A028045.P14418314250161393696

/-! ## A028045.P6025224402144509625

`A021394(n)+A021664(n)-A021374(n)`
-/

namespace A028045.P6025224402144509625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021394 n + (A021664 n - A021374 n)

end

end A028045.P6025224402144509625

/-! ## A028045.P4289014234801148355

`A025941(n)+A025969(n)-A025938(n)`
-/

namespace A028045.P4289014234801148355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025941 n + (A025969 n - A025938 n)

end

end A028045.P4289014234801148355

/-! ## A028045.P13610890639071947120

`A028066(n)+A028066(n)-A028122(n)`
-/

namespace A028045.P13610890639071947120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028066 n + (A028066 n - A028122 n)

end

end A028045.P13610890639071947120

/-! ## A028045.P17845009680530296306

`Δ[A021924(n)-A021664(n)]`
-/

namespace A028045.P17845009680530296306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021924 n - A021664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028045.P17845009680530296306

/-! ## A028045.P8164586119208297195

`2*A028066(n)-A028122(n)`
-/

namespace A028045.P8164586119208297195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028066 n - A028122 n

end

end A028045.P8164586119208297195

/-!
# A028046: Expansion of 1/((1-3x)(1-4x)(1-8x)(1-12x)).

The programs for A028046, there is no canonical definition to state claims against.
-/

/-! ## A028046.P16636748845196534421

`A019677(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028046.P16636748845196534421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019677 n + 3 * a (n - 1)

end

end A028046.P16636748845196534421

/-! ## A028046.P4265040207840576742

`Δ[A021944(n)-A021674(n)]`
-/

namespace A028046.P4265040207840576742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021944 n - A021674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028046.P4265040207840576742

/-! ## A028046.P3179829745349894646

`(A028051(n)+A028044(n))/2`
-/

namespace A028046.P3179829745349894646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028051 n + A028044 n : ℚ) / 2

end

end A028046.P3179829745349894646

/-! ## A028046.P8597517184395786465

`2*A028067(n)-A028123(n)`
-/

namespace A028046.P8597517184395786465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028067 n - A028123 n

end

end A028046.P8597517184395786465

/-! ## A028046.P5663126327211357595

`A028065(n)+A028072(n)-A028123(n)`
-/

namespace A028046.P5663126327211357595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028065 n + (A028072 n - A028123 n)

end

end A028046.P5663126327211357595

/-! ## A028046.P11394056283324377713

`2*A028067(n)-(A028128(n)+A028121(n))/2`
-/

namespace A028046.P11394056283324377713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A028067 n : ℚ) - (A028128 n + A028121 n : ℚ) / 2

end

end A028046.P11394056283324377713

/-! ## A028046.P6479048295200900824

`2*A028067(n)-(A021794(n)+A021944(n)-A021764(n))`
-/

namespace A028046.P6479048295200900824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028067 n - (A021794 n + (A021944 n - A021764 n))

end

end A028046.P6479048295200900824

/-!
# A028047: Expansion of 1/((1-3x)(1-4x)(1-9x)(1-10x)).

The programs for A028047, there is no canonical definition to state claims against.
-/

/-! ## A028047.P14570020975191154985

`Δ[A021384(n)-A021379(n)]`
-/

namespace A028047.P14570020975191154985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021384 n - A021379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028047.P14570020975191154985

/-! ## A028047.P9049654690725943000

`2*A025980(n)-A025952(n)`
-/

namespace A028047.P9049654690725943000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025980 n - A025952 n

end

end A028047.P9049654690725943000

/-! ## A028047.P10306234485462535038

`2*A028044(n)-A028043(n)`
-/

namespace A028047.P10306234485462535038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028044 n - A028043 n

end

end A028047.P10306234485462535038

/-! ## A028047.P16929495581737196030

`2*A028068(n)-A028124(n)`
-/

namespace A028047.P16929495581737196030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028068 n - A028124 n

end

end A028047.P16929495581737196030

/-! ## A028047.P17140874237277491528

`A019682(n+1)+A021684(n)-A021684(n+1)`
-/

namespace A028047.P17140874237277491528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019682 (n + 1) + (A021684 n - A021684 (n + 1))

end

end A028047.P17140874237277491528

/-!
# A028048: Expansion of 1/((1-3x)(1-4x)(1-9x)(1-11x)).

The programs for A028048, there is no canonical definition to state claims against.
-/

/-! ## A028048.P13693769281566132290

`A019687(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028048.P13693769281566132290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019687 n + 3 * a (n - 1)

end

end A028048.P13693769281566132290

/-! ## A028048.P10278917985823772475

`2*A025981(n)-A025953(n)`
-/

namespace A028048.P10278917985823772475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025981 n - A025953 n

end

end A028048.P10278917985823772475

/-! ## A028048.P9273543102464376394

`2*A028041(n)-A028039(n)`
-/

namespace A028048.P9273543102464376394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028041 n - A028039 n

end

end A028048.P9273543102464376394

/-! ## A028048.P5018055569469524429

`(A028050(n)+A028047(n))/2`
-/

namespace A028048.P5018055569469524429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028050 n + A028047 n : ℚ) / 2

end

end A028048.P5018055569469524429

/-! ## A028048.P14497107124177458605

`(A028140(n)+A028036(n))/2`
-/

namespace A028048.P14497107124177458605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028140 n + A028036 n : ℚ) / 2

end

end A028048.P14497107124177458605

/-!
# A028049: Expansion of 1/((1-3*x)*(1-4*x)*(1-9*x)*(1-12*x)).

The programs for A028049, there is no canonical definition to state claims against.
-/

/-! ## A028049.P2784924271373537247

`A017161(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A028049.P2784924271373537247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017161 n + 9 * a (n - 1)

end

end A028049.P2784924271373537247

/-! ## A028049.P9723159941117669286

`2*A028037(n)-A028034(n)`
-/

namespace A028049.P9723159941117669286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028037 n - A028034 n

end

end A028049.P9723159941117669286

/-! ## A028049.P9910767184742262752

`2*A028070(n)-A028126(n)`
-/

namespace A028049.P9910767184742262752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028070 n - A028126 n

end

end A028049.P9910767184742262752

/-! ## A028049.P10180171218425499586

`4*a(n-1)+A000244(n)*A016208(n)` with `a(0)=1`
-/

namespace A028049.P10180171218425499586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + A000244 n * A016208 n

end

end A028049.P10180171218425499586

/-! ## A028049.P14570032499163813742

`A028058(n)+A028176(n)-A028126(n)`
-/

namespace A028049.P14570032499163813742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028058 n + (A028176 n - A028126 n)

end

end A028049.P14570032499163813742

/-! ## A028049.P15310630211037216076

`Δ[A021974(n)-A021704(n)]`
-/

namespace A028049.P15310630211037216076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021974 n - A021704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028049.P15310630211037216076

/-!
# A028050: Expansion of 1/((1-3x)(1-4x)(1-10x)(1-11x)).

The programs for A028050, the canonical program `A028050.P7305795736568797690` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028050 has offset 0).

The definition of A028050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028050.P7305795736568797690

`(3*11^(n+3)-4*10^(n+3)+4^(n+4)-3^(n+4))/168`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028050

/-- `(3*11^(n+3)-4*10^(n+3)+4^(n+4)-3^(n+4))/168` -/
def P7305795736568797690.Spec : Prop :=
  ∀ n, P7305795736568797690.a n = (A028050 n : ℚ)

end A028050

/-! ## A028050.P6606925558737457130

`A019742(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028050.P6606925558737457130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019742 n + 3 * a (n - 1)

end

end A028050.P6606925558737457130

namespace A028050

/-- `A019742(n)+3*a(n-1)` -/
def P6606925558737457130.Spec : Prop :=
  ∀ n, P6606925558737457130.a n = A028050 n

end A028050

/-! ## A028050.P12879682540265393846

`2*A025983(n)-A025955(n)`
-/

namespace A028050.P12879682540265393846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025983 n - A025955 n

end

end A028050.P12879682540265393846

namespace A028050

/-- `2*A025983(n)-A025955(n)` -/
def P12879682540265393846.Spec : Prop :=
  ∀ n, P12879682540265393846.a n = A028050 n

end A028050

/-! ## A028050.P2575775979697722104

`2*A028048(n)-A028047(n)`
-/

namespace A028050.P2575775979697722104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028048 n - A028047 n

end

end A028050.P2575775979697722104

namespace A028050

/-- `2*A028048(n)-A028047(n)` -/
def P2575775979697722104.Spec : Prop :=
  ∀ n, P2575775979697722104.a n = A028050 n

end A028050

/-! ## A028050.P15830247651954690004

`2*A028071(n)-A028127(n)`
-/

namespace A028050.P15830247651954690004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028071 n - A028127 n

end

end A028050.P15830247651954690004

namespace A028050

/-- `2*A028071(n)-A028127(n)` -/
def P15830247651954690004.Spec : Prop :=
  ∀ n, P15830247651954690004.a n = A028050 n

end A028050

/-! ## A028050.P1732212196396102616

`A021884(n)+A021984(n)-A021604(n)`
-/

namespace A028050.P1732212196396102616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021884 n + (A021984 n - A021604 n)

end

end A028050.P1732212196396102616

namespace A028050

/-- `A021884(n)+A021984(n)-A021604(n)` -/
def P1732212196396102616.Spec : Prop :=
  ∀ n, P1732212196396102616.a n = A028050 n

end A028050

/-!
# A028051: Expansion of 1/((1-3x)(1-4x)(1-10x)(1-12x)).

The programs for A028051, there is no canonical definition to state claims against.
-/

/-! ## A028051.P7766763341455360555

`2*A028046(n)-A028044(n)`
-/

namespace A028051.P7766763341455360555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028046 n - A028044 n

end

end A028051.P7766763341455360555

/-! ## A028051.P5682421109530815368

`(A028052(n)+A028050(n))/2`
-/

namespace A028051.P5682421109530815368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028052 n + A028050 n : ℚ) / 2

end

end A028051.P5682421109530815368

/-! ## A028051.P11294921978639305225

`2*A028072(n)-A028128(n)`
-/

namespace A028051.P11294921978639305225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028072 n - A028128 n

end

end A028051.P11294921978639305225

/-! ## A028051.P7947374234411521338

`12*a(n-1)+A016981(n)+A000007(n)` with `a(0)=1`
-/

namespace A028051.P7947374234411521338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  12 * a (n - 1) + (A016981 n + A000007 n)

end

end A028051.P7947374234411521338

/-! ## A028051.P3804363553041137587

`A025929(n)+A025956(n)-A025927(n)`
-/

namespace A028051.P3804363553041137587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025929 n + (A025956 n - A025927 n)

end

end A028051.P3804363553041137587

/-! ## A028051.P11479803086111389445

`A028071(n)+A028073(n)-A028128(n)`
-/

namespace A028051.P11479803086111389445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028071 n + (A028073 n - A028128 n)

end

end A028051.P11479803086111389445

/-!
# A028052: Expansion of 1/((1-3x)(1-4x)(1-11x)(1-12x)).

The programs for A028052, there is no canonical definition to state claims against.
-/

/-! ## A028052.P10116808515889562028

`A017161(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A028052.P10116808515889562028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017161 n + 11 * a (n - 1)

end

end A028052.P10116808515889562028

/-! ## A028052.P5593121897479534240

`Δ[A021404(n)-A021394(n)]`
-/

namespace A028052.P5593121897479534240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021404 n - A021394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028052.P5593121897479534240

/-! ## A028052.P7769476195150744155

`2*A028051(n)-A028050(n)`
-/

namespace A028052.P7769476195150744155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028051 n - A028050 n

end

end A028052.P7769476195150744155

/-! ## A028052.P16064659355847435930

`2*A028073(n)-A028129(n)`
-/

namespace A028052.P16064659355847435930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028073 n - A028129 n

end

end A028052.P16064659355847435930

/-! ## A028052.P1295523382600964754

`(A028154(n)+A028042(n))/2`
-/

namespace A028052.P1295523382600964754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028154 n + A028042 n : ℚ) / 2

end

end A028052.P1295523382600964754

/-! ## A028052.P15703629330598748204

`Δ[A022000(n)-A021734(n)]`
-/

namespace A028052.P15703629330598748204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022000 n - A021734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028052.P15703629330598748204

/-!
# A028053: Expansion of 1/((1-3x)(1-5x)(1-6x)(1-7x)).

The programs for A028053, the canonical program `A028053.P10191691300794784146` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028053 has offset 0).

The definition of A028053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028053.P10191691300794784146

`(3*7^(n+3)-8*6^(n+3)+6*5^(n+3)-3^(n+3))/24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028053

/-- `(3*7^(n+3)-8*6^(n+3)+6*5^(n+3)-3^(n+3))/24` -/
def P10191691300794784146.Spec : Prop :=
  ∀ n, P10191691300794784146.a n = (A028053 n : ℚ)

end A028053

/-! ## A028053.P15439849216929241046

`Δ[A021424(n)-A021414(n)]`
-/

namespace A028053.P15439849216929241046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021424 n - A021414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028053.P15439849216929241046

namespace A028053

/-- `Δ[A021424(n)-A021414(n)]` -/
def P15439849216929241046.Spec : Prop :=
  ∀ n, P15439849216929241046.a n = A028053 n

end A028053

/-! ## A028053.P10365492241209684954

`2*A028032(n)-A028026(n)`
-/

namespace A028053.P10365492241209684954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028032 n - A028026 n

end

end A028053.P10365492241209684954

namespace A028053

/-- `2*A028032(n)-A028026(n)` -/
def P10365492241209684954.Spec : Prop :=
  ∀ n, P10365492241209684954.a n = A028053 n

end A028053

/-! ## A028053.P3513541555338601769

`Δ[A021494(n)-A021424(n)]`
-/

namespace A028053.P3513541555338601769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021494 n - A021424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028053.P3513541555338601769

namespace A028053

/-- `Δ[A021494(n)-A021424(n)]` -/
def P3513541555338601769.Spec : Prop :=
  ∀ n, P3513541555338601769.a n = A028053 n

end A028053

/-! ## A028053.P7956628701522723430

`2*A028054(n)-A028059(n)`
-/

namespace A028053.P7956628701522723430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028054 n - A028059 n

end

end A028053.P7956628701522723430

namespace A028053

/-- `2*A028054(n)-A028059(n)` -/
def P7956628701522723430.Spec : Prop :=
  ∀ n, P7956628701522723430.a n = A028053 n

end A028053

/-! ## A028053.P16447262886939397126

`2*A028055(n)-A028075(n)`
-/

namespace A028053.P16447262886939397126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028055 n - A028075 n

end

end A028053.P16447262886939397126

namespace A028053

/-- `2*A028055(n)-A028075(n)` -/
def P16447262886939397126.Spec : Prop :=
  ∀ n, P16447262886939397126.a n = A028053 n

end A028053

/-!
# A028054: Expansion of 1/((1-3x)(1-5x)(1-6x)(1-8x)).

The programs for A028054, the canonical program `A028054.P4347206416303005116` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028054 has offset 0).

The definition of A028054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028054.P4347206416303005116

`(8^(n+3)-5*6^(n+3)+5^(n+4)-3^(n+3))/30`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028054

/-- `(8^(n+3)-5*6^(n+3)+5^(n+4)-3^(n+3))/30` -/
def P4347206416303005116.Spec : Prop :=
  ∀ n, P4347206416303005116.a n = (A028054 n : ℚ)

end A028054

/-! ## A028054.P3305789054763480649

`2*A025938(n)-A025930(n)`
-/

namespace A028054.P3305789054763480649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025938 n - A025930 n

end

end A028054.P3305789054763480649

namespace A028054

/-- `2*A025938(n)-A025930(n)` -/
def P3305789054763480649.Spec : Prop :=
  ∀ n, P3305789054763480649.a n = A028054 n

end A028054

/-! ## A028054.P13391970672056014611

`A025937(n)+A025943(n)-A025930(n)`
-/

namespace A028054.P13391970672056014611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025937 n + (A025943 n - A025930 n)

end

end A028054.P13391970672056014611

namespace A028054

/-- `A025937(n)+A025943(n)-A025930(n)` -/
def P13391970672056014611.Spec : Prop :=
  ∀ n, P13391970672056014611.a n = A028054 n

end A028054

/-! ## A028054.P7401975764697802486

`Δ[A021503(n)-A021434(n)]`
-/

namespace A028054.P7401975764697802486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021503 n - A021434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028054.P7401975764697802486

namespace A028054

/-- `Δ[A021503(n)-A021434(n)]` -/
def P7401975764697802486.Spec : Prop :=
  ∀ n, P7401975764697802486.a n = A028054 n

end A028054

/-! ## A028054.P14359832541575516114

`2*A028059(n)-A028074(n)`
-/

namespace A028054.P14359832541575516114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028059 n - A028074 n

end

end A028054.P14359832541575516114

namespace A028054

/-- `2*A028059(n)-A028074(n)` -/
def P14359832541575516114.Spec : Prop :=
  ∀ n, P14359832541575516114.a n = A028054 n

end A028054

/-!
# A028055: Expansion of 1/((1-3x)(1-5x)(1-6x)(1-9x)).

The programs for A028055, the canonical program `A028055.P14844360270570848733` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028055 has offset 0).

The definition of A028055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028055.P14844360270570848733

`(9^(n+3)-8*6^(n+3)+9*5^(n+3)-2*3^(n+3))/72`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028055

/-- `(9^(n+3)-8*6^(n+3)+9*5^(n+3)-2*3^(n+3))/72` -/
def P14844360270570848733.Spec : Prop :=
  ∀ n, P14844360270570848733.a n = (A028055 n : ℚ)

end A028055

/-! ## A028055.P15266751573391182721

`A017933(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A028055.P15266751573391182721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017933 n + 5 * a (n - 1)

end

end A028055.P15266751573391182721

namespace A028055

/-- `A017933(n)+5*a(n-1)` -/
def P15266751573391182721.Spec : Prop :=
  ∀ n, P15266751573391182721.a n = A028055 n

end A028055

/-! ## A028055.P18248269549238304818

`Δ[A021504(n)-A021454(n)]`
-/

namespace A028055.P18248269549238304818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021504 n - A021454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028055.P18248269549238304818

namespace A028055

/-- `Δ[A021504(n)-A021454(n)]` -/
def P18248269549238304818.Spec : Prop :=
  ∀ n, P18248269549238304818.a n = A028055 n

end A028055

/-! ## A028055.P4267663945465891776

`2*A028034(n)-A028028(n)`
-/

namespace A028055.P4267663945465891776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028034 n - A028028 n

end

end A028055.P4267663945465891776

namespace A028055

/-- `2*A028034(n)-A028028(n)` -/
def P4267663945465891776.Spec : Prop :=
  ∀ n, P4267663945465891776.a n = A028055 n

end A028055

/-! ## A028055.P824982524073967130

`2*A028060(n)-A028075(n)`
-/

namespace A028055.P824982524073967130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028060 n - A028075 n

end

end A028055.P824982524073967130

namespace A028055

/-- `2*A028060(n)-A028075(n)` -/
def P824982524073967130.Spec : Prop :=
  ∀ n, P824982524073967130.a n = A028055 n

end A028055

/-! ## A028055.P2178717871718067466

`A028054(n)+A028079(n)-A028064(n)`
-/

namespace A028055.P2178717871718067466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028054 n + (A028079 n - A028064 n)

end

end A028055.P2178717871718067466

namespace A028055

/-- `A028054(n)+A028079(n)-A028064(n)` -/
def P2178717871718067466.Spec : Prop :=
  ∀ n, P2178717871718067466.a n = A028055 n

end A028055

/-! ## A028055.P9655523942660268971

`2*A028058(n)-A028070(n)`
-/

namespace A028055.P9655523942660268971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028058 n - A028070 n

end

end A028055.P9655523942660268971

namespace A028055

/-- `2*A028058(n)-A028070(n)` -/
def P9655523942660268971.Spec : Prop :=
  ∀ n, P9655523942660268971.a n = A028055 n

end A028055

/-!
# A028056: Expansion of 1/((1-3x)(1-5x)(1-6x)(1-10x)).

The programs for A028056, the canonical program `A028056.P3315434457736523132` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028056 has offset 0).

The definition of A028056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028056.P3315434457736523132

`2*A025934(n)-A025930(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028056

/-- `2*A025934(n)-A025930(n)` -/
def P3315434457736523132.Spec : Prop :=
  ∀ n, P3315434457736523132.a n = A028056 n

theorem P3315434457736523132.correct : P3315434457736523132.Spec := by
  intro n
  simp only [A028056]

end A028056

/-! ## A028056.P4805450277223063938

`A028035(n)+A028035(n)-A028029(n)`
-/

namespace A028056.P4805450277223063938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028035 n + (A028035 n - A028029 n)

end

end A028056.P4805450277223063938

namespace A028056

/-- `A028035(n)+A028035(n)-A028029(n)` -/
def P4805450277223063938.Spec : Prop :=
  ∀ n, P4805450277223063938.a n = A028056 n

end A028056

/-! ## A028056.P3370726100954009323

`Δ[A021514(n)-A021464(n)]`
-/

namespace A028056.P3370726100954009323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021514 n - A021464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028056.P3370726100954009323

namespace A028056

/-- `Δ[A021514(n)-A021464(n)]` -/
def P3370726100954009323.Spec : Prop :=
  ∀ n, P3370726100954009323.a n = A028056 n

end A028056

/-! ## A028056.P5239221259855069855

`2*A028035(n)-A028029(n)`
-/

namespace A028056.P5239221259855069855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028035 n - A028029 n

end

end A028056.P5239221259855069855

namespace A028056

/-- `2*A028035(n)-A028029(n)` -/
def P5239221259855069855.Spec : Prop :=
  ∀ n, P5239221259855069855.a n = A028056 n

end A028056

/-! ## A028056.P622537290996649645

`(A028065(n)+A028054(n))/2`
-/

namespace A028056.P622537290996649645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028065 n + A028054 n : ℚ) / 2

end

end A028056.P622537290996649645

namespace A028056

/-- `(A028065(n)+A028054(n))/2` -/
def P622537290996649645.Spec : Prop :=
  ∀ n, P622537290996649645.a n = (A028056 n : ℚ)

end A028056

/-! ## A028056.P5047843565300042915

`2*A028061(n)-A028076(n)`
-/

namespace A028056.P5047843565300042915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028061 n - A028076 n

end

end A028056.P5047843565300042915

namespace A028056

/-- `2*A028061(n)-A028076(n)` -/
def P5047843565300042915.Spec : Prop :=
  ∀ n, P5047843565300042915.a n = A028056 n

end A028056

/-!
# A028057: Expansion of 1/((1-3x)(1-5x)(1-6x)(1-11x)).

The programs for A028057, the canonical program `A028057.P8380822359520795287` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028057 has offset 0).

The definition of A028057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028057.P8380822359520795287

`(11^(n+3)-16*6^(n+3)+20*5^(n+3)-5*3^(n+3))/240`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028057

/-- `(11^(n+3)-16*6^(n+3)+20*5^(n+3)-5*3^(n+3))/240` -/
def P8380822359520795287.Spec : Prop :=
  ∀ n, P8380822359520795287.a n = (A028057 n : ℚ)

end A028057

/-! ## A028057.P10743766592625692932

`A017917(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A028057.P10743766592625692932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017917 n + 6 * a (n - 1)

end

end A028057.P10743766592625692932

namespace A028057

/-- `A017917(n)+6*a(n-1)` -/
def P10743766592625692932.Spec : Prop :=
  ∀ n, P10743766592625692932.a n = A028057 n

end A028057

/-! ## A028057.P4315599482785265461

`2*A021474(n)-A021414(n)`
-/

namespace A028057.P4315599482785265461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021474 n - A021414 n

end

end A028057.P4315599482785265461

namespace A028057

/-- `2*A021474(n)-A021414(n)` -/
def P4315599482785265461.Spec : Prop :=
  ∀ n, P4315599482785265461.a n = A028057 n

end A028057

/-! ## A028057.P7105883884125074670

`A028062(n)+A028062(n)-A028077(n)`
-/

namespace A028057.P7105883884125074670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028062 n + (A028062 n - A028077 n)

end

end A028057.P7105883884125074670

namespace A028057

/-- `A028062(n)+A028062(n)-A028077(n)` -/
def P7105883884125074670.Spec : Prop :=
  ∀ n, P7105883884125074670.a n = A028057 n

end A028057

/-! ## A028057.P6673249334713778835

`A028077(n)+A028077(n)-A028168(n)`
-/

namespace A028057.P6673249334713778835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028077 n + (A028077 n - A028168 n)

end

end A028057.P6673249334713778835

namespace A028057

/-- `A028077(n)+A028077(n)-A028168(n)` -/
def P6673249334713778835.Spec : Prop :=
  ∀ n, P6673249334713778835.a n = A028057 n

end A028057

/-! ## A028057.P713981856255509376

`2*A028062(n)-A028077(n)`
-/

namespace A028057.P713981856255509376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028062 n - A028077 n

end

end A028057.P713981856255509376

namespace A028057

/-- `2*A028062(n)-A028077(n)` -/
def P713981856255509376.Spec : Prop :=
  ∀ n, P713981856255509376.a n = A028057 n

end A028057

/-! ## A028057.P14480007595696377721

`2*A028077(n)-A028168(n)`
-/

namespace A028057.P14480007595696377721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028077 n - A028168 n

end

end A028057.P14480007595696377721

namespace A028057

/-- `2*A028077(n)-A028168(n)` -/
def P14480007595696377721.Spec : Prop :=
  ∀ n, P14480007595696377721.a n = A028057 n

end A028057

/-! ## A028057.P2961689313727212650

`A028060(n)+A028069(n)-A028077(n)`
-/

namespace A028057.P2961689313727212650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028060 n + (A028069 n - A028077 n)

end

end A028057.P2961689313727212650

namespace A028057

/-- `A028060(n)+A028069(n)-A028077(n)` -/
def P2961689313727212650.Spec : Prop :=
  ∀ n, P2961689313727212650.a n = A028057 n

end A028057

/-!
# A028058: Expansion of 1/((1-3x)(1-5x)(1-6x)(1-12x)).

The programs for A028058, there is no canonical definition to state claims against.
-/

/-! ## A028058.P14214635754444375378

`A028037(n)+A028037(n)-A028031(n)`
-/

namespace A028058.P14214635754444375378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028037 n + (A028037 n - A028031 n)

end

end A028058.P14214635754444375378

/-! ## A028058.P2989770868746797532

`Δ[A021534(n)-A021484(n)]`
-/

namespace A028058.P2989770868746797532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021534 n - A021484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028058.P2989770868746797532

/-! ## A028058.P1740373563586582496

`2*A028037(n)-A028031(n)`
-/

namespace A028058.P1740373563586582496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028037 n - A028031 n

end

end A028058.P1740373563586582496

/-! ## A028058.P643946114025778704

`(A028070(n)+A028055(n))/2`
-/

namespace A028058.P643946114025778704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028070 n + A028055 n : ℚ) / 2

end

end A028058.P643946114025778704

/-! ## A028058.P852659634555770296

`2*A028063(n)-A028078(n)`
-/

namespace A028058.P852659634555770296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028063 n - A028078 n

end

end A028058.P852659634555770296

/-! ## A028058.P17559637510728169787

`2*A028070(n)-A028176(n)`
-/

namespace A028058.P17559637510728169787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028070 n - A028176 n

end

end A028058.P17559637510728169787

/-! ## A028058.P10211443864072125716

`A028057(n)+A028088(n)-A028073(n)`
-/

namespace A028058.P10211443864072125716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028057 n + (A028088 n - A028073 n)

end

end A028058.P10211443864072125716

/-!
# A028059: Expansion of 1/((1-3x)(1-5x)(1-7x)(1-8x)).

The programs for A028059, the canonical program `A028059.P1043984379278065322` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028059 has offset 0).

The definition of A028059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028059.P1043984379278065322

`(8^(n+4)-15*7^(n+3)+2*5^(n+4)-3^(n+4))/120`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028059

/-- `(8^(n+4)-15*7^(n+3)+2*5^(n+4)-3^(n+4))/120` -/
def P1043984379278065322.Spec : Prop :=
  ∀ n, P1043984379278065322.a n = (A028059 n : ℚ)

end A028059

/-! ## A028059.P4605179579183635163

`2*A025943(n)-A025931(n)`
-/

namespace A028059.P4605179579183635163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025943 n - A025931 n

end

end A028059.P4605179579183635163

namespace A028059

/-- `2*A025943(n)-A025931(n)` -/
def P4605179579183635163.Spec : Prop :=
  ∀ n, P4605179579183635163.a n = A028059 n

end A028059

/-! ## A028059.P3083762300676304884

`2*A028054(n)-A028053(n)`
-/

namespace A028059.P3083762300676304884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028054 n - A028053 n

end

end A028059.P3083762300676304884

namespace A028059

/-- `2*A028054(n)-A028053(n)` -/
def P3083762300676304884.Spec : Prop :=
  ∀ n, P3083762300676304884.a n = A028059 n

end A028059

/-! ## A028059.P16593286560371525015

`A022452(n)+A022452(n)-A021544(n)`
-/

namespace A028059.P16593286560371525015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022452 n + (A022452 n - A021544 n)

end

end A028059.P16593286560371525015

namespace A028059

/-- `A022452(n)+A022452(n)-A021544(n)` -/
def P16593286560371525015.Spec : Prop :=
  ∀ n, P16593286560371525015.a n = A028059 n

end A028059

/-! ## A028059.P9018341631916508245

`Δ[A021434(n)-A021424(n)]`
-/

namespace A028059.P9018341631916508245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021434 n - A021424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028059.P9018341631916508245

namespace A028059

/-- `Δ[A021434(n)-A021424(n)]` -/
def P9018341631916508245.Spec : Prop :=
  ∀ n, P9018341631916508245.a n = A028059 n

end A028059

/-! ## A028059.P959128272289266220

`2*A022452(n)-A021544(n)`
-/

namespace A028059.P959128272289266220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022452 n - A021544 n

end

end A028059.P959128272289266220

namespace A028059

/-- `2*A022452(n)-A021544(n)` -/
def P959128272289266220.Spec : Prop :=
  ∀ n, P959128272289266220.a n = A028059 n

end A028059

/-! ## A028059.P1232733350992195494

`2*A028060(n)-A028064(n)`
-/

namespace A028059.P1232733350992195494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028060 n - A028064 n

end

end A028059.P1232733350992195494

namespace A028059

/-- `2*A028060(n)-A028064(n)` -/
def P1232733350992195494.Spec : Prop :=
  ∀ n, P1232733350992195494.a n = A028059 n

end A028059

/-! ## A028059.P15108708408471854976

`2*A028064(n)-A028089(n)`
-/

namespace A028059.P15108708408471854976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028064 n - A028089 n

end

end A028059.P15108708408471854976

namespace A028059

/-- `2*A028064(n)-A028089(n)` -/
def P15108708408471854976.Spec : Prop :=
  ∀ n, P15108708408471854976.a n = A028059 n

end A028059

/-! ## A028059.P9900174726709251206

`2*A028062(n)-A028091(n)`
-/

namespace A028059.P9900174726709251206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028062 n - A028091 n

end

end A028059.P9900174726709251206

namespace A028059

/-- `2*A028062(n)-A028091(n)` -/
def P9900174726709251206.Spec : Prop :=
  ∀ n, P9900174726709251206.a n = A028059 n

end A028059

/-!
# A028060: Expansion of 1/((1-3x)(1-5x)(1-7x)(1-9x)).

The programs for A028060, the canonical program `A028060.P12974437117252257621` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028060 has offset 0).

The definition of A028060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028060.P12974437117252257621

`(9^(n+3)-3*7^(n+3)+3*5^(n+3)-3^(n+3))/48`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028060

/-- `(9^(n+3)-3*7^(n+3)+3*5^(n+3)-3^(n+3))/48` -/
def P12974437117252257621.Spec : Prop :=
  ∀ n, P12974437117252257621.a n = (A028060 n : ℚ)

end A028060

/-! ## A028060.P3872341486085962254

`2*A022453(n)-A021594(n)`
-/

namespace A028060.P3872341486085962254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022453 n - A021594 n

end

end A028060.P3872341486085962254

namespace A028060

/-- `2*A022453(n)-A021594(n)` -/
def P3872341486085962254.Spec : Prop :=
  ∀ n, P3872341486085962254.a n = A028060 n

end A028060

/-! ## A028060.P8063181738668452162

`A021544(n)+A021634(n)-A021424(n)`
-/

namespace A028060.P8063181738668452162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021544 n + (A021634 n - A021424 n)

end

end A028060.P8063181738668452162

namespace A028060

/-- `A021544(n)+A021634(n)-A021424(n)` -/
def P8063181738668452162.Spec : Prop :=
  ∀ n, P8063181738668452162.a n = A028060 n

end A028060

/-! ## A028060.P2148708448503517559

`2*A028062(n)-A028069(n)`
-/

namespace A028060.P2148708448503517559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028062 n - A028069 n

end

end A028060.P2148708448503517559

namespace A028060

/-- `2*A028062(n)-A028069(n)` -/
def P2148708448503517559.Spec : Prop :=
  ∀ n, P2148708448503517559.a n = A028060 n

end A028060

/-! ## A028060.P14840650407564689156

`2*A028069(n)-A028185(n)`
-/

namespace A028060.P14840650407564689156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028069 n - A028185 n

end

end A028060.P14840650407564689156

namespace A028060

/-- `2*A028069(n)-A028185(n)` -/
def P14840650407564689156.Spec : Prop :=
  ∀ n, P14840650407564689156.a n = A028060 n

end A028060

/-! ## A028060.P10173598913955714274

`A028059(n)+A028091(n)-A028069(n)`
-/

namespace A028060.P10173598913955714274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028059 n + (A028091 n - A028069 n)

end

end A028060.P10173598913955714274

namespace A028060

/-- `A028059(n)+A028091(n)-A028069(n)` -/
def P10173598913955714274.Spec : Prop :=
  ∀ n, P10173598913955714274.a n = A028060 n

end A028060

/-! ## A028060.P10941301158898295460

`A028062(n)+A028069(n)-A028094(n)`
-/

namespace A028060.P10941301158898295460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028062 n + (A028069 n - A028094 n)

end

end A028060.P10941301158898295460

namespace A028060

/-- `A028062(n)+A028069(n)-A028094(n)` -/
def P10941301158898295460.Spec : Prop :=
  ∀ n, P10941301158898295460.a n = A028060 n

end A028060

/-! ## A028060.P13180520563141572192

`A028064(n)+A028069(n)-A028091(n)`
-/

namespace A028060.P13180520563141572192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028064 n + (A028069 n - A028091 n)

end

end A028060.P13180520563141572192

namespace A028060

/-- `A028064(n)+A028069(n)-A028091(n)` -/
def P13180520563141572192.Spec : Prop :=
  ∀ n, P13180520563141572192.a n = A028060 n

end A028060

/-!
# A028061: Expansion of 1/((1-3x)(1-5x)(1-7x)(1-10x)).

The programs for A028061, the canonical program `A028061.P12946801495120093741` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028061 has offset 0).

The definition of A028061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028061.P12946801495120093741

`2*A028029(n)-A028026(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028061

/-- `2*A028029(n)-A028026(n)` -/
def P12946801495120093741.Spec : Prop :=
  ∀ n, P12946801495120093741.a n = A028061 n

theorem P12946801495120093741.correct : P12946801495120093741.Spec := by
  intro n
  simp only [A028061]

end A028061

/-! ## A028061.P5979276206641523507

`A022454(n)+A022454(n)-A021604(n)`
-/

namespace A028061.P5979276206641523507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022454 n + (A022454 n - A021604 n)

end

end A028061.P5979276206641523507

namespace A028061

/-- `A022454(n)+A022454(n)-A021604(n)` -/
def P5979276206641523507.Spec : Prop :=
  ∀ n, P5979276206641523507.a n = A028061 n

end A028061

/-! ## A028061.P7237169940869274337

`A025934(n)+A025945(n)-A025931(n)`
-/

namespace A028061.P7237169940869274337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025934 n + (A025945 n - A025931 n)

end

end A028061.P7237169940869274337

namespace A028061

/-- `A025934(n)+A025945(n)-A025931(n)` -/
def P7237169940869274337.Spec : Prop :=
  ∀ n, P7237169940869274337.a n = A028061 n

end A028061

/-! ## A028061.P9595057334211653813

`2*A022454(n)-A021604(n)`
-/

namespace A028061.P9595057334211653813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022454 n - A021604 n

end

end A028061.P9595057334211653813

namespace A028061

/-- `2*A022454(n)-A021604(n)` -/
def P9595057334211653813.Spec : Prop :=
  ∀ n, P9595057334211653813.a n = A028061 n

end A028061

/-! ## A028061.P13950279864154583654

`(A028076(n)+A028056(n))/2`
-/

namespace A028061.P13950279864154583654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028076 n + A028056 n : ℚ) / 2

end

end A028061.P13950279864154583654

namespace A028061

/-- `(A028076(n)+A028056(n))/2` -/
def P13950279864154583654.Spec : Prop :=
  ∀ n, P13950279864154583654.a n = (A028061 n : ℚ)

end A028061

/-! ## A028061.P3216232258071467938

`2*A028068(n)-A028093(n)`
-/

namespace A028061.P3216232258071467938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028068 n - A028093 n

end

end A028061.P3216232258071467938

namespace A028061

/-- `2*A028068(n)-A028093(n)` -/
def P3216232258071467938.Spec : Prop :=
  ∀ n, P3216232258071467938.a n = A028061 n

end A028061

/-! ## A028061.P15716325271251899062

`Δ[(A021604(n)-A021464(n))/2]`
-/

namespace A028061.P15716325271251899062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021604 n - A021464 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028061.P15716325271251899062

namespace A028061

/-- `Δ[(A021604(n)-A021464(n))/2]` -/
def P15716325271251899062.Spec : Prop :=
  ∀ n, P15716325271251899062.a n = (A028061 n : ℚ)

end A028061

/-! ## A028061.P11644699442602340247

`(A019958(n+1)-A017999(n+1))/2`
-/

namespace A028061.P11644699442602340247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019958 (n + 1) - A017999 (n + 1) : ℚ) / 2

end

end A028061.P11644699442602340247

namespace A028061

/-- `(A019958(n+1)-A017999(n+1))/2` -/
def P11644699442602340247.Spec : Prop :=
  ∀ n, P11644699442602340247.a n = (A028061 n : ℚ)

end A028061

/-!
# A028062: Expansion of 1/((1-3x)(1-5x)(1-7x)(1-11x)).

The programs for A028062, the canonical program `A028062.P13222406792845821253` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028062 has offset 0).

The definition of A028062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028062.P13222406792845821253

`(11^(n+3)-6*7^(n+3)+8*5^(n+3)-3^(n+4))/192`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028062

/-- `(11^(n+3)-6*7^(n+3)+8*5^(n+3)-3^(n+4))/192` -/
def P13222406792845821253.Spec : Prop :=
  ∀ n, P13222406792845821253.a n = (A028062 n : ℚ)

end A028062

/-! ## A028062.P17695673663606399107

`2*A022455(n)-A021614(n)`
-/

namespace A028062.P17695673663606399107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022455 n - A021614 n

end

end A028062.P17695673663606399107

namespace A028062

/-- `2*A022455(n)-A021614(n)` -/
def P17695673663606399107.Spec : Prop :=
  ∀ n, P17695673663606399107.a n = A028062 n

end A028062

/-! ## A028062.P17484382560208963543

`A021474(n)+A021614(n)-A021424(n)`
-/

namespace A028062.P17484382560208963543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021474 n + (A021614 n - A021424 n)

end

end A028062.P17484382560208963543

namespace A028062

/-- `A021474(n)+A021614(n)-A021424(n)` -/
def P17484382560208963543.Spec : Prop :=
  ∀ n, P17484382560208963543.a n = A028062 n

end A028062

/-! ## A028062.P14420071637797163352

`A028041(n)+(A028041(n)-A028030(n))/2`
-/

namespace A028062.P14420071637797163352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028041 n : ℚ) + (A028041 n - A028030 n : ℚ) / 2

end

end A028062.P14420071637797163352

namespace A028062

/-- `A028041(n)+(A028041(n)-A028030(n))/2` -/
def P14420071637797163352.Spec : Prop :=
  ∀ n, P14420071637797163352.a n = (A028062 n : ℚ)

end A028062

/-! ## A028062.P16719461652171291929

`2*A028069(n)-A028094(n)`
-/

namespace A028062.P16719461652171291929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028069 n - A028094 n

end

end A028062.P16719461652171291929

namespace A028062

/-- `2*A028069(n)-A028094(n)` -/
def P16719461652171291929.Spec : Prop :=
  ∀ n, P16719461652171291929.a n = A028062 n

end A028062

/-! ## A028062.P920459652087359249

`A028060(n)+A028094(n)-A028069(n)`
-/

namespace A028062.P920459652087359249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028060 n + (A028094 n - A028069 n)

end

end A028062.P920459652087359249

namespace A028062

/-- `A028060(n)+A028094(n)-A028069(n)` -/
def P920459652087359249.Spec : Prop :=
  ∀ n, P920459652087359249.a n = A028062 n

end A028062

/-! ## A028062.P16144131307083628527

`A028064(n)+A028094(n)-A028091(n)`
-/

namespace A028062.P16144131307083628527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028064 n + (A028094 n - A028091 n)

end

end A028062.P16144131307083628527

namespace A028062

/-- `A028064(n)+A028094(n)-A028091(n)` -/
def P16144131307083628527.Spec : Prop :=
  ∀ n, P16144131307083628527.a n = A028062 n

end A028062

/-!
# A028063: Expansion of 1/((1-3*x)*(1-5*x)*(1-7*x)*(1-12*x)).

The programs for A028063, there is no canonical definition to state claims against.
-/

/-! ## A028063.P2670499071703178485

`2*A022456(n)-A021629(n)`
-/

namespace A028063.P2670499071703178485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022456 n - A021629 n

end

end A028063.P2670499071703178485

/-! ## A028063.P2785670904735216028

`2*A025936(n)-A025931(n)`
-/

namespace A028063.P2785670904735216028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025936 n - A025931 n

end

end A028063.P2785670904735216028

/-! ## A028063.P2571097241692938644

`(A028078(n)+A028058(n))/2`
-/

namespace A028063.P2571097241692938644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028078 n + A028058 n : ℚ) / 2

end

end A028063.P2571097241692938644

/-! ## A028063.P7288807722425976181

`2*A028070(n)-A028095(n)`
-/

namespace A028063.P7288807722425976181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028070 n - A028095 n

end

end A028063.P7288807722425976181

/-! ## A028063.P4572178454686550441

`(A020341(n+1)-A018055(n+1))/2`
-/

namespace A028063.P4572178454686550441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020341 (n + 1) - A018055 (n + 1) : ℚ) / 2

end

end A028063.P4572178454686550441

/-! ## A028063.P10286521613534255365

`A021629(n)+A022456(n)-A021484(n)`
-/

namespace A028063.P10286521613534255365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021629 n + (A022456 n - A021484 n)

end

end A028063.P10286521613534255365

/-!
# A028064: Expansion of 1/((1-3x)(1-5x)(1-8x)(1-9x)).

The programs for A028064, the canonical program `A028064.P11888194564065538857` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028064 has offset 0).

The definition of A028064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028064.P11888194564065538857

`(5*9^(n+3)-8^(n+4)+5^(n+4)-2*3^(n+3))/120`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028064

/-- `(5*9^(n+3)-8^(n+4)+5^(n+4)-2*3^(n+3))/120` -/
def P11888194564065538857.Spec : Prop :=
  ∀ n, P11888194564065538857.a n = (A028064 n : ℚ)

end A028064

/-! ## A028064.P15764219965257336039

`Δ[A021454(n)-A021434(n)]`
-/

namespace A028064.P15764219965257336039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021454 n - A021434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028064.P15764219965257336039

namespace A028064

/-- `Δ[A021454(n)-A021434(n)]` -/
def P15764219965257336039.Spec : Prop :=
  ∀ n, P15764219965257336039.a n = A028064 n

end A028064

/-! ## A028064.P10700315539606159032

`2*A025948(n)-A025933(n)`
-/

namespace A028064.P10700315539606159032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025948 n - A025933 n

end

end A028064.P10700315539606159032

namespace A028064

/-- `2*A025948(n)-A025933(n)` -/
def P10700315539606159032.Spec : Prop :=
  ∀ n, P10700315539606159032.a n = A028064 n

end A028064

/-! ## A028064.P4815477738274622494

`2*A028060(n)-A028059(n)`
-/

namespace A028064.P4815477738274622494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028060 n - A028059 n

end

end A028064.P4815477738274622494

namespace A028064

/-- `2*A028060(n)-A028059(n)` -/
def P4815477738274622494.Spec : Prop :=
  ∀ n, P4815477738274622494.a n = A028064 n

end A028064

/-! ## A028064.P6889107575756702931

`A028054(n)+A028079(n)-A028055(n)`
-/

namespace A028064.P6889107575756702931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028054 n + (A028079 n - A028055 n)

end

end A028064.P6889107575756702931

namespace A028064

/-- `A028054(n)+A028079(n)-A028055(n)` -/
def P6889107575756702931.Spec : Prop :=
  ∀ n, P6889107575756702931.a n = A028064 n

end A028064

/-! ## A028064.P11030371426425021035

`2*A028065(n)-A028068(n)`
-/

namespace A028064.P11030371426425021035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028065 n - A028068 n

end

end A028064.P11030371426425021035

namespace A028064

/-- `2*A028065(n)-A028068(n)` -/
def P11030371426425021035.Spec : Prop :=
  ∀ n, P11030371426425021035.a n = A028064 n

end A028064

/-!
# A028065: Expansion of 1/((1-3x)(1-5x)(1-8x)(1-10x)).

The programs for A028065, the canonical program `A028065.P8386349304357331608` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028065 has offset 0).

The definition of A028065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028065.P8386349304357331608

`(3*10^(n+3)-7*8^(n+3)+7*5^(n+3)-3^(n+4))/210`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028065

/-- `(3*10^(n+3)-7*8^(n+3)+7*5^(n+3)-3^(n+4))/210` -/
def P8386349304357331608.Spec : Prop :=
  ∀ n, P8386349304357331608.a n = (A028065 n : ℚ)

end A028065

/-! ## A028065.P4771496813689950522

`2*A025949(n)-A025934(n)`
-/

namespace A028065.P4771496813689950522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025949 n - A025934 n

end

end A028065.P4771496813689950522

namespace A028065

/-- `2*A025949(n)-A025934(n)` -/
def P4771496813689950522.Spec : Prop :=
  ∀ n, P4771496813689950522.a n = A028065 n

end A028065

/-! ## A028065.P15540475546477320036

`2*A028056(n)-A028054(n)`
-/

namespace A028065.P15540475546477320036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028056 n - A028054 n

end

end A028065.P15540475546477320036

namespace A028065

/-- `2*A028056(n)-A028054(n)` -/
def P15540475546477320036.Spec : Prop :=
  ∀ n, P15540475546477320036.a n = A028065 n

end A028065

/-! ## A028065.P14218216291443400087

`Δ[(A021644(n)-A021434(n))/5]`
-/

namespace A028065.P14218216291443400087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021644 n - A021434 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028065.P14218216291443400087

namespace A028065

/-- `Δ[(A021644(n)-A021434(n))/5]` -/
def P14218216291443400087.Spec : Prop :=
  ∀ n, P14218216291443400087.a n = (A028065 n : ℚ)

end A028065

/-! ## A028065.P4593561877176280987

`A025948(n)+A025952(n)-A025934(n)`
-/

namespace A028065.P4593561877176280987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025948 n + (A025952 n - A025934 n)

end

end A028065.P4593561877176280987

namespace A028065

/-- `A025948(n)+A025952(n)-A025934(n)` -/
def P4593561877176280987.Spec : Prop :=
  ∀ n, P4593561877176280987.a n = A028065 n

end A028065

/-! ## A028065.P12773649450968400576

`A025938(n)+A028080(n)-A025934(n)`
-/

namespace A028065.P12773649450968400576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025938 n + (A028080 n - A025934 n)

end

end A028065.P12773649450968400576

namespace A028065

/-- `A025938(n)+A028080(n)-A025934(n)` -/
def P12773649450968400576.Spec : Prop :=
  ∀ n, P12773649450968400576.a n = A028065 n

end A028065

/-!
# A028066: Expansion of 1/((1-3x)(1-5x)(1-8x)(1-11x)).

The programs for A028066, the canonical program `A028066.P5942038051149849148` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028066 has offset 0).

The definition of A028066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028066.P5942038051149849148

`(5*11^(n+3)-2*8^(n+4)+4*5^(n+4)-3^(n+5))/720`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028066

/-- `(5*11^(n+3)-2*8^(n+4)+4*5^(n+4)-3^(n+5))/720` -/
def P5942038051149849148.Spec : Prop :=
  ∀ n, P5942038051149849148.a n = (A028066 n : ℚ)

end A028066

/-! ## A028066.P6200860249709504161

`A025935(n)+A025950(n)-A025932(n)`
-/

namespace A028066.P6200860249709504161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025935 n + (A025950 n - A025932 n)

end

end A028066.P6200860249709504161

namespace A028066

/-- `A025935(n)+A025950(n)-A025932(n)` -/
def P6200860249709504161.Spec : Prop :=
  ∀ n, P6200860249709504161.a n = A028066 n

end A028066

/-! ## A028066.P11523978850694208565

`2*A025950(n)-A025935(n)`
-/

namespace A028066.P11523978850694208565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025950 n - A025935 n

end

end A028066.P11523978850694208565

namespace A028066

/-- `2*A025950(n)-A025935(n)` -/
def P11523978850694208565.Spec : Prop :=
  ∀ n, P11523978850694208565.a n = A028066 n

end A028066

/-! ## A028066.P9247475212595337600

`2*A025950(n)-(2*A021154(n)-A021054(n))`
-/

namespace A028066.P9247475212595337600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025950 n - (2 * A021154 n - A021054 n)

end

end A028066.P9247475212595337600

namespace A028066

/-- `2*A025950(n)-(2*A021154(n)-A021054(n))` -/
def P9247475212595337600.Spec : Prop :=
  ∀ n, P9247475212595337600.a n = A028066 n

end A028066

/-! ## A028066.P8965543331930659302

`2*A025950(n)-(2*A025946(n)-A025995(n))`
-/

namespace A028066.P8965543331930659302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025950 n - (2 * A025946 n - A025995 n)

end

end A028066.P8965543331930659302

namespace A028066

/-- `2*A025950(n)-(2*A025946(n)-A025995(n))` -/
def P8965543331930659302.Spec : Prop :=
  ∀ n, P8965543331930659302.a n = A028066 n

end A028066

/-! ## A028066.P14440268006440748974

`2*A025950(n)-(2*A025963(n)-A028030(n))`
-/

namespace A028066.P14440268006440748974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025950 n - (2 * A025963 n - A028030 n)

end

end A028066.P14440268006440748974

namespace A028066

/-- `2*A025950(n)-(2*A025963(n)-A028030(n))` -/
def P14440268006440748974.Spec : Prop :=
  ∀ n, P14440268006440748974.a n = A028066 n

end A028066

/-!
# A028067: Expansion of 1/((1-3x)(1-5x)(1-8x)(1-12x)).

The programs for A028067, there is no canonical definition to state claims against.
-/

/-! ## A028067.P996948762223645778

`A018071(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A028067.P996948762223645778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018071 n + 5 * a (n - 1)

end

end A028067.P996948762223645778

/-! ## A028067.P13914737032788893554

`A017521(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A028067.P13914737032788893554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017521 n + 12 * a (n - 1)

end

end A028067.P13914737032788893554

/-! ## A028067.P17602460382174160549

`2*A025951(n)-A025936(n)`
-/

namespace A028067.P17602460382174160549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025951 n - A025936 n

end

end A028067.P17602460382174160549

/-! ## A028067.P5085223149391599893

`2*A028031(n)-A028027(n)`
-/

namespace A028067.P5085223149391599893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028031 n - A028027 n

end

end A028067.P5085223149391599893

/-! ## A028067.P14935992534380053180

`(A028072(n)+A028065(n))/2`
-/

namespace A028067.P14935992534380053180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028072 n + A028065 n : ℚ) / 2

end

end A028067.P14935992534380053180

/-! ## A028067.P10786521400365368851

`(A028123(n)+A028046(n))/2`
-/

namespace A028067.P10786521400365368851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028123 n + A028046 n : ℚ) / 2

end

end A028067.P10786521400365368851

/-! ## A028067.P18306840151247999848

`A021484(n)+A021674(n)-A021434(n)`
-/

namespace A028067.P18306840151247999848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021484 n + (A021674 n - A021434 n)

end

end A028067.P18306840151247999848

/-! ## A028067.P12804764411614128632

`A025949(n)+A025956(n)-A025936(n)`
-/

namespace A028067.P12804764411614128632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025949 n + (A025956 n - A025936 n)

end

end A028067.P12804764411614128632

/-!
# A028068: Expansion of 1/((1-3x)(1-5x)(1-9x)(1-10x)).

The programs for A028068, there is no canonical definition to state claims against.
-/

/-! ## A028068.P5207978065424499480

`Δ[A021464(n)-A021454(n)]`
-/

namespace A028068.P5207978065424499480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021464 n - A021454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028068.P5207978065424499480

/-! ## A028068.P5233727368238188981

`2*A028065(n)-A028064(n)`
-/

namespace A028068.P5233727368238188981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028065 n - A028064 n

end

end A028068.P5233727368238188981

/-! ## A028068.P1676442686476828272

`(A028093(n)+A028061(n))/2`
-/

namespace A028068.P1676442686476828272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028093 n + A028061 n : ℚ) / 2

end

end A028068.P1676442686476828272

/-! ## A028068.P10957936105063048935

`A028055(n)+A028083(n)-A028056(n)`
-/

namespace A028068.P10957936105063048935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028055 n + (A028083 n - A028056 n)

end

end A028068.P10957936105063048935

/-! ## A028068.P17176541020915807553

`2*A028069(n)-A028071(n)`
-/

namespace A028068.P17176541020915807553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028069 n - A028071 n

end

end A028068.P17176541020915807553

/-!
# A028069: Expansion of 1/((1-3x)(1-5x)(1-9x)(1-11x)).

The programs for A028069, the canonical program `A028069.P14645588829537545698` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028069 has offset 0).

The definition of A028069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028069.P14645588829537545698

`(11^(n+3)-2*9^(n+3)+2*5^(n+3)-3^(n+3))/96`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028069

/-- `(11^(n+3)-2*9^(n+3)+2*5^(n+3)-3^(n+3))/96` -/
def P14645588829537545698.Spec : Prop :=
  ∀ n, P14645588829537545698.a n = (A028069 n : ℚ)

end A028069

/-! ## A028069.P5702034615850510347

`2*A021694(n)-A021474(n)`
-/

namespace A028069.P5702034615850510347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021694 n - A021474 n

end

end A028069.P5702034615850510347

namespace A028069

/-- `2*A021694(n)-A021474(n)` -/
def P5702034615850510347.Spec : Prop :=
  ∀ n, P5702034615850510347.a n = A028069 n

end A028069

/-! ## A028069.P6753055359194980577

`2*A028062(n)-A028060(n)`
-/

namespace A028069.P6753055359194980577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028062 n - A028060 n

end

end A028069.P6753055359194980577

namespace A028069

/-- `2*A028062(n)-A028060(n)` -/
def P6753055359194980577.Spec : Prop :=
  ∀ n, P6753055359194980577.a n = A028069 n

end A028069

/-! ## A028069.P5614741466942116669

`A021474(n)+A023540(n)-A021454(n)`
-/

namespace A028069.P5614741466942116669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021474 n + (A023540 n - A021454 n)

end

end A028069.P5614741466942116669

namespace A028069

/-- `A021474(n)+A023540(n)-A021454(n)` -/
def P5614741466942116669.Spec : Prop :=
  ∀ n, P5614741466942116669.a n = A028069 n

end A028069

/-! ## A028069.P5376364540277974146

`A028057(n)+A028077(n)-A028060(n)`
-/

namespace A028069.P5376364540277974146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028057 n + (A028077 n - A028060 n)

end

end A028069.P5376364540277974146

namespace A028069

/-- `A028057(n)+A028077(n)-A028060(n)` -/
def P5376364540277974146.Spec : Prop :=
  ∀ n, P5376364540277974146.a n = A028069 n

end A028069

/-! ## A028069.P10725611500844131190

`A028060(n)+A028091(n)-A028064(n)`
-/

namespace A028069.P10725611500844131190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028060 n + (A028091 n - A028064 n)

end

end A028069.P10725611500844131190

namespace A028069

/-- `A028060(n)+A028091(n)-A028064(n)` -/
def P10725611500844131190.Spec : Prop :=
  ∀ n, P10725611500844131190.a n = A028069 n

end A028069

/-! ## A028069.P9996034376366097647

`A028062(n)+(A028091(n)-A028064(n))/2`
-/

namespace A028069.P9996034376366097647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028062 n : ℚ) + (A028091 n - A028064 n : ℚ) / 2

end

end A028069.P9996034376366097647

namespace A028069

/-- `A028062(n)+(A028091(n)-A028064(n))/2` -/
def P9996034376366097647.Spec : Prop :=
  ∀ n, P9996034376366097647.a n = (A028069 n : ℚ)

end A028069

/-!
# A028070: Expansion of 1/((1-3x)(1-5x)(1-9x)(1-12x)).

The programs for A028070, there is no canonical definition to state claims against.
-/

/-! ## A028070.P4100162156606549302

`2*A021704(n)-A021484(n)`
-/

namespace A028070.P4100162156606549302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021704 n - A021484 n

end

end A028070.P4100162156606549302

/-! ## A028070.P4179819187292228890

`2*A028058(n)-A028055(n)`
-/

namespace A028070.P4179819187292228890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028058 n - A028055 n

end

end A028070.P4179819187292228890

/-! ## A028070.P1780424474235586796

`(A028176(n)+A028058(n))/2`
-/

namespace A028070.P1780424474235586796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028176 n + A028058 n : ℚ) / 2

end

end A028070.P1780424474235586796

/-! ## A028070.P7994346821678886684

`A025936(n)+A025954(n)-A025933(n)`
-/

namespace A028070.P7994346821678886684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025936 n + (A025954 n - A025933 n)

end

end A028070.P7994346821678886684

/-! ## A028070.P8280029342019206945

`A028055(n)-(A028058(n)-A028176(n))`
-/

namespace A028070.P8280029342019206945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028055 n - (A028058 n - A028176 n)

end

end A028070.P8280029342019206945

/-!
# A028071: Expansion of 1/((1-3x)(1-5x)(1-10x)(1-11x)).

The programs for A028071, there is no canonical definition to state claims against.
-/

/-! ## A028071.P9886337301991863930

`A017917(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A028071.P9886337301991863930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017917 n + 10 * a (n - 1)

end

end A028071.P9886337301991863930

/-! ## A028071.P12724025797429404277

`Δ[A021474(n)-A021464(n)]`
-/

namespace A028071.P12724025797429404277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021474 n - A021464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028071.P12724025797429404277

/-! ## A028071.P13481943570424362340

`2*A028069(n)-A028068(n)`
-/

namespace A028071.P13481943570424362340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028069 n - A028068 n

end

end A028071.P13481943570424362340

/-! ## A028071.P2431156139678376328

`(A028127(n)+A028050(n))/2`
-/

namespace A028071.P2431156139678376328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028127 n + A028050 n : ℚ) / 2

end

end A028071.P2431156139678376328

/-! ## A028071.P13490697866287288167

`A028062(n)+A028094(n)-A028068(n)`
-/

namespace A028071.P13490697866287288167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028062 n + (A028094 n - A028068 n)

end

end A028071.P13490697866287288167

/-! ## A028071.P3829998327940648

`2*A028072(n)-A028073(n)`
-/

namespace A028071.P3829998327940648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028072 n - A028073 n

end

end A028071.P3829998327940648

/-!
# A028072: Expansion of 1/((1-3x)(1-5x)(1-10x)(1-12x)).

The programs for A028072, there is no canonical definition to state claims against.
-/

/-! ## A028072.P8552992347455168051

`2*A028067(n)-A028065(n)`
-/

namespace A028072.P8552992347455168051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028067 n - A028065 n

end

end A028072.P8552992347455168051

/-! ## A028072.P2259185122782088361

`(A028073(n)+A028071(n))/2`
-/

namespace A028072.P2259185122782088361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028073 n + A028071 n : ℚ) / 2

end

end A028072.P2259185122782088361

/-! ## A028072.P1217721174996346078

`(A028128(n)+A028051(n))/2`
-/

namespace A028072.P1217721174996346078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028128 n + A028051 n : ℚ) / 2

end

end A028072.P1217721174996346078

/-! ## A028072.P8082008643379434973

`A028046(n)+A028123(n)-A028065(n)`
-/

namespace A028072.P8082008643379434973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028046 n + (A028123 n - A028065 n)

end

end A028072.P8082008643379434973

/-! ## A028072.P11198235039027662672

`A028046(n)+(A028128(n)+A028121(n))/2-A028065(n)`
-/

namespace A028072.P11198235039027662672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028046 n : ℚ) + ((A028128 n + A028121 n : ℚ) / 2 - (A028065 n : ℚ))

end

end A028072.P11198235039027662672

/-! ## A028072.P5450143602807983322

`Δ[(A021724(n)-A021464(n))/7]`
-/

namespace A028072.P5450143602807983322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021724 n - A021464 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028072.P5450143602807983322

/-!
# A028073: Expansion of 1/((1-3x)(1-5x)(1-11x)(1-12x)).

The programs for A028073, there is no canonical definition to state claims against.
-/

/-! ## A028073.P462271459630734618

`Δ[A021484(n)-A021474(n)]`
-/

namespace A028073.P462271459630734618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021484 n - A021474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028073.P462271459630734618

/-! ## A028073.P1407730964542254439

`2*A028072(n)-A028071(n)`
-/

namespace A028073.P1407730964542254439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028072 n - A028071 n

end

end A028073.P1407730964542254439

/-! ## A028073.P3098023082793091051

`A017918(n+1)-A017917(n+1)`
-/

namespace A028073.P3098023082793091051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017918 (n + 1) - A017917 (n + 1)

end

end A028073.P3098023082793091051

/-! ## A028073.P14219248933069801632

`A028057(n)+A028088(n)-A028058(n)`
-/

namespace A028073.P14219248933069801632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028057 n + (A028088 n - A028058 n)

end

end A028073.P14219248933069801632

/-! ## A028073.P14151664666410840906

`A028051(n)+A028128(n)-A028071(n)`
-/

namespace A028073.P14151664666410840906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028051 n + (A028128 n - A028071 n)

end

end A028073.P14151664666410840906

/-!
# A028074: Expansion of 1/((1-3x)(1-6x)(1-7x)(1-8x)).

The programs for A028074, the canonical program `A028074.P14642307180855068707` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028074 has offset 0).

The definition of A028074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028074.P14642307180855068707

`(6*8^(n+3)-15*7^(n+3)+10*6^(n+3)-3^(n+3))/60`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028074

/-- `(6*8^(n+3)-15*7^(n+3)+10*6^(n+3)-3^(n+3))/60` -/
def P14642307180855068707.Spec : Prop :=
  ∀ n, P14642307180855068707.a n = (A028074 n : ℚ)

end A028074

/-! ## A028074.P14844996470918156288

`Δ[A021503(n)-A021494(n)]`
-/

namespace A028074.P14844996470918156288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021503 n - A021494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028074.P14844996470918156288

namespace A028074

/-- `Δ[A021503(n)-A021494(n)]` -/
def P14844996470918156288.Spec : Prop :=
  ∀ n, P14844996470918156288.a n = A028074 n

end A028074

/-! ## A028074.P7812863292299819970

`Δ[A021544(n)-A021503(n)]`
-/

namespace A028074.P7812863292299819970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021544 n - A021503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028074.P7812863292299819970

namespace A028074

/-- `Δ[A021544(n)-A021503(n)]` -/
def P7812863292299819970.Spec : Prop :=
  ∀ n, P7812863292299819970.a n = A028074 n

end A028074

/-! ## A028074.P10846929772442682107

`2*A028038(n)-A028032(n)`
-/

namespace A028074.P10846929772442682107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028038 n - A028032 n

end

end A028074.P10846929772442682107

namespace A028074

/-- `2*A028038(n)-A028032(n)` -/
def P10846929772442682107.Spec : Prop :=
  ∀ n, P10846929772442682107.a n = A028074 n

end A028074

/-! ## A028074.P14527444811376074715

`2*A028059(n)-A028054(n)`
-/

namespace A028074.P14527444811376074715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028059 n - A028054 n

end

end A028074.P14527444811376074715

namespace A028074

/-- `2*A028059(n)-A028054(n)` -/
def P14527444811376074715.Spec : Prop :=
  ∀ n, P14527444811376074715.a n = A028074 n

end A028074

/-! ## A028074.P18028980721591686926

`A017932(n+1)-A017931(n+1)`
-/

namespace A028074.P18028980721591686926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017932 (n + 1) - A017931 (n + 1)

end

end A028074.P18028980721591686926

namespace A028074

/-- `A017932(n+1)-A017931(n+1)` -/
def P18028980721591686926.Spec : Prop :=
  ∀ n, P18028980721591686926.a n = A028074 n

end A028074

/-! ## A028074.P7423948643472639632

`2*A028075(n)-A028079(n)`
-/

namespace A028074.P7423948643472639632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028075 n - A028079 n

end

end A028074.P7423948643472639632

namespace A028074

/-- `2*A028075(n)-A028079(n)` -/
def P7423948643472639632.Spec : Prop :=
  ∀ n, P7423948643472639632.a n = A028074 n

end A028074

/-! ## A028074.P6494308681356558728

`2*A028076(n)-A028090(n)`
-/

namespace A028074.P6494308681356558728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028076 n - A028090 n

end

end A028074.P6494308681356558728

namespace A028074

/-- `2*A028076(n)-A028090(n)` -/
def P6494308681356558728.Spec : Prop :=
  ∀ n, P6494308681356558728.a n = A028074 n

end A028074

/-!
# A028075: Expansion of 1/((1-3x)(1-6x)(1-7x)(1-9x)).

The programs for A028075, the canonical program `A028075.P15754860589753895336` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028075 has offset 0).

The definition of A028075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028075.P15754860589753895336

`(2*9^(n+3)-9*7^(n+3)+8*6^(n+3)-3^(n+3))/72`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028075

/-- `(2*9^(n+3)-9*7^(n+3)+8*6^(n+3)-3^(n+3))/72` -/
def P15754860589753895336.Spec : Prop :=
  ∀ n, P15754860589753895336.a n = (A028075 n : ℚ)

end A028075

/-! ## A028075.P13928191517829365707

`2*A028055(n)-A028053(n)`
-/

namespace A028075.P13928191517829365707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028055 n - A028053 n

end

end A028075.P13928191517829365707

namespace A028075

/-- `2*A028055(n)-A028053(n)` -/
def P13928191517829365707.Spec : Prop :=
  ∀ n, P13928191517829365707.a n = A028075 n

end A028075

/-! ## A028075.P4676459881275185735

`2*A028060(n)-A028055(n)`
-/

namespace A028075.P4676459881275185735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028060 n - A028055 n

end

end A028075.P4676459881275185735

namespace A028075

/-- `2*A028060(n)-A028055(n)` -/
def P4676459881275185735.Spec : Prop :=
  ∀ n, P4676459881275185735.a n = A028075 n

end A028075

/-! ## A028075.P13545600729028913883

`Δ[A021594(n)-A021504(n)]`
-/

namespace A028075.P13545600729028913883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021594 n - A021504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028075.P13545600729028913883

namespace A028075

/-- `Δ[A021594(n)-A021504(n)]` -/
def P13545600729028913883.Spec : Prop :=
  ∀ n, P13545600729028913883.a n = A028075 n

end A028075

/-! ## A028075.P17446141373481559737

`2*A028079(n)-A028089(n)`
-/

namespace A028075.P17446141373481559737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028079 n - A028089 n

end

end A028075.P17446141373481559737

namespace A028075

/-- `2*A028079(n)-A028089(n)` -/
def P17446141373481559737.Spec : Prop :=
  ∀ n, P17446141373481559737.a n = A028075 n

end A028075

/-! ## A028075.P15460198691138189721

`A028074(n)+A028089(n)-A028079(n)`
-/

namespace A028075.P15460198691138189721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028074 n + (A028089 n - A028079 n)

end

end A028075.P15460198691138189721

namespace A028075

/-- `A028074(n)+A028089(n)-A028079(n)` -/
def P15460198691138189721.Spec : Prop :=
  ∀ n, P15460198691138189721.a n = A028075 n

end A028075

/-! ## A028075.P13772810680025505243

`2*A028078(n)-A028095(n)`
-/

namespace A028075.P13772810680025505243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028078 n - A028095 n

end

end A028075.P13772810680025505243

namespace A028075

/-- `2*A028078(n)-A028095(n)` -/
def P13772810680025505243.Spec : Prop :=
  ∀ n, P13772810680025505243.a n = A028075 n

end A028075

/-!
# A028076: Expansion of 1/((1-3x)(1-6x)(1-7x)(1-10x)).

The programs for A028076, the canonical program `A028076.P5201439453501136997` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028076 has offset 0).

The definition of A028076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028076.P5201439453501136997

`(10^(n+3)-7^(n+4)+7*6^(n+3)-3^(n+3))/84`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028076

/-- `(10^(n+3)-7^(n+4)+7*6^(n+3)-3^(n+3))/84` -/
def P5201439453501136997.Spec : Prop :=
  ∀ n, P5201439453501136997.a n = (A028076 n : ℚ)

end A028076

/-! ## A028076.P14631589160093239606

`Δ[A021604(n)-A021514(n)]`
-/

namespace A028076.P14631589160093239606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021604 n - A021514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028076.P14631589160093239606

namespace A028076

/-- `Δ[A021604(n)-A021514(n)]` -/
def P14631589160093239606.Spec : Prop :=
  ∀ n, P14631589160093239606.a n = A028076 n

end A028076

/-! ## A028076.P788297291048813807

`2*A025945(n)-A025937(n)`
-/

namespace A028076.P788297291048813807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025945 n - A025937 n

end

end A028076.P788297291048813807

namespace A028076

/-- `2*A025945(n)-A025937(n)` -/
def P788297291048813807.Spec : Prop :=
  ∀ n, P788297291048813807.a n = A028076 n

end A028076

/-! ## A028076.P15741911845590242706

`2*A028035(n)-A028032(n)`
-/

namespace A028076.P15741911845590242706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028035 n - A028032 n

end

end A028076.P15741911845590242706

namespace A028076

/-- `2*A028035(n)-A028032(n)` -/
def P15741911845590242706.Spec : Prop :=
  ∀ n, P15741911845590242706.a n = A028076 n

end A028076

/-! ## A028076.P4642730416614986889

`2*A028080(n)-A028090(n)`
-/

namespace A028076.P4642730416614986889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028080 n - A028090 n

end

end A028076.P4642730416614986889

namespace A028076

/-- `2*A028080(n)-A028090(n)` -/
def P4642730416614986889.Spec : Prop :=
  ∀ n, P4642730416614986889.a n = A028076 n

end A028076

/-! ## A028076.P4120337405432053342

`A000007(n)+(2*A028080(n))%A028090(n)`
-/

namespace A028076.P4120337405432053342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (2 * A028080 n) (A028090 n)

end

end A028076.P4120337405432053342

namespace A028076

/-- `A000007(n)+(2*A028080(n))%A028090(n)` -/
def P4120337405432053342.Spec : Prop :=
  ∀ n, P4120337405432053342.a n = A028076 n

end A028076

/-! ## A028076.P8598380064792941585

`A028077(n)+A028086(n)-A028096(n)`
-/

namespace A028076.P8598380064792941585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028077 n + (A028086 n - A028096 n)

end

end A028076.P8598380064792941585

namespace A028076

/-- `A028077(n)+A028086(n)-A028096(n)` -/
def P8598380064792941585.Spec : Prop :=
  ∀ n, P8598380064792941585.a n = A028076 n

end A028076

/-!
# A028077: Expansion of 1/((1-3x)(1-6x)(1-7x)(1-11x)).

The programs for A028077, there is no canonical definition to state claims against.
-/

/-! ## A028077.P1864968233790588879

`A020573(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028077.P1864968233790588879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020573 n + 3 * a (n - 1)

end

end A028077.P1864968233790588879

/-! ## A028077.P2017916147683117190

`2*A021614(n)-A021494(n)`
-/

namespace A028077.P2017916147683117190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021614 n - A021494 n

end

end A028077.P2017916147683117190

/-! ## A028077.P10367202458368149407

`A025941(n)+A025946(n)-A025937(n)`
-/

namespace A028077.P10367202458368149407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025941 n + (A025946 n - A025937 n)

end

end A028077.P10367202458368149407

/-! ## A028077.P14512834721849709136

`A028062(n)+A028062(n)-A028057(n)`
-/

namespace A028077.P14512834721849709136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028062 n + (A028062 n - A028057 n)

end

end A028077.P14512834721849709136

/-! ## A028077.P4377024617312227957

`A028057(n)-(A028053(n)-A028057(n))/2`
-/

namespace A028077.P4377024617312227957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028057 n : ℚ) - (A028053 n - A028057 n : ℚ) / 2

end

end A028077.P4377024617312227957

/-! ## A028077.P2938505096044440882

`2*A028062(n)-A028057(n)`
-/

namespace A028077.P2938505096044440882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028062 n - A028057 n

end

end A028077.P2938505096044440882

/-! ## A028077.P8232823735616092114

`(A028084(n)+A028075(n))/2`
-/

namespace A028077.P8232823735616092114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028084 n + A028075 n : ℚ) / 2

end

end A028077.P8232823735616092114

/-! ## A028077.P6086960609569493358

`2*A028081(n)-A028091(n)`
-/

namespace A028077.P6086960609569493358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028081 n - A028091 n

end

end A028077.P6086960609569493358

/-! ## A028077.P7639732281053103940

`A028060(n)+A028069(n)-A028057(n)`
-/

namespace A028077.P7639732281053103940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028060 n + (A028069 n - A028057 n)

end

end A028077.P7639732281053103940

/-!
# A028078: Expansion of 1/((1-3*x)*(1-6*x)*(1-7*x)*(1-12*x)).

The programs for A028078, there is no canonical definition to state claims against.
-/

/-! ## A028078.P6088677635775258654

`Δ[A021629(n)-A021534(n)]`
-/

namespace A028078.P6088677635775258654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021629 n - A021534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028078.P6088677635775258654

/-! ## A028078.P5785711259712813549

`2*A025942(n)-A025937(n)`
-/

namespace A028078.P5785711259712813549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025942 n - A025937 n

end

end A028078.P5785711259712813549

/-! ## A028078.P9871397503380398320

`2*A028063(n)-A028058(n)`
-/

namespace A028078.P9871397503380398320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028063 n - A028058 n

end

end A028078.P9871397503380398320

/-! ## A028078.P10019524443630157186

`2*A028082(n)-A028092(n)`
-/

namespace A028078.P10019524443630157186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028082 n - A028092 n

end

end A028078.P10019524443630157186

/-! ## A028078.P15952416775542558653

`(A028095(n)+A028075(n))/2`
-/

namespace A028078.P15952416775542558653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028095 n + A028075 n : ℚ) / 2

end

end A028078.P15952416775542558653

/-! ## A028078.P2050511878747562025

`A021534(n)+A021629(n)-A021494(n)`
-/

namespace A028078.P2050511878747562025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021534 n + (A021629 n - A021494 n)

end

end A028078.P2050511878747562025

/-! ## A028078.P14787225915758010546

`A028080(n)+A028087(n)-A028092(n)`
-/

namespace A028078.P14787225915758010546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028080 n + (A028087 n - A028092 n)

end

end A028078.P14787225915758010546

/-!
# A028079: Expansion of 1/((1-3x)(1-6x)(1-8x)(1-9x)).

The programs for A028079, the canonical program `A028079.P17034925631279124755` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028079 has offset 0).

The definition of A028079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028079.P17034925631279124755

`(5*9^(n+3)-9*8^(n+3)+5*6^(n+3)-3^(n+3))/90`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028079

/-- `(5*9^(n+3)-9*8^(n+3)+5*6^(n+3)-3^(n+3))/90` -/
def P17034925631279124755.Spec : Prop :=
  ∀ n, P17034925631279124755.a n = (A028079 n : ℚ)

end A028079

/-! ## A028079.P920859132693302016

`A020579(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028079.P920859132693302016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020579 n + 3 * a (n - 1)

end

end A028079.P920859132693302016

namespace A028079

/-- `A020579(n)+3*a(n-1)` -/
def P920859132693302016.Spec : Prop :=
  ∀ n, P920859132693302016.a n = A028079 n

end A028079

/-! ## A028079.P14784621580717572248

`A017933(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A028079.P14784621580717572248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017933 n + 8 * a (n - 1)

end

end A028079.P14784621580717572248

namespace A028079

/-- `A017933(n)+8*a(n-1)` -/
def P14784621580717572248.Spec : Prop :=
  ∀ n, P14784621580717572248.a n = A028079 n

end A028079

/-! ## A028079.P12323282629834043655

`Δ[A021504(n)-A021503(n)]`
-/

namespace A028079.P12323282629834043655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021504 n - A021503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028079.P12323282629834043655

namespace A028079

/-- `Δ[A021504(n)-A021503(n)]` -/
def P12323282629834043655.Spec : Prop :=
  ∀ n, P12323282629834043655.a n = A028079 n

end A028079

/-! ## A028079.P14148399117830644302

`2*A028043(n)-A028034(n)`
-/

namespace A028079.P14148399117830644302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028043 n - A028034 n

end

end A028079.P14148399117830644302

namespace A028079

/-- `2*A028043(n)-A028034(n)` -/
def P14148399117830644302.Spec : Prop :=
  ∀ n, P14148399117830644302.a n = A028079 n

end A028079

/-! ## A028079.P13528075223811875442

`2*A028075(n)-A028074(n)`
-/

namespace A028079.P13528075223811875442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028075 n - A028074 n

end

end A028079.P13528075223811875442

namespace A028079

/-- `2*A028075(n)-A028074(n)` -/
def P13528075223811875442.Spec : Prop :=
  ∀ n, P13528075223811875442.a n = A028079 n

end A028079

/-! ## A028079.P8728436291100659405

`A028074(n)+A028089(n)-A028075(n)`
-/

namespace A028079.P8728436291100659405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028074 n + (A028089 n - A028075 n)

end

end A028079.P8728436291100659405

namespace A028079

/-- `A028074(n)+A028089(n)-A028075(n)` -/
def P8728436291100659405.Spec : Prop :=
  ∀ n, P8728436291100659405.a n = A028079 n

end A028079

/-! ## A028079.P1689389074302987682

`2*A028080(n)-A028083(n)`
-/

namespace A028079.P1689389074302987682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028080 n - A028083 n

end

end A028079.P1689389074302987682

namespace A028079

/-- `2*A028080(n)-A028083(n)` -/
def P1689389074302987682.Spec : Prop :=
  ∀ n, P1689389074302987682.a n = A028079 n

end A028079

/-!
# A028080: Expansion of 1/((1-3x)(1-6x)(1-8x)(1-10x)).

The programs for A028080, there is no canonical definition to state claims against.
-/

/-! ## A028080.P12064389686919857963

`A018069(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A028080.P12064389686919857963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018069 n + 6 * a (n - 1)

end

end A028080.P12064389686919857963

/-! ## A028080.P12999883057927110983

`2*A025949(n)-A025938(n)`
-/

namespace A028080.P12999883057927110983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025949 n - A025938 n

end

end A028080.P12999883057927110983

/-! ## A028080.P5729867884746387397

`2*A028044(n)-A028035(n)`
-/

namespace A028080.P5729867884746387397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028044 n - A028035 n

end

end A028080.P5729867884746387397

/-! ## A028080.P12625959792902373595

`(A028083(n)+A028079(n))/2`
-/

namespace A028080.P12625959792902373595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028083 n + A028079 n : ℚ) / 2

end

end A028080.P12625959792902373595

/-! ## A028080.P11363932505918618135

`(A028090(n)+A028076(n))/2`
-/

namespace A028080.P11363932505918618135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028090 n + A028076 n : ℚ) / 2

end

end A028080.P11363932505918618135

/-! ## A028080.P12978472773975998636

`(A017952(n+1)-A017932(n+1))/2`
-/

namespace A028080.P12978472773975998636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017952 (n + 1) - A017932 (n + 1) : ℚ) / 2

end

end A028080.P12978472773975998636

/-! ## A028080.P2488226460883080168

`A025948(n)+A025952(n)-A025938(n)`
-/

namespace A028080.P2488226460883080168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025948 n + (A025952 n - A025938 n)

end

end A028080.P2488226460883080168

/-! ## A028080.P11354429871632667267

`A028035(n)+A028044(n)-A028033(n)`
-/

namespace A028080.P11354429871632667267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028035 n + (A028044 n - A028033 n)

end

end A028080.P11354429871632667267

/-! ## A028080.P16505924259246485258

`2*A028082(n)-A028087(n)`
-/

namespace A028080.P16505924259246485258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028082 n - A028087 n

end

end A028080.P16505924259246485258

/-!
# A028081: Expansion of 1/((1-3x)(1-6x)(1-8x)(1-11x)).

The programs for A028081, the canonical program `A028081.P3928408445716120454` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028081 has offset 0).

The definition of A028081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028081.P3928408445716120454

`(11^(n+3)-4*8^(n+3)+4*6^(n+3)-3^(n+3))/120`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028081

/-- `(11^(n+3)-4*8^(n+3)+4*6^(n+3)-3^(n+3))/120` -/
def P3928408445716120454.Spec : Prop :=
  ∀ n, P3928408445716120454.a n = (A028081 n : ℚ)

end A028081

/-! ## A028081.P11603561400217027443

`A020593(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028081.P11603561400217027443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020593 n + 3 * a (n - 1)

end

end A028081.P11603561400217027443

namespace A028081

/-- `A020593(n)+3*a(n-1)` -/
def P11603561400217027443.Spec : Prop :=
  ∀ n, P11603561400217027443.a n = A028081 n

end A028081

/-! ## A028081.P7909451864258762331

`2*A021664(n)-A021503(n)`
-/

namespace A028081.P7909451864258762331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021664 n - A021503 n

end

end A028081.P7909451864258762331

namespace A028081

/-- `2*A021664(n)-A021503(n)` -/
def P7909451864258762331.Spec : Prop :=
  ∀ n, P7909451864258762331.a n = A028081 n

end A028081

/-! ## A028081.P8716798378057689481

`2*A028057(n)-A028054(n)`
-/

namespace A028081.P8716798378057689481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028057 n - A028054 n

end

end A028081.P8716798378057689481

namespace A028081

/-- `2*A028057(n)-A028054(n)` -/
def P8716798378057689481.Spec : Prop :=
  ∀ n, P8716798378057689481.a n = A028081 n

end A028081

/-! ## A028081.P4133479501604435008

`A028045(n)+A028045(n)-A028036(n)`
-/

namespace A028081.P4133479501604435008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028045 n + (A028045 n - A028036 n)

end

end A028081.P4133479501604435008

namespace A028081

/-- `A028045(n)+A028045(n)-A028036(n)` -/
def P4133479501604435008.Spec : Prop :=
  ∀ n, P4133479501604435008.a n = A028081 n

end A028081

/-! ## A028081.P4859777672926667789

`2*A028045(n)-A028036(n)`
-/

namespace A028081.P4859777672926667789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028045 n - A028036 n

end

end A028081.P4859777672926667789

namespace A028081

/-- `2*A028045(n)-A028036(n)` -/
def P4859777672926667789.Spec : Prop :=
  ∀ n, P4859777672926667789.a n = A028081 n

end A028081

/-! ## A028081.P7482603479838615276

`A028079(n)+A028100(n)-A028084(n)`
-/

namespace A028081.P7482603479838615276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028079 n + (A028100 n - A028084 n)

end

end A028081.P7482603479838615276

namespace A028081

/-- `A028079(n)+A028100(n)-A028084(n)` -/
def P7482603479838615276.Spec : Prop :=
  ∀ n, P7482603479838615276.a n = A028081 n

end A028081

/-!
# A028082: Expansion of 1/((1-3x)(1-6x)(1-8x)(1-12x)).

The programs for A028082, there is no canonical definition to state claims against.
-/

/-! ## A028082.P4856465034793219746

`a(n-1)+A020594(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A028082.P4856465034793219746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020594 n + 2 * a (n - 1))

end

end A028082.P4856465034793219746

/-! ## A028082.P16451370284708525750

`2*A028037(n)-A028033(n)`
-/

namespace A028082.P16451370284708525750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028037 n - A028033 n

end

end A028082.P16451370284708525750

/-! ## A028082.P2693622988214067959

`2*A028046(n)-A028037(n)`
-/

namespace A028082.P2693622988214067959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028046 n - A028037 n

end

end A028082.P2693622988214067959

/-! ## A028082.P11810895351130296657

`(A028087(n)+A028080(n))/2`
-/

namespace A028082.P11810895351130296657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028087 n + A028080 n : ℚ) / 2

end

end A028082.P11810895351130296657

/-! ## A028082.P9541426207079599858

`(A028092(n)+A028078(n))/2`
-/

namespace A028082.P9541426207079599858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028092 n + A028078 n : ℚ) / 2

end

end A028082.P9541426207079599858

/-! ## A028082.P6410908375855320513

`2*A028087(n)-A028103(n)`
-/

namespace A028082.P6410908375855320513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028087 n - A028103 n

end

end A028082.P6410908375855320513

/-! ## A028082.P863097740569996952

`A025942(n)+A025951(n)-A025938(n)`
-/

namespace A028082.P863097740569996952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025942 n + (A025951 n - A025938 n)

end

end A028082.P863097740569996952

/-! ## A028082.P11678760062257426974

`A028086(n)+A028088(n)-A028103(n)`
-/

namespace A028082.P11678760062257426974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028086 n + (A028088 n - A028103 n)

end

end A028082.P11678760062257426974

/-! ## A028082.P14656461301595044525

`A028083(n)+A028103(n)-A028101(n)`
-/

namespace A028082.P14656461301595044525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028083 n + (A028103 n - A028101 n)

end

end A028082.P14656461301595044525

/-! ## A028082.P1888764121012410049

`A028083(n)+A028106(n)-A028103(n)`
-/

namespace A028082.P1888764121012410049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028083 n + (A028106 n - A028103 n)

end

end A028082.P1888764121012410049

/-!
# A028083: Expansion of 1/((1-3x)(1-6x)(1-9x)(1-10x)).

The programs for A028083, there is no canonical definition to state claims against.
-/

/-! ## A028083.P12813269110944904008

`A017933(n)+20*a(n-1)/2` with `a(0)=1`
-/

namespace A028083.P12813269110944904008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A017933 n : ℚ) + 20 * a (n - 1) / 2

end

end A028083.P12813269110944904008

/-! ## A028083.P13135835815737030377

`Δ[A021514(n)-A021504(n)]`
-/

namespace A028083.P13135835815737030377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021514 n - A021504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028083.P13135835815737030377

/-! ## A028083.P11480013791810636201

`2*A025952(n)-A025939(n)`
-/

namespace A028083.P11480013791810636201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025952 n - A025939 n

end

end A028083.P11480013791810636201

/-! ## A028083.P4039260949549369618

`2*A028080(n)-A028079(n)`
-/

namespace A028083.P4039260949549369618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028080 n - A028079 n

end

end A028083.P4039260949549369618

/-! ## A028083.P8581208312520379546

`(A028099(n)+A028079(n))/2`
-/

namespace A028083.P8581208312520379546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028099 n + A028079 n : ℚ) / 2

end

end A028083.P8581208312520379546

/-! ## A028083.P11937847376069668952

`Δ[A021514(n)]-A017933(n+1)`
-/

namespace A028083.P11937847376069668952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A017933 (n + 1)

end

end A028083.P11937847376069668952

/-! ## A028083.P14737330504957536059

`A017952(n+1)-A017933(n+1)`
-/

namespace A028083.P14737330504957536059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017952 (n + 1) - A017933 (n + 1)

end

end A028083.P14737330504957536059

/-! ## A028083.P6206436709972717194

`Δ[A021514(n)-A017933(n)]-A017933(n)`
-/

namespace A028083.P6206436709972717194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021514 n - A017933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A017933 n

end

end A028083.P6206436709972717194

/-!
# A028084: Expansion of 1/((1-3x)(1-6x)(1-9x)(1-11x)).

The programs for A028084, there is no canonical definition to state claims against.
-/

/-! ## A028084.P7262924826387132803

`A020606(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028084.P7262924826387132803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020606 n + 3 * a (n - 1)

end

end A028084.P7262924826387132803

/-! ## A028084.P9874268457600393032

`A017953(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A028084.P9874268457600393032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017953 n + 9 * a (n - 1)

end

end A028084.P9874268457600393032

/-! ## A028084.P13049683327577367893

`2*A021694(n)-A021504(n)`
-/

namespace A028084.P13049683327577367893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021694 n - A021504 n

end

end A028084.P13049683327577367893

/-! ## A028084.P10625148425978200160

`2*A028077(n)-A028075(n)`
-/

namespace A028084.P10625148425978200160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028077 n - A028075 n

end

end A028084.P10625148425978200160

/-! ## A028084.P3141228849793731042

`(A028086(n)+A028083(n))/2`
-/

namespace A028084.P3141228849793731042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028086 n + A028083 n : ℚ) / 2

end

end A028084.P3141228849793731042

/-! ## A028084.P12442413454010217851

`A021684(n)+A021714(n)-A021504(n)`
-/

namespace A028084.P12442413454010217851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021684 n + (A021714 n - A021504 n)

end

end A028084.P12442413454010217851

/-! ## A028084.P16077438078712321564

`A028036(n)+A028048(n)-A028034(n)`
-/

namespace A028084.P16077438078712321564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028036 n + (A028048 n - A028034 n)

end

end A028084.P16077438078712321564

/-!
# A028085: Expansion of 1/((1-3x)(1-6x)(1-9x)(1-12x)).

The programs for A028085, the canonical program `A028085.P4564347766142793042` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028085 has offset 0).

The definition of A028085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028085.P4564347766142793042

`(12^(n+3)-3*9^(n+3)+3*6^(n+3)-3^(n+3))/162`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028085

/-- `(12^(n+3)-3*9^(n+3)+3*6^(n+3)-3^(n+3))/162` -/
def P4564347766142793042.Spec : Prop :=
  ∀ n, P4564347766142793042.a n = (A028085 n : ℚ)

end A028085

/-! ## A028085.P9624048099145491607

`3^n*∑[A016269(n)]`
-/

namespace A028085.P9624048099145491607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028085.P9624048099145491607

namespace A028085

/-- `3^n*∑[A016269(n)]` -/
def P9624048099145491607.Spec : Prop :=
  ∀ n, P9624048099145491607.a n = A028085 n

end A028085

/-! ## A028085.P11342165686073450700

`3^n*A000453(n+4)`
-/

namespace A028085.P11342165686073450700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000453 (n + 4)

end

end A028085.P11342165686073450700

namespace A028085

/-- `3^n*A000453(n+4)` -/
def P11342165686073450700.Spec : Prop :=
  ∀ n, P11342165686073450700.a n = A028085 n

end A028085

/-! ## A028085.P17151947016469726280

`3^n*∑[∑[A027650(n)]]`
-/

namespace A028085.P17151947016469726280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028085.P17151947016469726280

namespace A028085

/-- `3^n*∑[∑[A027650(n)]]` -/
def P17151947016469726280.Spec : Prop :=
  ∀ n, P17151947016469726280.a n = A028085 n

end A028085

/-! ## A028085.P3127189336474611085

`∑[A016269(n)]*A000244(n)`
-/

namespace A028085.P3127189336474611085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A028085.P3127189336474611085

namespace A028085

/-- `∑[A016269(n)]*A000244(n)` -/
def P3127189336474611085.Spec : Prop :=
  ∀ n, P3127189336474611085.a n = A028085 n

end A028085

/-! ## A028085.P12363080201833761899

`∑[∑[A027650(n)]]*A000244(n)`
-/

namespace A028085.P12363080201833761899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A028085.P12363080201833761899

namespace A028085

/-- `∑[∑[A027650(n)]]*A000244(n)` -/
def P12363080201833761899.Spec : Prop :=
  ∀ n, P12363080201833761899.a n = A028085 n

end A028085

/-! ## A028085.P10593765666950708860

`A000453(n+4)*A254006(2*n)`
-/

namespace A028085.P10593765666950708860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4) * A254006 (2 * n)

end

end A028085.P10593765666950708860

namespace A028085

/-- `A000453(n+4)*A254006(2*n)` -/
def P10593765666950708860.Spec : Prop :=
  ∀ n, P10593765666950708860.a n = A028085 n

end A028085

/-! ## A028085.P5322936163002498422

`∑[A016269(n)]*A166552(2*n+1)`
-/

namespace A028085.P5322936163002498422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A166552 (2 * n + 1)

end

end A028085.P5322936163002498422

namespace A028085

/-- `∑[A016269(n)]*A166552(2*n+1)` -/
def P5322936163002498422.Spec : Prop :=
  ∀ n, P5322936163002498422.a n = A028085 n

end A028085

/-! ## A028085.P18210786563861103226

`∑[A038721(n+1)/2]*A000244(n)`
-/

namespace A028085.P18210786563861103226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038721 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000244 n : ℚ)

end

end A028085.P18210786563861103226

namespace A028085

/-- `∑[A038721(n+1)/2]*A000244(n)` -/
def P18210786563861103226.Spec : Prop :=
  ∀ n, P18210786563861103226.a n = (A028085 n : ℚ)

end A028085

/-! ## A028085.P17302908514862196655

`A000453(n+4)*A013620(A000096(n))`
-/

namespace A028085.P17302908514862196655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4) * A013620 (A000096 n).toNat

end

end A028085.P17302908514862196655

namespace A028085

/-- `A000453(n+4)*A013620(A000096(n))` -/
def P17302908514862196655.Spec : Prop :=
  ∀ n, P17302908514862196655.a n = A028085 n

end A028085

/-!
# A028086: Expansion of 1/((1-3x)(1-6x)(1-10x)(1-11x)).

The programs for A028086, there is no canonical definition to state claims against.
-/

/-! ## A028086.P7621253873207384410

`Δ[A021524(n)-A021514(n)]`
-/

namespace A028086.P7621253873207384410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021524 n - A021514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028086.P7621253873207384410

/-! ## A028086.P11999908857325367757

`2*A025955(n)-A025941(n)`
-/

namespace A028086.P11999908857325367757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025955 n - A025941 n

end

end A028086.P11999908857325367757

/-! ## A028086.P4556779848067085344

`2*A028084(n)-A028083(n)`
-/

namespace A028086.P4556779848067085344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028084 n - A028083 n

end

end A028086.P4556779848067085344

/-! ## A028086.P10692792985054412773

`A025955(n)+A028000(n)-A025952(n)`
-/

namespace A028086.P10692792985054412773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025955 n + (A028000 n - A025952 n)

end

end A028086.P10692792985054412773

/-! ## A028086.P14225423478616875555

`A028076(n)+A028096(n)-A028077(n)`
-/

namespace A028086.P14225423478616875555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028076 n + (A028096 n - A028077 n)

end

end A028086.P14225423478616875555

/-! ## A028086.P1882878905251695380

`2*A028087(n)-A028088(n)`
-/

namespace A028086.P1882878905251695380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028087 n - A028088 n

end

end A028086.P1882878905251695380

/-!
# A028087: Expansion of 1/((1-3x)(1-6x)(1-10x)(1-12x)).

The programs for A028087, there is no canonical definition to state claims against.
-/

/-! ## A028087.P2607816036243172110

`2*A025956(n)-A025942(n)`
-/

namespace A028087.P2607816036243172110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025956 n - A025942 n

end

end A028087.P2607816036243172110

/-! ## A028087.P3155642757395490423

`2*A028082(n)-A028080(n)`
-/

namespace A028087.P3155642757395490423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028082 n - A028080 n

end

end A028087.P3155642757395490423

/-! ## A028087.P6879410949569988366

`(A028088(n)+A028086(n))/2`
-/

namespace A028087.P6879410949569988366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028088 n + A028086 n : ℚ) / 2

end

end A028087.P6879410949569988366

/-! ## A028087.P7497238215381766583

`(A028106(n)+A028083(n))/2`
-/

namespace A028087.P7497238215381766583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028106 n + A028083 n : ℚ) / 2

end

end A028087.P7497238215381766583

/-! ## A028087.P13705729658278845603

`A025955(n)+A025957(n)-A025942(n)`
-/

namespace A028087.P13705729658278845603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025955 n + (A025957 n - A025942 n)

end

end A028087.P13705729658278845603

/-! ## A028087.P6865827668249286040

`A028078(n)+A028092(n)-A028080(n)`
-/

namespace A028087.P6865827668249286040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028078 n + (A028092 n - A028080 n)

end

end A028087.P6865827668249286040

/-!
# A028088: Expansion of 1/((1-3x)(1-6x)(1-11x)(1-12x)).

The programs for A028088, there is no canonical definition to state claims against.
-/

/-! ## A028088.P14031904702227753232

`Δ[A021534(n)-A021524(n)]`
-/

namespace A028088.P14031904702227753232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021534 n - A021524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028088.P14031904702227753232

/-! ## A028088.P6955469390653953128

`2*A021734(n)-A021534(n)`
-/

namespace A028088.P6955469390653953128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021734 n - A021534 n

end

end A028088.P6955469390653953128

/-! ## A028088.P17356074667134116827

`2*A028087(n)-A028086(n)`
-/

namespace A028088.P17356074667134116827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028087 n - A028086 n

end

end A028088.P17356074667134116827

/-! ## A028088.P11595070155537129048

`A028058(n)+A028073(n)-A028057(n)`
-/

namespace A028088.P11595070155537129048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028058 n + (A028073 n - A028057 n)

end

end A028088.P11595070155537129048

/-! ## A028088.P254977037535938467

`A028077(n)+A028098(n)-A028078(n)`
-/

namespace A028088.P254977037535938467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028077 n + (A028098 n - A028078 n)

end

end A028088.P254977037535938467

/-!
# A028089: Expansion of 1/((1-3x)(1-7x)(1-8x)(1-9x)).

The programs for A028089, the canonical program `A028089.P7234174416746759796` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028089 has offset 0).

The definition of A028089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028089.P7234174416746759796

`(10*9^(n+3)-24*8^(n+3)+15*7^(n+3)-3^(n+3))/120`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028089

/-- `(10*9^(n+3)-24*8^(n+3)+15*7^(n+3)-3^(n+3))/120` -/
def P7234174416746759796.Spec : Prop :=
  ∀ n, P7234174416746759796.a n = (A028089 n : ℚ)

end A028089

/-! ## A028089.P11621409732478437114

`Δ[A021594(n)-A021544(n)]`
-/

namespace A028089.P11621409732478437114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021594 n - A021544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028089.P11621409732478437114

namespace A028089

/-- `Δ[A021594(n)-A021544(n)]` -/
def P11621409732478437114.Spec : Prop :=
  ∀ n, P11621409732478437114.a n = A028089 n

end A028089

/-! ## A028089.P13256586952648458867

`Δ[A021634(n)-A021594(n)]`
-/

namespace A028089.P13256586952648458867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021634 n - A021594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028089.P13256586952648458867

namespace A028089

/-- `Δ[A021634(n)-A021594(n)]` -/
def P13256586952648458867.Spec : Prop :=
  ∀ n, P13256586952648458867.a n = A028089 n

end A028089

/-! ## A028089.P13440220251796482619

`2*A028064(n)-A028059(n)`
-/

namespace A028089.P13440220251796482619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028064 n - A028059 n

end

end A028089.P13440220251796482619

namespace A028089

/-- `2*A028064(n)-A028059(n)` -/
def P13440220251796482619.Spec : Prop :=
  ∀ n, P13440220251796482619.a n = A028089 n

end A028089

/-! ## A028089.P13079299506082932855

`2*A028079(n)-A028075(n)`
-/

namespace A028089.P13079299506082932855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028079 n - A028075 n

end

end A028089.P13079299506082932855

namespace A028089

/-- `2*A028079(n)-A028075(n)` -/
def P13079299506082932855.Spec : Prop :=
  ∀ n, P13079299506082932855.a n = A028089 n

end A028089

/-! ## A028089.P13535362947882814474

`A017998(n+1)-A017997(n+1)`
-/

namespace A028089.P13535362947882814474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017998 (n + 1) - A017997 (n + 1)

end

end A028089.P13535362947882814474

namespace A028089

/-- `A017998(n+1)-A017997(n+1)` -/
def P13535362947882814474.Spec : Prop :=
  ∀ n, P13535362947882814474.a n = A028089 n

end A028089

/-! ## A028089.P1337910164188460154

`2*A028090(n)-A028093(n)`
-/

namespace A028089.P1337910164188460154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028090 n - A028093 n

end

end A028089.P1337910164188460154

namespace A028089

/-- `2*A028090(n)-A028093(n)` -/
def P1337910164188460154.Spec : Prop :=
  ∀ n, P1337910164188460154.a n = A028089 n

end A028089

/-! ## A028089.P12355237351115228913

`2*A028091(n)-A028100(n)`
-/

namespace A028089.P12355237351115228913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028091 n - A028100 n

end

end A028089.P12355237351115228913

namespace A028089

/-- `2*A028091(n)-A028100(n)` -/
def P12355237351115228913.Spec : Prop :=
  ∀ n, P12355237351115228913.a n = A028089 n

end A028089

/-!
# A028090: Expansion of 1/((1-3x)(1-7x)(1-8x)(1-10x)).

The programs for A028090, the canonical program `A028090.P10288038321226916636` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028090 has offset 0).

The definition of A028090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028090.P10288038321226916636

`(10^(n+4)-42*8^(n+3)+5*7^(n+4)-3^(n+4))/420`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028090

/-- `(10^(n+4)-42*8^(n+3)+5*7^(n+4)-3^(n+4))/420` -/
def P10288038321226916636.Spec : Prop :=
  ∀ n, P10288038321226916636.a n = (A028090 n : ℚ)

end A028090

/-! ## A028090.P10896225510037135383

`Δ[A021644(n)-A021604(n)]`
-/

namespace A028090.P10896225510037135383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021644 n - A021604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028090.P10896225510037135383

namespace A028090

/-- `Δ[A021644(n)-A021604(n)]` -/
def P10896225510037135383.Spec : Prop :=
  ∀ n, P10896225510037135383.a n = A028090 n

end A028090

/-! ## A028090.P5120422436272423283

`2*A028076(n)-A028074(n)`
-/

namespace A028090.P5120422436272423283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028076 n - A028074 n

end

end A028090.P5120422436272423283

namespace A028090

/-- `2*A028076(n)-A028074(n)` -/
def P5120422436272423283.Spec : Prop :=
  ∀ n, P5120422436272423283.a n = A028090 n

end A028090

/-! ## A028090.P10412067469016266051

`2*A028080(n)-A028076(n)`
-/

namespace A028090.P10412067469016266051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028080 n - A028076 n

end

end A028090.P10412067469016266051

namespace A028090

/-- `2*A028080(n)-A028076(n)` -/
def P10412067469016266051.Spec : Prop :=
  ∀ n, P10412067469016266051.a n = A028090 n

end A028090

/-! ## A028090.P18265673696572077531

`A028061(n)+A028065(n)-A028059(n)`
-/

namespace A028090.P18265673696572077531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028061 n + (A028065 n - A028059 n)

end

end A028090.P18265673696572077531

namespace A028090

/-- `A028061(n)+A028065(n)-A028059(n)` -/
def P18265673696572077531.Spec : Prop :=
  ∀ n, P18265673696572077531.a n = A028090 n

end A028090

/-! ## A028090.P688777821192330571

`2*A028092(n)-A028097(n)`
-/

namespace A028090.P688777821192330571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028092 n - A028097 n

end

end A028090.P688777821192330571

namespace A028090

/-- `2*A028092(n)-A028097(n)` -/
def P688777821192330571.Spec : Prop :=
  ∀ n, P688777821192330571.a n = A028090 n

end A028090

/-!
# A028091: Expansion of 1/((1-3x)(1-7x)(1-8x)(1-11x)).

The programs for A028091, the canonical program `A028091.P9287121259074471476` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028091 has offset 0).

The definition of A028091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028091.P9287121259074471476

`(5*11^(n+3)-32*8^(n+3)+30*7^(n+3)-3^(n+4))/480`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028091

/-- `(5*11^(n+3)-32*8^(n+3)+30*7^(n+3)-3^(n+4))/480` -/
def P9287121259074471476.Spec : Prop :=
  ∀ n, P9287121259074471476.a n = (A028091 n : ℚ)

end A028091

/-! ## A028091.P665359494028338284

`Δ[A021664(n)-A021614(n)]`
-/

namespace A028091.P665359494028338284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021664 n - A021614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028091.P665359494028338284

namespace A028091

/-- `Δ[A021664(n)-A021614(n)]` -/
def P665359494028338284.Spec : Prop :=
  ∀ n, P665359494028338284.a n = A028091 n

end A028091

/-! ## A028091.P7886457484841050256

`2*A028081(n)-A028077(n)`
-/

namespace A028091.P7886457484841050256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028081 n - A028077 n

end

end A028091.P7886457484841050256

namespace A028091

/-- `2*A028081(n)-A028077(n)` -/
def P7886457484841050256.Spec : Prop :=
  ∀ n, P7886457484841050256.a n = A028091 n

end A028091

/-! ## A028091.P12201344211538243061

`A028041(n)+A028045(n)-A028038(n)`
-/

namespace A028091.P12201344211538243061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028041 n + (A028045 n - A028038 n)

end

end A028091.P12201344211538243061

namespace A028091

/-- `A028041(n)+A028045(n)-A028038(n)` -/
def P12201344211538243061.Spec : Prop :=
  ∀ n, P12201344211538243061.a n = A028091 n

end A028091

/-! ## A028091.P1220527806316265175

`A028057(n)+A028077(n)-A028059(n)`
-/

namespace A028091.P1220527806316265175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028057 n + (A028077 n - A028059 n)

end

end A028091.P1220527806316265175

namespace A028091

/-- `A028057(n)+A028077(n)-A028059(n)` -/
def P1220527806316265175.Spec : Prop :=
  ∀ n, P1220527806316265175.a n = A028091 n

end A028091

/-! ## A028091.P14177864634525105460

`A028060(n)+A028069(n)-A028059(n)`
-/

namespace A028091.P14177864634525105460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028060 n + (A028069 n - A028059 n)

end

end A028091.P14177864634525105460

namespace A028091

/-- `A028060(n)+A028069(n)-A028059(n)` -/
def P14177864634525105460.Spec : Prop :=
  ∀ n, P14177864634525105460.a n = A028091 n

end A028091

/-! ## A028091.P14570511590743088611

`A028064(n)+A028069(n)-A028060(n)`
-/

namespace A028091.P14570511590743088611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028064 n + (A028069 n - A028060 n)

end

end A028091.P14570511590743088611

namespace A028091

/-- `A028064(n)+A028069(n)-A028060(n)` -/
def P14570511590743088611.Spec : Prop :=
  ∀ n, P14570511590743088611.a n = A028091 n

end A028091

/-!
# A028092: Expansion of 1/((1-3x)(1-7x)(1-8x)(1-12x)).

The programs for A028092, the canonical program `A028092.P1923259636261706114` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028092 has offset 0).

The definition of A028092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028092.P1923259636261706114

`(12^(n+3)-9*8^(n+3)+9*7^(n+3)-3^(n+3))/180`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028092

/-- `(12^(n+3)-9*8^(n+3)+9*7^(n+3)-3^(n+3))/180` -/
def P1923259636261706114.Spec : Prop :=
  ∀ n, P1923259636261706114.a n = (A028092 n : ℚ)

end A028092

/-! ## A028092.P13232734287207371419

`Δ[A021674(n)-A021629(n)]`
-/

namespace A028092.P13232734287207371419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021674 n - A021629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028092.P13232734287207371419

namespace A028092

/-- `Δ[A021674(n)-A021629(n)]` -/
def P13232734287207371419.Spec : Prop :=
  ∀ n, P13232734287207371419.a n = A028092 n

end A028092

/-! ## A028092.P16879757885340847939

`2*A025951(n)-A025943(n)`
-/

namespace A028092.P16879757885340847939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025951 n - A025943 n

end

end A028092.P16879757885340847939

namespace A028092

/-- `2*A025951(n)-A025943(n)` -/
def P16879757885340847939.Spec : Prop :=
  ∀ n, P16879757885340847939.a n = A028092 n

end A028092

/-! ## A028092.P1358135697915091990

`2*A028042(n)-A028038(n)`
-/

namespace A028092.P1358135697915091990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028042 n - A028038 n

end

end A028092.P1358135697915091990

namespace A028092

/-- `2*A028042(n)-A028038(n)` -/
def P1358135697915091990.Spec : Prop :=
  ∀ n, P1358135697915091990.a n = A028092 n

end A028092

/-! ## A028092.P4033403707613643373

`2*A028082(n)-A028078(n)`
-/

namespace A028092.P4033403707613643373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028082 n - A028078 n

end

end A028092.P4033403707613643373

namespace A028092

/-- `2*A028082(n)-A028078(n)` -/
def P4033403707613643373.Spec : Prop :=
  ∀ n, P4033403707613643373.a n = A028092 n

end A028092

/-! ## A028092.P4254359633039307627

`A025949(n)+A025956(n)-A025943(n)`
-/

namespace A028092.P4254359633039307627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025949 n + (A025956 n - A025943 n)

end

end A028092.P4254359633039307627

namespace A028092

/-- `A025949(n)+A025956(n)-A025943(n)` -/
def P4254359633039307627.Spec : Prop :=
  ∀ n, P4254359633039307627.a n = A028092 n

end A028092

/-! ## A028092.P5764088945805533895

`A028080(n)+A028087(n)-A028078(n)`
-/

namespace A028092.P5764088945805533895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028080 n + (A028087 n - A028078 n)

end

end A028092.P5764088945805533895

namespace A028092

/-- `A028080(n)+A028087(n)-A028078(n)` -/
def P5764088945805533895.Spec : Prop :=
  ∀ n, P5764088945805533895.a n = A028092 n

end A028092

/-!
# A028093: Expansion of 1/((1-3x)(1-7x)(1-9x)(1-10x)).

The programs for A028093, the canonical program `A028093.P9886859239768555841` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028093 has offset 0).

The definition of A028093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028093.P9886859239768555841

`(8*10^(n+3)-14*9^(n+3)+7^(n+4)-3^(n+3))/168`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028093

/-- `(8*10^(n+3)-14*9^(n+3)+7^(n+4)-3^(n+3))/168` -/
def P9886859239768555841.Spec : Prop :=
  ∀ n, P9886859239768555841.a n = (A028093 n : ℚ)

end A028093

/-! ## A028093.P10739712922094135740

`Δ[A021604(n)-A021594(n)]`
-/

namespace A028093.P10739712922094135740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021604 n - A021594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028093.P10739712922094135740

namespace A028093

/-- `Δ[A021604(n)-A021594(n)]` -/
def P10739712922094135740.Spec : Prop :=
  ∀ n, P10739712922094135740.a n = A028093 n

end A028093

/-! ## A028093.P16204154520169621568

`2*A028047(n)-A028039(n)`
-/

namespace A028093.P16204154520169621568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028047 n - A028039 n

end

end A028093.P16204154520169621568

namespace A028093

/-- `2*A028047(n)-A028039(n)` -/
def P16204154520169621568.Spec : Prop :=
  ∀ n, P16204154520169621568.a n = A028093 n

end A028093

/-! ## A028093.P4117858736411015003

`2*A028068(n)-A028061(n)`
-/

namespace A028093.P4117858736411015003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028068 n - A028061 n

end

end A028093.P4117858736411015003

namespace A028093

/-- `2*A028068(n)-A028061(n)` -/
def P4117858736411015003.Spec : Prop :=
  ∀ n, P4117858736411015003.a n = A028093 n

end A028093

/-! ## A028093.P18029921693720627722

`2*A028090(n)-A028089(n)`
-/

namespace A028093.P18029921693720627722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028090 n - A028089 n

end

end A028093.P18029921693720627722

namespace A028093

/-- `2*A028090(n)-A028089(n)` -/
def P18029921693720627722.Spec : Prop :=
  ∀ n, P18029921693720627722.a n = A028093 n

end A028093

/-! ## A028093.P8219687229212351477

`A017999(n+1)-A017998(n+1)`
-/

namespace A028093.P8219687229212351477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017999 (n + 1) - A017998 (n + 1)

end

end A028093.P8219687229212351477

namespace A028093

/-- `A017999(n+1)-A017998(n+1)` -/
def P8219687229212351477.Spec : Prop :=
  ∀ n, P8219687229212351477.a n = A028093 n

end A028093

/-! ## A028093.P4005091233403148231

`A028076(n)+A028083(n)-A028075(n)`
-/

namespace A028093.P4005091233403148231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028076 n + (A028083 n - A028075 n)

end

end A028093.P4005091233403148231

namespace A028093

/-- `A028076(n)+A028083(n)-A028075(n)` -/
def P4005091233403148231.Spec : Prop :=
  ∀ n, P4005091233403148231.a n = A028093 n

end A028093

/-!
# A028094: Expansion of 1/((1-3x)(1-7x)(1-9x)(1-11x)).

The programs for A028094, the canonical program `A028094.P2023324370129026564` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028094 has offset 0).

The definition of A028094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028094.P2023324370129026564

`(3*11^(n+3)-8*9^(n+3)+6*7^(n+3)-3^(n+3))/192`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028094

/-- `(3*11^(n+3)-8*9^(n+3)+6*7^(n+3)-3^(n+3))/192` -/
def P2023324370129026564.Spec : Prop :=
  ∀ n, P2023324370129026564.a n = (A028094 n : ℚ)

end A028094

/-! ## A028094.P9538869337006634255

`2*A028069(n)-A028062(n)`
-/

namespace A028094.P9538869337006634255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028069 n - A028062 n

end

end A028094.P9538869337006634255

namespace A028094

/-- `2*A028069(n)-A028062(n)` -/
def P9538869337006634255.Spec : Prop :=
  ∀ n, P9538869337006634255.a n = A028094 n

end A028094

/-! ## A028094.P11042125666448263906

`A028062(n)+A028069(n)-A028060(n)`
-/

namespace A028094.P11042125666448263906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028062 n + (A028069 n - A028060 n)

end

end A028094.P11042125666448263906

namespace A028094

/-- `A028062(n)+A028069(n)-A028060(n)` -/
def P11042125666448263906.Spec : Prop :=
  ∀ n, P11042125666448263906.a n = A028094 n

end A028094

/-! ## A028094.P2671965032823142778

`A028068(n)+A028071(n)-A028062(n)`
-/

namespace A028094.P2671965032823142778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028068 n + (A028071 n - A028062 n)

end

end A028094.P2671965032823142778

namespace A028094

/-- `A028068(n)+A028071(n)-A028062(n)` -/
def P2671965032823142778.Spec : Prop :=
  ∀ n, P2671965032823142778.a n = A028094 n

end A028094

/-! ## A028094.P9252546508629389003

`A028062(n)+A028091(n)-A028064(n)`
-/

namespace A028094.P9252546508629389003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028062 n + (A028091 n - A028064 n)

end

end A028094.P9252546508629389003

namespace A028094

/-- `A028062(n)+A028091(n)-A028064(n)` -/
def P9252546508629389003.Spec : Prop :=
  ∀ n, P9252546508629389003.a n = A028094 n

end A028094

/-!
# A028095: Expansion of 1/((1-3x)(1-7x)(1-9x)(1-12x)).

The programs for A028095, there is no canonical definition to state claims against.
-/

/-! ## A028095.P4510826816860017870

`2*A025954(n)-A025944(n)`
-/

namespace A028095.P4510826816860017870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025954 n - A025944 n

end

end A028095.P4510826816860017870

/-! ## A028095.P12682646375466503837

`2*A028070(n)-A028063(n)`
-/

namespace A028095.P12682646375466503837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028070 n - A028063 n

end

end A028095.P12682646375466503837

/-! ## A028095.P6003758419003068957

`2*A028078(n)-A028075(n)`
-/

namespace A028095.P6003758419003068957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028078 n - A028075 n

end

end A028095.P6003758419003068957

/-! ## A028095.P14014010548574242094

`A028042(n)+A028049(n)-A028039(n)`
-/

namespace A028095.P14014010548574242094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028042 n + (A028049 n - A028039 n)

end

end A028095.P14014010548574242094

/-! ## A028095.P14526312670423929465

`A028093(n)+A028106(n)-A028097(n)`
-/

namespace A028095.P14526312670423929465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028093 n + (A028106 n - A028097 n)

end

end A028095.P14526312670423929465

/-! ## A028095.P2776244197956227396

`2*A028098(n)-A028107(n)`
-/

namespace A028095.P2776244197956227396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028098 n - A028107 n

end

end A028095.P2776244197956227396

/-!
# A028096: Expansion of 1/((1-3x)(1-7x)(1-10x)(1-11x)).

The programs for A028096, the canonical program `A028096.P11721842921896235933` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028096 has offset 0).

The definition of A028096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028096.P11721842921896235933

`(21*11^(n+3)-32*10^(n+3)+2*7^(n+4)-3^(n+4))/672`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028096

/-- `(21*11^(n+3)-32*10^(n+3)+2*7^(n+4)-3^(n+4))/672` -/
def P11721842921896235933.Spec : Prop :=
  ∀ n, P11721842921896235933.a n = (A028096 n : ℚ)

end A028096

/-! ## A028096.P2343160962972219017

`Δ[A021614(n)-A021604(n)]`
-/

namespace A028096.P2343160962972219017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021614 n - A021604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028096.P2343160962972219017

namespace A028096

/-- `Δ[A021614(n)-A021604(n)]` -/
def P2343160962972219017.Spec : Prop :=
  ∀ n, P2343160962972219017.a n = A028096 n

end A028096

/-! ## A028096.P7696984827881993037

`2*A028094(n)-A028093(n)`
-/

namespace A028096.P7696984827881993037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028094 n - A028093 n

end

end A028096.P7696984827881993037

namespace A028096

/-- `2*A028094(n)-A028093(n)` -/
def P7696984827881993037.Spec : Prop :=
  ∀ n, P7696984827881993037.a n = A028096 n

end A028096

/-! ## A028096.P6833918014982855089

`A028077(n)+A028086(n)-A028076(n)`
-/

namespace A028096.P6833918014982855089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028077 n + (A028086 n - A028076 n)

end

end A028096.P6833918014982855089

namespace A028096

/-- `A028077(n)+A028086(n)-A028076(n)` -/
def P6833918014982855089.Spec : Prop :=
  ∀ n, P6833918014982855089.a n = A028096 n

end A028096

/-! ## A028096.P1105254591445820772

`A028091(n)+A028100(n)-A028093(n)`
-/

namespace A028096.P1105254591445820772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028091 n + (A028100 n - A028093 n)

end

end A028096.P1105254591445820772

namespace A028096

/-- `A028091(n)+A028100(n)-A028093(n)` -/
def P1105254591445820772.Spec : Prop :=
  ∀ n, P1105254591445820772.a n = A028096 n

end A028096

/-! ## A028096.P9092251183423886765

`2*A028097(n)-A028098(n)`
-/

namespace A028096.P9092251183423886765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028097 n - A028098 n

end

end A028096.P9092251183423886765

namespace A028096

/-- `2*A028097(n)-A028098(n)` -/
def P9092251183423886765.Spec : Prop :=
  ∀ n, P9092251183423886765.a n = A028096 n

end A028096

/-!
# A028097: Expansion of 1/((1-3x)(1-7x)(1-10x)(1-12x)).

The programs for A028097, there is no canonical definition to state claims against.
-/

/-! ## A028097.P10653646326862645183

`2*A025956(n)-A025945(n)`
-/

namespace A028097.P10653646326862645183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025956 n - A025945 n

end

end A028097.P10653646326862645183

/-! ## A028097.P17548856879616191656

`2*A028092(n)-A028090(n)`
-/

namespace A028097.P17548856879616191656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028092 n - A028090 n

end

end A028097.P17548856879616191656

/-! ## A028097.P17545097378253733250

`(A028098(n)+A028096(n))/2`
-/

namespace A028097.P17545097378253733250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028098 n + A028096 n : ℚ) / 2

end

end A028097.P17545097378253733250

/-! ## A028097.P2870842233940734297

`A025955(n)+A025957(n)-A025945(n)`
-/

namespace A028097.P2870842233940734297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025955 n + (A025957 n - A025945 n)

end

end A028097.P2870842233940734297

/-! ## A028097.P1960122955192162971

`A028050(n)+A028052(n)-A028042(n)`
-/

namespace A028097.P1960122955192162971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028050 n + (A028052 n - A028042 n)

end

end A028097.P1960122955192162971

/-! ## A028097.P9414945151337475768

`A028063(n)+A028072(n)-A028061(n)`
-/

namespace A028097.P9414945151337475768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028063 n + (A028072 n - A028061 n)

end

end A028097.P9414945151337475768

/-!
# A028098: Expansion of 1/((1-3x)(1-7x)(1-11x)(1-12x)).

The programs for A028098, there is no canonical definition to state claims against.
-/

/-! ## A028098.P17862916261669817786

`Δ[A021629(n)-A021614(n)]`
-/

namespace A028098.P17862916261669817786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021629 n - A021614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028098.P17862916261669817786

/-! ## A028098.P3285792917389113701

`2*A025957(n)-A025946(n)`
-/

namespace A028098.P3285792917389113701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025957 n - A025946 n

end

end A028098.P3285792917389113701

/-! ## A028098.P2060900765523362780

`2*A028097(n)-A028096(n)`
-/

namespace A028098.P2060900765523362780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028097 n - A028096 n

end

end A028098.P2060900765523362780

/-! ## A028098.P4037469778859556791

`A028078(n)+A028088(n)-A028077(n)`
-/

namespace A028098.P4037469778859556791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028078 n + (A028088 n - A028077 n)

end

end A028098.P4037469778859556791

/-! ## A028098.P4355206346226742193

`A028091(n)+A028104(n)-A028092(n)`
-/

namespace A028098.P4355206346226742193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028091 n + (A028104 n - A028092 n)

end

end A028098.P4355206346226742193

/-!
# A028099: Expansion of 1/((1 - 3*x)*(1 - 8*x)*(1 - 9*x)*(1 - 10*x)).

The programs for A028099, the canonical program `A028099.P1391782388765886958` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028099 has offset 0).

The definition of A028099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028099.P1391782388765886958

`(15*10^(n+3)-35*9^(n+3)+21*8^(n+3)-3^(n+3))/210`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028099

/-- `(15*10^(n+3)-35*9^(n+3)+21*8^(n+3)-3^(n+3))/210` -/
def P1391782388765886958.Spec : Prop :=
  ∀ n, P1391782388765886958.a n = (A028099 n : ℚ)

end A028099

/-! ## A028099.P16433041547869244606

`A018056(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A028099.P16433041547869244606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018056 n + 10 * a (n - 1)

end

end A028099.P16433041547869244606

namespace A028099

/-- `A018056(n)+10*a(n-1)` -/
def P16433041547869244606.Spec : Prop :=
  ∀ n, P16433041547869244606.a n = A028099 n

end A028099

/-! ## A028099.P10484376795660419916

`Δ[A021644(n)-A021634(n)]`
-/

namespace A028099.P10484376795660419916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021644 n - A021634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028099.P10484376795660419916

namespace A028099

/-- `Δ[A021644(n)-A021634(n)]` -/
def P10484376795660419916.Spec : Prop :=
  ∀ n, P10484376795660419916.a n = A028099 n

end A028099

/-! ## A028099.P1363331709213362731

`2*A028083(n)-A028079(n)`
-/

namespace A028099.P1363331709213362731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028083 n - A028079 n

end

end A028099.P1363331709213362731

namespace A028099

/-- `2*A028083(n)-A028079(n)` -/
def P1363331709213362731.Spec : Prop :=
  ∀ n, P1363331709213362731.a n = A028099 n

end A028099

/-! ## A028099.P3326489036844570521

`2*A028093(n)-A028090(n)`
-/

namespace A028099.P3326489036844570521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028093 n - A028090 n

end

end A028099.P3326489036844570521

namespace A028099

/-- `2*A028093(n)-A028090(n)` -/
def P3326489036844570521.Spec : Prop :=
  ∀ n, P3326489036844570521.a n = A028099 n

end A028099

/-! ## A028099.P2212531295770834060

`A018069(n+1)-A018056(n+1)`
-/

namespace A028099.P2212531295770834060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018069 (n + 1) - A018056 (n + 1)

end

end A028099.P2212531295770834060

namespace A028099

/-- `A018069(n+1)-A018056(n+1)` -/
def P2212531295770834060.Spec : Prop :=
  ∀ n, P2212531295770834060.a n = A028099 n

end A028099

/-! ## A028099.P10200297967751792085

`A028090(n)+A028093(n)-A028089(n)`
-/

namespace A028099.P10200297967751792085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028090 n + (A028093 n - A028089 n)

end

end A028099.P10200297967751792085

namespace A028099

/-- `A028090(n)+A028093(n)-A028089(n)` -/
def P10200297967751792085.Spec : Prop :=
  ∀ n, P10200297967751792085.a n = A028099 n

end A028099

/-! ## A028099.P11096662365768272835

`A018090(n+1)-A018069(n+1)`
-/

namespace A028099.P11096662365768272835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018090 (n + 1) - A018069 (n + 1)

end

end A028099.P11096662365768272835

namespace A028099

/-- `A018090(n+1)-A018069(n+1)` -/
def P11096662365768272835.Spec : Prop :=
  ∀ n, P11096662365768272835.a n = A028099 n

end A028099

/-! ## A028099.P13697960404720635416

`2*A028101(n)-A028106(n)`
-/

namespace A028099.P13697960404720635416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028101 n - A028106 n

end

end A028099.P13697960404720635416

namespace A028099

/-- `2*A028101(n)-A028106(n)` -/
def P13697960404720635416.Spec : Prop :=
  ∀ n, P13697960404720635416.a n = A028099 n

end A028099

