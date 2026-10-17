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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A206901: Number of nonisomorphic graded posets with 0 of rank n with no 3-element antichain.

The programs for A206901, the canonical program `A206901.P6810654999995324819` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206901 has offset 0).

The definition of A206901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206901.P6810654999995324819

`7*a(n-1)-10*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206901

/-- `7*a(n-1)-10*a(n-2)+3*a(n-3)` -/
def P6810654999995324819.Spec : Prop :=
  ∀ n, P6810654999995324819.a n = A206901 n

theorem P6810654999995324819.correct : P6810654999995324819.Spec := by
  intro n
  simp only [A206901]

end A206901

/-! ## A206901.P16602628474159973114

`A206950(n)+A206902(n)`
-/

namespace A206901.P16602628474159973114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206950 n + A206902 n

end

end A206901.P16602628474159973114

namespace A206901

/-- `A206950(n)+A206902(n)` -/
def P16602628474159973114.Spec : Prop :=
  ∀ n, P16602628474159973114.a n = A206901 n

end A206901

/-!
# A206902: Number of nonisomorphic graded posets with 0 and uniform Hasse diagram of rank n with no 3-element antichain.

The programs for A206902, the canonical program `A206902.P9792321821529386243` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206902 has offset 0).

The definition of A206902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206902.P9792321821529386243

`6*a(n-1)-7*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=36`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206902

/-- `6*a(n-1)-7*a(n-2)+3*a(n-3)` -/
def P9792321821529386243.Spec : Prop :=
  ∀ n, P9792321821529386243.a n = A206902 n

theorem P9792321821529386243.correct : P9792321821529386243.Spec := by
  intro n
  simp only [A206902]

end A206902

/-! ## A206902.P435888421533124175

`A206901(n)-A206950(n)`
-/

namespace A206902.P435888421533124175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206901 n - A206950 n

end

end A206902.P435888421533124175

namespace A206902

/-- `A206901(n)-A206950(n)` -/
def P435888421533124175.Spec : Prop :=
  ∀ n, P435888421533124175.a n = A206902 n

end A206902

/-!
# A206903: n+[ns/r]+[nt/r], where []=floor, r=3, s=sqrt(3), t=1/s.

The programs for A206903, the canonical program `A206903.P14115896034849611859` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206903 has offset 1).

The definition of A206903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206903.P154374131174885774

`A004773(floor((n+1)/sqrt(3)))+n+1`
-/

namespace A206903.P154374131174885774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 ⌊(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌋.toNat + (n + 1 : ℤ)

end

end A206903.P154374131174885774

namespace A206903

/-- `A004773(floor((n+1)/sqrt(3)))+n+1` -/
def P154374131174885774.Spec : Prop :=
  ∀ n, P154374131174885774.a n = A206903 (n + 1)

end A206903

/-! ## A206903.P14115896034849611859

`A042968(A194979(n+1))+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A206903

/-- `A042968(A194979(n+1))+n` -/
def P14115896034849611859.Spec : Prop :=
  ∀ n, P14115896034849611859.a n = A206903 (n + 1)

theorem P14115896034849611859.correct : P14115896034849611859.Spec := by
  intro n
  simp only [A206903, Nat.add_sub_cancel]

end A206903

/-! ## A206903.P4302156733192286782

`n+1+A004773(A097337(n+1))`
-/

namespace A206903.P4302156733192286782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A004773 (A097337 (n + 1)).toNat

end

end A206903.P4302156733192286782

namespace A206903

/-- `n+1+A004773(A097337(n+1))` -/
def P4302156733192286782.Spec : Prop :=
  ∀ n, P4302156733192286782.a n = A206903 (n + 1)

end A206903

/-! ## A206903.P11895275877518617003

`A186539(n+1)+A002264(A097337(n+1))`
-/

namespace A206903.P11895275877518617003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A002264 (A097337 (n + 1)).toNat

end

end A206903.P11895275877518617003

namespace A206903

/-- `A186539(n+1)+A002264(A097337(n+1))` -/
def P11895275877518617003.Spec : Prop :=
  ∀ n, P11895275877518617003.a n = A206903 (n + 1)

end A206903

/-! ## A206903.P14440085267324503445

`A004396(A005408(A097337(n+1)))+n`
-/

namespace A206903.P14440085267324503445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005408 (A097337 (n + 1)).toNat).toNat + (n : ℤ)

end

end A206903.P14440085267324503445

namespace A206903

/-- `A004396(A005408(A097337(n+1)))+n` -/
def P14440085267324503445.Spec : Prop :=
  ∀ n, P14440085267324503445.a n = A206903 (n + 1)

end A206903

/-!
# A206904: n+[nr/s]+[nt/s], where []=floor, r=3, s=sqrt(3), t=1/s.

The programs for A206904, the canonical program `A206904.P11521771030836579152` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206904 has offset 1).

The definition of A206904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206904.P11521771030836579152

`A180123(n+1)-floor((2*n+1)/3)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A206904

/-- `A180123(n+1)-floor((2*n+1)/3)` -/
def P11521771030836579152.Spec : Prop :=
  ∀ n, P11521771030836579152.a n = A206904 (n + 1)

theorem P11521771030836579152.correct : P11521771030836579152.Spec := by
  intro n
  simp only [A206904, Nat.add_sub_cancel]

end A206904

/-! ## A206904.P3014440162718265261

`A003512(n+1)-(round(2*n/3)+1)`
-/

namespace A206904.P3014440162718265261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1) - (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + 1)

end

end A206904.P3014440162718265261

namespace A206904

/-- `A003512(n+1)-(round(2*n/3)+1)` -/
def P3014440162718265261.Spec : Prop :=
  ∀ n, P3014440162718265261.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P415519063481903096

`∑[A177702(n)+A080757(n)]`
-/

namespace A206904.P415519063481903096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 n + A080757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206904.P415519063481903096

namespace A206904

/-- `∑[A177702(n)+A080757(n)]` -/
def P415519063481903096.Spec : Prop :=
  ∀ n, P415519063481903096.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P17570910364502073431

`A180122(n+1)+A086161(n)`
-/

namespace A206904.P17570910364502073431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) + A086161 n

end

end A206904.P17570910364502073431

namespace A206904

/-- `A180122(n+1)+A086161(n)` -/
def P17570910364502073431.Spec : Prop :=
  ∀ n, P17570910364502073431.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P3212365807024405733

`A022838(n+1)+A004773(n+1)`
-/

namespace A206904.P3212365807024405733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + A004773 (n + 1)

end

end A206904.P3212365807024405733

namespace A206904

/-- `A022838(n+1)+A004773(n+1)` -/
def P3212365807024405733.Spec : Prop :=
  ∀ n, P3212365807024405733.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P5961012123365800213

`A180122(n+1)+A008620(n+1)`
-/

namespace A206904.P5961012123365800213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) + A008620 (n + 1)

end

end A206904.P5961012123365800213

namespace A206904

/-- `A180122(n+1)+A008620(n+1)` -/
def P5961012123365800213.Spec : Prop :=
  ∀ n, P5961012123365800213.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P4825638866831591434

`A002264(n+1)+∑[A007538(n+1)]`
-/

namespace A206904.P4825638866831591434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206904.P4825638866831591434

namespace A206904

/-- `A002264(n+1)+∑[A007538(n+1)]` -/
def P4825638866831591434.Spec : Prop :=
  ∀ n, P4825638866831591434.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P9402311088246095887

`A002264(n+1)+A198081(n+1)+n`
-/

namespace A206904.P9402311088246095887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) + (A198081 (n + 1) + (n : ℤ))

end

end A206904.P9402311088246095887

namespace A206904

/-- `A002264(n+1)+A198081(n+1)+n` -/
def P9402311088246095887.Spec : Prop :=
  ∀ n, P9402311088246095887.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P8697042257308805502

`A188084(2*n+1)-A004396(n)`
-/

namespace A206904.P8697042257308805502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188084 (2 * n + 1) - A004396 n

end

end A206904.P8697042257308805502

namespace A206904

/-- `A188084(2*n+1)-A004396(n)` -/
def P8697042257308805502.Spec : Prop :=
  ∀ n, P8697042257308805502.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P13892023203136454674

`A003511(2*(n+1))+A002264(n+1)`
-/

namespace A206904.P13892023203136454674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * (n + 1)) + A002264 (n + 1)

end

end A206904.P13892023203136454674

namespace A206904

/-- `A003511(2*(n+1))+A002264(n+1)` -/
def P13892023203136454674.Spec : Prop :=
  ∀ n, P13892023203136454674.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P14988353974742788654

`A003511(2*(n+1))+A008620(n+1)-1`
-/

namespace A206904.P14988353974742788654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * (n + 1)) + (A008620 (n + 1) - 1)

end

end A206904.P14988353974742788654

namespace A206904

/-- `A003511(2*(n+1))+A008620(n+1)-1` -/
def P14988353974742788654.Spec : Prop :=
  ∀ n, P14988353974742788654.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P9527504015319472348

`A003512(n+1)-1-A002264(2*n+1)`
-/

namespace A206904.P9527504015319472348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1) - 1 - A002264 (2 * n + 1)

end

end A206904.P9527504015319472348

namespace A206904

/-- `A003512(n+1)-1-A002264(2*n+1)` -/
def P9527504015319472348.Spec : Prop :=
  ∀ n, P9527504015319472348.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P12343356582579113048

`A322042(A004275(n+2))+A022838(n+1)`
-/

namespace A206904.P12343356582579113048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (A004275 (n + 2)).toNat + A022838 (n + 1)

end

end A206904.P12343356582579113048

namespace A206904

/-- `A322042(A004275(n+2))+A022838(n+1)` -/
def P12343356582579113048.Spec : Prop :=
  ∀ n, P12343356582579113048.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P8975148704860170578

`A022838(n+1)+A008620(A016813(n))`
-/

namespace A206904.P8975148704860170578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + A008620 (A016813 n).toNat

end

end A206904.P8975148704860170578

namespace A206904

/-- `A022838(n+1)+A008620(A016813(n))` -/
def P8975148704860170578.Spec : Prop :=
  ∀ n, P8975148704860170578.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P12846173783994605497

`A190334(n+1)-A008620(A004771(n))`
-/

namespace A206904.P12846173783994605497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190334 (n + 1) - A008620 (A004771 n).toNat

end

end A206904.P12846173783994605497

namespace A206904

/-- `A190334(n+1)-A008620(A004771(n))` -/
def P12846173783994605497.Spec : Prop :=
  ∀ n, P12846173783994605497.a n = A206904 (n + 1)

end A206904

/-! ## A206904.P15998775582922584999

`A002264(A022805(2*(n+1)))+A002264(n+1)`
-/

namespace A206904.P15998775582922584999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022805 (2 * (n + 1))).toNat + A002264 (n + 1)

end

end A206904.P15998775582922584999

namespace A206904

/-- `A002264(A022805(2*(n+1)))+A002264(n+1)` -/
def P15998775582922584999.Spec : Prop :=
  ∀ n, P15998775582922584999.a n = A206904 (n + 1)

end A206904

/-!
# A206905: n+[nr/t]+[ns/t], where []=floor, r=3, s=sqrt(3), t=1/s.

The programs for A206905, the canonical program `A206905.P3002875133624114019` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206905 has offset 1).

The definition of A206905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206905.P3002875133624114019

`Δ[A001844(n)]+floor((n+1)*sqrt(27))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206905

/-- `Δ[A001844(n)]+floor((n+1)*sqrt(27))` -/
def P3002875133624114019.Spec : Prop :=
  ∀ n, P3002875133624114019.a n = A206905 (n + 1)

theorem P3002875133624114019.correct : P3002875133624114019.Spec := by
  intro n
  simp only [A206905, Nat.add_sub_cancel]

end A206905

/-! ## A206905.P665907597686448541

`A352674(2*(n+1))+n+1`
-/

namespace A206905.P665907597686448541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352674 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A206905.P665907597686448541

namespace A206905

/-- `A352674(2*(n+1))+n+1` -/
def P665907597686448541.Spec : Prop :=
  ∀ n, P665907597686448541.a n = A206905 (n + 1)

end A206905

/-! ## A206905.P2828456135857433284

`A206904(3*(n+1))`
-/

namespace A206905.P2828456135857433284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206904 (3 * (n + 1))

end

end A206905.P2828456135857433284

namespace A206905

/-- `A206904(3*(n+1))` -/
def P2828456135857433284.Spec : Prop :=
  ∀ n, P2828456135857433284.a n = A206905 (n + 1)

end A206905

/-! ## A206905.P5627690633128248691

`A054088(3*(n+1))+n+1`
-/

namespace A206905.P5627690633128248691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (3 * (n + 1)) + (n + 1 : ℤ)

end

end A206905.P5627690633128248691

namespace A206905

/-- `A054088(3*(n+1))+n+1` -/
def P5627690633128248691.Spec : Prop :=
  ∀ n, P5627690633128248691.a n = A206905 (n + 1)

end A206905

/-! ## A206905.P14687648961303732201

`A180122(3*(n+1))+n+2`
-/

namespace A206905.P14687648961303732201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (3 * (n + 1)) + (n + 2 : ℤ)

end

end A206905.P14687648961303732201

namespace A206905

/-- `A180122(3*(n+1))+n+2` -/
def P14687648961303732201.Spec : Prop :=
  ∀ n, P14687648961303732201.a n = A206905 (n + 1)

end A206905

/-! ## A206905.P7714123693410782076

`A003512(3*(n+1))-2*(n+1)`
-/

namespace A206905.P7714123693410782076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (3 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A206905.P7714123693410782076

namespace A206905

/-- `A003512(3*(n+1))-2*(n+1)` -/
def P7714123693410782076.Spec : Prop :=
  ∀ n, P7714123693410782076.a n = A206905 (n + 1)

end A206905

/-! ## A206905.P15534494936741997419

`A198081(A004767(n)-n)+A004767(n)`
-/

namespace A206905.P15534494936741997419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (A004767 n - (n : ℤ)).toNat + A004767 n

end

end A206905.P15534494936741997419

namespace A206905

/-- `A198081(A004767(n)-n)+A004767(n)` -/
def P15534494936741997419.Spec : Prop :=
  ∀ n, P15534494936741997419.a n = A206905 (n + 1)

end A206905

/-! ## A206905.P16118114534845806289

`A188070(A008458(n+1))+n`
-/

namespace A206905.P16118114534845806289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (A008458 (n + 1)).toNat + (n : ℤ)

end

end A206905.P16118114534845806289

namespace A206905

/-- `A188070(A008458(n+1))+n` -/
def P16118114534845806289.Spec : Prop :=
  ∀ n, P16118114534845806289.a n = A206905 (n + 1)

end A206905

/-! ## A206905.P15925699042851917527

`∑[A018252(Δ[A172475(6*n)])]`
-/

namespace A206905.P15925699042851917527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (6 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206905.P15925699042851917527

namespace A206905

/-- `∑[A018252(Δ[A172475(6*n)])]` -/
def P15925699042851917527.Spec : Prop :=
  ∀ n, P15925699042851917527.a n = A206905 (n + 1)

end A206905

/-!
# A206906: n+[ns/r]+[nt/r], where []=floor, r=1/3, s=sqrt(3), t=1/s.

The programs for A206906, there is no canonical definition to state claims against.
-/

/-! ## A206906.P7960841550835900723

`A190332(3*(n+1))-2*(n+1)`
-/

namespace A206906.P7960841550835900723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190332 (3 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A206906.P7960841550835900723

/-! ## A206906.P9121835876989862278

`A054088(n+1)+A022838(3*(n+1))`
-/

namespace A206906.P9121835876989862278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1) + A022838 (3 * (n + 1))

end

end A206906.P9121835876989862278

/-! ## A206906.P17811736642677306209

`A004773(A022838(3*n+3))+n+1`
-/

namespace A206906.P17811736642677306209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A022838 (3 * n + 3)).toNat + (n + 1 : ℤ)

end

end A206906.P17811736642677306209

/-! ## A206906.P9366803140111666708

`A003511(A008458(n+1))-A195120(n+1)`
-/

namespace A206906.P9366803140111666708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A008458 (n + 1)).toNat - A195120 (n + 1)

end

end A206906.P9366803140111666708

/-! ## A206906.P4955093484593658638

`A194979(A008591(n+1))+A180122(n+1)`
-/

namespace A206906.P4955093484593658638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A008591 (n + 1)).toNat + A180122 (n + 1)

end

end A206906.P4955093484593658638

/-!
# A206907: n+[nr/s]+[nt/s], where []=floor, r=1/3, s=sqrt(3), t=1/s.

The programs for A206907, the canonical program `A206907.P3358709916380969385` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206907 has offset 1).

The definition of A206907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206907.P3358709916380969385

`A002264(A097337(n+1))+∑[A177702(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A206907

/-- `A002264(A097337(n+1))+∑[A177702(n)]` -/
def P3358709916380969385.Spec : Prop :=
  ∀ n, P3358709916380969385.a n = A206907 (n + 1)

theorem P3358709916380969385.correct : P3358709916380969385.Spec := by
  intro n
  simp only [A206907, Nat.add_sub_cancel]

end A206907

/-! ## A206907.P15039473881691954938

`A042965(n+1)+A008620(A097337(n+1))`
-/

namespace A206907.P15039473881691954938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + A008620 (A097337 (n + 1)).toNat

end

end A206907.P15039473881691954938

namespace A206907

/-- `A042965(n+1)+A008620(A097337(n+1))` -/
def P15039473881691954938.Spec : Prop :=
  ∀ n, P15039473881691954938.a n = A206907 (n + 1)

end A206907

/-! ## A206907.P17943382828165990185

`n+1+A002264(n+1)+A002264(A097337(n+1))`
-/

namespace A206907.P17943382828165990185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A002264 (n + 1) + A002264 (A097337 (n + 1)).toNat)

end

end A206907.P17943382828165990185

namespace A206907

/-- `n+1+A002264(n+1)+A002264(A097337(n+1))` -/
def P17943382828165990185.Spec : Prop :=
  ∀ n, P17943382828165990185.a n = A206907 (n + 1)

end A206907

/-! ## A206907.P13011990109306368441

`A008620(A097337(n+1))+A004396(2*n)`
-/

namespace A206907.P13011990109306368441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A097337 (n + 1)).toNat + A004396 (2 * n)

end

end A206907.P13011990109306368441

namespace A206907

/-- `A008620(A097337(n+1))+A004396(2*n)` -/
def P13011990109306368441.Spec : Prop :=
  ∀ n, P13011990109306368441.a n = A206907 (n + 1)

end A206907

/-! ## A206907.P2848991511337713133

`A008620(A136290(n)+A097337(n+1))`
-/

namespace A206907.P2848991511337713133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A136290 n + A097337 (n + 1)).toNat

end

end A206907.P2848991511337713133

namespace A206907

/-- `A008620(A136290(n)+A097337(n+1))` -/
def P2848991511337713133.Spec : Prop :=
  ∀ n, P2848991511337713133.a n = A206907 (n + 1)

end A206907

/-!
# A206908: a(n) = 4*n + floor(n/sqrt(3)).

The programs for A206908, the canonical program `A206908.P3140970404298958884` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206908 has offset 1).

The definition of A206908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206908.P3140970404298958884

`∑[6-Δ[A195129(n)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206908

/-- `∑[6-Δ[A195129(n)]]` -/
def P3140970404298958884.Spec : Prop :=
  ∀ n, P3140970404298958884.a n = A206908 (n + 1)

theorem P3140970404298958884.correct : P3140970404298958884.Spec := by
  intro n
  simp only [A206908, Nat.add_sub_cancel]

end A206908

/-! ## A206908.P3641292965876028311

`∑[char[A022838(n+1)]+4]`
-/

namespace A206908.P3641292965876028311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206908.P3641292965876028311

namespace A206908

/-- `∑[char[A022838(n+1)]+4]` -/
def P3641292965876028311.Spec : Prop :=
  ∀ n, (P3641292965876028311.a n : ℤ) = A206908 (n + 1)

end A206908

/-! ## A206908.P14035540577953240490

`A182771(n+1)+2*(n+1)`
-/

namespace A206908.P14035540577953240490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182771 (n + 1) + (2 * (n + 1) : ℤ)

end

end A206908.P14035540577953240490

namespace A206908

/-- `A182771(n+1)+2*(n+1)` -/
def P14035540577953240490.Spec : Prop :=
  ∀ n, P14035540577953240490.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P12131906428660177415

`A186539(n+1)+3*(n+1)`
-/

namespace A206908.P12131906428660177415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + (3 * (n + 1) : ℤ)

end

end A206908.P12131906428660177415

namespace A206908

/-- `A186539(n+1)+3*(n+1)` -/
def P12131906428660177415.Spec : Prop :=
  ∀ n, P12131906428660177415.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P456613105481694500

`A097337(n+1)+4*(n+1)`
-/

namespace A206908.P456613105481694500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + (4 * (n + 1) : ℤ)

end

end A206908.P456613105481694500

namespace A206908

/-- `A097337(n+1)+4*(n+1)` -/
def P456613105481694500.Spec : Prop :=
  ∀ n, P456613105481694500.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P13657776444035117715

`5*(n+1)-A195072(n+1)`
-/

namespace A206908.P13657776444035117715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A195072 (n + 1)

end

end A206908.P13657776444035117715

namespace A206908

/-- `5*(n+1)-A195072(n+1)` -/
def P13657776444035117715.Spec : Prop :=
  ∀ n, P13657776444035117715.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P6134683833170127025

`4*(n+1)+A194979(n+1)-1`
-/

namespace A206908.P6134683833170127025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + (A194979 (n + 1) - 1)

end

end A206908.P6134683833170127025

namespace A206908

/-- `4*(n+1)+A194979(n+1)-1` -/
def P6134683833170127025.Spec : Prop :=
  ∀ n, P6134683833170127025.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P2278550980253005432

`A194979(n+1)+A004767(n)`
-/

namespace A206908.P2278550980253005432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1) + A004767 n

end

end A206908.P2278550980253005432

namespace A206908

/-- `A194979(n+1)+A004767(n)` -/
def P2278550980253005432.Spec : Prop :=
  ∀ n, P2278550980253005432.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P14068870800398972521

`A016897(n)-A183142(n+1)`
-/

namespace A206908.P14068870800398972521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A183142 (n + 1)

end

end A206908.P14068870800398972521

namespace A206908

/-- `A016897(n)-A183142(n+1)` -/
def P14068870800398972521.Spec : Prop :=
  ∀ n, P14068870800398972521.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P9357091798769921553

`∑[A052938(Δ[A195129(n)])+2]`
-/

namespace A206908.P9357091798769921553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206908.P9357091798769921553

namespace A206908

/-- `∑[A052938(Δ[A195129(n)])+2]` -/
def P9357091798769921553.Spec : Prop :=
  ∀ n, P9357091798769921553.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P5383531588148550572

`∑[A061579(Δ[A195129(n)]+2)]`
-/

namespace A206908.P5383531588148550572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206908.P5383531588148550572

namespace A206908

/-- `∑[A061579(Δ[A195129(n)]+2)]` -/
def P5383531588148550572.Spec : Prop :=
  ∀ n, P5383531588148550572.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P3531616458538531439

`∑[A195129(n)+6-A195129(n+1)]`
-/

namespace A206908.P3531616458538531439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n + (6 - A195129 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206908.P3531616458538531439

namespace A206908

/-- `∑[A195129(n)+6-A195129(n+1)]` -/
def P3531616458538531439.Spec : Prop :=
  ∀ n, P3531616458538531439.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P9216748542048318946

`A016861(n+1)-A195129(n+1)+n`
-/

namespace A206908.P9216748542048318946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (n + 1) - A195129 (n + 1) + (n : ℤ)

end

end A206908.P9216748542048318946

namespace A206908

/-- `A016861(n+1)-A195129(n+1)+n` -/
def P9216748542048318946.Spec : Prop :=
  ∀ n, P9216748542048318946.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P18175189932260400268

`A008620(A022838(n+1))+A016813(n)+2`
-/

namespace A206908.P18175189932260400268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A022838 (n + 1)).toNat + (A016813 n + 2)

end

end A206908.P18175189932260400268

namespace A206908

/-- `A008620(A022838(n+1))+A016813(n)+2` -/
def P18175189932260400268.Spec : Prop :=
  ∀ n, P18175189932260400268.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P6727121244392377273

`A206907(3*(n+1))`
-/

namespace A206908.P6727121244392377273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206907 (3 * (n + 1))

end

end A206908.P6727121244392377273

namespace A206908

/-- `A206907(3*(n+1))` -/
def P6727121244392377273.Spec : Prop :=
  ∀ n, P6727121244392377273.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P18275142197458263540

`A008620(A190334(n+1)+A004771(n)-2)`
-/

namespace A206908.P18275142197458263540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A190334 (n + 1) + (A004771 n - 2)).toNat

