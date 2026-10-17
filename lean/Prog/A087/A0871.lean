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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
# A087100: A000225 (2^n - 1) interlaced with A008593 (11n).

The programs for A087100, the canonical program `A087100.P1092758754216716327` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087100 has offset 0).

The definition of A087100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087100.P1092758754216716327

`4*a(n-2)-5*a(n-4)+2*a(n-6)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=3, a(4)=22, a(5)=7`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087100

/-- `4*a(n-2)-5*a(n-4)+2*a(n-6)` -/
def P1092758754216716327.Spec : Prop :=
  ∀ n, P1092758754216716327.a n = A087100 n

theorem P1092758754216716327.correct : P1092758754216716327.Spec := by
  intro n
  simp only [A087100]

end A087100

/-! ## A087100.P7909324315812436150

`A057979(A017401(n))*A094024(n)`
-/

namespace A087100.P7909324315812436150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A017401 n).toNat * A094024 n

end

end A087100.P7909324315812436150

namespace A087100

/-- `A057979(A017401(n))*A094024(n)` -/
def P7909324315812436150.Spec : Prop :=
  ∀ n, P7909324315812436150.a n = A087100 n

end A087100

/-! ## A087100.P8969504221619270186

`A057979(A017281(n)+n)*A094024(n)`
-/

namespace A087100.P8969504221619270186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A017281 n + (n : ℤ)).toNat * A094024 n

end

end A087100.P8969504221619270186

namespace A087100

/-- `A057979(A017281(n)+n)*A094024(n)` -/
def P8969504221619270186.Spec : Prop :=
  ∀ n, P8969504221619270186.a n = A087100 n

end A087100

/-! ## A087100.P7099754189521734196

`Δ[A087098(A289207(n+1))]`
-/

namespace A087100.P7099754189521734196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087098 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087100.P7099754189521734196

namespace A087100

/-- `Δ[A087098(A289207(n+1))]` -/
def P7099754189521734196.Spec : Prop :=
  ∀ n, P7099754189521734196.a n = A087100 n

end A087100

/-! ## A087100.P8667541200422193015

`Δ[A087098(A289207(2*n)/2)]`
-/

namespace A087100.P8667541200422193015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087098 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087100.P8667541200422193015

namespace A087100

/-- `Δ[A087098(A289207(2*n)/2)]` -/
def P8667541200422193015.Spec : Prop :=
  ∀ n, P8667541200422193015.a n = A087100 n

end A087100

/-! ## A087100.P15221000860021031783

`A087098(n)-A087098(A289207(n+1))`
-/

namespace A087100.P15221000860021031783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087098 n - A087098 (A289207 (n + 1)).toNat

end

end A087100.P15221000860021031783

namespace A087100

/-- `A087098(n)-A087098(A289207(n+1))` -/
def P15221000860021031783.Spec : Prop :=
  ∀ n, P15221000860021031783.a n = A087100 n

end A087100

/-! ## A087100.P166325360844172951

`A087098(n)-A087098(log2(A011782(n)))`
-/

namespace A087100.P166325360844172951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087098 n - A087098 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A087100.P166325360844172951

namespace A087100

/-- `A087098(n)-A087098(log2(A011782(n)))` -/
def P166325360844172951.Spec : Prop :=
  ∀ n, P166325360844172951.a n = A087100 n

end A087100

/-! ## A087100.P3194920174828336663

`A087098(n)-A087098(val(A011782(n), 2))`
-/

namespace A087100.P3194920174828336663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087098 n - A087098 (SequenceMachineLib.valuation (A011782 n).toNat 2)

end

end A087100.P3194920174828336663

namespace A087100

/-- `A087098(n)-A087098(val(A011782(n), 2))` -/
def P3194920174828336663.Spec : Prop :=
  ∀ n, P3194920174828336663.a n = A087100 n

end A087100

/-! ## A087100.P4480102138594845311

`Δ[A087098(log2(A011782(n)))]`
-/

namespace A087100.P4480102138594845311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087098 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087100.P4480102138594845311

namespace A087100

/-- `Δ[A087098(log2(A011782(n)))]` -/
def P4480102138594845311.Spec : Prop :=
  ∀ n, P4480102138594845311.a n = A087100 n

end A087100

/-! ## A087100.P16896744467362814876

`Δ[A087098(val(A011782(n), 2))]`
-/

namespace A087100.P16896744467362814876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087098 (SequenceMachineLib.valuation (A011782 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087100.P16896744467362814876

namespace A087100

/-- `Δ[A087098(val(A011782(n), 2))]` -/
def P16896744467362814876.Spec : Prop :=
  ∀ n, P16896744467362814876.a n = A087100 n

end A087100

/-! ## A087100.P10001339939952642079

`Δ[A087098(abs(1-n))]%A000346(n)`
-/

namespace A087100.P10001339939952642079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087098 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000346 n)

end

end A087100.P10001339939952642079

namespace A087100

/-- `Δ[A087098(abs(1-n))]%A000346(n)` -/
def P10001339939952642079.Spec : Prop :=
  ∀ n, P10001339939952642079.a n = A087100 n

end A087100

/-! ## A087100.P3046670052791771060

`Δ[A087098(A003056(A161680(n)))]`
-/

namespace A087100.P3046670052791771060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087098 (A003056 (A161680 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087100.P3046670052791771060

namespace A087100

/-- `Δ[A087098(A003056(A161680(n)))]` -/
def P3046670052791771060.Spec : Prop :=
  ∀ n, P3046670052791771060.a n = A087100 n

end A087100

/-!
# A087102: Number of numbers occurring most frequently as difference between consecutive primes <= prime(n).

The programs for A087102, there is no canonical definition to state claims against.
-/

/-! ## A087102.P3658509986490003704

`A087104(n+2)/A285200(A324762(n+1))`
-/

namespace A087102.P3658509986490003704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087104 (n + 2) : ℚ) / (A285200 (A324762 (n + 1)).toNat : ℚ)

end

end A087102.P3658509986490003704

/-!
# A087103: Smallest jumping champion for prime(n).

The programs for A087103, there is no canonical definition to state claims against.
-/

/-! ## A087103.P10777143434080445437

`dr(A084066(A187321(n)²))`
-/

namespace A087103.P10777143434080445437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A084066 (A187321 n ^ 2).toNat)

end

end A087103.P10777143434080445437

/-!
# A087104: Greatest jumping champion for prime(n).

The programs for A087104, there is no canonical definition to state claims against.
-/

/-! ## A087104.P1580181835349516899

`A087102(n+2)*A285200(A324762(n+1))`
-/

namespace A087104.P1580181835349516899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087102 (n + 2) * A285200 (A324762 (n + 1)).toNat

end

end A087104.P1580181835349516899

/-!
# A087105: (prime(n-1) + 1)*(prime(n+1) - 1).

The programs for A087105, the canonical program `A087105.P8815162481329446824` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087105 has offset 2).

The definition of A087105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087105.P8815162481329446824

`A008864(n+1)*A156037(n+3)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087105

/-- `A008864(n+1)*A156037(n+3)` -/
def P8815162481329446824.Spec : Prop :=
  ∀ n, P8815162481329446824.a n = A087105 (n + 2)

theorem P8815162481329446824.correct : P8815162481329446824.Spec := by
  intro n
  simp only [A087105, Nat.add_sub_cancel]

end A087105

/-! ## A087105.P7804754314845452485

`A031131(n+1)+A090076(n+1)-1`
-/

namespace A087105.P7804754314845452485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) + (A090076 (n + 1) - 1)

end

end A087105.P7804754314845452485

namespace A087105

/-- `A031131(n+1)+A090076(n+1)-1` -/
def P7804754314845452485.Spec : Prop :=
  ∀ n, P7804754314845452485.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P12464129970737280088

`(A215848(n+1)-1)*A008864(n+1)`
-/

namespace A087105.P12464129970737280088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A215848 (n + 1) - 1) * A008864 (n + 1)

end

end A087105.P12464129970737280088

namespace A087105

/-- `(A215848(n+1)-1)*A008864(n+1)` -/
def P12464129970737280088.Spec : Prop :=
  ∀ n, P12464129970737280088.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P4145209381318853769

`A005097(n+2)*A089241(n+1)`
-/

namespace A087105.P4145209381318853769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) * A089241 (n + 1)

end

end A087105.P4145209381318853769

namespace A087105

/-- `A005097(n+2)*A089241(n+1)` -/
def P4145209381318853769.Spec : Prop :=
  ∀ n, P4145209381318853769.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P6255067621304411277

`A008864(n+1)*A165972(n+2)`
-/

namespace A087105.P6255067621304411277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A165972 (n + 2)

end

end A087105.P6255067621304411277

namespace A087105

/-- `A008864(n+1)*A165972(n+2)` -/
def P6255067621304411277.Spec : Prop :=
  ∀ n, P6255067621304411277.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P11428207145998574872

`A028815(n+1)*A165972(n+2)`
-/

namespace A087105.P11428207145998574872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) * A165972 (n + 2)

end

end A087105.P11428207145998574872

namespace A087105

/-- `A028815(n+1)*A165972(n+2)` -/
def P11428207145998574872.Spec : Prop :=
  ∀ n, P11428207145998574872.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P18098510502409436513

`A165972(n+2)*A299763(n+2)`
-/

namespace A087105.P18098510502409436513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 2) * A299763 (n + 2)

end

end A087105.P18098510502409436513

namespace A087105

/-- `A165972(n+2)*A299763(n+2)` -/
def P18098510502409436513.Spec : Prop :=
  ∀ n, P18098510502409436513.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P8998084040303181494

`(A045344(n+2)-1)*A028815(n+1)`
-/

namespace A087105.P8998084040303181494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045344 (n + 2) - 1) * A028815 (n + 1)

end

end A087105.P8998084040303181494

namespace A087105

/-- `(A045344(n+2)-1)*A028815(n+1)` -/
def P8998084040303181494.Spec : Prop :=
  ∀ n, P8998084040303181494.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P7533087451930262641

`(A065091(n+2)-1)*A028815(n+1)`
-/

namespace A087105.P7533087451930262641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 2) - 1) * A028815 (n + 1)

end

end A087105.P7533087451930262641

namespace A087105

/-- `(A065091(n+2)-1)*A028815(n+1)` -/
def P7533087451930262641.Spec : Prop :=
  ∀ n, P7533087451930262641.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P4800524399725192827

`(A135731(n+2)-2)*A028815(n+1)`
-/

namespace A087105.P4800524399725192827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135731 (n + 2) - 2) * A028815 (n + 1)

end

end A087105.P4800524399725192827

namespace A087105

/-- `(A135731(n+2)-2)*A028815(n+1)` -/
def P4800524399725192827.Spec : Prop :=
  ∀ n, P4800524399725192827.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P8216725772996279234

`(A008864(n+1)+A008864(n+1))*A005097(n+2)`
-/

namespace A087105.P8216725772996279234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) + A008864 (n + 1)) * A005097 (n + 2)

end

end A087105.P8216725772996279234

namespace A087105

/-- `(A008864(n+1)+A008864(n+1))*A005097(n+2)` -/
def P8216725772996279234.Spec : Prop :=
  ∀ n, P8216725772996279234.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P2015897027047004491

`A165972(n+2)+A000040(n+1)*A165972(n+2)`
-/

namespace A087105.P2015897027047004491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 2) + A000040 (n + 1) * A165972 (n + 2)

end

end A087105.P2015897027047004491

namespace A087105

/-- `A165972(n+2)+A000040(n+1)*A165972(n+2)` -/
def P2015897027047004491.Spec : Prop :=
  ∀ n, P2015897027047004491.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P13978622094675375459

`A006093(n+3)*A008864(n+1)`
-/

namespace A087105.P13978622094675375459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 3) * A008864 (n + 1)

end

end A087105.P13978622094675375459

namespace A087105

/-- `A006093(n+3)*A008864(n+1)` -/
def P13978622094675375459.Spec : Prop :=
  ∀ n, P13978622094675375459.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P15364614201838022616

`A006093(n+3)*A028815(n+1)`
-/

namespace A087105.P15364614201838022616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 3) * A028815 (n + 1)

end

end A087105.P15364614201838022616

namespace A087105

/-- `A006093(n+3)*A028815(n+1)` -/
def P15364614201838022616.Spec : Prop :=
  ∀ n, P15364614201838022616.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P11508274277574961814

`A008864(n+1)*A039915(n+3)`
-/

namespace A087105.P11508274277574961814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A039915 (n + 3)

end

end A087105.P11508274277574961814

namespace A087105

/-- `A008864(n+1)*A039915(n+3)` -/
def P11508274277574961814.Spec : Prop :=
  ∀ n, P11508274277574961814.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P11042249710081011094

`(A006093(n+1)+2)*A006093(n+3)`
-/

namespace A087105.P11042249710081011094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 2) * A006093 (n + 3)

end

end A087105.P11042249710081011094

namespace A087105

/-- `(A006093(n+1)+2)*A006093(n+3)` -/
def P11042249710081011094.Spec : Prop :=
  ∀ n, P11042249710081011094.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P861807952601628987

`(A008864(n+3)-2)*A008864(n+1)`
-/

namespace A087105.P861807952601628987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 3) - 2) * A008864 (n + 1)

end

end A087105.P861807952601628987

namespace A087105

/-- `(A008864(n+3)-2)*A008864(n+1)` -/
def P861807952601628987.Spec : Prop :=
  ∀ n, P861807952601628987.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P7433250957740635027

`(A000040(n+1)+1)*(A000040(n+3)-1)`
-/

namespace A087105.P7433250957740635027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) + 1) * (A000040 (n + 3) - 1)

end

end A087105.P7433250957740635027

namespace A087105

/-- `(A000040(n+1)+1)*(A000040(n+3)-1)` -/
def P7433250957740635027.Spec : Prop :=
  ∀ n, P7433250957740635027.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P1678707888677531544

`A000010(A182986(n+4))*A008864(n+1)`
-/

namespace A087105.P1678707888677531544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A182986 (n + 4)).toNat * A008864 (n + 1)

end

end A087105.P1678707888677531544

namespace A087105

/-- `A000010(A182986(n+4))*A008864(n+1)` -/
def P1678707888677531544.Spec : Prop :=
  ∀ n, P1678707888677531544.a n = A087105 (n + 2)

end A087105

/-! ## A087105.P8766394838546820542

`A018252(A014689(n+3))*A008864(n+1)`
-/

namespace A087105.P8766394838546820542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014689 (n + 3)).toNat * A008864 (n + 1)

end

end A087105.P8766394838546820542

namespace A087105

/-- `A018252(A014689(n+3))*A008864(n+1)` -/
def P8766394838546820542.Spec : Prop :=
  ∀ n, P8766394838546820542.a n = A087105 (n + 2)

end A087105

/-!
# A087106: Primes of the form (prime(k-1)+1)*(prime(k+1)-1) + 1, k>1.

The programs for A087106, there is no canonical definition to state claims against.
-/

/-! ## A087106.P8406409747418312827

`p?[A087105(n+2)+1]`
-/

namespace A087106.P8406409747418312827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087105 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087106.P8406409747418312827

/-! ## A087106.P10355293150061896463

`p?[A090076(n+1)+A031131(n+1)]`
-/

namespace A087106.P10355293150061896463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) + A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087106.P10355293150061896463

/-! ## A087106.P5461121143379719302

`p?[A181428(n+1)+A152530(n+1)]`
-/

namespace A087106.P5461121143379719302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) + A152530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087106.P5461121143379719302

/-! ## A087106.P15635651940332894020

`p?[(A000040(n+1)+1)*(A000040(n+3)-1)+1]`
-/

namespace A087106.P15635651940332894020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) + 1) * (A000040 (n + 3) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087106.P15635651940332894020

/-! ## A087106.P17929252687678334355

`p?[A090076(n+1)+A000040(n+3)-A000040(n+1)]`
-/

namespace A087106.P17929252687678334355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) + (A000040 (n + 3) - A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087106.P17929252687678334355

/-!
# A087109: This table shows the coefficients of combinatorial formulas needed for generating the sequential sums of p-th powers of binomial coefficients C(n,5). The p-th row (p>=1) contains a(i,p) for i=1 to 5*p-4, where a(i,p) satisfies Sum_{i=1..n} C(i+4,5)^p = 6 * C(n+5,6) * Sum_{i=1..5*p-4} a(i,p) * C(n-1,i-1)/(i+5).

The programs for A087109, there is no canonical definition to state claims against.
-/

/-! ## A087109.P14333210963194316594

`A263272(A277950(n+1)^A212369(n+3))`
-/

namespace A087109.P14333210963194316594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (SequenceMachineLib.roundAway ((A277950 (n + 1) : ℚ) ^ (A212369 (n + 3) : ℤ))).toNat

end

end A087109.P14333210963194316594

/-! ## A087109.P13110331352054692191

`A007318(lt[A129849(2*n+1), A129854(n)])`
-/

namespace A087109.P13110331352054692191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129849 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087109.P13110331352054692191

/-! ## A087109.P9664487594393779251

`A007318(lt[A247429(2*n+1), A247487(n)])`
-/

namespace A087109.P9664487594393779251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247429 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087109.P9664487594393779251

/-! ## A087109.P3900366927978348113

`A034839(A135711(n+1)-A213361(3*n+4))`
-/

namespace A087109.P3900366927978348113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (A135711 (n + 1) - A213361 (3 * n + 4)).toNat

end

end A087109.P3900366927978348113

/-! ## A087109.P6478703443319015524

`A007318(lt[A228785(2*(n+2)), A228785(n+1)])`
-/

namespace A087109.P6478703443319015524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228785 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087109.P6478703443319015524

/-!
# A087112: Triangle in which the n-th row contains n distinct semiprimes not listed previously with all prime factors from among the first n primes.

The programs for A087112, the canonical program `A087112.P1462611633473836263` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087112 has offset 1).

The definition of A087112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087112.P1462611633473836263

`A005145(n+1)*A037126(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087112

/-- `A005145(n+1)*A037126(n+1)` -/
def P1462611633473836263.Spec : Prop :=
  ∀ n, P1462611633473836263.a n = A087112 (n + 1)

theorem P1462611633473836263.correct : P1462611633473836263.Spec := by
  intro n
  simp only [A087112, Nat.add_sub_cancel]

end A087112

/-! ## A087112.P201885496417307588

`A037126(n+1)*A051599(A057944(n))`
-/

namespace A087112.P201885496417307588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A051599 (A057944 n).toNat

end

end A087112.P201885496417307588

namespace A087112

/-- `A037126(n+1)*A051599(A057944(n))` -/
def P201885496417307588.Spec : Prop :=
  ∀ n, P201885496417307588.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P17325662662976184828

`A000040(A002260(n+1))*A005145(n+1)`
-/

namespace A087112.P17325662662976184828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat * A005145 (n + 1)

end

end A087112.P17325662662976184828

namespace A087112

/-- `A000040(A002260(n+1))*A005145(n+1)` -/
def P17325662662976184828.Spec : Prop :=
  ∀ n, P17325662662976184828.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P11325083745309796462

`A000040(A002262(n)+1)*A005145(n+1)`
-/

namespace A087112.P11325083745309796462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002262 n + 1).toNat * A005145 (n + 1)

end

end A087112.P11325083745309796462

namespace A087112

/-- `A000040(A002262(n)+1)*A005145(n+1)` -/
def P11325083745309796462.Spec : Prop :=
  ∀ n, P11325083745309796462.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P11278039631668647651

`A000040(A002024(n+1))*A037126(n+1)`
-/

namespace A087112.P11278039631668647651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1)).toNat * A037126 (n + 1)

end

end A087112.P11278039631668647651

namespace A087112

/-- `A000040(A002024(n+1))*A037126(n+1)` -/
def P11278039631668647651.Spec : Prop :=
  ∀ n, P11278039631668647651.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P11584287748200637033

`A026239(A111653(n+1))*A037126(n+1)`
-/

namespace A087112.P11584287748200637033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A111653 (n + 1)).toNat * A037126 (n + 1)

end

end A087112.P11584287748200637033

namespace A087112

/-- `A026239(A111653(n+1))*A037126(n+1)` -/
def P11584287748200637033.Spec : Prop :=
  ∀ n, P11584287748200637033.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P8845656114842695445

`A008578(A003057(n+2))*A037126(n+1)`
-/

namespace A087112.P8845656114842695445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A003057 (n + 2)).toNat * A037126 (n + 1)

end

end A087112.P8845656114842695445

namespace A087112

/-- `A008578(A003057(n+2))*A037126(n+1)` -/
def P8845656114842695445.Spec : Prop :=
  ∀ n, P8845656114842695445.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P7372160852260696117

`A037126(n+1)*A067747(A111650(n+1)-1)`
-/

namespace A087112.P7372160852260696117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A067747 (A111650 (n + 1) - 1).toNat

end

end A087112.P7372160852260696117

namespace A087112

/-- `A037126(n+1)*A067747(A111650(n+1)-1)` -/
def P7372160852260696117.Spec : Prop :=
  ∀ n, P7372160852260696117.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P9532413523629377295

`A000040(A003057(n+2)-1)*A037126(n+1)`
-/

namespace A087112.P9532413523629377295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2) - 1).toNat * A037126 (n + 1)

end

end A087112.P9532413523629377295

namespace A087112

/-- `A000040(A003057(n+2)-1)*A037126(n+1)` -/
def P9532413523629377295.Spec : Prop :=
  ∀ n, P9532413523629377295.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P12923868711636204329

`(A086800(n+1)+A037126(n+1))*A037126(n+1)`
-/

namespace A087112.P12923868711636204329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086800 (n + 1) + A037126 (n + 1)) * A037126 (n + 1)

end

end A087112.P12923868711636204329

namespace A087112

/-- `(A086800(n+1)+A037126(n+1))*A037126(n+1)` -/
def P12923868711636204329.Spec : Prop :=
  ∀ n, P12923868711636204329.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P12857371406235070235

`(A065342(n+1)-A005145(n+1))*A005145(n+1)`
-/

namespace A087112.P12857371406235070235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065342 (n + 1) - A005145 (n + 1)) * A005145 (n + 1)

end

end A087112.P12857371406235070235

namespace A087112

/-- `(A065342(n+1)-A005145(n+1))*A005145(n+1)` -/
def P12857371406235070235.Spec : Prop :=
  ∀ n, P12857371406235070235.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P1227647798408242236

`(A005145(n+1)-A086800(n+1))*A005145(n+1)`
-/

namespace A087112.P1227647798408242236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005145 (n + 1) - A086800 (n + 1)) * A005145 (n + 1)

end

end A087112.P1227647798408242236

namespace A087112

/-- `(A005145(n+1)-A086800(n+1))*A005145(n+1)` -/
def P1227647798408242236.Spec : Prop :=
  ∀ n, P1227647798408242236.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P16873478766842910174

`(A065342(n+1)-A037126(n+1))*A037126(n+1)`
-/

namespace A087112.P16873478766842910174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065342 (n + 1) - A037126 (n + 1)) * A037126 (n + 1)

end

end A087112.P16873478766842910174

namespace A087112

/-- `(A065342(n+1)-A037126(n+1))*A037126(n+1)` -/
def P16873478766842910174.Spec : Prop :=
  ∀ n, P16873478766842910174.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P8670324644412030097

`A000040(A002024(n+1))*A000040(A002260(n+1))`
-/

namespace A087112.P8670324644412030097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1)).toNat * A000040 (A002260 (n + 1)).toNat

end

end A087112.P8670324644412030097

namespace A087112

/-- `A000040(A002024(n+1))*A000040(A002260(n+1))` -/
def P8670324644412030097.Spec : Prop :=
  ∀ n, P8670324644412030097.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P4893745150783863701

`A000040(A002024(n+1))*A000040(A002262(n)+1)`
-/

namespace A087112.P4893745150783863701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1)).toNat * A000040 (A002262 n + 1).toNat

end

end A087112.P4893745150783863701

namespace A087112

/-- `A000040(A002024(n+1))*A000040(A002262(n)+1)` -/
def P4893745150783863701.Spec : Prop :=
  ∀ n, P4893745150783863701.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P1115077026155279712

`A000040(A002260(n+1))*A000040(A003056(n)+1)`
-/

namespace A087112.P1115077026155279712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat * A000040 (A003056 n + 1).toNat

end

end A087112.P1115077026155279712

namespace A087112

/-- `A000040(A002260(n+1))*A000040(A003056(n)+1)` -/
def P1115077026155279712.Spec : Prop :=
  ∀ n, P1115077026155279712.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P2096743342472322565

`A000040(A002262(n)+1)*A000040(A003056(n)+1)`
-/

namespace A087112.P2096743342472322565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002262 n + 1).toNat * A000040 (A003056 n + 1).toNat

end

end A087112.P2096743342472322565

namespace A087112

/-- `A000040(A002262(n)+1)*A000040(A003056(n)+1)` -/
def P2096743342472322565.Spec : Prop :=
  ∀ n, P2096743342472322565.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P12066583876255515998

`A037126(n+1)*A037126(A127739(n+1))`
-/

namespace A087112.P12066583876255515998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A037126 (A127739 (n + 1)).toNat

end

end A087112.P12066583876255515998

namespace A087112

/-- `A037126(n+1)*A037126(A127739(n+1))` -/
def P12066583876255515998.Spec : Prop :=
  ∀ n, P12066583876255515998.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P4607424403672429058

`A037126(A004736(n+1)+n)*A037126(n+1)`
-/

namespace A087112.P4607424403672429058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A004736 (n + 1) + (n : ℤ)).toNat * A037126 (n + 1)

end

end A087112.P4607424403672429058

namespace A087112

/-- `A037126(A004736(n+1)+n)*A037126(n+1)` -/
def P4607424403672429058.Spec : Prop :=
  ∀ n, P4607424403672429058.a n = A087112 (n + 1)

end A087112

/-! ## A087112.P5501498228356291193

`A006530(A077320(n+1))*A037126(n+1)`
-/

namespace A087112.P5501498228356291193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077320 (n + 1)).toNat * A037126 (n + 1)

end

end A087112.P5501498228356291193

namespace A087112

/-- `A006530(A077320(n+1))*A037126(n+1)` -/
def P5501498228356291193.Spec : Prop :=
  ∀ n, P5501498228356291193.a n = A087112 (n + 1)

end A087112

/-!
# A087114: Number of regular bipartite simple graphs on n nodes.

The programs for A087114, there is no canonical definition to state claims against.
-/

/-! ## A087114.P4533160758961688255

`A008324(n-A026741(n))`
-/

namespace A087114.P4533160758961688255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008324 ((n : ℤ) - A026741 n).toNat

end

end A087114.P4533160758961688255

/-! ## A087114.P4336858486771615791

`A008324(A004526(n*A059841(n)))`
-/

namespace A087114.P4336858486771615791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008324 (A004526 ((n : ℤ) * A059841 n).toNat).toNat

end

end A087114.P4336858486771615791

/-! ## A087114.P1373131114804122422

`A008324(∑[A001057(n)]-A001057(n))`
-/

namespace A087114.P1373131114804122422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008324 (∑ j ∈ Finset.range (n + 1), f1 j - A001057 n).toNat

end

end A087114.P1373131114804122422

/-! ## A087114.P1573758689137057207

`A271778(A045654(n))`
-/

namespace A087114.P1573758689137057207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271778 (A045654 n).toNat

end

end A087114.P1573758689137057207

/-! ## A087114.P4782396425506219336

`A271778(A129342(n))`
-/

namespace A087114.P4782396425506219336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271778 (A129342 n).toNat

end

end A087114.P4782396425506219336

/-!
# A087116: Number of maximal groups of consecutive zeros in binary representation of n.

The programs for A087116, the canonical program `A087116.P11350810953562711327` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087116 has offset 0).

The definition of A087116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087116.P204902283360592075

`A037800(n)+log2(gcd(2, n))`
-/

namespace A087116.P204902283360592075
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A037800 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A087116.P204902283360592075

namespace A087116

