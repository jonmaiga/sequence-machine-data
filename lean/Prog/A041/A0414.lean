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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A041400: Numerators of continued fraction convergents to sqrt(215).

The programs for A041400, there is no canonical definition to state claims against.
-/

/-! ## A041400.P4753164393857942603

`A167996(n+1)+A064236(A000108(n))`
-/

namespace A041400.P4753164393857942603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167996 (n + 1) + A064236 (A000108 n).toNat

end

end A041400.P4753164393857942603

/-!
# A041401: Denominators of continued fraction convergents to sqrt(215).

The programs for A041401, the canonical program `A041401.P17432966003171759748` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041401 has offset 0).

The definition of A041401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041401.P17432966003171759748

`88*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=86, a(5)=89, a(6)=175, a(7)=264`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041401

/-- `88*a(n-4)-a(n-8)` -/
def P17432966003171759748.Spec : Prop :=
  ∀ n, P17432966003171759748.a n = A041401 n

theorem P17432966003171759748.correct : P17432966003171759748.Spec := by
  intro n
  simp only [A041401]

end A041401

/-! ## A041401.P7310197171536515914

`A004525(A041589(n)+A041249(n))`
-/

namespace A041401.P7310197171536515914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041589 n + A041249 n).toNat

end

end A041401.P7310197171536515914

namespace A041401

/-- `A004525(A041589(n)+A041249(n))` -/
def P7310197171536515914.Spec : Prop :=
  ∀ n, P7310197171536515914.a n = A041401 n

end A041401

/-! ## A041401.P17938411453877833692

`A004526(A041589(n)+A041249(n))`
-/

namespace A041401.P17938411453877833692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A041589 n + A041249 n).toNat

end

end A041401.P17938411453877833692

namespace A041401

/-- `A004526(A041589(n)+A041249(n))` -/
def P17938411453877833692.Spec : Prop :=
  ∀ n, P17938411453877833692.a n = A041401 n

end A041401

/-! ## A041401.P10519523308885083608

`A004525(A041813(n)+A041133(n))`
-/

namespace A041401.P10519523308885083608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041813 n + A041133 n).toNat

end

end A041401.P10519523308885083608

namespace A041401

/-- `A004525(A041813(n)+A041133(n))` -/
def P10519523308885083608.Spec : Prop :=
  ∀ n, P10519523308885083608.a n = A041401 n

end A041401

/-!
# A041402: Numerators of continued fraction convergents to sqrt(216).

The programs for A041402, there is no canonical definition to state claims against.
-/

/-! ## A041402.P17722321222576981380

`gcd(2, n)*A041092(n)`
-/

namespace A041402.P17722321222576981380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041092 n

end

end A041402.P17722321222576981380

/-! ## A041402.P5103409428887052423

`A000034(n+1)*A041092(n)`
-/

namespace A041402.P5103409428887052423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041092 n

end

end A041402.P5103409428887052423

/-! ## A041402.P9637546909915782802

`A040001(n+2)*A041092(n)`
-/

namespace A041402.P9637546909915782802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041092 n

end

end A041402.P9637546909915782802

/-! ## A041402.P14558733206380746579

`2/A000034(n)*A041092(n)`
-/

namespace A041402.P14558733206380746579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041092 n : ℚ)

end

end A041402.P14558733206380746579

/-! ## A041402.P14936049798841531726

`A000032(Δ[A004526(n)])*A041092(n)`
-/

namespace A041402.P14936049798841531726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat * A041092 n

end

end A041402.P14936049798841531726

/-! ## A041402.P11328456226526785246

`A041092(n)*A051699(Δ[A004526(n)])`
-/

namespace A041402.P11328456226526785246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041092 n * A051699 (f1 (n + 1) - f1 n).toNat

end

end A041402.P11328456226526785246

/-! ## A041402.P13668036474874294741

`A041092(n)*A087230(n²)`
-/

namespace A041402.P13668036474874294741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041092 n * A087230 (n ^ 2)

end

end A041402.P13668036474874294741

/-!
# A041403: Denominators of continued fraction convergents to sqrt(216).

The programs for A041403, there is no canonical definition to state claims against.
-/

/-! ## A041403.P8160596451905459678

`A041093(n)/A000034(n)`
-/

namespace A041403.P8160596451905459678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A000034 n : ℚ)

end

end A041403.P8160596451905459678

/-! ## A041403.P11788215347681566306

`A041093(n)/A010673(n)!`
-/

namespace A041403.P11788215347681566306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A041403.P11788215347681566306

/-! ## A041403.P2833677785309304218

`A041093(n)/Δ[A032766(n)]`
-/

namespace A041403.P2833677785309304218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041403.P2833677785309304218

/-! ## A041403.P8835913149931124410

`A041093(n)/(A000035(n)+1)`
-/

namespace A041403.P8835913149931124410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041403.P8835913149931124410

/-! ## A041403.P5005900162453830838

`A041093(n)/A040001(n+1)`
-/

namespace A041403.P5005900162453830838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041403.P5005900162453830838

/-! ## A041403.P4381786169618195318

`A041093(n)/A000079(n)%3`
-/

namespace A041403.P4381786169618195318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (Int.tmod (A000079 n) 3 : ℚ)

end

end A041403.P4381786169618195318

/-! ## A041403.P16799717482396520491

`A041093(n)/gcd(2, A016861(n))`
-/

namespace A041403.P16799717482396520491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (Int.gcd 2 (A016861 n) : ℚ)

end

end A041403.P16799717482396520491

/-! ## A041403.P16620864746477141416

`A041093(n)/Δ[A001651(n+1)]`
-/

namespace A041403.P16620864746477141416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041403.P16620864746477141416

/-! ## A041403.P17168368349169265239

`A041093(n)/(Δ[A004526(n)]+1)`
-/

namespace A041403.P17168368349169265239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A041403.P17168368349169265239

/-! ## A041403.P12408439034499005682

`A041093(n)/A055396(A154266(n))`
-/

namespace A041403.P12408439034499005682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A055396 (A154266 n).toNat : ℚ)

end

end A041403.P12408439034499005682

/-! ## A041403.P6932084173453446669

`A041093(n)/A041093(Δ[A004526(n)])`
-/

namespace A041403.P6932084173453446669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A041093 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041403.P6932084173453446669

/-! ## A041403.P6727277163803241846

`A041093(n)/A318454(A020639(n+1))`
-/

namespace A041403.P6727277163803241846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A318454 (A020639 (n + 1)).toNat : ℚ)

end

end A041403.P6727277163803241846

/-! ## A041403.P5179623693867020683

`A041093(n)/A318454(n²+1)`
-/

namespace A041403.P5179623693867020683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A318454 (n ^ 2 + 1) : ℚ)

end

end A041403.P5179623693867020683

/-!
# A041404: Numerators of continued fraction convergents to sqrt(217).

The programs for A041404, there is no canonical definition to state claims against.
-/

/-! ## A041404.P17992294249005877507

`A247832(A041298(n))`
-/

namespace A041404.P17992294249005877507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A041298 n).toNat

end

end A041404.P17992294249005877507

/-!
# A041406: Numerators of continued fraction convergents to sqrt(218).

The programs for A041406, there is no canonical definition to state claims against.
-/

/-! ## A041406.P17696232647517184840

`A328607(A214425(n+1))+A174344(A056514(n+2))`
-/

namespace A041406.P17696232647517184840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328607 (A214425 (n + 1)).toNat + A174344 (A056514 (n + 2)).toNat

end

end A041406.P17696232647517184840

/-!
# A041407: Denominators of continued fraction convergents to sqrt(218).

The programs for A041407, there is no canonical definition to state claims against.
-/

/-! ## A041407.P6587387520979860848

`A214979(A136777(n+1)+10)`
-/

namespace A041407.P6587387520979860848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214979 (A136777 (n + 1) + 10).toNat

end

end A041407.P6587387520979860848

/-! ## A041407.P2164925588742663532

`A137671(A080599(n)*A137671(n+1))`
-/

namespace A041407.P2164925588742663532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137671 (A080599 n * A137671 (n + 1)).toNat

end

end A041407.P2164925588742663532

/-!
# A041408: Numerators of continued fraction convergents to sqrt(219).

The programs for A041408, there is no canonical definition to state claims against.
-/

/-! ## A041408.P464930622846582568

`A004526(round(A041409(n+4)/5))`
-/

namespace A041408.P464930622846582568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A041409 (n + 4) : ℚ) / 5)).toNat

end

end A041408.P464930622846582568

/-! ## A041408.P1982917723200450964

`A004277(A041414(n))-A041416(n)`
-/

namespace A041408.P1982917723200450964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041414 n).toNat - A041416 n

end

end A041408.P1982917723200450964

/-!
# A041409: Denominators of continued fraction convergents to sqrt(219).

The programs for A041409, the canonical program `A041409.P15518734348747516297` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041409 has offset 0).