end

end A206908.P18275142197458263540

namespace A206908

/-- `A008620(A190334(n+1)+A004771(n)-2)` -/
def P18275142197458263540.Spec : Prop :=
  ∀ n, P18275142197458263540.a n = A206908 (n + 1)

end A206908

/-! ## A206908.P14260864194736050491

`4*(n+1)+A000196(A000212(n+1))`
-/

namespace A206908.P14260864194736050491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A000196 (A000212 (n + 1)).toNat

end

end A206908.P14260864194736050491

namespace A206908

/-- `4*(n+1)+A000196(A000212(n+1))` -/
def P14260864194736050491.Spec : Prop :=
  ∀ n, P14260864194736050491.a n = A206908 (n + 1)

end A206908

/-!
# A206909: Position of 2n+cos(n) when the sets {2k+cos(k)} and {2k+sin(k)} are jointly ranked.

The programs for A206909, there is no canonical definition to state claims against.
-/

/-! ## A206909.P5059842459470126260

`ceil(cos(n+8)+2*n+1)`
-/

namespace A206909.P5059842459470126260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n + 8 : ℝ) + (2 * n + 1 : ℝ)⌉

end

end A206909.P5059842459470126260

/-! ## A206909.P11280845857192954361

`comp[A206910(n+1)-1]+1`
-/

namespace A206909.P11280845857192954361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206910 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206909.P11280845857192954361

/-! ## A206909.P3843699626687462877

`floor(A206928(n+1)/2)+1+n`
-/

namespace A206909.P3843699626687462877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206928 (n + 1) : ℚ) / 2⌋ + 1 + (n : ℤ)

end

end A206909.P3843699626687462877

/-! ## A206909.P8812321622682258829

`A014681(A206910(n+1))`
-/

namespace A206909.P8812321622682258829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A206910 (n + 1)).toNat

end

end A206909.P8812321622682258829

/-! ## A206909.P4717112826061012956

`A008619(A206928(n+1))+n`
-/

namespace A206909.P4717112826061012956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A206928 (n + 1)).toNat + (n : ℤ)

end

end A206909.P4717112826061012956

/-! ## A206909.P9314754350356614313

`A004767(n)-A206910(n+1)`
-/

namespace A206909.P9314754350356614313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A206910 (n + 1)

end

end A206909.P9314754350356614313

/-! ## A206909.P13248788733826866778

`xor(A088837(n+1), A206910(n+1))`
-/

namespace A206909.P13248788733826866778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A206910 (n + 1))

end

end A206909.P13248788733826866778

/-!
# A206910: Position of 2n+sin(n) when the sets {2k+cos(k)} and {2k+sin(k)} are jointly ranked.

The programs for A206910, there is no canonical definition to state claims against.
-/

/-! ## A206910.P9437907205316722515

`Δ[n²]-floor(sin(n-3))`
-/

namespace A206910.P9437907205316722515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ⌊Real.sin ((n : ℤ) - 3 : ℝ)⌋

end

end A206910.P9437907205316722515

/-! ## A206910.P1480727399386566569

`ceil(Δ[n²]-sin(n-3))`
-/

namespace A206910.P1480727399386566569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) - Real.sin ((n : ℤ) - 3 : ℝ)⌉

end

end A206910.P1480727399386566569

/-! ## A206910.P14098146240521423221

`Δ[n²]-floor(cos(n+8))`
-/

namespace A206910.P14098146240521423221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ⌊Real.cos (n + 8 : ℝ)⌋

end

end A206910.P14098146240521423221

/-! ## A206910.P9919721234394835239

`ceil(Δ[n²]-cos(n+8))`
-/

namespace A206910.P9919721234394835239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) - Real.cos (n + 8 : ℝ)⌉

end

end A206910.P9919721234394835239

/-! ## A206910.P16358358440698281507

`Δ[n²]+floor(cos(n+8))²`
-/

namespace A206910.P16358358440698281507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊Real.cos (n + 8 : ℝ)⌋ ^ 2

end

end A206910.P16358358440698281507

/-! ## A206910.P657934634313877727

`2*n+1-floor(sin(n-3))`
-/

namespace A206910.P657934634313877727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - ⌊Real.sin ((n : ℤ) - 3 : ℝ)⌋)

end

end A206910.P657934634313877727

/-! ## A206910.P6780095427687586169

`ceil(sin(3-n)+2*n+1)`
-/

namespace A206910.P6780095427687586169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (3 - (n : ℤ) : ℝ) + (2 * n + 1 : ℝ)⌉

end

end A206910.P6780095427687586169

/-! ## A206910.P18157534553846968815

`1-floor(sin(n-3)-2*n)`
-/

namespace A206910.P18157534553846968815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊Real.sin ((n : ℤ) - 3 : ℝ) - (2 * n : ℝ)⌋

end

end A206910.P18157534553846968815

/-! ## A206910.P11670062771059107341

`ceil(2*n-(sin(n-3)-1))`
-/

namespace A206910.P11670062771059107341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) - (Real.sin ((n : ℤ) - 3 : ℝ) - 1)⌉

end

end A206910.P11670062771059107341

/-! ## A206910.P8308807730186144070

`floor(2*(n+1)-cos(n+8))`
-/

namespace A206910.P8308807730186144070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 1) : ℝ) - Real.cos (n + 8 : ℝ)⌋

end

end A206910.P8308807730186144070

/-!
# A206911: Position of n-th partial sum of the harmonic series when all the partial sums are jointly ranked with the set {log(k+1)}; complement of A206912.

The programs for A206911, there is no canonical definition to state claims against.
-/

/-! ## A206911.P16597619559712286183

`(ceil(∏[root(e, n+1)])+n-1)%A345925(n+5)`
-/

namespace A206911.P16597619559712286183
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 ^ (1 / (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈∏ j ∈ Finset.range (n + 1), f1 j⌉ + (n : ℤ) - 1) (A345925 (n + 5))

end

end A206911.P16597619559712286183

/-! ## A206911.P2180263893938001205

`A206561(C(A226894(n+1), 2))`
-/

namespace A206911.P2180263893938001205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206561 (Nat.choose (A226894 (n + 1)).toNat 2)

end

end A206911.P2180263893938001205

/-! ## A206911.P10738261528877815677

`A018851((1-A226894(n+1))²)`
-/

namespace A206911.P10738261528877815677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((1 - A226894 (n + 1)) ^ 2).toNat

end

end A206911.P10738261528877815677

/-! ## A206911.P17597173394776887313

`A018851((A215000(n+1)+n)²)`
-/

namespace A206911.P17597173394776887313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((A215000 (n + 1) + (n : ℤ)) ^ 2).toNat

end

end A206911.P17597173394776887313

/-! ## A206911.P11040538467704712587

`A003056(∑[A109260(3*n+1)])+1`
-/

namespace A206911.P11040538467704712587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109260 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A206911.P11040538467704712587

/-! ## A206911.P2104158551962374849

`A215000(n+1)%A144861(n+2)+n`
-/

namespace A206911.P2104158551962374849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215000 (n + 1)) (A144861 (n + 2)) + (n : ℤ)

end

end A206911.P2104158551962374849

/-! ## A206911.P11223318987880689571

`A325820(A000124(A226894(n+1)))`
-/

namespace A206911.P11223318987880689571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (A000124 (A226894 (n + 1)).toNat).toNat

end

end A206911.P11223318987880689571

/-! ## A206911.P7376107700728589171

`A226894(n+1)-A001222(A172459(n+1))`
-/

namespace A206911.P7376107700728589171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226894 (n + 1) - A001222 (A172459 (n + 1)).toNat

end

end A206911.P7376107700728589171

/-!
# A206912: Position of log(n+1) when the partial sums of the harmonic series are jointly ranked with the set {log(k+1)}; complement of A206911.

The programs for A206912, there is no canonical definition to state claims against.
-/

/-! ## A206912.P11666351624374585293

`floor(∑[atan(exp(5)-n)])`
-/

namespace A206912.P11666351624374585293
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Real.exp (5 : ℝ) - (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A206912.P11666351624374585293

/-! ## A206912.P637014047985024614

`ceil(∑[atan(exp(5)-n)])-1`
-/

namespace A206912.P637014047985024614
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Real.exp (5 : ℝ) - (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - 1

end

end A206912.P637014047985024614

/-! ## A206912.P6632792486371347057

`round((n+2)/exp(γ)+n)`
-/

namespace A206912.P6632792486371347057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.exp Real.eulerMascheroniConstant + (n : ℝ))

end

end A206912.P6632792486371347057

/-! ## A206912.P7630197346137799767

`ceil(sqrt(∑[A313080(n)]))`
-/

namespace A206912.P7630197346137799767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A206912.P7630197346137799767

/-! ## A206912.P2446077160463341167

`ceil(sqrt(∑[A314520(n)]))`
-/

namespace A206912.P2446077160463341167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A206912.P2446077160463341167

/-! ## A206912.P6398736998518592621

`A226896(n+2)-1`
-/

namespace A206912.P6398736998518592621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (n + 2) - 1

end

end A206912.P6398736998518592621

/-! ## A206912.P12500719910544379907

`A226190(n+2)+n`
-/

namespace A206912.P12500719910544379907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (n + 2) + (n : ℤ)

end

end A206912.P12500719910544379907

/-! ## A206912.P12560479433568984192

`∑[abs(Δ[A226896(n+1)])]`
-/

namespace A206912.P12560479433568984192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206912.P12560479433568984192

/-! ## A206912.P1146446586212656963

`∑[(char[A215000(n+1)-1]+1)!]`
-/

namespace A206912.P1146446586212656963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215000 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206912.P1146446586212656963

/-! ## A206912.P12533236493945992725

`A023443(A226896(n+2))`
-/

namespace A206912.P12533236493945992725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226896 (n + 2)).toNat

end

end A206912.P12533236493945992725

/-!
# A206913: Greatest binary palindrome <= n; the binary palindrome floor function.

The programs for A206913, the canonical program `A206913.P18136028750856858021` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206913 has offset 0).

The definition of A206913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006995, A206915, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206913.P18136028750856858021

`A006995(A206915(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A206913

/-- `A006995(A206915(n))` -/
def P18136028750856858021.Spec : Prop :=
  ∀ n, P18136028750856858021.a n = A206913 n

theorem P18136028750856858021.correct : P18136028750856858021.Spec := by
  intro n
  simp only [A206913]

end A206913

/-! ## A206913.P4715985212619599197

`A006995(A206916(A206914(n+1))-1)`
-/

namespace A206913.P4715985212619599197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A206916 (A206914 (n + 1)).toNat - 1).toNat

end

end A206913.P4715985212619599197

namespace A206913

/-- `A006995(A206916(A206914(n+1))-1)` -/
def P4715985212619599197.Spec : Prop :=
  ∀ n, P4715985212619599197.a n = A206913 n

end A206913

/-! ## A206913.P15974488606012153980

`n-A303534(n)`
-/

namespace A206913.P15974488606012153980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A303534 n

end

end A206913.P15974488606012153980

namespace A206913

/-- `n-A303534(n)` -/
def P15974488606012153980.Spec : Prop :=
  ∀ n, P15974488606012153980.a n = A206913 n

end A206913

/-! ## A206913.P1599697109897264260

`A006995(∑[A178225(n)])`
-/

namespace A206913.P1599697109897264260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206913.P1599697109897264260

namespace A206913

/-- `A006995(∑[A178225(n)])` -/
def P1599697109897264260.Spec : Prop :=
  ∀ n, P1599697109897264260.a n = A206913 n

end A206913

/-! ## A206913.P17576811697742092170

`A006995(∑[char[A175298(n)]])`
-/

namespace A206913.P17576811697742092170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206913.P17576811697742092170

namespace A206913

/-- `A006995(∑[char[A175298(n)]])` -/
def P17576811697742092170.Spec : Prop :=
  ∀ n, P17576811697742092170.a n = A206913 n

end A206913

/-! ## A206913.P12890048207330360242

`A006995(∑[char[A206914(n)]])`
-/

namespace A206913.P12890048207330360242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206913.P12890048207330360242

namespace A206913

/-- `A006995(∑[char[A206914(n)]])` -/
def P12890048207330360242.Spec : Prop :=
  ∀ n, P12890048207330360242.a n = A206913 n

end A206913

/-! ## A206913.P14872622086859260047

`A006995(∑[1-A178226(n)])`
-/

namespace A206913.P14872622086859260047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206913.P14872622086859260047

namespace A206913

/-- `A006995(∑[1-A178226(n)])` -/
def P14872622086859260047.Spec : Prop :=
  ∀ n, P14872622086859260047.a n = A206913 n

end A206913

/-! ## A206913.P15034046401946014279

`abs(A303534(n)+A001489(n))`
-/

namespace A206913.P15034046401946014279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303534 n + A001489 n|

end

end A206913.P15034046401946014279

namespace A206913

/-- `abs(A303534(n)+A001489(n))` -/
def P15034046401946014279.Spec : Prop :=
  ∀ n, P15034046401946014279.a n = A206913 n

end A206913

/-! ## A206913.P8546701465420425094

`A006995(∑[char[A006995(n+1)]])`
-/

namespace A206913.P8546701465420425094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206913.P8546701465420425094

namespace A206913

/-- `A006995(∑[char[A006995(n+1)]])` -/
def P8546701465420425094.Spec : Prop :=
  ∀ n, P8546701465420425094.a n = A206913 n

end A206913

/-! ## A206913.P15060327636321589088

`A265527(ceil(n/2))`
-/

namespace A206913.P15060327636321589088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 ⌈(n : ℚ) / 2⌉.toNat

end

end A206913.P15060327636321589088

namespace A206913

/-- `A265527(ceil(n/2))` -/
def P15060327636321589088.Spec : Prop :=
  ∀ n, P15060327636321589088.a n = A206913 n

end A206913

/-! ## A206913.P665431158291222058

`A265527(∑[and(1, n)])%(n+1)`
-/

namespace A206913.P665431158291222058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265527 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A206913.P665431158291222058

namespace A206913

/-- `A265527(∑[and(1, n)])%(n+1)` -/
def P665431158291222058.Spec : Prop :=
  ∀ n, P665431158291222058.a n = A206913 n

end A206913

/-! ## A206913.P8446586793320818540

`A265527(A065033(n))%(n+1)`
-/

namespace A206913.P8446586793320818540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265527 (A065033 n).toNat) (n + 1 : ℤ)

end

end A206913.P8446586793320818540

namespace A206913

/-- `A265527(A065033(n))%(n+1)` -/
def P8446586793320818540.Spec : Prop :=
  ∀ n, P8446586793320818540.a n = A206913 n

end A206913

/-! ## A206913.P10220210836631473705

`A265527(A004526(n+1))%(n+1)`
-/

namespace A206913.P10220210836631473705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265527 (A004526 (n + 1)).toNat) (n + 1 : ℤ)

end

end A206913.P10220210836631473705

namespace A206913

/-- `A265527(A004526(n+1))%(n+1)` -/
def P10220210836631473705.Spec : Prop :=
  ∀ n, P10220210836631473705.a n = A206913 n

end A206913

/-! ## A206913.P17973769852568521010

`A265527(n-A004526(n))%Δ[n²]`
-/

namespace A206913.P17973769852568521010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265527 ((n : ℤ) - A004526 n).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A206913.P17973769852568521010

namespace A206913

/-- `A265527(n-A004526(n))%Δ[n²]` -/
def P17973769852568521010.Spec : Prop :=
  ∀ n, P17973769852568521010.a n = A206913 n

end A206913

/-! ## A206913.P12678262050516752305

`A265527(n-A004526(n))+A000007(n+1)`
-/

namespace A206913.P12678262050516752305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 ((n : ℤ) - A004526 n).toNat + A000007 (n + 1)

end

end A206913.P12678262050516752305

namespace A206913

/-- `A265527(n-A004526(n))+A000007(n+1)` -/
def P12678262050516752305.Spec : Prop :=
  ∀ n, P12678262050516752305.a n = A206913 n

end A206913

/-! ## A206913.P7957754781271155243

`A007318(and(3, 2-n))*A265527(A004526(n+1))`
-/

namespace A206913.P7957754781271155243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (2 - (n : ℤ))).toNat * A265527 (A004526 (n + 1)).toNat

end

end A206913.P7957754781271155243

namespace A206913

/-- `A007318(and(3, 2-n))*A265527(A004526(n+1))` -/
def P7957754781271155243.Spec : Prop :=
  ∀ n, P7957754781271155243.a n = A206913 n

end A206913

/-! ## A206913.P5233482820175443683

`A011973(and(3, 2-n))*A265527(A004526(n+1))`
-/

namespace A206913.P5233482820175443683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (Int.land 3 (2 - (n : ℤ))).toNat * A265527 (A004526 (n + 1)).toNat

end

end A206913.P5233482820175443683

namespace A206913

/-- `A011973(and(3, 2-n))*A265527(A004526(n+1))` -/
def P5233482820175443683.Spec : Prop :=
  ∀ n, P5233482820175443683.a n = A206913 n

end A206913

/-! ## A206913.P1495742688583078479

`A007318(and(3, 2-n))*A265527(n-A004526(n))`
-/

namespace A206913.P1495742688583078479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (2 - (n : ℤ))).toNat * A265527 ((n : ℤ) - A004526 n).toNat

end

end A206913.P1495742688583078479

namespace A206913

/-- `A007318(and(3, 2-n))*A265527(n-A004526(n))` -/
def P1495742688583078479.Spec : Prop :=
  ∀ n, P1495742688583078479.a n = A206913 n

end A206913

/-! ## A206913.P9891227828802010337

`A011973(and(3, 2-n))*A265527(n-A004526(n))`
-/

namespace A206913.P9891227828802010337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (Int.land 3 (2 - (n : ℤ))).toNat * A265527 ((n : ℤ) - A004526 n).toNat

end

end A206913.P9891227828802010337

namespace A206913

/-- `A011973(and(3, 2-n))*A265527(n-A004526(n))` -/
def P9891227828802010337.Spec : Prop :=
  ∀ n, P9891227828802010337.a n = A206913 n

end A206913

/-! ## A206913.P6738643396726650892

`A000034(A005843(n))*A265527(n-A004526(n))`
-/

namespace A206913.P6738643396726650892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A005843 n).toNat * A265527 ((n : ℤ) - A004526 n).toNat

end

end A206913.P6738643396726650892

namespace A206913

/-- `A000034(A005843(n))*A265527(n-A004526(n))` -/
def P6738643396726650892.Spec : Prop :=
  ∀ n, P6738643396726650892.a n = A206913 n

end A206913

/-!
# A206914: Least binary palindrome >= n; the binary palindrome ceiling function.

The programs for A206914, the canonical program `A206914.P13115194890029056477` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206914 has offset 0).

The definition of A206914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206914.P9600717383436315669

`A006995(A206916(n))`
-/

namespace A206914.P9600717383436315669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A206916 n).toNat

end

end A206914.P9600717383436315669

namespace A206914

/-- `A006995(A206916(n))` -/
def P9600717383436315669.Spec : Prop :=
  ∀ n, P9600717383436315669.a n = A206914 n

end A206914

/-! ## A206914.P13115194890029056477

`A006995(∑[A178225(abs(1-n))])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A206914

/-- `A006995(∑[A178225(abs(1-n))])` -/
def P13115194890029056477.Spec : Prop :=
  ∀ n, P13115194890029056477.a n = A206914 n

theorem P13115194890029056477.correct : P13115194890029056477.Spec := by
  intro n
  simp only [A206914]

end A206914

/-! ## A206914.P4027112189062474537

`A006995(∑[char[(n+1)*A178225(n)]])`
-/

namespace A206914.P4027112189062474537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178225 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206914.P4027112189062474537

namespace A206914

/-- `A006995(∑[char[(n+1)*A178225(n)]])` -/
def P4027112189062474537.Spec : Prop :=
  ∀ n, P4027112189062474537.a n = A206914 n

end A206914

/-! ## A206914.P9215824367196355468

`A006995(∑[char[A006995(n+1)+1]]+1)`
-/

namespace A206914.P9215824367196355468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206914.P9215824367196355468

namespace A206914

/-- `A006995(∑[char[A006995(n+1)+1]]+1)` -/
def P9215824367196355468.Spec : Prop :=
  ∀ n, P9215824367196355468.a n = A206914 n

end A206914

/-! ## A206914.P4949547794007389494

`A006995(A206915(n)+A178226(n))`
-/

namespace A206914.P4949547794007389494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A206915 n + A178226 n).toNat

end