/-- `A037800(n)+log2(gcd(2, n))` -/
def P204902283360592075.Spec : Prop :=
  ∀ n, P204902283360592075.a n = (A087116 n : ℝ)

end A087116

/-! ## A087116.P11350810953562711327

`A069010(n)-Δ[ceil(abs((1-n)/2))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A087116

/-- `A069010(n)-Δ[ceil(abs((1-n)/2))]` -/
def P11350810953562711327.Spec : Prop :=
  ∀ n, P11350810953562711327.a n = A087116 n

theorem P11350810953562711327.correct : P11350810953562711327.Spec := by
  intro n
  simp only [A087116]

end A087116

/-! ## A087116.P11505472417570401404

`A033264((2*n+1)%(n+2)+1)`
-/

namespace A087116.P11505472417570401404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 ((2 * n + 1) % (n + 2) + 1)

end

end A087116.P11505472417570401404

namespace A087116

/-- `A033264((2*n+1)%(n+2)+1)` -/
def P11505472417570401404.Spec : Prop :=
  ∀ n, P11505472417570401404.a n = A087116 n

end A087116

/-! ## A087116.P14703799332451461902

`A069010(A035327(n))`
-/

namespace A087116.P14703799332451461902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A035327 n).toNat

end

end A087116.P14703799332451461902

namespace A087116

/-- `A069010(A035327(n))` -/
def P14703799332451461902.Spec : Prop :=
  ∀ n, P14703799332451461902.a n = A087116 n

end A087116

/-! ## A087116.P13123359952271656185

`A069010(A036044(n))`
-/

namespace A087116.P13123359952271656185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A036044 n).toNat

end

end A087116.P13123359952271656185

namespace A087116

/-- `A069010(A036044(n))` -/
def P13123359952271656185.Spec : Prop :=
  ∀ n, P13123359952271656185.a n = A087116 n

end A087116

/-! ## A087116.P7513079108974549918

`A023416(A090078(n))`
-/

namespace A087116.P7513079108974549918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A090078 n).toNat

end

end A087116.P7513079108974549918

namespace A087116

/-- `A023416(A090078(n))` -/
def P7513079108974549918.Spec : Prop :=
  ∀ n, P7513079108974549918.a n = A087116 n

end A087116

/-! ## A087116.P1522839402100108932

`A023416(A090079(n))`
-/

namespace A087116.P1522839402100108932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A090079 n).toNat

end

end A087116.P1522839402100108932

namespace A087116

/-- `A023416(A090079(n))` -/
def P1522839402100108932.Spec : Prop :=
  ∀ n, P1522839402100108932.a n = A087116 n

end A087116

/-! ## A087116.P13268079265827207609

`A033264(n)+A000007(n)`
-/

namespace A087116.P13268079265827207609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n + A000007 n

end

end A087116.P13268079265827207609

namespace A087116

/-- `A033264(n)+A000007(n)` -/
def P13268079265827207609.Spec : Prop :=
  ∀ n, P13268079265827207609.a n = A087116 n

end A087116

/-! ## A087116.P12405494693350948440

`A059841(n)+A037800(n)`
-/

namespace A087116.P12405494693350948440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A037800 n

end

end A087116.P12405494693350948440

namespace A087116

/-- `A059841(n)+A037800(n)` -/
def P12405494693350948440.Spec : Prop :=
  ∀ n, P12405494693350948440.a n = A087116 n

end A087116

/-! ## A087116.P13176130140493760920

`A023416(n)-A107782(n)`
-/

namespace A087116.P13176130140493760920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - A107782 n

end

end A087116.P13176130140493760920

namespace A087116

/-- `A023416(n)-A107782(n)` -/
def P13176130140493760920.Spec : Prop :=
  ∀ n, P13176130140493760920.a n = A087116 n

end A087116

/-! ## A087116.P4078712576205194462

`A123108(n)-A255070(n)`
-/

namespace A087116.P4078712576205194462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n - A255070 n

end

end A087116.P4078712576205194462

namespace A087116

/-- `A123108(n)-A255070(n)` -/
def P4078712576205194462.Spec : Prop :=
  ∀ n, P4078712576205194462.a n = A087116 n

end A087116

/-! ## A087116.P10270313995299834405

`A037800(n)+1-A000035(n)`
-/

namespace A087116.P10270313995299834405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n + (1 - A000035 n)

end

end A087116.P10270313995299834405

namespace A087116

/-- `A037800(n)+1-A000035(n)` -/
def P10270313995299834405.Spec : Prop :=
  ∀ n, P10270313995299834405.a n = A087116 n

end A087116

/-! ## A087116.P3367752639508862421

`A037800(n)+2-A000034(n)`
-/

namespace A087116.P3367752639508862421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n + (2 - A000034 n)

end

end A087116.P3367752639508862421

namespace A087116

/-- `A037800(n)+2-A000034(n)` -/
def P3367752639508862421.Spec : Prop :=
  ∀ n, P3367752639508862421.a n = A087116 n

end A087116

/-! ## A087116.P14521448549360599203

`A036987(2*n)+A033264(n)`
-/

namespace A087116.P14521448549360599203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + A033264 n

end

end A087116.P14521448549360599203

namespace A087116

/-- `A036987(2*n)+A033264(n)` -/
def P14521448549360599203.Spec : Prop :=
  ∀ n, P14521448549360599203.a n = A087116 n

end A087116

/-! ## A087116.P11038660675444808776

`A023416(A209639(n)%A004277(n))`
-/

namespace A087116.P11038660675444808776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.tmod (A209639 n) (A004277 n)).toNat

end

end A087116.P11038660675444808776

namespace A087116

/-- `A023416(A209639(n)%A004277(n))` -/
def P11038660675444808776.Spec : Prop :=
  ∀ n, P11038660675444808776.a n = A087116 n

end A087116

/-! ## A087116.P14574661871695902472

`A023416(and(A003817(n), A209639(n)))`
-/

namespace A087116.P14574661871695902472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.land (A003817 n) (A209639 n)).toNat

end

end A087116.P14574661871695902472

namespace A087116

/-- `A023416(and(A003817(n), A209639(n)))` -/
def P14574661871695902472.Spec : Prop :=
  ∀ n, P14574661871695902472.a n = A087116 n

end A087116

/-! ## A087116.P10426384749035050020

`A033264(n+2-A163577(A001316(n+2)))`
-/

namespace A087116.P10426384749035050020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 ((n + 2 : ℤ) - A163577 (A001316 (n + 2)).toNat).toNat

end

end A087116.P10426384749035050020

namespace A087116

/-- `A033264(n+2-A163577(A001316(n+2)))` -/
def P10426384749035050020.Spec : Prop :=
  ∀ n, P10426384749035050020.a n = A087116 n

end A087116

/-! ## A087116.P9738214545241788536

`A037800(n)+A000035(n+1)`
-/

namespace A087116.P9738214545241788536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n + A000035 (n + 1)

end

end A087116.P9738214545241788536

namespace A087116

/-- `A037800(n)+A000035(n+1)` -/
def P9738214545241788536.Spec : Prop :=
  ∀ n, P9738214545241788536.a n = A087116 n

end A087116

/-! ## A087116.P6472634163492114213

`A069010(n+1-A352726(A342410(n)))`
-/

namespace A087116.P6472634163492114213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 ((n + 1 : ℤ) - A352726 (A342410 n).toNat).toNat

end

end A087116.P6472634163492114213

namespace A087116

/-- `A069010(n+1-A352726(A342410(n)))` -/
def P6472634163492114213.Spec : Prop :=
  ∀ n, P6472634163492114213.a n = A087116 n

end A087116

/-!
# A087117: Number of zeros in the longest string of consecutive zeros in the binary representation of n.

The programs for A087117, the canonical program `A087117.P11496041561774747190` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087117 has offset 0).

The definition of A087117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087117.P11496041561774747190

`val(A278222(A035327(n)), 2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A087117

/-- `val(A278222(A035327(n)), 2)` -/
def P11496041561774747190.Spec : Prop :=
  ∀ n, (P11496041561774747190.a n : ℤ) = A087117 n

theorem P11496041561774747190.correct : P11496041561774747190.Spec := by
  intro n
  simp only [A087117]

end A087117

/-! ## A087117.P5045731094141844799

`val(A278222(A036044(n)), 2)`
-/

namespace A087117.P5045731094141844799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A036044 n).toNat).toNat 2

end

end A087117.P5045731094141844799

namespace A087117

/-- `val(A278222(A036044(n)), 2)` -/
def P5045731094141844799.Spec : Prop :=
  ∀ n, (P5045731094141844799.a n : ℤ) = A087117 n

end A087117

/-! ## A087117.P3266003992259380731

`val(A278222(2^A070939(n)-(n+1)), 2)`
-/

namespace A087117.P3266003992259380731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A070939 n : ℤ) - (n + 1 : ℚ))).toNat).toNat 2

end

end A087117.P3266003992259380731

namespace A087117

/-- `val(A278222(2^A070939(n)-(n+1)), 2)` -/
def P3266003992259380731.Spec : Prop :=
  ∀ n, (P3266003992259380731.a n : ℤ) = A087117 n

end A087117

/-! ## A087117.P18076009754442166124

`A023416(n)-A023416(A331856(2*n+1))`
-/

namespace A087117.P18076009754442166124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - A023416 (A331856 (2 * n + 1)).toNat

end

end A087117.P18076009754442166124

namespace A087117

/-- `A023416(n)-A023416(A331856(2*n+1))` -/
def P18076009754442166124.Spec : Prop :=
  ∀ n, P18076009754442166124.a n = A087117 n

end A087117

/-! ## A087117.P722077081252668299

`1-A088705(A233569(n))`
-/

namespace A087117.P722077081252668299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088705 (A233569 n).toNat

end

end A087117.P722077081252668299

namespace A087117

/-- `1-A088705(A233569(n))` -/
def P722077081252668299.Spec : Prop :=
  ∀ n, P722077081252668299.a n = A087117 n

end A087117

/-! ## A087117.P16006572905907070592

`A001222(gcd(A140513(n), A233569(n)))`
-/

namespace A087117.P16006572905907070592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A140513 n) (A233569 n))

end

end A087117.P16006572905907070592

namespace A087117

/-- `A001222(gcd(A140513(n), A233569(n)))` -/
def P16006572905907070592.Spec : Prop :=
  ∀ n, P16006572905907070592.a n = A087117 n

end A087117

/-! ## A087117.P4643442459342327493

`val(A233569(A047524(n+1)), 2)`
-/

namespace A087117.P4643442459342327493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A233569 (A047524 (n + 1)).toNat).toNat 2

end

end A087117.P4643442459342327493

namespace A087117

/-- `val(A233569(A047524(n+1)), 2)` -/
def P4643442459342327493.Spec : Prop :=
  ∀ n, (P4643442459342327493.a n : ℤ) = A087117 n

end A087117

/-! ## A087117.P9845094187966277010

`abs(1-A333766(n))`
-/

namespace A087117.P9845094187966277010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A333766 n|

end

end A087117.P9845094187966277010

namespace A087117

/-- `abs(1-A333766(n))` -/
def P9845094187966277010.Spec : Prop :=
  ∀ n, P9845094187966277010.a n = A087117 n

end A087117

/-! ## A087117.P15807301507240405108

`A333766(n)-A158388(n)`
-/

namespace A087117.P15807301507240405108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 n - A158388 n

end

end A087117.P15807301507240405108

namespace A087117

/-- `A333766(n)-A158388(n)` -/
def P15807301507240405108.Spec : Prop :=
  ∀ n, P15807301507240405108.a n = A087117 n

end A087117

/-! ## A087117.P211292243264618050

`A333766(n)+A153881(n+1)`
-/

namespace A087117.P211292243264618050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 n + A153881 (n + 1)

end

end A087117.P211292243264618050

namespace A087117

/-- `A333766(n)+A153881(n+1)` -/
def P211292243264618050.Spec : Prop :=
  ∀ n, P211292243264618050.a n = A087117 n

end A087117

/-!
# A087118: Numbers having exactly one maximal group of consecutive zeros in binary representation of n.

The programs for A087118, the canonical program `A087118.P15285861938204290638` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087118 has offset 1).

The definition of A087118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087118.P7871371442012632170

`record[A175057(n+1)%A175054(n+1)]`
-/

namespace A087118.P7871371442012632170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175057 (n + 1)) (A175054 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087118.P7871371442012632170

namespace A087118

/-- `record[A175057(n+1)%A175054(n+1)]` -/
def P7871371442012632170.Spec : Prop :=
  ∀ n, P7871371442012632170.a n = A087118 (n + 1)

end A087118

/-! ## A087118.P1280155492747943731

`eq[A090996(n), A307409(A060632(2*(n+1)))]`
-/

namespace A087118.P1280155492747943731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (A060632 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P1280155492747943731

namespace A087118

/-- `eq[A090996(n), A307409(A060632(2*(n+1)))]` -/
def P1280155492747943731.Spec : Prop :=
  ∀ n, (P1280155492747943731.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P15285861938204290638

`eq[A087734(n), A135481(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A087118

/-- `eq[A087734(n), A135481(n)]` -/
def P15285861938204290638.Spec : Prop :=
  ∀ n, (P15285861938204290638.a n : ℤ) = A087118 (n + 1)

theorem P15285861938204290638.correct : P15285861938204290638.Spec := by
  intro n
  simp only [A087118, Nat.add_sub_cancel]

end A087118

/-! ## A087118.P10724413817630101106

`record[n/(A072219(n+1)-2)]`
-/

namespace A087118.P10724413817630101106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A072219 (n + 1) - 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087118.P10724413817630101106

namespace A087118

/-- `record[n/(A072219(n+1)-2)]` -/
def P10724413817630101106.Spec : Prop :=
  ∀ n, P10724413817630101106.a n = (A087118 (n + 1) : ℚ)

end A087118

/-! ## A087118.P14959890841092228910

`lt[A344681(A088748(n)), 10]`
-/

namespace A087118.P14959890841092228910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344681 (A088748 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A087118.P14959890841092228910

namespace A087118

/-- `lt[A344681(A088748(n)), 10]` -/
def P14959890841092228910.Spec : Prop :=
  ∀ n, (P14959890841092228910.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P5262332654176363368

`eq[1, A087116(n)]`
-/

namespace A087118.P5262332654176363368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087118.P5262332654176363368

namespace A087118

/-- `eq[1, A087116(n)]` -/
def P5262332654176363368.Spec : Prop :=
  ∀ n, (P5262332654176363368.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P11222477924043980020

`eq[n%2, A037800(n)]`
-/

namespace A087118.P11222477924043980020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087118.P11222477924043980020

namespace A087118

/-- `eq[n%2, A037800(n)]` -/
def P11222477924043980020.Spec : Prop :=
  ∀ n, (P11222477924043980020.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P9959483326062819395

`eq[1, A008667(A005811(n))]`
-/

namespace A087118.P9959483326062819395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087118.P9959483326062819395

namespace A087118

/-- `eq[1, A008667(A005811(n))]` -/
def P9959483326062819395.Spec : Prop :=
  ∀ n, (P9959483326062819395.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P1327910657813566774

`eq[A000035(n), A037800(n)]`
-/

namespace A087118.P1327910657813566774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P1327910657813566774

namespace A087118

/-- `eq[A000035(n), A037800(n)]` -/
def P1327910657813566774.Spec : Prop :=
  ∀ n, (P1327910657813566774.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P17846419702927582723

`eq[A033264(n), A057427(n)]`
-/

namespace A087118.P17846419702927582723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P17846419702927582723

namespace A087118

/-- `eq[A033264(n), A057427(n)]` -/
def P17846419702927582723.Spec : Prop :=
  ∀ n, (P17846419702927582723.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P4068234196044726029

`eq[A048881(n), A090996(n)]`
-/

namespace A087118.P4068234196044726029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P4068234196044726029

namespace A087118

/-- `eq[A048881(n), A090996(n)]` -/
def P4068234196044726029.Spec : Prop :=
  ∀ n, (P4068234196044726029.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P16729884260077954697

`eq[A049501(n), A090996(n)]`
-/

namespace A087118.P16729884260077954697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P16729884260077954697

namespace A087118

/-- `eq[A049501(n), A090996(n)]` -/
def P16729884260077954697.Spec : Prop :=
  ∀ n, (P16729884260077954697.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P2532328321618468528

`eq[A088748(n), A103947(n)]`
-/

namespace A087118.P2532328321618468528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103947 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P2532328321618468528

namespace A087118

/-- `eq[A088748(n), A103947(n)]` -/
def P2532328321618468528.Spec : Prop :=
  ∀ n, (P2532328321618468528.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P8380893153119699972

`eq[A277561(n), A382713(n)]`
-/

namespace A087118.P8380893153119699972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P8380893153119699972

namespace A087118

/-- `eq[A277561(n), A382713(n)]` -/
def P8380893153119699972.Spec : Prop :=
  ∀ n, (P8380893153119699972.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P17341237393290618822

`eq[1, A245683(A136004(n)-2)]`
-/

namespace A087118.P17341237393290618822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245683 (A136004 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087118.P17341237393290618822

namespace A087118

/-- `eq[1, A245683(A136004(n)-2)]` -/
def P17341237393290618822.Spec : Prop :=
  ∀ n, (P17341237393290618822.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P10405530525239406880

`eq[A037800(n)+1, A000034(n)]`
-/

namespace A087118.P10405530525239406880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P10405530525239406880

namespace A087118

/-- `eq[A037800(n)+1, A000034(n)]` -/
def P10405530525239406880.Spec : Prop :=
  ∀ n, (P10405530525239406880.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P14326120847296706517

`eq[A007814(n+1), A049502(n)]`
-/

namespace A087118.P14326120847296706517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P14326120847296706517

namespace A087118

/-- `eq[A007814(n+1), A049502(n)]` -/
def P14326120847296706517.Spec : Prop :=
  ∀ n, (P14326120847296706517.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P8282368987106508145

`eq[A037800(n)+1, A084642(n)]`
-/

namespace A087118.P8282368987106508145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P8282368987106508145

namespace A087118

/-- `eq[A037800(n)+1, A084642(n)]` -/
def P8282368987106508145.Spec : Prop :=
  ∀ n, (P8282368987106508145.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P2348127059916214211

`eq[A107782(n)+1, A023416(n)]`
-/

namespace A087118.P2348127059916214211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P2348127059916214211

namespace A087118

/-- `eq[A107782(n)+1, A023416(n)]` -/
def P2348127059916214211.Spec : Prop :=
  ∀ n, (P2348127059916214211.a n : ℤ) = A087118 (n + 1)

end A087118

/-! ## A087118.P17558210385527179039

`eq[A072219(n+1), A122553(n)]`
-/

namespace A087118.P17558210385527179039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087118.P17558210385527179039

namespace A087118

/-- `eq[A072219(n+1), A122553(n)]` -/
def P17558210385527179039.Spec : Prop :=
  ∀ n, (P17558210385527179039.a n : ℤ) = A087118 (n + 1)

end A087118

/-!
# A087119: Numbers having more than one maximal group of consecutive zeros in binary representation of n.

The programs for A087119, there is no canonical definition to state claims against.
-/

/-! ## A087119.P2212054629908325415

`lt[49, lcm(16, or(n, floor(n/2))-n)]`
-/

namespace A087119.P2212054629908325415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 16 (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087119.P2212054629908325415

/-! ## A087119.P4567925514821498520

`lt[3, a(n-1-and(n, 2*n))+1]` with `a(0)=0`
-/

namespace A087119.P4567925514821498520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087119.P4567925514821498520

/-! ## A087119.P9926010366753040176

`lt[8, 2*a(n-1-and(n, 2*n))]` with `a(0)=1`
-/

namespace A087119.P9926010366753040176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087119.P9926010366753040176

/-! ## A087119.P12749828542564379380

`lt[3, a(or(n-1, 2*n)-2*n)+1]` with `a(0)=0`
-/

namespace A087119.P12749828542564379380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (Int.lor ((n : ℤ) - 1) (2 * n : ℤ) - (2 * n : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087119.P12749828542564379380

/-! ## A087119.P11392698543609680297

`eq[1, floor((a(n-1-and(n, 2*n))+1)/2)]` with `a(0)=9`
-/

namespace A087119.P11392698543609680297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f2 =>
  ⌊(f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1 : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087119.P11392698543609680297

/-! ## A087119.P10392508861066303055

`lt[1, A087116(n)]`
-/

namespace A087119.P10392508861066303055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A087119.P10392508861066303055

/-! ## A087119.P677180561779740482

`lt[3, A005811(n)]`
-/

namespace A087119.P677180561779740482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A087119.P677180561779740482

/-! ## A087119.P10223619503225405225

`lt[4, A088748(n)]`
-/

namespace A087119.P10223619503225405225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A087119.P10223619503225405225

/-! ## A087119.P17880644761542979579

`lt[5, A090079(n)]`
-/

namespace A087119.P17880644761542979579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A087119.P17880644761542979579

/-! ## A087119.P2048769312040952536

`lt[and(1, n), A037800(n)]`
-/

namespace A087119.P2048769312040952536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A087119.P2048769312040952536

/-!
# A087120: Smallest numbers having in binary representation exactly n maximal groups of consecutive zeros.

The programs for A087120, the canonical program `A087120.P2481460999947221484` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087120 has offset 0).

The definition of A087120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087120.P2481460999947221484

`4*a(n-1)+2` with `a(0)=1, a(1)=0, a(2)=10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087120

/-- `4*a(n-1)+2` -/
def P2481460999947221484.Spec : Prop :=
  ∀ n, (P2481460999947221484.a n : ℤ) = A087120 n

theorem P2481460999947221484.correct : P2481460999947221484.Spec := by
  intro n
  simp only [A087120]

end A087120

/-! ## A087120.P15684121716881090053

`or(10, 4*a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A087120.P15684121716881090053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.lor 10 (4 * a (n - 1))

end

end A087120.P15684121716881090053

namespace A087120

/-- `or(10, 4*a(n-1))` -/
def P15684121716881090053.Spec : Prop :=
  ∀ n, (P15684121716881090053.a n : ℤ) = A087120 n

end A087120

/-! ## A087120.P9051302915468372657

`or(a(n-1), A081294(n))` with `a(0)=1, a(1)=0, a(2)=10`
-/

namespace A087120.P9051302915468372657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 10] fun n a =>
  Int.lor (a (n - 1)) (A081294 n)

end

end A087120.P9051302915468372657

namespace A087120

/-- `or(a(n-1), A081294(n))` -/
def P9051302915468372657.Spec : Prop :=
  ∀ n, P9051302915468372657.a n = A087120 n

end A087120

/-! ## A087120.P16770116780385283912

`A284238(2*n+floor(acot(n))-1)`
-/

namespace A087120.P16770116780385283912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284238 ((2 * n : ℤ) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A087120.P16770116780385283912

namespace A087120

/-- `A284238(2*n+floor(acot(n))-1)` -/
def P16770116780385283912.Spec : Prop :=
  ∀ n, P16770116780385283912.a n = A087120 n

end A087120

/-! ## A087120.P6835706027574829920

`A284238(2*n-char[xor(n, Δ[n²])])`
-/

namespace A087120.P6835706027574829920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284238 (2 * n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A087120.P6835706027574829920

namespace A087120

/-- `A284238(2*n-char[xor(n, Δ[n²])])` -/
def P6835706027574829920.Spec : Prop :=
  ∀ n, P6835706027574829920.a n = A087120 n

end A087120

/-! ## A087120.P18162082481855551847

`A112691(A130773(n))`
-/

namespace A087120.P18162082481855551847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112691 (A130773 n).toNat

end

end A087120.P18162082481855551847

namespace A087120

/-- `A112691(A130773(n))` -/
def P18162082481855551847.Spec : Prop :=
  ∀ n, P18162082481855551847.a n = A087120 n

end A087120

/-! ## A087120.P10248946574133811753

`A284238(A004273(n))`
-/

namespace A087120.P10248946574133811753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284238 (A004273 n).toNat

end

end A087120.P10248946574133811753

namespace A087120

/-- `A284238(A004273(n))` -/
def P10248946574133811753.Spec : Prop :=
  ∀ n, P10248946574133811753.a n = A087120 n

end A087120

/-! ## A087120.P9677568620036058352

`A284238(A042948(n))`
-/

namespace A087120.P9677568620036058352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284238 (A042948 n).toNat

end

end A087120.P9677568620036058352

namespace A087120

/-- `A284238(A042948(n))` -/
def P9677568620036058352.Spec : Prop :=
  ∀ n, P9677568620036058352.a n = A087120 n

end A087120

/-! ## A087120.P11992917983811880262

`A284238(A047234(n+1))`
-/

namespace A087120.P11992917983811880262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284238 (A047234 (n + 1)).toNat

end

end A087120.P11992917983811880262

namespace A087120

/-- `A284238(A047234(n+1))` -/
def P11992917983811880262.Spec : Prop :=
  ∀ n, P11992917983811880262.a n = A087120 n

end A087120

/-! ## A087120.P4126711598369344762

`A284238(A047242(n+1))`
-/

namespace A087120.P4126711598369344762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284238 (A047242 (n + 1)).toNat

end

end A087120.P4126711598369344762

namespace A087120

/-- `A284238(A047242(n+1))` -/
def P4126711598369344762.Spec : Prop :=
  ∀ n, P4126711598369344762.a n = A087120 n

end A087120

/-! ## A087120.P4565203616138967091

`A284238(A047401(n+1))`
-/

namespace A087120.P4565203616138967091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284238 (A047401 (n + 1)).toNat

end

end A087120.P4565203616138967091

namespace A087120

/-- `A284238(A047401(n+1))` -/
def P4565203616138967091.Spec : Prop :=
  ∀ n, P4565203616138967091.a n = A087120 n

end A087120

/-! ## A087120.P3275334153505733421

`A284238(A047409(n+1))`
-/

namespace A087120.P3275334153505733421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284238 (A047409 (n + 1)).toNat

end

end A087120.P3275334153505733421

namespace A087120

/-- `A284238(A047409(n+1))` -/
def P3275334153505733421.Spec : Prop :=
  ∀ n, P3275334153505733421.a n = A087120 n

end A087120

/-! ## A087120.P9007945148686107002

`A284238(A047624(n+1))`
-/

namespace A087120.P9007945148686107002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284238 (A047624 (n + 1)).toNat

end

end A087120.P9007945148686107002

namespace A087120

/-- `A284238(A047624(n+1))` -/
def P9007945148686107002.Spec : Prop :=
  ∀ n, P9007945148686107002.a n = A087120 n

end A087120

/-! ## A087120.P15695007848225057851

`and(A007583(n), A113679(n))`
-/

namespace A087120.P15695007848225057851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007583 n) (A113679 n)

end

end A087120.P15695007848225057851

namespace A087120

/-- `and(A007583(n), A113679(n))` -/
def P15695007848225057851.Spec : Prop :=
  ∀ n, P15695007848225057851.a n = A087120 n

end A087120

/-! ## A087120.P3264187550211917161

`and(A113679(n), A140322(n))`
-/

namespace A087120.P3264187550211917161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113679 n) (A140322 n)

end

end A087120.P3264187550211917161

namespace A087120

/-- `and(A113679(n), A140322(n))` -/
def P3264187550211917161.Spec : Prop :=
  ∀ n, P3264187550211917161.a n = A087120 n

end A087120

/-! ## A087120.P13450640317897868783

`and(A113679(n), A387868(n))`
-/

namespace A087120.P13450640317897868783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113679 n) (A387868 n)

end

end A087120.P13450640317897868783

namespace A087120

/-- `and(A113679(n), A387868(n))` -/
def P13450640317897868783.Spec : Prop :=
  ∀ n, P13450640317897868783.a n = A087120 n

end A087120

/-! ## A087120.P3958715688482825656

`xor(A020988(n), A130706(n))`
-/

namespace A087120.P3958715688482825656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020988 n) (A130706 n)

end

end A087120.P3958715688482825656

namespace A087120

/-- `xor(A020988(n), A130706(n))` -/
def P3958715688482825656.Spec : Prop :=
  ∀ n, P3958715688482825656.a n = A087120 n

end A087120

/-! ## A087120.P5557312879249131772

`A284238(2*n-A000035(n))`
-/

namespace A087120.P5557312879249131772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284238 ((2 * n : ℤ) - A000035 n).toNat

end

end A087120.P5557312879249131772

namespace A087120

/-- `A284238(2*n-A000035(n))` -/
def P5557312879249131772.Spec : Prop :=
  ∀ n, P5557312879249131772.a n = A087120 n

end A087120

/-! ## A087120.P8896777740467068171

`A020988(n)+A009117(n)%4`
-/

namespace A087120.P8896777740467068171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n + Int.tmod (A009117 n) 4

end

end A087120.P8896777740467068171

namespace A087120

/-- `A020988(n)+A009117(n)%4` -/
def P8896777740467068171.Spec : Prop :=
  ∀ n, P8896777740467068171.a n = A087120 n

end A087120

/-! ## A087120.P7295339552184093550

`A007583(n)-A181565(n)%4`
-/

namespace A087120.P7295339552184093550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n - Int.tmod (A181565 n) 4

end

end A087120.P7295339552184093550

namespace A087120

/-- `A007583(n)-A181565(n)%4` -/
def P7295339552184093550.Spec : Prop :=
  ∀ n, P7295339552184093550.a n = A087120 n

end A087120

/-!
# A087121: Take bounded lunar divisors of n as defined in A087028, add them using lunar addition. See A087082 for their conventional sum.

The programs for A087121, the canonical program `A087121.P180081637264790853` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087121 has offset 1).

The definition of A087121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087121.P14878146848083065081

`A087052(A118759(n)+1)`
-/

namespace A087121.P14878146848083065081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A118759 n + 1).toNat

end

end A087121.P14878146848083065081

namespace A087121

/-- `A087052(A118759(n)+1)` -/
def P14878146848083065081.Spec : Prop :=
  ∀ n, P14878146848083065081.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P17877242284622575580

`A087052(A000188((n+1)²))`
-/

namespace A087121.P17877242284622575580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A000188 ((n + 1) ^ 2)).toNat

end

end A087121.P17877242284622575580

namespace A087121

/-- `A087052(A000188((n+1)²))` -/
def P17877242284622575580.Spec : Prop :=
  ∀ n, P17877242284622575580.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P180081637264790853

`A087052(A074294(n²+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087121

/-- `A087052(A074294(n²+1))` -/
def P180081637264790853.Spec : Prop :=
  ∀ n, P180081637264790853.a n = A087121 (n + 1)

theorem P180081637264790853.correct : P180081637264790853.Spec := by
  intro n
  simp only [A087121, Nat.add_sub_cancel]

end A087121

/-! ## A087121.P14744281390941415800

`A087052(A137735((n+1)²))`
-/

namespace A087121.P14744281390941415800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A137735 ((n + 1) ^ 2)).toNat

end

end A087121.P14744281390941415800

namespace A087121

/-- `A087052(A137735((n+1)²))` -/
def P14744281390941415800.Spec : Prop :=
  ∀ n, P14744281390941415800.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P7518681700794269547

`A087052(A159335(∑[n+1]))`
-/

namespace A087121.P7518681700794269547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A159335 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A087121.P7518681700794269547

namespace A087121

/-- `A087052(A159335(∑[n+1]))` -/
def P7518681700794269547.Spec : Prop :=
  ∀ n, P7518681700794269547.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P14499553918610039450

`A087052(C(n+1, A292579(n)))`
-/

namespace A087121.P14499553918610039450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (Nat.choose (n + 1) (A292579 n).toNat)

end

end A087121.P14499553918610039450

namespace A087121

/-- `A087052(C(n+1, A292579(n)))` -/
def P14499553918610039450.Spec : Prop :=
  ∀ n, P14499553918610039450.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P14734407212252374451

`A087052(n+1)%∑[A109090(n)]`
-/

namespace A087121.P14734407212252374451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087052 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087121.P14734407212252374451

namespace A087121

/-- `A087052(n+1)%∑[A109090(n)]` -/
def P14734407212252374451.Spec : Prop :=
  ∀ n, P14734407212252374451.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P10999105972637651893

`A087052(2*n+1-A292579(n))`
-/

namespace A087121.P10999105972637651893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 ((2 * n + 1 : ℤ) - A292579 n).toNat

end

end A087121.P10999105972637651893

namespace A087121

/-- `A087052(2*n+1-A292579(n))` -/
def P10999105972637651893.Spec : Prop :=
  ∀ n, P10999105972637651893.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P13093900199404076418

`A087052(lcm(n+1, A004719(n+1)))`
-/

namespace A087121.P13093900199404076418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (Int.lcm (n + 1 : ℤ) (A004719 (n + 1)))

end

end A087121.P13093900199404076418

namespace A087121

/-- `A087052(lcm(n+1, A004719(n+1)))` -/
def P13093900199404076418.Spec : Prop :=
  ∀ n, P13093900199404076418.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P7984684497588948003

`A087052(A055671((n+1)²)+n+1)`
-/

namespace A087121.P7984684497588948003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A055671 ((n + 1) ^ 2) + (n + 1 : ℤ)).toNat

end

end A087121.P7984684497588948003

namespace A087121

/-- `A087052(A055671((n+1)²)+n+1)` -/
def P7984684497588948003.Spec : Prop :=
  ∀ n, P7984684497588948003.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P7704466467774085518

`A087052(A008619(A087052(n)+n))`
-/

namespace A087121.P7704466467774085518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A008619 (A087052 n + (n : ℤ)).toNat).toNat

end

end A087121.P7704466467774085518

namespace A087121

/-- `A087052(A008619(A087052(n)+n))` -/
def P7704466467774085518.Spec : Prop :=
  ∀ n, P7704466467774085518.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P10927007783967561123

`A087052(A087052(n)+char[A051885(n)])`
-/

namespace A087121.P10927007783967561123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A087052 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A087121.P10927007783967561123

namespace A087121

/-- `A087052(A087052(n)+char[A051885(n)])` -/
def P10927007783967561123.Spec : Prop :=
  ∀ n, P10927007783967561123.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P15321872236235976056

`A087052(A087052(n)+char[A087052(n)])`
-/

namespace A087121.P15321872236235976056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A087052 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A087121.P15321872236235976056

namespace A087121

/-- `A087052(A087052(n)+char[A087052(n)])` -/
def P15321872236235976056.Spec : Prop :=
  ∀ n, P15321872236235976056.a n = A087121 (n + 1)

end A087121

/-! ## A087121.P10607567702385077263

`A087052(1-(A138471(n)-A087052(n)))`
-/

namespace A087121.P10607567702385077263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (1 - (A138471 n - A087052 n)).toNat

end

end A087121.P10607567702385077263

namespace A087121

/-- `A087052(1-(A138471(n)-A087052(n)))` -/
def P10607567702385077263.Spec : Prop :=
  ∀ n, P10607567702385077263.a n = A087121 (n + 1)

end A087121

/-!
# A087122: a(n) is the number of non-congruent solutions to x^2*y^2 == 0 (mod n).

The programs for A087122, the canonical program `A087122.P15401015175558508661` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087122 has offset 1).

The definition of A087122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087122.P15401015175558508661

`A008833(n+1)*A018804(A019554(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A087122

/-- `A008833(n+1)*A018804(A019554(n+1))` -/
def P15401015175558508661.Spec : Prop :=
  ∀ n, P15401015175558508661.a n = A087122 (n + 1)

theorem P15401015175558508661.correct : P15401015175558508661.Spec := by
  intro n
  simp only [A087122, Nat.add_sub_cancel]

end A087122

/-!
# A087123: a(n) = Fibonacci(n+1) - (-1)^n*Fibonacci(n).

The programs for A087123, the canonical program `A087123.P16698369209577021209` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087123 has offset 0).

The definition of A087123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087123.P16698369209577021209

`3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087123

/-- `3*a(n-2)-a(n-4)` -/
def P16698369209577021209.Spec : Prop :=
  ∀ n, P16698369209577021209.a n = A087123 n

theorem P16698369209577021209.correct : P16698369209577021209.Spec := by
  intro n
  simp only [A087123]

end A087123

/-! ## A087123.P17870165241346497735

`floor(ϕ²*a(n-2))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A087123.P17870165241346497735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌋

end

end A087123.P17870165241346497735

namespace A087123

/-- `floor(ϕ²*a(n-2))` -/
def P17870165241346497735.Spec : Prop :=
  ∀ n, P17870165241346497735.a n = A087123 n

end A087123

/-! ## A087123.P6100620274959662851

`floor(ϕ*ϕ*a(n-2))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A087123.P6100620274959662851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (a (n - 2) : ℝ))⌋