The definition of A041409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041409.P15518734348747516297

`148*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=144, a(5)=149, a(6)=591, a(7)=740`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041409

/-- `148*a(n-4)-a(n-8)` -/
def P15518734348747516297.Spec : Prop :=
  ∀ n, P15518734348747516297.a n = A041409 n

theorem P15518734348747516297.correct : P15518734348747516297.Spec := by
  intro n
  simp only [A041409]

end A041409

/-! ## A041409.P13625160671277445429

`a(A227381(n+1)-1)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=144, a(5)=149, a(6)=591, a(7)=740`
-/

namespace A041409.P13625160671277445429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 5, 144, 149, 591, 740] fun n a =>
  a (A227381 (n + 1) - 1).toNat

end

end A041409.P13625160671277445429

namespace A041409

/-- `a(A227381(n+1)-1)` -/
def P13625160671277445429.Spec : Prop :=
  ∀ n, (P13625160671277445429.a n : ℤ) = A041409 n

end A041409

/-! ## A041409.P3133503534348614718

`a(A344467(n+3)-1)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=144, a(5)=149, a(6)=591, a(7)=740`
-/

namespace A041409.P3133503534348614718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 5, 144, 149, 591, 740] fun n a =>
  a (A344467 (n + 3) - 1).toNat

end

end A041409.P3133503534348614718

namespace A041409

/-- `a(A344467(n+3)-1)` -/
def P3133503534348614718.Spec : Prop :=
  ∀ n, (P3133503534348614718.a n : ℤ) = A041409 n

end A041409

/-! ## A041409.P7222485682678610828

`a(A047701(3*n+4)-1)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=144, a(5)=149, a(6)=591, a(7)=740`
-/

namespace A041409.P7222485682678610828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 5, 144, 149, 591, 740] fun n a =>
  a (A047701 (3 * n + 4) - 1).toNat

end

end A041409.P7222485682678610828

namespace A041409

/-- `a(A047701(3*n+4)-1)` -/
def P7222485682678610828.Spec : Prop :=
  ∀ n, (P7222485682678610828.a n : ℤ) = A041409 n

end A041409

/-!
# A041410: Numerators of continued fraction convergents to sqrt(220).

The programs for A041410, there is no canonical definition to state claims against.
-/

/-! ## A041410.P9809665032917021233

`gcd(2, n)*A041094(n)`
-/

namespace A041410.P9809665032917021233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041094 n

end

end A041410.P9809665032917021233

/-! ## A041410.P11520897194248558243

`lcm(A041094(n), A228826(n))`
-/

namespace A041410.P11520897194248558243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041094 n) (A228826 n)

end

end A041410.P11520897194248558243

/-! ## A041410.P2405418707007540169

`Δ[A007494(n)]*A041094(n)`
-/

namespace A041410.P2405418707007540169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041094 n

end

end A041410.P2405418707007540169

/-! ## A041410.P15786198218169462319

`A000034(n+1)*A041094(n)`
-/

namespace A041410.P15786198218169462319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041094 n

end

end A041410.P15786198218169462319

/-! ## A041410.P9641220669553436976

`2/A000034(n)*A041094(n)`
-/

namespace A041410.P9641220669553436976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041094 n : ℚ)

end

end A041410.P9641220669553436976

/-! ## A041410.P17518885222339622498

`(A056594(n)²+1)*A041094(n)`
-/

namespace A041410.P17518885222339622498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 n ^ 2 + 1) * A041094 n

end

end A041410.P17518885222339622498

/-! ## A041410.P6190479492881221749

`A000045(A020639(3*(n+1)))*A041094(n)`
-/

namespace A041410.P6190479492881221749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (3 * (n + 1))).toNat * A041094 n

end

end A041410.P6190479492881221749

/-!
# A041411: Denominators of continued fraction convergents to sqrt(220).

The programs for A041411, there is no canonical definition to state claims against.
-/

/-! ## A041411.P360096595237843391

`A041095(n)/A000034(n)`
-/

namespace A041411.P360096595237843391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A000034 n : ℚ)

end

end A041411.P360096595237843391

/-! ## A041411.P9833849483199357290

`A041095(n)/Δ[A032766(n)]`
-/

namespace A041411.P9833849483199357290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041411.P9833849483199357290

/-! ## A041411.P14534361435725830793

`A041095(n)/ratio[A016116(n)]`
-/

namespace A041411.P14534361435725830793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A041411.P14534361435725830793

/-! ## A041411.P5613823020243003376

`A041095(n)/A040001(n+1)`
-/

namespace A041411.P5613823020243003376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041411.P5613823020243003376

/-! ## A041411.P3011090387779274061

`A041095(n)/A006519(A141310(n))`
-/

namespace A041411.P3011090387779274061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A006519 (A141310 n).toNat : ℚ)

end

end A041411.P3011090387779274061

/-! ## A041411.P2035985010695981095

`A041095(n)/A020639(A266303(n))`
-/

namespace A041411.P2035985010695981095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A020639 (A266303 n).toNat : ℚ)

end

end A041411.P2035985010695981095

/-! ## A041411.P4850376694024819375

`A041095(n)/A006530(A006519(n+1))`
-/

namespace A041411.P4850376694024819375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A006530 (A006519 (n + 1)).toNat : ℚ)

end

end A041411.P4850376694024819375

/-! ## A041411.P8883010374577490406

`A041095(n)/A006519(A088835(n+1))`
-/

namespace A041411.P8883010374577490406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A006519 (A088835 (n + 1)).toNat : ℚ)

end

end A041411.P8883010374577490406

/-! ## A041411.P12970981717507204970

`A041095(n)/A266303(A266303(n+1))`
-/

namespace A041411.P12970981717507204970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A266303 (A266303 (n + 1)).toNat : ℚ)

end

end A041411.P12970981717507204970

/-! ## A041411.P8699466766635358985

`A041095(n)/A050873(A133263(n))`
-/

namespace A041411.P8699466766635358985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A050873 (A133263 n).toNat : ℚ)

end

end A041411.P8699466766635358985

/-! ## A041411.P17823204262841021497

`A041095(n)/A006519(n²+1)`
-/

namespace A041411.P17823204262841021497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041411.P17823204262841021497

/-!
# A041413: Denominators of continued fraction convergents to sqrt(221).

The programs for A041413, there is no canonical definition to state claims against.
-/

/-! ## A041413.P9992869383038292890

`A059253(A019273(n+1))+n`
-/

namespace A041413.P9992869383038292890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A019273 (n + 1)).toNat + (n : ℤ)

end

end A041413.P9992869383038292890

/-! ## A041413.P14408483377329505349

`A286533(∑[floor(10^n/5)]-A192113(n+1))`
-/

namespace A041413.P14408483377329505349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286533 (∑ j ∈ Finset.range (n + 1), f1 j - A192113 (n + 1)).toNat

end

end A041413.P14408483377329505349

/-!
# A041414: Numerators of continued fraction convergents to sqrt(222).

The programs for A041414, there is no canonical definition to state claims against.
-/

/-! ## A041414.P5580336512523234416

`A004525(A041416(n)+A041408(n))`
-/

namespace A041414.P5580336512523234416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041416 n + A041408 n).toNat

end

end A041414.P5580336512523234416

/-! ## A041414.P4746408351409555189

`A004526(A041416(n)+A041408(n))`
-/

namespace A041414.P4746408351409555189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A041416 n + A041408 n).toNat

end

end A041414.P4746408351409555189

/-!
# A041415: Denominators of continued fraction convergents to sqrt(222).

The programs for A041415, there is no canonical definition to state claims against.
-/

/-! ## A041415.P15168606008419883822

`A006370(A041753(n)+A041177(n))`
-/

namespace A041415.P15168606008419883822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A041753 n + A041177 n).toNat

end

end A041415.P15168606008419883822

/-! ## A041415.P1339018075823710369

`A247914(A041473(n))`
-/

namespace A041415.P1339018075823710369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A041473 n).toNat

end

end A041415.P1339018075823710369

/-!
# A041416: Numerators of continued fraction convergents to sqrt(223).

The programs for A041416, there is no canonical definition to state claims against.
-/

/-! ## A041416.P11967753242731551980

`A004277(A041414(n))-A041408(n)`
-/

namespace A041416.P11967753242731551980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041414 n).toNat - A041408 n

end

end A041416.P11967753242731551980

/-!
# A041417: Denominators of continued fraction convergents to sqrt(223).

The programs for A041417, there is no canonical definition to state claims against.
-/

/-! ## A041417.P2410132471008520086

`A140106(A041419(n))+1`
-/

namespace A041417.P2410132471008520086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A041419 n).toNat + 1

end

end A041417.P2410132471008520086

/-! ## A041417.P2438812196228858644

`A065033(A041419(n)-1)`
-/

namespace A041417.P2438812196228858644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A041419 n - 1).toNat

end

end A041417.P2438812196228858644