end A206914.P4949547794007389494

namespace A206914

/-- `A006995(A206915(n)+A178226(n))` -/
def P4949547794007389494.Spec : Prop :=
  ∀ n, P4949547794007389494.a n = A206914 n

end A206914

/-! ## A206914.P12879022877328304507

`A006995(A178226(n)+∑[A178225(n)])`
-/

namespace A206914.P12879022877328304507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A178226 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206914.P12879022877328304507

namespace A206914

/-- `A006995(A178226(n)+∑[A178225(n)])` -/
def P12879022877328304507.Spec : Prop :=
  ∀ n, P12879022877328304507.a n = A206914 n

end A206914

/-! ## A206914.P13964225753800726850

`A006995(A178226(n)+∑[1-A178226(n)])`
-/

namespace A206914.P13964225753800726850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A178226 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206914.P13964225753800726850

namespace A206914

/-- `A006995(A178226(n)+∑[1-A178226(n)])` -/
def P13964225753800726850.Spec : Prop :=
  ∀ n, P13964225753800726850.a n = A206914 n

end A206914

/-! ## A206914.P7947467846906024473

`A006995(A206915(n)+char[A154809(n+1)])`
-/

namespace A206914.P7947467846906024473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154809 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A206915 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A206914.P7947467846906024473

namespace A206914

/-- `A006995(A206915(n)+char[A154809(n+1)])` -/
def P7947467846906024473.Spec : Prop :=
  ∀ n, P7947467846906024473.a n = A206914 n

end A206914

/-!
# A206915: The index (in A006995) of the greatest binary palindrome <= n; also the 'lower inverse' of A006995.

The programs for A206915, the canonical program `A206915.P6576328931929585577` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206915 has offset 0).

The definition of A206915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206915.P6576328931929585577

`∑[A178225(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A206915

/-- `∑[A178225(n)]` -/
def P6576328931929585577.Spec : Prop :=
  ∀ n, P6576328931929585577.a n = A206915 n

theorem P6576328931929585577.correct : P6576328931929585577.Spec := by
  intro n
  simp only [A206915]

end A206915

/-! ## A206915.P2495138508285911576

`∑[char[A062130(n)]]`
-/

namespace A206915.P2495138508285911576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P2495138508285911576

namespace A206915

/-- `∑[char[A062130(n)]]` -/
def P2495138508285911576.Spec : Prop :=
  ∀ n, (P2495138508285911576.a n : ℤ) = A206915 n

end A206915

/-! ## A206915.P15385005146769981363

`∑[char[A175298(n)]]`
-/

namespace A206915.P15385005146769981363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P15385005146769981363

namespace A206915

/-- `∑[char[A175298(n)]]` -/
def P15385005146769981363.Spec : Prop :=
  ∀ n, (P15385005146769981363.a n : ℤ) = A206915 n

end A206915

/-! ## A206915.P741799037144433188

`∑[char[A206913(n)]]`
-/

namespace A206915.P741799037144433188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P741799037144433188

namespace A206915

/-- `∑[char[A206913(n)]]` -/
def P741799037144433188.Spec : Prop :=
  ∀ n, (P741799037144433188.a n : ℤ) = A206915 n

end A206915

/-! ## A206915.P10202727075538519460

`∑[char[A206914(n)]]`
-/

namespace A206915.P10202727075538519460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P10202727075538519460

namespace A206915

/-- `∑[char[A206914(n)]]` -/
def P10202727075538519460.Spec : Prop :=
  ∀ n, (P10202727075538519460.a n : ℤ) = A206915 n

end A206915

/-! ## A206915.P6749289481238764499

`∑[1-A178226(n)]`
-/

namespace A206915.P6749289481238764499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P6749289481238764499

namespace A206915

/-- `∑[1-A178226(n)]` -/
def P6749289481238764499.Spec : Prop :=
  ∀ n, P6749289481238764499.a n = A206915 n

end A206915

/-! ## A206915.P1086732435097381333

`∑[C(2, A175919(n))]`
-/

namespace A206915.P1086732435097381333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A175919 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P1086732435097381333

namespace A206915

/-- `∑[C(2, A175919(n))]` -/
def P1086732435097381333.Spec : Prop :=
  ∀ n, (P1086732435097381333.a n : ℤ) = A206915 n

end A206915

/-! ## A206915.P3602270961237248954

`∑[floor(acot(A303534(n)))]`
-/

namespace A206915.P3602270961237248954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A303534 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P3602270961237248954

namespace A206915

/-- `∑[floor(acot(A303534(n)))]` -/
def P3602270961237248954.Spec : Prop :=
  ∀ n, P3602270961237248954.a n = A206915 n

end A206915

/-! ## A206915.P7811896237657339399

`∑[char[A006995(n+1)]]`
-/

namespace A206915.P7811896237657339399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P7811896237657339399

namespace A206915

/-- `∑[char[A006995(n+1)]]` -/
def P7811896237657339399.Spec : Prop :=
  ∀ n, (P7811896237657339399.a n : ℤ) = A206915 n

end A206915

/-! ## A206915.P4375407913245905590

`∑[char[A265509(n)]]+1`
-/

namespace A206915.P4375407913245905590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A206915.P4375407913245905590

namespace A206915

/-- `∑[char[A265509(n)]]+1` -/
def P4375407913245905590.Spec : Prop :=
  ∀ n, (P4375407913245905590.a n : ℤ) = A206915 n

end A206915

/-! ## A206915.P12644564513961806670

`∑[char[A347347(n+1)]]`
-/

namespace A206915.P12644564513961806670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P12644564513961806670

namespace A206915

/-- `∑[char[A347347(n+1)]]` -/
def P12644564513961806670.Spec : Prop :=
  ∀ n, (P12644564513961806670.a n : ℤ) = A206915 n

end A206915

/-! ## A206915.P16102038099511271614

`∑[C(and(n, A030101(n)), n)]`
-/

namespace A206915.P16102038099511271614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (A030101 n)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P16102038099511271614

namespace A206915

/-- `∑[C(and(n, A030101(n)), n)]` -/
def P16102038099511271614.Spec : Prop :=
  ∀ n, (P16102038099511271614.a n : ℤ) = A206915 n

end A206915

/-! ## A206915.P11103871748248656700

`∑[and(1, A008864(A303534(n)+1))]`
-/

namespace A206915.P11103871748248656700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008864 (A303534 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P11103871748248656700

namespace A206915

/-- `∑[and(1, A008864(A303534(n)+1))]` -/
def P11103871748248656700.Spec : Prop :=
  ∀ n, P11103871748248656700.a n = A206915 n

end A206915

/-! ## A206915.P10045461433515946085

`∑[C(A331804(n), n)]`
-/

namespace A206915.P10045461433515946085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A331804 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P10045461433515946085

namespace A206915

/-- `∑[C(A331804(n), n)]` -/
def P10045461433515946085.Spec : Prop :=
  ∀ n, (P10045461433515946085.a n : ℤ) = A206915 n

end A206915

/-!
# A206916: Index of the least binary palindrome >=n; also the "upper inverse" of A006995.

The programs for A206916, there is no canonical definition to state claims against.
-/

/-! ## A206916.P17688306978765642033

`∑[A178225(abs(1-n))]`
-/

namespace A206916.P17688306978765642033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206916.P17688306978765642033

/-! ## A206916.P5503352992105814542

`∑[char[A062130(n)+1]]`
-/

namespace A206916.P5503352992105814542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206916.P5503352992105814542

/-! ## A206916.P12966603793532766252

`∑[char[Δ[n*A178226(n)]]]`
-/

namespace A206916.P12966603793532766252
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A178226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206916.P12966603793532766252

/-! ## A206916.P1086607956222059440

`a(A206913(n-1))+1` with `a(0)=1`
-/

namespace A206916.P1086607956222059440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A206913 (n - 1)).toNat + 1

end

end A206916.P1086607956222059440

/-! ## A206916.P7632699770728902776

`∑[char[A175298(n)+1]]+1`
-/

namespace A206916.P7632699770728902776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A206916.P7632699770728902776

/-! ## A206916.P687320175400138913

`∑[char[A206913(n)+1]]+1`
-/

namespace A206916.P687320175400138913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A206916.P687320175400138913

/-! ## A206916.P7421352038727254672

`∑[char[A330717(n)+1]]+1`
-/

namespace A206916.P7421352038727254672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A206916.P7421352038727254672

/-! ## A206916.P14424947788710190544

`∑[char[(n+1)*A178225(n)]]`
-/

namespace A206916.P14424947788710190544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178225 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206916.P14424947788710190544

/-! ## A206916.P11537206015809943184

`A178225(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A206916.P11537206015809943184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178225 (n - 1) + a (n - 1)

end

end A206916.P11537206015809943184

/-! ## A206916.P8882544236954415212

`A206915(A206914(n))`
-/

namespace A206916.P8882544236954415212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 (A206914 n).toNat

end

end A206916.P8882544236954415212

/-!
# A206917: Sum of binary palindromes in the half-open interval [2^(n-1), 2^n).

The programs for A206917, the canonical program `A206917.P8488114071020745405` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206917 has offset 0).

The definition of A206917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206917.P8488114071020745405

`8*a(n-2)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=12`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206917

/-- `8*a(n-2)` -/
def P8488114071020745405.Spec : Prop :=
  ∀ n, (P8488114071020745405.a n : ℤ) = A206917 n

theorem P8488114071020745405.correct : P8488114071020745405.Spec := by
  intro n
  simp only [A206917]

end A206917

/-! ## A206917.P1195451365537507958

`floor(3*2^ceil(3*(n/2-1)))`
-/

namespace A206917.P1195451365537507958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ (⌈3 * ((n : ℚ) / 2 - 1)⌉ : ℤ)⌋

end

end A206917.P1195451365537507958

namespace A206917

/-- `floor(3*2^ceil(3*(n/2-1)))` -/
def P1195451365537507958.Spec : Prop :=
  ∀ n, P1195451365537507958.a n = A206917 n

end A206917

/-! ## A206917.P6228496541252923587

`record[Δ[A206918(floor(n/2))]]`
-/

namespace A206917.P6228496541252923587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206918 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206917.P6228496541252923587

namespace A206917

/-- `record[Δ[A206918(floor(n/2))]]` -/
def P6228496541252923587.Spec : Prop :=
  ∀ n, P6228496541252923587.a n = A206917 n

end A206917

/-! ## A206917.P8871918753265004761

`Δ[A206918(round(sqrt(n²+1))-1)]`
-/

namespace A206917.P8871918753265004761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206918 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206917.P8871918753265004761

namespace A206917

/-- `Δ[A206918(round(sqrt(n²+1))-1)]` -/
def P8871918753265004761.Spec : Prop :=
  ∀ n, P8871918753265004761.a n = A206917 n

end A206917

/-! ## A206917.P14812981750100789943

`round(A083416(A008486(n))/4)`
-/

namespace A206917.P14812981750100789943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083416 (A008486 n).toNat : ℚ) / 4)

end

end A206917.P14812981750100789943

namespace A206917

/-- `round(A083416(A008486(n))/4)` -/
def P14812981750100789943.Spec : Prop :=
  ∀ n, P14812981750100789943.a n = A206917 n

end A206917

/-! ## A206917.P2956469748908090897

`round(A099942(A008585(n))/8)`
-/

namespace A206917.P2956469748908090897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A099942 (A008585 n).toNat : ℚ) / 8)

end

end A206917.P2956469748908090897

namespace A206917

/-- `round(A099942(A008585(n))/8)` -/
def P2956469748908090897.Spec : Prop :=
  ∀ n, P2956469748908090897.a n = A206917 n

end A206917

/-!
# A206918: Sum of binary palindromes p < 2^n.

The programs for A206918, the canonical program `A206918.P13043987692055361800` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206918 has offset 0).

The definition of A206918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206918.P13043987692055361800

`8*(a(n-2)+1)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206918

/-- `8*(a(n-2)+1)` -/
def P13043987692055361800.Spec : Prop :=
  ∀ n, (P13043987692055361800.a n : ℤ) = A206918 n

theorem P13043987692055361800.correct : P13043987692055361800.Spec := by
  intro n
  simp only [A206918]

end A206918

/-! ## A206918.P8042241923803497404

`∑[8*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=12`
-/

namespace A206918.P8042241923803497404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 12] fun n f1 =>
  8 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206918.P8042241923803497404

namespace A206918

/-- `∑[8*a(n-2)]` -/
def P8042241923803497404.Spec : Prop :=
  ∀ n, (P8042241923803497404.a n : ℤ) = A206918 n

end A206918

/-! ## A206918.P7990653623128660342

`8*(or(2, a(n-2))-1)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A206918.P7990653623128660342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  8 * (Int.lor 2 (a (n - 2)) - 1)

end

end A206918.P7990653623128660342

namespace A206918

/-- `8*(or(2, a(n-2))-1)` -/
def P7990653623128660342.Spec : Prop :=
  ∀ n, P7990653623128660342.a n = A206918 n

end A206918

/-! ## A206918.P13809246549806148373

`8*(xor(2, a(n-2))-1)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A206918.P13809246549806148373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  8 * (Int.xor 2 (a (n - 2)) - 1)

end

end A206918.P13809246549806148373

namespace A206918

/-- `8*(xor(2, a(n-2))-1)` -/
def P13809246549806148373.Spec : Prop :=
  ∀ n, P13809246549806148373.a n = A206918 n

end A206918

/-! ## A206918.P17816256896619355106

`8-(a(n-2)-9*a(n-2))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A206918.P17816256896619355106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  8 - (a (n - 2) - 9 * a (n - 2))

end

end A206918.P17816256896619355106

namespace A206918

/-- `8-(a(n-2)-9*a(n-2))` -/
def P17816256896619355106.Spec : Prop :=
  ∀ n, P17816256896619355106.a n = A206918 n

end A206918

/-! ## A206918.P7835652879098639851

`∑[A206917(n)]`
-/

namespace A206918.P7835652879098639851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206918.P7835652879098639851

namespace A206918

/-- `∑[A206917(n)]` -/
def P7835652879098639851.Spec : Prop :=
  ∀ n, P7835652879098639851.a n = A206918 n

end A206918

/-!
# A206919: Sum of binary palindromes <= n.

The programs for A206919, the canonical program `A206919.P13767851510904863156` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206919 has offset 0).

The definition of A206919 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206913, A206915, A206920, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206919.P13767851510904863156

`A206920(A206915(A206913(n)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A206919

/-- `A206920(A206915(A206913(n)))` -/
def P13767851510904863156.Spec : Prop :=
  ∀ n, P13767851510904863156.a n = A206919 n

theorem P13767851510904863156.correct : P13767851510904863156.Spec := by
  intro n
  simp only [A206919]

end A206919

/-! ## A206919.P14961753695981998017

`∑[n*A178225(n)]`
-/

namespace A206919.P14961753695981998017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206919.P14961753695981998017

namespace A206919

/-- `∑[n*A178225(n)]` -/
def P14961753695981998017.Spec : Prop :=
  ∀ n, P14961753695981998017.a n = A206919 n

end A206919

/-! ## A206919.P4154707770599174925

`∑[n*Δ[A206916(n)]]`
-/

namespace A206919.P4154707770599174925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206919.P4154707770599174925

namespace A206919

/-- `∑[n*Δ[A206916(n)]]` -/
def P4154707770599174925.Spec : Prop :=
  ∀ n, P4154707770599174925.a n = A206919 n

end A206919

/-! ## A206919.P6544866999460778807

`∑[n*char[A062130(n)]]`
-/

namespace A206919.P6544866999460778807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206919.P6544866999460778807

namespace A206919

/-- `∑[n*char[A062130(n)]]` -/
def P6544866999460778807.Spec : Prop :=
  ∀ n, (P6544866999460778807.a n : ℤ) = A206919 n

end A206919

/-! ## A206919.P3379276034972331428

`∑[n*char[A175298(n)]]`
-/

namespace A206919.P3379276034972331428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206919.P3379276034972331428

namespace A206919

/-- `∑[n*char[A175298(n)]]` -/
def P3379276034972331428.Spec : Prop :=
  ∀ n, (P3379276034972331428.a n : ℤ) = A206919 n

end A206919

/-! ## A206919.P3785314172941268070

`∑[n*char[A206914(n)]]`
-/

namespace A206919.P3785314172941268070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206919.P3785314172941268070

namespace A206919

/-- `∑[n*char[A206914(n)]]` -/
def P3785314172941268070.Spec : Prop :=
  ∀ n, (P3785314172941268070.a n : ℤ) = A206919 n

end A206919

/-! ## A206919.P534800412062428254

`∑[n*char[A265509(n)]]`
-/

namespace A206919.P534800412062428254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206919.P534800412062428254

namespace A206919

/-- `∑[n*char[A265509(n)]]` -/
def P534800412062428254.Spec : Prop :=
  ∀ n, (P534800412062428254.a n : ℤ) = A206919 n

end A206919

/-! ## A206919.P2776749621782772469

`∑[n*char[A330717(n)]]`
-/

namespace A206919.P2776749621782772469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206919.P2776749621782772469

namespace A206919

/-- `∑[n*char[A330717(n)]]` -/
def P2776749621782772469.Spec : Prop :=
  ∀ n, (P2776749621782772469.a n : ℤ) = A206919 n

end A206919

/-! ## A206919.P223237068349530308

`∑[n*(1-A178226(n))]`
-/

namespace A206919.P223237068349530308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A178226 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206919.P223237068349530308

namespace A206919

/-- `∑[n*(1-A178226(n))]` -/
def P223237068349530308.Spec : Prop :=
  ∀ n, P223237068349530308.a n = A206919 n

end A206919

/-! ## A206919.P11959327989142289020

`∑[n*C(2, A175919(n))]`
-/

namespace A206919.P11959327989142289020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (A175919 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206919.P11959327989142289020

namespace A206919

/-- `∑[n*C(2, A175919(n))]` -/
def P11959327989142289020.Spec : Prop :=
  ∀ n, (P11959327989142289020.a n : ℤ) = A206919 n

end A206919

/-!
# A206920: Sum of the first n binary palindromes; a(n) = Sum_{k=1..n} A006995(k).

The programs for A206920, the canonical program `A206920.P1249095513407245471` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206920 has offset 1).

The definition of A206920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206920.P6068313628347241841

`∑[A006995(n+1)]`
-/

namespace A206920.P6068313628347241841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P6068313628347241841

namespace A206920

/-- `∑[A006995(n+1)]` -/
def P6068313628347241841.Spec : Prop :=
  ∀ n, P6068313628347241841.a n = A206920 (n + 1)

end A206920

/-! ## A206920.P16109278393436500915

`∑[record[A006995(A331745(n))]]`
-/

namespace A206920.P16109278393436500915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A331745 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P16109278393436500915

namespace A206920

/-- `∑[record[A006995(A331745(n))]]` -/
def P16109278393436500915.Spec : Prop :=
  ∀ n, P16109278393436500915.a n = A206920 (n + 1)

end A206920

/-! ## A206920.P1249095513407245471

`∑[∑[A164126(n+1)]-A164126(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A206920

/-- `∑[∑[A164126(n+1)]-A164126(n+1)]` -/
def P1249095513407245471.Spec : Prop :=
  ∀ n, P1249095513407245471.a n = A206920 (n + 1)

theorem P1249095513407245471.correct : P1249095513407245471.Spec := by
  intro n
  simp only [A206920, Nat.add_sub_cancel]

end A206920

/-! ## A206920.P9223515537846910941

`a(n-1)+or(A006995(n+1), A030308(n))` with `a(0)=0`
-/

namespace A206920.P9223515537846910941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.lor (A006995 (n + 1)) (A030308 n)

end

end A206920.P9223515537846910941

namespace A206920

/-- `a(n-1)+or(A006995(n+1), A030308(n))` -/
def P9223515537846910941.Spec : Prop :=
  ∀ n, P9223515537846910941.a n = A206920 (n + 1)

end A206920

/-! ## A206920.P4771717344305203340

`a(n-1)+or(A006995(n+1), A030109(n+1))` with `a(0)=0`
-/

namespace A206920.P4771717344305203340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.lor (A006995 (n + 1)) (A030109 (n + 1))

end

end A206920.P4771717344305203340

namespace A206920

/-- `a(n-1)+or(A006995(n+1), A030109(n+1))` -/
def P4771717344305203340.Spec : Prop :=
  ∀ n, P4771717344305203340.a n = A206920 (n + 1)

end A206920

/-! ## A206920.P5107667417005367308

`a(n-1)+A006995(n+1)%A006995(n+2)` with `a(0)=0`
-/

namespace A206920.P5107667417005367308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A006995 (n + 1)) (A006995 (n + 2))

end

end A206920.P5107667417005367308

namespace A206920

/-- `a(n-1)+A006995(n+1)%A006995(n+2)` -/
def P5107667417005367308.Spec : Prop :=
  ∀ n, P5107667417005367308.a n = A206920 (n + 1)

end A206920

/-! ## A206920.P16777996569564846605

`∑[record[A049776(n+1)-1]]`
-/

namespace A206920.P16777996569564846605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P16777996569564846605

namespace A206920

/-- `∑[record[A049776(n+1)-1]]` -/
def P16777996569564846605.Spec : Prop :=
  ∀ n, P16777996569564846605.a n = A206920 (n + 1)

end A206920

/-! ## A206920.P1387735509798431854

`∑[sqrt(A192775(n+1))]`
-/

namespace A206920.P1387735509798431854
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A192775 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P1387735509798431854

namespace A206920

/-- `∑[sqrt(A192775(n+1))]` -/
def P1387735509798431854.Spec : Prop :=
  ∀ n, P1387735509798431854.a n = (A206920 (n + 1) : ℝ)

end A206920

/-! ## A206920.P3753995803122496447

`∑[record[n-A303534(n)²]]`
-/

namespace A206920.P3753995803122496447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A303534 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P3753995803122496447

namespace A206920

/-- `∑[record[n-A303534(n)²]]` -/
def P3753995803122496447.Spec : Prop :=
  ∀ n, P3753995803122496447.a n = A206920 (n + 1)

end A206920

/-! ## A206920.P16040048682636302961

`∑[lt[A303534(n), 1]]`
-/

namespace A206920.P16040048682636302961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P16040048682636302961

namespace A206920

/-- `∑[lt[A303534(n), 1]]` -/
def P16040048682636302961.Spec : Prop :=
  ∀ n, (P16040048682636302961.a n : ℤ) = A206920 (n + 1)

end A206920

/-! ## A206920.P1238711702016653100

`∑[lt[A175919(n), 1]]`
-/

namespace A206920.P1238711702016653100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P1238711702016653100

namespace A206920

/-- `∑[lt[A175919(n), 1]]` -/
def P1238711702016653100.Spec : Prop :=
  ∀ n, (P1238711702016653100.a n : ℤ) = A206920 (n + 1)

end A206920

/-! ## A206920.P7724271642644042211

`∑[record[n-A055945(n)²]]`
-/

namespace A206920.P7724271642644042211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055945 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P7724271642644042211

namespace A206920

/-- `∑[record[n-A055945(n)²]]` -/
def P7724271642644042211.Spec : Prop :=
  ∀ n, P7724271642644042211.a n = A206920 (n + 1)

end A206920

/-! ## A206920.P7594558930824876971

`∑[eq[1, A178225(n)]]`
-/

namespace A206920.P7594558930824876971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P7594558930824876971

namespace A206920

/-- `∑[eq[1, A178225(n)]]` -/
def P7594558930824876971.Spec : Prop :=
  ∀ n, (P7594558930824876971.a n : ℤ) = A206920 (n + 1)

end A206920

/-! ## A206920.P16735016163304794873

`∑[record[A330717(n)]]`
-/

namespace A206920.P16735016163304794873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P16735016163304794873

namespace A206920

/-- `∑[record[A330717(n)]]` -/
def P16735016163304794873.Spec : Prop :=
  ∀ n, P16735016163304794873.a n = A206920 (n + 1)

end A206920

/-! ## A206920.P16845424247818109202

`∑[record[A331471(n)]]`
-/

namespace A206920.P16845424247818109202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P16845424247818109202

namespace A206920

/-- `∑[record[A331471(n)]]` -/
def P16845424247818109202.Spec : Prop :=
  ∀ n, P16845424247818109202.a n = A206920 (n + 1)

end A206920

/-! ## A206920.P12650091145079139069

`∑[record[A331804(n)]]`
-/

namespace A206920.P12650091145079139069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P12650091145079139069

namespace A206920

/-- `∑[record[A331804(n)]]` -/
def P12650091145079139069.Spec : Prop :=
  ∀ n, P12650091145079139069.a n = A206920 (n + 1)

end A206920

/-! ## A206920.P10499955777606139381

`∑[eq[A334666(n), A334667(n)]]`
-/

namespace A206920.P10499955777606139381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334666 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334667 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206920.P10499955777606139381

namespace A206920

/-- `∑[eq[A334666(n), A334667(n)]]` -/
def P10499955777606139381.Spec : Prop :=
  ∀ n, (P10499955777606139381.a n : ℤ) = A206920 (n + 1)

end A206920

/-!
# A206921: Rank of the n-th binary palindrome. The minimal number of iterations A206915(A206915(...A206915(A006995(n))...)) such that the result is not a binary palindrome, a(3)=1.

The programs for A206921, there is no canonical definition to state claims against.
-/

/-! ## A206921.P9104913561452623029

`A344088(C(A167156(n+2), A167172(n)))`
-/

namespace A206921.P9104913561452623029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344088 (Nat.choose (A167156 (n + 2)).toNat (A167172 n).toNat)

end

end A206921.P9104913561452623029

/-! ## A206921.P6366573695515857876

`gcd(n+6, A200780(A055557(n+1)))`
-/

namespace A206921.P6366573695515857876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 6 : ℤ) (A200780 (A055557 (n + 1)).toNat)