end

end A087123.P6100620274959662851

namespace A087123

/-- `floor(ϕ*ϕ*a(n-2))` -/
def P6100620274959662851.Spec : Prop :=
  ∀ n, P6100620274959662851.a n = A087123 n

end A087123

/-! ## A087123.P3004990139064821094

`A097131(n+1)`
-/

namespace A087123.P3004990139064821094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 (n + 1)

end

end A087123.P3004990139064821094

namespace A087123

/-- `A097131(n+1)` -/
def P3004990139064821094.Spec : Prop :=
  ∀ n, P3004990139064821094.a n = A087123 n

end A087123

/-! ## A087123.P3221300866940879658

`abs(Δ[A005247(n)])`
-/

namespace A087123.P3221300866940879658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087123.P3221300866940879658

namespace A087123

/-- `abs(Δ[A005247(n)])` -/
def P3221300866940879658.Spec : Prop :=
  ∀ n, P3221300866940879658.a n = A087123 n

end A087123

/-! ## A087123.P12581282254492939672

`abs(Δ[A063726(Δ[n²])])`
-/

namespace A087123.P12581282254492939672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087123.P12581282254492939672

namespace A087123

/-- `abs(Δ[A063726(Δ[n²])])` -/
def P12581282254492939672.Spec : Prop :=
  ∀ n, P12581282254492939672.a n = A087123 n

end A087123

/-! ## A087123.P18265296588420927069

`A000045(or(1, abs(xor(1, -n))))`
-/

namespace A087123.P18265296588420927069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor 1 |Int.xor 1 (-(n : ℤ))|).toNat

end

end A087123.P18265296588420927069

namespace A087123

/-- `A000045(or(1, abs(xor(1, -n))))` -/
def P18265296588420927069.Spec : Prop :=
  ∀ n, P18265296588420927069.a n = A087123 n

end A087123

/-! ## A087123.P6842588409137493184

`A000045(abs(Δ[lcm(2, n)]-3))`
-/

namespace A087123.P6842588409137493184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - 3|.toNat

end

end A087123.P6842588409137493184

namespace A087123

/-- `A000045(abs(Δ[lcm(2, n)]-3))` -/
def P6842588409137493184.Spec : Prop :=
  ∀ n, P6842588409137493184.a n = A087123 n

end A087123

/-! ## A087123.P14706568481294485603

`A000045(abs(Δ[n*gcd(2, n)]))`
-/

namespace A087123.P14706568481294485603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|.toNat

end

end A087123.P14706568481294485603

namespace A087123

/-- `A000045(abs(Δ[n*gcd(2, n)]))` -/
def P14706568481294485603.Spec : Prop :=
  ∀ n, P14706568481294485603.a n = A087123 n

end A087123

/-! ## A087123.P9101334780787713337

`abs(Δ[(1-and(2, n))*A000045(n)])`
-/

namespace A087123.P9101334780787713337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087123.P9101334780787713337

namespace A087123

/-- `abs(Δ[(1-and(2, n))*A000045(n)])` -/
def P9101334780787713337.Spec : Prop :=
  ∀ n, P9101334780787713337.a n = A087123 n

end A087123

/-! ## A087123.P10446648100847090390

`A000045(n+3-a(and(1, n+1))²)` with `a(0)=1`
-/

namespace A087123.P10446648100847090390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 ((n + 3 : ℤ) - a (Nat.land 1 (n + 1)) ^ 2).toNat

end

end A087123.P10446648100847090390

namespace A087123

/-- `A000045(n+3-a(and(1, n+1))²)` -/
def P10446648100847090390.Spec : Prop :=
  ∀ n, P10446648100847090390.a n = A087123 n

end A087123

/-! ## A087123.P1330314039640547375

`A000045(Δ[n+2-a(n-1)]+n)` with `a(0)=0, a(1)=1`
-/

namespace A087123.P1330314039640547375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n + 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A087123.P1330314039640547375

namespace A087123

/-- `A000045(Δ[n+2-a(n-1)]+n)` -/
def P1330314039640547375.Spec : Prop :=
  ∀ n, P1330314039640547375.a n = A087123 n

end A087123

/-! ## A087123.P10010497931700611857

`A001519(A030451(n))`
-/

namespace A087123.P10010497931700611857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A030451 n).toNat

end

end A087123.P10010497931700611857

namespace A087123

/-- `A001519(A030451(n))` -/
def P10010497931700611857.Spec : Prop :=
  ∀ n, P10010497931700611857.a n = A087123 n

end A087123

/-! ## A087123.P2167770124366456561

`A094967(A014681(n))`
-/

namespace A087123.P2167770124366456561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (A014681 n).toNat

end

end A087123.P2167770124366456561

namespace A087123

/-- `A094967(A014681(n))` -/
def P2167770124366456561.Spec : Prop :=
  ∀ n, P2167770124366456561.a n = A087123 n

end A087123

/-! ## A087123.P2980874531089389596

`A001519(A028242(n+1))`
-/

namespace A087123.P2980874531089389596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A028242 (n + 1)).toNat

end

end A087123.P2980874531089389596

namespace A087123

/-- `A001519(A028242(n+1))` -/
def P2980874531089389596.Spec : Prop :=
  ∀ n, P2980874531089389596.a n = A087123 n

end A087123

/-! ## A087123.P4704802602831424655

`A094967(A115659(n+1))`
-/

namespace A087123.P4704802602831424655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (A115659 (n + 1)).toNat

end

end A087123.P4704802602831424655

namespace A087123

/-- `A094967(A115659(n+1))` -/
def P4704802602831424655.Spec : Prop :=
  ∀ n, P4704802602831424655.a n = A087123 n

end A087123

/-! ## A087123.P13710841141441955750

`A098054(A142954(n+1))`
-/

namespace A087123.P13710841141441955750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 (A142954 (n + 1)).toNat

end

end A087123.P13710841141441955750

namespace A087123

/-- `A098054(A142954(n+1))` -/
def P13710841141441955750.Spec : Prop :=
  ∀ n, P13710841141441955750.a n = A087123 n

end A087123

/-! ## A087123.P1319336802222694625

`A212804(A168232(n+2))`
-/

namespace A087123.P1319336802222694625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A168232 (n + 2)).toNat

end

end A087123.P1319336802222694625

namespace A087123

/-- `A212804(A168232(n+2))` -/
def P1319336802222694625.Spec : Prop :=
  ∀ n, P1319336802222694625.a n = A087123 n

end A087123

/-!
# A087124: a(n) = Fibonacci(n) + Fibonacci(2n+1).

The programs for A087124, the canonical program `A087124.P3836910195827955306` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087124 has offset 0).

The definition of A087124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087124.P6622810928949503135

`A192464(n+1)-1`
-/

namespace A087124.P6622810928949503135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192464 (n + 1) - 1

end

end A087124.P6622810928949503135

namespace A087124

/-- `A192464(n+1)-1` -/
def P6622810928949503135.Spec : Prop :=
  ∀ n, P6622810928949503135.a n = A087124 n

end A087124

/-! ## A087124.P3836910195827955306

`A027941(n)+A001611(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087124

/-- `A027941(n)+A001611(n)` -/
def P3836910195827955306.Spec : Prop :=
  ∀ n, P3836910195827955306.a n = A087124 n

theorem P3836910195827955306.correct : P3836910195827955306.Spec := by
  intro n
  simp only [A087124]

end A087124

/-! ## A087124.P8082258334730036267

`A081714(n)+A008346(n)`
-/

namespace A087124.P8082258334730036267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 n + A008346 n

end

end A087124.P8082258334730036267

namespace A087124

/-- `A081714(n)+A008346(n)` -/
def P8082258334730036267.Spec : Prop :=
  ∀ n, P8082258334730036267.a n = A087124 n

end A087124

/-! ## A087124.P3157945099976173089

`A122367(n)+A000045(n)`
-/

namespace A087124.P3157945099976173089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A000045 n

end

end A087124.P3157945099976173089

namespace A087124

/-- `A122367(n)+A000045(n)` -/
def P3157945099976173089.Spec : Prop :=
  ∀ n, P3157945099976173089.a n = A087124 n

end A087124

/-! ## A087124.P7828233056037344359

`A000045(n)+Δ[A001906(n)]`
-/

namespace A087124.P7828233056037344359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A087124.P7828233056037344359

namespace A087124

/-- `A000045(n)+Δ[A001906(n)]` -/
def P7828233056037344359.Spec : Prop :=
  ∀ n, P7828233056037344359.a n = A087124 n

end A087124

/-! ## A087124.P10954467782551503322

`A001519(n+1)+A000045(n)`
-/

namespace A087124.P10954467782551503322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + A000045 n

end

end A087124.P10954467782551503322

namespace A087124

/-- `A001519(n+1)+A000045(n)` -/
def P10954467782551503322.Spec : Prop :=
  ∀ n, P10954467782551503322.a n = A087124 n

end A087124

/-! ## A087124.P8643822861380384285

`A000045(n)+A027941(n)+1`
-/

namespace A087124.P8643822861380384285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A027941 n + 1)

end

end A087124.P8643822861380384285

namespace A087124

/-- `A000045(n)+A027941(n)+1` -/
def P8643822861380384285.Spec : Prop :=
  ∀ n, P8643822861380384285.a n = A087124 n

end A087124

/-! ## A087124.P293171222493639505

`A059727(n)+A007598(n+1)`
-/

namespace A087124.P293171222493639505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059727 n + A007598 (n + 1)

end

end A087124.P293171222493639505

namespace A087124

/-- `A059727(n)+A007598(n+1)` -/
def P293171222493639505.Spec : Prop :=
  ∀ n, P293171222493639505.a n = A087124 n

end A087124

/-! ## A087124.P7803429411620865281

`A059512(n)+A051450(n+1)`
-/

namespace A087124.P7803429411620865281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 n + A051450 (n + 1)

end

end A087124.P7803429411620865281

namespace A087124

/-- `A059512(n)+A051450(n+1)` -/
def P7803429411620865281.Spec : Prop :=
  ∀ n, P7803429411620865281.a n = A087124 n

end A087124

/-! ## A087124.P3745007226293053676

`A192243(n+1)+A109522(n)`
-/

namespace A087124.P3745007226293053676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192243 (n + 1) + A109522 n

end

end A087124.P3745007226293053676

namespace A087124

/-- `A192243(n+1)+A109522(n)` -/
def P3745007226293053676.Spec : Prop :=
  ∀ n, P3745007226293053676.a n = A087124 n

end A087124

/-! ## A087124.P10598273434121042743

`A229912(n)+A226205(n+1)`
-/

namespace A087124.P10598273434121042743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n + A226205 (n + 1)

end

end A087124.P10598273434121042743

namespace A087124

/-- `A229912(n)+A226205(n+1)` -/
def P10598273434121042743.Spec : Prop :=
  ∀ n, P10598273434121042743.a n = A087124 n

end A087124

/-! ## A087124.P481884352627254108

`A096140(n)+A000045(n+2)`
-/

namespace A087124.P481884352627254108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096140 n + A000045 (n + 2)

end

end A087124.P481884352627254108

namespace A087124

/-- `A096140(n)+A000045(n+2)` -/
def P481884352627254108.Spec : Prop :=
  ∀ n, P481884352627254108.a n = A087124 n

end A087124

/-! ## A087124.P3081746094191883894

`A001611(n)+A122367(n)-1`
-/

namespace A087124.P3081746094191883894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A122367 n - 1)

end

end A087124.P3081746094191883894

namespace A087124

/-- `A001611(n)+A122367(n)-1` -/
def P3081746094191883894.Spec : Prop :=
  ∀ n, P3081746094191883894.a n = A087124 n

end A087124

/-! ## A087124.P1168666016809783656

`A027941(n)+A157725(n)-1`
-/

namespace A087124.P1168666016809783656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n + (A157725 n - 1)

end

end A087124.P1168666016809783656

namespace A087124

/-- `A027941(n)+A157725(n)-1` -/
def P1168666016809783656.Spec : Prop :=
  ∀ n, P1168666016809783656.a n = A087124 n

end A087124

/-! ## A087124.P3089682852623105413

`A000045(n)+A246640(n)-1`
-/

namespace A087124.P3089682852623105413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A246640 n - 1)

end

end A087124.P3089682852623105413

namespace A087124

/-- `A000045(n)+A246640(n)-1` -/
def P3089682852623105413.Spec : Prop :=
  ∀ n, P3089682852623105413.a n = A087124 n

end A087124

/-! ## A087124.P6156932943490793111

`A192471(n+1)-A055588(n)`
-/

namespace A087124.P6156932943490793111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192471 (n + 1) - A055588 n

end

end A087124.P6156932943490793111

namespace A087124

/-- `A192471(n+1)-A055588(n)` -/
def P6156932943490793111.Spec : Prop :=
  ∀ n, P6156932943490793111.a n = A087124 n

end A087124

/-! ## A087124.P17519024287190924062

`A229912(n)-A121646(n+1)`
-/

namespace A087124.P17519024287190924062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n - A121646 (n + 1)

end

end A087124.P17519024287190924062

namespace A087124

/-- `A229912(n)-A121646(n+1)` -/
def P17519024287190924062.Spec : Prop :=
  ∀ n, P17519024287190924062.a n = A087124 n

end A087124

/-! ## A087124.P11188977927985621637

`A094967(2*n)+A000045(n)`
-/

namespace A087124.P11188977927985621637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (2 * n) + A000045 n

end

end A087124.P11188977927985621637

namespace A087124

/-- `A094967(2*n)+A000045(n)` -/
def P11188977927985621637.Spec : Prop :=
  ∀ n, P11188977927985621637.a n = A087124 n

end A087124

/-! ## A087124.P2969390625801026575

`A097131(2*n)+A000045(n)`
-/

namespace A087124.P2969390625801026575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 (2 * n) + A000045 n

end

end A087124.P2969390625801026575

namespace A087124

/-- `A097131(2*n)+A000045(n)` -/
def P2969390625801026575.Spec : Prop :=
  ∀ n, P2969390625801026575.a n = A087124 n

end A087124

/-!
# A087125: Indices k of hex numbers H(k) that are also triangular.

The programs for A087125, the canonical program `A087125.P11782252485001232573` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087125 has offset 0).

The definition of A087125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087125.P11782252485001232573

`10*a(n-1)-a(n-2)+4` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087125

/-- `10*a(n-1)-a(n-2)+4` -/
def P11782252485001232573.Spec : Prop :=
  ∀ n, P11782252485001232573.a n = A087125 n

theorem P11782252485001232573.correct : P11782252485001232573.Spec := by
  intro n
  simp only [A087125]

end A087125

/-!
# A087126: Primes of the form p^k - p^(k-1) + 1 for some prime p and integer k > 1.

The programs for A087126, there is no canonical definition to state claims against.
-/

/-! ## A087126.P7227144263883758081

`A114874(n+1)+1`
-/

namespace A087126.P7227144263883758081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114874 (n + 1) + 1

end

end A087126.P7227144263883758081

/-! ## A087126.P9253502176900676380

`or(1, A114874(ϕ²-(ϕ-n)))`
-/

namespace A087126.P9253502176900676380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A114874 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A087126.P9253502176900676380

/-! ## A087126.P16587644903225224582

`1-(A052928(n)%2-A114874(ϕ²-(ϕ-n)))`
-/

namespace A087126.P16587644903225224582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.tmod (A052928 n) 2 - A114874 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A087126.P16587644903225224582

/-! ## A087126.P458187352250232377

`xor(A014963(A008458(n)), A114874(ϕ²-(ϕ-n)))`
-/

namespace A087126.P458187352250232377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A008458 n).toNat) (A114874 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A087126.P458187352250232377

/-! ## A087126.P2422415912542567564

`xor(A014963(A146081(n)), A114874(ϕ²-(ϕ-n)))`
-/

namespace A087126.P2422415912542567564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A146081 n).toNat) (A114874 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A087126.P2422415912542567564

/-!
# A087127: This table shows the coefficients of combinatorial formulas needed for generating the sequential sums of p-th powers of triangular numbers. The p-th row (p>=1) contains a(i,p) for i=1 to 2*p-1, where a(i,p) satisfies Sum_{i=1..n} C(i+1,2)^p = 3 * C(n+2,3) * Sum_{i=1..2*p-1} a(i,p) * C(n-1,i-1)/(i+2).

The programs for A087127, there is no canonical definition to state claims against.
-/

/-! ## A087127.P2029434023534694958

`A122193(n+1)/A000217(A071797(n+1))`
-/

namespace A087127.P2029434023534694958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122193 (n + 1) : ℚ) / (A000217 (A071797 (n + 1)).toNat : ℚ)

end

end A087127.P2029434023534694958

/-!
# A087128: a(1)=1 and, for n>1, a(n) is the smallest positive integer such that 1+Sum_{k=a(n-1)+1..a(n)} k is prime.

The programs for A087128, there is no canonical definition to state claims against.
-/

/-! ## A087128.P987359735740109244

`∑[A087129(floor(acot(n)+n))]`
-/

namespace A087128.P987359735740109244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087129 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087128.P987359735740109244

/-! ## A087128.P8546322572463843472

`A393398(n+1)-(n+1)`
-/

namespace A087128.P8546322572463843472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393398 (n + 1) - (n + 1 : ℤ)

end

end A087128.P8546322572463843472

/-! ## A087128.P1829185107320469156

`A087129(n)+a(n-1)` with `a(0)=1`
-/

namespace A087128.P1829185107320469156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087129 n + a (n - 1)

end

end A087128.P1829185107320469156

/-! ## A087128.P14696372072735652534

`∑[A087129(floor(sqrt(n²+1)))]`
-/

namespace A087128.P14696372072735652534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087129 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087128.P14696372072735652534

/-! ## A087128.P1681949388412571418

`∑[A087129(n+1)]+1-A087129(n+1)`
-/

namespace A087128.P1681949388412571418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A087129 (n + 1))

end

end A087128.P1681949388412571418

/-! ## A087128.P229097627418551640

`A020725(∑[A087129(n+1)])-A087129(n+1)`
-/

namespace A087128.P229097627418551640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A087129 (n + 1)

end

end A087128.P229097627418551640

/-!
# A087129: First differences of A087128.

The programs for A087129, there is no canonical definition to state claims against.
-/

/-! ## A087129.P16317161468291771962

`A087128(n+2)-A087128(n+1)`
-/

namespace A087129.P16317161468291771962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087128 (n + 2) - A087128 (n + 1)

end

end A087129.P16317161468291771962

/-! ## A087129.P8537149720701749103

`Δ[A087128(n+1)]`
-/

namespace A087129.P8537149720701749103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087129.P8537149720701749103

/-! ## A087129.P13816819690770856047

`Δ[A393398(n+1)]-1`
-/

namespace A087129.P13816819690770856047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A087129.P13816819690770856047

/-! ## A087129.P8345005039436559726

`abs(Δ[A087128(-xor(n, -1))])`
-/

namespace A087129.P8345005039436559726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087128 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087129.P8345005039436559726

/-! ## A087129.P14041034339054287777

`Δ[record[A087128(A324347(n))]]`
-/

namespace A087129.P14041034339054287777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087128 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087129.P14041034339054287777

/-! ## A087129.P14344070757748272946

`A000027(Δ[A087128(-xor(n, -1))])`
-/

namespace A087129.P14344070757748272946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087128 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A087129.P14344070757748272946

/-! ## A087129.P17162404872729221287

`Δ[record[A087128(A137734(n))]]`
-/

namespace A087129.P17162404872729221287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087128 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087129.P17162404872729221287

/-!
# A087130: a(n) = 5*a(n-1)+a(n-2) for n>1, a(0)=2, a(1)=5.

The programs for A087130, the canonical program `A087130.P12768524989575923156` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087130 has offset 0).

The definition of A087130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+a(n-2)` (program `A087130.P12768524989575923156`, by `A087130.P12768524989575923156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087130.P12768524989575923156

`5*a(n-1)+a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087130

/-- `5*a(n-1)+a(n-2)` -/
def P12768524989575923156.Spec : Prop :=
  ∀ n, (P12768524989575923156.a n : ℤ) = A087130 n

theorem P12768524989575923156.correct : P12768524989575923156.Spec := by
  intro n
  simp only [A087130]

end A087130

/-! ## A087130.P2866695395674247431

`A100236(n)+1`
-/

namespace A087130.P2866695395674247431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100236 n + 1

end

end A087130.P2866695395674247431

namespace A087130

/-- `A100236(n)+1` -/
def P2866695395674247431.Spec : Prop :=
  ∀ n, P2866695395674247431.a n = A087130 n

end A087130

/-! ## A087130.P1269747284725572295

`((5+sqrt(29))/2)^n+((5-sqrt(29))/2)^n`
-/

namespace A087130.P1269747284725572295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (29 : ℝ)) / 2) ^ n + ((5 - Real.sqrt (29 : ℝ)) / 2) ^ n