/-!
# A041418: Numerators of continued fraction convergents to sqrt(224).

The programs for A041418, there is no canonical definition to state claims against.
-/

/-! ## A041418.P14553745619238054148

`gcd(2, n)*A041096(n)`
-/

namespace A041418.P14553745619238054148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041096 n

end

end A041418.P14553745619238054148

/-! ## A041418.P4052700501221978025

`lcm(Δ[A052938(n)], A041096(n))`
-/

namespace A041418.P4052700501221978025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A041096 n)

end

end A041418.P4052700501221978025

/-! ## A041418.P2081585217025915064

`A000034(n+1)*A041096(n)`
-/

namespace A041418.P2081585217025915064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041096 n

end

end A041418.P2081585217025915064

/-! ## A041418.P1052440880310215639

`A040001(n+2)*A041096(n)`
-/

namespace A041418.P1052440880310215639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041096 n

end

end A041418.P1052440880310215639

/-! ## A041418.P16374975643470695781

`A041096(n)*A134451(n+2)`
-/

namespace A041418.P16374975643470695781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041096 n * A134451 (n + 2)

end

end A041418.P16374975643470695781

/-! ## A041418.P5261511312045214933

`2/A000034(n)*A041096(n)`
-/

namespace A041418.P5261511312045214933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041096 n : ℚ)

end

end A041418.P5261511312045214933

/-! ## A041418.P4756375588447188555

`A001511(A047589(n+1))*A041096(n)`
-/

namespace A041418.P4756375588447188555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A047589 (n + 1)).toNat * A041096 n

end

end A041418.P4756375588447188555

/-! ## A041418.P7995217043071163123

`A000045(A020639(3*(n+1)))*A041096(n)`
-/

namespace A041418.P7995217043071163123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (3 * (n + 1))).toNat * A041096 n

end

end A041418.P7995217043071163123

/-! ## A041418.P1943554639724058420

`A001511(n²+2)*A041096(n)`
-/

namespace A041418.P1943554639724058420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 2) * A041096 n

end

end A041418.P1943554639724058420

/-!
# A041419: Denominators of continued fraction convergents to sqrt(224).

The programs for A041419, the canonical program `A041419.P3900832587034244933` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041419 has offset 0).

The definition of A041419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041419.P3900832587034244933

`30*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=29, a(3)=30`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041419

/-- `30*a(n-2)-a(n-4)` -/
def P3900832587034244933.Spec : Prop :=
  ∀ n, P3900832587034244933.a n = A041419 n

theorem P3900832587034244933.correct : P3900832587034244933.Spec := by
  intro n
  simp only [A041419]

end A041419

/-! ## A041419.P973313643966477048

`lcm(2, A041097(n))/2`
-/

namespace A041419.P973313643966477048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041097 n) : ℚ) / 2

end

end A041419.P973313643966477048

namespace A041419

/-- `lcm(2, A041097(n))/2` -/
def P973313643966477048.Spec : Prop :=
  ∀ n, P973313643966477048.a n = (A041419 n : ℚ)

end A041419

/-! ## A041419.P14153176812227337984

`A041097(n)/A000034(n)`
-/

namespace A041419.P14153176812227337984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041097 n : ℚ) / (A000034 n : ℚ)

end

end A041419.P14153176812227337984

namespace A041419

/-- `A041097(n)/A000034(n)` -/
def P14153176812227337984.Spec : Prop :=
  ∀ n, P14153176812227337984.a n = (A041419 n : ℚ)

end A041419

/-! ## A041419.P2804742770845306341

`A041097(n)/(A000035(n)+1)`
-/

namespace A041419.P2804742770845306341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041097 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041419.P2804742770845306341

namespace A041419

/-- `A041097(n)/(A000035(n)+1)` -/
def P2804742770845306341.Spec : Prop :=
  ∀ n, P2804742770845306341.a n = (A041419 n : ℚ)

end A041419

/-! ## A041419.P2900952823156176515

`A041097(n)/Δ[A001651(n+1)]`
-/

namespace A041419.P2900952823156176515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041097 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041419.P2900952823156176515

namespace A041419

/-- `A041097(n)/Δ[A001651(n+1)]` -/
def P2900952823156176515.Spec : Prop :=
  ∀ n, P2900952823156176515.a n = (A041419 n : ℚ)

end A041419

/-! ## A041419.P6464220981715060568

`A041097(n)/A020639(A006519(n+1))`
-/

namespace A041419.P6464220981715060568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041097 n : ℚ) / (A020639 (A006519 (n + 1)).toNat : ℚ)

end

end A041419.P6464220981715060568

namespace A041419

/-- `A041097(n)/A020639(A006519(n+1))` -/
def P6464220981715060568.Spec : Prop :=
  ∀ n, P6464220981715060568.a n = (A041419 n : ℚ)

end A041419

/-! ## A041419.P4173385275316477885

`A041097(n)/A041097(n-A052928(n))`
-/

namespace A041419.P4173385275316477885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041097 n : ℚ) / (A041097 ((n : ℤ) - A052928 n).toNat : ℚ)

end

end A041419.P4173385275316477885

namespace A041419

/-- `A041097(n)/A041097(n-A052928(n))` -/
def P4173385275316477885.Spec : Prop :=
  ∀ n, P4173385275316477885.a n = (A041419 n : ℚ)

end A041419

/-! ## A041419.P14019983723066765269

`A041097(n)/gcd(A040048(n), A041097(n))`
-/

namespace A041419.P14019983723066765269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041097 n : ℚ) / (Int.gcd (A040048 n) (A041097 n) : ℚ)

end

end A041419.P14019983723066765269

namespace A041419

/-- `A041097(n)/gcd(A040048(n), A041097(n))` -/
def P14019983723066765269.Spec : Prop :=
  ∀ n, P14019983723066765269.a n = (A041419 n : ℚ)

end A041419

/-! ## A041419.P27740044810291413

`A041097(n)/A001511(n²+1)`
-/

namespace A041419.P27740044810291413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041097 n : ℚ) / (A001511 (n ^ 2 + 1) : ℚ)

end

end A041419.P27740044810291413

namespace A041419

/-- `A041097(n)/A001511(n²+1)` -/
def P27740044810291413.Spec : Prop :=
  ∀ n, P27740044810291413.a n = (A041419 n : ℚ)

end A041419

/-! ## A041419.P9429010507881167995

`A041097(n)/A006519(n²+1)`
-/

namespace A041419.P9429010507881167995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041097 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041419.P9429010507881167995

namespace A041419

/-- `A041097(n)/A006519(n²+1)` -/
def P9429010507881167995.Spec : Prop :=
  ∀ n, P9429010507881167995.a n = (A041419 n : ℚ)

end A041419

/-!
# A041420: Numerators of continued fraction convergents to sqrt(226).

The programs for A041420, the canonical program `A041420.P18062741328420841028` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041420 has offset 0).

The definition of A041420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041420.P18062741328420841028

`30*a(n-1)+a(n-2)` with `a(0)=15, a(1)=451`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041420

/-- `30*a(n-1)+a(n-2)` -/
def P18062741328420841028.Spec : Prop :=
  ∀ n, (P18062741328420841028.a n : ℤ) = A041420 n

theorem P18062741328420841028.correct : P18062741328420841028.Spec := by
  intro n
  simp only [A041420]

end A041420

/-! ## A041420.P16093373937469776662

`lcm(2, A042746(n))/2`
-/

namespace A041420.P16093373937469776662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A042746 n) : ℚ) / 2

end

end A041420.P16093373937469776662

namespace A041420

/-- `lcm(2, A042746(n))/2` -/
def P16093373937469776662.Spec : Prop :=
  ∀ n, P16093373937469776662.a n = (A041420 n : ℚ)

end A041420

/-! ## A041420.P10168918242121436270

`A042746(n)/A000034(n+1)`
-/

namespace A041420.P10168918242121436270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042746 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041420.P10168918242121436270

namespace A041420

/-- `A042746(n)/A000034(n+1)` -/
def P10168918242121436270.Spec : Prop :=
  ∀ n, P10168918242121436270.a n = (A041420 n : ℚ)

end A041420

/-! ## A041420.P3819280955542921327

`A042746(n)/A040001(n+2)`
-/

namespace A041420.P3819280955542921327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042746 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041420.P3819280955542921327

namespace A041420

/-- `A042746(n)/A040001(n+2)` -/
def P3819280955542921327.Spec : Prop :=
  ∀ n, P3819280955542921327.a n = (A041420 n : ℚ)

end A041420

/-! ## A041420.P9841340558860670034

`A000034(n)/2*A042746(n)`
-/

namespace A041420.P9841340558860670034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042746 n : ℚ)

end

end A041420.P9841340558860670034

namespace A041420

/-- `A000034(n)/2*A042746(n)` -/
def P9841340558860670034.Spec : Prop :=
  ∀ n, P9841340558860670034.a n = (A041420 n : ℚ)

end A041420

