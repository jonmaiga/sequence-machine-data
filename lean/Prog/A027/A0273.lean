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
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A027300: Triangular array Q given by rows: Q(n,k) = number of partitions of n that do not contain k as an element; domain: 1 <= k <= n, n >= 1.

The programs for A027300, there is no canonical definition to state claims against.
-/

/-! ## A027300.P5625403678389359349

`A000041(round(sqrt(2*(n+1))))-A027293(n+1)`
-/

namespace A027300.P5625403678389359349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat - A027293 (n + 1)

end

end A027300.P5625403678389359349

/-! ## A027300.P8736644784650092012

`A284592(A127739(n+1))-A027293(n+1)`
-/

namespace A027300.P8736644784650092012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (A127739 (n + 1)).toNat - A027293 (n + 1)

end

end A027300.P8736644784650092012

/-! ## A027300.P5178099122250457934

`A000041(A002024(n+1))-A000041(A025581(n))`
-/

namespace A027300.P5178099122250457934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002024 (n + 1)).toNat - A000041 (A025581 n).toNat

end

end A027300.P5178099122250457934

/-! ## A027300.P12897778845337648139

`A000041(A003056(n)+1)-A000041(A025581(n))`
-/

namespace A027300.P12897778845337648139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A003056 n + 1).toNat - A000041 (A025581 n).toNat

end

end A027300.P12897778845337648139

/-! ## A027300.P3186786679116457637

`A000041(A002024(n+1))-A119620(A099375(n))`
-/

namespace A027300.P3186786679116457637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002024 (n + 1)).toNat - A119620 (A099375 n).toNat

end

end A027300.P3186786679116457637

/-! ## A027300.P13643694723181704902

`A000041(A002024(n+1))-A000041(A004202(n+1)%(n+1))`
-/

namespace A027300.P13643694723181704902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002024 (n + 1)).toNat - A000041 (Int.tmod (A004202 (n + 1)) (n + 1 : ℤ)).toNat

end

end A027300.P13643694723181704902

/-! ## A027300.P5204319653030109469

`A000041(A002024(n+1))-A000041(A193592(n+1))`
-/

namespace A027300.P5204319653030109469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002024 (n + 1)).toNat - A000041 (A193592 (n + 1)).toNat

end

end A027300.P5204319653030109469

/-! ## A027300.P15567796297463530893

`A027293(A127739(n+1)+1)-A027293(n+1)`
-/

namespace A027300.P15567796297463530893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (A127739 (n + 1) + 1).toNat - A027293 (n + 1)

end

end A027300.P15567796297463530893

/-! ## A027300.P9413201286879329874

`A000688(A140513(n))-A027293(n+1)`
-/

namespace A027300.P9413201286879329874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A140513 n).toNat - A027293 (n + 1)

end

end A027300.P9413201286879329874

/-! ## A027300.P13737959699375888539

`A211990(n+1)-char[∑[n-1]]`
-/

namespace A027300.P13737959699375888539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211990 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027300.P13737959699375888539

/-!
# A027301: a(n) = self-convolution of row n of Catalan triangle (A008315).

The programs for A027301, there is no canonical definition to state claims against.
-/

/-! ## A027301.P14879947268459448607

`A080236(A139593(n+1))`
-/

namespace A027301.P14879947268459448607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080236 (A139593 (n + 1)).toNat

end

end A027301.P14879947268459448607

/-! ## A027301.P11566762583577344651

`A051632(A000124(2*n+3)-A065033(n+2))`
-/

namespace A027301.P11566762583577344651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 (A000124 (2 * n + 3) - A065033 (n + 2)).toNat

end

end A027301.P11566762583577344651

/-! ## A027301.P3381817273904853312

`A051632(A000217(2*n+3)-A008616(5*n+1))`
-/

namespace A027301.P3381817273904853312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 (A000217 (2 * n + 3) - A008616 (5 * n + 1)).toNat

end

end A027301.P3381817273904853312

/-!
# A027302: a(n) = Sum_{k=0..floor((n-1)/2)} T(n,k) * T(n,k+1), with T given by A008315.

The programs for A027302, there is no canonical definition to state claims against.
-/

/-! ## A027302.P11469753731112597033

`A201204(n+2)-A000108(n+2)`
-/

namespace A027302.P11469753731112597033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 (n + 2) - A000108 (n + 2)

end

end A027302.P11469753731112597033

/-! ## A027302.P115652681468399468

`A201204(n+2)%A168491(n+2)`
-/

namespace A027302.P115652681468399468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201204 (n + 2)) (A168491 (n + 2))

end

end A027302.P115652681468399468

/-! ## A027302.P11799574651607818289

`A201204(n+2)-A126120(2*(n+2))`
-/

namespace A027302.P11799574651607818289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 (n + 2) - A126120 (2 * (n + 2))

end

end A027302.P11799574651607818289

/-! ## A027302.P8632926749021787542

`A201204(A289439(2*(n+2)))%A000108(n+2)`
-/

namespace A027302.P8632926749021787542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201204 (A289439 (2 * (n + 2))).toNat) (A000108 (n + 2))

end

end A027302.P8632926749021787542

/-! ## A027302.P2666075528898576788

`A201204(n+2)-A067323(C(n+2, 2))`
-/

namespace A027302.P2666075528898576788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 (n + 2) - A067323 (Nat.choose (n + 2) 2)

end

end A027302.P2666075528898576788

/-!
# A027303: a(n) = Sum_{k=0..floor((n-3)/2)} T(n,k) * T(n,k+2), with T given by A008315.

The programs for A027303, there is no canonical definition to state claims against.
-/

/-! ## A027303.P17625750358175704240

`A304756(A095794(n+1))+A304728(n+1)`
-/

namespace A027303.P17625750358175704240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304756 (A095794 (n + 1)).toNat + A304728 (n + 1)

end

end A027303.P17625750358175704240

/-!
# A027305: a(n) = Sum_{k=0..floor((n+1)/2)} (k+1) * A008315(n, k).

The programs for A027305, the canonical program `A027305.P4063068465224588303` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027305 has offset 0).

The definition of A027305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027305.P4063068465224588303

`A242172(n)-A093387(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027305

/-- `A242172(n)-A093387(n+1)` -/
def P4063068465224588303.Spec : Prop :=
  ∀ n, P4063068465224588303.a n = A027305 n

theorem P4063068465224588303.correct : P4063068465224588303.Spec := by
  intro n
  simp only [A027305]

end A027305

/-! ## A027305.P17714873258999581659

`A107373(n+2)+A001405(n+1)`
-/

namespace A027305.P17714873258999581659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 2) + A001405 (n + 1)

end

end A027305.P17714873258999581659

namespace A027305

/-- `A107373(n+2)+A001405(n+1)` -/
def P17714873258999581659.Spec : Prop :=
  ∀ n, P17714873258999581659.a n = A027305 n

end A027305

/-! ## A027305.P2870976945738785433

`A210736(n+2)+A107373(n+2)`
-/

namespace A027305.P2870976945738785433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 2) + A107373 (n + 2)

end

end A027305.P2870976945738785433

namespace A027305

/-- `A210736(n+2)+A107373(n+2)` -/
def P2870976945738785433.Spec : Prop :=
  ∀ n, P2870976945738785433.a n = A027305 n

end A027305

/-! ## A027305.P4488947060064281934

`A001405(n+1)+A340568(n+1)+A037952(n)`
-/

namespace A027305.P4488947060064281934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A340568 (n + 1) + A037952 n)

end

end A027305.P4488947060064281934

namespace A027305

/-- `A001405(n+1)+A340568(n+1)+A037952(n)` -/
def P4488947060064281934.Spec : Prop :=
  ∀ n, P4488947060064281934.a n = A027305 n

end A027305

/-! ## A027305.P14863877475236854487

`A107373(n+2)+A056040(n+1)/A152271(n+1)`
-/

namespace A027305.P14863877475236854487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107373 (n + 2) : ℚ) + (A056040 (n + 1) : ℚ) / (A152271 (n + 1) : ℚ)

end

end A027305.P14863877475236854487

namespace A027305

/-- `A107373(n+2)+A056040(n+1)/A152271(n+1)` -/
def P14863877475236854487.Spec : Prop :=
  ∀ n, P14863877475236854487.a n = (A027305 n : ℚ)

end A027305

/-! ## A027305.P9256339566148119667

`∪[A296770(n), A296771(n)]`
-/

namespace A027305.P9256339566148119667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027305.P9256339566148119667

namespace A027305

/-- `∪[A296770(n), A296771(n)]` -/
def P9256339566148119667.Spec : Prop :=
  ∀ n, (P9256339566148119667.a n : ℤ) = A027305 n

end A027305

/-! ## A027305.P16832759077696343436

`Δ[A296663(n)+A100066(n)]`
-/

namespace A027305.P16832759077696343436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296663 n + A100066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027305.P16832759077696343436

namespace A027305

/-- `Δ[A296663(n)+A100066(n)]` -/
def P16832759077696343436.Spec : Prop :=
  ∀ n, P16832759077696343436.a n = A027305 n

end A027305

/-! ## A027305.P5583091026043494390

`A296663(n+1)-A107373(n+2)`
-/

namespace A027305.P5583091026043494390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296663 (n + 1) - A107373 (n + 2)

end

end A027305.P5583091026043494390

namespace A027305

/-- `A296663(n+1)-A107373(n+2)` -/
def P5583091026043494390.Spec : Prop :=
  ∀ n, P5583091026043494390.a n = A027305 n

end A027305

/-! ## A027305.P3216103681599142309

`(A296663(n+1)+A001405(n+1))/2`
-/

namespace A027305.P3216103681599142309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296663 (n + 1) + A001405 (n + 1) : ℚ) / 2

end

end A027305.P3216103681599142309

namespace A027305

/-- `(A296663(n+1)+A001405(n+1))/2` -/
def P3216103681599142309.Spec : Prop :=
  ∀ n, P3216103681599142309.a n = (A027305 n : ℚ)

end A027305

/-! ## A027305.P4702455337331100840

`A107373(n+2)+record[A046899(n)]`
-/

namespace A027305.P4702455337331100840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027305.P4702455337331100840

namespace A027305

/-- `A107373(n+2)+record[A046899(n)]` -/
def P4702455337331100840.Spec : Prop :=
  ∀ n, P4702455337331100840.a n = A027305 n

end A027305

/-!
# A027306: a(n) = 2^(n-1) + ((1 + (-1)^n)/4)*binomial(n, n/2).

The programs for A027306, the canonical program `A027306.P2966041652703629727` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027306 has offset 0).

The definition of A027306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027306.P2966041652703629727

`(2*(n-1)*(2*a(n-2)+a(n-1))-8*(n-2)*a(n-3))/n` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027306

/-- `(2*(n-1)*(2*a(n-2)+a(n-1))-8*(n-2)*a(n-3))/n` -/
def P2966041652703629727.Spec : Prop :=
  ∀ n, P2966041652703629727.a n = (A027306 n : ℚ)

end A027306

/-! ## A027306.P7045456917122503284

`A226881(n)+1`
-/

namespace A027306.P7045456917122503284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226881 n + 1

end

end A027306.P7045456917122503284

namespace A027306

/-- `A226881(n)+1` -/
def P7045456917122503284.Spec : Prop :=
  ∀ n, P7045456917122503284.a n = A027306 n

end A027306

/-! ## A027306.P15268694146584776802

`A126869(n)+A058622(n)`
-/

namespace A027306.P15268694146584776802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + A058622 n

end

end A027306.P15268694146584776802

namespace A027306

/-- `A126869(n)+A058622(n)` -/
def P15268694146584776802.Spec : Prop :=
  ∀ n, P15268694146584776802.a n = A027306 n

end A027306

/-! ## A027306.P15783850266505208633

`A294175(n)+A001405(n)`
-/

namespace A027306.P15783850266505208633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 n + A001405 n

end

end A027306.P15783850266505208633

namespace A027306

/-- `A294175(n)+A001405(n)` -/
def P15783850266505208633.Spec : Prop :=
  ∀ n, P15783850266505208633.a n = A027306 n

end A027306

/-! ## A027306.P5269275357742399729

`A014495(n)+A294175(n)+1`
-/

namespace A027306.P5269275357742399729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n + (A294175 n + 1)

end

end A027306.P5269275357742399729

namespace A027306

/-- `A014495(n)+A294175(n)+1` -/
def P5269275357742399729.Spec : Prop :=
  ∀ n, P5269275357742399729.a n = A027306 n

end A027306

/-! ## A027306.P13355692975114398618

`A126869(n)+A294175(n)+A138364(n)`
-/

namespace A027306.P13355692975114398618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + (A294175 n + A138364 n)

end

end A027306.P13355692975114398618

namespace A027306

/-- `A126869(n)+A294175(n)+A138364(n)` -/
def P13355692975114398618.Spec : Prop :=
  ∀ n, P13355692975114398618.a n = A027306 n

end A027306

/-! ## A027306.P3452908332089675189

`ceil(A081672(n)/2)`
-/

namespace A027306.P3452908332089675189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081672 n : ℚ) / 2⌉

end

end A027306.P3452908332089675189

namespace A027306

/-- `ceil(A081672(n)/2)` -/
def P3452908332089675189.Spec : Prop :=
  ∀ n, P3452908332089675189.a n = A027306 n

end A027306

/-! ## A027306.P16747838839248818437

`A248574(n)-a(n-1)` with `a(0)=1`
-/

namespace A027306.P16747838839248818437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248574 n - a (n - 1)

end

end A027306.P16747838839248818437

namespace A027306

/-- `A248574(n)-a(n-1)` -/
def P16747838839248818437.Spec : Prop :=
  ∀ n, P16747838839248818437.a n = A027306 n

end A027306

/-! ## A027306.P6781947758589204533

`A000079(n)-A058622(n)`
-/

namespace A027306.P6781947758589204533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A058622 n

end

end A027306.P6781947758589204533

namespace A027306

/-- `A000079(n)-A058622(n)` -/
def P6781947758589204533.Spec : Prop :=
  ∀ n, P6781947758589204533.a n = A027306 n

end A027306

/-! ## A027306.P16278561724495684857

`A000225(n)+1-A058622(n)`
-/

namespace A027306.P16278561724495684857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A058622 n)

end

end A027306.P16278561724495684857

namespace A027306

/-- `A000225(n)+1-A058622(n)` -/
def P16278561724495684857.Spec : Prop :=
  ∀ n, P16278561724495684857.a n = A027306 n

end A027306

/-! ## A027306.P4550338175371655362

`A011782(n+1)-A058622(n)`
-/

namespace A027306.P4550338175371655362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A058622 n

end

end A027306.P4550338175371655362

namespace A027306

/-- `A011782(n+1)-A058622(n)` -/
def P4550338175371655362.Spec : Prop :=
  ∀ n, P4550338175371655362.a n = A027306 n

end A027306

/-! ## A027306.P16460673162295865912

`A058622(n+1)-A294175(n)`
-/

namespace A027306.P16460673162295865912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (n + 1) - A294175 n

end

end A027306.P16460673162295865912

namespace A027306

/-- `A058622(n+1)-A294175(n)` -/
def P16460673162295865912.Spec : Prop :=
  ∀ n, P16460673162295865912.a n = A027306 n

end A027306

/-! ## A027306.P8977647617988581099

`A081672(n)/A036453(n+1)`
-/

namespace A027306.P8977647617988581099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081672 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A027306.P8977647617988581099

namespace A027306

/-- `A081672(n)/A036453(n+1)` -/
def P8977647617988581099.Spec : Prop :=
  ∀ n, P8977647617988581099.a n = (A027306 n : ℚ)

end A027306

/-! ## A027306.P4906726272791740897

`A016116(2*n)-A058622(n)`
-/

namespace A027306.P4906726272791740897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - A058622 n

end

end A027306.P4906726272791740897

namespace A027306

/-- `A016116(2*n)-A058622(n)` -/
def P4906726272791740897.Spec : Prop :=
  ∀ n, P4906726272791740897.a n = A027306 n

end A027306

/-! ## A027306.P12566670672070799296

`(A126869(n)+A000079(n))/2`
-/

namespace A027306.P12566670672070799296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 n + A000079 n : ℚ) / 2

end

end A027306.P12566670672070799296

namespace A027306

/-- `(A126869(n)+A000079(n))/2` -/
def P12566670672070799296.Spec : Prop :=
  ∀ n, P12566670672070799296.a n = (A027306 n : ℚ)

end A027306

/-! ## A027306.P1487495428898290224

`(A210736(n+1)+A058622(n+1))/2`
-/

namespace A027306.P1487495428898290224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) + A058622 (n + 1) : ℚ) / 2

end

end A027306.P1487495428898290224

namespace A027306

/-- `(A210736(n+1)+A058622(n+1))/2` -/
def P1487495428898290224.Spec : Prop :=
  ∀ n, P1487495428898290224.a n = (A027306 n : ℚ)

end A027306

/-! ## A027306.P15023107075416885301

`A081672(n)/A105561(A105561(n+1))`
-/

namespace A027306.P15023107075416885301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081672 n : ℚ) / (A105561 (A105561 (n + 1)).toNat : ℚ)

end

end A027306.P15023107075416885301

namespace A027306

/-- `A081672(n)/A105561(A105561(n+1))` -/
def P15023107075416885301.Spec : Prop :=
  ∀ n, P15023107075416885301.a n = (A027306 n : ℚ)

end A027306

/-! ## A027306.P12893663730771496786

`A001045(n+1)+A001045(n)-A058622(n)`
-/

namespace A027306.P12893663730771496786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A001045 n - A058622 n)

end

end A027306.P12893663730771496786

namespace A027306

/-- `A001045(n+1)+A001045(n)-A058622(n)` -/
def P12893663730771496786.Spec : Prop :=
  ∀ n, P12893663730771496786.a n = A027306 n

end A027306

/-! ## A027306.P16002897188979826815

`A058622(n+1)+A138364(n)-A058622(n)`
-/

namespace A027306.P16002897188979826815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (n + 1) + (A138364 n - A058622 n)

end

end A027306.P16002897188979826815

namespace A027306

/-- `A058622(n+1)+A138364(n)-A058622(n)` -/
def P16002897188979826815.Spec : Prop :=
  ∀ n, P16002897188979826815.a n = A027306 n

end A027306

/-!
# A027307: Number of paths from (0,0) to (3n,0) that stay in first quadrant (but may touch horizontal axis) and where each step is (2,1), (1,2) or (1,-1).

The programs for A027307, there is no canonical definition to state claims against.
-/

/-! ## A027307.P13373354690064119397

`A110682(∑[n])`
-/

namespace A027307.P13373354690064119397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027307.P13373354690064119397

/-! ## A027307.P13648317177978893496

`record[A110682(n)]`
-/

namespace A027307.P13648317177978893496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027307.P13648317177978893496

/-! ## A027307.P13702596837289723956

`A137842(2*n)`
-/

namespace A027307.P13702596837289723956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137842 (2 * n)

end

end A027307.P13702596837289723956

/-! ## A027307.P12540010437616707630

`A071949(∑[n]+n)`
-/

namespace A027307.P12540010437616707630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A027307.P12540010437616707630

/-! ## A027307.P2265645270413397689

`A084078(A004273(n))`
-/

namespace A027307.P2265645270413397689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (A004273 n).toNat

end

end A027307.P2265645270413397689

/-! ## A027307.P10796764556993192682

`A084078(lt[0, A084060(n)])`
-/

namespace A027307.P10796764556993192682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A027307.P10796764556993192682

/-! ## A027307.P17405263094971352085

`A084078(A289207(2*n+1))`
-/

namespace A027307.P17405263094971352085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (A289207 (2 * n + 1)).toNat

end

end A027307.P17405263094971352085

/-! ## A027307.P3007175244414519463

`A084078(A289207(n+1)+n)`
-/

namespace A027307.P3007175244414519463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (A289207 (n + 1) + (n : ℤ)).toNat

end

end A027307.P3007175244414519463

/-! ## A027307.P1760057682760307319

`gcd(A000038(n), A110682(A000217(n)))`
-/

namespace A027307.P1760057682760307319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110682 (A000217 n).toNat)

end

end A027307.P1760057682760307319

/-! ## A027307.P3047655430801765900

`A110682(A000217(n))+A000038(A000124(n))`
-/

namespace A027307.P3047655430801765900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (A000217 n).toNat + A000038 (A000124 n).toNat

end

end A027307.P3047655430801765900

/-! ## A027307.P8981084084876926183

`A110682(A000217(n))+A000038(A005408(n))`
-/

namespace A027307.P8981084084876926183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (A000217 n).toNat + A000038 (A005408 n).toNat

end

end A027307.P8981084084876926183

/-!
# A027308: a(n) = self-convolution of row n of array T given by A026323.

The programs for A027308, there is no canonical definition to state claims against.
-/

/-! ## A027308.P6709774147628266085

`A002265((5^n+1)*(n+1))`
-/

namespace A027308.P6709774147628266085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((5 ^ n + 1) * (n + 1))

end

end A027308.P6709774147628266085

/-!
# A027309: a(n) = Sum_{k=0..n+1} T(n,k) * T(n,k+1), with T given by A026323.

The programs for A027309, there is no canonical definition to state claims against.
-/

/-! ## A027309.P12918661786956515669

`A026151(2*n+3)/2`
-/

namespace A027309.P12918661786956515669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026151 (2 * n + 3) : ℚ) / 2

end

end A027309.P12918661786956515669

/-! ## A027309.P13828540680298046236

`floor(A026151(A144396(n+1))/2)`
-/

namespace A027309.P13828540680298046236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026151 (A144396 (n + 1)).toNat : ℚ) / 2⌋

end

end A027309.P13828540680298046236

/-! ## A027309.P17483927684090734805

`(A026151(A144396(n+1))/2)^-A305974(A005384(n+1))`
-/

namespace A027309.P17483927684090734805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026151 (A144396 (n + 1)).toNat : ℚ) / 2) ^ (-A305974 (A005384 (n + 1)).toNat : ℤ)

end

end A027309.P17483927684090734805

/-! ## A027309.P16957008935208595454

`(A026151(A144396(n+1))/2)^A164660(n)²`
-/

namespace A027309.P16957008935208595454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026151 (A144396 (n + 1)).toNat : ℚ) / 2) ^ (A164660 n ^ 2 : ℤ)

end

end A027309.P16957008935208595454

/-! ## A027309.P15360234382219755710

`(A026151(A144396(n+1))/2)%A020729(n)²`
-/

namespace A027309.P15360234382219755710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A026151 (A144396 (n + 1)).toNat : ℚ) / 2)) (A020729 n ^ 2)

end

end A027309.P15360234382219755710

/-! ## A027309.P14741034103546297471

`A015989(A280170(n+1))+A026151(A144396(n+1))/2`
-/

namespace A027309.P14741034103546297471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015989 (A280170 (n + 1)).toNat : ℚ) + (A026151 (A144396 (n + 1)).toNat : ℚ) / 2

end

end A027309.P14741034103546297471

/-! ## A027309.P961100297264060126

`(A026151(A144396(n+1))/2)^A001222(A087382(n+3))`
-/

namespace A027309.P961100297264060126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026151 (A144396 (n + 1)).toNat : ℚ) / 2) ^ (A001222 (A087382 (n + 3)).toNat : ℤ)

end

end A027309.P961100297264060126

/-!
# A027310: a(n) = Sum_{k=0..n} T(n,k) * T(n,k+2), with T given by A026323.

The programs for A027310, there is no canonical definition to state claims against.
-/

/-! ## A027310.P3168754207827289453

`A334266(ceil(A063886(2*n)/2))+A287825(n)`
-/

namespace A027310.P3168754207827289453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334266 ⌈(A063886 (2 * n) : ℚ) / 2⌉.toNat + A287825 n

end

end A027310.P3168754207827289453

/-!
# A027312: a(n) = Sum_{k=0..n+2} (k+1) * A026323(n, k).

The programs for A027312, there is no canonical definition to state claims against.
-/

/-! ## A027312.P1278955456156429508

`or(A036234(A121590(n+1)), A265640(n+1))`
-/

namespace A027312.P1278955456156429508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036234 (A121590 (n + 1)).toNat) (A265640 (n + 1))

end

end A027312.P1278955456156429508

/-! ## A027312.P899365424295120812

`or(A036234(A121590(n+1)), A265641(n+1))`
-/

namespace A027312.P899365424295120812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036234 (A121590 (n + 1)).toNat) (A265641 (n + 1))

end

end A027312.P899365424295120812

/-!
# A027313: a(n) = Sum_{k=0..2n} (k+1) * A026323(n, 2n-k).

The programs for A027313, the canonical program `A027313.P6916641238350207889` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027313 has offset 0).

The definition of A027313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027313.P846510486778670021

`ogf((1+3x+9x^2)/(1-3x))`
-/

namespace A027313.P846510486778670021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 9] [1, -3] n

end

end A027313.P846510486778670021

namespace A027313

/-- `ogf((1+3x+9x^2)/(1-3x))` -/
def P846510486778670021.Spec : Prop :=
  ∀ n, P846510486778670021.a n = A027313 n

end A027313

/-! ## A027313.P6916641238350207889

`3*a(n-1)` with `a(0)=1, a(1)=6, a(2)=27`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027313

/-- `3*a(n-1)` -/
def P6916641238350207889.Spec : Prop :=
  ∀ n, (P6916641238350207889.a n : ℤ) = A027313 n

theorem P6916641238350207889.correct : P6916641238350207889.Spec := by
  intro n
  simp only [A027313]

end A027313

/-! ## A027313.P2868772537552506244

`(ceil(atan(n))+1)*3^n`
-/

namespace A027313.P2868772537552506244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.arctan (n : ℝ)⌉ + 1) * (3 ^ n : ℤ)

end

end A027313.P2868772537552506244

namespace A027313

/-- `(ceil(atan(n))+1)*3^n` -/
def P2868772537552506244.Spec : Prop :=
  ∀ n, P2868772537552506244.a n = A027313 n

end A027313

/-! ## A027313.P12637939554096341197

`record[a(2%n)^n]` with `a(0)=1, a(1)=6, a(2)=3`
-/

namespace A027313.P12637939554096341197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 3] fun n f1 =>
  f1 (2 % n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027313.P12637939554096341197

namespace A027313

/-- `record[a(2%n)^n]` -/
def P12637939554096341197.Spec : Prop :=
  ∀ n, (P12637939554096341197.a n : ℤ) = A027313 n

end A027313

/-! ## A027313.P14043205284176335740

`3^((n+1)%a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A027313.P14043205284176335740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 ^ ((n + 1) % a (n - 1))

end

end A027313.P14043205284176335740

namespace A027313

/-- `3^((n+1)%a(n-1))` -/
def P14043205284176335740.Spec : Prop :=
  ∀ n, (P14043205284176335740.a n : ℤ) = A027313 n

end A027313

/-! ## A027313.P4836022988939277295

`gcd(3, a(n-1))^(n+1)` with `a(0)=1, a(1)=6`
-/

namespace A027313.P4836022988939277295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Nat.gcd 3 (a (n - 1)) ^ (n + 1)

end

end A027313.P4836022988939277295

namespace A027313

/-- `gcd(3, a(n-1))^(n+1)` -/
def P4836022988939277295.Spec : Prop :=
  ∀ n, (P4836022988939277295.a n : ℤ) = A027313 n

end A027313

/-! ## A027313.P7289579342329984838

`(3-floor(2/(n+1)))*3^n`
-/

namespace A027313.P7289579342329984838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ⌊2 / (n + 1 : ℚ)⌋) * (3 ^ n : ℤ)