end

end A087130.P1269747284725572295

namespace A087130

/-- `((5+sqrt(29))/2)^n+((5-sqrt(29))/2)^n` -/
def P1269747284725572295.Spec : Prop :=
  ∀ n, P1269747284725572295.a n = (A087130 n : ℝ)

end A087130

/-! ## A087130.P5650748296946502292

`floor(sqrt(A051930(2*n)))`
-/

namespace A087130.P5650748296946502292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A051930 (2 * n))

end

end A087130.P5650748296946502292

namespace A087130

/-- `floor(sqrt(A051930(2*n)))` -/
def P5650748296946502292.Spec : Prop :=
  ∀ n, P5650748296946502292.a n = A087130 n

end A087130

/-!
# A087131: a(n) = 2^n*Lucas(n), where Lucas = A000032.

The programs for A087131, the canonical program `A087131.P16200273629051610106` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087131 has offset 0).

The definition of A087131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087131.P16200273629051610106

`2*a(n-1)+4*a(n-2)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087131

/-- `2*a(n-1)+4*a(n-2)` -/
def P16200273629051610106.Spec : Prop :=
  ∀ n, (P16200273629051610106.a n : ℤ) = A087131 n

theorem P16200273629051610106.correct : P16200273629051610106.Spec := by
  intro n
  simp only [A087131]

end A087131

/-! ## A087131.P16951205876289315067

`2*A084057(n)`
-/

namespace A087131.P16951205876289315067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084057 n

end

end A087131.P16951205876289315067

namespace A087131

/-- `2*A084057(n)` -/
def P16951205876289315067.Spec : Prop :=
  ∀ n, P16951205876289315067.a n = A087131 n

end A087131

/-! ## A087131.P17597092214740153829

`5*A014334(n)+2`
-/

namespace A087131.P17597092214740153829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A014334 n + 2

end

end A087131.P17597092214740153829

namespace A087131

/-- `5*A014334(n)+2` -/
def P17597092214740153829.Spec : Prop :=
  ∀ n, P17597092214740153829.a n = A087131 n

end A087131

/-! ## A087131.P8948709621091610240

`10*A014335(n)+2`
-/

namespace A087131.P8948709621091610240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A014335 n + 2

end

end A087131.P8948709621091610240

namespace A087131

/-- `10*A014335(n)+2` -/
def P8948709621091610240.Spec : Prop :=
  ∀ n, P8948709621091610240.a n = A087131 n

end A087131

/-! ## A087131.P8835097472041901952

`(5*A052899(n)-1)/2`
-/

namespace A087131.P8835097472041901952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A052899 n - 1 : ℚ) / 2

end

end A087131.P8835097472041901952

namespace A087131

/-- `(5*A052899(n)-1)/2` -/
def P8835097472041901952.Spec : Prop :=
  ∀ n, P8835097472041901952.a n = (A087131 n : ℚ)

end A087131

/-! ## A087131.P13322538113376249907

`(1+sqrt(5))^n+(1-sqrt(5))^n`
-/

namespace A087131.P13322538113376249907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + Real.sqrt (5 : ℝ)) ^ n + (1 - Real.sqrt (5 : ℝ)) ^ n

end

end A087131.P13322538113376249907

namespace A087131

/-- `(1+sqrt(5))^n+(1-sqrt(5))^n` -/
def P13322538113376249907.Spec : Prop :=
  ∀ n, P13322538113376249907.a n = (A087131 n : ℝ)

end A087131

/-! ## A087131.P2179595170176535292

`2*(3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=2, a(1)=2`
-/

namespace A087131.P2179595170176535292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (3 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A087131.P2179595170176535292

namespace A087131

/-- `2*(3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P2179595170176535292.Spec : Prop :=
  ∀ n, P2179595170176535292.a n = A087131 n

end A087131

/-! ## A087131.P1246266575354511617

`2*Δ[A085449(n)]`
-/

namespace A087131.P1246266575354511617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A087131.P1246266575354511617

namespace A087131

/-- `2*Δ[A085449(n)]` -/
def P1246266575354511617.Spec : Prop :=
  ∀ n, P1246266575354511617.a n = A087131 n

end A087131

/-! ## A087131.P4443933914494841527

`2*(A203579(n)-1)`
-/

namespace A087131.P4443933914494841527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A203579 n - 1)

end

end A087131.P4443933914494841527

namespace A087131

/-- `2*(A203579(n)-1)` -/
def P4443933914494841527.Spec : Prop :=
  ∀ n, P4443933914494841527.a n = A087131 n

end A087131

/-! ## A087131.P12842770828918022610

`2^n*A000032(n)`
-/

namespace A087131.P12842770828918022610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000032 n

end

end A087131.P12842770828918022610

namespace A087131

/-- `2^n*A000032(n)` -/
def P12842770828918022610.Spec : Prop :=
  ∀ n, P12842770828918022610.a n = A087131 n

end A087131

/-! ## A087131.P16730390537801816834

`Δ[A000032(n+1)]/2^-n`
-/

namespace A087131.P16730390537801816834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A087131.P16730390537801816834

namespace A087131

/-- `Δ[A000032(n+1)]/2^-n` -/
def P16730390537801816834.Spec : Prop :=
  ∀ n, P16730390537801816834.a n = (A087131 n : ℚ)

end A087131

/-! ## A087131.P12820356577942201163

`A000032(n)*A000079(n)`
-/

namespace A087131.P12820356577942201163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000079 n

end

end A087131.P12820356577942201163

namespace A087131

/-- `A000032(n)*A000079(n)` -/
def P12820356577942201163.Spec : Prop :=
  ∀ n, P12820356577942201163.a n = A087131 n

end A087131

/-! ## A087131.P15135167832166471048

`A000032(n)*∑[A011782(n)]`
-/

namespace A087131.P15135167832166471048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087131.P15135167832166471048

namespace A087131

/-- `A000032(n)*∑[A011782(n)]` -/
def P15135167832166471048.Spec : Prop :=
  ∀ n, P15135167832166471048.a n = A087131 n

end A087131

/-! ## A087131.P15821546318132958538

`A000032(n)*Δ[A000051(n)]`
-/

namespace A087131.P15821546318132958538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (f1 (n + 1) - f1 n)

end

end A087131.P15821546318132958538

namespace A087131

/-- `A000032(n)*Δ[A000051(n)]` -/
def P15821546318132958538.Spec : Prop :=
  ∀ n, P15821546318132958538.a n = A087131 n

end A087131

/-! ## A087131.P9847586900233297429

`A000032(n)*Δ[A000225(n)]`
-/

namespace A087131.P9847586900233297429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (f1 (n + 1) - f1 n)

end

end A087131.P9847586900233297429

namespace A087131

/-- `A000032(n)*Δ[A000225(n)]` -/
def P9847586900233297429.Spec : Prop :=
  ∀ n, P9847586900233297429.a n = A087131 n

end A087131

/-! ## A087131.P8993307262593926148

`A000032(n)*Δ[A168616(n)]`
-/

namespace A087131.P8993307262593926148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (f1 (n + 1) - f1 n)

end

end A087131.P8993307262593926148

namespace A087131

/-- `A000032(n)*Δ[A168616(n)]` -/
def P8993307262593926148.Spec : Prop :=
  ∀ n, P8993307262593926148.a n = A087131 n

end A087131

/-! ## A087131.P2969643773581418039

`A000032(n)*A011782(n+1)`
-/

namespace A087131.P2969643773581418039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A011782 (n + 1)

end

end A087131.P2969643773581418039

namespace A087131

/-- `A000032(n)*A011782(n+1)` -/
def P2969643773581418039.Spec : Prop :=
  ∀ n, P2969643773581418039.a n = A087131 n

end A087131

/-! ## A087131.P5469364681355785735

`A000032(n)*A131577(n+1)`
-/

namespace A087131.P5469364681355785735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A131577 (n + 1)

end

end A087131.P5469364681355785735

namespace A087131

/-- `A000032(n)*A131577(n+1)` -/
def P5469364681355785735.Spec : Prop :=
  ∀ n, P5469364681355785735.a n = A087131 n

end A087131

/-! ## A087131.P17895877515390710942

`A000032(n)*A034008(n+2)`
-/

namespace A087131.P17895877515390710942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A034008 (n + 2)

end

end A087131.P17895877515390710942

namespace A087131

/-- `A000032(n)*A034008(n+2)` -/
def P17895877515390710942.Spec : Prop :=
  ∀ n, P17895877515390710942.a n = A087131 n

end A087131

/-!
# A087132: a(n) is the sum of the squares of the sizes of the conjugacy classes in the symmetric group S_n.

The programs for A087132, there is no canonical definition to state claims against.
-/

/-! ## A087132.P11443394122767779970

`A117451(A336712(n))+1`
-/

namespace A087132.P11443394122767779970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117451 (A336712 n).toNat + 1

end

end A087132.P11443394122767779970

/-! ## A087132.P9354457165266892676

`round(A118950(A000798(n))/3)`
-/

namespace A087132.P9354457165266892676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A118950 (A000798 n).toNat : ℚ) / 3)

end

end A087132.P9354457165266892676

/-!
# A087133: Number of divisors of n that are not greater than the greatest prime-factor of n; a(1)=1.

The programs for A087133, the canonical program `A087133.P14198249283811427652` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087133 has offset 1).

The definition of A087133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087133.P14198249283811427652

`A243987(A006530(n+1)+∑[n])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A087133

/-- `A243987(A006530(n+1)+∑[n])` -/
def P14198249283811427652.Spec : Prop :=
  ∀ n, P14198249283811427652.a n = A087133 (n + 1)

theorem P14198249283811427652.correct : P14198249283811427652.Spec := by
  intro n
  simp only [A087133, Nat.add_sub_cancel]

end A087133

/-! ## A087133.P5227262740138390707

`A243987(A111089(n+1)+A000217(n))`
-/

namespace A087133.P5227262740138390707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A111089 (n + 1) + A000217 n).toNat

end

end A087133.P5227262740138390707

namespace A087133

/-- `A243987(A111089(n+1)+A000217(n))` -/
def P5227262740138390707.Spec : Prop :=
  ∀ n, P5227262740138390707.a n = A087133 (n + 1)

end A087133

/-! ## A087133.P1227139690171266912

`A135539(A052126(n+1)+A000217(n))`
-/

namespace A087133.P1227139690171266912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (A052126 (n + 1) + A000217 n).toNat

end

end A087133.P1227139690171266912

namespace A087133

/-- `A135539(A052126(n+1)+A000217(n))` -/
def P1227139690171266912.Spec : Prop :=
  ∀ n, P1227139690171266912.a n = A087133 (n + 1)

end A087133

/-! ## A087133.P7797488943115637738

`lcm(A286299(n), A384231(n+1))`
-/

namespace A087133.P7797488943115637738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286299 n) (A384231 (n + 1))

end

end A087133.P7797488943115637738

namespace A087133

/-- `lcm(A286299(n), A384231(n+1))` -/
def P7797488943115637738.Spec : Prop :=
  ∀ n, (P7797488943115637738.a n : ℤ) = A087133 (n + 1)

end A087133

/-! ## A087133.P6578882709570960098

`A337322(n+1)+A233672(∑{p}[n+1, gcd(n, #)])`
-/

namespace A087133.P6578882709570960098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (n + 1) + A233672 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A087133.P6578882709570960098

namespace A087133

/-- `A337322(n+1)+A233672(∑{p}[n+1, gcd(n, #)])` -/
def P6578882709570960098.Spec : Prop :=
  ∀ n, P6578882709570960098.a n = A087133 (n + 1)

end A087133

/-! ## A087133.P11903498308638338703

`A337322(n+1)+A233672(∑{e}[∏{p}[n+1, #], #])`
-/

namespace A087133.P11903498308638338703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (n + 1) + A233672 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A087133.P11903498308638338703

namespace A087133

/-- `A337322(n+1)+A233672(∑{e}[∏{p}[n+1, #], #])` -/
def P11903498308638338703.Spec : Prop :=
  ∀ n, P11903498308638338703.a n = A087133 (n + 1)

end A087133

/-! ## A087133.P17806027076680779311

`A337322(n+1)-A292138(A034444(n+1))`
-/

namespace A087133.P17806027076680779311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (n + 1) - A292138 (A034444 (n + 1)).toNat

end

end A087133.P17806027076680779311

namespace A087133

/-- `A337322(n+1)-A292138(A034444(n+1))` -/
def P17806027076680779311.Spec : Prop :=
  ∀ n, P17806027076680779311.a n = A087133 (n + 1)

end A087133

/-! ## A087133.P1076079771726818243

`A293428(A337322(n+1)+n*A000007(n))`
-/

namespace A087133.P1076079771726818243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293428 (A337322 (n + 1) + (n : ℤ) * A000007 n).toNat

end

end A087133.P1076079771726818243

namespace A087133

/-- `A293428(A337322(n+1)+n*A000007(n))` -/
def P1076079771726818243.Spec : Prop :=
  ∀ n, P1076079771726818243.a n = A087133 (n + 1)

end A087133

/-! ## A087133.P8825621697389107131

`A337322(n+1)+A233672(∑{p}[n+1, A001222(#)])`
-/

namespace A087133.P8825621697389107131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (n + 1) + A233672 (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat

end

end A087133.P8825621697389107131

namespace A087133

/-- `A337322(n+1)+A233672(∑{p}[n+1, A001222(#)])` -/
def P8825621697389107131.Spec : Prop :=
  ∀ n, P8825621697389107131.a n = A087133 (n + 1)

end A087133

/-! ## A087133.P6103274097324484586

`A337322(n+1)+A233672(A001222(∏{p}[n+1, #]))`
-/

namespace A087133.P6103274097324484586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (n + 1) + A233672 (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A087133.P6103274097324484586

namespace A087133

/-- `A337322(n+1)+A233672(A001222(∏{p}[n+1, #]))` -/
def P6103274097324484586.Spec : Prop :=
  ∀ n, P6103274097324484586.a n = A087133 (n + 1)

end A087133

/-!
# A087134: Smallest number having exactly n divisors that are not greater than the number's greatest prime factor.

The programs for A087134, there is no canonical definition to state claims against.
-/

/-! ## A087134.P16519495509472918524

`A384232(n+1)-char[1]`
-/

namespace A087134.P16519495509472918524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384232 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A087134.P16519495509472918524

/-! ## A087134.P18070790583494849803

`and(A096045(n), A384232(n+1))`
-/

namespace A087134.P18070790583494849803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096045 n) (A384232 (n + 1))

end

end A087134.P18070790583494849803

/-! ## A087134.P3934470044552222732

`and(A134067(n), A384232(n+1))`
-/

namespace A087134.P3934470044552222732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134067 n) (A384232 (n + 1))

end

end A087134.P3934470044552222732

/-! ## A087134.P7366726407043523484

`and(A267596(n), A384232(n+1))`
-/

namespace A087134.P7366726407043523484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267596 n) (A384232 (n + 1))

end

end A087134.P7366726407043523484

/-! ## A087134.P10066733836349268424

`and(A267851(n), A384232(n+1))`
-/

namespace A087134.P10066733836349268424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267851 n) (A384232 (n + 1))

end

end A087134.P10066733836349268424

/-!
# A087135: Number of positive numbers m such that A073642(m) = n.

The programs for A087135, there is no canonical definition to state claims against.
-/

/-! ## A087135.P14246137058242156311

`A111133(n)+A052839(n)`
-/

namespace A087135.P14246137058242156311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + A052839 n

end

end A087135.P14246137058242156311

/-! ## A087135.P4788481996109529866

`A333147(n)+A057427(n)`
-/

namespace A087135.P4788481996109529866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n + A057427 n

end

end A087135.P4788481996109529866

/-! ## A087135.P515327484012098790

`A333147(n)-A057428(n)`
-/

namespace A087135.P515327484012098790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n - A057428 n

end

end A087135.P515327484012098790

/-! ## A087135.P16442357684433225555

`A081360(n)*A280560(n)`
-/

namespace A087135.P16442357684433225555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n * A280560 n

end

end A087135.P16442357684433225555

/-! ## A087135.P8718535266782073992

`(A057427(n)+1)*A000009(n)`
-/

namespace A087135.P8718535266782073992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A000009 n

end

end A087135.P8718535266782073992

/-! ## A087135.P4426216845254865186

`(1-A057428(n))*A000009(n)`
-/

namespace A087135.P4426216845254865186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A000009 n

end

end A087135.P4426216845254865186

/-! ## A087135.P12085011095863577020

`(2-A000007(n))*A000009(n)`
-/

namespace A087135.P12085011095863577020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A000009 n

end

end A087135.P12085011095863577020

/-! ## A087135.P464515265669319147

`A000009(n)*A040001(2*n)`
-/

namespace A087135.P464515265669319147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A040001 (2 * n)

end

end A087135.P464515265669319147

/-! ## A087135.P4012442336796367351

`2*A000009(n)/A054977(n)`
-/

namespace A087135.P4012442336796367351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000009 n : ℚ) / (A054977 n : ℚ))

end

end A087135.P4012442336796367351

/-! ## A087135.P8045815935934833612

`A000009(n)*A069932(2*n+1)`
-/

namespace A087135.P8045815935934833612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A069932 (2 * n + 1)

end

end A087135.P8045815935934833612

/-! ## A087135.P14550095782641307738

`A333147(n)+and(1, A000040(n+1))`
-/

namespace A087135.P14550095782641307738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n + Int.land 1 (A000040 (n + 1))

end

end A087135.P14550095782641307738

/-! ## A087135.P14366325843593242027

`A000032(C(2, n+2))*A000009(n)`
-/

namespace A087135.P14366325843593242027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A000009 n

end

end A087135.P14366325843593242027

/-! ## A087135.P6587725800099848955

`A333147(n)+∑{e}[A006530(n+1), #]`
-/

namespace A087135.P6587725800099848955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A087135.P6587725800099848955

/-! ## A087135.P16309423368641034624

`A000009(n)*A020639(A004277(n))`
-/

namespace A087135.P16309423368641034624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A020639 (A004277 n).toNat

end

end A087135.P16309423368641034624

/-! ## A087135.P7298316306396575958

`A000009(n)*A020639(A008458(n))`
-/

namespace A087135.P7298316306396575958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A020639 (A008458 n).toNat

end

end A087135.P7298316306396575958

/-! ## A087135.P14236351104118583048

`A000009(n)*A020639(A008574(n))`
-/

namespace A087135.P14236351104118583048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A020639 (A008574 n).toNat

end

end A087135.P14236351104118583048

/-! ## A087135.P15290151258682987475

`A020639(A000010(n+2))*A000009(n)`
-/

namespace A087135.P15290151258682987475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A000009 n

end

end A087135.P15290151258682987475

/-!
# A087136: Smallest positive number m such that A073642(m)=n.

The programs for A087136, there is no canonical definition to state claims against.
-/

/-! ## A087136.P8090706811472029263