/-! ## A041420.P11132844944015985145

`A042746(n)/gcd(2, A040873(n))`
-/

namespace A041420.P11132844944015985145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042746 n : ℚ) / (Int.gcd 2 (A040873 n) : ℚ)

end

end A041420.P11132844944015985145

namespace A041420

/-- `A042746(n)/gcd(2, A040873(n))` -/
def P11132844944015985145.Spec : Prop :=
  ∀ n, P11132844944015985145.a n = (A041420 n : ℚ)

end A041420

/-! ## A041420.P335542057063125198

`A042746(n)/gcd(n, A107283(n))`
-/

namespace A041420.P335542057063125198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042746 n : ℚ) / (Int.gcd (n : ℤ) (A107283 n) : ℚ)

end

end A041420.P335542057063125198

namespace A041420

/-- `A042746(n)/gcd(n, A107283(n))` -/
def P335542057063125198.Spec : Prop :=
  ∀ n, P335542057063125198.a n = (A041420 n : ℚ)

end A041420

/-! ## A041420.P10512624578840820289

`A042746(n)/A001222(Δ[A091998(n+1)])`
-/

namespace A041420.P10512624578840820289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042746 n : ℚ) / (A001222 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041420.P10512624578840820289

namespace A041420

/-- `A042746(n)/A001222(Δ[A091998(n+1)])` -/
def P10512624578840820289.Spec : Prop :=
  ∀ n, P10512624578840820289.a n = (A041420 n : ℚ)

end A041420

/-!
# A041421: Denominators of continued fraction convergents to sqrt(226).

The programs for A041421, the canonical program `A041421.P13879902579617995261` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041421 has offset 0).

The definition of A041421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041421.P13879902579617995261