end

end A206921.P6366573695515857876

/-! ## A206921.P14683823891073156821

`A112377(∑[A251089(n+1)-A230980(n)])`
-/

namespace A206921.P14683823891073156821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251089 (n + 1) - A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112377 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206921.P14683823891073156821

/-! ## A206921.P11556921860436204604

`A047846(A132664(2*n+3)^A260118(2*n))`
-/

namespace A206921.P11556921860436204604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047846 (SequenceMachineLib.roundAway ((A132664 (2 * n + 3) : ℚ) ^ (A260118 (2 * n) : ℤ))).toNat

end

end A206921.P11556921860436204604

/-! ## A206921.P15457454176059662711

`A338912(A233775(n+2)%A334808(2*(n+2)))`
-/

namespace A206921.P15457454176059662711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338912 (Int.tmod (A233775 (n + 2)) (A334808 (2 * (n + 2)))).toNat

end

end A206921.P15457454176059662711

/-!
# A206923: Number of bisections of the n-th binary palindrome bit pattern until the result is not palindromic.

The programs for A206923, there is no canonical definition to state claims against.
-/

/-! ## A206923.P9257970229981813783

`gcd(A055999(A185947(n)), A206441(n+1))`
-/

namespace A206923.P9257970229981813783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055999 (A185947 n).toNat) (A206441 (n + 1))

end

end A206923.P9257970229981813783

/-! ## A206923.P4556951817766256844

`A118383(A118402(n)+A073138(3*n+2))`
-/

namespace A206923.P4556951817766256844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118383 (A118402 n + A073138 (3 * n + 2)).toNat

end

end A206923.P4556951817766256844

/-! ## A206923.P785871792727888659

`A206441(A194446(n+1)^(and(1, n)+1))`
-/

namespace A206923.P785871792727888659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206441 (A194446 (n + 1) ^ (Nat.land 1 n + 1)).toNat

end

end A206923.P785871792727888659

/-! ## A206923.P10145000730085133255

`A206441(A194446(n+1)^(val(n+1, 2)+1))`
-/

namespace A206923.P10145000730085133255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206441 (A194446 (n + 1) ^ (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

end

end A206923.P10145000730085133255

/-! ## A206923.P8493006315919710204

`A360189(A049559(3*n+1)%A334338(3*n+2))`
-/

namespace A206923.P8493006315919710204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360189 (Int.tmod (A049559 (3 * n + 1)) (A334338 (3 * n + 2))).toNat

end

end A206923.P8493006315919710204

/-!
# A206924: Number of contiguous palindromic bit patterns in the n-th binary palindrome.

The programs for A206924, there is no canonical definition to state claims against.
-/

/-! ## A206924.P1915714412249349398

`A206925(or(1, A006995(n+1)))`
-/

namespace A206924.P1915714412249349398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (Int.lor 1 (A006995 (n + 1))).toNat

end

end A206924.P1915714412249349398

/-! ## A206924.P2698559515333419605

`A206925(A006995(ceil(acot(n)+n)))`
-/

namespace A206924.P2698559515333419605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (A006995 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat).toNat

end

end A206924.P2698559515333419605

/-! ## A206924.P16874143836991302921

`A206925(floor(A006995(n+1)+acot(n)))`
-/

namespace A206924.P16874143836991302921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 ⌊(A006995 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A206924.P16874143836991302921

/-! ## A206924.P5174387272061646088

`A206925(A006995(n+1)^floor(atan(n)))`
-/

namespace A206924.P5174387272061646088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (SequenceMachineLib.roundAway ((A006995 (n + 1) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A206924.P5174387272061646088

/-! ## A206924.P6412564983814077614

`A206925(or(1, record[A049776(n+1)-1]))`
-/

namespace A206924.P6412564983814077614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A206924.P6412564983814077614

/-! ## A206924.P8250377295887786582

`A206925(A006995(n+1)^ceil(sin(n)²))`
-/

namespace A206924.P8250377295887786582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (SequenceMachineLib.roundAway ((A006995 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A206924.P8250377295887786582

/-! ## A206924.P1858868026174571502

`A206925(A006995(n+1)+C(2, n+2))`
-/

namespace A206924.P1858868026174571502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (A006995 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A206924.P1858868026174571502

/-! ## A206924.P6439629113860918136

`A206925(A006995(n+1)-round(n/(n+1))+1)`
-/

namespace A206924.P6439629113860918136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (A006995 (n + 1) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) + 1).toNat

end

end A206924.P6439629113860918136

/-! ## A206924.P16772660690453423206

`A206925(A006995(n+1)+A000007(n))`
-/

namespace A206924.P16772660690453423206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (A006995 (n + 1) + A000007 n).toNat

end

end A206924.P16772660690453423206

/-! ## A206924.P14014149434102097870

`A206925(∏{d}[A006995(n+1), A014963(#)])`
-/

namespace A206924.P14014149434102097870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A206924.P14014149434102097870

/-! ## A206924.P14860239855249669921

`A206925(A178225(2*n)+A006995(n+1))`
-/

namespace A206924.P14860239855249669921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (A178225 (2 * n) + A006995 (n + 1)).toNat

end

end A206924.P14860239855249669921

/-! ## A206924.P15308922167775399266

`A206925(A006995(n+1)+Δ[A000051(n)]%2)`
-/

namespace A206924.P15308922167775399266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (A006995 (n + 1) + Int.tmod (f1 (n + 1) - f1 n) 2).toNat

end

end A206924.P15308922167775399266

/-! ## A206924.P14880452511842210367

`A206925(A006995(n+1)+Δ[A006995(n+1)]%2)`
-/

namespace A206924.P14880452511842210367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (A006995 (n + 1) + Int.tmod (f1 (n + 1) - f1 n) 2).toNat

end

end A206924.P14880452511842210367

/-!
# A206926: Numbers such that the number of contiguous palindromic bit patterns in their binary representation is minimal (for a given number of places).

The programs for A206926, there is no canonical definition to state claims against.
-/

/-! ## A206926.P17285686187001809583

`A201992(n+3)-A336923(A057214(2*n+4))`
-/

namespace A206926.P17285686187001809583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201992 (n + 3) - A336923 (A057214 (2 * n + 4)).toNat

end

end A206926.P17285686187001809583

/-! ## A206926.P15553485728132277289

`∩[A135383(A028983(n+1)), A201992(n)]`
-/

namespace A206926.P15553485728132277289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135383 (A028983 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201992 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206926.P15553485728132277289

/-! ## A206926.P4431011752053767367

`A201992(n+3)-A048298(A108201(n+1))`
-/

namespace A206926.P4431011752053767367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201992 (n + 3) - A048298 (A108201 (n + 1)).toNat

end

end A206926.P4431011752053767367

/-!
# A206927: Minimal numbers of binary length n+1 such that the number of contiguous palindromic bit patterns in the binary representation is minimal.

The programs for A206927, the canonical program `A206927.P5421643184906506480` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206927 has offset 1).

The definition of A206927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206927.P5421643184906506480

`floor(37*2^(n+2)/63)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206927

/-- `floor(37*2^(n+2)/63)` -/
def P5421643184906506480.Spec : Prop :=
  ∀ n, P5421643184906506480.a n = A206927 (n + 1)

theorem P5421643184906506480.correct : P5421643184906506480.Spec := by
  intro n
  simp only [A206927, Nat.add_sub_cancel]

end A206927

/-! ## A206927.P9206165666498984710

`A214090(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A206927.P9206165666498984710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A214090 n + 2 * a (n - 1)

end

end A206927.P9206165666498984710

namespace A206927

/-- `A214090(n)+2*a(n-1)` -/
def P9206165666498984710.Spec : Prop :=
  ∀ n, P9206165666498984710.a n = A206927 (n + 1)

end A206927

/-! ## A206927.P4184370711857963379

`A000975(n+1)+Δ[A195904(n+1)]`
-/

namespace A206927.P4184370711857963379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + (f1 (n + 1) - f1 n)

end

end A206927.P4184370711857963379

namespace A206927

/-- `A000975(n+1)+Δ[A195904(n+1)]` -/
def P4184370711857963379.Spec : Prop :=
  ∀ n, P4184370711857963379.a n = A206927 (n + 1)

end A206927

/-! ## A206927.P1955953767777740877

`Δ[A195904(n+1)]+∑[A152046(n+1)]`
-/

namespace A206927.P1955953767777740877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A206927.P1955953767777740877

namespace A206927

/-- `Δ[A195904(n+1)]+∑[A152046(n+1)]` -/
def P1955953767777740877.Spec : Prop :=
  ∀ n, P1955953767777740877.a n = A206927 (n + 1)

end A206927

/-! ## A206927.P5411902581717925569

`A000975(n+1)+A195904(n+2)-A195904(n+1)`
-/

namespace A206927.P5411902581717925569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + (A195904 (n + 2) - A195904 (n + 1))

end

end A206927.P5411902581717925569

namespace A206927

/-- `A000975(n+1)+A195904(n+2)-A195904(n+1)` -/
def P5411902581717925569.Spec : Prop :=
  ∀ n, P5411902581717925569.a n = A206927 (n + 1)

end A206927

/-!
# A206928: Position of n+cos(n) when {k+cos(k)} and {k+sin(k)} are jointly ranked; complement of A206929.

The programs for A206928, there is no canonical definition to state claims against.
-/

/-! ## A206928.P10254573726439131864

`comp[A206929(n+1)-1]+1`
-/

namespace A206928.P10254573726439131864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206929 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206928.P10254573726439131864

/-! ## A206928.P6638762657983165506

`eq[char[A206929(n+1)], A151933(n)]`
-/

namespace A206928.P6638762657983165506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206929 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A206928.P6638762657983165506

/-!
# A206929: Position of n+sin(n) when {k+cos(k)} and {k+sin(k)} are jointly ranked; complement of A206928.

The programs for A206929, there is no canonical definition to state claims against.
-/

/-! ## A206929.P1810463500870112640

`comp[A206928(n+1)-1]+1`
-/

namespace A206929.P1810463500870112640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206928 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206929.P1810463500870112640

/-! ## A206929.P6950035231670157494

`eq[char[A206928(n+1)], A286100(n+1)]`
-/

namespace A206929.P6950035231670157494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206928 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A206929.P6950035231670157494

/-! ## A206929.P15409164107278059178

`or(A206909(n+2)%2, A206910(n+1))`
-/

namespace A206929.P15409164107278059178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A206909 (n + 2)) 2) (A206910 (n + 1))

end

end A206929.P15409164107278059178

/-! ## A206929.P16965785331917831710

`eq[char[A206928(n+1)], A151933(n)]`
-/

namespace A206929.P16965785331917831710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206928 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A206929.P16965785331917831710

/-! ## A206929.P16766408537496705960

`A182659(comp[A206928(n+1)-1])`
-/

namespace A206929.P16766408537496705960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206928 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182659 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A206929.P16766408537496705960

/-!
# A206930: Number of n X n 0..1 arrays avoiding 0 0 0 horizontally and 0 1 1 vertically.

The programs for A206930, there is no canonical definition to state claims against.
-/

/-! ## A206930.P16714023379182176306

`A206936(∑[4*n]+1)`
-/

namespace A206930.P16714023379182176306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206930.P16714023379182176306

/-! ## A206930.P6821028154880422157

`record[gcd(A114327(n), A206936(n+1))]`
-/

namespace A206930.P6821028154880422157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A206936 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206930.P6821028154880422157

/-! ## A206930.P2032347808891426773

`record[A077606(n+1)*A206936(n+1)]`
-/

namespace A206930.P2032347808891426773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A206936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206930.P2032347808891426773

/-! ## A206930.P12360054606538737403

`A206936(A001844(n))+A185274(n)`
-/

namespace A206930.P12360054606538737403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A001844 n).toNat + A185274 n

end

end A206930.P12360054606538737403

/-! ## A206930.P16064413809400177551

`A025451(n)*A206936(A001844(n))`
-/

namespace A206930.P16064413809400177551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n * A206936 (A001844 n).toNat

end

end A206930.P16064413809400177551

/-!
# A206931: Number of n X 3 0..1 arrays avoiding 0 0 0 horizontally and 0 1 1 vertically.

The programs for A206931, there is no canonical definition to state claims against.
-/

/-! ## A206931.P12162505533798615668

`A206936(∑[n+3]+1)`
-/

namespace A206931.P12162505533798615668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206931.P12162505533798615668

/-! ## A206931.P5024762106512598459

`A206936(A034856(n+2))+A185284(n)`
-/

namespace A206931.P5024762106512598459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A034856 (n + 2)).toNat + A185284 n

end

end A206931.P5024762106512598459

/-! ## A206931.P17305437981975099835

`A033999(n)²*A206936(A034856(n+2))`
-/

namespace A206931.P17305437981975099835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A206936 (A034856 (n + 2)).toNat

end

end A206931.P17305437981975099835

/-! ## A206931.P16047902041919858758

`A285007(n+1)+A206936(A034856(n+2))`
-/

namespace A206931.P16047902041919858758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + A206936 (A034856 (n + 2)).toNat

end

end A206931.P16047902041919858758

/-! ## A206931.P3789967734484249889

`A206936(A034856(n+2))%A299342(n+1)`
-/

namespace A206931.P3789967734484249889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206936 (A034856 (n + 2)).toNat) (A299342 (n + 1))

end

end A206931.P3789967734484249889

/-!
# A206932: Number of nX4 0..1 arrays avoiding 0 0 0 horizontally and 0 1 1 vertically.

The programs for A206932, there is no canonical definition to state claims against.
-/

/-! ## A206932.P6782615891613447478

`A206936(A141214(n+1))`
-/

namespace A206932.P6782615891613447478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A141214 (n + 1)).toNat

end

end A206932.P6782615891613447478

/-! ## A206932.P2566931735751404941

`A206936(A055998(n+2))`
-/

namespace A206932.P2566931735751404941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A055998 (n + 2)).toNat

end

end A206932.P2566931735751404941

/-! ## A206932.P14894937013306390285

`A206936(A155212(n)+5)`
-/

namespace A206932.P14894937013306390285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A155212 n + 5).toNat

end

end A206932.P14894937013306390285

/-! ## A206932.P7342158426674058769

`A206936(A056000(n)+7)`
-/

namespace A206932.P7342158426674058769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A056000 n + 7).toNat

end

end A206932.P7342158426674058769

/-! ## A206932.P6638859450830588922

`A206936(eq[3, A193592(n)])`
-/

namespace A206932.P6638859450830588922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206932.P6638859450830588922

/-!
# A206933: Number of nX5 0..1 arrays avoiding 0 0 0 horizontally and 0 1 1 vertically.

The programs for A206933, there is no canonical definition to state claims against.
-/

/-! ## A206933.P512417738628061633

`A206936(Δ[A264443(n)])`
-/

namespace A206933.P512417738628061633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (f1 (n + 1) - f1 n).toNat

end

end A206933.P512417738628061633

/-! ## A206933.P4969591684907971020

`A206936(A046691(n+3))`
-/

namespace A206933.P4969591684907971020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A046691 (n + 3)).toNat

end

end A206933.P4969591684907971020

/-! ## A206933.P14885160047191520316

`A206936(eq[4, A193592(n)])`
-/

namespace A206933.P14885160047191520316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206933.P14885160047191520316

/-! ## A206933.P1208950881237414091

`A206936(Δ[A023545(n+1)])`
-/

namespace A206933.P1208950881237414091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (f1 (n + 1) - f1 n).toNat

end

end A206933.P1208950881237414091

/-! ## A206933.P2654712214039079697

`A206936(eq[8, A057728(n+1)])`
-/

namespace A206933.P2654712214039079697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206933.P2654712214039079697

/-!
# A206934: Number of nX6 0..1 arrays avoiding 0 0 0 horizontally and 0 1 1 vertically.

The programs for A206934, there is no canonical definition to state claims against.
-/

/-! ## A206934.P13897526835562564490

`A206936(A052905(n+3))`
-/

namespace A206934.P13897526835562564490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A052905 (n + 3)).toNat

end

end A206934.P13897526835562564490

/-! ## A206934.P16667643679899057274

`A206936(eq[3, A219347(n)])`
-/

namespace A206934.P16667643679899057274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206934.P16667643679899057274

/-! ## A206934.P3122156967697228647

`A206936(eq[5, A193592(n)])`
-/

namespace A206934.P3122156967697228647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206934.P3122156967697228647

/-! ## A206934.P4019202524420595749

`A206936(eq[8, A185782(n+1)])`
-/

namespace A206934.P4019202524420595749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206934.P4019202524420595749

/-! ## A206934.P10924029608705216517

`A206936(Δ[Δ[A006504(n+1)]])`
-/

namespace A206934.P10924029608705216517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (f1 (n + 1) - f1 n).toNat

end

end A206934.P10924029608705216517

/-!
# A206935: Number of nX7 0..1 arrays avoiding 0 0 0 horizontally and 0 1 1 vertically.

The programs for A206935, there is no canonical definition to state claims against.
-/

/-! ## A206935.P2800202357536355757

`A206936(eq[4, A219347(n)])`
-/

namespace A206935.P2800202357536355757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206935.P2800202357536355757

/-! ## A206935.P10549599267936043640

`A206936(eq[6, A193592(n)])`
-/

namespace A206935.P10549599267936043640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206935.P10549599267936043640

/-! ## A206935.P6058569605104067378

`A206936(eq[10, A185782(n+1)])`
-/

namespace A206935.P6058569605104067378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206935.P6058569605104067378

/-! ## A206935.P17460500656429533830

`A206936(eq[32, A057728(n+1)])`
-/

namespace A206935.P17460500656429533830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206935.P17460500656429533830

/-! ## A206935.P15969589840041820908

`A206936(eq[7, A200370(n+1)])`
-/

namespace A206935.P15969589840041820908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206935.P15969589840041820908

/-!
# A206936: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 horizontally and 0 1 1 vertically.

The programs for A206936, there is no canonical definition to state claims against.
-/

/-! ## A206936.P8237756530227975495

`A206871(n+1)+A178798(A100861(n))`
-/

namespace A206936.P8237756530227975495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (n + 1) + A178798 (A100861 n).toNat

end

end A206936.P8237756530227975495

/-! ## A206936.P5404890902449682433

`A206871(n+1)-A025465(A276658(n))`
-/

namespace A206936.P5404890902449682433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (n + 1) - A025465 (A276658 n).toNat

end

end A206936.P5404890902449682433

/-! ## A206936.P11553911294272183678

`A206871(n+1)-A185238(A047997(n+1))`
-/

namespace A206936.P11553911294272183678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (n + 1) - A185238 (A047997 (n + 1)).toNat

end

end A206936.P11553911294272183678

/-! ## A206936.P10272356185580511248

`A206871(n+1)-A295659(A164363(n+1))`
-/

namespace A206936.P10272356185580511248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (n + 1) - A295659 (A164363 (n + 1)).toNat

end

end A206936.P10272356185580511248

/-!
# A206937: Number of 4Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 1 1 vertically.

The programs for A206937, there is no canonical definition to state claims against.
-/

/-! ## A206937.P4962535207214918961

`A206936(A141214(n)+7)`
-/

namespace A206937.P4962535207214918961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A141214 n + 7).toNat

end

end A206937.P4962535207214918961

/-! ## A206937.P10467199972244288569

`A206936(A052905(n)+9)`
-/

namespace A206937.P10467199972244288569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A052905 n + 9).toNat

end

end A206937.P10467199972244288569

/-! ## A206937.P7268522280621537292

`A206936(A055999(n)+10)`
-/