end

end A027313.P7289579342329984838

namespace A027313

/-- `(3-floor(2/(n+1)))*3^n` -/
def P7289579342329984838.Spec : Prop :=
  ∀ n, P7289579342329984838.a n = A027313 n

end A027313

/-! ## A027313.P16364986762757123467

`3^(n+1)-C(3, a(n-1))` with `a(0)=1`
-/

namespace A027313.P16364986762757123467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ (n + 1) : ℤ) - (Nat.choose 3 (a (n - 1)).toNat : ℤ)

end

end A027313.P16364986762757123467

namespace A027313

/-- `3^(n+1)-C(3, a(n-1))` -/
def P16364986762757123467.Spec : Prop :=
  ∀ n, P16364986762757123467.a n = A027313 n

end A027313

/-! ## A027313.P13990384797195096380

`3^(n+1)-floor(3/a(n-1))` with `a(0)=1`
-/

namespace A027313.P13990384797195096380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ (n + 1) : ℤ) - ⌊3 / (a (n - 1) : ℚ)⌋

end

end A027313.P13990384797195096380

namespace A027313

/-- `3^(n+1)-floor(3/a(n-1))` -/
def P13990384797195096380.Spec : Prop :=
  ∀ n, P13990384797195096380.a n = A027313 n

end A027313

/-! ## A027313.P12600515196412707422

`sqrt(A100403(n))^(n+1)`
-/

namespace A027313.P12600515196412707422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A100403 n : ℝ) ^ (n + 1)

end

end A027313.P12600515196412707422

namespace A027313

/-- `sqrt(A100403(n))^(n+1)` -/
def P12600515196412707422.Spec : Prop :=
  ∀ n, P12600515196412707422.a n = (A027313 n : ℝ)

end A027313

/-! ## A027313.P10508249778066199614

`3^(n+1)-A173012(n+2)`
-/

namespace A027313.P10508249778066199614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A173012 (n + 2)

end

end A027313.P10508249778066199614

namespace A027313

/-- `3^(n+1)-A173012(n+2)` -/
def P10508249778066199614.Spec : Prop :=
  ∀ n, P10508249778066199614.a n = A027313 n

end A027313

/-! ## A027313.P66126012369541864

`3^(n+1)-C(n+2, A000041(2*n))`
-/

namespace A027313.P66126012369541864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - (Nat.choose (n + 2) (A000041 (2 * n)).toNat : ℤ)

end

end A027313.P66126012369541864

namespace A027313

/-- `3^(n+1)-C(n+2, A000041(2*n))` -/
def P66126012369541864.Spec : Prop :=
  ∀ n, P66126012369541864.a n = A027313 n

end A027313

/-! ## A027313.P11103003619779022859

`3^(n+1)-C(n+2, A000045(2*n+1))`
-/

namespace A027313.P11103003619779022859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - (Nat.choose (n + 2) (A000045 (2 * n + 1)).toNat : ℤ)

end

end A027313.P11103003619779022859

namespace A027313

/-- `3^(n+1)-C(n+2, A000045(2*n+1))` -/
def P11103003619779022859.Spec : Prop :=
  ∀ n, P11103003619779022859.a n = A027313 n

end A027313

/-! ## A027313.P5609409562902549618

`A182522(A267873(n+1))`
-/

namespace A027313.P5609409562902549618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A267873 (n + 1)).toNat

end

end A027313.P5609409562902549618

namespace A027313

/-- `A182522(A267873(n+1))` -/
def P5609409562902549618.Spec : Prop :=
  ∀ n, P5609409562902549618.a n = A027313 n

end A027313

/-! ## A027313.P1714860387971577555

`3^(n+1)-C(n+2, A000108(n+1))`
-/

namespace A027313.P1714860387971577555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - (Nat.choose (n + 2) (A000108 (n + 1)).toNat : ℤ)

end

end A027313.P1714860387971577555

namespace A027313

/-- `3^(n+1)-C(n+2, A000108(n+1))` -/
def P1714860387971577555.Spec : Prop :=
  ∀ n, P1714860387971577555.a n = A027313 n

end A027313

/-! ## A027313.P10383293106855047108

`sqrt(dr(6^n))^(n+1)`
-/

namespace A027313.P10383293106855047108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.digitalRoot (6 ^ n : ℤ) : ℝ) ^ (n + 1)

end

end A027313.P10383293106855047108

namespace A027313

/-- `sqrt(dr(6^n))^(n+1)` -/
def P10383293106855047108.Spec : Prop :=
  ∀ n, P10383293106855047108.a n = (A027313 n : ℝ)

end A027313

/-! ## A027313.P5838439092492994337

`A003946(2*n)/A025579(n+1)`
-/

namespace A027313.P5838439092492994337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003946 (2 * n) : ℚ) / (A025579 (n + 1) : ℚ)

end

end A027313.P5838439092492994337

namespace A027313

/-- `A003946(2*n)/A025579(n+1)` -/
def P5838439092492994337.Spec : Prop :=
  ∀ n, P5838439092492994337.a n = (A027313 n : ℚ)

end A027313

/-! ## A027313.P1033990769503745212

`A027327(2*n)/A025579(n+1)`
-/

namespace A027313.P1033990769503745212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027327 (2 * n) : ℚ) / (A025579 (n + 1) : ℚ)

end

end A027313.P1033990769503745212

namespace A027313

/-- `A027327(2*n)/A025579(n+1)` -/
def P1033990769503745212.Spec : Prop :=
  ∀ n, P1033990769503745212.a n = (A027313 n : ℚ)

end A027313

/-! ## A027313.P12001182568348207588

`A052156(2*n+1)/A025579(n+1)`
-/

namespace A027313.P12001182568348207588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052156 (2 * n + 1) : ℚ) / (A025579 (n + 1) : ℚ)

end

end A027313.P12001182568348207588

namespace A027313

/-- `A052156(2*n+1)/A025579(n+1)` -/
def P12001182568348207588.Spec : Prop :=
  ∀ n, P12001182568348207588.a n = (A027313 n : ℚ)

end A027313

/-! ## A027313.P13858175671009700913

`A003946(n)*A025192(n+1)/A026097(n+1)`
-/

namespace A027313.P13858175671009700913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003946 n * A025192 (n + 1) : ℚ) / (A026097 (n + 1) : ℚ)

end

end A027313.P13858175671009700913

namespace A027313

/-- `A003946(n)*A025192(n+1)/A026097(n+1)` -/
def P13858175671009700913.Spec : Prop :=
  ∀ n, P13858175671009700913.a n = (A027313 n : ℚ)

end A027313

/-!
# A027314: a(n) is the sum of squares of numbers in row n of array T given by A026323.

The programs for A027314, the canonical program `A027314.P4582682916324983632` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027314 has offset 0).

The definition of A027314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027314.P4582682916324983632

`A026325(2*n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A027314

/-- `A026325(2*n)` -/
def P4582682916324983632.Spec : Prop :=
  ∀ n, P4582682916324983632.a n = A027314 n

theorem P4582682916324983632.correct : P4582682916324983632.Spec := by
  intro n
  simp only [A027314]

end A027314

/-! ## A027314.P18432544164061745182

`record[A026325(A014681(n))]`
-/

namespace A027314.P18432544164061745182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027314.P18432544164061745182

namespace A027314

/-- `record[A026325(A014681(n))]` -/
def P18432544164061745182.Spec : Prop :=
  ∀ n, P18432544164061745182.a n = A027314 n

end A027314

/-! ## A027314.P12525091028686094606

`record[A026325(A115273(n))]`
-/

namespace A027314.P12525091028686094606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 (A115273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027314.P12525091028686094606

namespace A027314

/-- `record[A026325(A115273(n))]` -/
def P12525091028686094606.Spec : Prop :=
  ∀ n, P12525091028686094606.a n = A027314 n

end A027314

/-! ## A027314.P7064234389783702303

`record[A026325(A093178(n)-1)]`
-/

namespace A027314.P7064234389783702303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027314.P7064234389783702303

namespace A027314

/-- `record[A026325(A093178(n)-1)]` -/
def P7064234389783702303.Spec : Prop :=
  ∀ n, P7064234389783702303.a n = A027314 n

end A027314

/-! ## A027314.P13338178315836776958

`record[A026325(n)/A033999(n)]`
-/

namespace A027314.P13338178315836776958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026325 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027314.P13338178315836776958

namespace A027314

/-- `record[A026325(n)/A033999(n)]` -/
def P13338178315836776958.Spec : Prop :=
  ∀ n, P13338178315836776958.a n = (A027314 n : ℚ)

end A027314

/-! ## A027314.P6447225053614568247

`record[A026325(n/A093178(n))]`
-/

namespace A027314.P6447225053614568247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027314.P6447225053614568247

namespace A027314

/-- `record[A026325(n/A093178(n))]` -/
def P6447225053614568247.Spec : Prop :=
  ∀ n, P6447225053614568247.a n = A027314 n

end A027314

/-! ## A027314.P12140609796599668822

`record[A026325(n)/A000034(n)²]`
-/

namespace A027314.P12140609796599668822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026325 n : ℚ) / (A000034 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027314.P12140609796599668822

namespace A027314

/-- `record[A026325(n)/A000034(n)²]` -/
def P12140609796599668822.Spec : Prop :=
  ∀ n, P12140609796599668822.a n = (A027314 n : ℚ)

end A027314

/-! ## A027314.P7365792085883728105

`record[A026325(A060819(n+1)-1)]`
-/

namespace A027314.P7365792085883728105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 (A060819 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027314.P7365792085883728105

namespace A027314

/-- `record[A026325(A060819(n+1)-1)]` -/
def P7365792085883728105.Spec : Prop :=
  ∀ n, P7365792085883728105.a n = A027314 n

end A027314

/-! ## A027314.P12628191402719106942

`record[A026325(n)/A138342(n+1)]`
-/

namespace A027314.P12628191402719106942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026325 n : ℚ) / (A138342 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027314.P12628191402719106942

namespace A027314

/-- `record[A026325(n)/A138342(n+1)]` -/
def P12628191402719106942.Spec : Prop :=
  ∀ n, P12628191402719106942.a n = (A027314 n : ℚ)

end A027314

/-! ## A027314.P4197608180511158937

`A026325(A005843(n))/gcd(n, n+1)`
-/

namespace A027314.P4197608180511158937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026325 (A005843 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A027314.P4197608180511158937

namespace A027314

/-- `A026325(A005843(n))/gcd(n, n+1)` -/
def P4197608180511158937.Spec : Prop :=
  ∀ n, P4197608180511158937.a n = (A027314 n : ℚ)

end A027314

/-! ## A027314.P5488327608629289401

`record[A026325(A270743(A133310(n)))]`
-/

namespace A027314.P5488327608629289401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 (A270743 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027314.P5488327608629289401

namespace A027314

/-- `record[A026325(A270743(A133310(n)))]` -/
def P5488327608629289401.Spec : Prop :=
  ∀ n, P5488327608629289401.a n = A027314 n

end A027314

/-! ## A027314.P3720321491350509151

`2*A026134(2*n+1)-A005322(2*(n+1))`
-/

namespace A027314.P3720321491350509151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026134 (2 * n + 1) - A005322 (2 * (n + 1))

end

end A027314.P3720321491350509151

namespace A027314

/-- `2*A026134(2*n+1)-A005322(2*(n+1))` -/
def P3720321491350509151.Spec : Prop :=
  ∀ n, P3720321491350509151.a n = A027314 n

end A027314

/-! ## A027314.P3351003337598164994

`A026109(2*n+3)+A001006(2*n)-A026289(2*n+3)`
-/

namespace A027314.P3351003337598164994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026109 (2 * n + 3) + (A001006 (2 * n) - A026289 (2 * n + 3))

end

end A027314.P3351003337598164994

namespace A027314

/-- `A026109(2*n+3)+A001006(2*n)-A026289(2*n+3)` -/
def P3351003337598164994.Spec : Prop :=
  ∀ n, P3351003337598164994.a n = A027314 n

end A027314

/-! ## A027314.P313757667066621992

`A001006(2*n+1)+A026134(2*n+1)-A026107(2*(n+1))`
-/

namespace A027314.P313757667066621992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (2 * n + 1) + (A026134 (2 * n + 1) - A026107 (2 * (n + 1)))

end

end A027314.P313757667066621992

namespace A027314

/-- `A001006(2*n+1)+A026134(2*n+1)-A026107(2*(n+1))` -/
def P313757667066621992.Spec : Prop :=
  ∀ n, P313757667066621992.a n = A027314 n

end A027314

/-! ## A027314.P12587222637160196499

`A026325(A005843(n))%A256493(n+1)`
-/

namespace A027314.P12587222637160196499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026325 (A005843 n).toNat) (A256493 (n + 1))

end

end A027314.P12587222637160196499

namespace A027314

/-- `A026325(A005843(n))%A256493(n+1)` -/
def P12587222637160196499.Spec : Prop :=
  ∀ n, P12587222637160196499.a n = A027314 n

end A027314

/-!
# A027315: Self-convolution of array T given by A026082.

The programs for A027315, there is no canonical definition to state claims against.
-/

/-! ## A027315.P17016933483094554723

`A065033(A286286(n))+n²`
-/

namespace A027315.P17016933483094554723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A286286 n).toNat + (n ^ 2 : ℤ)

end

end A027315.P17016933483094554723

/-! ## A027315.P7061456942958630906

`A054252(n)+A045917(A036691(n))`
-/

namespace A027315.P7061456942958630906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 n + A045917 (A036691 n).toNat

end

end A027315.P7061456942958630906

/-!
# A027316: a(n) = Sum_{k=0..m-1} T(n,k) * T(n,k+1), where m=n for n=0,1,2,3; m=2n for n >= 4; and T is given by A026082.

The programs for A027316, there is no canonical definition to state claims against.
-/

/-! ## A027316.P18412863841369060746

`A155763(A295056(n))`
-/

namespace A027316.P18412863841369060746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155763 (A295056 n).toNat

end

end A027316.P18412863841369060746

/-!
# A027317: a(n) = Sum_{k=0..m-2} T(n,k) * T(n,k+2), where m=n for n=0,1,2,3; m=2n for n >= 4; and T is given by A026082.

The programs for A027317, there is no canonical definition to state claims against.
-/

/-! ## A027317.P7159010723760775960

`or(A103627(A116824(2*n+1)), A116811(2*n+1))`
-/

namespace A027317.P7159010723760775960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103627 (A116824 (2 * n + 1)).toNat) (A116811 (2 * n + 1))

end

end A027317.P7159010723760775960

/-!
# A027319: a(n) = Sum_{k=0..m} (k+1) * A026082(n, k), where 0 <= k <= m, m=n for n=0,1,2,3; m=2n for n >= 4.

The programs for A027319, the canonical program `A027319.P10092458439041834293` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027319 has offset 0).

The definition of A027319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027319.P10092458439041834293

`6*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=20, a(4)=120, a(5)=432`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027319

/-- `6*a(n-1)-9*a(n-2)` -/
def P10092458439041834293.Spec : Prop :=
  ∀ n, P10092458439041834293.a n = A027319 n

theorem P10092458439041834293.correct : P10092458439041834293.Spec := by
  intro n
  simp only [A027319]

end A027319

/-! ## A027319.P6862490270236606747

`record[a(n-1)-2]` with `a(0)=1, a(1)=3, a(2)=8, a(3)=20, a(4)=120, a(5)=432`
-/

namespace A027319.P6862490270236606747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 20, 120, 432] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027319.P6862490270236606747

namespace A027319

/-- `record[a(n-1)-2]` -/
def P6862490270236606747.Spec : Prop :=
  ∀ n, P6862490270236606747.a n = A027319 n

end A027319

/-!
# A027322: Self-convolution of row n of array T given by A026120.

The programs for A027322, there is no canonical definition to state claims against.
-/

/-! ## A027322.P1080241041652206341

`A065033(∑[A271754(n+1)])+and(1, n)`
-/

namespace A027322.P1080241041652206341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (Nat.land 1 n : ℤ)

end

end A027322.P1080241041652206341

/-! ## A027322.P17240425452235532587

`A214763(n)-A302242(A342971(n))`
-/

namespace A027322.P17240425452235532587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214763 n - A302242 (A342971 (n + 11)).toNat

end

end A027322.P17240425452235532587

/-!
# A027323: a(n) = Sum_{k=0..m} T(n,k) * T(n,k+1), where m=0 for n=1; m=n for n >= 2; and T is given by A026120.

The programs for A027323, there is no canonical definition to state claims against.
-/

/-! ## A027323.P16193159856672765041

`A034888(xor(3, A080618(n)))`
-/

namespace A027323.P16193159856672765041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (Int.xor 3 (A080618 n)).toNat

end

end A027323.P16193159856672765041

/-!
# A027326: a(n) = Sum_{k=0..m} (k+1) * A026120(n, k), where m=0 for n=0,1; m=n for n >= 2.

The programs for A027326, there is no canonical definition to state claims against.
-/

/-! ## A027326.P12141154808862574307

`∑[A100196(A155597(n))]`
-/

namespace A027326.P12141154808862574307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A155597 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027326.P12141154808862574307

/-! ## A027326.P6599803374379346498

`A048865(4*A100103(n))`
-/

namespace A027326.P6599803374379346498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (4 * A100103 n).toNat

end

end A027326.P6599803374379346498

/-!
# A027327: a(n) = Sum_{k=0..m} (k+1) * A026120(n, m-k), where m=0 for n=0,1; m=n for n >= 2.

The programs for A027327, the canonical program `A027327.P4263301759619584350` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027327 has offset 0).

The definition of A027327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027327.P18126269519928425712

`ogf((1+3x^2)/(1-3x))`
-/

namespace A027327.P18126269519928425712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3] [1, -3] n

end

end A027327.P18126269519928425712

namespace A027327

/-- `ogf((1+3x^2)/(1-3x))` -/
def P18126269519928425712.Spec : Prop :=
  ∀ n, P18126269519928425712.a n = A027327 n

end A027327

/-! ## A027327.P4263301759619584350

`3*a(n-1)` with `a(0)=1, a(1)=3, a(2)=12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027327

/-- `3*a(n-1)` -/
def P4263301759619584350.Spec : Prop :=
  ∀ n, (P4263301759619584350.a n : ℤ) = A027327 n

theorem P4263301759619584350.correct : P4263301759619584350.Spec := by
  intro n
  simp only [A027327]

end A027327

/-! ## A027327.P13529087441755420848

`a(n-1)+a(n-1)+a(n-1)+a(n-1)%4` with `a(0)=1, a(1)=3`
-/

namespace A027327.P13529087441755420848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 1) % 4))

end

end A027327.P13529087441755420848