`30*a(n-1)+a(n-2)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041421

/-- `30*a(n-1)+a(n-2)` -/
def P13879902579617995261.Spec : Prop :=
  ∀ n, (P13879902579617995261.a n : ℤ) = A041421 n

theorem P13879902579617995261.correct : P13879902579617995261.Spec := by
  intro n
  simp only [A041421]

end A041421

/-! ## A041421.P14749621609809226377

`(n%2+1)*A042747(n)`
-/

namespace A041421.P14749621609809226377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A042747 n

end

end A041421.P14749621609809226377

namespace A041421

/-- `(n%2+1)*A042747(n)` -/
def P14749621609809226377.Spec : Prop :=
  ∀ n, P14749621609809226377.a n = A041421 n

end A041421

/-! ## A041421.P15137127368736464109

`A000034(n)*A042747(n)`
-/

namespace A041421.P15137127368736464109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042747 n

end

end A041421.P15137127368736464109

namespace A041421

/-- `A000034(n)*A042747(n)` -/
def P15137127368736464109.Spec : Prop :=
  ∀ n, P15137127368736464109.a n = A041421 n

end A041421

/-! ## A041421.P3235851529206435987

`A010673(n)!*A042747(n)`
-/

namespace A041421.P3235851529206435987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010673 n).toNat : ℤ) * A042747 n

end

end A041421.P3235851529206435987

namespace A041421

/-- `A010673(n)!*A042747(n)` -/
def P3235851529206435987.Spec : Prop :=
  ∀ n, P3235851529206435987.a n = A041421 n

end A041421

/-! ## A041421.P7055129932130926849

`A040001(n+1)*A042747(n)`
-/

namespace A041421.P7055129932130926849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A042747 n

end

end A041421.P7055129932130926849

namespace A041421

/-- `A040001(n+1)*A042747(n)` -/
def P7055129932130926849.Spec : Prop :=
  ∀ n, P7055129932130926849.a n = A041421 n

end A041421

/-!
# A041424: Numerators of continued fraction convergents to sqrt(228).

The programs for A041424, there is no canonical definition to state claims against.
-/

/-! ## A041424.P4036149694499153266

`A041098(3*n+2)`
-/

namespace A041424.P4036149694499153266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041098 (3 * n + 2)

end

end A041424.P4036149694499153266

/-! ## A041424.P16851820521937365252

`A042762(n)/gcd(2, n)`
-/

namespace A041424.P16851820521937365252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042762 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041424.P16851820521937365252

/-! ## A041424.P12962307112565587694

`or(1, A041098(A016789(n)))`
-/

namespace A041424.P12962307112565587694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041098 (A016789 n).toNat)

end

end A041424.P12962307112565587694

/-! ## A041424.P13756853455120352873

`A042762(n)/Δ[A007494(n)]`
-/

namespace A041424.P13756853455120352873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042762 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041424.P13756853455120352873

/-! ## A041424.P15147286844329602690

`A042762(n)/A000034(n+1)`
-/

namespace A041424.P15147286844329602690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042762 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041424.P15147286844329602690

/-! ## A041424.P171276654031902783

`A000034(n)/2*A042762(n)`
-/

namespace A041424.P171276654031902783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042762 n : ℚ)

end

end A041424.P171276654031902783

/-! ## A041424.P8075068279466172430

`A041098(A016789(n))+A000007(n+1)`
-/

namespace A041424.P8075068279466172430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041098 (A016789 n).toNat + A000007 (n + 1)

end

end A041424.P8075068279466172430

/-! ## A041424.P6992285004499888230

`lcm(A041098(A016789(n)), A071936(n+1))`
-/

namespace A041424.P6992285004499888230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041098 (A016789 n).toNat) (A071936 (n + 1))

end

end A041424.P6992285004499888230

/-! ## A041424.P1597290723704213184

`A041098(A016789(n))/A007318((-1)^n+1)`
-/

namespace A041424.P1597290723704213184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041098 (A016789 n).toNat : ℚ) / (A007318 ((-1) ^ n + 1).toNat : ℚ)

end

end A041424.P1597290723704213184

/-!
# A041425: Denominators of continued fraction convergents to sqrt(228).

The programs for A041425, there is no canonical definition to state claims against.
-/

/-! ## A041425.P5734145014655347918

`∑[A041099(3*n)]`
-/

namespace A041425.P5734145014655347918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041099 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041425.P5734145014655347918

/-! ## A041425.P8308221133061514813

`A041099(A016789(n))/2`
-/

namespace A041425.P8308221133061514813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041099 (A016789 n).toNat : ℚ) / 2

end

end A041425.P8308221133061514813

/-! ## A041425.P1808853085752602322

`A000034(n)*A042763(n)`
-/

namespace A041425.P1808853085752602322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042763 n

end

end A041425.P1808853085752602322

/-! ## A041425.P4400263519330099861

`sqrt(A010685(n))*A042763(n)`
-/

namespace A041425.P4400263519330099861
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010685 n : ℝ) * (A042763 n : ℝ)

end

end A041425.P4400263519330099861

/-! ## A041425.P11930938956078577888

`A010673(n)!*A042763(n)`
-/

namespace A041425.P11930938956078577888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010673 n).toNat : ℤ) * A042763 n

end

end A041425.P11930938956078577888

/-! ## A041425.P11288097620259347596

`lcm(A006519(n+1), A042763(n))`
-/

namespace A041425.P11288097620259347596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A042763 n)

end

end A041425.P11288097620259347596

/-!
# A041427: Denominators of continued fraction convergents to sqrt(229).

The programs for A041427, there is no canonical definition to state claims against.
-/

/-! ## A041427.P7469938653635080323

`A054900(A041426(n))+1`
-/

namespace A041427.P7469938653635080323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A041426 n).toNat + 1

end

end A041427.P7469938653635080323

/-!
# A041428: Numerators of continued fraction convergents to sqrt(230).

The programs for A041428, there is no canonical definition to state claims against.
-/

/-! ## A041428.P962831955607936130

`A042778(n)/gcd(2, n)`
-/

namespace A041428.P962831955607936130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042778 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041428.P962831955607936130

/-! ## A041428.P14582453389204573464

`A042778(n)/Δ[A007494(n)]`
-/

namespace A041428.P14582453389204573464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042778 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041428.P14582453389204573464

/-! ## A041428.P4888428615550462071

`A042778(n)/A000034(n+1)`
-/

namespace A041428.P4888428615550462071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042778 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041428.P4888428615550462071

/-! ## A041428.P16489153499237105066

`A042778(n)/(A059841(n)+1)`
-/

namespace A041428.P16489153499237105066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042778 n : ℚ) / (A059841 n + 1 : ℚ)

end

end A041428.P16489153499237105066

/-! ## A041428.P16556305374230524478

`A000034(n)/2*A042778(n)`
-/

namespace A041428.P16556305374230524478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042778 n : ℚ)

end

end A041428.P16556305374230524478

/-!
# A041429: Denominators of continued fraction convergents to sqrt(230).

The programs for A041429, there is no canonical definition to state claims against.
-/

/-! ## A041429.P16274639553194642252

`A000034(n)*A042779(n)`
-/

namespace A041429.P16274639553194642252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042779 n

end

end A041429.P16274639553194642252

/-! ## A041429.P1438310990015757637

`∑[A165326(n)]*A042779(n)`
-/

namespace A041429.P1438310990015757637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A042779 n

end

end A041429.P1438310990015757637

/-! ## A041429.P4309611292604930486

`A042779(n)*A084642(n+2)`
-/

namespace A041429.P4309611292604930486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042779 n * A084642 (n + 2)

end

end A041429.P4309611292604930486

/-! ## A041429.P12430387009747231884

`lcm(A042779(n), A328479(n+1))`
-/

namespace A041429.P12430387009747231884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A042779 n) (A328479 (n + 1))

end

end A041429.P12430387009747231884

/-! ## A041429.P2385540154180861660

`A001511(n²+1)*A042779(n)`
-/

namespace A041429.P2385540154180861660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 1) * A042779 n

end

end A041429.P2385540154180861660

/-! ## A041429.P5725213024913264107

`A006519(n²+1)*A042779(n)`
-/

namespace A041429.P5725213024913264107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A042779 n

end

end A041429.P5725213024913264107

/-! ## A041429.P4420712359122050859

`A014963(A006519(n+1))*A042779(n)`
-/

namespace A041429.P4420712359122050859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006519 (n + 1)).toNat * A042779 n

end

end A041429.P4420712359122050859

/-! ## A041429.P8200448345561746702

`A042779(n)*A309890(A004793(n+1))`
-/

namespace A041429.P8200448345561746702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042779 n * A309890 (A004793 (n + 1)).toNat

end

end A041429.P8200448345561746702

/-!
# A041431: Denominators of continued fraction convergents to sqrt(231).

The programs for A041431, the canonical program `A041431.P2027833437948310289` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041431 has offset 0).

The definition of A041431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041431.P2027833437948310289

`152*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=151, a(3)=760`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041431

/-- `152*a(n-2)-a(n-4)` -/
def P2027833437948310289.Spec : Prop :=
  ∀ n, P2027833437948310289.a n = A041431 n

theorem P2027833437948310289.correct : P2027833437948310289.Spec := by
  intro n
  simp only [A041431]

end A041431

/-!
# A041433: Denominators of continued fraction convergents to sqrt(232).

The programs for A041433, there is no canonical definition to state claims against.
-/

/-! ## A041433.P7543521038451605679

`A324758(A324841(A324840(n+2)²))`
-/

namespace A041433.P7543521038451605679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (A324841 (A324840 (n + 2) ^ 2).toNat).toNat

end

end A041433.P7543521038451605679

/-!
# A041437: Denominators of continued fraction convergents to sqrt(234).

The programs for A041437, there is no canonical definition to state claims against.
-/

/-! ## A041437.P12164576972775277007

`A191849(A034744(n+2))`
-/

namespace A041437.P12164576972775277007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191849 (A034744 (n + 2)).toNat

end

end A041437.P12164576972775277007

/-! ## A041437.P14971001029379124287

`A320456(A106436(3*n+2))+A049788(2*(n+3))`
-/

namespace A041437.P14971001029379124287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320456 (A106436 (3 * n + 2)).toNat + A049788 (2 * (n + 3))

end

end A041437.P14971001029379124287

/-!
# A041439: Denominators of continued fraction convergents to sqrt(235).

The programs for A041439, the canonical program `A041439.P10419158337699377257` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041439 has offset 0).

The definition of A041439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041439.P10419158337699377257

`92*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=91, a(3)=276`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041439

/-- `92*a(n-2)-a(n-4)` -/
def P10419158337699377257.Spec : Prop :=
  ∀ n, P10419158337699377257.a n = A041439 n

theorem P10419158337699377257.correct : P10419158337699377257.Spec := by
  intro n
  simp only [A041439]

end A041439

/-!
# A041443: Denominators of continued fraction convergents to sqrt(237).

The programs for A041443, there is no canonical definition to state claims against.
-/

/-! ## A041443.P9506988837438343871

`A128994(A330659(n)!+n)`
-/

namespace A041443.P9506988837438343871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128994 (Nat.factorial (A330659 n).toNat + n)

end

end A041443.P9506988837438343871

/-! ## A041443.P16752919871377728947

`∩[A128994(n+1), A161306(n+1)]`
-/

namespace A041443.P16752919871377728947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A041443.P16752919871377728947

/-!
# A041445: Denominators of continued fraction convergents to sqrt(238).

The programs for A041445, there is no canonical definition to state claims against.
-/

/-! ## A041445.P12997902241839472900

`A161350(A041245(n+1))`
-/

namespace A041445.P12997902241839472900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161350 (A041245 (n + 1)).toNat

end

end A041445.P12997902241839472900

/-! ## A041445.P4450073334186818615

`∩[A355846(n+1), A376897(n+1)]`
-/

namespace A041445.P4450073334186818615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A041445.P4450073334186818615

/-!
# A041447: Denominators of continued fraction convergents to sqrt(239).

The programs for A041447, there is no canonical definition to state claims against.
-/

/-! ## A041447.P5547370657505713532

`record[gcd(n+5, A354366(2*n+1))]`
-/

namespace A041447.P5547370657505713532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A354366 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041447.P5547370657505713532

/-! ## A041447.P2317882460146756863

`eq[A003415(n), A220945(A314712(n))]`
-/

namespace A041447.P2317882460146756863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220945 (A314712 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A041447.P2317882460146756863

/-!
# A041448: Numerators of continued fraction convergents to sqrt(240).

The programs for A041448, there is no canonical definition to state claims against.
-/

/-! ## A041448.P1177834288551448583

`A042858(n)/Δ[A007494(n)]`
-/

namespace A041448.P1177834288551448583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042858 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041448.P1177834288551448583

/-! ## A041448.P2605878094175784221

`A042858(n)/A000034(n+1)`
-/

namespace A041448.P2605878094175784221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042858 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041448.P2605878094175784221

/-! ## A041448.P12988895265939343070

`A042858(n)/A040001(n+2)`
-/

namespace A041448.P12988895265939343070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042858 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041448.P12988895265939343070

/-! ## A041448.P14885835179994693498

`A000034(n)/2*A042858(n)`
-/

namespace A041448.P14885835179994693498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042858 n : ℚ)

end

end A041448.P14885835179994693498

/-! ## A041448.P5258517579188499514

`A042858(n)/A001511(A020639(n+2))`
-/

namespace A041448.P5258517579188499514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042858 n : ℚ) / (A001511 (A020639 (n + 2)).toNat : ℚ)

end

end A041448.P5258517579188499514

/-! ## A041448.P4496911664424955891

`A042858(n)/A001511(n²+2)`
-/

namespace A041448.P4496911664424955891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042858 n : ℚ) / (A001511 (n ^ 2 + 2) : ℚ)

end

end A041448.P4496911664424955891

/-!
# A041449: Denominators of continued fraction convergents to sqrt(240).

The programs for A041449, the canonical program `A041449.P12210422637638911024` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041449 has offset 0).

The definition of A041449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041449.P12210422637638911024

`62*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=61, a(3)=124`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041449

/-- `62*a(n-2)-a(n-4)` -/
def P12210422637638911024.Spec : Prop :=
  ∀ n, P12210422637638911024.a n = A041449 n

theorem P12210422637638911024.correct : P12210422637638911024.Spec := by
  intro n
  simp only [A041449]

end A041449

/-! ## A041449.P9908172732921854934

`∑[A041105(A042948(n))]`
-/

namespace A041449.P9908172732921854934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041105 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041449.P9908172732921854934

namespace A041449

/-- `∑[A041105(A042948(n))]` -/
def P9908172732921854934.Spec : Prop :=
  ∀ n, P9908172732921854934.a n = A041449 n

end A041449

/-! ## A041449.P15040809902947698519

`A000034(n)*A042859(n)`
-/

namespace A041449.P15040809902947698519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042859 n

end

end A041449.P15040809902947698519

namespace A041449

/-- `A000034(n)*A042859(n)` -/
def P15040809902947698519.Spec : Prop :=
  ∀ n, P15040809902947698519.a n = A041449 n

end A041449

/-! ## A041449.P11419480597395876653

`∑[A041105(A080412(2*n))]`
-/

namespace A041449.P11419480597395876653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041105 (A080412 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041449.P11419480597395876653

namespace A041449

/-- `∑[A041105(A080412(2*n))]` -/
def P11419480597395876653.Spec : Prop :=
  ∀ n, P11419480597395876653.a n = A041449 n

end A041449

/-! ## A041449.P5116928912487012406

`Δ[A032766(n)]*A042859(n)`
-/

namespace A041449.P5116928912487012406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042859 n

end

end A041449.P5116928912487012406

namespace A041449

/-- `Δ[A032766(n)]*A042859(n)` -/
def P5116928912487012406.Spec : Prop :=
  ∀ n, P5116928912487012406.a n = A041449 n

end A041449

/-! ## A041449.P18101147066378060027

`A040001(n+1)*A042859(n)`
-/

namespace A041449.P18101147066378060027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A042859 n

end

end A041449.P18101147066378060027

namespace A041449

/-- `A040001(n+1)*A042859(n)` -/
def P18101147066378060027.Spec : Prop :=
  ∀ n, P18101147066378060027.a n = A041449 n

end A041449

/-!
# A041451: Denominators of continued fraction convergents to sqrt(241).

The programs for A041451, there is no canonical definition to state claims against.
-/

/-! ## A041451.P14472949478881605902

`a(n-2)+a(n-1)*A040225(n)` with `a(0)=1, a(1)=1`
-/

namespace A041451.P14472949478881605902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040225 n

end

end A041451.P14472949478881605902

/-! ## A041451.P10291205762190584555

`A033182(A041882(n)+n)`
-/

namespace A041451.P10291205762190584555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A041882 n + (n : ℤ)).toNat

end

end A041451.P10291205762190584555

/-!
# A041452: Numerators of continued fraction convergents to sqrt(242).

The programs for A041452, there is no canonical definition to state claims against.
-/

/-! ## A041452.P18034351693281561932

`A194640(A042156(n))`
-/

namespace A041452.P18034351693281561932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A042156 n).toNat

end

end A041452.P18034351693281561932

/-!
# A041453: Denominators of continued fraction convergents to sqrt(242).

The programs for A041453, there is no canonical definition to state claims against.
-/

/-! ## A041453.P7191096638591230741

`A135533(n^∑[∑{e}[n, #]])`
-/

namespace A041453.P7191096638591230741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135533 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A041453.P7191096638591230741

/-! ## A041453.P15368586559485008791

`A171376(a(n-1)+a(n-3)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7, a(4)=9`
-/

namespace A041453.P15368586559485008791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 7, 9] fun n a =>
  A171376 (a (n - 1) + a (n - 3) - a (n - 4)).toNat

end

end A041453.P15368586559485008791

/-!
# A041454: Numerators of continued fraction convergents to sqrt(243).

The programs for A041454, there is no canonical definition to state claims against.
-/

/-! ## A041454.P10351270442114253881

`a(n-2)+a(n-1)*A005136(a(n-2))` with `a(0)=15, a(1)=16, a(2)=31`
-/

namespace A041454.P10351270442114253881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 16, 31] fun n a =>
  a (n - 2) + a (n - 1) * A005136 (a (n - 2)).toNat

end

end A041454.P10351270442114253881

/-!
# A041455: Denominators of continued fraction convergents to sqrt(243).

The programs for A041455, there is no canonical definition to state claims against.
-/

/-! ## A041455.P5474969942855668355

`A389731(3*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A041455.P5474969942855668355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A389731 (3 * a (n - 1)).toNat

end

end A041455.P5474969942855668355

/-! ## A041455.P7224326761288248634

`A063272(2^round(4^(n/3)))`
-/

namespace A041455.P7224326761288248634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway ((4 : ℝ) ^ ((n : ℚ) / 3 : ℝ)) : ℤ))).toNat

end

end A041455.P7224326761288248634

/-!
# A041456: Numerators of continued fraction convergents to sqrt(244).

The programs for A041456, there is no canonical definition to state claims against.
-/

/-! ## A041456.P17195316126263286423

`A022105(∑[A006925(n)!])`
-/

namespace A041456.P17195316126263286423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A006925 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A041456.P17195316126263286423

/-! ## A041456.P10559553160848695286

`A022105(∑[A306847(n)!])`
-/

namespace A041456.P10559553160848695286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A306847 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A041456.P10559553160848695286

/-! ## A041456.P15906938525936922552

`A022105(A356939(n+1)%A217799(n+2))`
-/

namespace A041456.P15906938525936922552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 (Int.tmod (A356939 (n + 1)) (A217799 (n + 2))).toNat

end

end A041456.P15906938525936922552

/-!
# A041457: Denominators of continued fraction convergents to sqrt(244).

The programs for A041457, there is no canonical definition to state claims against.
-/

/-! ## A041457.P17438701233212006654

`a(n-2)+a(n-1)*A040228(n)` with `a(0)=1, a(1)=1`
-/

namespace A041457.P17438701233212006654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040228 n

end

end A041457.P17438701233212006654

/-!
# A041458: Numerators of continued fraction convergents to sqrt(245).

The programs for A041458, there is no canonical definition to state claims against.
-/

/-! ## A041458.P3490174881977002042

`A268581(A000009(n+1))+A268570(2*n+1)`
-/

namespace A041458.P3490174881977002042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 (A000009 (n + 1)).toNat + A268570 (2 * n + 1)

end

end A041458.P3490174881977002042

/-!
# A041459: Denominators of continued fraction convergents to sqrt(245).

The programs for A041459, there is no canonical definition to state claims against.
-/

/-! ## A041459.P8166318022289266862

`A196042(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A041459.P8166318022289266862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  A196042 (a (n - 1)).toNat

end

end A041459.P8166318022289266862

/-! ## A041459.P5783282954790538077

`A359406(ceil((5/π)^n/2))`
-/

namespace A041459.P5783282954790538077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359406 ⌈(5 / Real.pi) ^ n / 2⌉.toNat

end

end A041459.P5783282954790538077

/-!
# A041461: Denominators of continued fraction convergents to sqrt(246).

The programs for A041461, there is no canonical definition to state claims against.
-/

/-! ## A041461.P14439928974529692828

`A163926(A149307(n))`
-/

namespace A041461.P14439928974529692828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163926 (A149307 n).toNat

end

end A041461.P14439928974529692828

/-! ## A041461.P12995354331337647036

`A038568(record[A184944(n)²])`
-/

namespace A041461.P12995354331337647036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184944 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A041461.P12995354331337647036

/-!
# A041462: Numerators of continued fraction convergents to sqrt(247).

The programs for A041462, there is no canonical definition to state claims against.
-/

/-! ## A041462.P9824954655829791691

`A248227(A041986(n))`
-/

namespace A041462.P9824954655829791691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A041986 n).toNat

end

end A041462.P9824954655829791691

/-!
# A041465: Denominators of continued fraction convergents to sqrt(248).

The programs for A041465, the canonical program `A041465.P14264061000374031653` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041465 has offset 0).