`or(a(n-1)+2, and(a(n-1)/2, a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A087136.P8090706811472029263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor (a (n - 1) + 2) (Int.land (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 2)) (a (n - 1)))

end

end A087136.P8090706811472029263

/-! ## A087136.P4715898317630917945

`record[abs(2-A193902(n))]`
-/

namespace A087136.P4715898317630917945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A193902 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087136.P4715898317630917945

/-! ## A087136.P51729622224791313

`floor(2/acot(A089633(n)))`
-/

namespace A087136.P51729622224791313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A089633 n : ℝ)⌋

end

end A087136.P51729622224791313

/-! ## A087136.P14342333359429101253

`ceil(abs(e-A043569(n+1)))`
-/

namespace A087136.P14342333359429101253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.exp 1 - (A043569 (n + 1) : ℝ)|⌉

end

end A087136.P14342333359429101253

/-! ## A087136.P10389607263105322164

`A381839(a(n-1)+2)` with `a(0)=1, a(1)=2`
-/

namespace A087136.P10389607263105322164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A381839 (a (n - 1) + 2).toNat

end

end A087136.P10389607263105322164

/-! ## A087136.P8598979145626494230

`A081118(n+1)-ceil(n/98)`
-/

namespace A087136.P8598979145626494230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - ⌈(n : ℚ) / 98⌉

end

end A087136.P8598979145626494230

/-! ## A087136.P15804054955965646311

`record[abs(A265716(n)-char[2*n])]`
-/

namespace A087136.P15804054955965646311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A265716 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087136.P15804054955965646311

/-! ## A087136.P2459814571378868469

`A004277(A089633(n))`
-/

namespace A087136.P2459814571378868469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A089633 n).toNat

end

end A087136.P2459814571378868469

/-! ## A087136.P2890247829116180448

`A065168(A043569(n+1))`
-/

namespace A087136.P2890247829116180448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065168 (A043569 (n + 1)).toNat

end

end A087136.P2890247829116180448

/-! ## A087136.P11284813056852222059

`A065168(A043765(n+1))`
-/

namespace A087136.P11284813056852222059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065168 (A043765 (n + 1)).toNat

end

end A087136.P11284813056852222059

/-!
# A087137: a(n) is the number of permutations in the symmetric group S_n that contain an odd cycle.

The programs for A087137, there is no canonical definition to state claims against.
-/

/-! ## A087137.P15385437916793979817

`n!-A123023(n)²`
-/

namespace A087137.P15385437916793979817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A123023 n ^ 2

end

end A087137.P15385437916793979817

/-! ## A087137.P9464043505013593503

`n!-A123022(n+3)²`
-/

namespace A087137.P9464043505013593503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A123022 (n + 3) ^ 2

end

end A087137.P9464043505013593503

/-! ## A087137.P2302219004641252105

`A000142(n)-A123023(n)²`
-/

namespace A087137.P2302219004641252105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A123023 n ^ 2

end

end A087137.P2302219004641252105

/-! ## A087137.P18012243192695271933

`n!-A060524(A000217(n))`
-/

namespace A087137.P18012243192695271933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A060524 (A000217 n).toNat

end

end A087137.P18012243192695271933

/-! ## A087137.P18272603863942262211

`A000142(n)-A177145(n+1)`
-/

namespace A087137.P18272603863942262211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A177145 (n + 1)

end

end A087137.P18272603863942262211

/-! ## A087137.P4261123590483333395

`∏[A028310(n)]-A123023(n)²`
-/

namespace A087137.P4261123590483333395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A123023 n ^ 2

end

end A087137.P4261123590483333395

/-! ## A087137.P8689691529837795365

`A000142(n)-A060524(A000217(n))`
-/

namespace A087137.P8689691529837795365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A060524 (A000217 n).toNat

end

end A087137.P8689691529837795365

/-! ## A087137.P1566311990027764905

`A000142(n)-A121408(A000124(n))`
-/

namespace A087137.P1566311990027764905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A121408 (A000124 n).toNat

end

end A087137.P1566311990027764905

/-!
# A087138: Expansion of (1-sqrt(1-4*log(1+x)))/2.

The programs for A087138, there is no canonical definition to state claims against.
-/

/-! ## A087138.P7302811413972178929

`A354240(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A087138.P7302811413972178929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A354240 n - (n : ℤ) * a (n - 1)

end

end A087138.P7302811413972178929

/-!
# A087139: Least k>1 such that p^k - p^(k-1) + 1 is prime for p = prime(n).

The programs for A087139, there is no canonical definition to state claims against.
-/

/-! ## A087139.P2114230933782723514

`A305531(p?[xor(1, n)+1])+1`
-/

namespace A087139.P2114230933782723514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305531 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A087139.P2114230933782723514

/-! ## A087139.P6032075633216752519

`A305531(Δ[A007504(n)])+1`
-/

namespace A087139.P6032075633216752519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305531 (f1 (n + 1) - f1 n).toNat + 1

end

end A087139.P6032075633216752519

/-! ## A087139.P4822798307234380129

`A305531(comp[A103164(n)])+1`
-/

namespace A087139.P4822798307234380129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305531 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A087139.P4822798307234380129

/-! ## A087139.P3540860822279394798

`A305531(A000040(n+1))+1`
-/

namespace A087139.P3540860822279394798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305531 (A000040 (n + 1)).toNat + 1

end

end A087139.P3540860822279394798

/-! ## A087139.P1473485145092355551

`A305531(A070159(n+1))+1`
-/

namespace A087139.P1473485145092355551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305531 (A070159 (n + 1)).toNat + 1

end

end A087139.P1473485145092355551

/-!
# A087140: Numbers that are not divisible by all their digits in decimal representation.

The programs for A087140, there is no canonical definition to state claims against.
-/

/-! ## A087140.P13923382932545010182

`comp[A034838(n+1)-1]+1`
-/

namespace A087140.P13923382932545010182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A087140.P13923382932545010182

/-! ## A087140.P13301392805005817582

`comp[A023443(A034838(n+1))]+1`
-/

namespace A087140.P13301392805005817582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034838 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A087140.P13301392805005817582

/-! ## A087140.P13218280772209227068

`comp[∪[A034838(n+1), A010785(n)]]`
-/

namespace A087140.P13218280772209227068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A087140.P13218280772209227068

/-! ## A087140.P13037989697744070688

`∪[A171492(n+1), A330562(n+1)]`
-/

namespace A087140.P13037989697744070688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087140.P13037989697744070688

/-! ## A087140.P17124759185621370234

`lt[A038769(A028310(n)), A055642(n)]`
-/

namespace A087140.P17124759185621370234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087140.P17124759185621370234

/-! ## A087140.P18119496766863219533

`eq[A108069(n²+n), A131364(n)]`
-/

namespace A087140.P18119496766863219533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108069 (n ^ 2 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087140.P18119496766863219533

/-! ## A087140.P4153649065685684111

`eq[A131364(n), A175372(A081348(n))]`
-/

namespace A087140.P4153649065685684111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131364 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 (A081348 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087140.P4153649065685684111

/-! ## A087140.P504167059090294152

`eq[A048298(A067666(n+1)), A131364(n)]`
-/

namespace A087140.P504167059090294152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A067666 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087140.P504167059090294152

/-! ## A087140.P52453181255199171

`A131365(A293754(n+1))`
-/

namespace A087140.P52453181255199171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131365 (A293754 (n + 1)).toNat

end

end A087140.P52453181255199171

/-!
# A087141: Numbers divisible by the sum of their digits, but not by all their individual digits.

The programs for A087141, there is no canonical definition to state claims against.
-/

/-! ## A087141.P8971072985283181348

`∩[A005349(n+1), A087140(n+1)]`
-/

namespace A087141.P8971072985283181348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087141.P8971072985283181348

/-! ## A087141.P8264233347080908332

`∩[A087140(n+1), A113315(n+1)*A325454(n+1)]`
-/

namespace A087141.P8264233347080908332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087141.P8264233347080908332

/-! ## A087141.P16577492121830538697

`filter[A087140(n+1), A188641(#)]`
-/

namespace A087141.P16577492121830538697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A087141.P16577492121830538697

/-! ## A087141.P13593823509719442421

`∩[A087140(n+1), A247626(n+1)]`
-/

namespace A087141.P13593823509719442421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087141.P13593823509719442421

/-! ## A087141.P11045421774128335799

`∩[A087140(n+1), A247627(n+1)]`
-/

namespace A087141.P11045421774128335799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087141.P11045421774128335799

/-!
# A087142: Numbers divisible by their individual digits, but not by the sum of their digits (counted with multiplicity).

The programs for A087142, there is no canonical definition to state claims against.
-/

/-! ## A087142.P12766677403050414362

`∩[A034838(n+1), A065877(n+1)]`
-/

namespace A087142.P12766677403050414362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087142.P12766677403050414362

/-! ## A087142.P7948041711101256763

`∩[A065877(n+1), A285271(n+1)]`
-/

namespace A087142.P7948041711101256763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087142.P7948041711101256763

/-! ## A087142.P5818579221786868407

`∩[A255724(n+1), A285271(n+1)]`
-/

namespace A087142.P5818579221786868407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087142.P5818579221786868407

/-! ## A087142.P8089675143899021196

`∩[A285271(n+1), A120685(n)]`
-/

namespace A087142.P8089675143899021196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120685 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087142.P8089675143899021196

/-! ## A087142.P16156241491706501448

`record[A321804(n)+A236506(n+1)]`
-/

namespace A087142.P16156241491706501448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A236506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087142.P16156241491706501448

/-!
# A087143: Numbers n such that sum of digits of n is divisible by digital root of n.

The programs for A087143, there is no canonical definition to state claims against.
-/

/-! ## A087143.P14266119213400639710

`eq[char[A087144(n+1)], A000007(n)]`
-/

namespace A087143.P14266119213400639710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087144 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A087143.P14266119213400639710

/-! ## A087143.P15658898185754612082

`eq[char[A087144(n+1)], A000038(n)]`
-/

namespace A087143.P15658898185754612082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087144 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A087143.P15658898185754612082

/-! ## A087143.P18201283592484144107

`eq[A007953(n), A099469(A033930(n))]`
-/

namespace A087143.P18201283592484144107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099469 (A033930 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087143.P18201283592484144107

/-! ## A087143.P7146337523081877000

`eq[A076314(n), A110029(A033930(n))]`
-/

namespace A087143.P7146337523081877000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110029 (A033930 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087143.P7146337523081877000

/-! ## A087143.P3114898350636380503

`eq[A169805(n)/2, A099469(A033930(n))]`
-/

namespace A087143.P3114898350636380503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099469 (A033930 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A087143.P3114898350636380503

/-! ## A087143.P7022280349317643108

`lt[A360250(A138953(n)), A108602(n+1)]`
-/

namespace A087143.P7022280349317643108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360250 (A138953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087143.P7022280349317643108

/-! ## A087143.P17589245100603086480

`eq[A070635(A033930(n)), A151933(n)]`
-/

namespace A087143.P17589245100603086480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A033930 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087143.P17589245100603086480

/-! ## A087143.P16397061278789258396

`lt[A329562(n), A262505(A329562(n))]`
-/

namespace A087143.P16397061278789258396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262505 (A329562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087143.P16397061278789258396

/-! ## A087143.P11239919257914837216

`lt[A229660(A113010(n)+1), n]`
-/

namespace A087143.P11239919257914837216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229660 (A113010 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A087143.P11239919257914837216

/-! ## A087143.P11886047599730287283

`lt[A229660(A329562(n)-1), n]`
-/

namespace A087143.P11886047599730287283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229660 (A329562 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A087143.P11886047599730287283

/-!
# A087144: Numbers with sum of digits not divisible by digital root.

The programs for A087144, there is no canonical definition to state claims against.
-/

/-! ## A087144.P2570854350241837037

`comp[A087143(n+1)-1]+1`
-/

namespace A087144.P2570854350241837037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087143 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A087144.P2570854350241837037

/-! ## A087144.P3907840066592946254

`comp[A057427(n)*A087143(A028310(n))]`
-/

namespace A087144.P3907840066592946254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A087143 (A028310 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A087144.P3907840066592946254

/-! ## A087144.P13062084738332411814

`eq[A118759(n)-n, A188641(A033930(n))]`
-/

namespace A087144.P13062084738332411814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (A033930 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087144.P13062084738332411814

/-! ## A087144.P4213228811388000540

`lt[A262505(A329562(n)), A329562(n)]`
-/

namespace A087144.P4213228811388000540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262505 (A329562 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087144.P4213228811388000540

/-! ## A087144.P14517644363171291764

`lt[A338298(n), A338315(A007953(n))]`
-/

namespace A087144.P14517644363171291764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338315 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087144.P14517644363171291764

/-!
# A087145: Number of distinct disconnected simple symmetric graphs on n nodes.

The programs for A087145, there is no canonical definition to state claims against.
-/

/-! ## A087145.P5965096836148640610

`A180240(n+1)+1-A286280(ceil(acot(n)+n))`
-/

namespace A087145.P5965096836148640610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180240 (n + 1) + (1 - A286280 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat)

end

end A087145.P5965096836148640610

/-! ## A087145.P16639099053862426508

`A180240(n+1)+1-A286280(abs(1-n)+2)`
-/

namespace A087145.P16639099053862426508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180240 (n + 1) + (1 - A286280 (|1 - (n : ℤ)| + 2).toNat)

end

end A087145.P16639099053862426508

/-! ## A087145.P15854082408842165326

`A180240(n+1)-A023443(A286280(abs(1-n)+2))`
-/

namespace A087145.P15854082408842165326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180240 (n + 1) - A023443 (A286280 (|1 - (n : ℤ)| + 2).toNat).toNat

end

end A087145.P15854082408842165326

/-! ## A087145.P337455912700401584

`A180240(n+1)+1-∏{e}[A151821(n+1), A286280(#)]`
-/

namespace A087145.P337455912700401584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180240 (n + 1) + (1 - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A286280 (Nat.factorization (f1 n).natAbs p))

end

end A087145.P337455912700401584

/-! ## A087145.P2608419940007294026

`A286931(n+1)-A133181(n+1)`
-/

namespace A087145.P2608419940007294026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286931 (n + 1) - A133181 (n + 1)

end

end A087145.P2608419940007294026

/-!
# A087146: Numbers k such that k! + (k+1)! - 1 is prime.

The programs for A087146, there is no canonical definition to state claims against.
-/

/-! ## A087146.P17688290669012891704

`eq[A081827(A226723(n+1)), A326033(n+1)]`
-/

namespace A087146.P17688290669012891704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A226723 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087146.P17688290669012891704

/-!
# A087149: Least positive multiples of index n that can result from the self-convolution of a monotonically increasing sequence (A087148).

The programs for A087149, there is no canonical definition to state claims against.
-/

/-! ## A087149.P2028663146997122587

`∑[A095791(∑[A097067(n)])]`
-/

namespace A087149.P2028663146997122587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087149.P2028663146997122587

/-! ## A087149.P16267355442912220910

`∑[A246435(∑[A003407(n)])]`
-/

namespace A087149.P16267355442912220910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246435 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087149.P16267355442912220910

/-! ## A087149.P10561009491598700467

`∑[A342010(A001006(n)+n)]`
-/

namespace A087149.P10561009491598700467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342010 (A001006 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087149.P10561009491598700467

/-! ## A087149.P3010851360902926920

`∑[∑[A287345(A287312(2*n+3))]]`
-/

namespace A087149.P3010851360902926920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287345 (A287312 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087149.P3010851360902926920

/-! ## A087149.P13728193948930817473

`∑[A072649(A027561(n)+A001006(n))]`
-/

namespace A087149.P13728193948930817473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A027561 n + A001006 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087149.P13728193948930817473

/-!
# A087151: Positive square-root of terms of the self-convolution of A087150.

The programs for A087151, there is no canonical definition to state claims against.
-/

/-! ## A087151.P5456516529311412580

`∑[A087086(A023106(n))]+1`
-/

namespace A087151.P5456516529311412580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A023106 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087151.P5456516529311412580

/-! ## A087151.P18261025492087035294

`∑[A087086(A087036(n))]+1`
-/

namespace A087151.P18261025492087035294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A087036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087151.P18261025492087035294

/-! ## A087151.P17606170954361800948

`∑[A087086(A087051(n))]+1`
-/

namespace A087151.P17606170954361800948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A087051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087151.P17606170954361800948

/-! ## A087151.P7529297486758990039

`∑[A087086(A306593(n))]+1`
-/

namespace A087151.P7529297486758990039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A306593 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087151.P7529297486758990039

/-! ## A087151.P12829350234268576435

`A053615((∑[A087086(n)]+1)²)`
-/

namespace A087151.P12829350234268576435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2).toNat

end

end A087151.P12829350234268576435

/-!
# A087152: Expansion of (1-sqrt(1-4*log(1+x)))/log(1+x)/2.

The programs for A087152, there is no canonical definition to state claims against.
-/

/-! ## A087152.P9915474278713904044

`A371173(A008000(n))+A003577(n)`
-/

namespace A087152.P9915474278713904044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371173 (A008000 n).toNat + A003577 n

end

end A087152.P9915474278713904044

/-!
# A087153: Number of partitions of n into nonsquares.

The programs for A087153, there is no canonical definition to state claims against.
-/

/-! ## A087153.P16323247830235081325

`A263233(∑[n])`
-/

namespace A087153.P16323247830235081325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087153.P16323247830235081325

/-! ## A087153.P3477907826079893927

`A263233(C(n+1, 2))^ceil(acot(n))`
-/

namespace A087153.P3477907826079893927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263233 (Nat.choose (n + 1) 2) : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A087153.P3477907826079893927

/-! ## A087153.P3987404399470611154

`or(char[2], A263233(A000217(n)))`
-/

namespace A087153.P3987404399470611154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263233 (A000217 n).toNat)

end

end A087153.P3987404399470611154

/-! ## A087153.P2369708078869558947

`gcd(A000038(n), A263233(C(n+1, 2)))`
-/

namespace A087153.P2369708078869558947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A263233 (Nat.choose (n + 1) 2))

end

end A087153.P2369708078869558947

/-! ## A087153.P351566378484525856

`or(A000007(n), A263233(C(n+1, 2)))`
-/

namespace A087153.P351566378484525856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A263233 (Nat.choose (n + 1) 2))

end

end A087153.P351566378484525856

/-! ## A087153.P16415246382226169060

`A263233(C(n+1, 2))+A000007(n+1)`
-/

namespace A087153.P16415246382226169060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263233 (Nat.choose (n + 1) 2) + A000007 (n + 1)

end

end A087153.P16415246382226169060

/-! ## A087153.P17073526433512095006

`A263233(A000217(n))%A000032(n)`
-/

namespace A087153.P17073526433512095006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263233 (A000217 n).toNat) (A000032 n)

end

end A087153.P17073526433512095006

/-! ## A087153.P9719648589371317726

`gcd(A000038(n), A263233(A000217(n)))`
-/

namespace A087153.P9719648589371317726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A263233 (A000217 n).toNat)

end

end A087153.P9719648589371317726

/-! ## A087153.P14151218662305236275

`lcm(A020985(n), A263233(A000217(n)))`
-/

namespace A087153.P14151218662305236275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A263233 (A000217 n).toNat)

end

end A087153.P14151218662305236275

/-! ## A087153.P14904091472918197818

`char[A026741(n)]*A263233(A000217(n))`
-/

namespace A087153.P14904091472918197818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A263233 (A000217 n).toNat

end

end A087153.P14904091472918197818

/-! ## A087153.P3694775355423862468

`A000041(C(2, n))*A263233(A000217(n))`
-/

namespace A087153.P3694775355423862468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A263233 (A000217 n).toNat

end

end A087153.P3694775355423862468

/-! ## A087153.P1165456290070298981

`A007318(C(2, n))*A263233(A000217(n))`
-/

namespace A087153.P1165456290070298981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A263233 (A000217 n).toNat

end

end A087153.P1165456290070298981

/-! ## A087153.P18143446442970376821

`A263233(A000217(n))+char[A000108(n+9)]`
-/

namespace A087153.P18143446442970376821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263233 (A000217 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A087153.P18143446442970376821

/-! ## A087153.P7934054397851694384

`A014963(4*n+6)*A263233(A000217(n))`
-/

namespace A087153.P7934054397851694384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A263233 (A000217 n).toNat

end

end A087153.P7934054397851694384

/-! ## A087153.P15636531576970207174

`A007318(and(2, n-2))*A263233(A000217(n))`
-/

namespace A087153.P15636531576970207174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A263233 (A000217 n).toNat

end

end A087153.P15636531576970207174

/-! ## A087153.P5839881051891918523

`A000035(A000265(n+1))*A263233(A000217(n))`
-/

namespace A087153.P5839881051891918523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000265 (n + 1)).toNat * A263233 (A000217 n).toNat

end

end A087153.P5839881051891918523

/-! ## A087153.P3670792390912519022

`A000035(A073703(n+1))*A263233(A000217(n))`
-/

namespace A087153.P3670792390912519022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A073703 (n + 1)).toNat * A263233 (A000217 n).toNat

end

end A087153.P3670792390912519022

/-! ## A087153.P16835401612610712879

`A263233(A000217(n))*A340346(A008578(n+1))`
-/

namespace A087153.P16835401612610712879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263233 (A000217 n).toNat * A340346 (A008578 (n + 1)).toNat

end

end A087153.P16835401612610712879

/-! ## A087153.P2991140199809416016

`A263233(A000217(n))*A340346(A256452(n+1))`
-/

namespace A087153.P2991140199809416016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263233 (A000217 n).toNat * A340346 (A256452 (n + 1)).toNat

end

end A087153.P2991140199809416016

/-! ## A087153.P3949201720966853959

`A303940(∑[n]+n)`
-/

namespace A087153.P3949201720966853959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A087153.P3949201720966853959

/-!
# A087154: Number of partitions of n into distinct nonsquares.

The programs for A087154, there is no canonical definition to state claims against.
-/

/-! ## A087154.P4265402744667901236

`A290370(n)+A038189(A219531(n))`
-/

namespace A087154.P4265402744667901236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290370 n + A038189 (A219531 n).toNat

end

end A087154.P4265402744667901236

/-! ## A087154.P5668909457340673129

`A290370(n)+A185284(A198314(n))`
-/

namespace A087154.P5668909457340673129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290370 n + A185284 (A198314 n).toNat

end

end A087154.P5668909457340673129

/-! ## A087154.P17645529380030715736

`A290370(n)-A178798(A331450(n+3))`
-/

namespace A087154.P17645529380030715736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290370 n - A178798 (A331450 (n + 3)).toNat

end

end A087154.P17645529380030715736

/-! ## A087154.P15431183312535202112

`A290370(n)+A178798(A331450(n+3)+2)`
-/

namespace A087154.P15431183312535202112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290370 n + A178798 (A331450 (n + 3) + 2).toNat

end

end A087154.P15431183312535202112

/-! ## A087154.P12517062653362753837

`A139351(A084558(n)+A026520(n))`
-/

namespace A087154.P12517062653362753837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A084558 n + A026520 n).toNat

end

end A087154.P12517062653362753837

/-!
# A087155: Primes having nontrivial palindromic representation in some (at least one) base.

The programs for A087155, there is no canonical definition to state claims against.
-/

/-! ## A087155.P8314997636235736670

`p?[n*A157928(A135551(n))]`
-/

namespace A087155.P8314997636235736670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A157928 (A135551 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087155.P8314997636235736670

/-! ## A087155.P15762020228784264164

`p?[lt[1, A135551(n)]]`
-/

namespace A087155.P15762020228784264164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087155.P15762020228784264164

/-! ## A087155.P17630212928038996933

`p?[comp[A016038(n+1)]]`
-/

namespace A087155.P17630212928038996933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016038 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087155.P17630212928038996933

/-! ## A087155.P157953927684897454

`record[A006530(comp[A016038(n+1)])]`
-/

namespace A087155.P157953927684897454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016038 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087155.P157953927684897454

/-! ## A087155.P15781877350638804085

`record[A020639(comp[A016038(n+1)])]`
-/

namespace A087155.P15781877350638804085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016038 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087155.P15781877350638804085

/-! ## A087155.P8117239237116726584

`p?[lt[0, A135549(n)]]`
-/

namespace A087155.P8117239237116726584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087155.P8117239237116726584

/-! ## A087155.P11530710034222991345

`p?[(n+1)%(A065531(n+1)+n)]`
-/

namespace A087155.P11530710034222991345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A065531 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087155.P11530710034222991345

/-! ## A087155.P9419795486415184946

`p?[n*A168184(A135550(n))]`
-/

namespace A087155.P9419795486415184946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168184 (A135550 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087155.P9419795486415184946

/-! ## A087155.P15101830849595388739

`record[A014963(comp[A016038(n+1)])]`
-/

namespace A087155.P15101830849595388739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016038 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087155.P15101830849595388739

/-! ## A087155.P8515727618860381968

`eq[A168184(A135549(n)), A327642(n)]`
-/

namespace A087155.P8515727618860381968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 (A135549 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087155.P8515727618860381968

/-! ## A087155.P5085527669568426177

`eq[A168184(A135550(n)), A327642(n)]`
-/

namespace A087155.P5085527669568426177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 (A135550 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087155.P5085527669568426177

/-! ## A087155.P4148425091703555697

`eq[A157928(A135549(n)+1), A226378(n)]`
-/

namespace A087155.P4148425091703555697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A135549 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087155.P4148425091703555697

/-! ## A087155.P899183828277376445

`eq[A157928(A135550(n)+1), A226378(n)]`
-/

namespace A087155.P899183828277376445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A135550 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087155.P899183828277376445

/-! ## A087155.P11778924451572681299

`eq[A157928(2*A135549(n)), A226378(n)]`
-/

namespace A087155.P11778924451572681299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (2 * A135549 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087155.P11778924451572681299

/-! ## A087155.P5422721896022972809

`eq[A157928(2*A135550(n)), A226378(n)]`
-/

namespace A087155.P5422721896022972809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (2 * A135550 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087155.P5422721896022972809

/-!
# A087156: Nonnegative numbers excluding 1.

The programs for A087156, the canonical program `A087156.P7013495329997093940` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087156 has offset 1).

The definition of A087156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087156.P7013495329997093940

`floor((n+sqrt(n²+8*n))/2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087156

/-- `floor((n+sqrt(n²+8*n))/2)` -/
def P7013495329997093940.Spec : Prop :=
  ∀ n, P7013495329997093940.a n = A087156 (n + 1)

theorem P7013495329997093940.correct : P7013495329997093940.Spec := by
  intro n
  simp only [A087156, Nat.add_sub_cancel]

end A087156

/-!
# A087157: Satisfies a(1)=1, a(A087158(n+1)) = a(n)+1, with a(m)=1 for all m not found in A087158, where A087158(n+2)=A087158(n+1)+a(n)+1.

The programs for A087157, there is no canonical definition to state claims against.
-/

/-! ## A087157.P7888729066407806482

`A112377(A280513(n+2))`
-/

namespace A087157.P7888729066407806482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112377 (A280513 (n + 2)).toNat

end

end A087157.P7888729066407806482

/-! ## A087157.P1185521459288036678

`A112378(A280513(n+1)-1)+1`
-/

namespace A087157.P1185521459288036678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112378 (A280513 (n + 1) - 1).toNat + 1

end

end A087157.P1185521459288036678

/-!
# A087158: Satisfies a(n+2)=a(n+1)+A087157(n)+1.

The programs for A087158, there is no canonical definition to state claims against.
-/

/-! ## A087158.P7942924374792162303

`record[gcd(A227145(n+1), A227145(n+3))]`
-/

namespace A087158.P7942924374792162303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A227145 (n + 1)) (A227145 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087158.P7942924374792162303

/-! ## A087158.P15650506609546919161

`record[A087157(round(sqrt(n²+1)))+n]`
-/

namespace A087158.P15650506609546919161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087157 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087158.P15650506609546919161

/-! ## A087158.P7019773148499963606

`A087157(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A087158.P7019773148499963606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087157 (a (n - 1)).toNat + a (n - 1)

end

end A087158.P7019773148499963606

/-! ## A087158.P18320127673546010261

`record[n*61%A087157(n+1)+1]`
-/

namespace A087158.P18320127673546010261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod 61 (A087157 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087158.P18320127673546010261

/-!
# A087159: Satisfies a(1)=1, a(A087160(n+1)) = a(n)+1, with a(m)=2 for all m not found in A087160, where A087160(n+2)=A087160(n+1)+a(n)+1.

The programs for A087159, there is no canonical definition to state claims against.
-/

/-! ## A087159.P16609562476031227895

`Δ[A087160(n+2)]-1`
-/

namespace A087159.P16609562476031227895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A087159.P16609562476031227895

/-! ## A087159.P12971550791243216187

`A000401(Δ[A087160(n+2)])`
-/

namespace A087159.P12971550791243216187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (f1 (n + 1) - f1 n).toNat

end

end A087159.P12971550791243216187

/-! ## A087159.P8334892613128050684

`A002113(Δ[A087160(n+2)])`
-/

namespace A087159.P8334892613128050684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (f1 (n + 1) - f1 n).toNat

end

end A087159.P8334892613128050684

/-! ## A087159.P5836687581387635334

`A002180(Δ[A087160(n+2)])`
-/

namespace A087159.P5836687581387635334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (f1 (n + 1) - f1 n).toNat

end

end A087159.P5836687581387635334

/-! ## A087159.P2747611981510402036

`A004775(Δ[A087160(n+2)])`
-/

namespace A087159.P2747611981510402036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004775 (f1 (n + 1) - f1 n).toNat

end

end A087159.P2747611981510402036

/-! ## A087159.P17784747313749298184

`A003520(Δ[A087160(n+2)]+2)`
-/

namespace A087159.P17784747313749298184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (f1 (n + 1) - f1 n + 2).toNat

end

end A087159.P17784747313749298184

/-! ## A087159.P1179424992616390441

`A004275(Δ[A087160(n+2)])/2`
-/

namespace A087159.P1179424992616390441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A087159.P1179424992616390441

/-! ## A087159.P15234487422913224013

`Δ[A087160(n+2)+A001489(n)]`
-/

namespace A087159.P15234487422913224013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (n + 2) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087159.P15234487422913224013

/-! ## A087159.P6690371082156217185

`floor(A000040(Δ[A087160(n+2)]+1)/3)`
-/

namespace A087159.P6690371082156217185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (f1 (n + 1) - f1 n + 1).toNat : ℚ) / 3⌋

end

end A087159.P6690371082156217185

/-! ## A087159.P1535644875520847592

`(Δ[A087160(n+2)]+log2(1/2))%A000040(n+1)`
-/

namespace A087159.P1535644875520847592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A000040 (n + 1))

end

end A087159.P1535644875520847592

/-!
# A087160: Satisfies a(1)=1, a(2)=2, a(n+2)=a(n+1)+A087159(n)+1.

The programs for A087160, there is no canonical definition to state claims against.
-/

/-! ## A087160.P17196676797377151175

`A087159(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A087160.P17196676797377151175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087159 (a (n - 1)).toNat + a (n - 1)

end

end A087160.P17196676797377151175

/-! ## A087160.P15926593711103791980

`∑[A182850(A062510(n+1))]`
-/

namespace A087160.P15926593711103791980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A062510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087160.P15926593711103791980

/-!
# A087161: Records in A087159, i.e., A087159(a(n)) = n, and satisfies the recurrence a(n+3) = 5*a(n+2) - 6* a(n+1) + 2*a(n) with a(1) = 1, a(2) = 2, and a(3) = 4.

The programs for A087161, the canonical program `A087161.P2325327063467961189` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087161 has offset 1).

The definition of A087161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087161.P2325327063467961189

`5*a(n-1)-6*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087161

/-- `5*a(n-1)-6*a(n-2)+2*a(n-3)` -/
def P2325327063467961189.Spec : Prop :=
  ∀ n, P2325327063467961189.a n = A087161 (n + 1)

theorem P2325327063467961189.correct : P2325327063467961189.Spec := by
  intro n
  simp only [A087161, Nat.add_sub_cancel]

end A087161

/-! ## A087161.P6950525172678675120

`∑[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A087161.P6950525172678675120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P6950525172678675120

namespace A087161

/-- `∑[floor((sqrt(2)+2)*a(n-1))]` -/
def P6950525172678675120.Spec : Prop :=
  ∀ n, P6950525172678675120.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P16809636091231881056

`∑[floor(2*a(n-1)/(2-sqrt(2)))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A087161.P16809636091231881056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  ⌊(2 * f1 (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P16809636091231881056

namespace A087161

/-- `∑[floor(2*a(n-1)/(2-sqrt(2)))]` -/
def P16809636091231881056.Spec : Prop :=
  ∀ n, P16809636091231881056.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P10449059590740309963

`∑[2*(2*a(n-1)-a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A087161.P10449059590740309963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (2 * f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P10449059590740309963

namespace A087161

/-- `∑[2*(2*a(n-1)-a(n-2))]` -/
def P10449059590740309963.Spec : Prop :=
  ∀ n, P10449059590740309963.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P9083095097793104400

`2*(2*a(n-1)-(a(n-2)+1))` with `a(0)=1, a(1)=2`
-/

namespace A087161.P9083095097793104400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * a (n - 1) - (a (n - 2) + 1))

end

end A087161.P9083095097793104400

namespace A087161

/-- `2*(2*a(n-1)-(a(n-2)+1))` -/
def P9083095097793104400.Spec : Prop :=
  ∀ n, P9083095097793104400.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P5160295231152399575

`2*(2*a(n-1)-1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A087161.P5160295231152399575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * a (n - 1) - 1 - a (n - 2))

end

end A087161.P5160295231152399575

namespace A087161

/-- `2*(2*a(n-1)-1-a(n-2))` -/
def P5160295231152399575.Spec : Prop :=
  ∀ n, P5160295231152399575.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P10339450708025099092

`a(n-1)+a(n-1)+lcm(2, a(n-1)-(a(n-2)+1))` with `a(0)=1, a(1)=2`
-/

namespace A087161.P10339450708025099092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + Int.lcm 2 ((a (n - 1) : ℤ) - (a (n - 2) + 1 : ℤ)))

end

end A087161.P10339450708025099092

namespace A087161

/-- `a(n-1)+a(n-1)+lcm(2, a(n-1)-(a(n-2)+1))` -/
def P10339450708025099092.Spec : Prop :=
  ∀ n, (P10339450708025099092.a n : ℤ) = A087161 (n + 1)

end A087161

/-! ## A087161.P16935417305717133168

`A293067(n+1)/2+1`
-/

namespace A087161.P16935417305717133168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293067 (n + 1) : ℚ) / 2 + 1

end

end A087161.P16935417305717133168

namespace A087161

/-- `A293067(n+1)/2+1` -/
def P16935417305717133168.Spec : Prop :=
  ∀ n, P16935417305717133168.a n = (A087161 (n + 1) : ℚ)

end A087161

/-! ## A087161.P9601319206688749009

`∑[A006012(floor(n/2^acot(n)))]`
-/

namespace A087161.P9601319206688749009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 ⌊(n : ℝ) / (2 : ℝ) ^ (SequenceMachineLib.acot (n : ℝ))⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P9601319206688749009

namespace A087161

/-- `∑[A006012(floor(n/2^acot(n)))]` -/
def P9601319206688749009.Spec : Prop :=
  ∀ n, P9601319206688749009.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P14977450856774610548

`A006012(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A087161.P14977450856774610548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006012 (n - 1) + a (n - 1)

end

end A087161.P14977450856774610548

namespace A087161

/-- `A006012(n-1)+a(n-1)` -/
def P14977450856774610548.Spec : Prop :=
  ∀ n, P14977450856774610548.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P10807193408842160350

`∑[A006012((n-1)*C(n, C(n, n²)))]`
-/

namespace A087161.P10807193408842160350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (((n : ℤ) - 1) * (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P10807193408842160350

namespace A087161

/-- `∑[A006012((n-1)*C(n, C(n, n²)))]` -/
def P10807193408842160350.Spec : Prop :=
  ∀ n, P10807193408842160350.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P8092913844849659217

`∑[A006012(log2(A011782(n)))]`
-/

namespace A087161.P8092913844849659217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P8092913844849659217

namespace A087161

/-- `∑[A006012(log2(A011782(n)))]` -/
def P8092913844849659217.Spec : Prop :=
  ∀ n, P8092913844849659217.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P13677925364843262962

`∑[A030436(2*n)-A062112(2*n)]`
-/

namespace A087161.P13677925364843262962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n) - A062112 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P13677925364843262962

namespace A087161

/-- `∑[A030436(2*n)-A062112(2*n)]` -/
def P13677925364843262962.Spec : Prop :=
  ∀ n, P13677925364843262962.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P4220516101228638676

`∑[A062112(2*n+1)-A062112(2*n)]`
-/

namespace A087161.P4220516101228638676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n + 1) - A062112 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P4220516101228638676

namespace A087161

/-- `∑[A062112(2*n+1)-A062112(2*n)]` -/
def P4220516101228638676.Spec : Prop :=
  ∀ n, P4220516101228638676.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P12413105721342364326

`∑[A006012((n-1)*C(A157532(n+1), 3))]`
-/

namespace A087161.P12413105721342364326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (((n : ℤ) - 1) * (Nat.choose (A157532 (n + 1)).toNat 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P12413105721342364326

namespace A087161

/-- `∑[A006012((n-1)*C(A157532(n+1), 3))]` -/
def P12413105721342364326.Spec : Prop :=
  ∀ n, P12413105721342364326.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P908466589678849036

`∑[A106731(n)+A007052(n)]`
-/

namespace A087161.P908466589678849036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106731 n + A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P908466589678849036

namespace A087161

/-- `∑[A106731(n)+A007052(n)]` -/
def P908466589678849036.Spec : Prop :=
  ∀ n, P908466589678849036.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P6054099931218117323

`A007070(n)+∑[A106731(n)]`
-/

namespace A087161.P6054099931218117323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P6054099931218117323

namespace A087161

/-- `A007070(n)+∑[A106731(n)]` -/
def P6054099931218117323.Spec : Prop :=
  ∀ n, P6054099931218117323.a n = A087161 (n + 1)

end A087161

/-! ## A087161.P13286261144551598252

`∑[A056236(n)-A007052(n)]`
-/

namespace A087161.P13286261144551598252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 n - A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087161.P13286261144551598252

namespace A087161

/-- `∑[A056236(n)-A007052(n)]` -/
def P13286261144551598252.Spec : Prop :=
  ∀ n, P13286261144551598252.a n = A087161 (n + 1)

end A087161

/-!
# A087162: Satisfies a(1)=1, a(A087163(n+1)) = a(n)+1, with a(m)=3 for all m not found in A087163, where A087163(n+2)=A087163(n+1)+a(n)+1.

The programs for A087162, there is no canonical definition to state claims against.
-/

/-! ## A087162.P9355933063802643984

`Δ[A087163(n+2)]-1`
-/

namespace A087162.P9355933063802643984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A087162.P9355933063802643984

/-! ## A087162.P18201670148166449516

`A000401(Δ[A087163(n+2)])`
-/

namespace A087162.P18201670148166449516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (f1 (n + 1) - f1 n).toNat

end

end A087162.P18201670148166449516

/-! ## A087162.P3867556330757967672

`A002113(Δ[A087163(n+2)])`
-/

namespace A087162.P3867556330757967672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (f1 (n + 1) - f1 n).toNat

end

end A087162.P3867556330757967672

/-! ## A087162.P5328723343120562417

`A002180(Δ[A087163(n+2)])`
-/

namespace A087162.P5328723343120562417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (f1 (n + 1) - f1 n).toNat

end

end A087162.P5328723343120562417

/-! ## A087162.P17790242254980025742

`A004775(Δ[A087163(n+2)])`
-/

namespace A087162.P17790242254980025742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004775 (f1 (n + 1) - f1 n).toNat

end

end A087162.P17790242254980025742

/-! ## A087162.P5211259679711431456

`A004848(Δ[A087163(n+2)])`
-/

namespace A087162.P5211259679711431456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004848 (f1 (n + 1) - f1 n).toNat

end

end A087162.P5211259679711431456

/-! ## A087162.P8947737166244483693

`A000700(3*Δ[A087163(n+2)])`
-/

namespace A087162.P8947737166244483693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (3 * (f1 (n + 1) - f1 n)).toNat

end

end A087162.P8947737166244483693

/-! ## A087162.P13933504739091041872

`A002202(Δ[A087163(n+2)])/2`
-/

namespace A087162.P13933504739091041872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002202 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A087162.P13933504739091041872

/-! ## A087162.P14795841145099477202

`A004275(Δ[A087163(n+2)])/2`
-/

namespace A087162.P14795841145099477202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A087162.P14795841145099477202

/-! ## A087162.P7985902525377210767

`A001222(3^Δ[A087163(n+2)]/3)`
-/

namespace A087162.P7985902525377210767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) / 3)).toNat

end

end A087162.P7985902525377210767

/-!
# A087163: Satisfies a(1)=1, a(2)=2, a(n+2)=a(n+1)+A087162(n)+1.

The programs for A087163, there is no canonical definition to state claims against.
-/

/-! ## A087163.P7775518202779349797

`A087162(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A087163.P7775518202779349797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087162 (a (n - 1)).toNat + a (n - 1)

end

end A087163.P7775518202779349797

/-! ## A087163.P1355394399862033620

`A329996(record[ceil((lcm(2, n)+1+n)/2)])`
-/

namespace A087163.P1355394399862033620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 n + 1 + n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329996 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087163.P1355394399862033620

/-! ## A087163.P5679875217443496823

`A329996(record[A032742(n+1)+n])`
-/

namespace A087163.P5679875217443496823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329996 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087163.P5679875217443496823

/-! ## A087163.P5269496695615776924

`A329996(A289207(n)+A004278(n+1))`
-/

namespace A087163.P5269496695615776924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329996 (A289207 n + A004278 (n + 1)).toNat

end

end A087163.P5269496695615776924

/-! ## A087163.P17050750111783560873

`∑[floor(A375834(A006887(n+1))/2)]`
-/

namespace A087163.P17050750111783560873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A375834 (A006887 (n + 1)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087163.P17050750111783560873

/-!
# A087164: Records in A087162: A087162(a(n))=n.

The programs for A087164, there is no canonical definition to state claims against.
-/

/-! ## A087164.P15926076080189614866

`A200753(n)+A001222(A174168(n))`
-/

namespace A087164.P15926076080189614866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200753 n + A001222 (A174168 n).toNat

end

end A087164.P15926076080189614866

/-! ## A087164.P6432561194592112761

`A200753(n)+A117479(A303438(n))`
-/

namespace A087164.P6432561194592112761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200753 n + A117479 (A303438 n).toNat

end

end A087164.P6432561194592112761

/-! ## A087164.P2878008536110583056

`A002846(n+3)-A353847(A357878(2*(n+1)))`
-/

namespace A087164.P2878008536110583056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002846 (n + 3) - A353847 (A357878 (2 * (n + 1))).toNat

end

end A087164.P2878008536110583056

/-!
# A087165: a(n)=1 when n == 1 (mod 4), otherwise a(n) = a(n - ceiling(n/4)) + 1. Removing all the 1's results in the original sequence with every term incremented by 1.

The programs for A087165, the canonical program `A087165.P10854930970377381863` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087165 has offset 1).

The definition of A087165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087165.P10854930970377381863

`Δ[a(floor(3*n/4))+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087165

/-- `Δ[a(floor(3*n/4))+n]` -/
def P10854930970377381863.Spec : Prop :=
  ∀ n, P10854930970377381863.a n = A087165 (n + 1)

theorem P10854930970377381863.correct : P10854930970377381863.Spec := by
  intro n
  simp only [A087165, Nat.add_sub_cancel]

end A087165

/-! ## A087165.P10938225509888988865

`4-Δ[A244041(3*n)]`
-/

namespace A087165.P10938225509888988865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A087165.P10938225509888988865

namespace A087165

/-- `4-Δ[A244041(3*n)]` -/
def P10938225509888988865.Spec : Prop :=
  ∀ n, P10938225509888988865.a n = A087165 (n + 1)

end A087165

/-! ## A087165.P8390195913532349382

`Δ[floor(a(A057353(n))+n)]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A087165.P8390195913532349382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A057353 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A087165.P8390195913532349382

namespace A087165

/-- `Δ[floor(a(A057353(n))+n)]` -/
def P8390195913532349382.Spec : Prop :=
  ∀ n, P8390195913532349382.a n = A087165 (n + 1)

end A087165

/-! ## A087165.P17193333606028226655

`Δ[floor(a(n-A110655(n))+n)]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A087165.P17193333606028226655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((n : ℤ) - A110655 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A087165.P17193333606028226655

namespace A087165

/-- `Δ[floor(a(n-A110655(n))+n)]` -/
def P17193333606028226655.Spec : Prop :=
  ∀ n, P17193333606028226655.a n = A087165 (n + 1)

end A087165

/-! ## A087165.P4432975426123866152

`Δ[n-floor(-a(A002265(3*n)))]` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A087165.P4432975426123866152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) - (-f1 (A002265 (3 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087165.P4432975426123866152

namespace A087165

/-- `Δ[n-floor(-a(A002265(3*n)))]` -/
def P4432975426123866152.Spec : Prop :=
  ∀ n, P4432975426123866152.a n = A087165 (n + 1)

end A087165

/-! ## A087165.P12185405671759621852

`A000027(Δ[a(A057353(n))+n])` with `a(0)=0`
-/

namespace A087165.P12185405671759621852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A057353 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087165.P12185405671759621852

namespace A087165

/-- `A000027(Δ[a(A057353(n))+n])` -/
def P12185405671759621852.Spec : Prop :=
  ∀ n, P12185405671759621852.a n = A087165 (n + 1)

end A087165

/-! ## A087165.P17967458917039520005

`Δ[record[A000265(n+1)-A244041(n)]]`
-/

namespace A087165.P17967458917039520005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - A244041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087165.P17967458917039520005

namespace A087165

/-- `Δ[record[A000265(n+1)-A244041(n)]]` -/
def P17967458917039520005.Spec : Prop :=
  ∀ n, P17967458917039520005.a n = A087165 (n + 1)

end A087165

/-! ## A087165.P12272606328377128333

`A357081(n)-2`
-/

namespace A087165.P12272606328377128333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357081 n - 2

end

end A087165.P12272606328377128333

namespace A087165

/-- `A357081(n)-2` -/
def P12272606328377128333.Spec : Prop :=
  ∀ n, P12272606328377128333.a n = A087165 (n + 1)

end A087165

/-! ## A087165.P14349420053846744703

`A023444(A357081(n))`
-/

namespace A087165.P14349420053846744703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A357081 n).toNat

end

end A087165.P14349420053846744703

namespace A087165

/-- `A023444(A357081(n))` -/
def P14349420053846744703.Spec : Prop :=
  ∀ n, P14349420053846744703.a n = A087165 (n + 1)

end A087165

/-! ## A087165.P5377382905877104773

`A254078(n+2)%A357081(n)`
-/

namespace A087165.P5377382905877104773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A357081 n)

end

end A087165.P5377382905877104773

namespace A087165

/-- `A254078(n+2)%A357081(n)` -/
def P5377382905877104773.Spec : Prop :=
  ∀ n, P5377382905877104773.a n = A087165 (n + 1)

end A087165

/-!
# A087166: Primes which are palindromes in 3 or more bases.

The programs for A087166, there is no canonical definition to state claims against.
-/

/-! ## A087166.P8431061012308225443

`p?[gcd(n, A094497(A135551(n)))]`
-/

namespace A087166.P8431061012308225443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A094497 (A135551 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087166.P8431061012308225443

/-! ## A087166.P14510943754231080045

`p?[A253594(n+1)]`
-/

namespace A087166.P14510943754231080045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087166.P14510943754231080045

/-! ## A087166.P12543721328529256886

`∩[A000040(n+1), A253594(n+1)]`
-/

namespace A087166.P12543721328529256886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P12543721328529256886

/-! ## A087166.P967513071740977383

`∩[A004139(n+1), A253594(n+1)]`
-/

namespace A087166.P967513071740977383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P967513071740977383

/-! ## A087166.P10523675570879583217

`∩[A006005(n+1), A253594(n+1)]`
-/

namespace A087166.P10523675570879583217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P10523675570879583217

/-! ## A087166.P10621072258531841927

`∩[A008578(n+1), A253594(n+1)]`
-/

namespace A087166.P10621072258531841927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P10621072258531841927

/-! ## A087166.P1987726495682134359

`∩[A045319(n+1), A253594(n+1)]`
-/

namespace A087166.P1987726495682134359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P1987726495682134359

/-! ## A087166.P83481571642628678

`∩[A045344(n+1), A253594(n+1)]`
-/

namespace A087166.P83481571642628678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P83481571642628678

/-! ## A087166.P12542563592870772295

`∩[A046022(n+1), A253594(n+1)]`
-/

namespace A087166.P12542563592870772295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P12542563592870772295

/-! ## A087166.P13947567826542396153

`∩[A051948(n+1), A253594(n+1)]`
-/

namespace A087166.P13947567826542396153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P13947567826542396153

/-! ## A087166.P612812903149381873

`∩[A065091(n+1), A253594(n+1)]`
-/

namespace A087166.P612812903149381873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P612812903149381873

/-! ## A087166.P12792032688036049198

`∩[A067126(n+1), A253594(n+1)]`
-/

namespace A087166.P12792032688036049198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P12792032688036049198

/-! ## A087166.P8922487547423581596

`∩[A078138(n+1), A253594(n+1)]`
-/

namespace A087166.P8922487547423581596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P8922487547423581596

/-! ## A087166.P9476840407853731681

`∩[A087155(n+1), A253594(n+1)]`
-/

namespace A087166.P9476840407853731681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P9476840407853731681

/-! ## A087166.P9939073588400702911

`∩[A108719(n+1), A253594(n+1)]`
-/

namespace A087166.P9939073588400702911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P9939073588400702911

/-! ## A087166.P867328762095819317

`∩[A116974(n+1), A253594(n+1)]`
-/

namespace A087166.P867328762095819317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P867328762095819317

/-! ## A087166.P11320106568020793107

`∩[A157996(n+1), A253594(n+1)]`
-/

namespace A087166.P11320106568020793107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P11320106568020793107

/-! ## A087166.P5236405872610497288

`∩[A161428(n+1), A253594(n+1)]`
-/

namespace A087166.P5236405872610497288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087166.P5236405872610497288

/-! ## A087166.P13147571746818454741

`record[A014963(A253594(n+4))]`
-/

namespace A087166.P13147571746818454741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A253594 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087166.P13147571746818454741

/-! ## A087166.P13553262561935464132

`p?[n*A157928(A135549(n))]`
-/

namespace A087166.P13553262561935464132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A157928 (A135549 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087166.P13553262561935464132

/-!
# A087168: Expansion of (1 + 2*x)/(1 + 3*x + 4*x^2).

The programs for A087168, the canonical program `A087168.P5113920583657061767` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087168 has offset 0).

The definition of A087168 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001607, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087168.P5113920583657061767

`A001607(2*n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087168

/-- `A001607(2*n+1)` -/
def P5113920583657061767.Spec : Prop :=
  ∀ n, P5113920583657061767.a n = A087168 n

theorem P5113920583657061767.correct : P5113920583657061767.Spec := by
  intro n
  simp only [A087168]

end A087168

/-! ## A087168.P5880525938262093655

`a(n-1)-4*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=-1`
-/

namespace A087168.P5880525938262093655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 1) - 4 * (a (n - 1) + a (n - 2))

end

end A087168.P5880525938262093655

namespace A087168

/-- `a(n-1)-4*(a(n-1)+a(n-2))` -/
def P5880525938262093655.Spec : Prop :=
  ∀ n, P5880525938262093655.a n = A087168 n

end A087168

/-! ## A087168.P16522927859748087458

`A107920(Δ[n²])`
-/

namespace A087168.P16522927859748087458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087168.P16522927859748087458

namespace A087168

/-- `A107920(Δ[n²])` -/
def P16522927859748087458.Spec : Prop :=
  ∀ n, P16522927859748087458.a n = A087168 n

end A087168

/-! ## A087168.P11532362096010076655

`2*A105578(2*n)-1`
-/

namespace A087168.P11532362096010076655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105578 (2 * n) - 1

end

end A087168.P11532362096010076655

namespace A087168

/-- `2*A105578(2*n)-1` -/
def P11532362096010076655.Spec : Prop :=
  ∀ n, P11532362096010076655.a n = A087168 n

end A087168

/-! ## A087168.P14433199635253612498

`a(n-1)+A128415(n)+a(n-1)` with `a(0)=1`
-/

namespace A087168.P14433199635253612498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A128415 n + a (n - 1))

end

end A087168.P14433199635253612498

namespace A087168

/-- `a(n-1)+A128415(n)+a(n-1)` -/
def P14433199635253612498.Spec : Prop :=
  ∀ n, P14433199635253612498.a n = A087168 n

end A087168

/-! ## A087168.P3541888951985677100

`A033999(n)*A247560(n)`
-/

namespace A087168.P3541888951985677100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A247560 n

end

end A087168.P3541888951985677100

namespace A087168

/-- `A033999(n)*A247560(n)` -/
def P3541888951985677100.Spec : Prop :=
  ∀ n, P3541888951985677100.a n = A087168 n

end A087168

/-! ## A087168.P16545904548085423720

`Δ[A001607(n)²]-A001607(n)²`
-/

namespace A087168.P16545904548085423720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001607 n ^ 2

end

end A087168.P16545904548085423720

namespace A087168

/-- `Δ[A001607(n)²]-A001607(n)²` -/
def P16545904548085423720.Spec : Prop :=
  ∀ n, P16545904548085423720.a n = A087168 n

end A087168

/-! ## A087168.P14757392505924069475

`A107920(2*n)+A078020(2*n)`
-/

namespace A087168.P14757392505924069475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 (2 * n) + A078020 (2 * n)

end

end A087168.P14757392505924069475

namespace A087168

/-- `A107920(2*n)+A078020(2*n)` -/
def P14757392505924069475.Spec : Prop :=
  ∀ n, P14757392505924069475.a n = A087168 n

end A087168

/-! ## A087168.P6361405286365030226

`A110512(2*n)+A107920(2*n)`
-/

namespace A087168.P6361405286365030226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 (2 * n) + A107920 (2 * n)

end

end A087168.P6361405286365030226

namespace A087168

/-- `A110512(2*n)+A107920(2*n)` -/
def P6361405286365030226.Spec : Prop :=
  ∀ n, P6361405286365030226.a n = A087168 n

end A087168

/-! ## A087168.P15078953306504684538

`A078033(2*n)-(A078033(2*n+1)+1)`
-/

namespace A087168.P15078953306504684538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078033 (2 * n) - (A078033 (2 * n + 1) + 1)

end

end A087168.P15078953306504684538

namespace A087168

/-- `A078033(2*n)-(A078033(2*n+1)+1)` -/
def P15078953306504684538.Spec : Prop :=
  ∀ n, P15078953306504684538.a n = A087168 n

end A087168

/-! ## A087168.P1729187555617789554

`A000079(n)+A002249(n+1)*A107920(n)`
-/

namespace A087168.P1729187555617789554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A002249 (n + 1) * A107920 n

end

end A087168.P1729187555617789554

namespace A087168

/-- `A000079(n)+A002249(n+1)*A107920(n)` -/
def P1729187555617789554.Spec : Prop :=
  ∀ n, P1729187555617789554.a n = A087168 n

end A087168

/-! ## A087168.P10604194423938115462

`Δ[A105578(2*n+3)/4]`
-/

namespace A087168.P10604194423938115462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105578 (2 * n + 3) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087168.P10604194423938115462

namespace A087168

/-- `Δ[A105578(2*n+3)/4]` -/
def P10604194423938115462.Spec : Prop :=
  ∀ n, P10604194423938115462.a n = (A087168 n : ℚ)

end A087168

/-! ## A087168.P3239985259060293219

`A078020(2*n)-A001607(2*n)`
-/

namespace A087168.P3239985259060293219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 (2 * n) - A001607 (2 * n)

end

end A087168.P3239985259060293219

namespace A087168

/-- `A078020(2*n)-A001607(2*n)` -/
def P3239985259060293219.Spec : Prop :=
  ∀ n, P3239985259060293219.a n = A087168 n

end A087168

/-! ## A087168.P1220576409365251225

`A110512(2*n)-A001607(2*n)`
-/

namespace A087168.P1220576409365251225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 (2 * n) - A001607 (2 * n)

end

end A087168.P1220576409365251225

namespace A087168

/-- `A110512(2*n)-A001607(2*n)` -/
def P1220576409365251225.Spec : Prop :=
  ∀ n, P1220576409365251225.a n = A087168 n

end A087168

/-! ## A087168.P9275278297936542013

`A110512(2*n)+A110512(2*n+1)/2`
-/

namespace A087168.P9275278297936542013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110512 (2 * n) : ℚ) + (A110512 (2 * n + 1) : ℚ) / 2

end

end A087168.P9275278297936542013

namespace A087168

/-- `A110512(2*n)+A110512(2*n+1)/2` -/
def P9275278297936542013.Spec : Prop :=
  ∀ n, P9275278297936542013.a n = (A087168 n : ℚ)

end A087168

/-! ## A087168.P9009339336980013700

`A078020(2*n)-A078020(2*n+1)/2`
-/

namespace A087168.P9009339336980013700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078020 (2 * n) : ℚ) - (A078020 (2 * n + 1) : ℚ) / 2

end

end A087168.P9009339336980013700

namespace A087168

/-- `A078020(2*n)-A078020(2*n+1)/2` -/
def P9009339336980013700.Spec : Prop :=
  ∀ n, P9009339336980013700.a n = (A087168 n : ℚ)

end A087168

/-! ## A087168.P3211226283117114615

`A105225(2*n)-(A105225(2*n+1)+A078020(2*n))`
-/

namespace A087168.P3211226283117114615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105225 (2 * n) - (A105225 (2 * n + 1) + A078020 (2 * n))

end

end A087168.P3211226283117114615

namespace A087168

/-- `A105225(2*n)-(A105225(2*n+1)+A078020(2*n))` -/
def P3211226283117114615.Spec : Prop :=
  ∀ n, P3211226283117114615.a n = A087168 n

end A087168

/-! ## A087168.P14927115527810605263

`A078050(2*n)-A107920(2*n)`
-/

namespace A087168.P14927115527810605263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078050 (2 * n) - A107920 (2 * n)

end

end A087168.P14927115527810605263

namespace A087168

/-- `A078050(2*n)-A107920(2*n)` -/
def P14927115527810605263.Spec : Prop :=
  ∀ n, P14927115527810605263.a n = A087168 n

end A087168

/-! ## A087168.P8386415499825652437

`A169998(2*n)-A078020(2*n+1)`
-/

namespace A087168.P8386415499825652437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169998 (2 * n) - A078020 (2 * n + 1)

end

end A087168.P8386415499825652437

namespace A087168

/-- `A169998(2*n)-A078020(2*n+1)` -/
def P8386415499825652437.Spec : Prop :=
  ∀ n, P8386415499825652437.a n = A087168 n

end A087168

/-!
# A087169: Expansion of (1 + 3*x)/(1 + 5*x + 9*x^2).

The programs for A087169, the canonical program `A087169.P17879908893484888215` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087169 has offset 0).

The definition of A087169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087169.P17879908893484888215

`A106852(2*n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087169

/-- `A106852(2*n)` -/
def P17879908893484888215.Spec : Prop :=
  ∀ n, P17879908893484888215.a n = A087169 n

theorem P17879908893484888215.correct : P17879908893484888215.Spec := by
  intro n
  simp only [A087169]

end A087169

/-! ## A087169.P18065405314039070095

`A214733(Δ[n²])`
-/

namespace A087169.P18065405314039070095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214733 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087169.P18065405314039070095

namespace A087169

/-- `A214733(Δ[n²])` -/
def P18065405314039070095.Spec : Prop :=
  ∀ n, P18065405314039070095.a n = A087169 n

end A087169

/-! ## A087169.P2679276733828547014

`A110523(2*n)-A214733(2*n)`
-/

namespace A087169.P2679276733828547014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110523 (2 * n) - A214733 (2 * n)

end

end A087169.P2679276733828547014

namespace A087169

/-- `A110523(2*n)-A214733(2*n)` -/
def P2679276733828547014.Spec : Prop :=
  ∀ n, P2679276733828547014.a n = A087169 n

end A087169

/-! ## A087169.P5038656190734199435

`or(A000007(n), A106852(A005843(n)))`
-/

namespace A087169.P5038656190734199435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A106852 (A005843 n).toNat)

end

end A087169.P5038656190734199435

namespace A087169

/-- `or(A000007(n), A106852(A005843(n)))` -/
def P5038656190734199435.Spec : Prop :=
  ∀ n, P5038656190734199435.a n = A087169 n

end A087169

/-! ## A087169.P1120218155370377847

`or(A106852(A005843(n)), A145649(n+1))`
-/

namespace A087169.P1120218155370377847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106852 (A005843 n).toNat) (A145649 (n + 1))

end

end A087169.P1120218155370377847

namespace A087169

/-- `or(A106852(A005843(n)), A145649(n+1))` -/
def P1120218155370377847.Spec : Prop :=
  ∀ n, P1120218155370377847.a n = A087169 n

end A087169

/-! ## A087169.P9148787181839202899

`or(A134746(2*n), A214733(A005408(n)))`
-/

namespace A087169.P9148787181839202899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134746 (2 * n)) (A214733 (A005408 n).toNat)

end

end A087169.P9148787181839202899

namespace A087169

/-- `or(A134746(2*n), A214733(A005408(n)))` -/
def P9148787181839202899.Spec : Prop :=
  ∀ n, P9148787181839202899.a n = A087169 n

end A087169

/-! ## A087169.P10350967468645862332

`A103644(n)+A110523(n+1)*A214733(n)`
-/

namespace A087169.P10350967468645862332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103644 n + A110523 (n + 1) * A214733 n

end

end A087169.P10350967468645862332

namespace A087169

/-- `A103644(n)+A110523(n+1)*A214733(n)` -/
def P10350967468645862332.Spec : Prop :=
  ∀ n, P10350967468645862332.a n = A087169 n

end A087169

/-! ## A087169.P14206166054447376143

`A214733(2*n+1)+A077999(2*n)-A110524(2*n)`
-/

namespace A087169.P14206166054447376143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214733 (2 * n + 1) + (A077999 (2 * n) - A110524 (2 * n))

end

end A087169.P14206166054447376143

namespace A087169

/-- `A214733(2*n+1)+A077999(2*n)-A110524(2*n)` -/
def P14206166054447376143.Spec : Prop :=
  ∀ n, P14206166054447376143.a n = A087169 n

end A087169

/-! ## A087169.P311928532946450580

`A077999(2*n+1)+A214733(2*n+1)+A110524(2*n+1)`
-/

namespace A087169.P311928532946450580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077999 (2 * n + 1) + (A214733 (2 * n + 1) + A110524 (2 * n + 1))

end

end A087169.P311928532946450580

namespace A087169

/-- `A077999(2*n+1)+A214733(2*n+1)+A110524(2*n+1)` -/
def P311928532946450580.Spec : Prop :=
  ∀ n, P311928532946450580.a n = A087169 n

end A087169

/-! ## A087169.P13819646649709738801

`A214733(2*n+1)^A178334(n)`
-/

namespace A087169.P13819646649709738801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214733 (2 * n + 1) : ℚ) ^ (A178334 n : ℤ)

end

end A087169.P13819646649709738801

namespace A087169

/-- `A214733(2*n+1)^A178334(n)` -/
def P13819646649709738801.Spec : Prop :=
  ∀ n, P13819646649709738801.a n = (A087169 n : ℚ)

end A087169

/-! ## A087169.P15388209076886140235

`A106852(A005843(n))^A178334(n)`
-/

namespace A087169.P15388209076886140235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106852 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A087169.P15388209076886140235

namespace A087169

/-- `A106852(A005843(n))^A178334(n)` -/
def P15388209076886140235.Spec : Prop :=
  ∀ n, P15388209076886140235.a n = (A087169 n : ℚ)

end A087169

/-! ## A087169.P16415087859062062148

`A103644(2*n)/A214733(2*n+1)`
-/

namespace A087169.P16415087859062062148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103644 (2 * n) : ℚ) / (A214733 (2 * n + 1) : ℚ)

end

end A087169.P16415087859062062148

namespace A087169

/-- `A103644(2*n)/A214733(2*n+1)` -/
def P16415087859062062148.Spec : Prop :=
  ∀ n, P16415087859062062148.a n = (A087169 n : ℚ)

end A087169

/-!
# A087170: Expansion of (1 + 4*x)/(1 + 7*x + 16*x^2).

The programs for A087170, the canonical program `A087170.P15242368904336287075` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087170 has offset 0).

The definition of A087170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087170.P15242368904336287075

`A106853(2*n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087170

/-- `A106853(2*n)` -/
def P15242368904336287075.Spec : Prop :=
  ∀ n, P15242368904336287075.a n = A087170 n

theorem P15242368904336287075.correct : P15242368904336287075.Spec := by
  intro n
  simp only [A087170]

end A087170

/-! ## A087170.P379511294429568575

`or(1, A106853(A005843(n)))`
-/

namespace A087170.P379511294429568575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A106853 (A005843 n).toNat)

end

end A087170.P379511294429568575

namespace A087170

/-- `or(1, A106853(A005843(n)))` -/
def P379511294429568575.Spec : Prop :=
  ∀ n, P379511294429568575.a n = A087170 n

end A087170

/-! ## A087170.P989939788086971280

`or(1, A106853(record[A014681(n)]))`
-/

namespace A087170.P989939788086971280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A106853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A087170.P989939788086971280

namespace A087170

/-- `or(1, A106853(record[A014681(n)]))` -/
def P989939788086971280.Spec : Prop :=
  ∀ n, P989939788086971280.a n = A087170 n

end A087170

/-! ## A087170.P5048580596958884372

`A106853(A005843(n))-A000007(n+1)`
-/

namespace A087170.P5048580596958884372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106853 (A005843 n).toNat - A000007 (n + 1)

end

end A087170.P5048580596958884372

namespace A087170

/-- `A106853(A005843(n))-A000007(n+1)` -/
def P5048580596958884372.Spec : Prop :=
  ∀ n, P5048580596958884372.a n = A087170 n

end A087170

/-! ## A087170.P17670419930350963178

`A106853(A004277(n))+n%A028310(n)`
-/

namespace A087170.P17670419930350963178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106853 (A004277 n).toNat + Int.tmod (n : ℤ) (A028310 n)

end

end A087170.P17670419930350963178

namespace A087170

/-- `A106853(A004277(n))+n%A028310(n)` -/
def P17670419930350963178.Spec : Prop :=
  ∀ n, P17670419930350963178.a n = A087170 n

end A087170

/-! ## A087170.P18340306032799642202

`A106853(A004277(n))/A003961(n+1)%2`
-/

namespace A087170.P18340306032799642202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106853 (A004277 n).toNat : ℚ) / (Int.tmod (A003961 (n + 1)) 2 : ℚ)

end

end A087170.P18340306032799642202

namespace A087170

/-- `A106853(A004277(n))/A003961(n+1)%2` -/
def P18340306032799642202.Spec : Prop :=
  ∀ n, P18340306032799642202.a n = (A087170 n : ℚ)

end A087170

/-! ## A087170.P18213340837337460437

`A106853(A004277(n))/A038500(n+1)%2`
-/

namespace A087170.P18213340837337460437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106853 (A004277 n).toNat : ℚ) / (Int.tmod (A038500 (n + 1)) 2 : ℚ)

end

end A087170.P18213340837337460437

namespace A087170

/-- `A106853(A004277(n))/A038500(n+1)%2` -/
def P18213340837337460437.Spec : Prop :=
  ∀ n, P18213340837337460437.a n = (A087170 n : ℚ)

end A087170

/-! ## A087170.P9918223343728763742

`A106853(A005843(n))^and(1, A000040(n+1))`
-/

namespace A087170.P9918223343728763742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106853 (A005843 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A087170.P9918223343728763742

namespace A087170

/-- `A106853(A005843(n))^and(1, A000040(n+1))` -/
def P9918223343728763742.Spec : Prop :=
  ∀ n, P9918223343728763742.a n = (A087170 n : ℚ)

end A087170

/-! ## A087170.P14383512905289042311

`A106853(A005843(n))^A000005(ceil(2/(n+1)))`
-/

namespace A087170.P14383512905289042311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106853 (A005843 n).toNat : ℚ) ^ (A000005 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A087170.P14383512905289042311

namespace A087170

/-- `A106853(A005843(n))^A000005(ceil(2/(n+1)))` -/
def P14383512905289042311.Spec : Prop :=
  ∀ n, P14383512905289042311.a n = (A087170 n : ℚ)

end A087170

/-! ## A087170.P5003156719084164670

`A348945(A001748(n+1))+A106853(A005843(n))`
-/

namespace A087170.P5003156719084164670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (A001748 (n + 1)).toNat + A106853 (A005843 n).toNat

end

end A087170.P5003156719084164670

namespace A087170

/-- `A348945(A001748(n+1))+A106853(A005843(n))` -/
def P5003156719084164670.Spec : Prop :=
  ∀ n, P5003156719084164670.a n = A087170 n

end A087170

/-! ## A087170.P2974770680930535253

`A106853(A005843(n))/A001221(A097443(n+1))`
-/

namespace A087170.P2974770680930535253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106853 (A005843 n).toNat : ℚ) / (A001221 (A097443 (n + 1)).toNat : ℚ)

end

end A087170.P2974770680930535253

namespace A087170

/-- `A106853(A005843(n))/A001221(A097443(n+1))` -/
def P2974770680930535253.Spec : Prop :=
  ∀ n, P2974770680930535253.a n = (A087170 n : ℚ)

end A087170

/-! ## A087170.P10512341746576789027

`A106853(n+n)%A072197(n)`
-/

namespace A087170.P10512341746576789027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106853 (n + n)) (A072197 n)

end

end A087170.P10512341746576789027

namespace A087170

/-- `A106853(n+n)%A072197(n)` -/
def P10512341746576789027.Spec : Prop :=
  ∀ n, P10512341746576789027.a n = A087170 n

end A087170

/-!
# A087171: Expansion of (1 + 5*x)/(1 + 9*x + 25*x^2).

The programs for A087171, the canonical program `A087171.P13001410456734255233` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087171 has offset 0).

The definition of A087171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087171.P13001410456734255233

`A106854(2*n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087171

/-- `A106854(2*n)` -/
def P13001410456734255233.Spec : Prop :=
  ∀ n, P13001410456734255233.a n = A087171 n

theorem P13001410456734255233.correct : P13001410456734255233.Spec := by
  intro n
  simp only [A087171]

end A087171

/-! ## A087171.P15103014000389584306

`A106854(A005843(n))+(n+1)²%(n+1)`
-/

namespace A087171.P15103014000389584306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106854 (A005843 n).toNat + (((n + 1) ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A087171.P15103014000389584306

namespace A087171

/-- `A106854(A005843(n))+(n+1)²%(n+1)` -/
def P15103014000389584306.Spec : Prop :=
  ∀ n, P15103014000389584306.a n = A087171 n

end A087171

/-! ## A087171.P2445006138999920968

`or(A000007(n), A106854(A005843(n)))`
-/

namespace A087171.P2445006138999920968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A106854 (A005843 n).toNat)

end

end A087171.P2445006138999920968

namespace A087171

/-- `or(A000007(n), A106854(A005843(n)))` -/
def P2445006138999920968.Spec : Prop :=
  ∀ n, P2445006138999920968.a n = A087171 n

end A087171

/-! ## A087171.P8274924421316061108

`A106854(A005843(n))+A000007(n+1)`
-/

namespace A087171.P8274924421316061108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106854 (A005843 n).toNat + A000007 (n + 1)

end

end A087171.P8274924421316061108

namespace A087171

/-- `A106854(A005843(n))+A000007(n+1)` -/
def P8274924421316061108.Spec : Prop :=
  ∀ n, P8274924421316061108.a n = A087171 n

end A087171

/-! ## A087171.P5695034972264126057

`A106854(A005843(n))+char[A022010(n+1)]`
-/

namespace A087171.P5695034972264126057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106854 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A087171.P5695034972264126057

namespace A087171

/-- `A106854(A005843(n))+char[A022010(n+1)]` -/
def P5695034972264126057.Spec : Prop :=
  ∀ n, P5695034972264126057.a n = A087171 n

end A087171

/-! ## A087171.P16760135039777183248

`A106854(A005843(n))/A001222(A007520(n+1))`
-/

namespace A087171.P16760135039777183248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106854 (A005843 n).toNat : ℚ) / (A001222 (A007520 (n + 1)).toNat : ℚ)

end

end A087171.P16760135039777183248

namespace A087171

/-- `A106854(A005843(n))/A001222(A007520(n+1))` -/
def P16760135039777183248.Spec : Prop :=
  ∀ n, P16760135039777183248.a n = (A087171 n : ℚ)

end A087171

/-! ## A087171.P1326976683673011641

`A106854(A005843(n))/A014963(A050703(n+1))`
-/

namespace A087171.P1326976683673011641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106854 (A005843 n).toNat : ℚ) / (A014963 (A050703 (n + 1)).toNat : ℚ)

end

end A087171.P1326976683673011641

namespace A087171

/-- `A106854(A005843(n))/A014963(A050703(n+1))` -/
def P1326976683673011641.Spec : Prop :=
  ∀ n, P1326976683673011641.a n = (A087171 n : ℚ)

end A087171

/-! ## A087171.P11137612865483524355

`A106854(A005843(n))^A178334(n)`
-/

namespace A087171.P11137612865483524355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106854 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A087171.P11137612865483524355

namespace A087171

/-- `A106854(A005843(n))^A178334(n)` -/
def P11137612865483524355.Spec : Prop :=
  ∀ n, P11137612865483524355.a n = (A087171 n : ℚ)

end A087171

/-! ## A087171.P14615134903380444098

`A106854(A005843(n))/A033676(A081256(n+3))`
-/

namespace A087171.P14615134903380444098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106854 (A005843 n).toNat : ℚ) / (A033676 (A081256 (n + 3)).toNat : ℚ)

end

end A087171.P14615134903380444098

namespace A087171

/-- `A106854(A005843(n))/A033676(A081256(n+3))` -/
def P14615134903380444098.Spec : Prop :=
  ∀ n, P14615134903380444098.a n = (A087171 n : ℚ)

end A087171

/-!
# A087172: Greatest Fibonacci number that does not exceed n.

The programs for A087172, the canonical program `A087172.P3483419323091950853` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087172 has offset 1).

The definition of A087172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087172.P8706523884390042324

`eq[1, round(a(floor(n/ϕ)))]-n` with `a(0)=0, a(1)=1, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A087172.P8706523884390042324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A087172.P8706523884390042324

namespace A087172

/-- `eq[1, round(a(floor(n/ϕ)))]-n` -/
def P8706523884390042324.Spec : Prop :=
  ∀ n, P8706523884390042324.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P1344872167515140317

`A099267(a(floor(n/ϕ)))` with `a(0)=1`
-/

namespace A087172.P1344872167515140317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099267 (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat).toNat

end

end A087172.P1344872167515140317

namespace A087172

/-- `A099267(a(floor(n/ϕ)))` -/
def P1344872167515140317.Spec : Prop :=
  ∀ n, P1344872167515140317.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P16628123263909493104

`2-A194029(n+1)+n`
-/

namespace A087172.P16628123263909493104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194029 (n + 1) + (n : ℤ)

end

end A087172.P16628123263909493104

namespace A087172

/-- `2-A194029(n+1)+n` -/
def P16628123263909493104.Spec : Prop :=
  ∀ n, P16628123263909493104.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P17015018391791916563

`A005206(A246104(n))`
-/

namespace A087172.P17015018391791916563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A246104 n).toNat

end

end A087172.P17015018391791916563

namespace A087172

/-- `A005206(A246104(n))` -/
def P17015018391791916563.Spec : Prop :=
  ∀ n, P17015018391791916563.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P4858031407164542954

`A000045(A130233(n+1))`
-/

namespace A087172.P4858031407164542954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 (n + 1)).toNat

end

end A087172.P4858031407164542954

namespace A087172

/-- `A000045(A130233(n+1))` -/
def P4858031407164542954.Spec : Prop :=
  ∀ n, P4858031407164542954.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P18337145192870163597

`A256654(A005206(n+2))`
-/

namespace A087172.P18337145192870163597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A005206 (n + 2)).toNat

end

end A087172.P18337145192870163597

namespace A087172

/-- `A256654(A005206(n+2))` -/
def P18337145192870163597.Spec : Prop :=
  ∀ n, P18337145192870163597.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P17748068178500024277

`A000045(∑[A192687(n)]+1)`
-/

namespace A087172.P17748068178500024277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A087172.P17748068178500024277

namespace A087172

/-- `A000045(∑[A192687(n)]+1)` -/
def P17748068178500024277.Spec : Prop :=
  ∀ n, P17748068178500024277.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P16618927689856599403

`A000045(1+A072649(n+1))`
-/

namespace A087172.P16618927689856599403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 + A072649 (n + 1)).toNat

end

end A087172.P16618927689856599403

namespace A087172

/-- `A000045(1+A072649(n+1))` -/
def P16618927689856599403.Spec : Prop :=
  ∀ n, P16618927689856599403.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P10061786145257244295

`A000045(A108852(n+1)-1)`
-/

namespace A087172.P10061786145257244295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 (n + 1) - 1).toNat