namespace A027327

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)%4` -/
def P13529087441755420848.Spec : Prop :=
  ∀ n, (P13529087441755420848.a n : ℤ) = A027327 n

end A027327

/-! ## A027327.P18019300077455022630

`A003946(n)-char[1]`
-/

namespace A027327.P18019300077455022630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A027327.P18019300077455022630

namespace A027327

/-- `A003946(n)-char[1]` -/
def P18019300077455022630.Spec : Prop :=
  ∀ n, P18019300077455022630.a n = A027327 n

end A027327

/-! ## A027327.P18310660399014541811

`A052156(n+1)-char[1]`
-/

namespace A027327.P18310660399014541811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A027327.P18310660399014541811

namespace A027327

/-- `A052156(n+1)-char[1]` -/
def P18310660399014541811.Spec : Prop :=
  ∀ n, P18310660399014541811.a n = A027327 n

end A027327

/-! ## A027327.P7303369658373905661

`A074324(2*n)-char[1]`
-/

namespace A027327.P7303369658373905661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A027327.P7303369658373905661

namespace A027327

/-- `A074324(2*n)-char[1]` -/
def P7303369658373905661.Spec : Prop :=
  ∀ n, P7303369658373905661.a n = A027327 n

end A027327

/-! ## A027327.P16927838115028536951

`record[A166552(n+1)-char[1]]`
-/

namespace A027327.P16927838115028536951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027327.P16927838115028536951

namespace A027327

/-- `record[A166552(n+1)-char[1]]` -/
def P16927838115028536951.Spec : Prop :=
  ∀ n, P16927838115028536951.a n = A027327 n

end A027327

/-! ## A027327.P1114030412430420777

`A211221(2*n+1)-char[1]`
-/

namespace A027327.P1114030412430420777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (2 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A027327.P1114030412430420777

namespace A027327

/-- `A211221(2*n+1)-char[1]` -/
def P1114030412430420777.Spec : Prop :=
  ∀ n, P1114030412430420777.a n = A027327 n

end A027327

/-! ## A027327.P17145773519399144900

`∑[3^(n-2)*A329513(n+3)]-char[1]`
-/

namespace A027327.P17145773519399144900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A329513 (n + 3) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ)

end

end A027327.P17145773519399144900

namespace A027327

/-- `∑[3^(n-2)*A329513(n+3)]-char[1]` -/
def P17145773519399144900.Spec : Prop :=
  ∀ n, P17145773519399144900.a n = (A027327 n : ℚ)

end A027327

/-! ## A027327.P16258717354523652810

`(ceil(abs(sin(A024318(n+1))))+3)*3^(n-1)`
-/

namespace A027327.P16258717354523652810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (A024318 (n + 1) : ℝ)|⌉ + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A027327.P16258717354523652810

namespace A027327

/-- `(ceil(abs(sin(A024318(n+1))))+3)*3^(n-1)` -/
def P16258717354523652810.Spec : Prop :=
  ∀ n, P16258717354523652810.a n = (A027327 n : ℚ)

end A027327

/-! ## A027327.P4662241162719145237

`(ceil(abs(sin(A277267(n+1))))+3)*3^(n-1)`
-/

namespace A027327.P4662241162719145237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (A277267 (n + 1) : ℝ)|⌉ + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A027327.P4662241162719145237

namespace A027327

/-- `(ceil(abs(sin(A277267(n+1))))+3)*3^(n-1)` -/
def P4662241162719145237.Spec : Prop :=
  ∀ n, P4662241162719145237.a n = (A027327 n : ℚ)

end A027327

/-! ## A027327.P5363399416397974171

`A074324(A092535(n+1))`
-/

namespace A027327.P5363399416397974171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A092535 (n + 1)).toNat

end

end A027327.P5363399416397974171

namespace A027327

/-- `A074324(A092535(n+1))` -/
def P5363399416397974171.Spec : Prop :=
  ∀ n, P5363399416397974171.a n = A027327 n

end A027327

/-! ## A027327.P11736633083994275914

`A211221(A140139(n+1))`
-/

namespace A027327.P11736633083994275914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (A140139 (n + 1)).toNat

end

end A027327.P11736633083994275914

namespace A027327

/-- `A211221(A140139(n+1))` -/
def P11736633083994275914.Spec : Prop :=
  ∀ n, P11736633083994275914.a n = A027327 n

end A027327

/-! ## A027327.P1088381666454676747

`A211221(A163985(n+1))`
-/

namespace A027327.P1088381666454676747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (A163985 (n + 1)).toNat

end

end A027327.P1088381666454676747

namespace A027327

/-- `A211221(A163985(n+1))` -/
def P1088381666454676747.Spec : Prop :=
  ∀ n, P1088381666454676747.a n = A027327 n

end A027327

/-! ## A027327.P8212981030241822209

`A074324(A058992(n+2))`
-/

namespace A027327.P8212981030241822209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A058992 (n + 2)).toNat

end

end A027327.P8212981030241822209

namespace A027327

/-- `A074324(A058992(n+2))` -/
def P8212981030241822209.Spec : Prop :=
  ∀ n, P8212981030241822209.a n = A027327 n

end A027327

/-! ## A027327.P6637679605856712047

`A159075(n)+A003946(n)`
-/

namespace A027327.P6637679605856712047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A003946 n

end

end A027327.P6637679605856712047

namespace A027327

/-- `A159075(n)+A003946(n)` -/
def P6637679605856712047.Spec : Prop :=
  ∀ n, P6637679605856712047.a n = A027327 n

end A027327

/-! ## A027327.P10962293489929893607

`A052156(n)*A122553(n)`
-/

namespace A027327.P10962293489929893607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n * A122553 n

end

end A027327.P10962293489929893607

namespace A027327

/-- `A052156(n)*A122553(n)` -/
def P10962293489929893607.Spec : Prop :=
  ∀ n, P10962293489929893607.a n = A027327 n

end A027327

/-! ## A027327.P1781261874317291510

`A113311(n)*A133494(n)`
-/

namespace A027327.P1781261874317291510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n * A133494 n

end

end A027327.P1781261874317291510

namespace A027327

/-- `A113311(n)*A133494(n)` -/
def P1781261874317291510.Spec : Prop :=
  ∀ n, P1781261874317291510.a n = A027327 n

end A027327

/-! ## A027327.P14240938763321981449

`A159075(n)+A052156(n+1)`
-/

namespace A027327.P14240938763321981449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A052156 (n + 1)

end

end A027327.P14240938763321981449

namespace A027327

/-- `A159075(n)+A052156(n+1)` -/
def P14240938763321981449.Spec : Prop :=
  ∀ n, P14240938763321981449.a n = A027327 n

end A027327

/-! ## A027327.P13331997884878356567

`A000792(2*n+1)*A000792(n)`
-/

namespace A027327.P13331997884878356567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (2 * n + 1) * A000792 n

end

end A027327.P13331997884878356567

namespace A027327

/-- `A000792(2*n+1)*A000792(n)` -/
def P13331997884878356567.Spec : Prop :=
  ∀ n, P13331997884878356567.a n = A027327 n

end A027327

/-!
# A027328: a(n) is the sum of squares of the numbers in row n of array T given by A026120.

The programs for A027328, there is no canonical definition to state claims against.
-/

/-! ## A027328.P14722613167491568826

`A059347(A084849(n)+A008458(n))`
-/

namespace A027328.P14722613167491568826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 (A084849 n + A008458 n).toNat

end

end A027328.P14722613167491568826

/-! ## A027328.P17709971559708958554

`A059347(A161532(n)-A028310(n))`
-/

namespace A027328.P17709971559708958554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 (A161532 n - A028310 n).toNat

end

end A027328.P17709971559708958554

/-! ## A027328.P2683050285827099950

`A059347(A004273(n)+A000096(2*n+1))`
-/

namespace A027328.P2683050285827099950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 (A004273 n + A000096 (2 * n + 1)).toNat

end

end A027328.P2683050285827099950

/-! ## A027328.P9327888262177882414

`A059347(A008574(n)+A000217(2*n+1))`
-/

namespace A027328.P9327888262177882414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 (A008574 n + A000217 (2 * n + 1)).toNat

end

end A027328.P9327888262177882414

/-! ## A027328.P7599824021551430885

`A059347(A004280(n+1)+A000096(2*n+1))`
-/

namespace A027328.P7599824021551430885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 (A004280 (n + 1) + A000096 (2 * n + 1)).toNat

end

end A027328.P7599824021551430885

/-!
# A027329: a(n) = self-convolution of row n of array T given by A026148.

The programs for A027329, there is no canonical definition to state claims against.
-/

/-! ## A027329.P15621965021480105089

`A194960(Δ[floor(6^(n-1))]-∑{d}[2*n, (n%#)^3])`
-/

namespace A027329.P15621965021480105089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (f1 (n + 1) - f1 n - ((∑ d ∈ Nat.divisors (f2 n), (n % d) ^ 3 : ℕ) : ℤ)).toNat

end

end A027329.P15621965021480105089

/-! ## A027329.P13215007513103794494

`and(A069271(n), A234024(A069271(n)))`
-/

namespace A027329.P13215007513103794494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069271 n) (A234024 (A069271 n).toNat)

end

end A027329.P13215007513103794494

/-!
# A027330: a(n) = Sum_{k=0..m} T(n,k) * T(n,k+1), where m=0 for n=1; m=n+1 for n >= 2; and T is given by A026148.

The programs for A027330, there is no canonical definition to state claims against.
-/

/-! ## A027330.P5043704959062290376

`A065880(n)+A003160(A016203(n))`
-/

namespace A027330.P5043704959062290376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065880 n + A003160 (A016203 n).toNat

end

end A027330.P5043704959062290376

/-!
# A027333: a(n) = Sum_{k=0..m} (k+1) * A026148(n, k), where m=0 for n=1; m=n+1 for n >= 2.

The programs for A027333, there is no canonical definition to state claims against.
-/

/-! ## A027333.P1199149511359370739

`A189734(n+1)-A030341(A363152(n))`
-/

namespace A027333.P1199149511359370739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189734 (n + 1) - A030341 (A363152 n).toNat

end

end A027333.P1199149511359370739

/-! ## A027333.P4318012966420771592

`A189734(n+1)-A284557(A084477(n+1))`
-/

namespace A027333.P4318012966420771592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189734 (n + 1) - A284557 (A084477 (n + 1)).toNat

end

end A027333.P4318012966420771592

/-!
# A027334: a(n) = Sum_{k=0..m} (k+1) * A026148(n, m-k), where m=0 for n=1; m=n+1 for n >= 2.

The programs for A027334, the canonical program `A027334.P14201345717020490764` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027334 has offset 0).

The definition of A027334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027334.P7497977917111746786

`ogf((1+9x^2)/(1-3x))`
-/

namespace A027334.P7497977917111746786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 9] [1, -3] n

end

end A027334.P7497977917111746786

namespace A027334

/-- `ogf((1+9x^2)/(1-3x))` -/
def P7497977917111746786.Spec : Prop :=
  ∀ n, P7497977917111746786.a n = A027334 n

end A027334

/-! ## A027334.P9762720881003646762

`3^n*ceil(atan(n))!`
-/

namespace A027334.P9762720881003646762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.factorial ⌈Real.arctan (n : ℝ)⌉.toNat

end

end A027334.P9762720881003646762

namespace A027334

/-- `3^n*ceil(atan(n))!` -/
def P9762720881003646762.Spec : Prop :=
  ∀ n, (P9762720881003646762.a n : ℤ) = A027334 n

end A027334

/-! ## A027334.P8179245666475127759

`3^n*ceil(acot(acot(n)))`
-/

namespace A027334.P8179245666475127759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉

end

end A027334.P8179245666475127759

namespace A027334

/-- `3^n*ceil(acot(acot(n)))` -/
def P8179245666475127759.Spec : Prop :=
  ∀ n, P8179245666475127759.a n = A027334 n

end A027334

/-! ## A027334.P14201345717020490764

`3*a(n-1)` with `a(0)=1, a(1)=3, a(2)=18`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027334

/-- `3*a(n-1)` -/
def P14201345717020490764.Spec : Prop :=
  ∀ n, (P14201345717020490764.a n : ℤ) = A027334 n

theorem P14201345717020490764.correct : P14201345717020490764.Spec := by
  intro n
  simp only [A027334]

end A027334

/-! ## A027334.P13071378501376396392

`Δ[3^n]-C(3, n²)`
-/

namespace A027334.P13071378501376396392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.choose 3 (n ^ 2) : ℤ)

end

end A027334.P13071378501376396392

namespace A027334

/-- `Δ[3^n]-C(3, n²)` -/
def P13071378501376396392.Spec : Prop :=
  ∀ n, P13071378501376396392.a n = A027334 n

end A027334

/-! ## A027334.P10148442002488211183

`3^n*(2%(n+1))!`
-/

namespace A027334.P10148442002488211183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.factorial (2 % (n + 1))

end

end A027334.P10148442002488211183

namespace A027334

/-- `3^n*(2%(n+1))!` -/
def P10148442002488211183.Spec : Prop :=
  ∀ n, (P10148442002488211183.a n : ℤ) = A027334 n

end A027334

/-! ## A027334.P15205112710488283298

`(2-C(n, n²))*3^n`
-/

namespace A027334.P15205112710488283298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose n (n ^ 2) : ℤ)) * (3 ^ n : ℤ)

end

end A027334.P15205112710488283298

namespace A027334

/-- `(2-C(n, n²))*3^n` -/
def P15205112710488283298.Spec : Prop :=
  ∀ n, P15205112710488283298.a n = A027334 n

end A027334

/-! ## A027334.P12417504438830882785

`3^n*round(atan(n+1)²)`
-/

namespace A027334.P12417504438830882785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * SequenceMachineLib.roundAway (Real.arctan (n + 1 : ℝ) ^ 2)

end

end A027334.P12417504438830882785

namespace A027334

/-- `3^n*round(atan(n+1)²)` -/
def P12417504438830882785.Spec : Prop :=
  ∀ n, P12417504438830882785.a n = A027334 n

end A027334

/-! ## A027334.P8325261144728718292

`3^n*floor(3^(n/(n+1)))`
-/

namespace A027334.P8325261144728718292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌊(3 : ℝ) ^ ((n : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A027334.P8325261144728718292

namespace A027334

/-- `3^n*floor(3^(n/(n+1)))` -/
def P8325261144728718292.Spec : Prop :=
  ∀ n, P8325261144728718292.a n = A027334 n

end A027334

/-! ## A027334.P2079427797404500021

`A038754(A130773(n))`
-/

namespace A027334.P2079427797404500021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A130773 n).toNat

end

end A027334.P2079427797404500021

namespace A027334

/-- `A038754(A130773(n))` -/
def P2079427797404500021.Spec : Prop :=
  ∀ n, P2079427797404500021.a n = A027334 n

end A027334

/-! ## A027334.P18072350545405552079

`A166450(A092535(n+1))`
-/

namespace A027334.P18072350545405552079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166450 (A092535 (n + 1)).toNat

end

end A027334.P18072350545405552079

namespace A027334

/-- `A166450(A092535(n+1))` -/
def P18072350545405552079.Spec : Prop :=
  ∀ n, P18072350545405552079.a n = A027334 n

end A027334

/-! ## A027334.P6329869569124946880

`A182751(A140139(n+1))`
-/

namespace A027334.P6329869569124946880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182751 (A140139 (n + 1)).toNat

end

end A027334.P6329869569124946880

namespace A027334

/-- `A182751(A140139(n+1))` -/
def P6329869569124946880.Spec : Prop :=
  ∀ n, P6329869569124946880.a n = A027334 n

end A027334

/-! ## A027334.P15187829798968772599

`A182751(A163985(n+1))`
-/

namespace A027334.P15187829798968772599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182751 (A163985 (n + 1)).toNat

end

end A027334.P15187829798968772599

namespace A027334

/-- `A182751(A163985(n+1))` -/
def P15187829798968772599.Spec : Prop :=
  ∀ n, P15187829798968772599.a n = A027334 n

end A027334

/-! ## A027334.P1668683102941276815

`A166450(A058992(n+2))`
-/

namespace A027334.P1668683102941276815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166450 (A058992 (n + 2)).toNat

end

end A027334.P1668683102941276815

namespace A027334

/-- `A166450(A058992(n+2))` -/
def P1668683102941276815.Spec : Prop :=
  ∀ n, P1668683102941276815.a n = A027334 n

end A027334

/-! ## A027334.P11528025592478800064

`A008776(n)-A169585(n)`
-/

namespace A027334.P11528025592478800064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - A169585 n

end

end A027334.P11528025592478800064

namespace A027334

/-- `A008776(n)-A169585(n)` -/
def P11528025592478800064.Spec : Prop :=
  ∀ n, P11528025592478800064.a n = A027334 n

end A027334

/-! ## A027334.P16190756341169220012

`A008776(n)/A141044(n)`
-/

namespace A027334.P16190756341169220012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008776 n : ℚ) / (A141044 n : ℚ)

end

end A027334.P16190756341169220012

namespace A027334

/-- `A008776(n)/A141044(n)` -/
def P16190756341169220012.Spec : Prop :=
  ∀ n, P16190756341169220012.a n = (A027334 n : ℚ)

end A027334

/-! ## A027334.P13522833929471302737

`A099856(n)/A373565(n)`
-/

namespace A027334.P13522833929471302737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099856 n : ℚ) / (A373565 n : ℚ)

end

end A027334.P13522833929471302737

namespace A027334

/-- `A099856(n)/A373565(n)` -/
def P13522833929471302737.Spec : Prop :=
  ∀ n, P13522833929471302737.a n = (A027334 n : ℚ)

end A027334

/-! ## A027334.P12177910320962562535

`lcm(A000244(n), A084100(n))`
-/

namespace A027334.P12177910320962562535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A084100 n)

end

end A027334.P12177910320962562535

namespace A027334

/-- `lcm(A000244(n), A084100(n))` -/
def P12177910320962562535.Spec : Prop :=
  ∀ n, (P12177910320962562535.a n : ℤ) = A027334 n

end A027334

/-! ## A027334.P9746806854399300628

`A182522(A267873(n+1)-1)`
-/

namespace A027334.P9746806854399300628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A267873 (n + 1) - 1).toNat

end

end A027334.P9746806854399300628

namespace A027334

/-- `A182522(A267873(n+1)-1)` -/
def P9746806854399300628.Spec : Prop :=
  ∀ n, P9746806854399300628.a n = A027334 n

end A027334

/-! ## A027334.P901232820824776303

`lcm(A104435(n+1), A352779(n))`
-/

namespace A027334.P901232820824776303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A104435 (n + 1)) (A352779 n)

end

end A027334.P901232820824776303

namespace A027334

/-- `lcm(A104435(n+1), A352779(n))` -/
def P901232820824776303.Spec : Prop :=
  ∀ n, (P901232820824776303.a n : ℤ) = A027334 n

end A027334

/-!
# A027335: a(n) is the sum of squares of the numbers in row n of array T given by A026148.

The programs for A027335, there is no canonical definition to state claims against.
-/

/-! ## A027335.P13882279403179985035

`A341868(∑[∑[∑[n]]])+n`
-/

namespace A027335.P13882279403179985035
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341868 (∑ j ∈ Finset.range (n + 1), f1 j + 10) + (n : ℤ)

end

end A027335.P13882279403179985035

/-!
# A027336: Number of partitions of n that do not contain 2 as a part.

The programs for A027336, there is no canonical definition to state claims against.
-/

/-! ## A027336.P8010213328654206566

`∑[A008483(n)]`
-/

namespace A027336.P8010213328654206566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027336.P8010213328654206566

/-! ## A027336.P16651499310397945406

`∑[A026796(n+3)]`
-/

namespace A027336.P16651499310397945406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027336.P16651499310397945406

/-! ## A027336.P16253545338006610477

`A121659(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A027336.P16253545338006610477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A121659 n + a (n - 3)

end

end A027336.P16253545338006610477

/-! ## A027336.P10355548448292330535

`A085811(n+2)+A002865(n)`
-/

namespace A027336.P10355548448292330535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) + A002865 n

end

end A027336.P10355548448292330535

/-! ## A027336.P14039163195143464652

`A085811(n+2)+A085811(n+3)`
-/

namespace A027336.P14039163195143464652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) + A085811 (n + 3)

end

end A027336.P14039163195143464652

/-! ## A027336.P15414898156292741651

`A002865(n+1)+A002865(n)-A008483(n+1)`
-/

namespace A027336.P15414898156292741651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A002865 n - A008483 (n + 1))

end

end A027336.P15414898156292741651

/-! ## A027336.P3631421054866133645

`A027337(n)-A085811(n+1)`
-/

namespace A027336.P3631421054866133645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n - A085811 (n + 1)

end

end A027336.P3631421054866133645

/-! ## A027336.P18029185195658747863

`A008483(n)+A027337(n)-A002865(n)`
-/

namespace A027336.P18029185195658747863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n + (A027337 n - A002865 n)

end

end A027336.P18029185195658747863

/-! ## A027336.P6721820051997600523

`A027337(n+1)-A002865(n+1)`
-/

namespace A027336.P6721820051997600523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) - A002865 (n + 1)

end

end A027336.P6721820051997600523

/-! ## A027336.P15537745715597691342

`A027338(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A027336.P15537745715597691342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A027338 n - a (n - 2)

end

end A027336.P15537745715597691342

/-! ## A027336.P13136885371116291523

`A320689(n)-a(n-1)` with `a(0)=1`
-/

namespace A027336.P13136885371116291523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320689 n - a (n - 1)

end

end A027336.P13136885371116291523

/-! ## A027336.P17676278683386721640

`(A320689(n)+A008483(n))/2`
-/

namespace A027336.P17676278683386721640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320689 n + A008483 n : ℚ) / 2

end

end A027336.P17676278683386721640

/-! ## A027336.P13544429638393854557

`A027337(n+1)+A027337(n)-A027338(n+1)`
-/

namespace A027336.P13544429638393854557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) + (A027337 n - A027338 (n + 1))

end

end A027336.P13544429638393854557

/-! ## A027336.P935957710454037037

`A320689(n+1)-(A002865(n+1)+A002865(n))`
-/

namespace A027336.P935957710454037037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320689 (n + 1) - (A002865 (n + 1) + A002865 n)

end

end A027336.P935957710454037037

/-! ## A027336.P16339956656740817118

`A027339(n+3)-A027337(n+3)`
-/

namespace A027336.P16339956656740817118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 3) - A027337 (n + 3)

end

end A027336.P16339956656740817118

/-! ## A027336.P13929176609757258511

`A027337(n+1)+A027340(n)-A027341(n+1)`
-/

namespace A027336.P13929176609757258511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) + (A027340 n - A027341 (n + 1))

end

end A027336.P13929176609757258511

/-! ## A027336.P16045561343169115231

`A027337(n+1)+A027341(n)-A027342(n+1)`
-/

namespace A027336.P16045561343169115231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) + (A027341 n - A027342 (n + 1))

end

end A027336.P16045561343169115231

/-! ## A027336.P4431188869251686166

`A027337(n+1)+A027343(n)-A027344(n+1)`
-/

namespace A027336.P4431188869251686166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) + (A027343 n - A027344 (n + 1))

end

end A027336.P4431188869251686166

/-! ## A027336.P13672576190363246242

`A000041(n)-∑[A085811(n+1)]`
-/

namespace A027336.P13672576190363246242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027336.P13672576190363246242

/-! ## A027336.P7750598903083221070

`A000041(n)+A002865(n)-A229816(n)`
-/

namespace A027336.P7750598903083221070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A002865 n - A229816 n)

end

end A027336.P7750598903083221070

/-!
# A027337: Number of partitions of n that do not contain 3 as a part.

The programs for A027337, there is no canonical definition to state claims against.
-/

/-! ## A027337.P17593271831899842500

`∑[A181531(n)]`
-/

namespace A027337.P17593271831899842500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027337.P17593271831899842500

/-! ## A027337.P109925330647761742

`A121659(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A027337.P109925330647761742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A121659 n + a (n - 2)

end

end A027337.P109925330647761742

/-! ## A027337.P15150650004350392329

`A085811(n+1)+A027336(n)`
-/

namespace A027337.P15150650004350392329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1) + A027336 n

end

end A027337.P15150650004350392329

/-! ## A027337.P5275310922253441895

`A085811(n+1)+∑[A008483(n)]`
-/

namespace A027337.P5275310922253441895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027337.P5275310922253441895

/-! ## A027337.P3705045197086981010

`A002865(n+2)-A195054(n+2)`
-/

namespace A027337.P3705045197086981010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 2) - A195054 (n + 2)

end

end A027337.P3705045197086981010

/-! ## A027337.P5971038740581657340

`A085811(n+1)+∑[A026796(n+3)]`
-/

namespace A027337.P5971038740581657340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027337.P5971038740581657340

/-! ## A027337.P7614808948367278223

`A002865(n)+A027336(n)-A008483(n)`
-/

namespace A027337.P7614808948367278223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + (A027336 n - A008483 n)

end

end A027337.P7614808948367278223

/-! ## A027337.P12162074155549125927

`A085811(n+1)+A085811(n+2)+A002865(n)`
-/

namespace A027337.P12162074155549125927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1) + (A085811 (n + 2) + A002865 n)

end

end A027337.P12162074155549125927

/-! ## A027337.P15472288483351298188

`A027338(n+1)-A002865(n+1)`
-/

namespace A027337.P15472288483351298188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - A002865 (n + 1)

end

end A027337.P15472288483351298188

/-! ## A027337.P3757278955171332204

`A002865(n)+A320689(n)-A027336(n)`
-/

namespace A027337.P3757278955171332204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + (A320689 n - A027336 n)

end

end A027337.P3757278955171332204

/-! ## A027337.P3660347953027865620

`A027338(n+1)+A027338(n)-A027339(n+1)`
-/

namespace A027337.P3660347953027865620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) + (A027338 n - A027339 (n + 1))

end

end A027337.P3660347953027865620

/-! ## A027337.P17454105301002810267

`A027339(n+2)-A027336(n+2)`
-/

namespace A027337.P17454105301002810267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 2) - A027336 (n + 2)

end

end A027337.P17454105301002810267

/-! ## A027337.P3061015483042863452

`A027340(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A027337.P3061015483042863452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A027340 n - a (n - 3)

end

end A027337.P3061015483042863452

/-! ## A027337.P14907573865299726672

`A027338(n+1)+A027340(n)-A027341(n+1)`
-/

namespace A027337.P14907573865299726672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) + (A027340 n - A027341 (n + 1))

end

end A027337.P14907573865299726672

/-! ## A027337.P12117413382613571166

`A027338(n+1)+A027341(n)-A027342(n+1)`
-/

namespace A027337.P12117413382613571166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) + (A027341 n - A027342 (n + 1))

end

end A027337.P12117413382613571166

/-! ## A027337.P2141538240335090643

`A027338(n+1)+A027343(n)-A027344(n+1)`
-/

namespace A027337.P2141538240335090643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) + (A027343 n - A027344 (n + 1))

end

end A027337.P2141538240335090643

/-! ## A027337.P9234779714162447727

`A085811(n+1)+A000041(n)-∑[A085811(n+1)]`
-/