The definition of A041465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041465.P14264061000374031653

`126*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=123, a(5)=127, a(6)=377, a(7)=504`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041465

/-- `126*a(n-4)-a(n-8)` -/
def P14264061000374031653.Spec : Prop :=
  ∀ n, P14264061000374031653.a n = A041465 n

theorem P14264061000374031653.correct : P14264061000374031653.Spec := by
  intro n
  simp only [A041465]

end A041465

/-! ## A041465.P6957219425501924993

`A292579(A042275(n))`
-/

namespace A041465.P6957219425501924993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (A042275 n).toNat

end

end A041465.P6957219425501924993

namespace A041465

/-- `A292579(A042275(n))` -/
def P6957219425501924993.Spec : Prop :=
  ∀ n, P6957219425501924993.a n = A041465 n

end A041465

/-! ## A041465.P16461019278183458207

`A001281(A041741(n)+A041253(n))`
-/

namespace A041465.P16461019278183458207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041741 n + A041253 n).toNat

end

end A041465.P16461019278183458207

namespace A041465

/-- `A001281(A041741(n)+A041253(n))` -/
def P16461019278183458207.Spec : Prop :=
  ∀ n, P16461019278183458207.a n = A041465 n

end A041465

/-! ## A041465.P16510470356891446324

`A001281(A042081(n)+A041105(n))`
-/

namespace A041465.P16510470356891446324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A042081 n + A041105 n).toNat

end

end A041465.P16510470356891446324

namespace A041465

/-- `A001281(A042081(n)+A041105(n))` -/
def P16510470356891446324.Spec : Prop :=
  ∀ n, P16510470356891446324.a n = A041465 n

end A041465

/-!
# A041469: Denominators of continued fraction convergents to sqrt(250).

The programs for A041469, there is no canonical definition to state claims against.
-/

/-! ## A041469.P1648684054007749578

`A316470(a(n-1)+1)+n+1` with `a(0)=1, a(1)=1`
-/

namespace A041469.P1648684054007749578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A316470 (a (n - 1) + 1).toNat + (n + 1 : ℤ)

end

end A041469.P1648684054007749578

/-! ## A041469.P12544996943390964109

`A154726(A277358(n))-n`
-/

namespace A041469.P12544996943390964109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154726 (A277358 n).toNat - (n : ℤ)

end

end A041469.P12544996943390964109

/-!
# A041472: Numerators of continued fraction convergents to sqrt(252).

The programs for A041472, there is no canonical definition to state claims against.
-/

/-! ## A041472.P6632824585610884459

`A041044(n)*A176040(n)`
-/

namespace A041472.P6632824585610884459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041044 n * A176040 n

end

end A041472.P6632824585610884459

/-! ## A041472.P7805323637131427604