end

end A087172.P10061786145257244295

namespace A087172

/-- `A000045(A108852(n+1)-1)` -/
def P10061786145257244295.Spec : Prop :=
  ∀ n, P10061786145257244295.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P6317736734779148819

`A053602(2*A130233(n+1))`
-/

namespace A087172.P6317736734779148819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A130233 (n + 1)).toNat

end

end A087172.P6317736734779148819

namespace A087172

/-- `A053602(2*A130233(n+1))` -/
def P6317736734779148819.Spec : Prop :=
  ∀ n, P6317736734779148819.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P5068676014904905861

`A246104(n)-A130312(n+1)`
-/

namespace A087172.P5068676014904905861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 n - A130312 (n + 1)

end

end A087172.P5068676014904905861

namespace A087172

/-- `A246104(n)-A130312(n+1)` -/
def P5068676014904905861.Spec : Prop :=
  ∀ n, P5068676014904905861.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P12476248244915968472

`A000045(round(log2(A033015(n+1))))`
-/

namespace A087172.P12476248244915968472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (A033015 (n + 1) : ℝ))).toNat

end

end A087172.P12476248244915968472

namespace A087172

/-- `A000045(round(log2(A033015(n+1))))` -/
def P12476248244915968472.Spec : Prop :=
  ∀ n, P12476248244915968472.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P16376636254537454583