namespace A027337.P9234779714162447727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1) + (A000041 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027337.P9234779714162447727

/-! ## A027337.P13958983007795386976

`A027338(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A027337.P13958983007795386976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A027337.P13958983007795386976

/-! ## A027337.P7718413115186028466

`A027338(n+1)+A000065(n)-A000065(n+1)`
-/

namespace A027337.P7718413115186028466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) + (A000065 n - A000065 (n + 1))

end

end A027337.P7718413115186028466

/-! ## A027337.P2912359085525730078

`A263232(∑[round((n+1)/3)])`
-/

namespace A027337.P2912359085525730078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263232 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027337.P2912359085525730078

/-!
# A027338: Number of partitions of n that do not contain 4 as a part.

The programs for A027338, there is no canonical definition to state claims against.
-/

/-! ## A027338.P523240709557224775

`∑[A026796(n+1)+A008483(n)]`
-/

namespace A027338.P523240709557224775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 1) + A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027338.P523240709557224775

/-! ## A027338.P17879185125626667441

`A085811(A028310(n))+A027337(n)`
-/

namespace A027338.P17879185125626667441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (A028310 n).toNat + A027337 n

end

end A027338.P17879185125626667441

/-! ## A027338.P15241607814341645804

`A027336(n+1)+A027336(n)-A121659(n+1)`
-/

namespace A027338.P15241607814341645804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) + (A027336 n - A121659 (n + 1))

end

end A027338.P15241607814341645804

/-! ## A027338.P10154716303758470207

`A002865(n+1)+A002865(n)-A195054(n+1)`
-/

namespace A027338.P10154716303758470207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A002865 n - A195054 (n + 1))

end

end A027338.P10154716303758470207

/-! ## A027338.P7086553313708349064

`A320689(n)-A026796(n+2)`
-/

namespace A027338.P7086553313708349064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320689 n - A026796 (n + 2)

end

end A027338.P7086553313708349064

/-! ## A027338.P15056167356082911547

`A027339(n+1)-A002865(n+1)`
-/

namespace A027338.P15056167356082911547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 1) - A002865 (n + 1)

end

end A027338.P15056167356082911547

/-! ## A027338.P3540516616506321063

`A027339(n+1)+A027336(n)-A027337(n+1)`
-/

namespace A027338.P3540516616506321063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 1) + (A027336 n - A027337 (n + 1))

end

end A027338.P3540516616506321063

/-! ## A027338.P15727055734468227657

`A027339(n+1)+A027339(n)-A027340(n+1)`
-/

namespace A027338.P15727055734468227657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 1) + (A027339 n - A027340 (n + 1))

end

end A027338.P15727055734468227657

/-! ## A027338.P4065722001597410143

`A027340(n+2)-A027336(n+2)`
-/

namespace A027338.P4065722001597410143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (n + 2) - A027336 (n + 2)

end

end A027338.P4065722001597410143

/-! ## A027338.P9799201583543672895

`A027341(n+3)-A027337(n+3)`
-/

namespace A027338.P9799201583543672895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (n + 3) - A027337 (n + 3)

end

end A027338.P9799201583543672895

/-! ## A027338.P577234497037617193

`A027339(n+1)+A027341(n)-A027342(n+1)`
-/

namespace A027338.P577234497037617193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 1) + (A027341 n - A027342 (n + 1))

end

end A027338.P577234497037617193

/-! ## A027338.P14390536769936432414

`A027339(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A027338.P14390536769936432414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A027338.P14390536769936432414

/-! ## A027338.P5310479652567258367

`A027339(n+1)+A000065(n)-A000065(n+1)`
-/

namespace A027338.P5310479652567258367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 1) + (A000065 n - A000065 (n + 1))

end

end A027338.P5310479652567258367

/-! ## A027338.P7879817160348712964

`A175788(A052905(n+2))`
-/

namespace A027338.P7879817160348712964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A052905 (n + 2)).toNat

end

end A027338.P7879817160348712964

/-! ## A027338.P3434783878209599596

`A175788(A056115(n)+10)`
-/

namespace A027338.P3434783878209599596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A056115 n + 10).toNat

end

end A027338.P3434783878209599596

/-! ## A027338.P2489545755917205791

`A175788(A055998(n+3)-2)`
-/

namespace A027338.P2489545755917205791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A055998 (n + 3) - 2).toNat

end

end A027338.P2489545755917205791

/-! ## A027338.P8016453089272721369

`A175788(A000096(n+4)-4)`
-/

namespace A027338.P8016453089272721369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000096 (n + 4) - 4).toNat

end

end A027338.P8016453089272721369

/-! ## A027338.P1559638291209844688

`A175788(2*n+A055999(n)+10)`
-/

namespace A027338.P1559638291209844688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 ((2 * n : ℤ) + (A055999 n + 10)).toNat

end

end A027338.P1559638291209844688

/-! ## A027338.P8048850050850154071

`A175788(2*n+Δ[A005586(n)]+5)`
-/

namespace A027338.P8048850050850154071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 ((2 * n : ℤ) + (f1 (n + 1) - f1 n + 5)).toNat

end

end A027338.P8048850050850154071

/-! ## A027338.P15176879543273118178

`A175788(2*n+A167614(n+2)+1)`
-/

namespace A027338.P15176879543273118178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 ((2 * n : ℤ) + (A167614 (n + 2) + 1)).toNat

end

end A027338.P15176879543273118178

/-!
# A027339: Number of partitions of n that do not contain 5 as a part.

The programs for A027339, there is no canonical definition to state claims against.
-/

/-! ## A027339.P10734649828975893218

`A027337(n)+∑[A026796(n)]`
-/

namespace A027339.P10734649828975893218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027339.P10734649828975893218

/-! ## A027339.P4781553956066961897

`∑[A181531(n)+A026796(n)]`
-/

namespace A027339.P4781553956066961897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181531 n + A026796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027339.P4781553956066961897

/-! ## A027339.P11940000027212489457

`A027340(n+1)-A002865(n+1)`
-/

namespace A027339.P11940000027212489457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (n + 1) - A002865 (n + 1)

end

end A027339.P11940000027212489457

/-! ## A027339.P17632801307891046305

`A027340(n+1)+A027336(n)-A027337(n+1)`
-/

namespace A027339.P17632801307891046305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (n + 1) + (A027336 n - A027337 (n + 1))

end

end A027339.P17632801307891046305

/-! ## A027339.P17646484415399329048

`A027340(n+1)+A027337(n)-A027338(n+1)`
-/

namespace A027339.P17646484415399329048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (n + 1) + (A027337 n - A027338 (n + 1))

end

end A027339.P17646484415399329048

/-! ## A027339.P7856333675434534105

`A027340(n+1)+A027340(n)-A027341(n+1)`
-/

namespace A027339.P7856333675434534105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (n + 1) + (A027340 n - A027341 (n + 1))

end

end A027339.P7856333675434534105

/-! ## A027339.P12091920283860950226

`A027341(n+2)-A027336(n+2)`
-/

namespace A027339.P12091920283860950226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (n + 2) - A027336 (n + 2)

end

end A027339.P12091920283860950226

/-! ## A027339.P13109503055189973512

`A027342(n+3)-A027337(n+3)`
-/

namespace A027339.P13109503055189973512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (n + 3) - A027337 (n + 3)

end

end A027339.P13109503055189973512

/-! ## A027339.P4473935441666293874

`A027340(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A027339.P4473935441666293874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A027339.P4473935441666293874

/-! ## A027339.P7647061687575468979

`A027340(n+1)+A000065(n)-A000065(n+1)`
-/

namespace A027339.P7647061687575468979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (n + 1) + (A000065 n - A000065 (n + 1))

end

end A027339.P7647061687575468979

/-! ## A027339.P10158795706405675432

`A175788(A055999(n+3))`
-/

namespace A027339.P10158795706405675432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A055999 (n + 3)).toNat

end

end A027339.P10158795706405675432

/-! ## A027339.P5769205884465912121

`A175788(A056119(n)+15)`
-/

namespace A027339.P5769205884465912121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A056119 n + 15).toNat

end

end A027339.P5769205884465912121

/-! ## A027339.P10508750436058764526

`A175788(Δ[A023551(n+1)])`
-/

namespace A027339.P10508750436058764526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (f1 (n + 1) - f1 n).toNat

end

end A027339.P10508750436058764526

/-! ## A027339.P6847374741400417978

`A175788(A000096(n+5)-5)`
-/

namespace A027339.P6847374741400417978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000096 (n + 5) - 5).toNat

end

end A027339.P6847374741400417978

/-! ## A027339.P532971898106306074

`A175788(A000217(n+6)-6)`
-/

namespace A027339.P532971898106306074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000217 (n + 6) - 6).toNat

end

end A027339.P532971898106306074

/-! ## A027339.P11235998325841412447

`A175788(2*n+A046691(n+2)+9)`
-/

namespace A027339.P11235998325841412447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 ((2 * n : ℤ) + (A046691 (n + 2) + 9)).toNat

end

end A027339.P11235998325841412447

/-!
# A027340: Number of partitions of n that do not contain 6 as a part.

The programs for A027340, there is no canonical definition to state claims against.
-/

/-! ## A027340.P8671665275373944085

`A027341(n+1)-A002865(n+1)`
-/

namespace A027340.P8671665275373944085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (n + 1) - A002865 (n + 1)

end

end A027340.P8671665275373944085

/-! ## A027340.P10042814086714938843

`A027341(n+1)+A027336(n)-A027337(n+1)`
-/

namespace A027340.P10042814086714938843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (n + 1) + (A027336 n - A027337 (n + 1))

end

end A027340.P10042814086714938843

/-! ## A027340.P17014168720367728006

`A027341(n+1)+A027337(n)-A027338(n+1)`
-/

namespace A027340.P17014168720367728006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (n + 1) + (A027337 n - A027338 (n + 1))

end

end A027340.P17014168720367728006

/-! ## A027340.P13779322121154799654

`A027341(n+1)+A027338(n)-A027339(n+1)`
-/

namespace A027340.P13779322121154799654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (n + 1) + (A027338 n - A027339 (n + 1))

end

end A027340.P13779322121154799654

/-! ## A027340.P12992739243442803164

`A027341(n+1)+A027341(n)-A027342(n+1)`
-/

namespace A027340.P12992739243442803164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (n + 1) + (A027341 n - A027342 (n + 1))

end

end A027340.P12992739243442803164

/-! ## A027340.P2939404241273660522

`A027342(n+2)-A027336(n+2)`
-/

namespace A027340.P2939404241273660522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (n + 2) - A027336 (n + 2)

end

end A027340.P2939404241273660522

/-! ## A027340.P3532692786770738452

`A027343(n+3)-A027337(n+3)`
-/

namespace A027340.P3532692786770738452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027343 (n + 3) - A027337 (n + 3)

end

end A027340.P3532692786770738452

/-! ## A027340.P14216456433857681630

`A027341(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A027340.P14216456433857681630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A027340.P14216456433857681630

/-! ## A027340.P4219631943341687269

`A027341(n+1)+A000065(n)-A000065(n+1)`
-/

namespace A027340.P4219631943341687269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (n + 1) + (A000065 n - A000065 (n + 1))

end

end A027340.P4219631943341687269

/-! ## A027340.P9772996986654085323

`A175788(A052905(n+4)-2)`
-/

namespace A027340.P9772996986654085323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A052905 (n + 4) - 2).toNat

end

end A027340.P9772996986654085323

/-! ## A027340.P1209927304489721207

`A175788(A034856(n+6)-5)`
-/

namespace A027340.P1209927304489721207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A034856 (n + 6) - 5).toNat

end

end A027340.P1209927304489721207

/-! ## A027340.P7473447122797637732

`A175788(A000096(n+6)-6)`
-/

namespace A027340.P7473447122797637732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000096 (n + 6) - 6).toNat

end

end A027340.P7473447122797637732

/-! ## A027340.P6208000353830885244

`A175788(A000217(n+7)-7)`
-/

namespace A027340.P6208000353830885244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000217 (n + 7) - 7).toNat

end

end A027340.P6208000353830885244

/-! ## A027340.P12952666730129249123

`A175788(A000124(n+7)-8)`
-/

namespace A027340.P12952666730129249123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000124 (n + 7) - 8).toNat

end

end A027340.P12952666730129249123

/-! ## A027340.P10584301649855010056

`A175788(Δ[A023551(n+2)]-1)`
-/

namespace A027340.P10584301649855010056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (f1 (n + 1) - f1 n - 1).toNat

end

end A027340.P10584301649855010056

/-!
# A027341: Number of partitions of n that do not contain 7 as a part.

The programs for A027341, there is no canonical definition to state claims against.
-/

/-! ## A027341.P8034228906909172045

`A027342(n+1)-A002865(n+1)`
-/

namespace A027341.P8034228906909172045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (n + 1) - A002865 (n + 1)

end

end A027341.P8034228906909172045

/-! ## A027341.P1554341152909248886

`A027342(n+1)+A027336(n)-A027337(n+1)`
-/

namespace A027341.P1554341152909248886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (n + 1) + (A027336 n - A027337 (n + 1))

end

end A027341.P1554341152909248886

/-! ## A027341.P1577969022108604507

`A027342(n+1)+A027337(n)-A027338(n+1)`
-/

namespace A027341.P1577969022108604507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (n + 1) + (A027337 n - A027338 (n + 1))

end

end A027341.P1577969022108604507

/-! ## A027341.P3973313132920677427

`A027342(n+1)+A027338(n)-A027339(n+1)`
-/

namespace A027341.P3973313132920677427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (n + 1) + (A027338 n - A027339 (n + 1))

end

end A027341.P3973313132920677427

/-! ## A027341.P4706162860240878990

`A027342(n+1)+A027339(n)-A027340(n+1)`
-/

namespace A027341.P4706162860240878990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (n + 1) + (A027339 n - A027340 (n + 1))

end

end A027341.P4706162860240878990

/-! ## A027341.P16459913098901990149

`A027343(n+2)-A027336(n+2)`
-/

namespace A027341.P16459913098901990149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027343 (n + 2) - A027336 (n + 2)

end

end A027341.P16459913098901990149

/-! ## A027341.P504256614123367096

`A027344(n+3)-A027337(n+3)`
-/

namespace A027341.P504256614123367096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027344 (n + 3) - A027337 (n + 3)

end

end A027341.P504256614123367096

/-! ## A027341.P9461789109383291098

`A027342(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A027341.P9461789109383291098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A027341.P9461789109383291098

/-! ## A027341.P2603344907330415176

`A027342(n+1)+A000065(n)-A000065(n+1)`
-/

namespace A027341.P2603344907330415176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (n + 1) + (A000065 n - A000065 (n + 1))

end

end A027341.P2603344907330415176

/-! ## A027341.P9420466447193486257

`A175788(A052905(n+5)-3)`
-/

namespace A027341.P9420466447193486257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A052905 (n + 5) - 3).toNat

end

end A027341.P9420466447193486257

/-! ## A027341.P11856246271341790091

`A175788(A034856(n+7)-6)`
-/

namespace A027341.P11856246271341790091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A034856 (n + 7) - 6).toNat

end

end A027341.P11856246271341790091

/-! ## A027341.P12510315479591625056

`A175788(A000217(n+8)-8)`
-/

namespace A027341.P12510315479591625056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000217 (n + 8) - 8).toNat

end

end A027341.P12510315479591625056

/-! ## A027341.P163729463840728620

`A175788(A000124(n+8)-9)`
-/

namespace A027341.P163729463840728620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000124 (n + 8) - 9).toNat

end

end A027341.P163729463840728620

/-! ## A027341.P10070489652195917834

`A175788(2*n+A000124(n+6)+6)`
-/

namespace A027341.P10070489652195917834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 ((2 * n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A027341.P10070489652195917834

/-!
# A027342: Number of partitions of n that do not contain 8 as a part.

The programs for A027342, there is no canonical definition to state claims against.
-/

/-! ## A027342.P10005029285670682330

`A027343(n+1)-A002865(n+1)`
-/

namespace A027342.P10005029285670682330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027343 (n + 1) - A002865 (n + 1)

end

end A027342.P10005029285670682330

/-! ## A027342.P5334399506503060005

`A027343(n+1)+A027336(n)-A027337(n+1)`
-/

namespace A027342.P5334399506503060005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027343 (n + 1) + (A027336 n - A027337 (n + 1))

end

end A027342.P5334399506503060005

/-! ## A027342.P15485674425090431576

`A027343(n+1)+A027337(n)-A027338(n+1)`
-/

namespace A027342.P15485674425090431576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027343 (n + 1) + (A027337 n - A027338 (n + 1))

end

end A027342.P15485674425090431576

/-! ## A027342.P15668726969844281246

`A027343(n+1)+A027343(n)-A027344(n+1)`
-/

namespace A027342.P15668726969844281246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027343 (n + 1) + (A027343 n - A027344 (n + 1))

end

end A027342.P15668726969844281246

/-! ## A027342.P7464502386986132624

`A027344(n+2)-A027336(n+2)`
-/

namespace A027342.P7464502386986132624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027344 (n + 2) - A027336 (n + 2)

end

end A027342.P7464502386986132624

/-! ## A027342.P16706824535064132256

`A027343(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A027342.P16706824535064132256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027343 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A027342.P16706824535064132256

/-! ## A027342.P15690937189586720873

`A027343(n+1)+A000065(n)-A000065(n+1)`
-/

namespace A027342.P15690937189586720873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027343 (n + 1) + (A000065 n - A000065 (n + 1))

end

end A027342.P15690937189586720873

/-! ## A027342.P4829559654391765582

`A175788(eq[7, A116598(n)])`
-/

namespace A027342.P4829559654391765582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027342.P4829559654391765582

/-! ## A027342.P16260001818693351882

`A175788(A155212(n+5)-1)`
-/

namespace A027342.P16260001818693351882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A155212 (n + 5) - 1).toNat

end

end A027342.P16260001818693351882

/-! ## A027342.P11166491103822686726

`A175788(A055999(n+6)-3)`
-/

namespace A027342.P11166491103822686726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A055999 (n + 6) - 3).toNat

end

end A027342.P11166491103822686726

/-! ## A027342.P4354102357033736563

`A175788(A052905(n+6)-4)`
-/

namespace A027342.P4354102357033736563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A052905 (n + 6) - 4).toNat

end

end A027342.P4354102357033736563

/-! ## A027342.P15216769385480524986

`A175788(A000217(n+9)-9)`
-/

namespace A027342.P15216769385480524986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000217 (n + 9) - 9).toNat

end

end A027342.P15216769385480524986

/-!
# A027343: Number of partitions of n that do not contain 9 as a part.

The programs for A027343, there is no canonical definition to state claims against.
-/

/-! ## A027343.P958279302705538291

`A027344(n+1)-A002865(n+1)`
-/

namespace A027343.P958279302705538291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027344 (n + 1) - A002865 (n + 1)

end

end A027343.P958279302705538291

/-! ## A027343.P14677304914778973590

`A027344(n+1)+A027336(n)-A027337(n+1)`
-/

namespace A027343.P14677304914778973590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027344 (n + 1) + (A027336 n - A027337 (n + 1))

end

end A027343.P14677304914778973590

/-! ## A027343.P12037333740867798545

`A027344(n+1)+A027337(n)-A027338(n+1)`
-/

namespace A027343.P12037333740867798545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027344 (n + 1) + (A027337 n - A027338 (n + 1))

end

end A027343.P12037333740867798545

/-! ## A027343.P9374034801858253498

`A027344(n+1)-Δ[A000065(n)]`
-/

namespace A027343.P9374034801858253498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027344 (n + 1) - (f1 (n + 1) - f1 n)

end

end A027343.P9374034801858253498

/-! ## A027343.P14426573130948613960