namespace A206937.P7268522280621537292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A055999 n + 10).toNat

end

end A206937.P7268522280621537292

/-! ## A206937.P16512881060371246427

`A206936(Δ[A008778(n)]+6)`
-/

namespace A206937.P16512881060371246427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (f1 (n + 1) - f1 n + 6).toNat

end

end A206937.P16512881060371246427

/-! ## A206937.P6875415230075076223

`A206936(A167499(n+2)-1)`
-/

namespace A206937.P6875415230075076223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A167499 (n + 2) - 1).toNat

end

end A206937.P6875415230075076223

/-!
# A206938: Number of 5Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 1 1 vertically.

The programs for A206938, there is no canonical definition to state claims against.
-/

/-! ## A206938.P16510155909813697780

`A206936(A167499(n+3))`
-/

namespace A206938.P16510155909813697780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A167499 (n + 3)).toNat

end

end A206938.P16510155909813697780

/-! ## A206938.P383301784384196905

`A206936(A155212(n)+13)`
-/

namespace A206938.P383301784384196905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A155212 n + 13).toNat

end

end A206938.P383301784384196905

/-! ## A206938.P7086165210062965831

`A206936(A056000(n)+15)`
-/

namespace A206938.P7086165210062965831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A056000 n + 15).toNat

end

end A206938.P7086165210062965831

/-! ## A206938.P17639587218819342483

`A206936(A000217(n+4)+5)`
-/

namespace A206938.P17639587218819342483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A000217 (n + 4) + 5).toNat

end

end A206938.P17639587218819342483

/-! ## A206938.P15930761719847269467

`A206936(A055998(n+2)+8)`
-/

namespace A206938.P15930761719847269467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A055998 (n + 2) + 8).toNat

end

end A206938.P15930761719847269467

/-!
# A206939: Number of 6Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 1 1 vertically.

The programs for A206939, there is no canonical definition to state claims against.
-/

/-! ## A206939.P11686734960769061342

`A206936(A141214(n+2)+9)`
-/

namespace A206939.P11686734960769061342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A141214 (n + 2) + 9).toNat

end

end A206939.P11686734960769061342

/-! ## A206939.P1004416305804145171

`A206936(A052905(n+2)+11)`
-/

namespace A206939.P1004416305804145171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A052905 (n + 2) + 11).toNat

end

end A206939.P1004416305804145171

/-! ## A206939.P10675058874632164508

`A206936(eq[7, A131818(n+1)])`
-/

namespace A206939.P10675058874632164508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206939.P10675058874632164508

/-! ## A206939.P14793748034247640287

`A206936(Δ[A023545(n+1)]+10)`
-/

namespace A206939.P14793748034247640287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (f1 (n + 1) - f1 n + 10).toNat

end

end A206939.P14793748034247640287

/-! ## A206939.P15532433369472177914

`A206936(A167499(n+8)-A016813(n+7))`
-/

namespace A206939.P15532433369472177914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A167499 (n + 8) - A016813 (n + 7)).toNat

end

end A206939.P15532433369472177914

/-!
# A206940: Number of 7Xn 0..1 arrays avoiding 0 0 0 horizontally and 0 1 1 vertically.

The programs for A206940, there is no canonical definition to state claims against.
-/

/-! ## A206940.P16771918011153306798

`A206936(A056119(n)+28)`
-/

namespace A206940.P16771918011153306798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A056119 n + 28).toNat

end

end A206940.P16771918011153306798

/-! ## A206940.P15687530141349184081

`A206936(eq[11, A066657(n)])`
-/

namespace A206940.P15687530141349184081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206940.P15687530141349184081

/-! ## A206940.P12281038412181691742

`A206936(A166136(n+5)+1)`
-/

namespace A206940.P12281038412181691742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A166136 (n + 5) + 1).toNat

end

end A206940.P12281038412181691742

/-! ## A206940.P9184993086897176602

`A206936(A167499(n+5)+2)`
-/

namespace A206940.P9184993086897176602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A167499 (n + 5) + 2).toNat

end

end A206940.P9184993086897176602

/-! ## A206940.P227806404077398938

`A206936(eq[8, A131818(n+1)])`
-/

namespace A206940.P227806404077398938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206940.P227806404077398938

/-!
# A206941: a(n) = phi(lambda(n)), where phi = A000010, lambda = A002322.

The programs for A206941, there is no canonical definition to state claims against.
-/

/-! ## A206941.P1763092677690346623

`A000010(A002322(n+1))`
-/

namespace A206941.P1763092677690346623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002322 (n + 1)).toNat

end

end A206941.P1763092677690346623

/-! ## A206941.P7751320681565779920

`A000010(A263027(n+1)-1)`
-/

namespace A206941.P7751320681565779920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A263027 (n + 1) - 1).toNat

end

end A206941.P7751320681565779920

/-! ## A206941.P10629165495093625992

`A300721(2*A002322(n+1))`
-/

namespace A206941.P10629165495093625992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (2 * A002322 (n + 1)).toNat

end

end A206941.P10629165495093625992

/-! ## A206941.P17808823116232517574

`A000010(1-A277127(n+1)+n)`
-/

namespace A206941.P17808823116232517574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 - A277127 (n + 1) + (n : ℤ)).toNat

end

end A206941.P17808823116232517574

/-! ## A206941.P71895049236762992

`A010554(n+1)/A034380(n+1)`
-/

namespace A206941.P71895049236762992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010554 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ)

end

end A206941.P71895049236762992

/-! ## A206941.P11974744465220573912

`A109606(1-A277127(n+1)+n)+1`
-/

namespace A206941.P11974744465220573912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (1 - A277127 (n + 1) + (n : ℤ)).toNat + 1

end

end A206941.P11974744465220573912

/-! ## A206941.P1096520862196721411

`A300721(A002322(n+1)+A002322(n+1))`
-/

namespace A206941.P1096520862196721411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (A002322 (n + 1) + A002322 (n + 1)).toNat

end

end A206941.P1096520862196721411

/-! ## A206941.P2036162645327223344

`A000010(A000010(n+1)-A104194(n+1))`
-/

namespace A206941.P2036162645327223344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1) - A104194 (n + 1)).toNat

end

end A206941.P2036162645327223344

/-! ## A206941.P8176048010312559491

`A000010(A134198(n+1)-A051903(n+1))`
-/

namespace A206941.P8176048010312559491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134198 (n + 1) - A051903 (n + 1)).toNat

end

end A206941.P8176048010312559491

/-! ## A206941.P15549004384016883842

`A000010(A000010(n+1)/A034380(n+1))`
-/

namespace A206941.P15549004384016883842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A206941.P15549004384016883842

/-! ## A206941.P5480282620126873889

`A000010(A007434(n+1)/A220345(n+1))`
-/

namespace A206941.P5480282620126873889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A007434 (n + 1) : ℚ) / (A220345 (n + 1) : ℚ))).toNat

end

end A206941.P5480282620126873889

/-! ## A206941.P15313817765970219797

`A000010(gcd(A000010(n+1), A104194(n+1)))`
-/

namespace A206941.P15313817765970219797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd (A000010 (n + 1)) (A104194 (n + 1)))

end

end A206941.P15313817765970219797

/-! ## A206941.P9776960686177181727

`A109606((n-A219428(n+1))/A034380(n+1))+1`
-/

namespace A206941.P9776960686177181727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (SequenceMachineLib.roundAway (((n : ℤ) - A219428 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat + 1

end

end A206941.P9776960686177181727

/-! ## A206941.P10609303637949376321

`A039649((n-A219428(n+1))/A034380(n+1))-1`
-/

namespace A206941.P10609303637949376321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (SequenceMachineLib.roundAway (((n : ℤ) - A219428 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat - 1

end

end A206941.P10609303637949376321

/-! ## A206941.P4239379595741679727

`A109606((1-A051953(n+1)+n)/A034380(n+1))+1`
-/

namespace A206941.P4239379595741679727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (SequenceMachineLib.roundAway ((1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat + 1

end

end A206941.P4239379595741679727

/-! ## A206941.P7686377280181947190

`A039649((1-A051953(n+1)+n)/A034380(n+1))-1`
-/

namespace A206941.P7686377280181947190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (SequenceMachineLib.roundAway ((1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat - 1

end

end A206941.P7686377280181947190

/-! ## A206941.P1352881699359139628

`(1-A051953(n+1)+n)/A034380(n+1)-A051953(A002322(n+1))`
-/

namespace A206941.P1352881699359139628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ) - (A051953 (A002322 (n + 1)).toNat : ℚ)

end

end A206941.P1352881699359139628

/-! ## A206941.P16457593844430941395

`A109606(A002322(n+1))+A057427(n+1)`
-/

namespace A206941.P16457593844430941395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A002322 (n + 1)).toNat + A057427 (n + 1)

end

end A206941.P16457593844430941395

/-! ## A206941.P3017510335798976279

`A290084(2*A002322(n+1))`
-/

namespace A206941.P3017510335798976279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290084 (2 * A002322 (n + 1)).toNat

end

end A206941.P3017510335798976279

/-! ## A206941.P6934153895819042841

`A290084(A002322(n+1)+A002322(n+1))`
-/

namespace A206941.P6934153895819042841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290084 (A002322 (n + 1) + A002322 (n + 1)).toNat

end

end A206941.P6934153895819042841

/-!
# A206942: Numbers of the form Phi_k(m) with k > 2 and |m| > 1.

The programs for A206942, there is no canonical definition to state claims against.
-/

/-! ## A206942.P15026286244577224692

`eq[A010554(A089732(n)), A055087(n)]`
-/

namespace A206942.P15026286244577224692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A089732 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206942.P15026286244577224692

/-! ## A206942.P2955780387355248223

`eq[A055087(n), A115362(A004065(n))]`
-/

namespace A206942.P2955780387355248223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A004065 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206942.P2955780387355248223

/-! ## A206942.P16398607532759231133

`eq[A025685(n+1), A115362(A004065(n))]`
-/

namespace A206942.P16398607532759231133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A004065 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206942.P16398607532759231133

/-! ## A206942.P16354199933715169913

`eq[A007424(A175505(n+1)), A055087(n)]`
-/

namespace A206942.P16354199933715169913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (A175505 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206942.P16354199933715169913

/-! ## A206942.P17166351432798196758

`eq[A014963(A308874(n+1)), A055087(n)]`
-/

namespace A206942.P17166351432798196758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A308874 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206942.P17166351432798196758

/-!
# A206943: Generalized repeat unit one numbers: all numbers of the form (m^p-1)/(m-1), where abs(m) > 1 and p is odd prime.

The programs for A206943, there is no canonical definition to state claims against.
-/

/-! ## A206943.P6902620920509167054

`A077481(A110731(n+1))*A206944(A013938(n+1))`
-/

namespace A206943.P6902620920509167054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077481 (A110731 (n + 1)).toNat * A206944 (A013938 (n + 1)).toNat

end

end A206943.P6902620920509167054

/-! ## A206943.P3212052298650311518

`A206944(∑[A052409(A224456(n+3))])`
-/

namespace A206943.P3212052298650311518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A224456 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206944 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206943.P3212052298650311518

/-! ## A206943.P15356246472110078723

`A206944(record[A013938(n+1)-A326542(n)])`
-/

namespace A206943.P15356246472110078723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013938 (n + 1) - A326542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206944 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A206943.P15356246472110078723

/-! ## A206943.P8583149543583893520

`A206944(comp[A347158(2^n)])`
-/

namespace A206943.P8583149543583893520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347158 (2 ^ n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206944 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A206943.P8583149543583893520

/-! ## A206943.P12879924296109797203

`A206944(record[A003987(A318919(n+1))])`
-/

namespace A206943.P12879924296109797203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A318919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206944 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A206943.P12879924296109797203

/-!
# A206944: Numbers Phi_k(m) with integer k > 2, |m| > 1 but k != 2^j (j > 1).

The programs for A206944, there is no canonical definition to state claims against.
-/

/-! ## A206944.P9521416417891206146

`∪[A206945(n+1), A206943(n+2)]`
-/

namespace A206944.P9521416417891206146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206943 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206944.P9521416417891206146

/-! ## A206944.P7614829585296100933

`filter[A206942(n+1), A263243(#)]`
-/

namespace A206944.P7614829585296100933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263243 (f1 j).toNat = 1) n)

end

end A206944.P7614829585296100933

/-! ## A206944.P3091132513450951407

`filter[A206942(n+1), A267621(#)]`
-/

namespace A206944.P3091132513450951407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267621 (f1 j).toNat = 1) n)

end

end A206944.P3091132513450951407

/-! ## A206944.P14418910213350714869

`xor(A185255(2*n), A206943(n+1))`
-/

namespace A206944.P14418910213350714869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185255 (2 * n)) (A206943 (n + 1))

end

end A206944.P14418910213350714869

/-!
# A206945: Prime numbers Phi(k,m) with integer k > 2, |m| > 1, and k != 2^j (j > 1).

The programs for A206945, there is no canonical definition to state claims against.
-/

/-! ## A206945.P5618217854199703979

`∩[A056825(n+1), A206864(n+1)]`
-/

namespace A206945.P5618217854199703979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206945.P5618217854199703979

/-! ## A206945.P11969183347140866261

`∩[A062823(n+1), A206864(n+1)]`
-/

namespace A206945.P11969183347140866261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206945.P11969183347140866261

/-! ## A206945.P8601643498051933975

`∩[A070303(n+1), A206864(n+1)]`
-/

namespace A206945.P8601643498051933975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206945.P8601643498051933975

/-! ## A206945.P17222892520884326767

`∩[A088905(n+1), A206864(n+1)]`
-/

namespace A206945.P17222892520884326767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206945.P17222892520884326767

/-! ## A206945.P13572600611075204417

`filter[A206864(n+1), A263243(#)]`
-/

namespace A206945.P13572600611075204417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263243 (f1 j).toNat = 1) n)

end

end A206945.P13572600611075204417

/-!
# A206946: Primes of the form (m^p-1)/(m-1), where abs(m) > 1 and p is an odd prime.

The programs for A206946, there is no canonical definition to state claims against.
-/

/-! ## A206946.P18050097561974866069

`∪[A059055(n+1), A085104(n+1)]`
-/

namespace A206946.P18050097561974866069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206946.P18050097561974866069

/-! ## A206946.P12954708195365629896

`∪[p?[A059054(n+1)], A085104(n+3)]`
-/

namespace A206946.P12954708195365629896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059054 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A206946.P12954708195365629896

/-! ## A206946.P14003139901539232099

`p?[∪[A053696(n+1), A059054(n+1)]]`
-/

namespace A206946.P14003139901539232099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059054 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A206946.P14003139901539232099

/-! ## A206946.P13997839826241815

`p?[∪[A053696(n+1), A059055(n+1)]]`
-/

namespace A206946.P13997839826241815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A206946.P13997839826241815

/-! ## A206946.P6609622226754762731

`∪[A059055(n+1), p?[A308851(n+1)]]`
-/

namespace A206946.P6609622226754762731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206946.P6609622226754762731

/-! ## A206946.P10901370955741650391

`∪[A059055(n+1), p?[A167782(n+1)]]`
-/

namespace A206946.P10901370955741650391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206946.P10901370955741650391

/-!
# A206947: Number of nonisomorphic graded posets with 0 and non-uniform Hasse graph of rank n, with exactly 2 elements of each rank above 0.

The programs for A206947, the canonical program `A206947.P4565945519058978` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206947 has offset 0).

The definition of A206947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206947.P4565945519058978

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=14`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206947

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P4565945519058978.Spec : Prop :=
  ∀ n, P4565945519058978.a n = A206947 n

theorem P4565945519058978.correct : P4565945519058978.Spec := by
  intro n
  simp only [A206947]

end A206947

/-! ## A206947.P16844073554914324149

`2*(A033190(n)-A001906(n))`
-/

namespace A206947.P16844073554914324149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033190 n - A001906 n)

end

end A206947.P16844073554914324149

namespace A206947

/-- `2*(A033190(n)-A001906(n))` -/
def P16844073554914324149.Spec : Prop :=
  ∀ n, P16844073554914324149.a n = A206947 n

end A206947

/-! ## A206947.P17207081607042015135

`2*(A033190(n)-Δ[A001519(n)])`
-/

namespace A206947.P17207081607042015135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033190 n - (f1 (n + 1) - f1 n))

end

end A206947.P17207081607042015135

namespace A206947

/-- `2*(A033190(n)-Δ[A001519(n)])` -/
def P17207081607042015135.Spec : Prop :=
  ∀ n, P17207081607042015135.a n = A206947 n

end A206947

/-! ## A206947.P10501852597601059838

`Δ[2*(A033191(n)-A001519(n))]`
-/

namespace A206947.P10501852597601059838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033191 n - A001519 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206947.P10501852597601059838

namespace A206947

/-- `Δ[2*(A033191(n)-A001519(n))]` -/
def P10501852597601059838.Spec : Prop :=
  ∀ n, P10501852597601059838.a n = A206947 n

end A206947

/-! ## A206947.P1951871679833345114

`2*(A033190(n)-A000045(2*n))`
-/

namespace A206947.P1951871679833345114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033190 n - A000045 (2 * n))

end

end A206947.P1951871679833345114

namespace A206947

/-- `2*(A033190(n)-A000045(2*n))` -/
def P1951871679833345114.Spec : Prop :=
  ∀ n, P1951871679833345114.a n = A206947 n

end A206947

/-! ## A206947.P501749726235008173

`A208736(n+1)+A001519(n)-A088305(n)`
-/

namespace A206947.P501749726235008173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208736 (n + 1) + (A001519 n - A088305 n)

end

end A206947.P501749726235008173

namespace A206947

/-- `A208736(n+1)+A001519(n)-A088305(n)` -/
def P501749726235008173.Spec : Prop :=
  ∀ n, P501749726235008173.a n = A206947 n

end A206947

/-! ## A206947.P500013359438179466

`A208736(n+1)+A055819(n)-A001519(n+1)`
-/

namespace A206947.P500013359438179466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208736 (n + 1) + (A055819 n - A001519 (n + 1))

end

end A206947.P500013359438179466

namespace A206947

/-- `A208736(n+1)+A055819(n)-A001519(n+1)` -/
def P500013359438179466.Spec : Prop :=
  ∀ n, P500013359438179466.a n = A206947 n

end A206947

/-! ## A206947.P9478183818312134071

`floor(A020876(n)/5-A001906(n))`
-/

namespace A206947.P9478183818312134071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020876 n : ℚ) / 5 - (A001906 n : ℚ)⌋

end

end A206947.P9478183818312134071

namespace A206947

/-- `floor(A020876(n)/5-A001906(n))` -/
def P9478183818312134071.Spec : Prop :=
  ∀ n, P9478183818312134071.a n = A206947 n

end A206947

/-! ## A206947.P18178845139033250747

`floor(A020876(n)/5)-A000045(2*n)`
-/

namespace A206947.P18178845139033250747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020876 n : ℚ) / 5⌋ - A000045 (2 * n)

end

end A206947.P18178845139033250747

namespace A206947

/-- `floor(A020876(n)/5)-A000045(2*n)` -/
def P18178845139033250747.Spec : Prop :=
  ∀ n, P18178845139033250747.a n = A206947 n

end A206947

/-!
# A206948: Number of nonisomorphic graded posets with 0 and non-uniform Hasse graph of rank n, with exactly 2 elements of each rank level above 0.

The programs for A206948, the canonical program `A206948.P10848531966811191809` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206948 has offset 0).

The definition of A206948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206948.P10848531966811191809

`Δ[A094433(n)]-A012781(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206948

/-- `Δ[A094433(n)]-A012781(n)` -/
def P10848531966811191809.Spec : Prop :=
  ∀ n, P10848531966811191809.a n = A206948 n

theorem P10848531966811191809.correct : P10848531966811191809.Spec := by
  intro n
  simp only [A206948]

end A206948

/-! ## A206948.P1335910677932211999

`Δ[A094433(n)]-(∑[A012864(n)]-1)`
-/

namespace A206948.P1335910677932211999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A206948.P1335910677932211999

namespace A206948

/-- `Δ[A094433(n)]-(∑[A012864(n)]-1)` -/
def P1335910677932211999.Spec : Prop :=
  ∀ n, P1335910677932211999.a n = A206948 n

end A206948

/-! ## A206948.P714498892877241988

`Δ[A094433(n)]-A000931(5*n+1)`
-/

namespace A206948.P714498892877241988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000931 (5 * n + 1)

end

end A206948.P714498892877241988

namespace A206948

/-- `Δ[A094433(n)]-A000931(5*n+1)` -/
def P714498892877241988.Spec : Prop :=
  ∀ n, P714498892877241988.a n = A206948 n

end A206948

/-! ## A206948.P10636850105676241313

`Δ[A094433(n)]-A133034(5*(n+1))`
-/

namespace A206948.P10636850105676241313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A133034 (5 * (n + 1))

end

end A206948.P10636850105676241313

namespace A206948

/-- `Δ[A094433(n)]-A133034(5*(n+1))` -/
def P10636850105676241313.Spec : Prop :=
  ∀ n, P10636850105676241313.a n = A206948 n

end A206948

/-! ## A206948.P1254448100546020856

`Δ[A094433(n)]-A078027(5*n+3)`
-/

namespace A206948.P1254448100546020856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A078027 (5 * n + 3)

end

end A206948.P1254448100546020856

namespace A206948

/-- `Δ[A094433(n)]-A078027(5*n+3)` -/
def P1254448100546020856.Spec : Prop :=
  ∀ n, P1254448100546020856.a n = A206948 n

end A206948

/-! ## A206948.P12900299346312587155

`A012814(n)+Δ[A094433(n)]-A012493(n)`
-/

namespace A206948.P12900299346312587155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012814 n + (f1 (n + 1) - f1 n - A012493 n)

end

end A206948.P12900299346312587155

namespace A206948

/-- `A012814(n)+Δ[A094433(n)]-A012493(n)` -/
def P12900299346312587155.Spec : Prop :=
  ∀ n, P12900299346312587155.a n = A206948 n

end A206948

/-! ## A206948.P978274488951630411

`Δ[A080876(n)*A182522(n)]-A012781(n)`
-/

namespace A206948.P978274488951630411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080876 n * A182522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A012781 n

end

end A206948.P978274488951630411

namespace A206948

/-- `Δ[A080876(n)*A182522(n)]-A012781(n)` -/
def P978274488951630411.Spec : Prop :=
  ∀ n, P978274488951630411.a n = A206948 n

end A206948

/-!
# A206949: Number of nonisomorphic graded posets with 0 and non-uniform Hasse graph of rank n, with no 3-element antichain.

The programs for A206949, the canonical program `A206949.P16508883200948130887` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206949 has offset 0).

The definition of A206949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206949.P16508883200948130887

`9*a(n-1)-27*a(n-2)+30*a(n-3)-9*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3, a(4)=24`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206949

/-- `9*a(n-1)-27*a(n-2)+30*a(n-3)-9*a(n-4)` -/
def P16508883200948130887.Spec : Prop :=
  ∀ n, P16508883200948130887.a n = A206949 n

theorem P16508883200948130887.correct : P16508883200948130887.Spec := by
  intro n
  simp only [A206949]

end A206949

/-! ## A206949.P1688970991255946791

`A124292(n+2)-A025192(n)`
-/

namespace A206949.P1688970991255946791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 2) - A025192 n

end

end A206949.P1688970991255946791

namespace A206949

/-- `A124292(n+2)-A025192(n)` -/
def P1688970991255946791.Spec : Prop :=
  ∀ n, P1688970991255946791.a n = A206949 n

end A206949

/-! ## A206949.P13363267541937949471

`A124292(n+2)-Δ[A094388(n)]`
-/

namespace A206949.P13363267541937949471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 2) - (f1 (n + 1) - f1 n)

end

end A206949.P13363267541937949471

namespace A206949

/-- `A124292(n+2)-Δ[A094388(n)]` -/
def P13363267541937949471.Spec : Prop :=
  ∀ n, P13363267541937949471.a n = A206949 n

end A206949

/-! ## A206949.P6688331315986000753

`A208737(n+1)-A124302(n)+1`
-/

namespace A206949.P6688331315986000753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208737 (n + 1) - A124302 n + 1

end

end A206949.P6688331315986000753

namespace A206949

/-- `A208737(n+1)-A124302(n)+1` -/
def P6688331315986000753.Spec : Prop :=
  ∀ n, P6688331315986000753.a n = A206949 n

end A206949

/-! ## A206949.P14333396521542553215

`abs(A215634(n)/3)-Δ[A094388(n)]`
-/

namespace A206949.P14333396521542553215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A215634 n : ℚ) / 3| - (f1 (n + 1) - f1 n : ℚ)

end

end A206949.P14333396521542553215

namespace A206949

/-- `abs(A215634(n)/3)-Δ[A094388(n)]` -/
def P14333396521542553215.Spec : Prop :=
  ∀ n, P14333396521542553215.a n = (A206949 n : ℚ)

end A206949

/-! ## A206949.P13437549371180804226

`A215634(n)/A174971(n)-A025192(n)`
-/

namespace A206949.P13437549371180804226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215634 n : ℚ) / (A174971 n : ℚ) - (A025192 n : ℚ)