`A000045(∑[A010056(n+1)]+1)`
-/

namespace A087172.P16376636254537454583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A087172.P16376636254537454583

namespace A087172

/-- `A000045(∑[A010056(n+1)]+1)` -/
def P16376636254537454583.Spec : Prop :=
  ∀ n, P16376636254537454583.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P14531636522118800518

`A000045(∑[char[∑[A000045(n)]]]+1)`
-/

namespace A087172.P14531636522118800518
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A087172.P14531636522118800518

namespace A087172

/-- `A000045(∑[char[∑[A000045(n)]]]+1)` -/
def P14531636522118800518.Spec : Prop :=
  ∀ n, P14531636522118800518.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P17383039653038425080

`A000071(A072649(n+1)+1)+1`
-/

namespace A087172.P17383039653038425080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A072649 (n + 1) + 1).toNat + 1

end

end A087172.P17383039653038425080

namespace A087172

/-- `A000071(A072649(n+1)+1)+1` -/
def P17383039653038425080.Spec : Prop :=
  ∀ n, P17383039653038425080.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P3483419323091950853

`A082524(A003849(n+2)+n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087172

/-- `A082524(A003849(n+2)+n+1)` -/
def P3483419323091950853.Spec : Prop :=
  ∀ n, P3483419323091950853.a n = A087172 (n + 1)

theorem P3483419323091950853.correct : P3483419323091950853.Spec := by
  intro n
  simp only [A087172, Nat.add_sub_cancel]

end A087172

/-! ## A087172.P4370611755725151791

`A358143(n+2)-A358120(n+1)`
-/

namespace A087172.P4370611755725151791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358143 (n + 2) - A358120 (n + 1)

end

end A087172.P4370611755725151791

namespace A087172

/-- `A358143(n+2)-A358120(n+1)` -/
def P4370611755725151791.Spec : Prop :=
  ∀ n, P4370611755725151791.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P6636003342101526778

`2-A342297(A342297(n+2))+n`
-/

namespace A087172.P6636003342101526778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A342297 (A342297 (n + 2)).toNat + (n : ℤ)

end

end A087172.P6636003342101526778

namespace A087172

/-- `2-A342297(A342297(n+2))+n` -/
def P6636003342101526778.Spec : Prop :=
  ∀ n, P6636003342101526778.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P3908663925463101310

`1-A066628(n+1)+n`
-/

namespace A087172.P3908663925463101310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066628 (n + 1) + (n : ℤ)

end

end A087172.P3908663925463101310

namespace A087172

/-- `1-A066628(n+1)+n` -/
def P3908663925463101310.Spec : Prop :=
  ∀ n, P3908663925463101310.a n = A087172 (n + 1)

end A087172

/-! ## A087172.P8501271262981705570

`A082524(A065475(n+1))`
-/

namespace A087172.P8501271262981705570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082524 (A065475 (n + 1)).toNat

end

end A087172.P8501271262981705570

namespace A087172

/-- `A082524(A065475(n+1))` -/
def P8501271262981705570.Spec : Prop :=
  ∀ n, P8501271262981705570.a n = A087172 (n + 1)

end A087172

/-!
# A087173: Smallest prime factor of n-th partition number.

The programs for A087173, there is no canonical definition to state claims against.
-/

/-! ## A087173.P16719618534295693997

`A020639(A000041(n+1)%A297570(n))`
-/

namespace A087173.P16719618534295693997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A000041 (n + 1)) (A297570 n)).toNat

end

end A087173.P16719618534295693997

/-! ## A087173.P1592039510788245564

`A020639(record[A035363(n)]%A244353(n+1))`
-/

namespace A087173.P1592039510788245564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A244353 (n + 1))).toNat

end

end A087173.P1592039510788245564

/-! ## A087173.P1972892116682141276

`A020639(∪[A147817(2*n+7), A000041(n+1)])`
-/

namespace A087173.P1972892116682141276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147817 (2 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A087173.P1972892116682141276

/-!
# A087175: Number of distinct primes dividing the n-th partition number.

The programs for A087175, there is no canonical definition to state claims against.
-/

/-! ## A087175.P10133341124540247672

`A000196(∑{p}[A278241(n+1), #])`
-/

namespace A087175.P10133341124540247672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A087175.P10133341124540247672

/-! ## A087175.P5156954949280271865

`∑{p}[A278241(n+1), A001221(#)]`
-/

namespace A087175.P5156954949280271865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A087175.P5156954949280271865

/-! ## A087175.P17218548401514894721

`∑{p}[A278241(n+1), A001222(#)]`
-/

namespace A087175.P17218548401514894721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A087175.P17218548401514894721

/-! ## A087175.P7839160985585972955

`∑{p}[A278241(n+1), A003415(#)]`
-/

namespace A087175.P7839160985585972955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A087175.P7839160985585972955

/-! ## A087175.P8502956862648018759

`∑{p}[A278241(n+1), A032741(#)]`
-/

namespace A087175.P8502956862648018759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032741 p

end

end A087175.P8502956862648018759

/-! ## A087175.P892797443080779588

`∑{p}[A278241(n+1), A032742(#)]`
-/

namespace A087175.P892797443080779588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032742 p

end

end A087175.P892797443080779588

/-! ## A087175.P15948251718854759232

`∑{p}[A278241(n+1), A046597(#)]`
-/

namespace A087175.P15948251718854759232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A046597 p

end

end A087175.P15948251718854759232

/-! ## A087175.P8081833094335635140

`∑{p}[A278241(n+1), A054024(#)]`
-/

namespace A087175.P8081833094335635140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A054024 p

end

end A087175.P8081833094335635140

/-! ## A087175.P8050608586100100921

`∑{p}[A278241(n+1), A078898(#)]`
-/

namespace A087175.P8050608586100100921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A078898 p

end

end A087175.P8050608586100100921

/-! ## A087175.P16836843071117274115

`∑{p}[A278241(n+1), A090329(#)]`
-/

namespace A087175.P16836843071117274115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A090329 p

end

end A087175.P16836843071117274115

/-! ## A087175.P7153829009848926381

`∑{e}[A278241(n+1), A057427(#)]`
-/

namespace A087175.P7153829009848926381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057427 (Nat.factorization (f1 n).natAbs p)

end

end A087175.P7153829009848926381

/-! ## A087175.P14470337743242722560

`∑{e}[A278241(n+1), A008836(#²)]`
-/

namespace A087175.P14470337743242722560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008836 (Nat.factorization (f1 n).natAbs p ^ 2)

end

end A087175.P14470337743242722560

/-! ## A087175.P11232243807115355717

`∑{e}[A278241(n+1), gcd(#, A008836(n+1))]`
-/

namespace A087175.P11232243807115355717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.gcd (Nat.factorization (f1 n).natAbs p : ℤ) (A008836 (n + 1))

end

end A087175.P11232243807115355717

/-! ## A087175.P5587636965499547962

`∑{p}[A278241(n+1), A000034(A034555(#))]`
-/

namespace A087175.P5587636965499547962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000034 (A034555 p).toNat

end

end A087175.P5587636965499547962

/-! ## A087175.P5850669048039359453

`∑{p}[A278241(n+1), A000034(A170772(#))]`
-/

namespace A087175.P5850669048039359453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000034 (A170772 p).toNat

end

end A087175.P5850669048039359453

/-! ## A087175.P5856137755172446462

`∑{p}[A278241(n+1), A000034(A278241(#))]`
-/

namespace A087175.P5856137755172446462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000034 (A278241 p).toNat

end

end A087175.P5856137755172446462

/-! ## A087175.P17083036136445524582

`∑{e}[A278241(n+1), A032742(A014963(#))]`
-/

namespace A087175.P17083036136445524582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032742 (A014963 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A087175.P17083036136445524582

/-! ## A087175.P3702780005369381928

`∑{e}[A278241(n+1), A151552(A151552(#))]`
-/

namespace A087175.P3702780005369381928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A151552 (A151552 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A087175.P3702780005369381928

/-!
# A087177: Number of even partition numbers <= P(n), where P=A000041.

The programs for A087177, there is no canonical definition to state claims against.
-/

/-! ## A087177.P508624754446468178

`n+1-A071754(n)`
-/

namespace A087177.P508624754446468178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - A071754 n)

end

end A087177.P508624754446468178

/-! ## A087177.P2810767073862225619

`∑[1-A040051(n)]`
-/

namespace A087177.P2810767073862225619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087177.P2810767073862225619

/-! ## A087177.P7248772617581691082

`∑[round(atan(A278478(n)))]`
-/

namespace A087177.P7248772617581691082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A278478 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087177.P7248772617581691082

/-! ## A087177.P728961056148546913

`∑[round(atan(A355676(n)))]`
-/

namespace A087177.P728961056148546913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A355676 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087177.P728961056148546913

/-! ## A087177.P12363425552390785050

`∑[char[A001560(n+1)]]`
-/

namespace A087177.P12363425552390785050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087177.P12363425552390785050

/-! ## A087177.P9962240893176873263

`∑[(A000700(n)+1)%2]`
-/

namespace A087177.P9962240893176873263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087177.P9962240893176873263

/-! ## A087177.P12806001436479270773

`∑[1-char[A052002(n+1)]]`
-/

namespace A087177.P12806001436479270773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087177.P12806001436479270773

/-! ## A087177.P11821743903210213066

`∑[A000065(n)%2]`
-/

namespace A087177.P11821743903210213066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087177.P11821743903210213066

/-! ## A087177.P4895963203929842264

`∑[log2(gcd(2, A000041(n)))]`
-/

namespace A087177.P4895963203929842264
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A000041 n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087177.P4895963203929842264

/-! ## A087177.P17509415987872290246

`∑[val(A001255(n)+2, 2)]`
-/

namespace A087177.P17509415987872290246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001255 n + 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087177.P17509415987872290246

/-! ## A087177.P5087585774642673781

`A060401(n+1)%A071754(n)`
-/

namespace A087177.P5087585774642673781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A071754 n)

end

end A087177.P5087585774642673781

/-!
# A087178: ((1/2)/p^2)*(T(p)-1) where p runs through the prime >= 5 and T(k) is the k-th central trinomial number (A002426).

The programs for A087178, there is no canonical definition to state claims against.
-/

/-! ## A087178.P2818848275897649154

`A358451(A065091(n+2))/A065091(n+2)`
-/

namespace A087178.P2818848275897649154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358451 (A065091 (n + 2)).toNat : ℚ) / (A065091 (n + 2) : ℚ)

end

end A087178.P2818848275897649154

/-! ## A087178.P7835317014005892244

`A358451(A000040(n+3))/A000040(n+3)`
-/

namespace A087178.P7835317014005892244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358451 (A000040 (n + 3)).toNat : ℚ) / (A000040 (n + 3) : ℚ)

end

end A087178.P7835317014005892244

/-! ## A087178.P6674647312530072549

`A358451(A006005(n+3))/A006005(n+3)`
-/

namespace A087178.P6674647312530072549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358451 (A006005 (n + 3)).toNat : ℚ) / (A006005 (n + 3) : ℚ)

end

end A087178.P6674647312530072549

/-!
# A087179: a(n) = (...(((x1^x2)^x3)^x4)^...) where x1,x2,... are the exponents in the prime factorization of n, a(1) = 0.

The programs for A087179, there is no canonical definition to state claims against.
-/

/-! ## A087179.P11729255020928465324

`A067029(n+1)^A005361(A028234(n+1))`
-/

namespace A087179.P11729255020928465324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067029 (n + 1) : ℚ) ^ (A005361 (A028234 (n + 1)).toNat : ℤ)

end

end A087179.P11729255020928465324

/-! ## A087179.P3986265190289637958

`A067029(n+1)^A000005(A028234(A003557(n+1)))`
-/

namespace A087179.P3986265190289637958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067029 (n + 1) : ℚ) ^ (A000005 (A028234 (A003557 (n + 1)).toNat).toNat : ℤ)

end

end A087179.P3986265190289637958

/-! ## A087179.P13594047688725789245

`A290109(n+1)%A002409(n)`
-/

namespace A087179.P13594047688725789245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290109 (n + 1)) (A002409 n)

end

end A087179.P13594047688725789245

/-! ## A087179.P12448335434144100283

`A290109(n+1)-A004530(A002378(n))`
-/

namespace A087179.P12448335434144100283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290109 (n + 1) - A004530 (A002378 n).toNat

end

end A087179.P12448335434144100283