`A027344(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A027343.P14426573130948613960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027344 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A027343.P14426573130948613960

/-! ## A027343.P11623561428826240199

`A027344(n+1)+A000065(n)-A000065(n+1)`
-/

namespace A027343.P11623561428826240199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027344 (n + 1) + (A000065 n - A000065 (n + 1))

end

end A027343.P11623561428826240199

/-! ## A027343.P16487054210381619856

`A175788(A056000(n+6))`
-/

namespace A027343.P16487054210381619856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A056000 (n + 6)).toNat

end

end A027343.P16487054210381619856

/-! ## A027343.P17298291940142343801

`A175788(eq[8, A116598(n)])`
-/

namespace A027343.P17298291940142343801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027343.P17298291940142343801

/-! ## A027343.P7428512198020289636

`A175788(A055999(n+7)-4)`
-/

namespace A027343.P7428512198020289636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A055999 (n + 7) - 4).toNat

end

end A027343.P7428512198020289636

/-! ## A027343.P5888187266972165656

`A175788(A052905(n+7)-5)`
-/

namespace A027343.P5888187266972165656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A052905 (n + 7) - 5).toNat

end

end A027343.P5888187266972165656

/-! ## A027343.P7198356156288604444

`A175788(A000217(n+10)-10)`
-/

namespace A027343.P7198356156288604444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000217 (n + 10) - 10).toNat

end

end A027343.P7198356156288604444

/-! ## A027343.P14207906222739579769

`A175788(A000096(n+8)+n+1)`
-/

namespace A027343.P14207906222739579769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A027343.P14207906222739579769

/-!
# A027344: Number of partitions of n that do not contain 10 as a part.

The programs for A027344, there is no canonical definition to state claims against.
-/

/-! ## A027344.P16938950425781601032

`A175788(eq[12, A116598(n)])`
-/

namespace A027344.P16938950425781601032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027344.P16938950425781601032

/-! ## A027344.P8868495315275361556

`A175788(A055999(n+8)-5)`
-/

namespace A027344.P8868495315275361556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A055999 (n + 8) - 5).toNat

end

end A027344.P8868495315275361556

/-! ## A027344.P5110855895026111553

`A175788(A000217(n+11)-11)`
-/

namespace A027344.P5110855895026111553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000217 (n + 11) - 11).toNat

end

end A027344.P5110855895026111553

/-! ## A027344.P4192566551392598770

`A175788(A000124(n+10)+n-1)`
-/

namespace A027344.P4192566551392598770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A000124 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A027344.P4192566551392598770

/-! ## A027344.P3045442780959413534

`A175788(A052905(n+7)+n+5)`
-/

namespace A027344.P3045442780959413534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A052905 (n + 7) + (n + 5 : ℤ)).toNat

end

end A027344.P3045442780959413534

/-! ## A027344.P15424772677152456319

`A175788(A002378(n+7)-A052905(n))`
-/

namespace A027344.P15424772677152456319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A002378 (n + 7) - A052905 n).toNat

end

end A027344.P15424772677152456319

/-!
# A027345: Triangular array T given by rows: T(n,k) = number of partitions of n into distinct odd parts, the least being k.

The programs for A027345, there is no canonical definition to state claims against.
-/

/-! ## A027345.P1029399376253752065

`and(A079998(A014473(n)), A330379(n+1))`
-/

namespace A027345.P1029399376253752065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079998 (A014473 n).toNat) (A330379 (n + 1))

end

end A027345.P1029399376253752065

/-! ## A027345.P6381658276090084045

`A286801(A126186(n+2))`
-/

namespace A027345.P6381658276090084045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286801 (A126186 (n + 2)).toNat

end

end A027345.P6381658276090084045

/-! ## A027345.P7908043233815368016

`A000035(A138785(n+1)*A345868(n+2))`
-/

namespace A027345.P7908043233815368016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A138785 (n + 1) * A345868 (n + 2)).toNat

end

end A027345.P7908043233815368016

/-! ## A027345.P3283111027796024673

`A000035(A113502(3*n+1)*A138785(n+1))`
-/

namespace A027345.P3283111027796024673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A113502 (3 * n + 1) * A138785 (n + 1)).toNat

end

end A027345.P3283111027796024673

/-! ## A027345.P16497468599461605136

`A061896(n+1)%(A338353(n+1)-2)`
-/

namespace A027345.P16497468599461605136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061896 (n + 1)) (A338353 (n + 1) - 2)

end

end A027345.P16497468599461605136

/-!
# A027346: Expansion of Product_{m>=1} (1 + q^m)^(3*m).

The programs for A027346, there is no canonical definition to state claims against.
-/

/-! ## A027346.P18397492884930923016

`A277938(∑[n+4]+2)`
-/

namespace A027346.P18397492884930923016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027346.P18397492884930923016

/-! ## A027346.P11198411814109716463

`record[A277938(abs(A046691(n)))]`
-/

namespace A027346.P11198411814109716463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027346.P11198411814109716463

/-! ## A027346.P6765553444437817975

`record[A277938(A027379(n)-1)]`
-/

namespace A027346.P6765553444437817975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027346.P6765553444437817975

/-! ## A027346.P13536895602295533911

`lcm(or(n, -1), A277938(A052905(n+1)+1))`
-/

namespace A027346.P13536895602295533911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor (n : ℤ) (-1)) (A277938 (A052905 (n + 1) + 1).toNat)

end

end A027346.P13536895602295533911

/-! ## A027346.P16223385229754793560

`record[A277938(A038722(A167499(n)))]`
-/

namespace A027346.P16223385229754793560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027346.P16223385229754793560

/-! ## A027346.P4169916149732093596

`A277938(A052905(n+1)+1)%A292555(n+11)`
-/

namespace A027346.P4169916149732093596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277938 (A052905 (n + 1) + 1).toNat) (A292555 (n + 11))

end

end A027346.P4169916149732093596

/-!
# A027347: Number of partitions of n into distinct odd parts, the least being congruent to 1 mod 4.

The programs for A027347, there is no canonical definition to state claims against.
-/

/-! ## A027347.P12266197098479772923

`A000700(n+1)-A027348(n+1)`
-/

namespace A027347.P12266197098479772923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) - A027348 (n + 1)

end

end A027347.P12266197098479772923

/-! ## A027347.P7834435985541884421

`A000700(n+1)-A143063(n+1)/2`
-/

namespace A027347.P7834435985541884421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 (n + 1) : ℚ) - (A143063 (n + 1) : ℚ) / 2

end

end A027347.P7834435985541884421

/-! ## A027347.P13979728547991489219

`A027357(n+1)+A027358(n+1)-A027348(n+1)`
-/

namespace A027347.P13979728547991489219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027357 (n + 1) + (A027358 (n + 1) - A027348 (n + 1))

end

end A027347.P13979728547991489219

/-! ## A027347.P13978668312715188887

`A027359(∑[n+1])-A027348(n+1)`
-/

namespace A027347.P13978668312715188887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027359 (∑ j ∈ Finset.range (n + 1), f1 j) - A027348 (n + 1)

end

end A027347.P13978668312715188887

/-! ## A027347.P15826377701082515645

`A027355(A000124(n))-A027348(n+1)`
-/

namespace A027347.P15826377701082515645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027355 (A000124 n).toNat - A027348 (n + 1)

end

end A027347.P15826377701082515645

/-! ## A027347.P8800052752323937525

`A027360(A133263(n))-A027348(n+1)`
-/

namespace A027347.P8800052752323937525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027360 (A133263 n).toNat - A027348 (n + 1)

end

end A027347.P8800052752323937525

/-! ## A027347.P12794259208226717516

`A027360(A034856(n+1)-A004275(n))-A027348(n+1)`
-/

namespace A027347.P12794259208226717516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027360 (A034856 (n + 1) - A004275 n).toNat - A027348 (n + 1)

end

end A027347.P12794259208226717516

/-! ## A027347.P16753584535884080910

`A027354(A000096(n)+1)-A027348(n+1)`
-/

namespace A027347.P16753584535884080910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027354 (A000096 n + 1).toNat - A027348 (n + 1)

end

end A027347.P16753584535884080910

/-!
# A027348: Number of partitions of n into distinct odd parts, the least being congruent to 3 mod 4.

The programs for A027348, there is no canonical definition to state claims against.
-/

/-! ## A027348.P2877484862223187229

`A143063(n+1)/2`
-/

namespace A027348.P2877484862223187229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143063 (n + 1) : ℚ) / 2

end

end A027348.P2877484862223187229

/-! ## A027348.P668824991323707214

`floor(A143063(abs(xor(n, -1)))/2)`
-/

namespace A027348.P668824991323707214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143063 |Int.xor (n : ℤ) (-1)|.toNat : ℚ) / 2⌋

end

end A027348.P668824991323707214

/-! ## A027348.P17322735513580299128

`Δ[A304631(n)]-A027347(n+1)`
-/

namespace A027348.P17322735513580299128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027347 (n + 1)

end

end A027348.P17322735513580299128

/-! ## A027348.P10578381063067574950

`A000700(n+1)-A027347(n+1)`
-/

namespace A027348.P10578381063067574950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) - A027347 (n + 1)

end

end A027348.P10578381063067574950

/-! ## A027348.P6718625610487404880

`A027357(n+1)+A027358(n+1)-A027347(n+1)`
-/

namespace A027348.P6718625610487404880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027357 (n + 1) + (A027358 (n + 1) - A027347 (n + 1))

end

end A027348.P6718625610487404880

/-! ## A027348.P7051024082968841694

`Δ[A096911(n+1)+A096911(n+2)]-A027347(n+1)`
-/

namespace A027348.P7051024082968841694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (n + 1) + A096911 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027347 (n + 1)

end

end A027348.P7051024082968841694

/-! ## A027348.P2102498161362717198

`A027359(∑[n+1])-A027347(n+1)`
-/

namespace A027348.P2102498161362717198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027359 (∑ j ∈ Finset.range (n + 1), f1 j) - A027347 (n + 1)

end

end A027348.P2102498161362717198

/-! ## A027348.P14537383468540737623

`A027355(A000124(n))-A027347(n+1)`
-/

namespace A027348.P14537383468540737623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027355 (A000124 n).toNat - A027347 (n + 1)

end

end A027348.P14537383468540737623

/-! ## A027348.P15986578182980518604

`A027360(A133263(n))-A027347(n+1)`
-/

namespace A027348.P15986578182980518604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027360 (A133263 n).toNat - A027347 (n + 1)

end

end A027348.P15986578182980518604

/-! ## A027348.P10366055755685374438

`A027360(A152947(n+2))-A027347(n+1)`
-/

namespace A027348.P10366055755685374438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027360 (A152947 (n + 2)).toNat - A027347 (n + 1)

end

end A027348.P10366055755685374438

/-! ## A027348.P13131744180672371378

`A001281(A143063(n+1))`
-/

namespace A027348.P13131744180672371378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A143063 (n + 1)).toNat

end

end A027348.P13131744180672371378

/-!
# A027349: Number of partitions of n into distinct odd parts, the least being 1.

The programs for A027349, there is no canonical definition to state claims against.
-/

/-! ## A027349.P6400282713496481448

`A000700(n)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A027349.P6400282713496481448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A000700 n - a (n - 1)

end

end A027349.P6400282713496481448

/-! ## A027349.P4065811094773755613

`abs(∑[A081362(n)])`
-/

namespace A027349.P4065811094773755613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A027349.P4065811094773755613

/-! ## A027349.P1061603497781664445

`Δ[A096911(n+1)]`
-/

namespace A027349.P1061603497781664445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027349.P1061603497781664445

/-! ## A027349.P17206972675302559139

`Δ[abs(Δ[A246581(n+1)])]`
-/

namespace A027349.P17206972675302559139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246581 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027349.P17206972675302559139

/-! ## A027349.P1894325674700431894

`gcd(∑[A081362(n)], A000038(n))`
-/

namespace A027349.P1894325674700431894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A027349.P1894325674700431894

/-! ## A027349.P1274018940266214844

`lcm(∑[A081362(n)], A020985(n))`
-/

namespace A027349.P1274018940266214844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A020985 n)

end

end A027349.P1274018940266214844

/-! ## A027349.P5447679038880082519

`abs(∑[A027187(n)-A027193(n)])`
-/

namespace A027349.P5447679038880082519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A027193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A027349.P5447679038880082519

/-! ## A027349.P7348658746994462743

`∑[A081362(n)]*A057077(2*n)`
-/

namespace A027349.P7348658746994462743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A027349.P7348658746994462743

/-! ## A027349.P10990035052196143530

`A096911(n+2)-A096911(n+1)`
-/

namespace A027349.P10990035052196143530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (n + 2) - A096911 (n + 1)

end

end A027349.P10990035052196143530

/-! ## A027349.P14321632436409351012

`A046682(n)-A000701(n)-a(n-1)` with `a(0)=1`
-/

namespace A027349.P14321632436409351012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046682 n - A000701 n - a (n - 1)

end

end A027349.P14321632436409351012

/-! ## A027349.P10259386624941952908

`A086372(n)+a(n-1)` with `a(0)=1`
-/

namespace A027349.P10259386624941952908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086372 n + a (n - 1)

end

end A027349.P10259386624941952908

/-! ## A027349.P11024664200684110723

`∑[A086372(n+1)]+1-A086372(n+1)`
-/

namespace A027349.P11024664200684110723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A086372 (n + 1))

end

end A027349.P11024664200684110723

/-! ## A027349.P176479690720303120

`abs(A320835(A001747(n+1)))`
-/

namespace A027349.P176479690720303120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320835 (A001747 (n + 1)).toNat|

end

end A027349.P176479690720303120

/-! ## A027349.P13653343554064440857

`abs(A320835(2*A008578(n+1)))`
-/

namespace A027349.P13653343554064440857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320835 (2 * A008578 (n + 1)).toNat|

end

end A027349.P13653343554064440857

/-! ## A027349.P16480985801540900501

`abs(A320835(record[2*A006530(n+1)]))`
-/

namespace A027349.P16480985801540900501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320835 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A027349.P16480985801540900501

/-! ## A027349.P3764644184375399641

`abs(A320835(record[2*A014963(n+1)]))`
-/

namespace A027349.P3764644184375399641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320835 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A027349.P3764644184375399641

/-! ## A027349.P4363467945656329202

`A276422(∑[n+3]+n+3)`
-/

namespace A027349.P4363467945656329202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276422 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A027349.P4363467945656329202

/-! ## A027349.P4126400906527798045

`∑{d}[∑[A081362(n)], A000010(#)]`
-/

namespace A027349.P4126400906527798045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A027349.P4126400906527798045

/-! ## A027349.P2365256279704846718

`A027355(A089071(n+1))`
-/

namespace A027349.P2365256279704846718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027355 (A089071 (n + 1)).toNat

end

end A027349.P2365256279704846718

/-! ## A027349.P13750295523393391557

`A027345(∑[n]+1)`
-/

namespace A027349.P13750295523393391557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027345 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027349.P13750295523393391557

/-!
# A027350: Number of partitions of n into distinct odd parts, the least being 3.

The programs for A027350, there is no canonical definition to state claims against.
-/

/-! ## A027350.P15068051917114088817

`Δ[abs(Δ[A246582(n+2)])]`
-/

namespace A027350.P15068051917114088817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246582 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027350.P15068051917114088817

/-! ## A027350.P11068594016157328692

`abs(A246582(n+2)-A246582(n+4))`
-/

namespace A027350.P11068594016157328692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246582 (n + 2) - A246582 (n + 4)|

end

end A027350.P11068594016157328692

/-! ## A027350.P13012710804679628924

`-((A246582(n+2)-A246582(n+4))*A033999(n))`
-/

namespace A027350.P13012710804679628924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A246582 (n + 2) - A246582 (n + 4)) * A033999 n)

end

end A027350.P13012710804679628924

/-! ## A027350.P15760459584810449922

`A027345(∑[n]+3)`
-/

namespace A027350.P15760459584810449922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027345 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A027350.P15760459584810449922

/-! ## A027350.P10341017121587788811

`A027354(A034856(n+1)-A004275(n))-A027349(n+1)`
-/

namespace A027350.P10341017121587788811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027354 (A034856 (n + 1) - A004275 n).toNat - A027349 (n + 1)

end

end A027350.P10341017121587788811

/-!
# A027351: Number of partitions of n into distinct odd parts, the least being 5.

The programs for A027351, there is no canonical definition to state claims against.
-/

/-! ## A027351.P5302417733282508090

`A027352(lt[A140378(3*n+4), A165054(n)])`
-/

namespace A027351.P5302417733282508090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140378 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027352 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027351.P5302417733282508090

/-! ## A027351.P9799134885110035686

`A340998(or(A007599(n), A307175(n+2)))`
-/

namespace A027351.P9799134885110035686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((Int.lor (A007599 n) (A307175 (n + 2))).toNat + 140)

end

end A027351.P9799134885110035686

/-! ## A027351.P15482213823903865531

`A308901(A065033(n)+A000332(n))`
-/

namespace A027351.P15482213823903865531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308901 (A065033 n + A000332 n).toNat

end

end A027351.P15482213823903865531

/-! ## A027351.P16791719232495408462

`A341999(A287422(n+1)+A246884(n))`
-/

namespace A027351.P16791719232495408462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A287422 (n + 1) + A246884 n).toNat

end

end A027351.P16791719232495408462

/-! ## A027351.P7979574764398630270

`A267056(A059922(n)*A330117(n+1))`
-/

namespace A027351.P7979574764398630270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267056 (A059922 n * A330117 (n + 1)).toNat

end

end A027351.P7979574764398630270

/-!
# A027352: Number of partitions of n into distinct odd parts, the least being 7.

The programs for A027352, there is no canonical definition to state claims against.
-/

/-! ## A027352.P9204061570624315067

`A027345(∑[n-char[1]]+8)`
-/

namespace A027352.P9204061570624315067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027345 (∑ j ∈ Finset.range (n + 1), f1 j + 8).toNat

end

end A027352.P9204061570624315067

/-! ## A027352.P16373279544336802975

`A027351(A233511(n+1))^A055849(n)`
-/

namespace A027352.P16373279544336802975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027351 (A233511 (n + 1)).toNat : ℚ) ^ (A055849 n : ℤ)

end

end A027352.P16373279544336802975

/-! ## A027352.P11153690238266741954

`A027351(A233511(n+1))^A097592(n)`
-/

namespace A027352.P11153690238266741954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027351 (A233511 (n + 1)).toNat : ℚ) ^ (A097592 n : ℤ)

end

end A027352.P11153690238266741954

/-! ## A027352.P6366899203450216648

`A027351(A233511(n+1))^A119468(n)`
-/

namespace A027352.P6366899203450216648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027351 (A233511 (n + 1)).toNat : ℚ) ^ (A119468 n : ℤ)

end

end A027352.P6366899203450216648

/-! ## A027352.P14357095239494782475

`A027351(A233511(n+1))^A128720(n)`
-/

namespace A027352.P14357095239494782475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027351 (A233511 (n + 1)).toNat : ℚ) ^ (A128720 n : ℤ)

end

end A027352.P14357095239494782475

/-!
# A027353: Number of partitions of n into distinct odd parts, the least being 9.

The programs for A027353, there is no canonical definition to state claims against.
-/

/-! ## A027353.P6754507647145896840

`A023973(A319348(n+1)^A331295(n+1))`
-/

namespace A027353.P6754507647145896840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023973 (SequenceMachineLib.roundAway ((A319348 (n + 1) : ℚ) ^ (A331295 (n + 1) : ℤ))).toNat

end

end A027353.P6754507647145896840

/-! ## A027353.P719096501847914902

`A109017(A336105(n+3)+A051125(n+1))`
-/

namespace A027353.P719096501847914902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 (A336105 (n + 3) + A051125 (n + 1)).toNat

end

end A027353.P719096501847914902

/-! ## A027353.P7317668313490435585

`and(A014190(3*n+1), A056170(A117729(n+4)))`
-/

namespace A027353.P7317668313490435585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014190 (3 * n + 1)) (A056170 (A117729 (n + 4)).toNat)

end

end A027353.P7317668313490435585

/-! ## A027353.P15999105871745210891

`A179775(A364998(n+1))`
-/

namespace A027353.P15999105871745210891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179775 (A364998 (n + 1)).toNat

end

end A027353.P15999105871745210891

/-! ## A027353.P4845838857917297228

`Δ[A025155(n+1)]^(n+1)²`
-/

namespace A027353.P4845838857917297228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1) ^ 2

end

end A027353.P4845838857917297228

/-!
# A027354: Triangular array T read by rows: T(n,k) = number of partitions into distinct odd parts, the least being <= k.

The programs for A027354, there is no canonical definition to state claims against.
-/

/-! ## A027354.P3586765618610884400

`A027359(n+1)+∑[A027345(n+1)-A027356(n+1)]`
-/

namespace A027354.P3586765618610884400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027345 (n + 1) - A027356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027359 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027354.P3586765618610884400

/-! ## A027354.P7056114454540629971

`and(A245958(n), A253641(A173243(n)))`
-/

namespace A027354.P7056114454540629971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A245958 n) (A253641 (A173243 n).toNat)

end

end A027354.P7056114454540629971

/-!
# A027356: Array read by rows: T(n,k) = number of partitions of n into distinct odd parts in which k is the greatest part, for k=1,2,...,n, n>=1.

The programs for A027356, there is no canonical definition to state claims against.
-/

/-! ## A027356.P18005809034061362301

`and(A049597(n), A169945(A091602(n+1)))`
-/

namespace A027356.P18005809034061362301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049597 n) (A169945 (A091602 (n + 1)).toNat)

end

end A027356.P18005809034061362301

/-! ## A027356.P6666972111853660872

`and(1, A049597(n)-A234890(n+1))`
-/

namespace A027356.P6666972111853660872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049597 n - A234890 (n + 1))

end

end A027356.P6666972111853660872

/-! ## A027356.P4971161276238069852

`A000035(A055932(n+5)+A049597(n))`
-/

namespace A027356.P4971161276238069852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A055932 (n + 5) + A049597 n).toNat

end

end A027356.P4971161276238069852

/-! ## A027356.P6595479260470214856

`A000035(A049597(n)%A234890(n+1))`
-/

namespace A027356.P6595479260470214856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.tmod (A049597 n) (A234890 (n + 1))).toNat

end

end A027356.P6595479260470214856

/-! ## A027356.P5151158903708155734

`and(A040005(A129484(n+1)), A049597(n))`
-/

namespace A027356.P5151158903708155734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040005 (A129484 (n + 1)).toNat) (A049597 n)

end

end A027356.P5151158903708155734

/-! ## A027356.P256217903887649582

`(A049597(A000007(n+1)+n)%A234890(n+1))%2`
-/

namespace A027356.P256217903887649582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A049597 (A000007 (n + 1) + (n : ℤ)).toNat) (A234890 (n + 1))) 2

end

end A027356.P256217903887649582

/-! ## A027356.P1451356582282855569

`A049597(A254667(n))%(A134451(A129484(n+1))+1)`
-/

namespace A027356.P1451356582282855569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049597 (A254667 n).toNat) (A134451 (A129484 (n + 1)).toNat + 1)

end

end A027356.P1451356582282855569

/-! ## A027356.P6100113843253671448

`and(A019429(A134058(n)), A049597(n))`
-/

namespace A027356.P6100113843253671448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019429 (A134058 n).toNat) (A049597 n)

end

end A027356.P6100113843253671448

/-! ## A027356.P5420637147262259641

`and(A040005(A139921(n+1)), A049597(n))`
-/

namespace A027356.P5420637147262259641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040005 (A139921 (n + 1)).toNat) (A049597 n)

end

end A027356.P5420637147262259641

/-! ## A027356.P3156283762858479631

`and(A049597(n), A293810(A243530(n+1)))`
-/

namespace A027356.P3156283762858479631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049597 n) (A293810 (A243530 (n + 1)).toNat)

end

end A027356.P3156283762858479631

/-! ## A027356.P10752756719859585816

`and(A049597(n), A177848(n+1))`
-/

namespace A027356.P10752756719859585816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049597 n) (A177848 (n + 1))

end

end A027356.P10752756719859585816

/-! ## A027356.P10772265349464161652

`A000035(gcd(2*A007318(n), A049597(n)))`
-/

namespace A027356.P10772265349464161652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (2 * A007318 n) (A049597 n))

end

end A027356.P10772265349464161652

/-! ## A027356.P6619820146560388995

`and(A010054(A000217(n)), A049597(n))`
-/

namespace A027356.P6619820146560388995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010054 (A000217 n).toNat) (A049597 n)

end

end A027356.P6619820146560388995

/-! ## A027356.P11224801470330890713

`and(A033999(A277238(n+1)), A049597(n))`
-/

namespace A027356.P11224801470330890713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A277238 (n + 1)).toNat) (A049597 n)

end

end A027356.P11224801470330890713

/-! ## A027356.P11014373845495471474

`A000035(A049597(n))+A000007(A064038(n+2))`
-/

namespace A027356.P11014373845495471474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A049597 n).toNat + A000007 (A064038 (n + 2)).toNat

end

end A027356.P11014373845495471474

/-! ## A027356.P4146014397461130229

`and(A049597(n), A072170(A034856(n+2)))`
-/

namespace A027356.P4146014397461130229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049597 n) (A072170 (A034856 (n + 2)).toNat)

end

end A027356.P4146014397461130229

/-! ## A027356.P18171089094929642693

`A259481(A099375(n)+n)%2`
-/

namespace A027356.P18171089094929642693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259481 (A099375 n + (n : ℤ)).toNat) 2

end

end A027356.P18171089094929642693

/-! ## A027356.P16215401039236795490

`and(A049597(n), A277366(n+1))`
-/

namespace A027356.P16215401039236795490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049597 n) (A277366 (n + 1))

end

end A027356.P16215401039236795490

/-! ## A027356.P14612068845118300151

`A000035(A049597(n)*A327260(n+2))`
-/

namespace A027356.P14612068845118300151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A049597 n * A327260 (n + 2)).toNat

end

end A027356.P14612068845118300151

/-!
# A027357: Number of partitions of n into distinct odd parts, the greatest being congruent to 1 mod 4.

The programs for A027357, there is no canonical definition to state claims against.
-/

/-! ## A027357.P8571357270338974590

`(A000700(n+1)-(-1)^(n+1)*A053250(n+1))/2`
-/

namespace A027357.P8571357270338974590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 (n + 1) - (-1) ^ (n + 1) * A053250 (n + 1) : ℚ) / 2

end

end A027357.P8571357270338974590

/-! ## A027357.P604900643343128563

`A000700(n+1)-A027358(n+1)`
-/

namespace A027357.P604900643343128563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) - A027358 (n + 1)

end

end A027357.P604900643343128563

/-! ## A027357.P6337875578307867370

`Δ[A304631(n)]-A027358(n+1)`
-/

namespace A027357.P6337875578307867370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027358 (n + 1)

end

end A027357.P6337875578307867370

/-! ## A027357.P967893522338462529

`Δ[A096911(n+1)+A096911(n+2)]-A027358(n+1)`
-/

namespace A027357.P967893522338462529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (n + 1) + A096911 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027358 (n + 1)

end

end A027357.P967893522338462529

/-! ## A027357.P16234999937426174791

`A027347(n+1)+A027348(n+1)-A027358(n+1)`
-/

namespace A027357.P16234999937426174791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027347 (n + 1) + (A027348 (n + 1) - A027358 (n + 1))

end

end A027357.P16234999937426174791

/-! ## A027357.P16448274244387835748

`A027359(∑[n+1])-A027358(n+1)`
-/

namespace A027357.P16448274244387835748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027359 (∑ j ∈ Finset.range (n + 1), f1 j) - A027358 (n + 1)

end

end A027357.P16448274244387835748

/-! ## A027357.P13972906617671070688

`A027355(A000124(n))-A027358(n+1)`
-/

namespace A027357.P13972906617671070688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027355 (A000124 n).toNat - A027358 (n + 1)

end

end A027357.P13972906617671070688

/-! ## A027357.P1999372956443807249

`A027360(A133263(n))-A027358(n+1)`
-/

namespace A027357.P1999372956443807249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027360 (A133263 n).toNat - A027358 (n + 1)

end

end A027357.P1999372956443807249

/-! ## A027357.P566108002839168549

`A027360(A034856(n+1)-A004275(n))-A027358(n+1)`
-/

namespace A027357.P566108002839168549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027360 (A034856 (n + 1) - A004275 n).toNat - A027358 (n + 1)

end

end A027357.P566108002839168549

/-! ## A027357.P2476390889316536842

`A027354(A000096(n)+1)-A027358(n+1)`
-/

namespace A027357.P2476390889316536842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027354 (A000096 n + 1).toNat - A027358 (n + 1)

end

end A027357.P2476390889316536842

/-!
# A027358: Number of partitions of n into distinct odd parts, the greatest being congruent to 3 mod 4.

The programs for A027358, there is no canonical definition to state claims against.
-/

/-! ## A027358.P16800389066225737733

`(A000700(n+1)+(-1)^(n+1)*A053250(n+1))/2`
-/

namespace A027358.P16800389066225737733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 (n + 1) + (-1) ^ (n + 1) * A053250 (n + 1) : ℚ) / 2

end

end A027358.P16800389066225737733

/-! ## A027358.P8836926442112003133

`A000700(n+1)-A027357(n+1)`
-/

namespace A027358.P8836926442112003133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) - A027357 (n + 1)