`lcm(A041044(n), A112030(n))`
-/

namespace A041472.P7805323637131427604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041044 n) (A112030 n)

end

end A041472.P7805323637131427604

/-! ## A041472.P10764106723032658146

`Δ[A014601(n)]*A041044(n)`
-/

namespace A041472.P10764106723032658146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041044 n

end

end A041472.P10764106723032658146

/-! ## A041472.P17075145907895374386

`gcd(3, A041045(n+1))*A041044(n)`
-/

namespace A041472.P17075145907895374386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A041045 (n + 1)) : ℤ) * A041044 n

end

end A041472.P17075145907895374386

/-! ## A041472.P2095935256262616867

`A003324(A017305(n))*A041044(n)`
-/

namespace A041472.P2095935256262616867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A017305 n).toNat * A041044 n

end

end A041472.P2095935256262616867

/-! ## A041472.P8865904446640111273

`A041044(n)*A112030(n²)`
-/

namespace A041472.P8865904446640111273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041044 n * A112030 (n ^ 2)

end

end A041472.P8865904446640111273

/-!
# A041473: Denominators of continued fraction convergents to sqrt(252).

The programs for A041473, there is no canonical definition to state claims against.
-/

/-! ## A041473.P10623827147808834418

`lcm(3, A041045(n))/3`
-/

namespace A041473.P10623827147808834418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A041045 n) : ℚ) / 3

end

end A041473.P10623827147808834418

/-! ## A041473.P3110624271188130952

`A041045(n)/A010684(n)`
-/

namespace A041473.P3110624271188130952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041045 n : ℚ) / (A010684 n : ℚ)

end

end A041473.P3110624271188130952

/-! ## A041473.P10764027740969910493

`A041045(n)/Δ[A042948(n)]`
-/

namespace A041473.P10764027740969910493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041045 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041473.P10764027740969910493

/-! ## A041473.P17240972246369289886

`A041045(n)/A099545(2*n+1)`
-/

namespace A041473.P17240972246369289886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041045 n : ℚ) / (A099545 (2 * n + 1) : ℚ)

end

end A041473.P17240972246369289886

/-! ## A041473.P13923939968539174269

`A041045(n)/A041045(Δ[A008619(n)])`
-/

namespace A041473.P13923939968539174269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041045 n : ℚ) / (A041045 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041473.P13923939968539174269

/-! ## A041473.P9168788018010945985

`1/A099545(A016969(n))*A041045(n)`
-/

namespace A041473.P9168788018010945985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A099545 (A016969 n).toNat : ℚ) * (A041045 n : ℚ)

end

end A041473.P9168788018010945985

/-!
# A041477: Denominators of continued fraction convergents to sqrt(254).

The programs for A041477, there is no canonical definition to state claims against.
-/

/-! ## A041477.P16030146841041654244

`A004525(A041479(n))`
-/

namespace A041477.P16030146841041654244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041479 n).toNat

end

end A041477.P16030146841041654244

/-! ## A041477.P2660520750097731102

`A065033(A041479(n)-1)`
-/

namespace A041477.P2660520750097731102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A041479 n - 1).toNat

end

end A041477.P2660520750097731102

/-!
# A041478: Numerators of continued fraction convergents to sqrt(255).

The programs for A041478, the canonical program `A041478.P1179460211020322223` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041478 has offset 0).

The definition of A041478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041478.P1179460211020322223

`32*a(n-2)-a(n-4)` with `a(0)=15, a(1)=16, a(2)=495, a(3)=511`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041478

/-- `32*a(n-2)-a(n-4)` -/
def P1179460211020322223.Spec : Prop :=
  ∀ n, P1179460211020322223.a n = A041478 n

theorem P1179460211020322223.correct : P1179460211020322223.Spec := by
  intro n
  simp only [A041478]

end A041478

/-! ## A041478.P9004403850244965525

`∪[A322888(n+1), Δ[A322888(n)]]`
-/

namespace A041478.P9004403850244965525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322888 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A041478.P9004403850244965525

namespace A041478

/-- `∪[A322888(n+1), Δ[A322888(n)]]` -/
def P9004403850244965525.Spec : Prop :=
  ∀ n, (P9004403850244965525.a n : ℤ) = A041478 n

end A041478

/-!
# A041479: Denominators of continued fraction convergents to sqrt(255).

The programs for A041479, the canonical program `A041479.P2925435912667457627` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041479 has offset 0).

The definition of A041479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041479.P2925435912667457627

`32*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=31, a(3)=32`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041479

/-- `32*a(n-2)-a(n-4)` -/
def P2925435912667457627.Spec : Prop :=
  ∀ n, P2925435912667457627.a n = A041479 n

theorem P2925435912667457627.correct : P2925435912667457627.Spec := by
  intro n
  simp only [A041479]

end A041479

/-!
# A041480: Numerators of continued fraction convergents to sqrt(257).

The programs for A041480, the canonical program `A041480.P9004111715685717379` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041480 has offset 0).

The definition of A041480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041480.P9004111715685717379

`32*a(n-1)+a(n-2)` with `a(0)=16, a(1)=513`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041480

/-- `32*a(n-1)+a(n-2)` -/
def P9004111715685717379.Spec : Prop :=
  ∀ n, (P9004111715685717379.a n : ℤ) = A041480 n

theorem P9004111715685717379.correct : P9004111715685717379.Spec := by
  intro n
  simp only [A041480]

end A041480

/-! ## A041480.P1033263554775945580

`A041481(n+1)-16*A041481(n)`
-/

namespace A041480.P1033263554775945580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041481 (n + 1) - 16 * A041481 n

end

end A041480.P1033263554775945580

namespace A041480

/-- `A041481(n+1)-16*A041481(n)` -/
def P1033263554775945580.Spec : Prop :=
  ∀ n, P1033263554775945580.a n = A041480 n

end A041480

/-!
# A041481: Denominators of continued fraction convergents to sqrt(257).

The programs for A041481, the canonical program `A041481.P15774706121313836305` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041481 has offset 0).

The definition of A041481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041481.P15774706121313836305

`32*a(n-1)+a(n-2)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041481

/-- `32*a(n-1)+a(n-2)` -/
def P15774706121313836305.Spec : Prop :=
  ∀ n, (P15774706121313836305.a n : ℤ) = A041481 n

theorem P15774706121313836305.correct : P15774706121313836305.Spec := by
  intro n
  simp only [A041481]

end A041481

/-! ## A041481.P16249517336537698632

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=32`
-/

namespace A041481.P16249517336537698632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 32] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A041481.P16249517336537698632

namespace A041481

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P16249517336537698632.Spec : Prop :=
  ∀ n, P16249517336537698632.a n = (A041481 n : ℚ)

end A041481