end

end A206949.P13437549371180804226

namespace A206949

/-- `A215634(n)/A174971(n)-A025192(n)` -/
def P13437549371180804226.Spec : Prop :=
  ∀ n, P13437549371180804226.a n = (A206949 n : ℚ)

end A206949

/-!
# A206950: Number of nonisomorphic graded posets with 0 and non-uniform Hasse graph of rank n, with no 3-element antichain.

The programs for A206950, the canonical program `A206950.P8868437174735002888` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206950 has offset 0).

The definition of A206950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206950.P8868437174735002888

`A206901(n)-A206902(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206950

/-- `A206901(n)-A206902(n)` -/
def P8868437174735002888.Spec : Prop :=
  ∀ n, P8868437174735002888.a n = A206950 n

theorem P8868437174735002888.correct : P8868437174735002888.Spec := by
  intro n
  simp only [A206950]

end A206950

/-! ## A206950.P11581022558134065534

`A206901(n)%(A206902(n)%A339043(3*n+5))`
-/

namespace A206950.P11581022558134065534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206901 n) (Int.tmod (A206902 n) (A339043 (3 * n + 5)))

end

end A206950.P11581022558134065534

namespace A206950

/-- `A206901(n)%(A206902(n)%A339043(3*n+5))` -/
def P11581022558134065534.Spec : Prop :=
  ∀ n, P11581022558134065534.a n = A206950 n

end A206950

/-!
# A206951: Number of n X n 0..2 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206951, there is no canonical definition to state claims against.
-/

/-! ## A206951.P67938728939100374

`A206957(∑[4*n]+1)`
-/

namespace A206951.P67938728939100374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206951.P67938728939100374

/-! ## A206951.P13110285291139536345

`or(A000038(n), A206957(A046092(n)+1))`
-/

namespace A206951.P13110285291139536345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A206957 (A046092 n + 1).toNat)

end

end A206951.P13110285291139536345

/-!
# A206952: Number of nX3 0..2 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206952, there is no canonical definition to state claims against.
-/

/-! ## A206952.P3054090844926156842

`A206957(∑[n+2]+4)`
-/

namespace A206952.P3054090844926156842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206952.P3054090844926156842

/-! ## A206952.P4588677202681310730

`record[A206957(A167614(∏{p}[n+1, #^val(n+1, #²)]))]`
-/

namespace A206952.P4588677202681310730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A167614 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206952.P4588677202681310730

/-! ## A206952.P12935213226786207254

`A206957(A167614(n+1))+A011731(n)`
-/

namespace A206952.P12935213226786207254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A167614 (n + 1)).toNat + A011731 n

end

end A206952.P12935213226786207254

/-! ## A206952.P5104967300461931224

`A206957(A167614(n+1))+A025469(n)`
-/

namespace A206952.P5104967300461931224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A167614 (n + 1)).toNat + A025469 n

end

end A206952.P5104967300461931224

/-! ## A206952.P14768803550438945416

`A206957(A167614(n+1))+A185284(n)`
-/

namespace A206952.P14768803550438945416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A167614 (n + 1)).toNat + A185284 n

end

end A206952.P14768803550438945416

/-!
# A206953: Number of nX4 0..2 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206953, there is no canonical definition to state claims against.
-/

/-! ## A206953.P18251496795045417690

`A206957(A374004(n+1))`
-/

namespace A206953.P18251496795045417690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A374004 (n + 1)).toNat

end

end A206953.P18251496795045417690

/-! ## A206953.P254690894783932252

`A206957(A052905(n)+9)`
-/

namespace A206953.P254690894783932252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A052905 n + 9).toNat

end

end A206953.P254690894783932252

/-! ## A206953.P347640948258962922

`A206957(A167614(n+2)+1)`
-/

namespace A206953.P347640948258962922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A167614 (n + 2) + 1).toNat

end

end A206953.P347640948258962922

/-! ## A206953.P11225668882833411833

`A206957(A166136(n+2)-2)`
-/

namespace A206953.P11225668882833411833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A166136 (n + 2) - 2).toNat

end

end A206953.P11225668882833411833

/-! ## A206953.P12501003259113215843

`A206957(Δ[A264443(n)-n²])`
-/

namespace A206953.P12501003259113215843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (f1 (n + 1) - f1 n).toNat

end

end A206953.P12501003259113215843

/-!
# A206954: Number of nX5 0..2 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206954, there is no canonical definition to state claims against.
-/

/-! ## A206954.P1791962887219594562

`A206957(A374005(n+1))`
-/

namespace A206954.P1791962887219594562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A374005 (n + 1)).toNat

end

end A206954.P1791962887219594562

/-! ## A206954.P6045779950622659042

`A206957(A155212(n)+13)`
-/

namespace A206954.P6045779950622659042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A155212 n + 13).toNat

end

end A206954.P6045779950622659042

/-! ## A206954.P10579250983099719060

`A206957(A051936(n+4)+14)`
-/

namespace A206954.P10579250983099719060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A051936 (n + 4) + 14).toNat

end

end A206954.P10579250983099719060

/-! ## A206954.P7502454128998762570

`A206957(eq[6, A131818(n+1)])`
-/

namespace A206954.P7502454128998762570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206954.P7502454128998762570

/-! ## A206954.P227229300476618783

`A206957(Δ[A264443(n)])`
-/

namespace A206954.P227229300476618783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (f1 (n + 1) - f1 n).toNat

end

end A206954.P227229300476618783

/-!
# A206955: Number of n X 6 0..2 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206955, there is no canonical definition to state claims against.
-/

/-! ## A206955.P15197152726593032735

`A206957(A374007(n+1))`
-/

namespace A206955.P15197152726593032735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A374007 (n + 1)).toNat

end

end A206955.P15197152726593032735

/-! ## A206955.P16295473218608006903

`A206957(A052905(n+3))`
-/

namespace A206955.P16295473218608006903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A052905 (n + 3)).toNat

end

end A206955.P16295473218608006903

/-! ## A206955.P4995022328230487313

`A206957(eq[5, A193592(n)])`
-/

namespace A206955.P4995022328230487313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206955.P4995022328230487313

/-! ## A206955.P16051757182563732233

`A206957(Δ[A264443(n+1)]-1)`
-/

namespace A206955.P16051757182563732233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (f1 (n + 1) - f1 n - 1).toNat

end

end A206955.P16051757182563732233

/-!
# A206956: Number of nX7 0..2 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206956, there is no canonical definition to state claims against.
-/

/-! ## A206956.P16722343095422044932

`A206957(A374008(n+1))`
-/

namespace A206956.P16722343095422044932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A374008 (n + 1)).toNat

end

end A206956.P16722343095422044932

/-! ## A206956.P13798998914530692229

`A206957(eq[6, A193592(n)])`
-/

namespace A206956.P13798998914530692229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206956.P13798998914530692229

/-!
# A206957: T(n,k)=Number of nXk 0..2 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206957, there is no canonical definition to state claims against.
-/

/-! ## A206957.P12763235190357916124

`A206734(n+1)+A055641(A098051(n))`
-/

namespace A206957.P12763235190357916124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (n + 1) + A055641 (A098051 n).toNat

end

end A206957.P12763235190357916124

/-! ## A206957.P1746439416758386956

`A340999(A276086(n))+A206734(n+1)`
-/

namespace A206957.P1746439416758386956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A276086 n).toNat + 204) + A206734 (n + 1)

end

end A206957.P1746439416758386956

/-! ## A206957.P12641538762390077938

`or(A010060(A000975(n)), A206734(n+1))`
-/

namespace A206957.P12641538762390077938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A000975 n).toNat) (A206734 (n + 1))

end

end A206957.P12641538762390077938

/-! ## A206957.P5478761538106346621

`or(A000035(A024493(n)), A206734(n+1))`
-/

namespace A206957.P5478761538106346621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A024493 n).toNat) (A206734 (n + 1))

end

end A206957.P5478761538106346621

/-! ## A206957.P12350999118792698680

`or(A022932(A011782(n)), A206734(n+1))`
-/

namespace A206957.P12350999118792698680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022932 (A011782 n).toNat) (A206734 (n + 1))

end

end A206957.P12350999118792698680

/-!
# A206958: Expansion of f(x^5, -x^7) - x * f(-x, x^11) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A206958, the canonical program `A206958.P12180534930543884821` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206958 has offset 0).

The definition of A206958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206958.P10957181441926461836

`(-1)^n*A206959(n)`
-/

namespace A206958.P10957181441926461836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A206959 n

end

end A206958.P10957181441926461836

namespace A206958

/-- `(-1)^n*A206959(n)` -/
def P10957181441926461836.Spec : Prop :=
  ∀ n, P10957181441926461836.a n = A206958 n

end A206958

/-! ## A206958.P18252348461556380153

`(-1)^∑[n]*A121373(n)`
-/

namespace A206958.P18252348461556380153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * A121373 n

end

end A206958.P18252348461556380153

namespace A206958

/-- `(-1)^∑[n]*A121373(n)` -/
def P18252348461556380153.Spec : Prop :=
  ∀ n, P18252348461556380153.a n = A206958 n

end A206958

/-! ## A206958.P12180534930543884821

`(1-and(2, n))*A010815(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A206958

/-- `(1-and(2, n))*A010815(n)` -/
def P12180534930543884821.Spec : Prop :=
  ∀ n, P12180534930543884821.a n = A206958 n

theorem P12180534930543884821.correct : P12180534930543884821.Spec := by
  intro n
  simp only [A206958]

end A206958

/-! ## A206958.P5882688234196167526

`A010815(n)*A057077(n)`
-/

namespace A206958.P5882688234196167526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A057077 n

end

end A206958.P5882688234196167526

namespace A206958

/-- `A010815(n)*A057077(n)` -/
def P5882688234196167526.Spec : Prop :=
  ∀ n, P5882688234196167526.a n = A206958 n

end A206958

/-! ## A206958.P16887384934477711497

`A057077(n)*A274719(2*n)`
-/

namespace A206958.P16887384934477711497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A274719 (2 * n)

end

end A206958.P16887384934477711497

namespace A206958

/-- `A057077(n)*A274719(2*n)` -/
def P16887384934477711497.Spec : Prop :=
  ∀ n, P16887384934477711497.a n = A206958 n

end A206958

/-! ## A206958.P13672544496140389887

`A206959(n)/A057077(A057077(n)+n)`
-/

namespace A206958.P13672544496140389887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206959 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A206958.P13672544496140389887

namespace A206958

/-- `A206959(n)/A057077(A057077(n)+n)` -/
def P13672544496140389887.Spec : Prop :=
  ∀ n, P13672544496140389887.a n = (A206958 n : ℚ)

end A206958

/-! ## A206958.P3639014177005522265

`A010815(n)*A080015(n)/A080054(n)`
-/

namespace A206958.P3639014177005522265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A080015 n : ℚ) / (A080054 n : ℚ)

end

end A206958.P3639014177005522265

namespace A206958

/-- `A010815(n)*A080015(n)/A080054(n)` -/
def P3639014177005522265.Spec : Prop :=
  ∀ n, P3639014177005522265.a n = (A206958 n : ℚ)

end A206958

/-! ## A206958.P8688431097325557068

`A010815(n)*A045828(n)/A246836(n)`
-/

namespace A206958.P8688431097325557068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A045828 n : ℚ) / (A246836 n : ℚ)

end

end A206958.P8688431097325557068

namespace A206958

/-- `A010815(n)*A045828(n)/A246836(n)` -/
def P8688431097325557068.Spec : Prop :=
  ∀ n, P8688431097325557068.a n = (A206958 n : ℚ)

end A206958

/-! ## A206958.P9642094769328275262

`A010815(n)*A113417(n)/A209940(n)`
-/

namespace A206958.P9642094769328275262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A113417 n : ℚ) / (A209940 n : ℚ)

end

end A206958.P9642094769328275262

namespace A206958

/-- `A010815(n)*A113417(n)/A209940(n)` -/
def P9642094769328275262.Spec : Prop :=
  ∀ n, P9642094769328275262.a n = (A206958 n : ℚ)

end A206958

/-! ## A206958.P7225072594026584086

`A010815(n)*A115671(n)/A245432(n)`
-/

namespace A206958.P7225072594026584086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A115671 n : ℚ) / (A245432 n : ℚ)

end

end A206958.P7225072594026584086

namespace A206958

/-- `A010815(n)*A115671(n)/A245432(n)` -/
def P7225072594026584086.Spec : Prop :=
  ∀ n, P7225072594026584086.a n = (A206958 n : ℚ)

end A206958

/-! ## A206958.P15581268409481237863

`A010815(n)*A113419(n)/A258096(n)`
-/

namespace A206958.P15581268409481237863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A113419 n : ℚ) / (A258096 n : ℚ)

end

end A206958.P15581268409481237863

namespace A206958

/-- `A010815(n)*A113419(n)/A258096(n)` -/
def P15581268409481237863.Spec : Prop :=
  ∀ n, P15581268409481237863.a n = (A206958 n : ℚ)

end A206958

/-! ## A206958.P17940137420410337426

`A080054(n)*A121373(n)/A210030(n)`
-/

namespace A206958.P17940137420410337426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n * A121373 n : ℚ) / (A210030 n : ℚ)

end

end A206958.P17940137420410337426

namespace A206958

/-- `A080054(n)*A121373(n)/A210030(n)` -/
def P17940137420410337426.Spec : Prop :=
  ∀ n, P17940137420410337426.a n = (A206958 n : ℚ)

end A206958

/-! ## A206958.P16366359007583361507

`A045828(n)*A121373(n)/A246815(n)`
-/

namespace A206958.P16366359007583361507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 n * A121373 n : ℚ) / (A246815 n : ℚ)

end

end A206958.P16366359007583361507

namespace A206958

/-- `A045828(n)*A121373(n)/A246815(n)` -/
def P16366359007583361507.Spec : Prop :=
  ∀ n, P16366359007583361507.a n = (A206958 n : ℚ)

end A206958

/-! ## A206958.P3075309606981860073

`A113419(n)*A121373(n)/A209940(n)`
-/

namespace A206958.P3075309606981860073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113419 n * A121373 n : ℚ) / (A209940 n : ℚ)

end

end A206958.P3075309606981860073

namespace A206958

/-- `A113419(n)*A121373(n)/A209940(n)` -/
def P3075309606981860073.Spec : Prop :=
  ∀ n, P3075309606981860073.a n = (A206958 n : ℚ)

end A206958

/-! ## A206958.P17676476246795908146

`ratio[A057077(n)]*A121373(n)*A057077(n)`
-/

namespace A206958.P17676476246795908146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A121373 n : ℚ) * (A057077 n : ℚ)

end

end A206958.P17676476246795908146

namespace A206958

/-- `ratio[A057077(n)]*A121373(n)*A057077(n)` -/
def P17676476246795908146.Spec : Prop :=
  ∀ n, P17676476246795908146.a n = (A206958 n : ℚ)

end A206958

/-! ## A206958.P14611167125017525781

`A010815(n)*A143431(2*n)`
-/

namespace A206958.P14611167125017525781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A143431 (2 * n)

end

end A206958.P14611167125017525781

namespace A206958

/-- `A010815(n)*A143431(2*n)` -/
def P14611167125017525781.Spec : Prop :=
  ∀ n, P14611167125017525781.a n = A206958 n

end A206958

/-! ## A206958.P7481452634893232581

`A206959(n)/A057077(2*n)`
-/

namespace A206958.P7481452634893232581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206959 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A206958.P7481452634893232581

namespace A206958

/-- `A206959(n)/A057077(2*n)` -/
def P7481452634893232581.Spec : Prop :=
  ∀ n, P7481452634893232581.a n = (A206958 n : ℚ)

end A206958

/-! ## A206958.P7957192426919712401

`(A007706(n)-1)*A057077(n)`
-/

namespace A206958.P7957192426919712401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007706 n - 1) * A057077 n

end

end A206958.P7957192426919712401

namespace A206958

/-- `(A007706(n)-1)*A057077(n)` -/
def P7957192426919712401.Spec : Prop :=
  ∀ n, P7957192426919712401.a n = A206958 n

end A206958

/-! ## A206958.P6376489850515492946

`A010815(n)*A257628(A001318(n+1))`
-/

namespace A206958.P6376489850515492946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A257628 (A001318 (n + 1)).toNat

end

end A206958.P6376489850515492946

namespace A206958

/-- `A010815(n)*A257628(A001318(n+1))` -/
def P6376489850515492946.Spec : Prop :=
  ∀ n, P6376489850515492946.a n = A206958 n

end A206958

/-! ## A206958.P17022708772076741470

`A121373(n)*A244465(A074378(n))`
-/

namespace A206958.P17022708772076741470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A244465 (A074378 n).toNat

end

end A206958.P17022708772076741470

namespace A206958

/-- `A121373(n)*A244465(A074378(n))` -/
def P17022708772076741470.Spec : Prop :=
  ∀ n, P17022708772076741470.a n = A206958 n

end A206958

/-!
# A206959: Expansion of f(-x^5, x^7) + x * f(x, -x^11) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A206959, the canonical program `A206959.P14736947184472277648` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206959 has offset 0).

The definition of A206959 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206959.P14736947184472277648

`(-1)^n*A206958(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A206959

/-- `(-1)^n*A206958(n)` -/
def P14736947184472277648.Spec : Prop :=
  ∀ n, P14736947184472277648.a n = A206959 n

theorem P14736947184472277648.correct : P14736947184472277648.Spec := by
  intro n
  simp only [A206959]

end A206959

/-! ## A206959.P7894072188505896715

`(-1)^∑[n]*A010815(n)`
-/

namespace A206959.P7894072188505896715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * A010815 n

end

end A206959.P7894072188505896715

namespace A206959

/-- `(-1)^∑[n]*A010815(n)` -/
def P7894072188505896715.Spec : Prop :=
  ∀ n, P7894072188505896715.a n = A206959 n

end A206959

/-! ## A206959.P14329124617463647152

`(1-and(2, n))*A121373(n)`
-/

namespace A206959.P14329124617463647152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A121373 n

end

end A206959.P14329124617463647152

namespace A206959

/-- `(1-and(2, n))*A121373(n)` -/
def P14329124617463647152.Spec : Prop :=
  ∀ n, P14329124617463647152.a n = A206959 n

end A206959

/-! ## A206959.P11036269382332807317

`A010815(n)*A087960(n)`
-/

namespace A206959.P11036269382332807317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A087960 n

end

end A206959.P11036269382332807317

namespace A206959

/-- `A010815(n)*A087960(n)` -/
def P11036269382332807317.Spec : Prop :=
  ∀ n, P11036269382332807317.a n = A206959 n

end A206959

/-! ## A206959.P15505692490640742128

`A057077(n)*A121373(n)`
-/

namespace A206959.P15505692490640742128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A121373 n

end

end A206959.P15505692490640742128

namespace A206959

/-- `A057077(n)*A121373(n)` -/
def P15505692490640742128.Spec : Prop :=
  ∀ n, P15505692490640742128.a n = A206959 n

end A206959

/-! ## A206959.P208118670359199323

`A010815(n)*A121373(and(2, -n)!)`
-/

namespace A206959.P208118670359199323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A121373 (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat)

end

end A206959.P208118670359199323

namespace A206959

/-- `A010815(n)*A121373(and(2, -n)!)` -/
def P208118670359199323.Spec : Prop :=
  ∀ n, P208118670359199323.a n = A206959 n

end A206959

/-! ## A206959.P9001907757408020199

`A080015(n)/A080054(n)*A121373(n)`
-/

namespace A206959.P9001907757408020199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 n : ℚ) / (A080054 n : ℚ) * (A121373 n : ℚ)

end

end A206959.P9001907757408020199

namespace A206959

/-- `A080015(n)/A080054(n)*A121373(n)` -/
def P9001907757408020199.Spec : Prop :=
  ∀ n, P9001907757408020199.a n = (A206959 n : ℚ)

end A206959

/-! ## A206959.P944557009585242460

`A010815(n)*A080054(n)/A210030(n)`
-/

namespace A206959.P944557009585242460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A080054 n : ℚ) / (A210030 n : ℚ)

end

end A206959.P944557009585242460

namespace A206959