end

end A027358.P8836926442112003133

/-! ## A027358.P11549793504411504077

`A027347(n+1)+A027348(n+1)-A027357(n+1)`
-/

namespace A027358.P11549793504411504077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027347 (n + 1) + (A027348 (n + 1) - A027357 (n + 1))

end

end A027358.P11549793504411504077

/-! ## A027358.P7281955061222094821

`A027359(∑[n+1])-A027357(n+1)`
-/

namespace A027358.P7281955061222094821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027359 (∑ j ∈ Finset.range (n + 1), f1 j) - A027357 (n + 1)

end

end A027358.P7281955061222094821

/-! ## A027358.P17814776687991646148

`A027355(A000124(n))-A027357(n+1)`
-/

namespace A027358.P17814776687991646148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027355 (A000124 n).toNat - A027357 (n + 1)

end

end A027358.P17814776687991646148

/-! ## A027358.P15707078272888665837

`A027360(A133263(n))-A027357(n+1)`
-/

namespace A027358.P15707078272888665837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027360 (A133263 n).toNat - A027357 (n + 1)

end

end A027358.P15707078272888665837

/-! ## A027358.P9169647935221297640

`A027360(A034856(n+1)-A004275(n))-A027357(n+1)`
-/

namespace A027358.P9169647935221297640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027360 (A034856 (n + 1) - A004275 n).toNat - A027357 (n + 1)

end

end A027358.P9169647935221297640

/-! ## A027358.P7743438668015342331

`A027354(A000096(n)+1)-A027357(n+1)`
-/

namespace A027358.P7743438668015342331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027354 (A000096 n + 1).toNat - A027357 (n + 1)

end

end A027358.P7743438668015342331

/-!
# A027359: Triangular array T read by rows: T(n,k) = number of partitions of n into distinct odd parts, all <= k.

The programs for A027359, there is no canonical definition to state claims against.
-/

/-! ## A027359.P9254541853550480764

`A027354(n+1)+∑[A027356(n+1)-A027345(n+1)]`
-/

namespace A027359.P9254541853550480764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (n + 1) - A027345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027354 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027359.P9254541853550480764

/-! ## A027359.P17347611256542946773

`A003982(lcm(A152759(n), A215401(n+1)))`
-/

namespace A027359.P17347611256542946773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (Int.lcm (A152759 n) (A215401 (n + 1)))

end

end A027359.P17347611256542946773

/-! ## A027359.P7907552986441837901

`and(A267673(A039845(n+1)), A293474(n))`
-/

namespace A027359.P7907552986441837901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267673 (A039845 (n + 1)).toNat) (A293474 n)

end

end A027359.P7907552986441837901

/-! ## A027359.P7109710742296371268

`and(A127241(n), A136750(n))`
-/

namespace A027359.P7109710742296371268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127241 n) (A136750 n)

end

end A027359.P7109710742296371268

/-! ## A027359.P7074730004971502118

`and(A097020(n), A326453(n))`
-/

namespace A027359.P7074730004971502118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097020 n) (A326453 n)

end

end A027359.P7074730004971502118

/-!
# A027361: Number of "sorted permutations": permutations that can occur as the output of the sorting procedure described by Knuth.

The programs for A027361, there is no canonical definition to state claims against.
-/

/-! ## A027361.P2850849563454106345

`A108954(∑[A003081(n)²])`
-/

namespace A027361.P2850849563454106345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003081 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027361.P2850849563454106345

/-! ## A027361.P12471644886974558566

`A008617(A214821(n+1)+1)`
-/

namespace A027361.P12471644886974558566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A214821 (n + 1) + 1).toNat

end

end A027361.P12471644886974558566

/-! ## A027361.P14014132785167177160

`Δ[A245573(A011971(∑[n]))]+1`
-/

namespace A027361.P14014132785167177160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245573 (A011971 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A027361.P14014132785167177160

/-! ## A027361.P17011394564596230840

`Δ[A245573(A108087(∑[n]))]+1`
-/

namespace A027361.P17011394564596230840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245573 (A108087 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A027361.P17011394564596230840

/-!
# A027362: Number of Hamiltonian cycles in the directed graph with 2n nodes {0..2n-1} and edges from each i to 2i (mod 2n) and to 2i+1 (mod 2n).

The programs for A027362, there is no canonical definition to state claims against.
-/

/-! ## A027362.P3352530602651457108

`A003473(n+1)/(n+1)`
-/

namespace A027362.P3352530602651457108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003473 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A027362.P3352530602651457108

/-! ## A027362.P18378045114272005536

`(2^(n+1)-A086324(n+1))/(n+1)`
-/

namespace A027362.P18378045114272005536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A086324 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A027362.P18378045114272005536

/-! ## A027362.P10864124653795571536

`and(-A086324(n+1), A126646(n))/(n+1)`
-/

namespace A027362.P10864124653795571536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-A086324 (n + 1)) (A126646 n) : ℚ) / (n + 1 : ℚ)

end

end A027362.P10864124653795571536

/-! ## A027362.P14579413050157690905

`(A005803(n)+A100314(n)-A086324(n+1))/(n+1)`
-/

namespace A027362.P14579413050157690905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005803 n + (A100314 n - A086324 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A027362.P14579413050157690905

/-! ## A027362.P17188186890306712554

`(A005009(n)-xor(A005009(n), A086324(n+1)))/(n+1)`
-/

namespace A027362.P17188186890306712554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005009 n - Int.xor (A005009 n) (A086324 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A027362.P17188186890306712554

/-!
# A027366: Coordination sequence T2 for Zeolite Code CGS.

The programs for A027366, there is no canonical definition to state claims against.
-/

/-! ## A027366.P613895451853562544

`A008222(n)-A082115(A006983(3*(n+1)))`
-/

namespace A027366.P613895451853562544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008222 n - A082115 (A006983 (3 * (n + 1))).toNat

end

end A027366.P613895451853562544

/-!
# A027367: Coordination sequence T3 for Zeolite Code CGS.

The programs for A027367, there is no canonical definition to state claims against.
-/

/-! ## A027367.P13869879291279113691

`∑[∑[A090046(A306274(2*n+5))]]`
-/

namespace A027367.P13869879291279113691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090046 (A306274 (2 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027367.P13869879291279113691

/-!
# A027368: Coordination sequence T4 for Zeolite Code CGS.

The programs for A027368, there is no canonical definition to state claims against.
-/

/-! ## A027368.P9694921828795006286

`A301200(n)-A107846(A000110(n))`
-/

namespace A027368.P9694921828795006286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301200 n - A107846 (A000110 n).toNat

end

end A027368.P9694921828795006286

/-! ## A027368.P14560311580009175193

`A301200(n)-A318214(A068375(n+1))`
-/

namespace A027368.P14560311580009175193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301200 n - A318214 (A068375 (n + 1)).toNat

end

end A027368.P14560311580009175193

/-! ## A027368.P13094277172480920

`A100440(n+1)-A001222(A100462(2*n+1))`
-/

namespace A027368.P13094277172480920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100440 (n + 1) - A001222 (A100462 (2 * n + 1)).toNat

end

end A027368.P13094277172480920

/-!
# A027369: Coordination sequence T1 for Zeolite Code ITE.

The programs for A027369, there is no canonical definition to state claims against.
-/

/-! ## A027369.P15612754490138988349

`A185284(A000124(n))+A009893(n)`
-/

namespace A027369.P15612754490138988349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000124 n).toNat + A009893 n

end

end A027369.P15612754490138988349

/-! ## A027369.P244029979803910466

`A185284(A007590(n))+A009893(n)`
-/

namespace A027369.P244029979803910466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A007590 n).toNat + A009893 n

end

end A027369.P244029979803910466

/-! ## A027369.P13050876419418402292

`A226464(A103435(n))+A009893(n)`
-/

namespace A027369.P13050876419418402292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (A103435 n).toNat + A009893 n

end

end A027369.P13050876419418402292

/-! ## A027369.P10872878174960351540

`or(A003056(A014787(n)), A005893(n))`
-/

namespace A027369.P10872878174960351540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A014787 n).toNat) (A005893 n)

end

end A027369.P10872878174960351540

/-! ## A027369.P18322846610806251087

`A321537(A116828(n+1))+A009893(n)`
-/

namespace A027369.P18322846610806251087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A116828 (n + 1)).toNat + A009893 n

end

end A027369.P18322846610806251087

/-!
# A027370: Coordination sequence T2 for Zeolite Code ITE.

The programs for A027370, there is no canonical definition to state claims against.
-/

/-! ## A027370.P267272355701111959

`A084849(n)-A037829(A102428(n))`
-/

namespace A027370.P267272355701111959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n - A037829 (A102428 n).toNat

end

end A027370.P267272355701111959

/-! ## A027370.P3971360027043707773

`A008000(n)-A230425(A347602(n))`
-/

namespace A027370.P3971360027043707773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A230425 (A347602 n).toNat

end

end A027370.P3971360027043707773

/-! ## A027370.P17142015959972338193

`A008000(n)-A111900(A027742(n+1))`
-/

namespace A027370.P17142015959972338193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A111900 (A027742 (n + 1)).toNat

end

end A027370.P17142015959972338193

/-! ## A027370.P4481754011531740798

`A008000(n)-A382759(A034361(n+1))`
-/

namespace A027370.P4481754011531740798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A382759 (A034361 (n + 1)).toNat

end

end A027370.P4481754011531740798

/-! ## A027370.P2268276616131353459

`A008000(n)-A351725(A122367(n+3))`
-/

namespace A027370.P2268276616131353459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A351725 (A122367 (n + 3)).toNat

end

end A027370.P2268276616131353459

/-!
# A027371: Coordination sequence T3 for Zeolite Code ITE.

The programs for A027371, there is no canonical definition to state claims against.
-/

/-! ## A027371.P16710353149588873658

`A025458(A001349(n))+A009895(n)`
-/

namespace A027371.P16710353149588873658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (A001349 n).toNat + A009895 n

end

end A027371.P16710353149588873658

/-! ## A027371.P745823775102004352

`A185284(A301730(n))+A009895(n)`
-/

namespace A027371.P745823775102004352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A301730 n).toNat + A009895 n

end

end A027371.P745823775102004352

/-! ## A027371.P10099429263161971290

`A185284(A310398(n))+A009895(n)`
-/

namespace A027371.P10099429263161971290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A310398 n).toNat + A009895 n

end

end A027371.P10099429263161971290

/-!
# A027372: Coordination sequence T4 for Zeolite Code ITE.

The programs for A027372, there is no canonical definition to state claims against.
-/

/-! ## A027372.P9156874890506313493

`xor(A009896(n), A185284(A313152(n)))`
-/

namespace A027372.P9156874890506313493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009896 n) (A185284 (A313152 n).toNat)

end

end A027372.P9156874890506313493

/-!
# A027373: Coordination sequence T1 for Zeolite Code SAT.

The programs for A027373, there is no canonical definition to state claims against.
-/

/-! ## A027373.P7275473760359369515

`∑[∑[A007302(A083465(n+1))]]`
-/

namespace A027373.P7275473760359369515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A083465 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027373.P7275473760359369515

/-! ## A027373.P7104203949603194559

`∑[∑[A055091(A316408(n+7))]]`
-/

namespace A027373.P7104203949603194559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A316408 (n + 7)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027373.P7104203949603194559

/-! ## A027373.P180265363792869493

`∑[∑[A324923(A340613(n+1))-1]]`
-/

namespace A027373.P180265363792869493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A340613 (n + 1)).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027373.P180265363792869493

/-! ## A027373.P10305481457034536352

`∑[A211372(n+1)-A056556(A065033(n))]`
-/

namespace A027373.P10305481457034536352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211372 (n + 1) - A056556 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027373.P10305481457034536352

/-! ## A027373.P16589482233625760666

`round(∑[log(A339295(3*n+4))])`
-/

namespace A027373.P16589482233625760666
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A339295 (3 * n + 4) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027373.P16589482233625760666

/-!
# A027375: Number of aperiodic binary strings of length n; also number of binary sequences with primitive period n.

The programs for A027375, the canonical program `A027375.P1624201345270917595` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027375 has offset 0).

The definition of A027375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027375.P16334274704617706528

`n*A001037(n)`
-/

namespace A027375.P16334274704617706528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001037 n

end

end A027375.P16334274704617706528

namespace A027375

/-- `n*A001037(n)` -/
def P16334274704617706528.Spec : Prop :=
  ∀ n, P16334274704617706528.a n = A027375 n

end A027375

/-! ## A027375.P1624201345270917595

`2*∑{d}[n, A296302(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A027375

/-- `2*∑{d}[n, A296302(#)]` -/
def P1624201345270917595.Spec : Prop :=
  ∀ n, P1624201345270917595.a n = A027375 n

theorem P1624201345270917595.correct : P1624201345270917595.Spec := by
  intro n
  simp only [A027375]

end A027375

/-! ## A027375.P14327231732588924810

`n*∑{d}[n+1, A054154(#-1)]`
-/

namespace A027375.P14327231732588924810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A054154 (d - 1))

end

end A027375.P14327231732588924810

namespace A027375

/-- `n*∑{d}[n+1, A054154(#-1)]` -/
def P14327231732588924810.Spec : Prop :=
  ∀ n, P14327231732588924810.a n = A027375 n

end A027375

/-! ## A027375.P1580854701654078447

`A155559(n)-A152061(n)`
-/

namespace A027375.P1580854701654078447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - A152061 n

end

end A027375.P1580854701654078447

namespace A027375

/-- `A155559(n)-A152061(n)` -/
def P1580854701654078447.Spec : Prop :=
  ∀ n, P1580854701654078447.a n = A027375 n

end A027375

/-! ## A027375.P3493045762846646074

`2*A131577(n)-A152061(n)`
-/

namespace A027375.P3493045762846646074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131577 n - A152061 n

end

end A027375.P3493045762846646074

namespace A027375

/-- `2*A131577(n)-A152061(n)` -/
def P3493045762846646074.Spec : Prop :=
  ∀ n, P3493045762846646074.a n = A027375 n

end A027375

/-! ## A027375.P17689317000230587650

`lcm(n, A038199(A233583(n+1)))`
-/

namespace A027375.P17689317000230587650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A038199 (A233583 (n + 1)).toNat)

end

end A027375.P17689317000230587650

namespace A027375

/-- `lcm(n, A038199(A233583(n+1)))` -/
def P17689317000230587650.Spec : Prop :=
  ∀ n, (P17689317000230587650.a n : ℤ) = A027375 n

end A027375

/-! ## A027375.P17982560668051892542

`n*(A000031(n)-A066656(n))`
-/

namespace A027375.P17982560668051892542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000031 n - A066656 n)

end

end A027375.P17982560668051892542

namespace A027375

/-- `n*(A000031(n)-A066656(n))` -/
def P17982560668051892542.Spec : Prop :=
  ∀ n, P17982560668051892542.a n = A027375 n

end A027375

/-! ## A027375.P2121653187447363551

`n*A059966(or(n, A069517(n+1)))`
-/

namespace A027375.P2121653187447363551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059966 (Int.lor (n : ℤ) (A069517 (n + 1))).toNat

end

end A027375.P2121653187447363551

namespace A027375

/-- `n*A059966(or(n, A069517(n+1)))` -/
def P2121653187447363551.Spec : Prop :=
  ∀ n, P2121653187447363551.a n = A027375 n

end A027375

/-! ## A027375.P8922564799608125389

`A000079(n)%A001580(n)-A152061(n)`
-/

namespace A027375.P8922564799608125389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A001580 n) - A152061 n

end

end A027375.P8922564799608125389

namespace A027375

/-- `A000079(n)%A001580(n)-A152061(n)` -/
def P8922564799608125389.Spec : Prop :=
  ∀ n, P8922564799608125389.a n = A027375 n

end A027375

/-! ## A027375.P7605038651856118774

`n*A045664(n)/A253909(n)`
-/

namespace A027375.P7605038651856118774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A045664 n : ℚ) / (A253909 n : ℚ))

end

end A027375.P7605038651856118774

namespace A027375

/-- `n*A045664(n)/A253909(n)` -/
def P7605038651856118774.Spec : Prop :=
  ∀ n, P7605038651856118774.a n = (A027375 n : ℚ)

end A027375

/-! ## A027375.P18199054193771892534

`A027376(n)-A303117(n)`
-/

namespace A027375.P18199054193771892534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 n - A303117 n

end

end A027375.P18199054193771892534

namespace A027375

/-- `A027376(n)-A303117(n)` -/
def P18199054193771892534.Spec : Prop :=
  ∀ n, P18199054193771892534.a n = A027375 n

end A027375

/-! ## A027375.P13813077590937572202

`n*A269456(A000124(n)-n)`
-/

namespace A027375.P13813077590937572202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A269456 (A000124 n - (n : ℤ)).toNat

end

end A027375.P13813077590937572202

namespace A027375

/-- `n*A269456(A000124(n)-n)` -/
def P13813077590937572202.Spec : Prop :=
  ∀ n, P13813077590937572202.a n = A027375 n

end A027375

/-! ## A027375.P17756622814821443534

`n*A123223(∑[n])`
-/

namespace A027375.P17756622814821443534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027375.P17756622814821443534

namespace A027375

/-- `n*A123223(∑[n])` -/
def P17756622814821443534.Spec : Prop :=
  ∀ n, P17756622814821443534.a n = A027375 n

end A027375

/-! ## A027375.P1676313816165110972

`n*A123223(A000217(n))%A251704(n+4)`
-/

namespace A027375.P1676313816165110972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A123223 (A000217 n).toNat) (A251704 (n + 4))

end

end A027375.P1676313816165110972

namespace A027375

/-- `n*A123223(A000217(n))%A251704(n+4)` -/
def P1676313816165110972.Spec : Prop :=
  ∀ n, P1676313816165110972.a n = A027375 n

end A027375

/-!
# A027376: Number of ternary irreducible monic polynomials of degree n; dimensions of free Lie algebras.

The programs for A027376, there is no canonical definition to state claims against.
-/

/-! ## A027376.P16903192925011597012

`A303117(n)+A027375(n)`
-/

namespace A027376.P16903192925011597012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303117 n + A027375 n

end

end A027376.P16903192925011597012

/-! ## A027376.P8009312066279198147

`A001867(n)-A278663(n)`
-/

namespace A027376.P8009312066279198147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 n - A278663 n

end

end A027376.P8009312066279198147

/-! ## A027376.P4516504374427727691

`A054718(n)/round(1/acot(n))`
-/

namespace A027376.P4516504374427727691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 n : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

end

end A027376.P4516504374427727691

/-! ## A027376.P7640276616083148859

`A054718(n)/A028310(n)`
-/

namespace A027376.P7640276616083148859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 n : ℚ) / (A028310 n : ℚ)

end

end A027376.P7640276616083148859

/-! ## A027376.P5612828067092178068

`A054718(n)/A065033(2*n)`
-/

namespace A027376.P5612828067092178068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A027376.P5612828067092178068

/-! ## A027376.P1137731850668309848

`A054718(n)/(A000007(n)+n)`
-/

namespace A027376.P1137731850668309848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A027376.P1137731850668309848

/-! ## A027376.P3233220372049311620

`A054718(n)/A051176(A008486(n))`
-/

namespace A027376.P3233220372049311620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 n : ℚ) / (A051176 (A008486 n).toNat : ℚ)

end

end A027376.P3233220372049311620

/-! ## A027376.P14129401620193334233

`A054718(n)/gcd(n, A054719(n))`
-/

namespace A027376.P14129401620193334233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 n : ℚ) / (Int.gcd (n : ℤ) (A054719 n) : ℚ)

end

end A027376.P14129401620193334233

/-! ## A027376.P2953512469867043246

`A027377(n)/A054719(n)*A054718(n)`
-/

namespace A027376.P2953512469867043246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027377 n : ℚ) / (A054719 n : ℚ) * (A054718 n : ℚ)

end

end A027376.P2953512469867043246

/-! ## A027376.P935336026923672858

`A074650(∑[n+2]-1)`
-/

namespace A027376.P935336026923672858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A027376.P935336026923672858

/-!
# A027377: Number of irreducible polynomials of degree n over GF(4); dimensions of free Lie algebras.

The programs for A027377, there is no canonical definition to state claims against.
-/

/-! ## A027377.P10483384887719596555

`(ceil(sin(n)²)+1)*A131764(n)`
-/

namespace A027377.P10483384887719596555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) * A131764 n

end

end A027377.P10483384887719596555

/-! ## A027377.P15079088543639700174

`A036453(n+1)*A131764(n)`
-/

namespace A027377.P15079088543639700174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A131764 n

end

end A027377.P15079088543639700174

/-! ## A027377.P8730343750057081388

`(A057427(n)+1)*A131764(n)`
-/

namespace A027377.P8730343750057081388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A131764 n

end

end A027377.P8730343750057081388

/-! ## A027377.P12778263196822066675

`A007051(n)%3*A131764(n)`
-/

namespace A027377.P12778263196822066675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007051 n) 3 * A131764 n

end

end A027377.P12778263196822066675

/-! ## A027377.P1931498695461299273

`gcd(2, A002246(n+1))*A131764(n)`
-/

namespace A027377.P1931498695461299273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002246 (n + 1)) : ℤ) * A131764 n

end

end A027377.P1931498695461299273

/-! ## A027377.P3280205625370180672

`record[abs(A038063(n+1)-A059966(n+1))]`
-/

namespace A027377.P3280205625370180672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038063 (n + 1) - A059966 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027377.P3280205625370180672

/-! ## A027377.P312619066461034525

`A020639(A007843(n))*A131764(n)`
-/

namespace A027377.P312619066461034525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007843 n).toNat * A131764 n

end

end A027377.P312619066461034525

/-! ## A027377.P10899054033619486197

`A020639(A008574(n))*A131764(n)`
-/

namespace A027377.P10899054033619486197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A131764 n

end

end A027377.P10899054033619486197

/-! ## A027377.P10369017149750143096

`A020639(A046109(n))*A131764(n)`
-/

namespace A027377.P10369017149750143096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046109 n).toNat * A131764 n

end

end A027377.P10369017149750143096

/-! ## A027377.P5920289336408567517

`A020639(A125514(n))*A131764(n)`
-/

namespace A027377.P5920289336408567517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A125514 n).toNat * A131764 n

end

end A027377.P5920289336408567517

/-! ## A027377.P1705986450257135500

`A020639(A278223(n+1))*A131764(n)`
-/

namespace A027377.P1705986450257135500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A278223 (n + 1)).toNat * A131764 n

end

end A027377.P1705986450257135500

/-! ## A027377.P10846669315189036533

`A131764(n)*A141310(A051953(2*n+1))`
-/

namespace A027377.P10846669315189036533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131764 n * A141310 (A051953 (2 * n + 1)).toNat

end

end A027377.P10846669315189036533

/-! ## A027377.P11756017606217329592

`gcd(2, A000984(n))*A131764(n)`
-/

namespace A027377.P11756017606217329592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000984 n) : ℤ) * A131764 n

end

end A027377.P11756017606217329592

/-! ## A027377.P11332219461513487652

`A054719(n)/A028310(n)`
-/

namespace A027377.P11332219461513487652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054719 n : ℚ) / (A028310 n : ℚ)

end

end A027377.P11332219461513487652

/-! ## A027377.P15418901499920161185

`A054719(n)/(A004277(n)-n)`
-/

namespace A027377.P15418901499920161185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054719 n : ℚ) / (A004277 n - (n : ℤ) : ℚ)

end

end A027377.P15418901499920161185

/-! ## A027377.P7871670878509707560

`A054719(n)/gcd(n, A054718(n))`
-/

namespace A027377.P7871670878509707560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054719 n : ℚ) / (Int.gcd (n : ℤ) (A054718 n) : ℚ)

end

end A027377.P7871670878509707560

/-! ## A027377.P11263984177211897130

`A027376(n)/A054718(n)*A054719(n)`
-/

namespace A027377.P11263984177211897130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027376 n : ℚ) / (A054718 n : ℚ) * (A054719 n : ℚ)

end

end A027377.P11263984177211897130

/-! ## A027377.P7186917615284324263

`A020639(A278252(n+1))*A131764(n)`
-/

namespace A027377.P7186917615284324263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A278252 (n + 1)).toNat * A131764 n

end

end A027377.P7186917615284324263

/-!
# A027378: Expansion of (1+x^2-x^3)/(1-x)^4.

The programs for A027378, the canonical program `A027378.P7818968417345167528` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027378 has offset 0).