/-! ## A041481.P16355982635471639063

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=32`
-/

namespace A041481.P16355982635471639063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 32] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A041481.P16355982635471639063

namespace A041481

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P16355982635471639063.Spec : Prop :=
  ∀ n, P16355982635471639063.a n = A041481 n

end A041481

/-!
# A041485: Denominators of continued fraction convergents to sqrt(259).

The programs for A041485, there is no canonical definition to state claims against.
-/

/-! ## A041485.P12787392354670572687

`A336466(7^n+1)+a(n-1)` with `a(0)=1, a(1)=10`
-/

namespace A041485.P12787392354670572687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A336466 (7 ^ n + 1) + a (n - 1)

end

end A041485.P12787392354670572687

/-!
# A041486: Numerators of continued fraction convergents to sqrt(260).

The programs for A041486, there is no canonical definition to state claims against.
-/

/-! ## A041486.P6000174531098664155

`gcd(2, n)*A041112(n)`
-/

namespace A041486.P6000174531098664155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041112 n

end

end A041486.P6000174531098664155

/-! ## A041486.P7957321317857844975

`ratio[A060546(n)]*A041112(n)`
-/

namespace A041486.P7957321317857844975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A041112 n : ℚ)

end

end A041486.P7957321317857844975

/-! ## A041486.P2621577395418770196

`A000034(n+1)*A041112(n)`
-/

namespace A041486.P2621577395418770196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041112 n

end

end A041486.P2621577395418770196

/-! ## A041486.P17334169414640849512

`A090305(n+1)/A000034(n)`
-/

namespace A041486.P17334169414640849512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090305 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041486.P17334169414640849512

/-! ## A041486.P14810567375671184727

`(3-A000034(n))*A041112(n)`
-/

namespace A041486.P14810567375671184727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041112 n

end

end A041486.P14810567375671184727

/-!
# A041487: Denominators of continued fraction convergents to sqrt(260).

The programs for A041487, there is no canonical definition to state claims against.
-/

/-! ## A041487.P3527975150782601107

`A041113(n)/gcd(2, n+1)`
-/

namespace A041487.P3527975150782601107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041113 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A041487.P3527975150782601107

/-! ## A041487.P4455007525898476290

`A041113(n)/A000034(n)`
-/

namespace A041487.P4455007525898476290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041113 n : ℚ) / (A000034 n : ℚ)

end

end A041487.P4455007525898476290

/-! ## A041487.P14490358212709831448

`A041113(n)/A014695(n²)`
-/

namespace A041487.P14490358212709831448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041113 n : ℚ) / (A014695 (n ^ 2) : ℚ)

end

end A041487.P14490358212709831448

/-! ## A041487.P11431149481381696678

`A041113(n)/Δ[A032766(n)]`
-/

namespace A041487.P11431149481381696678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041113 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041487.P11431149481381696678

/-! ## A041487.P15773849886895402687

`A041113(n)/(A000035(n)+1)`
-/

namespace A041487.P15773849886895402687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041113 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041487.P15773849886895402687

/-! ## A041487.P11216279500219980785

`A016116(n)/A016116(n+1)*A041113(n)`
-/

namespace A041487.P11216279500219980785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) / (A016116 (n + 1) : ℚ) * (A041113 n : ℚ)

end

end A041487.P11216279500219980785

/-!
# A041489: Denominators of continued fraction convergents to sqrt(261).

The programs for A041489, there is no canonical definition to state claims against.
-/

/-! ## A041489.P16242282562241595745

`or(comp[A214961(n)], A374939(n+2))`
-/

namespace A041489.P16242282562241595745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214961 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A374939 (n + 2))

end

end A041489.P16242282562241595745

/-!
# A041492: Numerators of continued fraction convergents to sqrt(263).

The programs for A041492, there is no canonical definition to state claims against.
-/

/-! ## A041492.P730017642368567785

`A090888(lt[A090888(n+4), A070812(n+3)])`
-/

namespace A041492.P730017642368567785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090888 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070812 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090888 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A041492.P730017642368567785

/-! ## A041492.P8820183763902632876

`A057427(A002110(n))*A090888(A052905(n+2))`
-/

namespace A041492.P8820183763902632876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A002110 n).toNat * A090888 (A052905 (n + 2)).toNat

end

end A041492.P8820183763902632876

/-!
# A041493: Denominators of continued fraction convergents to sqrt(263).

The programs for A041493, there is no canonical definition to state claims against.
-/

/-! ## A041493.P7247117161572255162

`or(A000285(n), A219905(A005132(n)))`
-/

namespace A041493.P7247117161572255162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000285 n) (A219905 (A005132 n).toNat)

end

end A041493.P7247117161572255162

/-! ## A041493.P17818691025321167030

`or(A000285(n), A219905(A219905(n+4)))`
-/

namespace A041493.P17818691025321167030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000285 n) (A219905 (A219905 (n + 4)).toNat)

end

end A041493.P17818691025321167030

/-! ## A041493.P16893057564615919051

`A000045(A123977(n+1)%(A123996(3*n+2)-2))-A000032(n)`
-/

namespace A041493.P16893057564615919051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A123977 (n + 1)) (A123996 (3 * n + 2) - 2)).toNat - A000032 n

end

end A041493.P16893057564615919051

/-!
# A041494: Numerators of continued fraction convergents to sqrt(264).

The programs for A041494, there is no canonical definition to state claims against.
-/

/-! ## A041494.P14073095208956107287

`gcd(2, n)*A041114(n)`
-/

namespace A041494.P14073095208956107287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041114 n

end

end A041494.P14073095208956107287

/-! ## A041494.P15198542285734190870

`ratio[A060546(n)]*A041114(n)`
-/

namespace A041494.P15198542285734190870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A041114 n : ℚ)

end

end A041494.P15198542285734190870

/-! ## A041494.P2614356165600988510

`A000034(n+1)*A041114(n)`
-/

namespace A041494.P2614356165600988510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041114 n

end

end A041494.P2614356165600988510

/-! ## A041494.P6093999560682132738

`A040001(n+2)*A041114(n)`
-/

namespace A041494.P6093999560682132738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041114 n

end

end A041494.P6093999560682132738

/-! ## A041494.P12534954081215550983

`2/A000034(n)*A041114(n)`
-/

namespace A041494.P12534954081215550983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041114 n : ℚ)

end

end A041494.P12534954081215550983

/-! ## A041494.P12715081101260500945

`(Δ[A110654(n)]+1)*A041114(n)`
-/

namespace A041494.P12715081101260500945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A041114 n

end

end A041494.P12715081101260500945

/-! ## A041494.P9294968147121298713

`A001222(A116570(n))*A041114(n)`
-/

namespace A041494.P9294968147121298713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A116570 n).toNat * A041114 n

end

end A041494.P9294968147121298713

/-! ## A041494.P6739633561098799326

`A041115(n+1)/A041495(n+1)*A041114(n)`
-/

namespace A041494.P6739633561098799326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041115 (n + 1) : ℚ) / (A041495 (n + 1) : ℚ) * (A041114 n : ℚ)

end

end A041494.P6739633561098799326

/-!
# A041495: Denominators of continued fraction convergents to sqrt(264).

The programs for A041495, the canonical program `A041495.P14440834958764098737` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041495 has offset 0).

The definition of A041495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041495.P14440834958764098737

`130*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=129, a(3)=520`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041495

/-- `130*a(n-2)-a(n-4)` -/
def P14440834958764098737.Spec : Prop :=
  ∀ n, P14440834958764098737.a n = A041495 n

theorem P14440834958764098737.correct : P14440834958764098737.Spec := by
  intro n
  simp only [A041495]

end A041495

/-! ## A041495.P4653593497785117025

`A041115(n)/A000034(n)`
-/

namespace A041495.P4653593497785117025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041115 n : ℚ) / (A000034 n : ℚ)

end

end A041495.P4653593497785117025

namespace A041495

/-- `A041115(n)/A000034(n)` -/
def P4653593497785117025.Spec : Prop :=
  ∀ n, P4653593497785117025.a n = (A041495 n : ℚ)

end A041495

/-! ## A041495.P10468204404990534601

`A041115(n)/(A000035(n)+1)`
-/

namespace A041495.P10468204404990534601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041115 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041495.P10468204404990534601

namespace A041495

/-- `A041115(n)/(A000035(n)+1)` -/
def P10468204404990534601.Spec : Prop :=
  ∀ n, P10468204404990534601.a n = (A041495 n : ℚ)

end A041495

/-! ## A041495.P15507022678781001123

`A041115(n)/A040001(n+1)`
-/

namespace A041495.P15507022678781001123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041115 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041495.P15507022678781001123

namespace A041495

/-- `A041115(n)/A040001(n+1)` -/
def P15507022678781001123.Spec : Prop :=
  ∀ n, P15507022678781001123.a n = (A041495 n : ℚ)

end A041495

/-! ## A041495.P1880088893948871691

`A041115(n)/A009191(n²+1)`
-/

namespace A041495.P1880088893948871691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041115 n : ℚ) / (A009191 (n ^ 2 + 1) : ℚ)

end

end A041495.P1880088893948871691

namespace A041495

/-- `A041115(n)/A009191(n²+1)` -/
def P1880088893948871691.Spec : Prop :=
  ∀ n, P1880088893948871691.a n = (A041495 n : ℚ)

end A041495

/-! ## A041495.P5385392971601581458

`A041115(n)/(Δ[A008619(n)]+1)`
-/

namespace A041495.P5385392971601581458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041115 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A041495.P5385392971601581458

namespace A041495

/-- `A041115(n)/(Δ[A008619(n)]+1)` -/
def P5385392971601581458.Spec : Prop :=
  ∀ n, P5385392971601581458.a n = (A041495 n : ℚ)

end A041495

/-! ## A041495.P17864568059662055843

`A041115(n)/Δ[A008619(A016789(n))]`
-/

namespace A041495.P17864568059662055843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016789 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041115 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041495.P17864568059662055843

namespace A041495

/-- `A041115(n)/Δ[A008619(A016789(n))]` -/
def P17864568059662055843.Spec : Prop :=
  ∀ n, P17864568059662055843.a n = (A041495 n : ℚ)

end A041495

/-! ## A041495.P10066442688496854966

`A041114(n+1)/A041494(n+1)*A041115(n)`
-/

namespace A041495.P10066442688496854966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041114 (n + 1) : ℚ) / (A041494 (n + 1) : ℚ) * (A041115 n : ℚ)

end

end A041495.P10066442688496854966

namespace A041495

/-- `A041114(n+1)/A041494(n+1)*A041115(n)` -/
def P10066442688496854966.Spec : Prop :=
  ∀ n, P10066442688496854966.a n = (A041495 n : ℚ)

end A041495

/-!
# A041499: Denominators of continued fraction convergents to sqrt(266).

The programs for A041499, there is no canonical definition to state claims against.
-/

/-! ## A041499.P5419778971005950561

`A083125(Δ[A083147(n+1)])+n`
-/

namespace A041499.P5419778971005950561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083125 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A041499.P5419778971005950561