/-- `A010815(n)*A080054(n)/A210030(n)` -/
def P944557009585242460.Spec : Prop :=
  ∀ n, P944557009585242460.a n = (A206959 n : ℚ)

end A206959

/-! ## A206959.P15118805809642080919

`A010815(n)*A045828(n)/A246815(n)`
-/

namespace A206959.P15118805809642080919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A045828 n : ℚ) / (A246815 n : ℚ)

end

end A206959.P15118805809642080919

namespace A206959

/-- `A010815(n)*A045828(n)/A246815(n)` -/
def P15118805809642080919.Spec : Prop :=
  ∀ n, P15118805809642080919.a n = (A206959 n : ℚ)

end A206959

/-! ## A206959.P3696919313688092361

`A010815(n)*A113419(n)/A209940(n)`
-/

namespace A206959.P3696919313688092361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A113419 n : ℚ) / (A209940 n : ℚ)

end

end A206959.P3696919313688092361

namespace A206959

/-- `A010815(n)*A113419(n)/A209940(n)` -/
def P3696919313688092361.Spec : Prop :=
  ∀ n, P3696919313688092361.a n = (A206959 n : ℚ)

end A206959

/-! ## A206959.P12135740747065228074

`A010815(n)*A113417(n)/A258096(n)`
-/

namespace A206959.P12135740747065228074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A113417 n : ℚ) / (A258096 n : ℚ)

end

end A206959.P12135740747065228074

namespace A206959

/-- `A010815(n)*A113417(n)/A258096(n)` -/
def P12135740747065228074.Spec : Prop :=
  ∀ n, P12135740747065228074.a n = (A206959 n : ℚ)

end A206959

/-! ## A206959.P15846929381090617709

`A045828(n)*A121373(n)/A246836(n)`
-/

namespace A206959.P15846929381090617709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 n * A121373 n : ℚ) / (A246836 n : ℚ)

end

end A206959.P15846929381090617709

namespace A206959

/-- `A045828(n)*A121373(n)/A246836(n)` -/
def P15846929381090617709.Spec : Prop :=
  ∀ n, P15846929381090617709.a n = (A206959 n : ℚ)

end A206959

/-! ## A206959.P16194796120465197687

`A113417(n)*A121373(n)/A209940(n)`
-/

namespace A206959.P16194796120465197687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113417 n * A121373 n : ℚ) / (A209940 n : ℚ)

end

end A206959.P16194796120465197687

namespace A206959

/-- `A113417(n)*A121373(n)/A209940(n)` -/
def P16194796120465197687.Spec : Prop :=
  ∀ n, P16194796120465197687.a n = (A206959 n : ℚ)

end A206959

/-! ## A206959.P2462593441502802072

`A115671(n)*A121373(n)/A245432(n)`
-/

namespace A206959.P2462593441502802072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115671 n * A121373 n : ℚ) / (A245432 n : ℚ)

end

end A206959.P2462593441502802072

namespace A206959

/-- `A115671(n)*A121373(n)/A245432(n)` -/
def P2462593441502802072.Spec : Prop :=
  ∀ n, P2462593441502802072.a n = (A206959 n : ℚ)

end A206959

/-! ## A206959.P11504470614488919740

`A010815(n)*A057077(n+1)`
-/

namespace A206959.P11504470614488919740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A057077 (n + 1)

end

end A206959.P11504470614488919740

namespace A206959

/-- `A010815(n)*A057077(n+1)` -/
def P11504470614488919740.Spec : Prop :=
  ∀ n, P11504470614488919740.a n = A206959 n

end A206959

/-! ## A206959.P6500127171764615840

`A057077(n+1)*A274719(2*n)`
-/

namespace A206959.P6500127171764615840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A274719 (2 * n)

end

end A206959.P6500127171764615840

namespace A206959

/-- `A057077(n+1)*A274719(2*n)` -/
def P6500127171764615840.Spec : Prop :=
  ∀ n, P6500127171764615840.a n = A206959 n

end A206959

/-! ## A206959.P13453768892102383941

`ratio[A057077(n)]*A010815(n)*A057077(n)`
-/

namespace A206959.P13453768892102383941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A010815 n : ℚ) * (A057077 n : ℚ)

end

end A206959.P13453768892102383941

namespace A206959

/-- `ratio[A057077(n)]*A010815(n)*A057077(n)` -/
def P13453768892102383941.Spec : Prop :=
  ∀ n, P13453768892102383941.a n = (A206959 n : ℚ)

end A206959

/-! ## A206959.P17488754747605246615

`A121373(n)*A143431(2*n)`
-/

namespace A206959.P17488754747605246615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A143431 (2 * n)

end

end A206959.P17488754747605246615

namespace A206959

/-- `A121373(n)*A143431(2*n)` -/
def P17488754747605246615.Spec : Prop :=
  ∀ n, P17488754747605246615.a n = A206959 n

end A206959

/-! ## A206959.P15600927506071461155

`A206958(n)/A087960(2*n)`
-/

namespace A206959.P15600927506071461155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206958 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A206959.P15600927506071461155

namespace A206959

/-- `A206958(n)/A087960(2*n)` -/
def P15600927506071461155.Spec : Prop :=
  ∀ n, P15600927506071461155.a n = (A206959 n : ℚ)

end A206959

/-! ## A206959.P12447731866614663422

`A010815(n)*A091337(2*n+1)`
-/

namespace A206959.P12447731866614663422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A091337 (2 * n + 1)

end

end A206959.P12447731866614663422

namespace A206959

/-- `A010815(n)*A091337(2*n+1)` -/
def P12447731866614663422.Spec : Prop :=
  ∀ n, P12447731866614663422.a n = A206959 n

end A206959

/-!
# A206960: a(0)=0, a(1)=1, for n>1, a(n) = n<*>n, where k<*>m = k<+>k<+>...<+>k is the m-1-fold iteration of the operation <+> defined in A206853.

The programs for A206960, there is no canonical definition to state claims against.
-/

/-! ## A206960.P7060294907347905827

`A025428(or(A000244(n+2), A176502(n+1)))`
-/

namespace A206960.P7060294907347905827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (Int.lor (A000244 (n + 2)) (A176502 (n + 1))).toNat

end

end A206960.P7060294907347905827

/-!
# A206961: Number of n X n 0..3 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206961, there is no canonical definition to state claims against.
-/

/-! ## A206961.P13919792148129913976

`A206967((n+1)²+n²)`
-/

namespace A206961.P13919792148129913976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 ((n + 1) ^ 2 + n ^ 2)

end

end A206961.P13919792148129913976

/-!
# A206962: Number of nX3 0..3 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206962, there is no canonical definition to state claims against.
-/

/-! ## A206962.P8597585500325723596

`A206967(∑[n+2]+4)`
-/

namespace A206962.P8597585500325723596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206962.P8597585500325723596

/-! ## A206962.P8942332593386248225

`A206967(A167614(n+1))*A238015(n)`
-/

namespace A206962.P8942332593386248225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (A167614 (n + 1)).toNat * A238015 n

end

end A206962.P8942332593386248225

/-! ## A206962.P4970890848028392942

`lcm(A020985(n), A206967(A167614(n+1)))`
-/

namespace A206962.P4970890848028392942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A206967 (A167614 (n + 1)).toNat)

end

end A206962.P4970890848028392942

/-! ## A206962.P4509505928037518563

`or(A010054(n), A206967(A167614(n+1)))`
-/

namespace A206962.P4509505928037518563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A206967 (A167614 (n + 1)).toNat)

end

end A206962.P4509505928037518563

/-! ## A206962.P10872067067601374963

`or(A206967(A167614(n+1)), A316867(n))`
-/

namespace A206962.P10872067067601374963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A206967 (A167614 (n + 1)).toNat) (A316867 n)

end

end A206962.P10872067067601374963

/-!
# A206963: Number of nX4 0..3 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206963, there is no canonical definition to state claims against.
-/

/-! ## A206963.P17561200921926483092

`A206967(A141214(n)+7)`
-/

namespace A206963.P17561200921926483092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (A141214 n + 7).toNat

end

end A206963.P17561200921926483092

/-! ## A206963.P16653173626068893699

`A206967(A052905(n)+9)`
-/

namespace A206963.P16653173626068893699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (A052905 n + 9).toNat

end

end A206963.P16653173626068893699

/-! ## A206963.P7345800053335931812

`A206967(A055999(n)+10)`
-/

namespace A206963.P7345800053335931812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (A055999 n + 10).toNat

end

end A206963.P7345800053335931812

/-! ## A206963.P11290598094315333839

`A206967(A167614(n+2)+1)`
-/

namespace A206963.P11290598094315333839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (A167614 (n + 2) + 1).toNat

end

end A206963.P11290598094315333839

/-! ## A206963.P146103950681340424

`A206967(eq[5, A131818(n+1)])`
-/

namespace A206963.P146103950681340424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206963.P146103950681340424

/-!
# A206964: Number of nX5 0..3 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206964, there is no canonical definition to state claims against.
-/

/-! ## A206964.P5659224355152757494

`A206967(eq[6, A131818(n+1)])`
-/

namespace A206964.P5659224355152757494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206964.P5659224355152757494

/-! ## A206964.P14672252266526213355

`A206967(A374005(n+1))`
-/

namespace A206964.P14672252266526213355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (A374005 (n + 1)).toNat

end

end A206964.P14672252266526213355

/-! ## A206964.P16179376098245167941

`A206967(Δ[A023545(n+1)])`
-/

namespace A206964.P16179376098245167941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (f1 (n + 1) - f1 n).toNat

end

end A206964.P16179376098245167941

/-!
# A206967: T(n,k)=Number of nXk 0..3 arrays avoiding the pattern z z+1 z in any row, column or nw-to-se diagonal.

The programs for A206967, there is no canonical definition to state claims against.
-/

/-! ## A206967.P14095243251186040094

`A206577(n+1)+A020987(A110148(n+1))`
-/

namespace A206967.P14095243251186040094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (n + 1) + A020987 (A110148 (n + 1)).toNat

end

end A206967.P14095243251186040094

/-! ## A206967.P13482740437160430866

`A206577(n+1)+A010054(A207050(n+1))`
-/

namespace A206967.P13482740437160430866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (n + 1) + A010054 (A207050 (n + 1)).toNat

end

end A206967.P13482740437160430866

/-! ## A206967.P1290864374822697229

`A342721(A060854(n+3))+A206577(n+1)`
-/

namespace A206967.P1290864374822697229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342721 (A060854 (n + 3)).toNat + A206577 (n + 1)

end

end A206967.P1290864374822697229

/-! ## A206967.P8302701606306996780

`or(A206577(n+1), A266070(A030633(n+1)))`
-/

namespace A206967.P8302701606306996780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A206577 (n + 1)) (A266070 (A030633 (n + 1)).toNat)

end

end A206967.P8302701606306996780

/-! ## A206967.P14545205247343695334

`A206577(n+1)+A101605(A000051(n))`
-/

namespace A206967.P14545205247343695334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (n + 1) + A101605 (A000051 n).toNat

end

end A206967.P14545205247343695334

/-!
# A206968: Number of n X n 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206968, there is no canonical definition to state claims against.
-/

/-! ## A206968.P1809899066544523035

`A206974(∑[4*n]+1)`
-/

namespace A206968.P1809899066544523035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206974 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206968.P1809899066544523035

/-!
# A206969: Number of n X 3 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206969, there is no canonical definition to state claims against.
-/

/-! ## A206969.P16227889875145996836

`A206974(∑[n+3]+1)`
-/

namespace A206969.P16227889875145996836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206974 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206969.P16227889875145996836

/-!
# A206970: Number of nX4 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206970, there is no canonical definition to state claims against.
-/

/-! ## A206970.P17819522206260269730

`A206974(∑[n+4]+3)`
-/

namespace A206970.P17819522206260269730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206974 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A206970.P17819522206260269730

/-! ## A206970.P6595017066093928486

`A206974(A055998(n+2))+A024153(n+1)`
-/

namespace A206970.P6595017066093928486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206974 (A055998 (n + 2)).toNat + A024153 (n + 1)

end

end A206970.P6595017066093928486

/-! ## A206970.P15923220301896609031

`lcm(A206921(n+2), A206974(A141214(n+1)))`
-/

namespace A206970.P15923220301896609031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A206921 (n + 2)) (A206974 (A141214 (n + 1)).toNat)

end

end A206970.P15923220301896609031

/-!
# A206971: Number of nX5 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206971, there is no canonical definition to state claims against.
-/

/-! ## A206971.P17839097449072890891

`A206974(Δ[A023545(n+1)])`
-/

namespace A206971.P17839097449072890891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206974 (f1 (n + 1) - f1 n).toNat

end

end A206971.P17839097449072890891

/-!
# A206972: 

The programs for A206972, there is no canonical definition to state claims against.
-/

/-! ## A206972.P17466479985462125338

`A206974(A052905(n+3))`
-/

namespace A206972.P17466479985462125338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206974 (A052905 (n + 3)).toNat

end

end A206972.P17466479985462125338

/-!
# A206974: T(n,k)=Number of nXk 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206974, there is no canonical definition to state claims against.
-/

/-! ## A206974.P11441343152988398675

`A207057(A084193(∑[n]))`
-/

namespace A206974.P11441343152988398675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206974.P11441343152988398675

/-! ## A206974.P14882079287585615573

`A206577(A043317(n+1))`
-/

namespace A206974.P14882079287585615573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A043317 (n + 1)).toNat

end

end A206974.P14882079287585615573

/-! ## A206974.P3194897076838584535

`A206577(A044914(n+1))`
-/

namespace A206974.P3194897076838584535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A044914 (n + 1)).toNat

end

end A206974.P3194897076838584535

/-! ## A206974.P12078887180916856200

`A206577(A049872(n)+1)`
-/

namespace A206974.P12078887180916856200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A049872 n + 1).toNat

end

end A206974.P12078887180916856200

/-! ## A206974.P9892384788929685843

`A206577(A055648(n+1))`
-/

namespace A206974.P9892384788929685843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A055648 (n + 1)).toNat

end

end A206974.P9892384788929685843

/-!
# A206975: Number of 3Xn 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206975, there is no canonical definition to state claims against.
-/

/-! ## A206975.P4307669042299737066

`A206974(∑[n+2]+4)`
-/

namespace A206975.P4307669042299737066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206974 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206975.P4307669042299737066

/-! ## A206975.P8129846995959395823

`A256974(n)+A206974(A167614(n+1))`
-/

namespace A206975.P8129846995959395823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A206974 (A167614 (n + 1)).toNat

end

end A206975.P8129846995959395823

/-! ## A206975.P6999992854322338619

`A347689(n)+A206974(A167614(n+1))`
-/

namespace A206975.P6999992854322338619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A206974 (A167614 (n + 1)).toNat

end

end A206975.P6999992854322338619

/-! ## A206975.P15793711629091681149

`A206974(A167614(n+1))*A238015(n)`
-/

namespace A206975.P15793711629091681149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206974 (A167614 (n + 1)).toNat * A238015 n

end

end A206975.P15793711629091681149

/-! ## A206975.P17388814026666773334

`lcm(A131270(n), A206974(A167614(n+1)))`
-/

namespace A206975.P17388814026666773334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131270 n) (A206974 (A167614 (n + 1)).toNat)

end

end A206975.P17388814026666773334

/-!
# A206976: Number of 4Xn 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206976, there is no canonical definition to state claims against.
-/

/-! ## A206976.P1070535013833514481

`A206974(∑[n+3]+7)`
-/

namespace A206976.P1070535013833514481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206974 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A206976.P1070535013833514481

/-! ## A206976.P11905260937543839228

`A007318(A000700(n))*A206974(A052905(n)+9)`
-/

namespace A206976.P11905260937543839228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000700 n).toNat * A206974 (A052905 n + 9).toNat

end

end A206976.P11905260937543839228

/-! ## A206976.P14882129418906763628

`A007318(A260308(n))*A206974(A052905(n)+9)`
-/

namespace A206976.P14882129418906763628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A260308 n).toNat * A206974 (A052905 n + 9).toNat

end

end A206976.P14882129418906763628

/-! ## A206976.P15748133444257434828

`A007318(A327779(n))*A206974(A052905(n)+9)`
-/

namespace A206976.P15748133444257434828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A327779 n).toNat * A206974 (A052905 n + 9).toNat

end

end A206976.P15748133444257434828

/-!
# A206977: Number of 5Xn 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206977, there is no canonical definition to state claims against.
-/

/-! ## A206977.P4564738604538467809

`A206974(A155212(n)+13)`
-/

namespace A206977.P4564738604538467809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206974 (A155212 n + 13).toNat

end

end A206977.P4564738604538467809

/-!
# A206978: 

The programs for A206978, there is no canonical definition to state claims against.
-/

/-! ## A206978.P10123728504523511237

`A206974(A167499(n+4)+1)`
-/

namespace A206978.P10123728504523511237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206974 (A167499 (n + 4) + 1).toNat

end

end A206978.P10123728504523511237

/-!
# A206980: Number of n X n 0..1 arrays avoiding the patterns 0 1 0 or 1 0 1 in any row, column, diagonal or antidiagonal.

The programs for A206980, there is no canonical definition to state claims against.
-/

/-! ## A206980.P16098452950634923414

`A206987(∑[4*n]+1)`
-/

namespace A206980.P16098452950634923414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206980.P16098452950634923414

/-! ## A206980.P18104142465396255600

`lcm(2, A206987(A001844(n)))`
-/

namespace A206980.P18104142465396255600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206987 (A001844 n).toNat)

end

end A206980.P18104142465396255600

/-! ## A206980.P13702144311375586273

`record[gcd(A114327(n), A206987(n+1))]`
-/

namespace A206980.P13702144311375586273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A206987 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206980.P13702144311375586273

/-! ## A206980.P1154845670841457352

`A206987(A001844(n))+A011744(n)`
-/

namespace A206980.P1154845670841457352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A001844 n).toNat + A011744 n

end

end A206980.P1154845670841457352

/-! ## A206980.P6920388990611507892

`A015420(n)*A206987(A001844(n))`
-/

namespace A206980.P6920388990611507892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015420 n * A206987 (A001844 n).toNat

end

end A206980.P6920388990611507892

/-!
# A206981: Number of n X 2 0..1 arrays avoiding the patterns 0 1 0 or 1 0 1 in any row, column, diagonal or antidiagonal.

The programs for A206981, the canonical program `A206981.P13810997160580014786` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206981 has offset 1).

The definition of A206981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206981.P1637268906902705122

`Δ[round(ϕ*a(n-1))]²` with `a(0)=4`
-/

namespace A206981.P1637268906902705122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A206981.P1637268906902705122

namespace A206981

/-- `Δ[round(ϕ*a(n-1))]²` -/
def P1637268906902705122.Spec : Prop :=
  ∀ n, P1637268906902705122.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P1183962087719128243

`Δ[floor(ϕ*(a(n-1)+1))]²` with `a(0)=2`
-/

namespace A206981.P1183962087719128243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A206981.P1183962087719128243

namespace A206981

/-- `Δ[floor(ϕ*(a(n-1)+1))]²` -/
def P1183962087719128243.Spec : Prop :=
  ∀ n, P1183962087719128243.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P13810997160580014786

`Δ[a(n-2)-a(n-1)]²` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206981

/-- `Δ[a(n-2)-a(n-1)]²` -/
def P13810997160580014786.Spec : Prop :=
  ∀ n, P13810997160580014786.a n = A206981 (n + 1)

theorem P13810997160580014786.correct : P13810997160580014786.Spec := by
  intro n
  simp only [A206981, Nat.add_sub_cancel]

end A206981

/-! ## A206981.P3177580705524497621

`record[a(n-1)+a(n-2)]²` with `a(0)=2, a(1)=0`
-/

namespace A206981.P3177580705524497621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A206981.P3177580705524497621

namespace A206981

/-- `record[a(n-1)+a(n-2)]²` -/
def P3177580705524497621.Spec : Prop :=
  ∀ n, (P3177580705524497621.a n : ℤ) = A206981 (n + 1)

end A206981

/-! ## A206981.P5824151218459561691

`∑[a(n-1)+a(n-2)]²` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A206981.P5824151218459561691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A206981.P5824151218459561691

namespace A206981

/-- `∑[a(n-1)+a(n-2)]²` -/
def P5824151218459561691.Spec : Prop :=
  ∀ n, (P5824151218459561691.a n : ℤ) = A206981 (n + 1)

end A206981