The definition of A027378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` (program `A027378.P7818968417345167528`, by `A027378.P7818968417345167528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027378.P15519818244203697423

`C(n+4, 3)-3*(n+1)`
-/

namespace A027378.P15519818244203697423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 3 : ℤ) - (3 * (n + 1) : ℤ)

end

end A027378.P15519818244203697423

namespace A027378

/-- `C(n+4, 3)-3*(n+1)` -/
def P15519818244203697423.Spec : Prop :=
  ∀ n, P15519818244203697423.a n = A027378 n

end A027378

/-! ## A027378.P7818968417345167528

`ogf((1+x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027378

/-- `ogf((1+x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P7818968417345167528.Spec : Prop :=
  ∀ n, P7818968417345167528.a n = A027378 n

theorem P7818968417345167528.correct : P7818968417345167528.Spec := by
  intro n
  simp only [A027378]

end A027378

/-! ## A027378.P5535521166325185460

`(n^3+9*n²+8*n+6)/6`
-/

namespace A027378.P5535521166325185460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + 9 * n ^ 2 + 8 * n + 6 : ℚ) / 6

end

end A027378.P5535521166325185460

namespace A027378

/-- `(n^3+9*n²+8*n+6)/6` -/
def P5535521166325185460.Spec : Prop :=
  ∀ n, P5535521166325185460.a n = (A027378 n : ℚ)

end A027378

/-! ## A027378.P14886053996581209413

`A006503(n)+1`
-/

namespace A027378.P14886053996581209413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n + 1

end

end A027378.P14886053996581209413

namespace A027378

/-- `A006503(n)+1` -/
def P14886053996581209413.Spec : Prop :=
  ∀ n, P14886053996581209413.a n = A027378 n

end A027378

/-! ## A027378.P11872609257333770652

`A116721(n+2)-1`
-/

namespace A027378.P11872609257333770652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 2) - 1

end

end A027378.P11872609257333770652

namespace A027378

/-- `A116721(n+2)-1` -/
def P11872609257333770652.Spec : Prop :=
  ∀ n, P11872609257333770652.a n = A027378 n

end A027378

/-! ## A027378.P1243542810936519032

`∑[∑[ceil(acot(acot(n))+n)]]`
-/

namespace A027378.P1243542810936519032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ)) + (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P1243542810936519032

namespace A027378

/-- `∑[∑[ceil(acot(acot(n))+n)]]` -/
def P1243542810936519032.Spec : Prop :=
  ∀ n, P1243542810936519032.a n = A027378 n

end A027378

/-! ## A027378.P113609180644363049

`∑[∑[floor(atan(n)+n+1)]]`
-/

namespace A027378.P113609180644363049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n + 1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P113609180644363049

namespace A027378

/-- `∑[∑[floor(atan(n)+n+1)]]` -/
def P113609180644363049.Spec : Prop :=
  ∀ n, P113609180644363049.a n = A027378 n

end A027378

/-! ## A027378.P10269934936151737852

`∑[∑[(2%(n+1))!+n]]`
-/

namespace A027378.P10269934936151737852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 % (n + 1)) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P10269934936151737852

namespace A027378

/-- `∑[∑[(2%(n+1))!+n]]` -/
def P10269934936151737852.Spec : Prop :=
  ∀ n, (P10269934936151737852.a n : ℤ) = A027378 n

end A027378

/-! ## A027378.P428189654131519503

`∑[∑[2-C(n, n²)+n]]`
-/

namespace A027378.P428189654131519503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose n (n ^ 2) : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P428189654131519503

namespace A027378

/-- `∑[∑[2-C(n, n²)+n]]` -/
def P428189654131519503.Spec : Prop :=
  ∀ n, P428189654131519503.a n = A027378 n

end A027378

/-! ## A027378.P9269897184144345145

`∑[∑[2-(C(n, n²)-n)]]`
-/

namespace A027378.P9269897184144345145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose n (n ^ 2) : ℤ) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P9269897184144345145

namespace A027378

/-- `∑[∑[2-(C(n, n²)-n)]]` -/
def P9269897184144345145.Spec : Prop :=
  ∀ n, P9269897184144345145.a n = A027378 n

end A027378

/-! ## A027378.P13371455339210666981

`∑[∑[n+2-C(n, ∑[n])]]`
-/

namespace A027378.P13371455339210666981
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.choose n (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P13371455339210666981

namespace A027378

/-- `∑[∑[n+2-C(n, ∑[n])]]` -/
def P13371455339210666981.Spec : Prop :=
  ∀ n, P13371455339210666981.a n = A027378 n

end A027378

/-! ## A027378.P16012807518359274165

`∑[∑[floor(acot(acot(n))+n+1)]]`
-/

namespace A027378.P16012807518359274165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ)) + (n + 1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P16012807518359274165

namespace A027378

/-- `∑[∑[floor(acot(acot(n))+n+1)]]` -/
def P16012807518359274165.Spec : Prop :=
  ∀ n, P16012807518359274165.a n = A027378 n

end A027378

/-! ## A027378.P4383680020644722983

`∑[∑[a(n-1)+1]]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A027378.P4383680020644722983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P4383680020644722983

namespace A027378

/-- `∑[∑[a(n-1)+1]]` -/
def P4383680020644722983.Spec : Prop :=
  ∀ n, (P4383680020644722983.a n : ℤ) = A027378 n

end A027378

/-! ## A027378.P4216373128627521754

`n²-∑[a(n-1)-n]` with `a(0)=-1`
-/

namespace A027378.P4216373128627521754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P4216373128627521754

namespace A027378

/-- `n²-∑[a(n-1)-n]` -/
def P4216373128627521754.Spec : Prop :=
  ∀ n, P4216373128627521754.a n = A027378 n

end A027378

/-! ## A027378.P8087335986166884246

`∑[∑[2*a(n-1)-n]]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A027378.P8087335986166884246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  2 * f2 (n - 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P8087335986166884246

namespace A027378

/-- `∑[∑[2*a(n-1)-n]]` -/
def P8087335986166884246.Spec : Prop :=
  ∀ n, P8087335986166884246.a n = A027378 n

end A027378

/-! ## A027378.P928383166390982282

`∑[∑[n+1]+(n-1)%(n+1)]`
-/

namespace A027378.P928383166390982282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P928383166390982282

namespace A027378

/-- `∑[∑[n+1]+(n-1)%(n+1)]` -/
def P928383166390982282.Spec : Prop :=
  ∀ n, P928383166390982282.a n = A027378 n

end A027378

/-! ## A027378.P3858350601270437957

`∑[C(2, n+2)+∑[n]+2*n]`
-/

namespace A027378.P3858350601270437957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + (∑ j ∈ Finset.range (n + 1), f2 j + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027378.P3858350601270437957

namespace A027378

/-- `∑[C(2, n+2)+∑[n]+2*n]` -/
def P3858350601270437957.Spec : Prop :=
  ∀ n, (P3858350601270437957.a n : ℤ) = A027378 n

end A027378

/-! ## A027378.P11813798256096420791

`a(n-1)+n*((n+1)/2+2)` with `a(0)=1`
-/

namespace A027378.P11813798256096420791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℚ) * ((n + 1 : ℚ) / 2 + 2)

end

end A027378.P11813798256096420791

namespace A027378

/-- `a(n-1)+n*((n+1)/2+2)` -/
def P11813798256096420791.Spec : Prop :=
  ∀ n, P11813798256096420791.a n = (A027378 n : ℚ)

end A027378

/-! ## A027378.P5413201465590871235

`n-1+a(n-1)+C(n+2, 2)` with `a(0)=1`
-/

namespace A027378.P5413201465590871235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + (Nat.choose (n + 2) 2 : ℤ))

end

end A027378.P5413201465590871235

namespace A027378

/-- `n-1+a(n-1)+C(n+2, 2)` -/
def P5413201465590871235.Spec : Prop :=
  ∀ n, P5413201465590871235.a n = A027378 n

end A027378

/-! ## A027378.P335223638133898778

`(∑[∑[n+2]]-(2*n+1))*gcd(n, n+1)`
-/

namespace A027378.P335223638133898778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)) * (Nat.gcd n (n + 1) : ℤ)

end

end A027378.P335223638133898778

namespace A027378

/-- `(∑[∑[n+2]]-(2*n+1))*gcd(n, n+1)` -/
def P335223638133898778.Spec : Prop :=
  ∀ n, P335223638133898778.a n = A027378 n

end A027378

/-!
# A027379: Expansion of (1+x^2-x^3)/(1-x)^3.

The programs for A027379, the canonical program `A027379.P3821395861380606803` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027379 has offset 0).

The definition of A027379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2-x^3)/(1-3x+3x^2-x^3))` (program `A027379.P3821395861380606803`, by `A027379.P3821395861380606803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027379.P11706070754595654977

`n+a(n-1)+2` with `a(0)=1, a(1)=3`
-/

namespace A027379.P11706070754595654977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  n + a (n - 1) + 2

end

end A027379.P11706070754595654977

namespace A027379

/-- `n+a(n-1)+2` -/
def P11706070754595654977.Spec : Prop :=
  ∀ n, (P11706070754595654977.a n : ℤ) = A027379 n

end A027379

/-! ## A027379.P3821395861380606803

`ogf((1+x^2-x^3)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027379

/-- `ogf((1+x^2-x^3)/(1-3x+3x^2-x^3))` -/
def P3821395861380606803.Spec : Prop :=
  ∀ n, P3821395861380606803.a n = A027379 n

theorem P3821395861380606803.correct : P3821395861380606803.Spec := by
  intro n
  simp only [A027379]

end A027379

/-! ## A027379.P9067539767373406928

`∑[ceil(acot(acot(n))+n)]`
-/

namespace A027379.P9067539767373406928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ)) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P9067539767373406928

namespace A027379

/-- `∑[ceil(acot(acot(n))+n)]` -/
def P9067539767373406928.Spec : Prop :=
  ∀ n, P9067539767373406928.a n = A027379 n

end A027379

/-! ## A027379.P1157339306230398441

`ceil(abs(e-∑[n+2]))`
-/

namespace A027379.P1157339306230398441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.exp 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)|⌉

end

end A027379.P1157339306230398441

namespace A027379

/-- `ceil(abs(e-∑[n+2]))` -/
def P1157339306230398441.Spec : Prop :=
  ∀ n, P1157339306230398441.a n = A027379 n

end A027379

/-! ## A027379.P13460278501280641163

`∑[floor(atan(n)+1+n)]`
-/

namespace A027379.P13460278501280641163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + 1 + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P13460278501280641163

namespace A027379

/-- `∑[floor(atan(n)+1+n)]` -/
def P13460278501280641163.Spec : Prop :=
  ∀ n, P13460278501280641163.a n = A027379 n

end A027379

/-! ## A027379.P5729503876485300581

`∑[ceil(atan(n)+n)]+1`
-/

namespace A027379.P5729503876485300581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A027379.P5729503876485300581

namespace A027379

/-- `∑[ceil(atan(n)+n)]+1` -/
def P5729503876485300581.Spec : Prop :=
  ∀ n, P5729503876485300581.a n = A027379 n

end A027379

/-! ## A027379.P15905606207216096753

`floor(∑[n]+2/acot(n))`
-/

namespace A027379.P15905606207216096753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + 2 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A027379.P15905606207216096753

namespace A027379

/-- `floor(∑[n]+2/acot(n))` -/
def P15905606207216096753.Spec : Prop :=
  ∀ n, P15905606207216096753.a n = A027379 n

end A027379

/-! ## A027379.P16343751304385681121

`∑[(2%(n+1))!+n]`
-/

namespace A027379.P16343751304385681121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 % (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P16343751304385681121

namespace A027379

/-- `∑[(2%(n+1))!+n]` -/
def P16343751304385681121.Spec : Prop :=
  ∀ n, (P16343751304385681121.a n : ℤ) = A027379 n

end A027379

/-! ## A027379.P13644041360044094952

`∑[gcd(2, C(3, n²))+n]`
-/

namespace A027379.P13644041360044094952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose 3 (n ^ 2)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P13644041360044094952

namespace A027379

/-- `∑[gcd(2, C(3, n²))+n]` -/
def P13644041360044094952.Spec : Prop :=
  ∀ n, (P13644041360044094952.a n : ℤ) = A027379 n

end A027379

/-! ## A027379.P16068705087559512946

`∑[2-C(n, n²)+n]`
-/

namespace A027379.P16068705087559512946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose n (n ^ 2) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P16068705087559512946

namespace A027379

/-- `∑[2-C(n, n²)+n]` -/
def P16068705087559512946.Spec : Prop :=
  ∀ n, P16068705087559512946.a n = A027379 n

end A027379

/-! ## A027379.P5397186250027189593

`∑[2-(C(n, n²)-n)]`
-/

namespace A027379.P5397186250027189593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose n (n ^ 2) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P5397186250027189593

namespace A027379

/-- `∑[2-(C(n, n²)-n)]` -/
def P5397186250027189593.Spec : Prop :=
  ∀ n, P5397186250027189593.a n = A027379 n

end A027379

/-! ## A027379.P12364238777641514057

`∑[n+2-C(n, ∑[n])]`
-/

namespace A027379.P12364238777641514057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.choose n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P12364238777641514057

namespace A027379

/-- `∑[n+2-C(n, ∑[n])]` -/
def P12364238777641514057.Spec : Prop :=
  ∀ n, P12364238777641514057.a n = A027379 n

end A027379

/-! ## A027379.P4417292278521000400

`∑[round(atan(n+1)²+n)]`
-/

namespace A027379.P4417292278521000400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (n + 1 : ℝ) ^ 2 + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P4417292278521000400

namespace A027379

/-- `∑[round(atan(n+1)²+n)]` -/
def P4417292278521000400.Spec : Prop :=
  ∀ n, P4417292278521000400.a n = A027379 n

end A027379

/-! ## A027379.P10847234152377633679

`∑[floor(acot(acot(n))+n+1)]`
-/

namespace A027379.P10847234152377633679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ)) + (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P10847234152377633679

namespace A027379

/-- `∑[floor(acot(acot(n))+n+1)]` -/
def P10847234152377633679.Spec : Prop :=
  ∀ n, P10847234152377633679.a n = A027379 n

end A027379

/-! ## A027379.P13338398812577447016

`∑[xor(n+2, C(3, n+2))]`
-/

namespace A027379.P13338398812577447016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 2) (Nat.choose 3 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P13338398812577447016

namespace A027379

/-- `∑[xor(n+2, C(3, n+2))]` -/
def P13338398812577447016.Spec : Prop :=
  ∀ n, (P13338398812577447016.a n : ℤ) = A027379 n

end A027379

/-! ## A027379.P6932122962709512467

`∑[a((n+1)%n)+n]` with `a(0)=1`
-/

namespace A027379.P6932122962709512467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((n + 1) % n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P6932122962709512467

namespace A027379

/-- `∑[a((n+1)%n)+n]` -/
def P6932122962709512467.Spec : Prop :=
  ∀ n, (P6932122962709512467.a n : ℤ) = A027379 n

end A027379

/-! ## A027379.P6572582192210684307

`∑[round(atan(n)/2+n+1)]`
-/

namespace A027379.P6572582192210684307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (n : ℝ) / 2 + (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P6572582192210684307

namespace A027379

/-- `∑[round(atan(n)/2+n+1)]` -/
def P6572582192210684307.Spec : Prop :=
  ∀ n, P6572582192210684307.a n = A027379 n

end A027379

/-! ## A027379.P9432436805718998258

`∑[round(atan((n+1)^3)+n)]`
-/

namespace A027379.P9432436805718998258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((n + 1) ^ 3 : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P9432436805718998258

namespace A027379

/-- `∑[round(atan((n+1)^3)+n)]` -/
def P9432436805718998258.Spec : Prop :=
  ∀ n, P9432436805718998258.a n = A027379 n

end A027379

/-! ## A027379.P6294871631494986062

`∑[round(acot(acot(n+1))²+n)]`
-/

namespace A027379.P6294871631494986062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (SequenceMachineLib.acot (n + 1 : ℝ)) ^ 2 + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027379.P6294871631494986062

namespace A027379

/-- `∑[round(acot(acot(n+1))²+n)]` -/
def P6294871631494986062.Spec : Prop :=
  ∀ n, P6294871631494986062.a n = A027379 n

end A027379

/-! ## A027379.P9436274495810191064

`record[a(n-1)-(4-n)]` with `a(0)=1, a(1)=0`
-/

namespace A027379.P9436274495810191064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - (4 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027379.P9436274495810191064

namespace A027379

/-- `record[a(n-1)-(4-n)]` -/
def P9436274495810191064.Spec : Prop :=
  ∀ n, P9436274495810191064.a n = A027379 n

end A027379

/-!
# A027380: Number of irreducible polynomials of degree n over GF(8); dimensions of free Lie algebras.

The programs for A027380, there is no canonical definition to state claims against.
-/

/-! ## A027380.P12829623191424172161

`A218125(n)/A028310(n)`
-/

namespace A027380.P12829623191424172161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218125 n : ℚ) / (A028310 n : ℚ)

end

end A027380.P12829623191424172161

/-! ## A027380.P2278633859129546743

`A218125(n)/A065033(2*n)`
-/

namespace A027380.P2278633859129546743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218125 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A027380.P2278633859129546743

/-! ## A027380.P276136520551532478

`A218125(n)/A007318(A000124(n))`
-/

namespace A027380.P276136520551532478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218125 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A027380.P276136520551532478

/-! ## A027380.P3452028215317869963

`A218125(n)/A008619(A004275(n))`
-/

namespace A027380.P3452028215317869963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218125 n : ℚ) / (A008619 (A004275 n).toNat : ℚ)

end

end A027380.P3452028215317869963

/-! ## A027380.P13742532279372918671

`A218125(n)/A193738(A027379(n))`
-/

namespace A027380.P13742532279372918671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218125 n : ℚ) / (A193738 (A027379 n).toNat : ℚ)

end

end A027380.P13742532279372918671

/-! ## A027380.P250467401501861909

`A218125(n)/A000463(A004280(n+1))`
-/

namespace A027380.P250467401501861909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218125 n : ℚ) / (A000463 (A004280 (n + 1)).toNat : ℚ)

end

end A027380.P250467401501861909

/-!
# A027381: Number of irreducible polynomials of degree n over GF(9); dimensions of free Lie algebras.

The programs for A027381, there is no canonical definition to state claims against.
-/

/-! ## A027381.P17786952104950194131

`A218126(n)/A028310(n)`
-/

namespace A027381.P17786952104950194131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218126 n : ℚ) / (A028310 n : ℚ)

end

end A027381.P17786952104950194131

/-! ## A027381.P6328180185188257803

`A218126(n)/A065033(2*n)`
-/

namespace A027381.P6328180185188257803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218126 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A027381.P6328180185188257803

/-! ## A027381.P12254075020638617286

`A218126(n)/A007318(A000124(n))`
-/

namespace A027381.P12254075020638617286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218126 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A027381.P12254075020638617286

/-! ## A027381.P802647722625992397

`A218126(n)/A008619(A004273(n))`
-/

namespace A027381.P802647722625992397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218126 n : ℚ) / (A008619 (A004273 n).toNat : ℚ)

end

end A027381.P802647722625992397

/-! ## A027381.P164426359797669656

`A218126(n)/A128227(A055998(n))`
-/

namespace A027381.P164426359797669656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218126 n : ℚ) / (A128227 (A055998 n).toNat : ℚ)

end

end A027381.P164426359797669656

/-! ## A027381.P16782246829305390718

`A218126(n)/A000194(A002522(n)-n)`
-/

namespace A027381.P16782246829305390718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218126 n : ℚ) / (A000194 (A002522 n - (n : ℤ)).toNat : ℚ)

end

end A027381.P16782246829305390718

/-! ## A027381.P10087361908891420821

`A218126(n)/A000194(n²+1)`
-/

namespace A027381.P10087361908891420821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218126 n : ℚ) / (A000194 (n ^ 2 + 1) : ℚ)

end

end A027381.P10087361908891420821

/-!
# A027382: a(n) = n^4 - 6*n^3 + 12*n^2 - 4*n + 1.

The programs for A027382, the canonical program `A027382.P14277374439744953168` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027382 has offset 0).

The definition of A027382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4-6*n^3+12*n²-4*n+1` (program `A027382.P14277374439744953168`, by `A027382.P14277374439744953168.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027382.P14277374439744953168

`n^4-6*n^3+12*n²-4*n+1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027382

/-- `n^4-6*n^3+12*n²-4*n+1` -/
def P14277374439744953168.Spec : Prop :=
  ∀ n, P14277374439744953168.a n = A027382 n

theorem P14277374439744953168.correct : P14277374439744953168.Spec := by
  intro n
  simp only [A027382]

end A027382

/-! ## A027382.P9475524298366768922

`abs((n+1)²+A001094(n)-n)`
-/

namespace A027382.P9475524298366768922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) + (A001094 n - (n : ℤ))|

end

end A027382.P9475524298366768922

namespace A027382

/-- `abs((n+1)²+A001094(n)-n)` -/
def P9475524298366768922.Spec : Prop :=
  ∀ n, P9475524298366768922.a n = A027382 n

end A027382

/-! ## A027382.P3892436707061100862

`(A052762(n)+∑[2*n+1])*gcd(n, n+1)`
-/

namespace A027382.P3892436707061100862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052762 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (Nat.gcd n (n + 1) : ℤ)

end

end A027382.P3892436707061100862

namespace A027382

/-- `(A052762(n)+∑[2*n+1])*gcd(n, n+1)` -/
def P3892436707061100862.Spec : Prop :=
  ∀ n, P3892436707061100862.a n = A027382 n

end A027382

/-! ## A027382.P4558782659725998760

`abs(n²+A185065(n)-A033594(n))`
-/

namespace A027382.P4558782659725998760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) + (A185065 n - A033594 n)|

end

end A027382.P4558782659725998760

namespace A027382

/-- `abs(n²+A185065(n)-A033594(n))` -/
def P4558782659725998760.Spec : Prop :=
  ∀ n, P4558782659725998760.a n = A027382 n

end A027382

/-! ## A027382.P12441253359017859011

`abs((n+1)²+A007531(n)*A023445(n))`
-/

namespace A027382.P12441253359017859011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) + A007531 n * A023445 n|

end

end A027382.P12441253359017859011

namespace A027382

/-- `abs((n+1)²+A007531(n)*A023445(n))` -/
def P12441253359017859011.Spec : Prop :=
  ∀ n, P12441253359017859011.a n = A027382 n

end A027382

/-! ## A027382.P12988020831453653986

`((n+1)²+A001094(n)-n)%A259000(n+1)`
-/

namespace A027382.P12988020831453653986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 2 : ℤ) + (A001094 n - (n : ℤ))) (A259000 (n + 1))

end

end A027382.P12988020831453653986

namespace A027382

/-- `((n+1)²+A001094(n)-n)%A259000(n+1)` -/
def P12988020831453653986.Spec : Prop :=
  ∀ n, P12988020831453653986.a n = A027382 n

end A027382

/-!
# A027383: a(2*n) = 3*2^n - 2; a(2*n+1) = 2^(n+2) - 2.

The programs for A027383, the canonical program `A027383.P10469167402787846246` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027383 has offset 0).

The definition of A027383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027383.P10469167402787846246