/-! ## A087179.P3344244099056878653

`A076511(A088377(n+1))*A290109(n+1)`
-/

namespace A087179.P3344244099056878653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (A088377 (n + 1)).toNat * A290109 (n + 1)

end

end A087179.P3344244099056878653

/-! ## A087179.P2384085816858597619

`and(A070198(n), A290109(n+1))`
-/

namespace A087179.P2384085816858597619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070198 n) (A290109 (n + 1))

end

end A087179.P2384085816858597619

/-! ## A087179.P15590705108121328711

`and(A079782(n+1), A290109(n+1))`
-/

namespace A087179.P15590705108121328711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079782 (n + 1)) (A290109 (n + 1))

end

end A087179.P15590705108121328711

/-! ## A087179.P18248794045377378876

`and(A083685(n+1), A290109(n+1))`
-/

namespace A087179.P18248794045377378876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083685 (n + 1)) (A290109 (n + 1))

end

end A087179.P18248794045377378876

/-! ## A087179.P6166014755445705454

`and(A005665(n), A290109(n+1))`
-/

namespace A087179.P6166014755445705454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005665 n) (A290109 (n + 1))

end

end A087179.P6166014755445705454

/-! ## A087179.P9784285486945258009

`A001221(A001316(n²))*A290109(n+1)`
-/

namespace A087179.P9784285486945258009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 (n ^ 2)).toNat * A290109 (n + 1)

end

end A087179.P9784285486945258009

/-! ## A087179.P6775629074314007486

`and(A268099(n), A290109(n+1))`
-/

namespace A087179.P6775629074314007486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A268099 n) (A290109 (n + 1))

end

end A087179.P6775629074314007486

/-! ## A087179.P11300404005510724980

`and(A070199(n+1), A290109(n+1))`
-/

namespace A087179.P11300404005510724980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070199 (n + 1)) (A290109 (n + 1))

end

end A087179.P11300404005510724980

/-! ## A087179.P8130811405067910664

`and(1, A080371(n+1))*A290109(n+1)`
-/

namespace A087179.P8130811405067910664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080371 (n + 1)) * A290109 (n + 1)

end

end A087179.P8130811405067910664

/-! ## A087179.P18067476802601376039

`(A000217(n²)*A290109(n+1))%(n+1)`
-/

namespace A087179.P18067476802601376039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n ^ 2) * A290109 (n + 1)) (n + 1 : ℤ)

end

end A087179.P18067476802601376039

/-! ## A087179.P11237832256192321722

`and(1, A083943(n)²)*A290109(n+1)`
-/

namespace A087179.P11237832256192321722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A083943 n ^ 2) * A290109 (n + 1)

end

end A087179.P11237832256192321722

/-! ## A087179.P10758719530549645544

`and(1, A116362(n)²)*A290109(n+1)`
-/

namespace A087179.P10758719530549645544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A116362 n ^ 2) * A290109 (n + 1)

end

end A087179.P10758719530549645544

/-! ## A087179.P913554014269030854

`and(1, A140966(n)²)*A290109(n+1)`
-/

namespace A087179.P913554014269030854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A140966 n ^ 2) * A290109 (n + 1)

end

end A087179.P913554014269030854

/-! ## A087179.P10372405938373338685

`and(1, A088041(n+1)²)*A290109(n+1)`
-/

namespace A087179.P10372405938373338685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A088041 (n + 1) ^ 2) * A290109 (n + 1)

end

end A087179.P10372405938373338685

/-! ## A087179.P8903909399227437069

`and(A024036(n), A290109(n+1))`
-/

namespace A087179.P8903909399227437069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A290109 (n + 1))

end

end A087179.P8903909399227437069

/-! ## A087179.P4284804297856677829

`and(A000225(2*n), A290109(n+1))`
-/

namespace A087179.P4284804297856677829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n)) (A290109 (n + 1))

end

end A087179.P4284804297856677829

/-!
# A087180: Number partition numbers <= P(n) of the form 3*k (P = A000041).

The programs for A087180, there is no canonical definition to state claims against.
-/

/-! ## A087180.P3859355109147537884

`∑[floor(acot(A068907(n)))]`
-/

namespace A087180.P3859355109147537884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A068907 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087180.P3859355109147537884

/-! ## A087180.P10736438191769428051

`∑[char[A083214(n+1)]]`
-/

namespace A087180.P10736438191769428051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083214 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087180.P10736438191769428051

/-! ## A087180.P12523146242749732788

`∑[4%gcd(3, A000041(n))]`
-/

namespace A087180.P12523146242749732788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 % Int.gcd 3 (A000041 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087180.P12523146242749732788

/-! ## A087180.P4019472433272187661

`∑[C(dr(A299473(n)), 9)]`
-/

namespace A087180.P4019472433272187661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.digitalRoot (A299473 n)) 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087180.P4019472433272187661

/-! ## A087180.P8731516005216818078

`∑[val(dr(A001255(n)), 9)]`
-/

namespace A087180.P8731516005216818078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (A001255 n)) 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087180.P8731516005216818078

/-! ## A087180.P14373321046256965597

`∑[1-A000041(n%(n+1))²%3]`
-/

namespace A087180.P14373321046256965597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A000041 (n % (n + 1)) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087180.P14373321046256965597

/-! ## A087180.P4414582843411313334

`∑[C(A000065(n), 2)%3]`
-/

namespace A087180.P4414582843411313334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000065 n).toNat 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087180.P4414582843411313334

/-!
# A087181: Number partition numbers <= P(n) of the form 3*k+1 (P = A000041).

The programs for A087181, there is no canonical definition to state claims against.
-/

/-! ## A087181.P11451092938115370079

`∑[A068907(n)%2]`
-/

namespace A087181.P11451092938115370079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068907 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087181.P11451092938115370079

/-! ## A087181.P6186890064736303632

`∑[char[A237276(n+1)]]`
-/

namespace A087181.P6186890064736303632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237276 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087181.P6186890064736303632

/-! ## A087181.P2514989491656870915

`∑[(A004088(n)%3)%2]`
-/

namespace A087181.P2514989491656870915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A004088 n) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087181.P2514989491656870915

/-! ## A087181.P17147651954918809806

`∑[(A004089(n)%3)%2]`
-/

namespace A087181.P17147651954918809806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A004089 n) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087181.P17147651954918809806

/-! ## A087181.P896820071488541314

`∑[(A000041(n)%3)%2]`
-/

namespace A087181.P896820071488541314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000041 n) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087181.P896820071488541314

/-! ## A087181.P3670860602215307825

`∑[floor(acot(A000065(n)%3))]`
-/

namespace A087181.P3670860602215307825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod (A000065 n) 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087181.P3670860602215307825

/-! ## A087181.P14345823198405775238

`∑[C(3, dr(A299473(n)))]`
-/

namespace A087181.P14345823198405775238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (SequenceMachineLib.digitalRoot (A299473 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087181.P14345823198405775238

/-! ## A087181.P14805185918117860020

`∑[val(A299474(n)+2, 6)]`
-/

namespace A087181.P14805185918117860020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299474 n + 2).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087181.P14805185918117860020

/-! ## A087181.P18176209829392238160

`∑[(A266821(n)%3)%2]`
-/

namespace A087181.P18176209829392238160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A266821 n) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087181.P18176209829392238160

/-! ## A087181.P3696597616690874630

`∑[(A182819(n)%3)%2]`
-/

namespace A087181.P3696597616690874630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A182819 n) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087181.P3696597616690874630

/-! ## A087181.P13395851144801863959

`∑[A086737(n)%3]`
-/

namespace A087181.P13395851144801863959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086737 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087181.P13395851144801863959

/-!
# A087182: Number partition numbers <= P(n) of the form 3*k+2 (P = A000041).

The programs for A087182, there is no canonical definition to state claims against.
-/

/-! ## A087182.P1337566820215499573

`∑[C(A068907(n), 2)]`
-/

namespace A087182.P1337566820215499573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068907 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087182.P1337566820215499573

/-! ## A087182.P16939971393568977692

`∑[char[A237277(n+1)]]`
-/

namespace A087182.P16939971393568977692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237277 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087182.P16939971393568977692

/-! ## A087182.P10548759823346462370

`∑[A000040(n+1)%A068907(n)!]`
-/

namespace A087182.P10548759823346462370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (Nat.factorial (A068907 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087182.P10548759823346462370

/-! ## A087182.P11947162347145400709

`∑[(A000065(n)%3)%2]`
-/

namespace A087182.P11947162347145400709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000065 n) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087182.P11947162347145400709

/-! ## A087182.P14506298301698914540

`∑[floor(∑[A002865(n)]%3/2)]`
-/

namespace A087182.P14506298301698914540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087182.P14506298301698914540

/-! ## A087182.P17116997928017117236

`∑[val(dr(A299473(n)), 2)]`
-/

namespace A087182.P17116997928017117236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (A299473 n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087182.P17116997928017117236

/-! ## A087182.P1490707467245365333

`∑[A355389(n)%3]`
-/

namespace A087182.P1490707467245365333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355389 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087182.P1490707467245365333

/-! ## A087182.P10357497186318597111

`∑[C(A000041(n), 2)%3]`
-/

namespace A087182.P10357497186318597111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000041 n).toNat 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087182.P10357497186318597111

/-! ## A087182.P5155316102338416348

`∑[C(A133042(n)%3, 2)]`
-/

namespace A087182.P5155316102338416348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A133042 n) 3).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087182.P5155316102338416348

/-!
# A087183: Partition numbers of the form 3*k.

The programs for A087183, there is no canonical definition to state claims against.
-/

/-! ## A087183.P15467686003168884090

`A000041(A083214(n+1))`
-/

namespace A087183.P15467686003168884090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A083214 (n + 1)).toNat

end

end A087183.P15467686003168884090

/-! ## A087183.P4595421334329872650

`3*A213365(n+1)`
-/

namespace A087183.P4595421334329872650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A213365 (n + 1)

end

end A087183.P4595421334329872650

/-! ## A087183.P9116023897974399236

`A000041(eq[0, A068907(n)])`
-/

namespace A087183.P9116023897974399236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087183.P9116023897974399236

/-! ## A087183.P16458166750632779400

`A000041(lt[A068907(n), 1])`
-/

namespace A087183.P16458166750632779400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A087183.P16458166750632779400

/-! ## A087183.P145496743475051485

`A000041(eq[0, A000041(n)%3])`
-/

namespace A087183.P145496743475051485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087183.P145496743475051485

/-! ## A087183.P11777737594098815171

`A000041(eq[3, gcd(3, A000041(n))])`
-/

namespace A087183.P11777737594098815171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087183.P11777737594098815171

/-! ## A087183.P14769753797870459359

`A000041(eq[9, dr(A299473(n))])`
-/

namespace A087183.P14769753797870459359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A299473 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087183.P14769753797870459359

/-! ## A087183.P16633241820291929336

`A000041(lt[lcm(3, A000041(n)), A000041(n+1)])`
-/

namespace A087183.P16633241820291929336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A000041 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A087183.P16633241820291929336

/-! ## A087183.P9986131295640677247

`A000041(lt[A000041(n)²%3, 1])`
-/

namespace A087183.P9986131295640677247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n ^ 2) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A087183.P9986131295640677247

/-!
# A087184: Partition numbers of the form 3*k+1.

The programs for A087184, there is no canonical definition to state claims against.
-/

/-! ## A087184.P10850503859399604009

`A000041(A237276(n+1))`
-/

namespace A087184.P10850503859399604009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A237276 (n + 1)).toNat

end

end A087184.P10850503859399604009

/-! ## A087184.P2193564971099501448

`A000041(eq[1, A068907(n)])`
-/

namespace A087184.P2193564971099501448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087184.P2193564971099501448

/-! ## A087184.P1012735093119075612

`A000041(eq[1, A000041(n)%3])`
-/

namespace A087184.P1012735093119075612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087184.P1012735093119075612

/-! ## A087184.P7353900786926838211

`A000041(eq[3, dr(A299473(n))])`
-/

namespace A087184.P7353900786926838211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A299473 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087184.P7353900786926838211

/-! ## A087184.P5797663150748589852

`A000041(eq[3, dr(3*A000041(n))])`
-/

namespace A087184.P5797663150748589852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087184.P5797663150748589852

/-! ## A087184.P1193189380329545384

`A035363(eq[1, A035363(n)%3])`
-/

namespace A087184.P1193189380329545384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035363 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087184.P1193189380329545384

/-!
# A087185: Partition numbers of the form 3*k+2.

The programs for A087185, there is no canonical definition to state claims against.
-/

/-! ## A087185.P18011810303393484722

`A000041(A237277(n+1))`
-/

namespace A087185.P18011810303393484722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A237277 (n + 1)).toNat

end

end A087185.P18011810303393484722

/-! ## A087185.P2503238230624802275

`A000041(lt[1, A068907(n)])`
-/

namespace A087185.P2503238230624802275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A087185.P2503238230624802275

/-! ## A087185.P15695080543533575240

`A000041(eq[2, A068907(n)])`
-/

namespace A087185.P15695080543533575240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087185.P15695080543533575240

/-! ## A087185.P3725385591607360525

`A000041(eq[1, A000065(n)%3])`
-/

namespace A087185.P3725385591607360525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087185.P3725385591607360525

/-! ## A087185.P17119410452596414542

`A000041(lt[1, A000041(n)%3])`
-/

namespace A087185.P17119410452596414542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A087185.P17119410452596414542

/-! ## A087185.P15046253504357912968

`A000041(eq[2, dr(A000041(n))%3])`
-/

namespace A087185.P15046253504357912968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000041 n) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087185.P15046253504357912968

/-! ## A087185.P11580256104116784593

`A000041(eq[3, dr(6*A000041(n))])`
-/

namespace A087185.P11580256104116784593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (6 * A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087185.P11580256104116784593

/-!
# A087186: Q(p)/p where p runs through the primes and Q(k) is the k-th central quadrinomial coefficient (A005190).

The programs for A087186, there is no canonical definition to state claims against.
-/

/-! ## A087186.P17869408483447061291

`A005190(A000040(n+1))/A000040(n+1)`
-/

namespace A087186.P17869408483447061291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005190 (A000040 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A087186.P17869408483447061291

/-! ## A087186.P1318807140188855209

`A005190(A057448(n+1))/A057448(n+1)`
-/

namespace A087186.P1318807140188855209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005190 (A057448 (n + 1)).toNat : ℚ) / (A057448 (n + 1) : ℚ)

end

end A087186.P1318807140188855209

/-! ## A087186.P4548345496195870935

`A005190(A095320(n+1))/A095320(n+1)`
-/

namespace A087186.P4548345496195870935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005190 (A095320 (n + 1)).toNat : ℚ) / (A095320 (n + 1) : ℚ)

end

end A087186.P4548345496195870935

/-! ## A087186.P17946218215554105380

`A005190(A008864(n+1)-1)/Δ[A007504(n)]`
-/

namespace A087186.P17946218215554105380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005190 (A008864 (n + 1) - 1).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A087186.P17946218215554105380

/-!
# A087187: Number of ways to write n = i*p + j*q, where (p,q) is a twin prime pair and i,j>0.

The programs for A087187, there is no canonical definition to state claims against.
-/

/-! ## A087187.P10853332981748186890

`A037824(A185421(n+2))`
-/

namespace A087187.P10853332981748186890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A185421 (n + 2)).toNat

end

end A087187.P10853332981748186890

/-! ## A087187.P14410151390881503309

`A102679(A184457(n+1)%A136112(n+1)²)`
-/

namespace A087187.P14410151390881503309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (Int.tmod (A184457 (n + 1)) (A136112 (n + 1) ^ 2)).toNat

end

end A087187.P14410151390881503309

/-! ## A087187.P14266692225088809609

`A037822(A387632(n+1))`
-/

namespace A087187.P14266692225088809609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (A387632 (n + 1)).toNat

end

end A087187.P14266692225088809609

/-! ## A087187.P11258531908309206569

`round(A223708(A029511(n+1)+1)/7)`
-/

namespace A087187.P11258531908309206569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A223708 (A029511 (n + 1) + 1).toNat : ℚ) / 7)

end

end A087187.P11258531908309206569

/-! ## A087187.P11559234402186197124

`floor(A038722(n+1)/A338596(n+1))`
-/

namespace A087187.P11559234402186197124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038722 (n + 1) : ℚ) / (A338596 (n + 1) : ℚ)⌋

end

end A087187.P11559234402186197124

/-!
# A087188: Number of partitions of n into distinct squarefree parts.

The programs for A087188, there is no canonical definition to state claims against.
-/

/-! ## A087188.P7560065632722360550

`A280128(abs(1-n))+A280128(n)`
-/

namespace A087188.P7560065632722360550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280128 |1 - (n : ℤ)|.toNat + A280128 n

end

end A087188.P7560065632722360550

/-! ## A087188.P5438678673259745

`A358025(n)+A185284(A001996(n))`
-/

namespace A087188.P5438678673259745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358025 n + A185284 (A001996 n).toNat

end

end A087188.P5438678673259745

/-! ## A087188.P17528008850060195049

`A371737(A184964(n))+A358025(n)`
-/

namespace A087188.P17528008850060195049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371737 (A184964 n).toNat + A358025 n

end

end A087188.P17528008850060195049

/-! ## A087188.P2355035906206276435

`A358025(n)+A151667(A161409(2*(n+1)))`
-/

namespace A087188.P2355035906206276435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358025 n + A151667 (A161409 (2 * (n + 1))).toNat

end

end A087188.P2355035906206276435

/-! ## A087188.P17190951460034967486

`A358025(A007966(∑[2*n]))`
-/

namespace A087188.P17190951460034967486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358025 (A007966 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A087188.P17190951460034967486

/-!
# A087190: Numbers n such that n^4-(n+1)^3 is prime.

The programs for A087190, there is no canonical definition to state claims against.
-/

/-! ## A087190.P11666629224320175830

`ceil(sqrt(sqrt(A087191(n+1))))`
-/

namespace A087190.P11666629224320175830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A087191 (n + 1) : ℝ))⌉

end

end A087190.P11666629224320175830

/-!
# A087191: Primes of the form k^4 - (k+1)^3.

The programs for A087191, there is no canonical definition to state claims against.
-/

/-! ## A087191.P13908242512989759229

`A178617(A087190(n+1))`
-/

namespace A087191.P13908242512989759229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178617 (A087190 (n + 1)).toNat

end

end A087191.P13908242512989759229

/-! ## A087191.P15754038093453851992

`p?[n^4-Δ[∑[n]²]]`
-/

namespace A087191.P15754038093453851992
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087191.P15754038093453851992

/-! ## A087191.P8249170240782310463

`or(1, p?[n^4-(n+1)^3])`
-/

namespace A087191.P8249170240782310463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ((n + 1) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A087191.P8249170240782310463

/-! ## A087191.P10720814501368605076

`∏{d}[p?[n^4-(n+1)^3], #]`
-/

namespace A087191.P10720814501368605076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ((n + 1) ^ 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A087191.P10720814501368605076

/-! ## A087191.P1644658827941152051

`∑{p}[p?[n^4-(n+1)^3], #]`
-/

namespace A087191.P1644658827941152051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ((n + 1) ^ 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A087191.P1644658827941152051

/-!
# A087192: a(n) = ceiling(a(n-1)*4/3), with a(1) = 1.

The programs for A087192, the canonical program `A087192.P4876767369425836536` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087192 has offset 1).

The definition of A087192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087192.P4876767369425836536

`ceil(4*a(n-1)/3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087192

/-- `ceil(4*a(n-1)/3)` -/
def P4876767369425836536.Spec : Prop :=
  ∀ n, P4876767369425836536.a n = A087192 (n + 1)

theorem P4876767369425836536.correct : P4876767369425836536.Spec := by
  intro n
  simp only [A087192, Nat.add_sub_cancel]

end A087192

/-! ## A087192.P10726561197167979151

`ceil(a(n-1)+a(n-1)/3)` with `a(0)=1`
-/

namespace A087192.P10726561197167979151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (a (n - 1) : ℚ) / 3⌉

end

end A087192.P10726561197167979151

namespace A087192

/-- `ceil(a(n-1)+a(n-1)/3)` -/
def P10726561197167979151.Spec : Prop :=
  ∀ n, P10726561197167979151.a n = A087192 (n + 1)

theorem P10726561197167979151.correct : P10726561197167979151.Spec := by
  intro n
  simp only [A087192, Nat.add_sub_cancel, A087192.P10726561197167979151.a, A087192.P4876767369425836536.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A087192

/-! ## A087192.P1236841057409945997

`a(n-1)-floor(-a(n-1)/3)` with `a(0)=1`
-/

namespace A087192.P1236841057409945997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊-((a (n - 1) : ℚ) / 3)⌋

end

end A087192.P1236841057409945997

namespace A087192

/-- `a(n-1)-floor(-a(n-1)/3)` -/
def P1236841057409945997.Spec : Prop :=
  ∀ n, P1236841057409945997.a n = A087192 (n + 1)

end A087192

/-! ## A087192.P14864756808171265833

`floor(a(n-1)+(a(n-1)+2)/3)` with `a(0)=1`
-/

namespace A087192.P14864756808171265833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) + 2 : ℚ) / 3⌋

end

end A087192.P14864756808171265833

namespace A087192

/-- `floor(a(n-1)+(a(n-1)+2)/3)` -/
def P14864756808171265833.Spec : Prop :=
  ∀ n, P14864756808171265833.a n = A087192 (n + 1)

end A087192

/-! ## A087192.P4397418648901599388

`1-floor(1-a(n-1)/3-a(n-1))` with `a(0)=1`
-/

namespace A087192.P4397418648901599388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊1 - (a (n - 1) : ℚ) / 3 - (a (n - 1) : ℚ)⌋

end

end A087192.P4397418648901599388

namespace A087192

/-- `1-floor(1-a(n-1)/3-a(n-1))` -/
def P4397418648901599388.Spec : Prop :=
  ∀ n, P4397418648901599388.a n = A087192 (n + 1)

end A087192

/-! ## A087192.P14816907584966858784

`A390254(n)-1`
-/

namespace A087192.P14816907584966858784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390254 n - 1

end

end A087192.P14816907584966858784

namespace A087192

/-- `A390254(n)-1` -/
def P14816907584966858784.Spec : Prop :=
  ∀ n, P14816907584966858784.a n = A087192 (n + 1)

end A087192

/-! ## A087192.P2428141457605795764

`∑[A072493(n+1)]`
-/

namespace A087192.P2428141457605795764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087192.P2428141457605795764

namespace A087192

/-- `∑[A072493(n+1)]` -/
def P2428141457605795764.Spec : Prop :=
  ∀ n, P2428141457605795764.a n = A087192 (n + 1)

end A087192

/-! ## A087192.P12507293572738390286

`A100585(n+1)-2`
-/

namespace A087192.P12507293572738390286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100585 (n + 1) - 2

end

end A087192.P12507293572738390286

namespace A087192

/-- `A100585(n+1)-2` -/
def P12507293572738390286.Spec : Prop :=
  ∀ n, P12507293572738390286.a n = A087192 (n + 1)

end A087192

/-! ## A087192.P2538635312197544966

`∑[A245356(n+1)/4]`
-/

namespace A087192.P2538635312197544966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245356 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087192.P2538635312197544966

namespace A087192

/-- `∑[A245356(n+1)/4]` -/
def P2538635312197544966.Spec : Prop :=
  ∀ n, P2538635312197544966.a n = (A087192 (n + 1) : ℚ)

end A087192

/-! ## A087192.P15362190588618316319

`floor((4*a(n-1)+2)/3)` with `a(0)=1`
-/

namespace A087192.P15362190588618316319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(4 * a (n - 1) + 2 : ℚ) / 3⌋

end

end A087192.P15362190588618316319

namespace A087192

/-- `floor((4*a(n-1)+2)/3)` -/
def P15362190588618316319.Spec : Prop :=
  ∀ n, P15362190588618316319.a n = A087192 (n + 1)

end A087192

/-! ## A087192.P737672539246591832

`1-floor((3-4*a(n-1))/3)` with `a(0)=1`
-/

namespace A087192.P737672539246591832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(3 - 4 * a (n - 1) : ℚ) / 3⌋

end

end A087192.P737672539246591832

namespace A087192

/-- `1-floor((3-4*a(n-1))/3)` -/
def P737672539246591832.Spec : Prop :=
  ∀ n, P737672539246591832.a n = A087192 (n + 1)

end A087192

/-! ## A087192.P11386939558606712159

`A367882(∑[n])+1`
-/

namespace A087192.P11386939558606712159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367882 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A087192.P11386939558606712159

namespace A087192

/-- `A367882(∑[n])+1` -/
def P11386939558606712159.Spec : Prop :=
  ∀ n, P11386939558606712159.a n = A087192 (n + 1)

end A087192

/-! ## A087192.P15293418357256723094

`A191671(∑[n]+1)`
-/

namespace A087192.P15293418357256723094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191671 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A087192.P15293418357256723094

namespace A087192

/-- `A191671(∑[n]+1)` -/
def P15293418357256723094.Spec : Prop :=
  ∀ n, P15293418357256723094.a n = A087192 (n + 1)

end A087192

/-!
# A087193: H(p)/p where p runs through the primes and H(k) is the k-th central hexanomial coefficient (A018901).

The programs for A087193, there is no canonical definition to state claims against.
-/

/-! ## A087193.P16528188595905954463

`A018901(A006093(n+1)+1)/p?[A259153(n)]`
-/

namespace A087193.P16528188595905954463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018901 (A006093 (n + 1) + 1).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A087193.P16528188595905954463

/-! ## A087193.P16824692687878721513

`A018901(A008864(n+1)-1)/p?[A259153(n)]`
-/

namespace A087193.P16824692687878721513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018901 (A008864 (n + 1) - 1).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A087193.P16824692687878721513

/-! ## A087193.P14281648676630172042

`A018901(p?[A018252(n+1)-7])/(A006093(n+1)+1)`
-/

namespace A087193.P14281648676630172042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018901 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / (A006093 (n + 1) + 1 : ℚ)

end

end A087193.P14281648676630172042

/-! ## A087193.P5749208671490357415

`A018901(p?[A018252(n+1)-7])/(A008864(n+1)-1)`
-/

namespace A087193.P5749208671490357415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018901 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / (A008864 (n + 1) - 1 : ℚ)

end

end A087193.P5749208671490357415

/-! ## A087193.P4667182305311004068

`A018901(A001748(n+1)/3)/p?[A018252(n+1)-7]`
-/

namespace A087193.P4667182305311004068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018901 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A087193.P4667182305311004068

/-!
# A087195: Numbers of the form 1+(1+p)*p^e, p prime and e>0.

The programs for A087195, there is no canonical definition to state claims against.
-/

/-! ## A087195.P14136997646523129616

`A246067(n+1)+A108499(A246067(n+1))`
-/

namespace A087195.P14136997646523129616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246067 (n + 1) + A108499 (A246067 (n + 1)).toNat

end

end A087195.P14136997646523129616

/-!
# A087196: Primes of the form 1+(1+p)*p^e, p prime and e>0.

The programs for A087196, there is no canonical definition to state claims against.
-/

/-! ## A087196.P16986636581312829455

`p?[A087195(n+1)]`
-/

namespace A087196.P16986636581312829455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087196.P16986636581312829455

/-! ## A087196.P5339677695363635057

`p?[record[A087195(A328396(n))]]`
-/

namespace A087196.P5339677695363635057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087195 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087196.P5339677695363635057

/-! ## A087196.P2074572480621246965

`filter[A087195(n+1), A010051(#)]`
-/

namespace A087196.P2074572480621246965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A087196.P2074572480621246965

/-! ## A087196.P2918293176418948211

`filter[A087195(n+1), A080339(#)]`
-/

namespace A087196.P2918293176418948211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A087196.P2918293176418948211

/-! ## A087196.P11554945520576785259

`filter[A087195(n+1), A080545(#)]`
-/

namespace A087196.P11554945520576785259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A087196.P11554945520576785259