/-! ## A206981.P3258222215255214395

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=4, a(1)=16, a(2)=36`
-/

namespace A206981.P3258222215255214395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 16, 36] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A206981.P3258222215255214395

namespace A206981

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P3258222215255214395.Spec : Prop :=
  ∀ n, P3258222215255214395.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P10281678493150154031

`Δ[A154691(n)]²`
-/

namespace A206981.P10281678493150154031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A206981.P10281678493150154031

namespace A206981

/-- `Δ[A154691(n)]²` -/
def P10281678493150154031.Spec : Prop :=
  ∀ n, P10281678493150154031.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P397433123552021017

`Δ[A168193(n)]²`
-/

namespace A206981.P397433123552021017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A206981.P397433123552021017

namespace A206981

/-- `Δ[A168193(n)]²` -/
def P397433123552021017.Spec : Prop :=
  ∀ n, P397433123552021017.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P17049838672083390659

`record[A118658(n)²]`
-/

namespace A206981.P17049838672083390659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206981.P17049838672083390659

namespace A206981

/-- `record[A118658(n)²]` -/
def P17049838672083390659.Spec : Prop :=
  ∀ n, P17049838672083390659.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P3448589408863238795

`A055389(n+2)²`
-/

namespace A206981.P3448589408863238795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (n + 2) ^ 2

end

end A206981.P3448589408863238795

namespace A206981

/-- `A055389(n+2)²` -/
def P3448589408863238795.Spec : Prop :=
  ∀ n, P3448589408863238795.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P11759196272594328071

`A128588(n+2)²`
-/

namespace A206981.P11759196272594328071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 2) ^ 2

end

end A206981.P11759196272594328071

namespace A206981

/-- `A128588(n+2)²` -/
def P11759196272594328071.Spec : Prop :=
  ∀ n, P11759196272594328071.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P5039230908152785983

`A006355(n+3)²`
-/

namespace A206981.P5039230908152785983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 3) ^ 2

end

end A206981.P5039230908152785983

namespace A206981

/-- `A006355(n+3)²` -/
def P5039230908152785983.Spec : Prop :=
  ∀ n, P5039230908152785983.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P3097164207568608166

`A118658(n+3)²`
-/

namespace A206981.P3097164207568608166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 3) ^ 2

end

end A206981.P3097164207568608166

namespace A206981

/-- `A118658(n+3)²` -/
def P3097164207568608166.Spec : Prop :=
  ∀ n, P3097164207568608166.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P2668872300069496771

`(3-A097280(n))²`
-/

namespace A206981.P2668872300069496771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A097280 n) ^ 2

end

end A206981.P2668872300069496771

namespace A206981

/-- `(3-A097280(n))²` -/
def P2668872300069496771.Spec : Prop :=
  ∀ n, P2668872300069496771.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P17351961548254155786

`A163733(n+4)²`
-/

namespace A206981.P17351961548254155786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 4) ^ 2

end

end A206981.P17351961548254155786

namespace A206981

/-- `A163733(n+4)²` -/
def P17351961548254155786.Spec : Prop :=
  ∀ n, P17351961548254155786.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P2367707300699034456

`A198834(n+4)²`
-/

namespace A206981.P2367707300699034456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (n + 4) ^ 2

end

end A206981.P2367707300699034456

namespace A206981

/-- `A198834(n+4)²` -/
def P2367707300699034456.Spec : Prop :=
  ∀ n, P2367707300699034456.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P4601013992281567172

`Δ[Δ[A192960(n)]]²`
-/

namespace A206981.P4601013992281567172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A206981.P4601013992281567172

namespace A206981

/-- `Δ[Δ[A192960(n)]]²` -/
def P4601013992281567172.Spec : Prop :=
  ∀ n, P4601013992281567172.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P3515047873742328615

`2*A175395(n+2)`
-/

namespace A206981.P3515047873742328615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175395 (n + 2)

end

end A206981.P3515047873742328615

namespace A206981

/-- `2*A175395(n+2)` -/
def P3515047873742328615.Spec : Prop :=
  ∀ n, P3515047873742328615.a n = A206981 (n + 1)

end A206981

/-! ## A206981.P18038163473763133879

`4*(A080097(n)+1)`
-/

namespace A206981.P18038163473763133879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A080097 n + 1)

end

end A206981.P18038163473763133879

namespace A206981

/-- `4*(A080097(n)+1)` -/
def P18038163473763133879.Spec : Prop :=
  ∀ n, P18038163473763133879.a n = A206981 (n + 1)

end A206981

/-!
# A206982: Number of n X 3 0..1 arrays avoiding the patterns 0 1 0 or 1 0 1 in any row, column, diagonal or antidiagonal.

The programs for A206982, there is no canonical definition to state claims against.
-/

/-! ## A206982.P4484924825911802666

`A206987(∑[n+2]+4)`
-/

namespace A206982.P4484924825911802666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206982.P4484924825911802666

/-! ## A206982.P6103073485131231781

`lcm(2, A206987(A167614(n+1)))`
-/

namespace A206982.P6103073485131231781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206987 (A167614 (n + 1)).toNat)

end

end A206982.P6103073485131231781

/-! ## A206982.P8493473504991735711

`A206987(A167614(n+1))+A025466(n)`
-/

namespace A206982.P8493473504991735711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A167614 (n + 1)).toNat + A025466 n

end

end A206982.P8493473504991735711

/-! ## A206982.P3092382154432577020

`A206987(A167614(n+1))+A178798(n)`
-/

namespace A206982.P3092382154432577020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A167614 (n + 1)).toNat + A178798 n

end

end A206982.P3092382154432577020

/-! ## A206982.P13009395061358245231

`or(A000038(n), A206987(A167614(n+1)))`
-/

namespace A206982.P13009395061358245231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A206987 (A167614 (n + 1)).toNat)

end

end A206982.P13009395061358245231

/-!
# A206983: Number of nX4 0..1 arrays avoiding the patterns 0 1 0 or 1 0 1 in any row, column, diagonal or antidiagonal.

The programs for A206983, there is no canonical definition to state claims against.
-/

/-! ## A206983.P5440275383012926943

`A206987(A374004(n+1))`
-/

namespace A206983.P5440275383012926943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A374004 (n + 1)).toNat

end

end A206983.P5440275383012926943

/-! ## A206983.P14158749502800861321

`A206987(A141214(n)+7)`
-/

namespace A206983.P14158749502800861321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A141214 n + 7).toNat

end

end A206983.P14158749502800861321

/-! ## A206983.P2305694822703679366

`A206987(A052905(n)+9)`
-/

namespace A206983.P2305694822703679366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A052905 n + 9).toNat

end

end A206983.P2305694822703679366

/-! ## A206983.P14547734253349519155

`A206987(A055999(n)+10)`
-/

namespace A206983.P14547734253349519155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A055999 n + 10).toNat

end

end A206983.P14547734253349519155

/-! ## A206983.P17697175224708952878

`A206987(A167614(n+2)+1)`
-/

namespace A206983.P17697175224708952878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A167614 (n + 2) + 1).toNat

end

end A206983.P17697175224708952878

/-!
# A206984: Number of nX5 0..1 arrays avoiding the patterns 0 1 0 or 1 0 1 in any row, column, diagonal or antidiagonal.

The programs for A206984, there is no canonical definition to state claims against.
-/

/-! ## A206984.P14500967711432191079

`A206987(A374005(n+1))`
-/

namespace A206984.P14500967711432191079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A374005 (n + 1)).toNat

end

end A206984.P14500967711432191079

/-! ## A206984.P9693708008432391516

`A206987(A167499(n+3))`
-/

namespace A206984.P9693708008432391516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A167499 (n + 3)).toNat

end

end A206984.P9693708008432391516

/-! ## A206984.P17954981073292602897

`A206987(A000124(n+4)+4)`
-/

namespace A206984.P17954981073292602897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A000124 (n + 4) + 4).toNat

end

end A206984.P17954981073292602897

/-! ## A206984.P17377802184262697769

`A206987(Δ[A264443(n)])`
-/

namespace A206984.P17377802184262697769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (f1 (n + 1) - f1 n).toNat

end

end A206984.P17377802184262697769

/-! ## A206984.P5927542712448311166

`A206987(A046691(n+3))`
-/

namespace A206984.P5927542712448311166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A046691 (n + 3)).toNat

end

end A206984.P5927542712448311166

/-!
# A206985: Number of nX6 0..1 arrays avoiding the patterns 0 1 0 or 1 0 1 in any row, column, diagonal or antidiagonal.

The programs for A206985, there is no canonical definition to state claims against.
-/

/-! ## A206985.P9471250382421324116

`A206987(A374007(n+1))`
-/

namespace A206985.P9471250382421324116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A374007 (n + 1)).toNat

end

end A206985.P9471250382421324116

/-! ## A206985.P3879343291670745095

`A206987(A167499(n+4)+1)`
-/

namespace A206985.P3879343291670745095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A167499 (n + 4) + 1).toNat

end

end A206985.P3879343291670745095

/-! ## A206985.P7539298874550276360

`A206987(A000217(n+5)+6)`
-/

namespace A206985.P7539298874550276360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A000217 (n + 5) + 6).toNat

end

end A206985.P7539298874550276360

/-! ## A206985.P4186748823040670830

`A206987(A141214(n+2)+9)`
-/

namespace A206985.P4186748823040670830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A141214 (n + 2) + 9).toNat

end

end A206985.P4186748823040670830

/-! ## A206985.P1586962860005149243

`A206987(A000124(n+6)-(n+1))`
-/

namespace A206985.P1586962860005149243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A206985.P1586962860005149243

/-!
# A206986: Number of nX7 0..1 arrays avoiding the patterns 0 1 0 or 1 0 1 in any row, column, diagonal or antidiagonal.

The programs for A206986, there is no canonical definition to state claims against.
-/

/-! ## A206986.P14401299778103637402

`A206987(A374008(n+1))`
-/

namespace A206986.P14401299778103637402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A374008 (n + 1)).toNat

end

end A206986.P14401299778103637402

/-! ## A206986.P18105654381942232573

`A206987(A000124(n+7)-(n+1))`
-/

namespace A206986.P18105654381942232573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A206986.P18105654381942232573

/-! ## A206986.P17362970948302872320

`A206987(A167614(n+6)-(n+3))`
-/

namespace A206986.P17362970948302872320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A206986.P17362970948302872320

/-! ## A206986.P10862509125036385302

`A206987(A055999(n+4))`
-/

namespace A206986.P10862509125036385302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206987 (A055999 (n + 4)).toNat

end

end A206986.P10862509125036385302

/-!
# A206987: T(n,k)=Number of nXk 0..1 arrays avoiding the patterns 0 1 0 or 1 0 1 in any row, column, diagonal or antidiagonal.

The programs for A206987, there is no canonical definition to state claims against.
-/

/-! ## A206987.P14921043359009967637

`2*A072088(A204197(n+1))`
-/

namespace A206987.P14921043359009967637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072088 (A204197 (n + 1)).toNat

end

end A206987.P14921043359009967637

/-! ## A206987.P13224877701604273879

`A020639(2*(n+2))*A072089(A204197(n+1))`
-/

namespace A206987.P13224877701604273879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 2)) * A072089 (A204197 (n + 1)).toNat

end

end A206987.P13224877701604273879

/-! ## A206987.P11506022751763381206

`A000005(A014210(n))*A072089(A204197(n+1))`
-/

namespace A206987.P11506022751763381206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014210 n).toNat * A072089 (A204197 (n + 1)).toNat

end

end A206987.P11506022751763381206

/-! ## A206987.P14912255905214291545

`A000005(A006794(n+1))*A072089(A204197(n+1))`
-/

namespace A206987.P14912255905214291545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006794 (n + 1)).toNat * A072089 (A204197 (n + 1)).toNat

end

end A206987.P14912255905214291545

/-! ## A206987.P9750294330064742964

`A207808(n+1)-A194186(A238850(n+1))`
-/

namespace A206987.P9750294330064742964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (n + 1) - A194186 (A238850 (n + 1)).toNat

end

end A206987.P9750294330064742964

/-!
# A206988: Number of n X n 0..1 arrays avoiding 0 0 0 horizontally and 1 1 1 vertically.

The programs for A206988, there is no canonical definition to state claims against.
-/

/-! ## A206988.P15850826181695868263

`A206994(∑[4*n]+1)`
-/

namespace A206988.P15850826181695868263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206988.P15850826181695868263

/-! ## A206988.P15039569491890234658

`lcm(2, A206994(A001844(n)))`
-/

namespace A206988.P15039569491890234658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206994 (A001844 n).toNat)

end

end A206988.P15039569491890234658

/-! ## A206988.P15051975859301213003

`record[root(A206994(n+1), A280172(n+1))]`
-/

namespace A206988.P15051975859301213003
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206994 (n + 1) : ℝ) ^ (1 / (A280172 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206988.P15051975859301213003

/-! ## A206988.P13789869404966479920

`A052307(n)*A206994(A001844(n))`
-/

namespace A206988.P13789869404966479920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n * A206994 (A001844 n).toNat

end

end A206988.P13789869404966479920

/-! ## A206988.P15331910666816503034

`A206994(A001844(n))*A224697(n)`
-/

namespace A206988.P15331910666816503034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A001844 n).toNat * A224697 n

end

end A206988.P15331910666816503034

/-!
# A206989: Number of n X 3 0..1 arrays avoiding 0 0 0 horizontally and 1 1 1 vertically.

The programs for A206989, there is no canonical definition to state claims against.
-/

/-! ## A206989.P16948764647706667284

`A206994(∑[n+2]+4)`
-/

namespace A206989.P16948764647706667284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206989.P16948764647706667284

/-! ## A206989.P2743464307356407800

`lcm((-1)^n, A206994(A167614(n+1)))`
-/

namespace A206989.P2743464307356407800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A206994 (A167614 (n + 1)).toNat)

end

end A206989.P2743464307356407800

/-! ## A206989.P4267019542086250311

`A206994(A167614(n+1))+A025439(n)`
-/

namespace A206989.P4267019542086250311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A167614 (n + 1)).toNat + A025439 n

end

end A206989.P4267019542086250311

/-! ## A206989.P2418011623613616328

`A206994(A167614(n+1))+A178798(n)`
-/

namespace A206989.P2418011623613616328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A167614 (n + 1)).toNat + A178798 n

end

end A206989.P2418011623613616328

/-! ## A206989.P8088873064869428161

`or(A000007(n), A206994(A167614(n+1)))`
-/

namespace A206989.P8088873064869428161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A206994 (A167614 (n + 1)).toNat)

end

end A206989.P8088873064869428161

/-!
# A206990: Number of nX4 0..1 arrays avoiding 0 0 0 horizontally and 1 1 1 vertically.

The programs for A206990, there is no canonical definition to state claims against.
-/

/-! ## A206990.P4879923581591724915

`A206994(A374004(n+1))`
-/

namespace A206990.P4879923581591724915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A374004 (n + 1)).toNat

end

end A206990.P4879923581591724915

/-! ## A206990.P456025913880282515

`A206994(A141214(n)+7)`
-/

namespace A206990.P456025913880282515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A141214 n + 7).toNat

end

end A206990.P456025913880282515

/-! ## A206990.P17135360980822601349

`A206994(A052905(n)+9)`
-/

namespace A206990.P17135360980822601349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A052905 n + 9).toNat

end

end A206990.P17135360980822601349

/-! ## A206990.P13042372373284750878

`A206994(A055999(n)+10)`
-/

namespace A206990.P13042372373284750878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A055999 n + 10).toNat

end

end A206990.P13042372373284750878

/-! ## A206990.P6577799898334019261

`A206994(A167614(n+2)+1)`
-/

namespace A206990.P6577799898334019261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A167614 (n + 2) + 1).toNat

end

end A206990.P6577799898334019261

/-!
# A206991: Number of nX5 0..1 arrays avoiding 0 0 0 horizontally and 1 1 1 vertically.

The programs for A206991, there is no canonical definition to state claims against.
-/

/-! ## A206991.P14780318590148026920

`A206994(A374005(n+1))`
-/

namespace A206991.P14780318590148026920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A374005 (n + 1)).toNat

end

end A206991.P14780318590148026920

/-! ## A206991.P17441407931510070445

`A206994(A167499(n+3))`
-/

namespace A206991.P17441407931510070445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A167499 (n + 3)).toNat

end

end A206991.P17441407931510070445

/-! ## A206991.P17850541433270087563

`A206994(A155212(n)+13)`
-/

namespace A206991.P17850541433270087563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A155212 n + 13).toNat

end

end A206991.P17850541433270087563

/-! ## A206991.P5514686439245870277

`A206994(eq[4, A193592(n)])`
-/

namespace A206991.P5514686439245870277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206991.P5514686439245870277

/-! ## A206991.P7754609844342140757

`A206994(Δ[A023545(n+1)])`
-/

namespace A206991.P7754609844342140757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (f1 (n + 1) - f1 n).toNat

end

end A206991.P7754609844342140757

/-!
# A206992: Number of nX6 0..1 arrays avoiding 0 0 0 horizontally and 1 1 1 vertically.

The programs for A206992, there is no canonical definition to state claims against.
-/

/-! ## A206992.P14084156372290422238

`A206994(A374007(n+1))`
-/

namespace A206992.P14084156372290422238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A374007 (n + 1)).toNat

end

end A206992.P14084156372290422238

/-! ## A206992.P10661865748686647528

`A206994(eq[7, A131818(n+1)])`
-/

namespace A206992.P10661865748686647528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206992.P10661865748686647528

/-! ## A206992.P1327517847967513122

`A206994(eq[3, A219347(n)])`
-/

namespace A206992.P1327517847967513122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206992.P1327517847967513122

/-! ## A206992.P4621530807361757744

`A206994(eq[5, A193592(n)])`
-/

namespace A206992.P4621530807361757744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206992.P4621530807361757744

/-! ## A206992.P12509018593240772654

`A206994(eq[8, A185782(n+1)])`
-/

namespace A206992.P12509018593240772654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206992.P12509018593240772654

/-!
# A206993: Number of nX7 0..1 arrays avoiding 0 0 0 horizontally and 1 1 1 vertically.

The programs for A206993, there is no canonical definition to state claims against.
-/

/-! ## A206993.P7058328389938788860

`A206994(A374008(n+1))`
-/

namespace A206993.P7058328389938788860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A374008 (n + 1)).toNat

end

end A206993.P7058328389938788860

/-! ## A206993.P4860135985800182798

`A206994(eq[8, A131818(n+1)])`
-/

namespace A206993.P4860135985800182798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206993.P4860135985800182798

/-! ## A206993.P8968514742031968964

`A206994(eq[4, A219347(n)])`
-/

namespace A206993.P8968514742031968964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206993.P8968514742031968964

/-! ## A206993.P14801328801746450845

`A206994(eq[6, A193592(n)])`
-/

namespace A206993.P14801328801746450845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206993.P14801328801746450845

/-! ## A206993.P11451546747363548464

`A206994(eq[10, A185782(n+1)])`
-/

namespace A206993.P11451546747363548464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206993.P11451546747363548464

/-!
# A206995: Number of n X n 0..1 arrays avoiding 0 1 0 horizontally and 0 1 1 vertically.

The programs for A206995, there is no canonical definition to state claims against.
-/

/-! ## A206995.P14064570687243464617

`A207000(∑[4*n]+1)`
-/

namespace A206995.P14064570687243464617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206995.P14064570687243464617

/-! ## A206995.P12033086665495814683

`record[gcd(A114327(n), A207000(n+1))]`
-/

namespace A206995.P12033086665495814683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207000 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206995.P12033086665495814683

/-! ## A206995.P17448153157198633007

`A207000(A001844(n))+A185238(n)`
-/

namespace A206995.P17448153157198633007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A001844 n).toNat + A185238 n

end

end A206995.P17448153157198633007

/-! ## A206995.P9693540859325867399

`lcm(A207000(A001844(n)), A307445(n+1))`
-/

namespace A206995.P9693540859325867399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A207000 (A001844 n).toNat) (A307445 (n + 1))

end

end A206995.P9693540859325867399

/-! ## A206995.P4078085026406056439

`A033999(n+2)²*A207000(A001844(n))`
-/

namespace A206995.P4078085026406056439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 2) ^ 2 * A207000 (A001844 n).toNat

end

end A206995.P4078085026406056439

/-!
# A206996: Number of nX4 0..1 arrays avoiding 0 1 0 horizontally and 0 1 1 vertically.

The programs for A206996, there is no canonical definition to state claims against.
-/

/-! ## A206996.P11849028744385426248

`A207000(A141214(n+1))`
-/

namespace A206996.P11849028744385426248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A141214 (n + 1)).toNat

end

end A206996.P11849028744385426248

/-! ## A206996.P717936383068550028

`A207000(A027379(n+2))`
-/

namespace A206996.P717936383068550028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A027379 (n + 2)).toNat

end

end A206996.P717936383068550028

/-! ## A206996.P18000580347744443529

`A207000(eq[3, A193592(n)])`
-/

namespace A206996.P18000580347744443529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206996.P18000580347744443529

/-! ## A206996.P9317691285780043192

`A207000(A052905(n+1)+2)`
-/

namespace A206996.P9317691285780043192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A052905 (n + 1) + 2).toNat

end

end A206996.P9317691285780043192

/-! ## A206996.P7733377693561543145

`A207000(A134869(n+4)-4)`
-/

namespace A206996.P7733377693561543145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A134869 (n + 4) - 4).toNat

end

end A206996.P7733377693561543145

/-!
# A206997: Number of nX5 0..1 arrays avoiding 0 1 0 horizontally and 0 1 1 vertically.

The programs for A206997, there is no canonical definition to state claims against.
-/

/-! ## A206997.P3484812532045936190

`A207000(Δ[A264443(n)])`
-/

namespace A206997.P3484812532045936190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (f1 (n + 1) - f1 n).toNat

end

end A206997.P3484812532045936190

/-! ## A206997.P13527405865693619872

`A207000(A046691(n+3))`
-/

namespace A206997.P13527405865693619872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A046691 (n + 3)).toNat

end

end A206997.P13527405865693619872

/-! ## A206997.P1545076908223880829

`A207000(eq[4, A193592(n)])`
-/

namespace A206997.P1545076908223880829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206997.P1545076908223880829

/-! ## A206997.P5021432816761843955

`A207000(Δ[A023545(n+1)])`
-/

namespace A206997.P5021432816761843955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (f1 (n + 1) - f1 n).toNat

end

end A206997.P5021432816761843955

/-! ## A206997.P3116825444349635422

`A207000(eq[8, A057728(n+1)])`
-/

namespace A206997.P3116825444349635422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206997.P3116825444349635422

/-!
# A206998: Number of nX6 0..1 arrays avoiding 0 1 0 horizontally and 0 1 1 vertically.

The programs for A206998, there is no canonical definition to state claims against.
-/

/-! ## A206998.P12051122868090444766

`A207000(A052905(n+3))`
-/

namespace A206998.P12051122868090444766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A052905 (n + 3)).toNat

end

end A206998.P12051122868090444766

/-! ## A206998.P10823166816827361308

`A207000(eq[3, A219347(n)])`
-/

namespace A206998.P10823166816827361308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206998.P10823166816827361308

/-! ## A206998.P14556169756917859268

`A207000(eq[5, A193592(n)])`
-/

namespace A206998.P14556169756917859268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206998.P14556169756917859268

/-! ## A206998.P13393264805091554300

`A207000(eq[8, A185782(n+1)])`
-/

namespace A206998.P13393264805091554300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206998.P13393264805091554300

/-! ## A206998.P733093054344091055

`A207000(Δ[Δ[A006504(n+1)]])`
-/

namespace A206998.P733093054344091055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (f1 (n + 1) - f1 n).toNat

end

end A206998.P733093054344091055

/-!
# A206999: Number of nX7 0..1 arrays avoiding 0 1 0 horizontally and 0 1 1 vertically.

The programs for A206999, there is no canonical definition to state claims against.
-/

/-! ## A206999.P15757010311906394735

`A207000(eq[4, A219347(n)])`
-/

namespace A206999.P15757010311906394735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206999.P15757010311906394735

/-! ## A206999.P12233634849457719785

`A207000(eq[6, A193592(n)])`
-/

namespace A206999.P12233634849457719785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206999.P12233634849457719785

/-! ## A206999.P17887169415453658220

`A207000(A155212(n+3)+2)`
-/

namespace A206999.P17887169415453658220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A155212 (n + 3) + 2).toNat

end

end A206999.P17887169415453658220

/-! ## A206999.P15024961727742734999

`A207000(A000124(n+7)-7)`
-/

namespace A206999.P15024961727742734999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (A000124 (n + 7) - 7).toNat

end

end A206999.P15024961727742734999

/-! ## A206999.P17095912006686695026

`A207000(eq[10, A185782(n+1)])`
-/

namespace A206999.P17095912006686695026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206999.P17095912006686695026