`2*(a(n-2)+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027383

/-- `2*(a(n-2)+1)` -/
def P10469167402787846246.Spec : Prop :=
  ∀ n, (P10469167402787846246.a n : ℤ) = A027383 n

theorem P10469167402787846246.correct : P10469167402787846246.Spec := by
  intro n
  simp only [A027383]

end A027383

/-! ## A027383.P7881477798437595151

`a(n-1)+2^floor(n/2)` with `a(0)=1`
-/

namespace A027383.P7881477798437595151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A027383.P7881477798437595151

namespace A027383

/-- `a(n-1)+2^floor(n/2)` -/
def P7881477798437595151.Spec : Prop :=
  ∀ n, P7881477798437595151.a n = (A027383 n : ℚ)

end A027383

/-! ## A027383.P11396660606075585391

`2^floor((n+2)/2)+2^floor((n+1)/2)-2`
-/

namespace A027383.P11396660606075585391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n + 2 : ℚ) / 2⌋ : ℤ) + (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) - 2

end

end A027383.P11396660606075585391

namespace A027383

/-- `2^floor((n+2)/2)+2^floor((n+1)/2)-2` -/
def P11396660606075585391.Spec : Prop :=
  ∀ n, P11396660606075585391.a n = (A027383 n : ℚ)

end A027383

/-! ## A027383.P10402029644552190345

`A132340(A052955(n))`
-/

namespace A027383.P10402029644552190345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132340 (A052955 n).toNat

end

end A027383.P10402029644552190345

namespace A027383

/-- `A132340(A052955(n))` -/
def P10402029644552190345.Spec : Prop :=
  ∀ n, P10402029644552190345.a n = A027383 n

end A027383

/-! ## A027383.P6697761358184449705

`∑[ogf((1+x)/(1-2x^2))]`
-/

namespace A027383.P6697761358184449705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027383.P6697761358184449705

namespace A027383

/-- `∑[ogf((1+x)/(1-2x^2))]` -/
def P6697761358184449705.Spec : Prop :=
  ∀ n, P6697761358184449705.a n = A027383 n

end A027383

/-! ## A027383.P15123048933633255872

`ogf((1+x)/(1-x-2x^2+2x^3))`
-/

namespace A027383.P15123048933633255872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, -2, 2] n

end

end A027383.P15123048933633255872

namespace A027383

/-- `ogf((1+x)/(1-x-2x^2+2x^3))` -/
def P15123048933633255872.Spec : Prop :=
  ∀ n, P15123048933633255872.a n = A027383 n

end A027383

/-! ## A027383.P18039762603274082315

`∑[2*a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A027383.P18039762603274082315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027383.P18039762603274082315

namespace A027383

/-- `∑[2*a(n-2)]` -/
def P18039762603274082315.Spec : Prop :=
  ∀ n, (P18039762603274082315.a n : ℤ) = A027383 n

end A027383

/-! ## A027383.P11143930987410847605

`lcm(2, a(n-2)+1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A027383.P11143930987410847605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.lcm 2 (a (n - 2) + 1)

end

end A027383.P11143930987410847605

namespace A027383

/-- `lcm(2, a(n-2)+1)` -/
def P11143930987410847605.Spec : Prop :=
  ∀ n, (P11143930987410847605.a n : ℤ) = A027383 n

end A027383

/-! ## A027383.P16620676925212795300

`2*or(1, a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A027383.P16620676925212795300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * Nat.lor 1 (a (n - 2))

end

end A027383.P16620676925212795300

namespace A027383

/-- `2*or(1, a(n-2))` -/
def P16620676925212795300.Spec : Prop :=
  ∀ n, (P16620676925212795300.a n : ℤ) = A027383 n

end A027383

/-! ## A027383.P14908078399993152288

`2*xor(1, a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A027383.P14908078399993152288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * Nat.xor 1 (a (n - 2))

end

end A027383.P14908078399993152288

namespace A027383

/-- `2*xor(1, a(n-2))` -/
def P14908078399993152288.Spec : Prop :=
  ∀ n, (P14908078399993152288.a n : ℤ) = A027383 n

end A027383

/-! ## A027383.P18236633014361940693

`∑[2^∑[1-a(n-1)]]` with `a(0)=0, a(1)=0`
-/

namespace A027383.P18236633014361940693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027383.P18236633014361940693

namespace A027383

/-- `∑[2^∑[1-a(n-1)]]` -/
def P18236633014361940693.Spec : Prop :=
  ∀ n, P18236633014361940693.a n = (A027383 n : ℚ)

end A027383

/-! ## A027383.P2847389211186499842

`(a(n-2)+1)/(1-1/2)` with `a(0)=1, a(1)=2`
-/

namespace A027383.P2847389211186499842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 2) + 1) / (1 - (1 : ℚ) / 2)

end

end A027383.P2847389211186499842

namespace A027383

/-- `(a(n-2)+1)/(1-1/2)` -/
def P2847389211186499842.Spec : Prop :=
  ∀ n, P2847389211186499842.a n = (A027383 n : ℚ)

end A027383

/-! ## A027383.P9129601950858983162

`abs(a(n-2)+a(n-2)+2)` with `a(0)=1, a(1)=2`
-/

namespace A027383.P9129601950858983162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + 2)

end

end A027383.P9129601950858983162

namespace A027383

/-- `abs(a(n-2)+a(n-2)+2)` -/
def P9129601950858983162.Spec : Prop :=
  ∀ n, (P9129601950858983162.a n : ℤ) = A027383 n

theorem P9129601950858983162.correct : P9129601950858983162.Spec := by
  intro n
  simp only [A027383, Nat.add_sub_cancel, A027383.P9129601950858983162.a, A027383.P10469167402787846246.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027383

/-! ## A027383.P17798001770630334278

`floor(a(n-2)+a(n-2)+2)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A027383.P17798001770630334278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + 2)

end

end A027383.P17798001770630334278

namespace A027383

/-- `floor(a(n-2)+a(n-2)+2)` -/
def P17798001770630334278.Spec : Prop :=
  ∀ n, (P17798001770630334278.a n : ℤ) = A027383 n

theorem P17798001770630334278.correct : P17798001770630334278.Spec := by
  intro n
  simp only [A027383, Nat.add_sub_cancel, A027383.P17798001770630334278.a, A027383.P10469167402787846246.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027383

/-! ## A027383.P7505854460302784721

`ceil(a(n-2)+a(n-2)+2)` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A027383.P7505854460302784721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + 2)

end

end A027383.P7505854460302784721

namespace A027383

/-- `ceil(a(n-2)+a(n-2)+2)` -/
def P7505854460302784721.Spec : Prop :=
  ∀ n, (P7505854460302784721.a n : ℤ) = A027383 n

theorem P7505854460302784721.correct : P7505854460302784721.Spec := by
  intro n
  simp only [A027383, Nat.add_sub_cancel, A027383.P7505854460302784721.a, A027383.P10469167402787846246.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027383

/-! ## A027383.P7664540485769810654

`round(a(n-2)+a(n-2)+2)` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A027383.P7664540485769810654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + 2)

end

end A027383.P7664540485769810654

namespace A027383

/-- `round(a(n-2)+a(n-2)+2)` -/
def P7664540485769810654.Spec : Prop :=
  ∀ n, (P7664540485769810654.a n : ℤ) = A027383 n

theorem P7664540485769810654.correct : P7664540485769810654.Spec := by
  intro n
  simp only [A027383, Nat.add_sub_cancel, A027383.P7664540485769810654.a, A027383.P10469167402787846246.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027383

/-! ## A027383.P10797848823306022324

`∑[A016116(n)]`
-/

namespace A027383.P10797848823306022324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027383.P10797848823306022324

namespace A027383

/-- `∑[A016116(n)]` -/
def P10797848823306022324.Spec : Prop :=
  ∀ n, P10797848823306022324.a n = A027383 n

end A027383

/-! ## A027383.P1032343138740316520

`∑[abs(A320770(n))]`
-/

namespace A027383.P1032343138740316520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320770 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027383.P1032343138740316520

namespace A027383

/-- `∑[abs(A320770(n))]` -/
def P1032343138740316520.Spec : Prop :=
  ∀ n, P1032343138740316520.a n = A027383 n

end A027383

/-! ## A027383.P13285279707732536562

`∑[∏[A040001(n)]]`
-/

namespace A027383.P13285279707732536562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027383.P13285279707732536562

namespace A027383

/-- `∑[∏[A040001(n)]]` -/
def P13285279707732536562.Spec : Prop :=
  ∀ n, P13285279707732536562.a n = A027383 n

end A027383

/-! ## A027383.P14982324264984638706

`∑[A158780(n+2)]`
-/

namespace A027383.P14982324264984638706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027383.P14982324264984638706

namespace A027383

/-- `∑[A158780(n+2)]` -/
def P14982324264984638706.Spec : Prop :=
  ∀ n, P14982324264984638706.a n = A027383 n

end A027383

/-!
# A027384: Number of distinct products i*j with 0 <= i, j <= n.

The programs for A027384, there is no canonical definition to state claims against.
-/

/-! ## A027384.P15746474225205592500

`A062854(n)+a(n-1)` with `a(0)=1`
-/

namespace A027384.P15746474225205592500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062854 n + a (n - 1)

end

end A027384.P15746474225205592500

/-! ## A027384.P6272614766444473130

`∑[A062854(A000007(n)+n)]`
-/

namespace A027384.P6272614766444473130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027384.P6272614766444473130

/-! ## A027384.P4083670156679879758

`∑[A062854(gcd(n, n-A000007(n)))]`
-/

namespace A027384.P4083670156679879758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (Int.gcd (n : ℤ) ((n : ℤ) - A000007 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027384.P4083670156679879758

/-! ## A027384.P6394454551700967424

`∑[A062854(∏{d}[n, A108407(#)]+n)]`
-/

namespace A027384.P6394454551700967424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (∏ d ∈ Nat.divisors (f2 n), A108407 d + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027384.P6394454551700967424

/-! ## A027384.P1330066883690408232

`A027424(n+1)+1-A062854(n+1)`
-/

namespace A027384.P1330066883690408232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) + (1 - A062854 (n + 1))

end

end A027384.P1330066883690408232

/-! ## A027384.P9827137739966735112

`∑[A062854(val(A008864(n+1)+1, 2)+n)]-1`
-/

namespace A027384.P9827137739966735112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (SequenceMachineLib.valuation (A008864 (n + 1) + 1).toNat 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A027384.P9827137739966735112

/-! ## A027384.P607405999654117740

`A027424(A028310(n))+1-A000007(n)`
-/

namespace A027384.P607405999654117740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (A028310 n).toNat + (1 - A000007 n)

end

end A027384.P607405999654117740

/-! ## A027384.P11679056472606314061

`∑[A062854(A080339(2*(n+1))+n)]`
-/

namespace A027384.P11679056472606314061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (A080339 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027384.P11679056472606314061

/-! ## A027384.P9255123005193862356

`A027420(∑[n])`
-/

namespace A027384.P9255123005193862356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027420 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027384.P9255123005193862356

/-! ## A027384.P18067114749981694117

`A027421(∑[n])`
-/

namespace A027384.P18067114749981694117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027384.P18067114749981694117

/-! ## A027384.P15666399888453414198

`record[A027420(n)]`
-/

namespace A027384.P15666399888453414198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027384.P15666399888453414198

/-! ## A027384.P7007910276291667494

`record[A027421(n)]`
-/

namespace A027384.P7007910276291667494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027384.P7007910276291667494

/-! ## A027384.P5219322609177213764

`A027422(∑[n]+n)`
-/

namespace A027384.P5219322609177213764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A027384.P5219322609177213764

/-! ## A027384.P7110614360002724628

`record[A027422(A038722(n+1))]`
-/

namespace A027384.P7110614360002724628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027384.P7110614360002724628

/-! ## A027384.P6878438693765143645

`record[A027422(n)/A027422(n+1)]`
-/

namespace A027384.P6878438693765143645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027422 n : ℚ) / (A027422 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027384.P6878438693765143645

/-!
# A027385: Number of primitive polynomials of degree n over GF(3).

The programs for A027385, the canonical program `A027385.P16171227801353693352` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027385 has offset 1).

The definition of A027385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027385.P16171227801353693352

`A295500(n+1)/(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A027385

/-- `A295500(n+1)/(n+1)` -/
def P16171227801353693352.Spec : Prop :=
  ∀ n, P16171227801353693352.a n = (A027385 (n + 1) : ℚ)

end A027385

/-! ## A027385.P6796732294044679861

`A369291(∑[n+2])`
-/

namespace A027385.P6796732294044679861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027385.P6796732294044679861

namespace A027385

/-- `A369291(∑[n+2])` -/
def P6796732294044679861.Spec : Prop :=
  ∀ n, P6796732294044679861.a n = A027385 (n + 1)

end A027385

/-! ## A027385.P7960048390099995962

`A158502(∑[n+2])`
-/

namespace A027385.P7960048390099995962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027385.P7960048390099995962

namespace A027385

/-- `A158502(∑[n+2])` -/
def P7960048390099995962.Spec : Prop :=
  ∀ n, P7960048390099995962.a n = A027385 (n + 1)

end A027385

/-! ## A027385.P4908632547670975736

`record[A158502(∑[A152271(n)])]`
-/

namespace A027385.P4908632547670975736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027385.P4908632547670975736

namespace A027385

/-- `record[A158502(∑[A152271(n)])]` -/
def P4908632547670975736.Spec : Prop :=
  ∀ n, P4908632547670975736.a n = A027385 (n + 1)

end A027385

/-! ## A027385.P11428015698715105388

`record[A158502(A101881(n)+1)]`
-/

namespace A027385.P11428015698715105388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027385.P11428015698715105388

namespace A027385

/-- `record[A158502(A101881(n)+1)]` -/
def P11428015698715105388.Spec : Prop :=
  ∀ n, P11428015698715105388.a n = A027385 (n + 1)

end A027385

/-!
# A027386: Write digits for n, count endpoints (version 1).

The programs for A027386, the canonical program `A027386.P13022936192587829036` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027386 has offset 0).

The definition of A027386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027386.P13022936192587829036

`∑{digits}[n, A332813(A033484(#))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A027386

/-- `∑{digits}[n, A332813(A033484(#))]` -/
def P13022936192587829036.Spec : Prop :=
  ∀ n, P13022936192587829036.a n = A027386 n

theorem P13022936192587829036.correct : P13022936192587829036.Spec := by
  intro n
  simp only [A027386]

end A027386

/-! ## A027386.P9193158463000698370

`A027387(2*n-A222234(n))`
-/

namespace A027386.P9193158463000698370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 ((2 * n : ℤ) - A222234 n).toNat

end

end A027386.P9193158463000698370

namespace A027386

/-- `A027387(2*n-A222234(n))` -/
def P9193158463000698370.Spec : Prop :=
  ∀ n, P9193158463000698370.a n = A027386 n

end A027386

/-! ## A027386.P12984491194151503907

`A027387(n)-2*A316865(n)`
-/

namespace A027386.P12984491194151503907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 n - 2 * A316865 n

end

end A027386.P12984491194151503907

namespace A027386

/-- `A027387(n)-2*A316865(n)` -/
def P12984491194151503907.Spec : Prop :=
  ∀ n, P12984491194151503907.a n = A027386 n

end A027386

/-! ## A027386.P16453560313884866830

`A027388(n)-2*A316868(n)`
-/

namespace A027386.P16453560313884866830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027388 n - 2 * A316868 n

end

end A027386.P16453560313884866830

namespace A027386

/-- `A027388(n)-2*A316868(n)` -/
def P16453560313884866830.Spec : Prop :=
  ∀ n, P16453560313884866830.a n = A027386 n

end A027386

/-! ## A027386.P16261273282647165158

`A027387(n)+A027388(n)-A027389(n)`
-/

namespace A027386.P16261273282647165158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 n + (A027388 n - A027389 n)

end

end A027386.P16261273282647165158

namespace A027386

/-- `A027387(n)+A027388(n)-A027389(n)` -/
def P16261273282647165158.Spec : Prop :=
  ∀ n, P16261273282647165158.a n = A027386 n

end A027386

/-! ## A027386.P14897147140608179208

`A027388(A100796(n))`
-/

namespace A027386.P14897147140608179208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027388 (A100796 n).toNat

end

end A027386.P14897147140608179208

namespace A027386

/-- `A027388(A100796(n))` -/
def P14897147140608179208.Spec : Prop :=
  ∀ n, P14897147140608179208.a n = A027386 n

end A027386

/-!
# A027387: Write digits for n, count endpoints (version 2).

The programs for A027387, the canonical program `A027387.P17347744252739824845` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027387 has offset 0).

The definition of A027387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027387.P2667211896600447021

`A027388(A222242(n))`
-/

namespace A027387.P2667211896600447021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027388 (A222242 n).toNat

end

end A027387.P2667211896600447021

namespace A027387

/-- `A027388(A222242(n))` -/
def P2667211896600447021.Spec : Prop :=
  ∀ n, P2667211896600447021.a n = A027387 n

end A027387

/-! ## A027387.P17347744252739824845

`A027386(n)+2*A316865(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A027387

/-- `A027386(n)+2*A316865(n)` -/
def P17347744252739824845.Spec : Prop :=
  ∀ n, P17347744252739824845.a n = A027387 n

theorem P17347744252739824845.correct : P17347744252739824845.Spec := by
  intro n
  simp only [A027387]

end A027387

/-! ## A027387.P1090465085490614042

`A027389(n)-2*A316868(n)`
-/

namespace A027387.P1090465085490614042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027389 n - 2 * A316868 n

end

end A027387.P1090465085490614042

namespace A027387

/-- `A027389(n)-2*A316868(n)` -/
def P1090465085490614042.Spec : Prop :=
  ∀ n, P1090465085490614042.a n = A027387 n

end A027387

/-! ## A027387.P18336803352542960579

`A027386(n)+A027389(n)-A027388(n)`
-/

namespace A027387.P18336803352542960579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 n + (A027389 n - A027388 n)

end

end A027387.P18336803352542960579

namespace A027387

/-- `A027386(n)+A027389(n)-A027388(n)` -/
def P18336803352542960579.Spec : Prop :=
  ∀ n, P18336803352542960579.a n = A027387 n

end A027387

/-! ## A027387.P16345715706370839806

`A241541(A216556(n)²)+A027386(n)`
-/

namespace A027387.P16345715706370839806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241541 (A216556 n ^ 2).toNat + A027386 n

end

end A027387.P16345715706370839806

namespace A027387

/-- `A241541(A216556(n)²)+A027386(n)` -/
def P16345715706370839806.Spec : Prop :=
  ∀ n, P16345715706370839806.a n = A027387 n

end A027387

/-!
# A027388: Write digits for n, count endpoints (version 3).

The programs for A027388, the canonical program `A027388.P5030534524750753246` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027388 has offset 0).

The definition of A027388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027388.P13879143776810739811

`A027387(A222242(n))`
-/

namespace A027388.P13879143776810739811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 (A222242 n).toNat

end

end A027388.P13879143776810739811

namespace A027388

/-- `A027387(A222242(n))` -/
def P13879143776810739811.Spec : Prop :=
  ∀ n, P13879143776810739811.a n = A027388 n

end A027388

/-! ## A027388.P5030534524750753246

`A027386(n)+2*A316868(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A027388

/-- `A027386(n)+2*A316868(n)` -/
def P5030534524750753246.Spec : Prop :=
  ∀ n, P5030534524750753246.a n = A027388 n

theorem P5030534524750753246.correct : P5030534524750753246.Spec := by
  intro n
  simp only [A027388]

end A027388

/-! ## A027388.P6303009167110982657

`A027389(2*n-A222234(n))`
-/

namespace A027388.P6303009167110982657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027389 ((2 * n : ℤ) - A222234 n).toNat

end

end A027388.P6303009167110982657

namespace A027388

/-- `A027389(2*n-A222234(n))` -/
def P6303009167110982657.Spec : Prop :=
  ∀ n, P6303009167110982657.a n = A027388 n

end A027388

/-! ## A027388.P15926115178217203616

`A027389(n)-2*A316865(n)`
-/

namespace A027388.P15926115178217203616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027389 n - 2 * A316865 n

end

end A027388.P15926115178217203616

namespace A027388

/-- `A027389(n)-2*A316865(n)` -/
def P15926115178217203616.Spec : Prop :=
  ∀ n, P15926115178217203616.a n = A027388 n

end A027388

/-! ## A027388.P5446546337594968792

`A027386(n)+A027389(n)-A027387(n)`
-/

namespace A027388.P5446546337594968792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 n + (A027389 n - A027387 n)

end

end A027388.P5446546337594968792

namespace A027388

/-- `A027386(n)+A027389(n)-A027387(n)` -/
def P5446546337594968792.Spec : Prop :=
  ∀ n, P5446546337594968792.a n = A027388 n

end A027388

/-! ## A027388.P15390678561518505645

`∑{digits}[n, A000120(A000120(#))*A027386(#)]`
-/

namespace A027388.P15390678561518505645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000120 (A000120 x).toNat * A027386 x).sum

end

end A027388.P15390678561518505645

namespace A027388

/-- `∑{digits}[n, A000120(A000120(#))*A027386(#)]` -/
def P15390678561518505645.Spec : Prop :=
  ∀ n, P15390678561518505645.a n = A027388 n

end A027388

/-!
# A027389: Write decimal digits for n, count endpoints (version 4).

The programs for A027389, the canonical program `A027389.P1038088546329582602` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027389 has offset 0).

The definition of A027389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027389.P1038088546329582602

`A027387(n)+2*A316868(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A027389

/-- `A027387(n)+2*A316868(n)` -/
def P1038088546329582602.Spec : Prop :=
  ∀ n, P1038088546329582602.a n = A027389 n

theorem P1038088546329582602.correct : P1038088546329582602.Spec := by
  intro n
  simp only [A027389]

end A027389

/-! ## A027389.P1568696943172365618

`A027388(n)+2*A316865(n)`
-/

namespace A027389.P1568696943172365618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027388 n + 2 * A316865 n

end

end A027389.P1568696943172365618

namespace A027389

/-- `A027388(n)+2*A316865(n)` -/
def P1568696943172365618.Spec : Prop :=
  ∀ n, P1568696943172365618.a n = A027389 n

end A027389

/-! ## A027389.P14811021937475309475

`A027387(n)+A027388(n)-A027386(n)`
-/

namespace A027389.P14811021937475309475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 n + (A027388 n - A027386 n)

end

end A027389.P14811021937475309475

namespace A027389

/-- `A027387(n)+A027388(n)-A027386(n)` -/
def P14811021937475309475.Spec : Prop :=
  ∀ n, P14811021937475309475.a n = A027389 n

end A027389

/-! ## A027389.P2719582915913562558

`∑{digits}[n, A000120(A000120(#))*A027387(#)]`
-/

namespace A027389.P2719582915913562558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000120 (A000120 x).toNat * A027387 x).sum

end

end A027389.P2719582915913562558

namespace A027389

/-- `∑{digits}[n, A000120(A000120(#))*A027387(#)]` -/
def P2719582915913562558.Spec : Prop :=
  ∀ n, P2719582915913562558.a n = A027389 n

end A027389

/-! ## A027389.P485106718794774987

`A241541(A216556(n)²)+A027388(n)`
-/

namespace A027389.P485106718794774987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241541 (A216556 n ^ 2).toNat + A027388 n

end

end A027389.P485106718794774987

namespace A027389

/-- `A241541(A216556(n)²)+A027388(n)` -/
def P485106718794774987.Spec : Prop :=
  ∀ n, P485106718794774987.a n = A027389 n

end A027389

/-!
# A027390: Number of labeled servers of dimension 3.

The programs for A027390, the canonical program `A027390.P10323921540436317130` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027390 has offset 0).

The definition of A027390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027390.P10323921540436317130

`3*a(n-1)+3*(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=3, a(2)=12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027390

/-- `3*a(n-1)+3*(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3)` -/
def P10323921540436317130.Spec : Prop :=
  ∀ n, P10323921540436317130.a n = A027390 n

theorem P10323921540436317130.correct : P10323921540436317130.Spec := by
  intro n
  simp only [A027390]

end A027390

/-! ## A027390.P15376921893009087389

`A228722(Δ[Δ[A187251(n)]])`
-/

namespace A027390.P15376921893009087389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (f1 (n + 1) - f1 n).toNat

end

end A027390.P15376921893009087389

namespace A027390

/-- `A228722(Δ[Δ[A187251(n)]])` -/
def P15376921893009087389.Spec : Prop :=
  ∀ n, P15376921893009087389.a n = A027390 n

end A027390

/-!
# A027391: Number of labeled servers of dimension 4.

The programs for A027391, there is no canonical definition to state claims against.
-/

/-! ## A027391.P13699034767907072852

`A004525(A260879(n+1))`
-/

namespace A027391.P13699034767907072852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A260879 (n + 1)).toNat

end

end A027391.P13699034767907072852

/-!
# A027392: Number of labeled servers of dimension 5.

The programs for A027392, there is no canonical definition to state claims against.
-/

/-! ## A027392.P17923886543450614049

`A106609(record[(2*n+3)*a(n-1)-(n-1)*(n+2)*a(n-2)])` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A027392.P17923886543450614049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 5] fun n f1 =>
  (2 * n + 3 : ℤ) * f1 (n - 1) - ((n : ℤ) - 1) * ((n + 2 : ℤ) * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027392.P17923886543450614049

/-!
# A027393: Number of labeled servers of dimension 6.

The programs for A027393, there is no canonical definition to state claims against.
-/

/-! ## A027393.P11409629921832609578

`A016861(n*A151344(n))`
-/

namespace A027393.P11409629921832609578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 ((n : ℤ) * A151344 n).toNat

end

end A027393.P11409629921832609578

