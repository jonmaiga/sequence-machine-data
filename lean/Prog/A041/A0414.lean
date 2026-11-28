import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021

/-!
# A041400: Numerators of continued fraction convergents to sqrt(215).

The programs for A041400, the canonical program `A041400.P10299048253687422891` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041400 has offset 0).

The definition of A041400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041400.P10299048253687422891

`ogf((14+15x+29x^2+44x^3+29x^4-15x^5+14x^6-x^7)/(1-88x^4+x^8))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041400

/-- `ogf((14+15x+29x^2+44x^3+29x^4-15x^5+14x^6-x^7)/(1-88x^4+x^8))` -/
def P10299048253687422891.Spec : Prop :=
  ∀ n, P10299048253687422891.a n = A041400 n

theorem P10299048253687422891.correct : P10299048253687422891.Spec := by
  intro n
  simp only [A041400]

end A041400

/-!
# A041401: Denominators of continued fraction convergents to sqrt(215).

The programs for A041401, the canonical program `A041401.P17432966003171759748` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041401 has offset 0).

The definition of A041401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041401.P17432966003171759748

`88*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=86, a(5)=89, a(6)=175, a(7)=264`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041401

/-- `88*a(n-4)-a(n-8)` -/
def P17432966003171759748.Spec : Prop :=
  ∀ n, P17432966003171759748.a n = A041401 n

theorem P17432966003171759748.correct : P17432966003171759748.Spec := by
  intro n
  simp only [A041401]

end A041401

/-! ## A041401.P1429446743727767749

`ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-88x^4+x^8))`
-/

namespace A041401.P1429446743727767749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 3, -2, 1, -1] [1, 0, 0, 0, -88, 0, 0, 0, 1] n

end

end A041401.P1429446743727767749

namespace A041401

/-- `ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-88x^4+x^8))` -/
def P1429446743727767749.Spec : Prop :=
  ∀ n, P1429446743727767749.a n = A041401 n

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

/-!
# A041402: Numerators of continued fraction convergents to sqrt(216).

The programs for A041402, the canonical program `A041402.P17696380719301014156` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041402 has offset 0).

The definition of A041402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041402.P17696380719301014156

`ogf((14+15x+44x^2+147x^3+338x^4+485x^5+338x^6-147x^7+44x^8-15x^9+14x^10-x^11)/(1-970x^6+x^12))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041402

/-- `ogf((14+15x+44x^2+147x^3+338x^4+485x^5+338x^6-147x^7+44x^8-15x^9+14x^10-x^11)/(1-970x^6+x^12))` -/
def P17696380719301014156.Spec : Prop :=
  ∀ n, P17696380719301014156.a n = A041402 n

theorem P17696380719301014156.correct : P17696380719301014156.Spec := by
  intro n
  simp only [A041402]

end A041402

/-! ## A041402.P17722321222576981380

`gcd(2, n)*A041092(n)`
-/

namespace A041402.P17722321222576981380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041092 n

end

end A041402.P17722321222576981380

namespace A041402

/-- `gcd(2, n)*A041092(n)` -/
def P17722321222576981380.Spec : Prop :=
  ∀ n, P17722321222576981380.a n = A041402 n

end A041402

/-! ## A041402.P5103409428887052423

`A000034(n+1)*A041092(n)`
-/

namespace A041402.P5103409428887052423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041092 n

end

end A041402.P5103409428887052423

namespace A041402

/-- `A000034(n+1)*A041092(n)` -/
def P5103409428887052423.Spec : Prop :=
  ∀ n, P5103409428887052423.a n = A041402 n

end A041402

/-! ## A041402.P16577067535381920957

`A040001(2+n)*A041092(n)`
-/

namespace A041402.P16577067535381920957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 + n) * A041092 n

end

end A041402.P16577067535381920957

namespace A041402

/-- `A040001(2+n)*A041092(n)` -/
def P16577067535381920957.Spec : Prop :=
  ∀ n, P16577067535381920957.a n = A041402 n

end A041402

/-! ## A041402.P14558733206380746579

`2/A000034(n)*A041092(n)`
-/

namespace A041402.P14558733206380746579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041092 n : ℚ)

end

end A041402.P14558733206380746579

namespace A041402

/-- `2/A000034(n)*A041092(n)` -/
def P14558733206380746579.Spec : Prop :=
  ∀ n, P14558733206380746579.a n = (A041402 n : ℚ)

end A041402

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

namespace A041402

/-- `A000032(Δ[A004526(n)])*A041092(n)` -/
def P14936049798841531726.Spec : Prop :=
  ∀ n, P14936049798841531726.a n = A041402 n

end A041402

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

namespace A041402

/-- `A041092(n)*A051699(Δ[A004526(n)])` -/
def P11328456226526785246.Spec : Prop :=
  ∀ n, P11328456226526785246.a n = A041402 n

end A041402

/-! ## A041402.P13668036474874294741

`A041092(n)*A087230(n²)`
-/

namespace A041402.P13668036474874294741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041092 n * A087230 (n ^ 2)

end

end A041402.P13668036474874294741

namespace A041402

/-- `A041092(n)*A087230(n²)` -/
def P13668036474874294741.Spec : Prop :=
  ∀ n, P13668036474874294741.a n = A041402 n

end A041402

/-!
# A041403: Denominators of continued fraction convergents to sqrt(216).

The programs for A041403, the canonical program `A041403.P11385881168454119545` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041403 has offset 0).

The definition of A041403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041403.P11385881168454119545

`ogf((1+x+3x^2+10x^3+23x^4+33x^5-23x^6+10x^7-3x^8+x^9-x^10)/(1-970x^6+x^12))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041403

/-- `ogf((1+x+3x^2+10x^3+23x^4+33x^5-23x^6+10x^7-3x^8+x^9-x^10)/(1-970x^6+x^12))` -/
def P11385881168454119545.Spec : Prop :=
  ∀ n, P11385881168454119545.a n = A041403 n

theorem P11385881168454119545.correct : P11385881168454119545.Spec := by
  intro n
  simp only [A041403]

end A041403

/-! ## A041403.P8160596451905459678

`A041093(n)/A000034(n)`
-/

namespace A041403.P8160596451905459678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A000034 n : ℚ)

end

end A041403.P8160596451905459678

namespace A041403

/-- `A041093(n)/A000034(n)` -/
def P8160596451905459678.Spec : Prop :=
  ∀ n, P8160596451905459678.a n = (A041403 n : ℚ)

end A041403

/-! ## A041403.P11788215347681566306

`A041093(n)/A010673(n)!`
-/

namespace A041403.P11788215347681566306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A041403.P11788215347681566306

namespace A041403

/-- `A041093(n)/A010673(n)!` -/
def P11788215347681566306.Spec : Prop :=
  ∀ n, P11788215347681566306.a n = (A041403 n : ℚ)

end A041403

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

namespace A041403

/-- `A041093(n)/Δ[A032766(n)]` -/
def P2833677785309304218.Spec : Prop :=
  ∀ n, P2833677785309304218.a n = (A041403 n : ℚ)

end A041403

/-! ## A041403.P8835913149931124410

`A041093(n)/(A000035(n)+1)`
-/

namespace A041403.P8835913149931124410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041403.P8835913149931124410

namespace A041403

/-- `A041093(n)/(A000035(n)+1)` -/
def P8835913149931124410.Spec : Prop :=
  ∀ n, P8835913149931124410.a n = (A041403 n : ℚ)

end A041403

/-! ## A041403.P5005900162453830838

`A041093(n)/A040001(n+1)`
-/

namespace A041403.P5005900162453830838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041403.P5005900162453830838

namespace A041403

/-- `A041093(n)/A040001(n+1)` -/
def P5005900162453830838.Spec : Prop :=
  ∀ n, P5005900162453830838.a n = (A041403 n : ℚ)

end A041403

/-! ## A041403.P4381786169618195318

`A041093(n)/A000079(n)%3`
-/

namespace A041403.P4381786169618195318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (Int.tmod (A000079 n) 3 : ℚ)

end

end A041403.P4381786169618195318

namespace A041403

/-- `A041093(n)/A000079(n)%3` -/
def P4381786169618195318.Spec : Prop :=
  ∀ n, P4381786169618195318.a n = (A041403 n : ℚ)

end A041403

/-! ## A041403.P16799717482396520491

`A041093(n)/gcd(2, A016861(n))`
-/

namespace A041403.P16799717482396520491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (Int.gcd 2 (A016861 n) : ℚ)

end

end A041403.P16799717482396520491

namespace A041403

/-- `A041093(n)/gcd(2, A016861(n))` -/
def P16799717482396520491.Spec : Prop :=
  ∀ n, P16799717482396520491.a n = (A041403 n : ℚ)

end A041403

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

namespace A041403

/-- `A041093(n)/Δ[A001651(n+1)]` -/
def P16620864746477141416.Spec : Prop :=
  ∀ n, P16620864746477141416.a n = (A041403 n : ℚ)

end A041403

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

namespace A041403

/-- `A041093(n)/(Δ[A004526(n)]+1)` -/
def P17168368349169265239.Spec : Prop :=
  ∀ n, P17168368349169265239.a n = (A041403 n : ℚ)

end A041403

/-! ## A041403.P12408439034499005682

`A041093(n)/A055396(A154266(n))`
-/

namespace A041403.P12408439034499005682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A055396 (A154266 n).toNat : ℚ)

end

end A041403.P12408439034499005682

namespace A041403

/-- `A041093(n)/A055396(A154266(n))` -/
def P12408439034499005682.Spec : Prop :=
  ∀ n, P12408439034499005682.a n = (A041403 n : ℚ)

end A041403

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

namespace A041403

/-- `A041093(n)/A041093(Δ[A004526(n)])` -/
def P6932084173453446669.Spec : Prop :=
  ∀ n, P6932084173453446669.a n = (A041403 n : ℚ)

end A041403

/-! ## A041403.P6727277163803241846

`A041093(n)/A318454(A020639(n+1))`
-/

namespace A041403.P6727277163803241846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A318454 (A020639 (n + 1)).toNat : ℚ)

end

end A041403.P6727277163803241846

namespace A041403

/-- `A041093(n)/A318454(A020639(n+1))` -/
def P6727277163803241846.Spec : Prop :=
  ∀ n, P6727277163803241846.a n = (A041403 n : ℚ)

end A041403

/-! ## A041403.P5179623693867020683

`A041093(n)/A318454(n²+1)`
-/

namespace A041403.P5179623693867020683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 n : ℚ) / (A318454 (n ^ 2 + 1) : ℚ)

end

end A041403.P5179623693867020683

namespace A041403

/-- `A041093(n)/A318454(n²+1)` -/
def P5179623693867020683.Spec : Prop :=
  ∀ n, P5179623693867020683.a n = (A041403 n : ℚ)

end A041403

/-!
# A041406: Numerators of continued fraction convergents to sqrt(218).

The programs for A041406, the canonical program `A041406.P12398268802512410184` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041406 has offset 0).

The definition of A041406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041406.P12398268802512410184

`ogf((14+15x+59x^2+192x^3+251x^4+192x^5-59x^6+15x^7-14x^8+x^9)/(1-502x^5-x^10))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041406

/-- `ogf((14+15x+59x^2+192x^3+251x^4+192x^5-59x^6+15x^7-14x^8+x^9)/(1-502x^5-x^10))` -/
def P12398268802512410184.Spec : Prop :=
  ∀ n, P12398268802512410184.a n = A041406 n

theorem P12398268802512410184.correct : P12398268802512410184.Spec := by
  intro n
  simp only [A041406]

end A041406

/-!
# A041407: Denominators of continued fraction convergents to sqrt(218).

The programs for A041407, the canonical program `A041407.P7141491336391729684` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041407 has offset 0).

The definition of A041407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041407.P7141491336391729684

`ogf((1+x+4x^2+13x^3+17x^4-13x^5+4x^6-x^7+x^8)/(1-502x^5-x^10))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041407

/-- `ogf((1+x+4x^2+13x^3+17x^4-13x^5+4x^6-x^7+x^8)/(1-502x^5-x^10))` -/
def P7141491336391729684.Spec : Prop :=
  ∀ n, P7141491336391729684.a n = A041407 n

theorem P7141491336391729684.correct : P7141491336391729684.Spec := by
  intro n
  simp only [A041407]

end A041407

/-!
# A041408: Numerators of continued fraction convergents to sqrt(219).

The programs for A041408, the canonical program `A041408.P4671800321605099711` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041408 has offset 0).

The definition of A041408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041408.P4671800321605099711

`ogf((14+15x+59x^2+74x^3+59x^4-15x^5+14x^6-x^7)/(1-148x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041408

/-- `ogf((14+15x+59x^2+74x^3+59x^4-15x^5+14x^6-x^7)/(1-148x^4+x^8))` -/
def P4671800321605099711.Spec : Prop :=
  ∀ n, P4671800321605099711.a n = A041408 n

theorem P4671800321605099711.correct : P4671800321605099711.Spec := by
  intro n
  simp only [A041408]

end A041408

/-!
# A041409: Denominators of continued fraction convergents to sqrt(219).

The programs for A041409, the canonical program `A041409.P15518734348747516297` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041409 has offset 0).

The definition of A041409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041409.P15518734348747516297

`148*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=144, a(5)=149, a(6)=591, a(7)=740`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041409

/-- `148*a(n-4)-a(n-8)` -/
def P15518734348747516297.Spec : Prop :=
  ∀ n, P15518734348747516297.a n = A041409 n

theorem P15518734348747516297.correct : P15518734348747516297.Spec := by
  intro n
  simp only [A041409]

end A041409

/-! ## A041409.P8970804707998180067

`ogf((1+x+4x^2+5x^3-4x^4+x^5-x^6)/(1-148x^4+x^8))`
-/

namespace A041409.P8970804707998180067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 4, 5, -4, 1, -1] [1, 0, 0, 0, -148, 0, 0, 0, 1] n

end

end A041409.P8970804707998180067

namespace A041409

/-- `ogf((1+x+4x^2+5x^3-4x^4+x^5-x^6)/(1-148x^4+x^8))` -/
def P8970804707998180067.Spec : Prop :=
  ∀ n, P8970804707998180067.a n = A041409 n

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

/-!
# A041410: Numerators of continued fraction convergents to sqrt(220).

The programs for A041410, the canonical program `A041410.P15798002396012531483` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041410 has offset 0).

The definition of A041410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041410.P15798002396012531483

`ogf((14+15x+74x^2+89x^3+74x^4-15x^5+14x^6-x^7)/(1-178x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041410

/-- `ogf((14+15x+74x^2+89x^3+74x^4-15x^5+14x^6-x^7)/(1-178x^4+x^8))` -/
def P15798002396012531483.Spec : Prop :=
  ∀ n, P15798002396012531483.a n = A041410 n

theorem P15798002396012531483.correct : P15798002396012531483.Spec := by
  intro n
  simp only [A041410]

end A041410

/-! ## A041410.P9809665032917021233

`gcd(2, n)*A041094(n)`
-/

namespace A041410.P9809665032917021233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041094 n

end

end A041410.P9809665032917021233

namespace A041410

/-- `gcd(2, n)*A041094(n)` -/
def P9809665032917021233.Spec : Prop :=
  ∀ n, P9809665032917021233.a n = A041410 n

end A041410

/-! ## A041410.P11520897194248558243

`lcm(A041094(n), A228826(n))`
-/

namespace A041410.P11520897194248558243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041094 n) (A228826 n)

end

end A041410.P11520897194248558243

namespace A041410

/-- `lcm(A041094(n), A228826(n))` -/
def P11520897194248558243.Spec : Prop :=
  ∀ n, (P11520897194248558243.a n : ℤ) = A041410 n

end A041410

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

namespace A041410

/-- `Δ[A007494(n)]*A041094(n)` -/
def P2405418707007540169.Spec : Prop :=
  ∀ n, P2405418707007540169.a n = A041410 n

end A041410

/-! ## A041410.P15786198218169462319

`A000034(n+1)*A041094(n)`
-/

namespace A041410.P15786198218169462319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041094 n

end

end A041410.P15786198218169462319

namespace A041410

/-- `A000034(n+1)*A041094(n)` -/
def P15786198218169462319.Spec : Prop :=
  ∀ n, P15786198218169462319.a n = A041410 n

end A041410

/-! ## A041410.P9641220669553436976

`2/A000034(n)*A041094(n)`
-/

namespace A041410.P9641220669553436976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041094 n : ℚ)

end

end A041410.P9641220669553436976

namespace A041410

/-- `2/A000034(n)*A041094(n)` -/
def P9641220669553436976.Spec : Prop :=
  ∀ n, P9641220669553436976.a n = (A041410 n : ℚ)

end A041410

/-! ## A041410.P17518885222339622498

`(A056594(n)²+1)*A041094(n)`
-/

namespace A041410.P17518885222339622498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 n ^ 2 + 1) * A041094 n

end

end A041410.P17518885222339622498

namespace A041410

/-- `(A056594(n)²+1)*A041094(n)` -/
def P17518885222339622498.Spec : Prop :=
  ∀ n, P17518885222339622498.a n = A041410 n

end A041410

/-! ## A041410.P6190479492881221749

`A000045(A020639(3*(n+1)))*A041094(n)`
-/

namespace A041410.P6190479492881221749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (3 * (n + 1))).toNat * A041094 n

end

end A041410.P6190479492881221749

namespace A041410

/-- `A000045(A020639(3*(n+1)))*A041094(n)` -/
def P6190479492881221749.Spec : Prop :=
  ∀ n, P6190479492881221749.a n = A041410 n

end A041410

/-! ## A041410.P4127545498638667793

`(A056594(n²)+1)*A041094(n)`
-/

namespace A041410.P4127545498638667793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 (n ^ 2) + 1) * A041094 n

end

end A041410.P4127545498638667793

namespace A041410

/-- `(A056594(n²)+1)*A041094(n)` -/
def P4127545498638667793.Spec : Prop :=
  ∀ n, P4127545498638667793.a n = A041410 n

end A041410

/-!
# A041411: Denominators of continued fraction convergents to sqrt(220).

The programs for A041411, the canonical program `A041411.P10623429144998823910` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041411 has offset 0).

The definition of A041411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041411.P10623429144998823910

`ogf((1+x+5x^2+6x^3-5x^4+x^5-x^6)/(1-178x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041411

/-- `ogf((1+x+5x^2+6x^3-5x^4+x^5-x^6)/(1-178x^4+x^8))` -/
def P10623429144998823910.Spec : Prop :=
  ∀ n, P10623429144998823910.a n = A041411 n

theorem P10623429144998823910.correct : P10623429144998823910.Spec := by
  intro n
  simp only [A041411]

end A041411

/-! ## A041411.P360096595237843391

`A041095(n)/A000034(n)`
-/

namespace A041411.P360096595237843391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A000034 n : ℚ)

end

end A041411.P360096595237843391

namespace A041411

/-- `A041095(n)/A000034(n)` -/
def P360096595237843391.Spec : Prop :=
  ∀ n, P360096595237843391.a n = (A041411 n : ℚ)

end A041411

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

namespace A041411

/-- `A041095(n)/Δ[A032766(n)]` -/
def P9833849483199357290.Spec : Prop :=
  ∀ n, P9833849483199357290.a n = (A041411 n : ℚ)

end A041411

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

namespace A041411

/-- `A041095(n)/ratio[A016116(n)]` -/
def P14534361435725830793.Spec : Prop :=
  ∀ n, P14534361435725830793.a n = (A041411 n : ℚ)

end A041411

/-! ## A041411.P5613823020243003376

`A041095(n)/A040001(n+1)`
-/

namespace A041411.P5613823020243003376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041411.P5613823020243003376

namespace A041411

/-- `A041095(n)/A040001(n+1)` -/
def P5613823020243003376.Spec : Prop :=
  ∀ n, P5613823020243003376.a n = (A041411 n : ℚ)

end A041411

/-! ## A041411.P3011090387779274061

`A041095(n)/A006519(A141310(n))`
-/

namespace A041411.P3011090387779274061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A006519 (A141310 n).toNat : ℚ)

end

end A041411.P3011090387779274061

namespace A041411

/-- `A041095(n)/A006519(A141310(n))` -/
def P3011090387779274061.Spec : Prop :=
  ∀ n, P3011090387779274061.a n = (A041411 n : ℚ)

end A041411

/-! ## A041411.P2035985010695981095

`A041095(n)/A020639(A266303(n))`
-/

namespace A041411.P2035985010695981095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A020639 (A266303 n).toNat : ℚ)

end

end A041411.P2035985010695981095

namespace A041411

/-- `A041095(n)/A020639(A266303(n))` -/
def P2035985010695981095.Spec : Prop :=
  ∀ n, P2035985010695981095.a n = (A041411 n : ℚ)

end A041411

/-! ## A041411.P4850376694024819375

`A041095(n)/A006530(A006519(n+1))`
-/

namespace A041411.P4850376694024819375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A006530 (A006519 (n + 1)).toNat : ℚ)

end

end A041411.P4850376694024819375

namespace A041411

/-- `A041095(n)/A006530(A006519(n+1))` -/
def P4850376694024819375.Spec : Prop :=
  ∀ n, P4850376694024819375.a n = (A041411 n : ℚ)

end A041411

/-! ## A041411.P8883010374577490406

`A041095(n)/A006519(A088835(n+1))`
-/

namespace A041411.P8883010374577490406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A006519 (A088835 (n + 1)).toNat : ℚ)

end

end A041411.P8883010374577490406

namespace A041411

/-- `A041095(n)/A006519(A088835(n+1))` -/
def P8883010374577490406.Spec : Prop :=
  ∀ n, P8883010374577490406.a n = (A041411 n : ℚ)

end A041411

/-! ## A041411.P12970981717507204970

`A041095(n)/A266303(A266303(n+1))`
-/

namespace A041411.P12970981717507204970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A266303 (A266303 (n + 1)).toNat : ℚ)

end

end A041411.P12970981717507204970

namespace A041411

/-- `A041095(n)/A266303(A266303(n+1))` -/
def P12970981717507204970.Spec : Prop :=
  ∀ n, P12970981717507204970.a n = (A041411 n : ℚ)

end A041411

/-! ## A041411.P8699466766635358985

`A041095(n)/A050873(A133263(n))`
-/

namespace A041411.P8699466766635358985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A050873 (A133263 n).toNat : ℚ)

end

end A041411.P8699466766635358985

namespace A041411

/-- `A041095(n)/A050873(A133263(n))` -/
def P8699466766635358985.Spec : Prop :=
  ∀ n, P8699466766635358985.a n = (A041411 n : ℚ)

end A041411

/-! ## A041411.P17823204262841021497

`A041095(n)/A006519(n²+1)`
-/

namespace A041411.P17823204262841021497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041095 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041411.P17823204262841021497

namespace A041411

/-- `A041095(n)/A006519(n²+1)` -/
def P17823204262841021497.Spec : Prop :=
  ∀ n, P17823204262841021497.a n = (A041411 n : ℚ)

end A041411

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

/-!
# A041414: Numerators of continued fraction convergents to sqrt(222).

The programs for A041414, the canonical program `A041414.P10685539511792293346` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041414 has offset 0).

The definition of A041414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041414.P10685539511792293346

`ogf((14+15x+134x^2+149x^3+134x^4-15x^5+14x^6-x^7)/(1-298x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041414

/-- `ogf((14+15x+134x^2+149x^3+134x^4-15x^5+14x^6-x^7)/(1-298x^4+x^8))` -/
def P10685539511792293346.Spec : Prop :=
  ∀ n, P10685539511792293346.a n = A041414 n

theorem P10685539511792293346.correct : P10685539511792293346.Spec := by
  intro n
  simp only [A041414]

end A041414

/-!
# A041415: Denominators of continued fraction convergents to sqrt(222).

The programs for A041415, the canonical program `A041415.P16366715974581146606` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041415 has offset 0).

The definition of A041415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041415.P16366715974581146606

`ogf((1+x+9x^2+10x^3-9x^4+x^5-x^6)/(1-298x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041415

/-- `ogf((1+x+9x^2+10x^3-9x^4+x^5-x^6)/(1-298x^4+x^8))` -/
def P16366715974581146606.Spec : Prop :=
  ∀ n, P16366715974581146606.a n = A041415 n

theorem P16366715974581146606.correct : P16366715974581146606.Spec := by
  intro n
  simp only [A041415]

end A041415

/-! ## A041415.P15168606008419883822

`A006370(A041753(n)+A041177(n))`
-/

namespace A041415.P15168606008419883822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A041753 n + A041177 n).toNat

end

end A041415.P15168606008419883822

namespace A041415

/-- `A006370(A041753(n)+A041177(n))` -/
def P15168606008419883822.Spec : Prop :=
  ∀ n, P15168606008419883822.a n = A041415 n

end A041415

/-!
# A041416: Numerators of continued fraction convergents to sqrt(223).

The programs for A041416, the canonical program `A041416.P4871694900154385035` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041416 has offset 0).

The definition of A041416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041416.P4871694900154385035

`ogf((14+15x+209x^2+224x^3+209x^4-15x^5+14x^6-x^7)/(1-448x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041416

/-- `ogf((14+15x+209x^2+224x^3+209x^4-15x^5+14x^6-x^7)/(1-448x^4+x^8))` -/
def P4871694900154385035.Spec : Prop :=
  ∀ n, P4871694900154385035.a n = A041416 n

theorem P4871694900154385035.correct : P4871694900154385035.Spec := by
  intro n
  simp only [A041416]

end A041416

/-!
# A041417: Denominators of continued fraction convergents to sqrt(223).

The programs for A041417, the canonical program `A041417.P10373714112339752981` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041417 has offset 0).

The definition of A041417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041417.P10373714112339752981

`ogf((1+x+14x^2+15x^3-14x^4+x^5-x^6)/(1-448x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041417

/-- `ogf((1+x+14x^2+15x^3-14x^4+x^5-x^6)/(1-448x^4+x^8))` -/
def P10373714112339752981.Spec : Prop :=
  ∀ n, P10373714112339752981.a n = A041417 n

theorem P10373714112339752981.correct : P10373714112339752981.Spec := by
  intro n
  simp only [A041417]

end A041417

/-!
# A041418: Numerators of continued fraction convergents to sqrt(224).

The programs for A041418, the canonical program `A041418.P8237782557487482127` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041418 has offset 0).

The definition of A041418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041418.P8237782557487482127

`ogf((14+15x+14x^2-x^3)/(1-30x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041418

/-- `ogf((14+15x+14x^2-x^3)/(1-30x^2+x^4))` -/
def P8237782557487482127.Spec : Prop :=
  ∀ n, P8237782557487482127.a n = A041418 n

theorem P8237782557487482127.correct : P8237782557487482127.Spec := by
  intro n
  simp only [A041418]

end A041418

/-! ## A041418.P14553745619238054148

`gcd(2, n)*A041096(n)`
-/

namespace A041418.P14553745619238054148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041096 n

end

end A041418.P14553745619238054148

namespace A041418

/-- `gcd(2, n)*A041096(n)` -/
def P14553745619238054148.Spec : Prop :=
  ∀ n, P14553745619238054148.a n = A041418 n

end A041418

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

namespace A041418

/-- `lcm(Δ[A052938(n)], A041096(n))` -/
def P4052700501221978025.Spec : Prop :=
  ∀ n, (P4052700501221978025.a n : ℤ) = A041418 n

end A041418

/-! ## A041418.P2081585217025915064

`A000034(n+1)*A041096(n)`
-/

namespace A041418.P2081585217025915064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041096 n

end

end A041418.P2081585217025915064

namespace A041418

/-- `A000034(n+1)*A041096(n)` -/
def P2081585217025915064.Spec : Prop :=
  ∀ n, P2081585217025915064.a n = A041418 n

end A041418

/-! ## A041418.P1052440880310215639

`A040001(n+2)*A041096(n)`
-/

namespace A041418.P1052440880310215639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041096 n

end

end A041418.P1052440880310215639

namespace A041418

/-- `A040001(n+2)*A041096(n)` -/
def P1052440880310215639.Spec : Prop :=
  ∀ n, P1052440880310215639.a n = A041418 n

end A041418

/-! ## A041418.P16374975643470695781

`A041096(n)*A134451(n+2)`
-/

namespace A041418.P16374975643470695781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041096 n * A134451 (n + 2)

end

end A041418.P16374975643470695781

namespace A041418

/-- `A041096(n)*A134451(n+2)` -/
def P16374975643470695781.Spec : Prop :=
  ∀ n, P16374975643470695781.a n = A041418 n

end A041418

/-! ## A041418.P5261511312045214933

`2/A000034(n)*A041096(n)`
-/

namespace A041418.P5261511312045214933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041096 n : ℚ)

end

end A041418.P5261511312045214933

namespace A041418

/-- `2/A000034(n)*A041096(n)` -/
def P5261511312045214933.Spec : Prop :=
  ∀ n, P5261511312045214933.a n = (A041418 n : ℚ)

end A041418

/-! ## A041418.P4756375588447188555

`A001511(A047589(n+1))*A041096(n)`
-/

namespace A041418.P4756375588447188555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A047589 (n + 1)).toNat * A041096 n

end

end A041418.P4756375588447188555

namespace A041418

/-- `A001511(A047589(n+1))*A041096(n)` -/
def P4756375588447188555.Spec : Prop :=
  ∀ n, P4756375588447188555.a n = A041418 n

end A041418

/-! ## A041418.P7995217043071163123

`A000045(A020639(3*(n+1)))*A041096(n)`
-/

namespace A041418.P7995217043071163123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (3 * (n + 1))).toNat * A041096 n

end

end A041418.P7995217043071163123

namespace A041418

/-- `A000045(A020639(3*(n+1)))*A041096(n)` -/
def P7995217043071163123.Spec : Prop :=
  ∀ n, P7995217043071163123.a n = A041418 n

end A041418

/-! ## A041418.P1943554639724058420

`A001511(n²+2)*A041096(n)`
-/

namespace A041418.P1943554639724058420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 2) * A041096 n

end

end A041418.P1943554639724058420

namespace A041418

/-- `A001511(n²+2)*A041096(n)` -/
def P1943554639724058420.Spec : Prop :=
  ∀ n, P1943554639724058420.a n = A041418 n

end A041418

/-!
# A041419: Denominators of continued fraction convergents to sqrt(224).

The programs for A041419, the canonical program `A041419.P3900832587034244933` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041419 has offset 0).

The definition of A041419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041419.P1691131847356760969

`ogf((1+x-x^2)/(1-30x^2+x^4))`
-/

namespace A041419.P1691131847356760969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -30, 0, 1] n

end

end A041419.P1691131847356760969

namespace A041419

/-- `ogf((1+x-x^2)/(1-30x^2+x^4))` -/
def P1691131847356760969.Spec : Prop :=
  ∀ n, P1691131847356760969.a n = A041419 n

end A041419

/-! ## A041419.P3900832587034244933

`30*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=29, a(3)=30`

The canonical program, it is in `Seq.B000.C009`.
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

The programs for A041420, the canonical program `A041420.P18062741328420841028` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041420 has offset 0).

The definition of A041420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041420.P6703991699734380668

`ogf((15+x)/(1-30x-x^2))`
-/

namespace A041420.P6703991699734380668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 1] [1, -30, -1] n

end

end A041420.P6703991699734380668

namespace A041420

/-- `ogf((15+x)/(1-30x-x^2))` -/
def P6703991699734380668.Spec : Prop :=
  ∀ n, P6703991699734380668.a n = A041420 n

end A041420

/-! ## A041420.P18062741328420841028

`30*a(n-1)+a(n-2)` with `a(0)=15, a(1)=451`

The canonical program, it is in `Seq.B000.C009`.
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

The programs for A041421, the canonical program `A041421.P13879902579617995261` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041421 has offset 0).

The definition of A041421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041421.P12858388531191372034

`ogf(1/(1-30x-x^2))`
-/

namespace A041421.P12858388531191372034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -30, -1] n

end

end A041421.P12858388531191372034

namespace A041421

/-- `ogf(1/(1-30x-x^2))` -/
def P12858388531191372034.Spec : Prop :=
  ∀ n, P12858388531191372034.a n = A041421 n

end A041421

/-! ## A041421.P13879902579617995261

`30*a(n-1)+a(n-2)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041421

/-- `30*a(n-1)+a(n-2)` -/
def P13879902579617995261.Spec : Prop :=
  ∀ n, (P13879902579617995261.a n : ℤ) = A041421 n

theorem P13879902579617995261.correct : P13879902579617995261.Spec := by
  intro n
  simp only [A041421]

end A041421

/-! ## A041421.P13434524650579412349

`(1+n%2)*A042747(n)`
-/

namespace A041421.P13434524650579412349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 + n % 2 : ℕ) : ℤ) * A042747 n

end

end A041421.P13434524650579412349

namespace A041421

/-- `(1+n%2)*A042747(n)` -/
def P13434524650579412349.Spec : Prop :=
  ∀ n, P13434524650579412349.a n = A041421 n

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
# A041422: Numerators of continued fraction convergents to sqrt(227).

The programs for A041422, the canonical program `A041422.P3335747120924115952` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041422 has offset 0).

The definition of A041422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041422.P3335747120924115952

`ogf((15+226x+15x^2-x^3)/(1-452x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041422

/-- `ogf((15+226x+15x^2-x^3)/(1-452x^2+x^4))` -/
def P3335747120924115952.Spec : Prop :=
  ∀ n, P3335747120924115952.a n = A041422 n

theorem P3335747120924115952.correct : P3335747120924115952.Spec := by
  intro n
  simp only [A041422]

end A041422

/-!
# A041423: Denominators of continued fraction convergents to sqrt(227).

The programs for A041423, the canonical program `A041423.P16685667375943489801` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041423 has offset 0).

The definition of A041423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041423.P16685667375943489801

`ogf((1+15x-x^2)/(1-452x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041423

/-- `ogf((1+15x-x^2)/(1-452x^2+x^4))` -/
def P16685667375943489801.Spec : Prop :=
  ∀ n, P16685667375943489801.a n = A041423 n

theorem P16685667375943489801.correct : P16685667375943489801.Spec := by
  intro n
  simp only [A041423]

end A041423

/-!
# A041424: Numerators of continued fraction convergents to sqrt(228).

The programs for A041424, the canonical program `A041424.P18076118130575919376` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041424 has offset 0).

The definition of A041424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041424.P18076118130575919376

`ogf((15+151x+15x^2-x^3)/(1-302x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041424

/-- `ogf((15+151x+15x^2-x^3)/(1-302x^2+x^4))` -/
def P18076118130575919376.Spec : Prop :=
  ∀ n, P18076118130575919376.a n = A041424 n

theorem P18076118130575919376.correct : P18076118130575919376.Spec := by
  intro n
  simp only [A041424]

end A041424

/-! ## A041424.P11083807528624416894

`A041098(2+n*3)`
-/

namespace A041424.P11083807528624416894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041098 (2 + n * 3)

end

end A041424.P11083807528624416894

namespace A041424

/-- `A041098(2+n*3)` -/
def P11083807528624416894.Spec : Prop :=
  ∀ n, P11083807528624416894.a n = A041424 n

end A041424

/-! ## A041424.P16851820521937365252

`A042762(n)/gcd(2, n)`
-/

namespace A041424.P16851820521937365252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042762 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041424.P16851820521937365252

namespace A041424

/-- `A042762(n)/gcd(2, n)` -/
def P16851820521937365252.Spec : Prop :=
  ∀ n, P16851820521937365252.a n = (A041424 n : ℚ)

end A041424

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

namespace A041424

/-- `A042762(n)/Δ[A007494(n)]` -/
def P13756853455120352873.Spec : Prop :=
  ∀ n, P13756853455120352873.a n = (A041424 n : ℚ)

end A041424

/-! ## A041424.P15147286844329602690

`A042762(n)/A000034(n+1)`
-/

namespace A041424.P15147286844329602690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042762 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041424.P15147286844329602690

namespace A041424

/-- `A042762(n)/A000034(n+1)` -/
def P15147286844329602690.Spec : Prop :=
  ∀ n, P15147286844329602690.a n = (A041424 n : ℚ)

end A041424

/-! ## A041424.P171276654031902783

`A000034(n)/2*A042762(n)`
-/

namespace A041424.P171276654031902783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042762 n : ℚ)

end

end A041424.P171276654031902783

namespace A041424

/-- `A000034(n)/2*A042762(n)` -/
def P171276654031902783.Spec : Prop :=
  ∀ n, P171276654031902783.a n = (A041424 n : ℚ)

end A041424

/-!
# A041425: Denominators of continued fraction convergents to sqrt(228).

The programs for A041425, the canonical program `A041425.P13591571119236176478` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041425 has offset 0).

The definition of A041425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041425.P13591571119236176478

`ogf((1+10x-x^2)/(1-302x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041425

/-- `ogf((1+10x-x^2)/(1-302x^2+x^4))` -/
def P13591571119236176478.Spec : Prop :=
  ∀ n, P13591571119236176478.a n = A041425 n

theorem P13591571119236176478.correct : P13591571119236176478.Spec := by
  intro n
  simp only [A041425]

end A041425

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

namespace A041425

/-- `∑[A041099(3*n)]` -/
def P5734145014655347918.Spec : Prop :=
  ∀ n, P5734145014655347918.a n = A041425 n

end A041425

/-! ## A041425.P8308221133061514813

`A041099(A016789(n))/2`
-/

namespace A041425.P8308221133061514813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041099 (A016789 n).toNat : ℚ) / 2

end

end A041425.P8308221133061514813

namespace A041425

/-- `A041099(A016789(n))/2` -/
def P8308221133061514813.Spec : Prop :=
  ∀ n, P8308221133061514813.a n = (A041425 n : ℚ)

end A041425

/-! ## A041425.P1808853085752602322

`A000034(n)*A042763(n)`
-/

namespace A041425.P1808853085752602322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042763 n

end

end A041425.P1808853085752602322

namespace A041425

/-- `A000034(n)*A042763(n)` -/
def P1808853085752602322.Spec : Prop :=
  ∀ n, P1808853085752602322.a n = A041425 n

end A041425

/-! ## A041425.P4400263519330099861

`sqrt(A010685(n))*A042763(n)`
-/

namespace A041425.P4400263519330099861
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010685 n : ℝ) * (A042763 n : ℝ)

end

end A041425.P4400263519330099861

namespace A041425

/-- `sqrt(A010685(n))*A042763(n)` -/
def P4400263519330099861.Spec : Prop :=
  ∀ n, P4400263519330099861.a n = (A041425 n : ℝ)

end A041425

/-! ## A041425.P11930938956078577888

`A010673(n)!*A042763(n)`
-/

namespace A041425.P11930938956078577888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010673 n).toNat : ℤ) * A042763 n

end

end A041425.P11930938956078577888

namespace A041425

/-- `A010673(n)!*A042763(n)` -/
def P11930938956078577888.Spec : Prop :=
  ∀ n, P11930938956078577888.a n = A041425 n

end A041425

/-! ## A041425.P11288097620259347596

`lcm(A006519(n+1), A042763(n))`
-/

namespace A041425.P11288097620259347596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A042763 n)

end

end A041425.P11288097620259347596

namespace A041425

/-- `lcm(A006519(n+1), A042763(n))` -/
def P11288097620259347596.Spec : Prop :=
  ∀ n, (P11288097620259347596.a n : ℤ) = A041425 n

end A041425

/-!
# A041428: Numerators of continued fraction convergents to sqrt(230).

The programs for A041428, the canonical program `A041428.P1622638234478473699` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041428 has offset 0).

The definition of A041428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041428.P1622638234478473699

`ogf((15+91x+15x^2-x^3)/(1-182x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041428

/-- `ogf((15+91x+15x^2-x^3)/(1-182x^2+x^4))` -/
def P1622638234478473699.Spec : Prop :=
  ∀ n, P1622638234478473699.a n = A041428 n

theorem P1622638234478473699.correct : P1622638234478473699.Spec := by
  intro n
  simp only [A041428]

end A041428

/-! ## A041428.P962831955607936130

`A042778(n)/gcd(2, n)`
-/

namespace A041428.P962831955607936130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042778 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041428.P962831955607936130

namespace A041428

/-- `A042778(n)/gcd(2, n)` -/
def P962831955607936130.Spec : Prop :=
  ∀ n, P962831955607936130.a n = (A041428 n : ℚ)

end A041428

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

namespace A041428

/-- `A042778(n)/Δ[A007494(n)]` -/
def P14582453389204573464.Spec : Prop :=
  ∀ n, P14582453389204573464.a n = (A041428 n : ℚ)

end A041428

/-! ## A041428.P4888428615550462071

`A042778(n)/A000034(n+1)`
-/

namespace A041428.P4888428615550462071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042778 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041428.P4888428615550462071

namespace A041428

/-- `A042778(n)/A000034(n+1)` -/
def P4888428615550462071.Spec : Prop :=
  ∀ n, P4888428615550462071.a n = (A041428 n : ℚ)

end A041428

/-! ## A041428.P16489153499237105066

`A042778(n)/(A059841(n)+1)`
-/

namespace A041428.P16489153499237105066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042778 n : ℚ) / (A059841 n + 1 : ℚ)

end

end A041428.P16489153499237105066

namespace A041428

/-- `A042778(n)/(A059841(n)+1)` -/
def P16489153499237105066.Spec : Prop :=
  ∀ n, P16489153499237105066.a n = (A041428 n : ℚ)

end A041428

/-! ## A041428.P16556305374230524478

`A000034(n)/2*A042778(n)`
-/

namespace A041428.P16556305374230524478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042778 n : ℚ)

end

end A041428.P16556305374230524478

namespace A041428

/-- `A000034(n)/2*A042778(n)` -/
def P16556305374230524478.Spec : Prop :=
  ∀ n, P16556305374230524478.a n = (A041428 n : ℚ)

end A041428

/-!
# A041429: Denominators of continued fraction convergents to sqrt(230).

The programs for A041429, the canonical program `A041429.P6901508832610064429` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041429 has offset 0).

The definition of A041429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041429.P6901508832610064429

`ogf((1+6x-x^2)/(1-182x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041429

/-- `ogf((1+6x-x^2)/(1-182x^2+x^4))` -/
def P6901508832610064429.Spec : Prop :=
  ∀ n, P6901508832610064429.a n = A041429 n

theorem P6901508832610064429.correct : P6901508832610064429.Spec := by
  intro n
  simp only [A041429]

end A041429

/-! ## A041429.P16274639553194642252

`A000034(n)*A042779(n)`
-/

namespace A041429.P16274639553194642252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042779 n

end

end A041429.P16274639553194642252

namespace A041429

/-- `A000034(n)*A042779(n)` -/
def P16274639553194642252.Spec : Prop :=
  ∀ n, P16274639553194642252.a n = A041429 n

end A041429

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

namespace A041429

/-- `∑[A165326(n)]*A042779(n)` -/
def P1438310990015757637.Spec : Prop :=
  ∀ n, P1438310990015757637.a n = A041429 n

end A041429

/-! ## A041429.P4309611292604930486

`A042779(n)*A084642(n+2)`
-/

namespace A041429.P4309611292604930486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042779 n * A084642 (n + 2)

end

end A041429.P4309611292604930486

namespace A041429

/-- `A042779(n)*A084642(n+2)` -/
def P4309611292604930486.Spec : Prop :=
  ∀ n, P4309611292604930486.a n = A041429 n

end A041429

/-! ## A041429.P12430387009747231884

`lcm(A042779(n), A328479(n+1))`
-/

namespace A041429.P12430387009747231884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A042779 n) (A328479 (n + 1))

end

end A041429.P12430387009747231884

namespace A041429

/-- `lcm(A042779(n), A328479(n+1))` -/
def P12430387009747231884.Spec : Prop :=
  ∀ n, (P12430387009747231884.a n : ℤ) = A041429 n

end A041429

/-! ## A041429.P2385540154180861660

`A001511(n²+1)*A042779(n)`
-/

namespace A041429.P2385540154180861660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 1) * A042779 n

end

end A041429.P2385540154180861660

namespace A041429

/-- `A001511(n²+1)*A042779(n)` -/
def P2385540154180861660.Spec : Prop :=
  ∀ n, P2385540154180861660.a n = A041429 n

end A041429

/-! ## A041429.P5725213024913264107

`A006519(n²+1)*A042779(n)`
-/

namespace A041429.P5725213024913264107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A042779 n

end

end A041429.P5725213024913264107

namespace A041429

/-- `A006519(n²+1)*A042779(n)` -/
def P5725213024913264107.Spec : Prop :=
  ∀ n, P5725213024913264107.a n = A041429 n

end A041429

/-! ## A041429.P4420712359122050859

`A014963(A006519(n+1))*A042779(n)`
-/

namespace A041429.P4420712359122050859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006519 (n + 1)).toNat * A042779 n

end

end A041429.P4420712359122050859

namespace A041429

/-- `A014963(A006519(n+1))*A042779(n)` -/
def P4420712359122050859.Spec : Prop :=
  ∀ n, P4420712359122050859.a n = A041429 n

end A041429

/-! ## A041429.P8200448345561746702

`A042779(n)*A309890(A004793(n+1))`
-/

namespace A041429.P8200448345561746702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042779 n * A309890 (A004793 (n + 1)).toNat

end

end A041429.P8200448345561746702

namespace A041429

/-- `A042779(n)*A309890(A004793(n+1))` -/
def P8200448345561746702.Spec : Prop :=
  ∀ n, P8200448345561746702.a n = A041429 n

end A041429

/-!
# A041430: Numerators of continued fraction convergents to sqrt(231).

The programs for A041430, the canonical program `A041430.P1782977973169194638` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041430 has offset 0).

The definition of A041430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041430.P1782977973169194638

`ogf((15+76x+15x^2-x^3)/(1-152x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041430

/-- `ogf((15+76x+15x^2-x^3)/(1-152x^2+x^4))` -/
def P1782977973169194638.Spec : Prop :=
  ∀ n, P1782977973169194638.a n = A041430 n

theorem P1782977973169194638.correct : P1782977973169194638.Spec := by
  intro n
  simp only [A041430]

end A041430

/-!
# A041431: Denominators of continued fraction convergents to sqrt(231).

The programs for A041431, the canonical program `A041431.P2027833437948310289` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041431 has offset 0).

The definition of A041431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041431.P16597541560780979226

`ogf((1+5x-x^2)/(1-152x^2+x^4))`
-/

namespace A041431.P16597541560780979226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -1] [1, 0, -152, 0, 1] n

end

end A041431.P16597541560780979226

namespace A041431

/-- `ogf((1+5x-x^2)/(1-152x^2+x^4))` -/
def P16597541560780979226.Spec : Prop :=
  ∀ n, P16597541560780979226.a n = A041431 n

end A041431

/-! ## A041431.P2027833437948310289

`152*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=151, a(3)=760`

The canonical program, it is in `Seq.B000.C009`.
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
# A041438: Numerators of continued fraction convergents to sqrt(235).

The programs for A041438, the canonical program `A041438.P6517690476659819892` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041438 has offset 0).

The definition of A041438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041438.P6517690476659819892

`ogf((15+46x+15x^2-x^3)/(1-92x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041438

/-- `ogf((15+46x+15x^2-x^3)/(1-92x^2+x^4))` -/
def P6517690476659819892.Spec : Prop :=
  ∀ n, P6517690476659819892.a n = A041438 n

theorem P6517690476659819892.correct : P6517690476659819892.Spec := by
  intro n
  simp only [A041438]

end A041438

/-!
# A041439: Denominators of continued fraction convergents to sqrt(235).

The programs for A041439, the canonical program `A041439.P10419158337699377257` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041439 has offset 0).

The definition of A041439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041439.P3316104984362306600

`ogf((1+3x-x^2)/(1-92x^2+x^4))`
-/

namespace A041439.P3316104984362306600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, 0, -92, 0, 1] n

end

end A041439.P3316104984362306600

namespace A041439

/-- `ogf((1+3x-x^2)/(1-92x^2+x^4))` -/
def P3316104984362306600.Spec : Prop :=
  ∀ n, P3316104984362306600.a n = A041439 n

end A041439

/-! ## A041439.P10419158337699377257

`92*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=91, a(3)=276`

The canonical program, it is in `Seq.B000.C009`.
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

/-!
# A041448: Numerators of continued fraction convergents to sqrt(240).

The programs for A041448, the canonical program `A041448.P15061804610161447109` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041448 has offset 0).

The definition of A041448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041448.P15061804610161447109

`ogf((15+31x+15x^2-x^3)/(1-62x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041448

/-- `ogf((15+31x+15x^2-x^3)/(1-62x^2+x^4))` -/
def P15061804610161447109.Spec : Prop :=
  ∀ n, P15061804610161447109.a n = A041448 n

theorem P15061804610161447109.correct : P15061804610161447109.Spec := by
  intro n
  simp only [A041448]

end A041448

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

namespace A041448

/-- `A042858(n)/Δ[A007494(n)]` -/
def P1177834288551448583.Spec : Prop :=
  ∀ n, P1177834288551448583.a n = (A041448 n : ℚ)

end A041448

/-! ## A041448.P2605878094175784221

`A042858(n)/A000034(n+1)`
-/

namespace A041448.P2605878094175784221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042858 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041448.P2605878094175784221

namespace A041448

/-- `A042858(n)/A000034(n+1)` -/
def P2605878094175784221.Spec : Prop :=
  ∀ n, P2605878094175784221.a n = (A041448 n : ℚ)

end A041448

/-! ## A041448.P12988895265939343070

`A042858(n)/A040001(n+2)`
-/

namespace A041448.P12988895265939343070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042858 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041448.P12988895265939343070

namespace A041448

/-- `A042858(n)/A040001(n+2)` -/
def P12988895265939343070.Spec : Prop :=
  ∀ n, P12988895265939343070.a n = (A041448 n : ℚ)

end A041448

/-! ## A041448.P14885835179994693498

`A000034(n)/2*A042858(n)`
-/

namespace A041448.P14885835179994693498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042858 n : ℚ)

end

end A041448.P14885835179994693498

namespace A041448

/-- `A000034(n)/2*A042858(n)` -/
def P14885835179994693498.Spec : Prop :=
  ∀ n, P14885835179994693498.a n = (A041448 n : ℚ)

end A041448

/-! ## A041448.P7836987095974789027

`A042858(n)/A266614(A317440(n+1))`
-/

namespace A041448.P7836987095974789027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042858 n : ℚ) / (A266614 (A317440 (n + 1)).toNat : ℚ)

end

end A041448.P7836987095974789027

namespace A041448

/-- `A042858(n)/A266614(A317440(n+1))` -/
def P7836987095974789027.Spec : Prop :=
  ∀ n, P7836987095974789027.a n = (A041448 n : ℚ)

end A041448

/-! ## A041448.P5258517579188499514

`A042858(n)/A001511(A020639(n+2))`
-/

namespace A041448.P5258517579188499514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042858 n : ℚ) / (A001511 (A020639 (n + 2)).toNat : ℚ)

end

end A041448.P5258517579188499514

namespace A041448

/-- `A042858(n)/A001511(A020639(n+2))` -/
def P5258517579188499514.Spec : Prop :=
  ∀ n, P5258517579188499514.a n = (A041448 n : ℚ)

end A041448

/-! ## A041448.P4496911664424955891

`A042858(n)/A001511(n²+2)`
-/

namespace A041448.P4496911664424955891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042858 n : ℚ) / (A001511 (n ^ 2 + 2) : ℚ)

end

end A041448.P4496911664424955891

namespace A041448

/-- `A042858(n)/A001511(n²+2)` -/
def P4496911664424955891.Spec : Prop :=
  ∀ n, P4496911664424955891.a n = (A041448 n : ℚ)

end A041448

/-!
# A041449: Denominators of continued fraction convergents to sqrt(240).

The programs for A041449, the canonical program `A041449.P12210422637638911024` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041449 has offset 0).

The definition of A041449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041449.P6119568353090441448

`ogf((1+2x-x^2)/(1-62x^2+x^4))`
-/

namespace A041449.P6119568353090441448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -62, 0, 1] n

end

end A041449.P6119568353090441448

namespace A041449

/-- `ogf((1+2x-x^2)/(1-62x^2+x^4))` -/
def P6119568353090441448.Spec : Prop :=
  ∀ n, P6119568353090441448.a n = A041449 n

end A041449

/-! ## A041449.P12210422637638911024

`62*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=61, a(3)=124`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041449

/-- `62*a(n-2)-a(n-4)` -/
def P12210422637638911024.Spec : Prop :=
  ∀ n, P12210422637638911024.a n = A041449 n

theorem P12210422637638911024.correct : P12210422637638911024.Spec := by
  intro n
  simp only [A041449]

end A041449

/-! ## A041449.P9092356146518973897

`(or(1, n+1)-n)*A042859(n)`
-/

namespace A041449.P9092356146518973897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 1) : ℤ) - (n : ℤ)) * A042859 n

end

end A041449.P9092356146518973897

namespace A041449

/-- `(or(1, n+1)-n)*A042859(n)` -/
def P9092356146518973897.Spec : Prop :=
  ∀ n, P9092356146518973897.a n = A041449 n

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

/-!
# A041455: Denominators of continued fraction convergents to sqrt(243).

The programs for A041455, there is no canonical definition to state claims against.
-/

/-! ## A041455.P16311043529148746205

`A353242(A041073(n))`
-/

namespace A041455.P16311043529148746205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353242 (A041073 n).toNat

end

end A041455.P16311043529148746205

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

/-! ## A041456.P3210534181322603815

`∩[A022105(n), A167703(n+1)]`
-/

namespace A041456.P3210534181322603815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A041456.P3210534181322603815

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

/-! ## A041457.P4584739009512802453

`A100882(lt[A000010(n+1), A182733(n+1)])`
-/

namespace A041457.P4584739009512802453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100882 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A041457.P4584739009512802453

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

/-!
# A041464: Numerators of continued fraction convergents to sqrt(248).

The programs for A041464, the canonical program `A041464.P8075414937990553294` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041464 has offset 0).

The definition of A041464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041464.P8075414937990553294

`ogf((15+16x+47x^2+63x^3+47x^4-16x^5+15x^6-x^7)/(1-126x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041464

/-- `ogf((15+16x+47x^2+63x^3+47x^4-16x^5+15x^6-x^7)/(1-126x^4+x^8))` -/
def P8075414937990553294.Spec : Prop :=
  ∀ n, P8075414937990553294.a n = A041464 n

theorem P8075414937990553294.correct : P8075414937990553294.Spec := by
  intro n
  simp only [A041464]

end A041464

/-!
# A041465: Denominators of continued fraction convergents to sqrt(248).

The programs for A041465, the canonical program `A041465.P14264061000374031653` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041465 has offset 0).

The definition of A041465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041465.P14264061000374031653

`126*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=123, a(5)=127, a(6)=377, a(7)=504`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041465

/-- `126*a(n-4)-a(n-8)` -/
def P14264061000374031653.Spec : Prop :=
  ∀ n, P14264061000374031653.a n = A041465 n

theorem P14264061000374031653.correct : P14264061000374031653.Spec := by
  intro n
  simp only [A041465]

end A041465

/-! ## A041465.P9358265535791498238

`ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-126x^4+x^8))`
-/

namespace A041465.P9358265535791498238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 4, -3, 1, -1] [1, 0, 0, 0, -126, 0, 0, 0, 1] n

end

end A041465.P9358265535791498238

namespace A041465

/-- `ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-126x^4+x^8))` -/
def P9358265535791498238.Spec : Prop :=
  ∀ n, P9358265535791498238.a n = A041465 n

end A041465

/-! ## A041465.P8480682921759749958

`A005897(92*a(n-2))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=123, a(5)=127, a(6)=377, a(7)=504`
-/

namespace A041465.P8480682921759749958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 123, 127, 377, 504] fun n a =>
  A005897 (92 * a (n - 2)).toNat

end

end A041465.P8480682921759749958

namespace A041465

/-- `A005897(92*a(n-2))` -/
def P8480682921759749958.Spec : Prop :=
  ∀ n, P8480682921759749958.a n = A041465 n

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

/-!
# A041472: Numerators of continued fraction convergents to sqrt(252).

The programs for A041472, the canonical program `A041472.P9264905360067401112` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041472 has offset 0).

The definition of A041472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041472.P9264905360067401112

`ogf((15+16x+111x^2+127x^3+111x^4-16x^5+15x^6-x^7)/(1-254x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041472

/-- `ogf((15+16x+111x^2+127x^3+111x^4-16x^5+15x^6-x^7)/(1-254x^4+x^8))` -/
def P9264905360067401112.Spec : Prop :=
  ∀ n, P9264905360067401112.a n = A041472 n

theorem P9264905360067401112.correct : P9264905360067401112.Spec := by
  intro n
  simp only [A041472]

end A041472

/-! ## A041472.P6632824585610884459

`A041044(n)*A176040(n)`
-/

namespace A041472.P6632824585610884459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041044 n * A176040 n

end

end A041472.P6632824585610884459

namespace A041472

/-- `A041044(n)*A176040(n)` -/
def P6632824585610884459.Spec : Prop :=
  ∀ n, P6632824585610884459.a n = A041472 n

end A041472

/-! ## A041472.P7805323637131427604

`lcm(A041044(n), A112030(n))`
-/

namespace A041472.P7805323637131427604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041044 n) (A112030 n)

end

end A041472.P7805323637131427604

namespace A041472

/-- `lcm(A041044(n), A112030(n))` -/
def P7805323637131427604.Spec : Prop :=
  ∀ n, (P7805323637131427604.a n : ℤ) = A041472 n

end A041472

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

namespace A041472

/-- `Δ[A014601(n)]*A041044(n)` -/
def P10764106723032658146.Spec : Prop :=
  ∀ n, P10764106723032658146.a n = A041472 n

end A041472

/-! ## A041472.P17075145907895374386

`gcd(3, A041045(n+1))*A041044(n)`
-/

namespace A041472.P17075145907895374386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A041045 (n + 1)) : ℤ) * A041044 n

end

end A041472.P17075145907895374386

namespace A041472

/-- `gcd(3, A041045(n+1))*A041044(n)` -/
def P17075145907895374386.Spec : Prop :=
  ∀ n, P17075145907895374386.a n = A041472 n

end A041472

/-! ## A041472.P2095935256262616867

`A003324(A017305(n))*A041044(n)`
-/

namespace A041472.P2095935256262616867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A017305 n).toNat * A041044 n

end

end A041472.P2095935256262616867

namespace A041472

/-- `A003324(A017305(n))*A041044(n)` -/
def P2095935256262616867.Spec : Prop :=
  ∀ n, P2095935256262616867.a n = A041472 n

end A041472

/-! ## A041472.P8865904446640111273

`A041044(n)*A112030(n²)`
-/

namespace A041472.P8865904446640111273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041044 n * A112030 (n ^ 2)

end

end A041472.P8865904446640111273

namespace A041472

/-- `A041044(n)*A112030(n²)` -/
def P8865904446640111273.Spec : Prop :=
  ∀ n, P8865904446640111273.a n = A041472 n

end A041472

/-!
# A041473: Denominators of continued fraction convergents to sqrt(252).

The programs for A041473, the canonical program `A041473.P17087818268559922236` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041473 has offset 0).

The definition of A041473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041473.P17087818268559922236

`ogf((1+x+7x^2+8x^3-7x^4+x^5-x^6)/(1-254x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041473

/-- `ogf((1+x+7x^2+8x^3-7x^4+x^5-x^6)/(1-254x^4+x^8))` -/
def P17087818268559922236.Spec : Prop :=
  ∀ n, P17087818268559922236.a n = A041473 n

theorem P17087818268559922236.correct : P17087818268559922236.Spec := by
  intro n
  simp only [A041473]

end A041473

/-! ## A041473.P10623827147808834418

`lcm(3, A041045(n))/3`
-/

namespace A041473.P10623827147808834418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A041045 n) : ℚ) / 3

end

end A041473.P10623827147808834418

namespace A041473

/-- `lcm(3, A041045(n))/3` -/
def P10623827147808834418.Spec : Prop :=
  ∀ n, P10623827147808834418.a n = (A041473 n : ℚ)

end A041473

/-! ## A041473.P3110624271188130952

`A041045(n)/A010684(n)`
-/

namespace A041473.P3110624271188130952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041045 n : ℚ) / (A010684 n : ℚ)

end

end A041473.P3110624271188130952

namespace A041473

/-- `A041045(n)/A010684(n)` -/
def P3110624271188130952.Spec : Prop :=
  ∀ n, P3110624271188130952.a n = (A041473 n : ℚ)

end A041473

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

namespace A041473

/-- `A041045(n)/Δ[A042948(n)]` -/
def P10764027740969910493.Spec : Prop :=
  ∀ n, P10764027740969910493.a n = (A041473 n : ℚ)

end A041473

/-! ## A041473.P17240972246369289886

`A041045(n)/A099545(2*n+1)`
-/

namespace A041473.P17240972246369289886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041045 n : ℚ) / (A099545 (2 * n + 1) : ℚ)

end

end A041473.P17240972246369289886

namespace A041473

/-- `A041045(n)/A099545(2*n+1)` -/
def P17240972246369289886.Spec : Prop :=
  ∀ n, P17240972246369289886.a n = (A041473 n : ℚ)

end A041473

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

namespace A041473

/-- `A041045(n)/A041045(Δ[A008619(n)])` -/
def P13923939968539174269.Spec : Prop :=
  ∀ n, P13923939968539174269.a n = (A041473 n : ℚ)

end A041473

/-! ## A041473.P9168788018010945985

`1/A099545(A016969(n))*A041045(n)`
-/

namespace A041473.P9168788018010945985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A099545 (A016969 n).toNat : ℚ) * (A041045 n : ℚ)

end

end A041473.P9168788018010945985

namespace A041473

/-- `1/A099545(A016969(n))*A041045(n)` -/
def P9168788018010945985.Spec : Prop :=
  ∀ n, P9168788018010945985.a n = (A041473 n : ℚ)

end A041473

/-!
# A041476: Numerators of continued fraction convergents to sqrt(254).

The programs for A041476, the canonical program `A041476.P6733921093853630762` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041476 has offset 0).

The definition of A041476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041476.P6733921093853630762

`ogf((15+16x+239x^2+255x^3+239x^4-16x^5+15x^6-x^7)/(1-510x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041476

/-- `ogf((15+16x+239x^2+255x^3+239x^4-16x^5+15x^6-x^7)/(1-510x^4+x^8))` -/
def P6733921093853630762.Spec : Prop :=
  ∀ n, P6733921093853630762.a n = A041476 n

theorem P6733921093853630762.correct : P6733921093853630762.Spec := by
  intro n
  simp only [A041476]

end A041476

/-!
# A041477: Denominators of continued fraction convergents to sqrt(254).

The programs for A041477, the canonical program `A041477.P5585359810057735737` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041477 has offset 0).

The definition of A041477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041477.P5585359810057735737

`ogf((1+x+15x^2+16x^3-15x^4+x^5-x^6)/(1-510x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041477

/-- `ogf((1+x+15x^2+16x^3-15x^4+x^5-x^6)/(1-510x^4+x^8))` -/
def P5585359810057735737.Spec : Prop :=
  ∀ n, P5585359810057735737.a n = A041477 n

theorem P5585359810057735737.correct : P5585359810057735737.Spec := by
  intro n
  simp only [A041477]

end A041477

/-!
# A041478: Numerators of continued fraction convergents to sqrt(255).

The programs for A041478, the canonical program `A041478.P1179460211020322223` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041478 has offset 0).

The definition of A041478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041478.P6258762527293670414

`ogf((15+16x+15x^2-x^3)/(1-32x^2+x^4))`
-/

namespace A041478.P6258762527293670414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 16, 15, -1] [1, 0, -32, 0, 1] n

end

end A041478.P6258762527293670414

namespace A041478

/-- `ogf((15+16x+15x^2-x^3)/(1-32x^2+x^4))` -/
def P6258762527293670414.Spec : Prop :=
  ∀ n, P6258762527293670414.a n = A041478 n

end A041478

/-! ## A041478.P1179460211020322223

`32*a(n-2)-a(n-4)` with `a(0)=15, a(1)=16, a(2)=495, a(3)=511`

The canonical program, it is in `Seq.B000.C009`.
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

The programs for A041479, the canonical program `A041479.P2925435912667457627` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041479 has offset 0).

The definition of A041479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041479.P5986693588348193068

`ogf((1+x-x^2)/(1-32x^2+x^4))`
-/

namespace A041479.P5986693588348193068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -32, 0, 1] n

end

end A041479.P5986693588348193068

namespace A041479

/-- `ogf((1+x-x^2)/(1-32x^2+x^4))` -/
def P5986693588348193068.Spec : Prop :=
  ∀ n, P5986693588348193068.a n = A041479 n

end A041479

/-! ## A041479.P2925435912667457627

`32*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=31, a(3)=32`

The canonical program, it is in `Seq.B000.C009`.
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

The programs for A041480, the canonical program `A041480.P9004111715685717379` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041480 has offset 0).

The definition of A041480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041480.P742163301087604712

`ogf((16+x)/(1-32x-x^2))`
-/

namespace A041480.P742163301087604712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 1] [1, -32, -1] n

end

end A041480.P742163301087604712

namespace A041480

/-- `ogf((16+x)/(1-32x-x^2))` -/
def P742163301087604712.Spec : Prop :=
  ∀ n, P742163301087604712.a n = A041480 n

end A041480

/-! ## A041480.P9004111715685717379

`32*a(n-1)+a(n-2)` with `a(0)=16, a(1)=513`

The canonical program, it is in `Seq.B000.C009`.
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

The programs for A041481, the canonical program `A041481.P15774706121313836305` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041481 has offset 0).

The definition of A041481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041481.P5874618411300380873

`ogf(1/(1-32x-x^2))`
-/

namespace A041481.P5874618411300380873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -32, -1] n

end

end A041481.P5874618411300380873

namespace A041481

/-- `ogf(1/(1-32x-x^2))` -/
def P5874618411300380873.Spec : Prop :=
  ∀ n, P5874618411300380873.a n = A041481 n

end A041481

/-! ## A041481.P15774706121313836305

`32*a(n-1)+a(n-2)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C009`.
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
# A041482: Numerators of continued fraction convergents to sqrt(258).

The programs for A041482, the canonical program `A041482.P3853164236718822807` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041482 has offset 0).

The definition of A041482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041482.P3853164236718822807

`ogf((16+257x+16x^2-x^3)/(1-514x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041482

/-- `ogf((16+257x+16x^2-x^3)/(1-514x^2+x^4))` -/
def P3853164236718822807.Spec : Prop :=
  ∀ n, P3853164236718822807.a n = A041482 n

theorem P3853164236718822807.correct : P3853164236718822807.Spec := by
  intro n
  simp only [A041482]

end A041482

/-!
# A041483: Denominators of continued fraction convergents to sqrt(258).

The programs for A041483, the canonical program `A041483.P9978855197741268548` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041483 has offset 0).

The definition of A041483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041483.P9978855197741268548

`ogf((1+16x-x^2)/(1-514x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041483

/-- `ogf((1+16x-x^2)/(1-514x^2+x^4))` -/
def P9978855197741268548.Spec : Prop :=
  ∀ n, P9978855197741268548.a n = A041483 n

theorem P9978855197741268548.correct : P9978855197741268548.Spec := by
  intro n
  simp only [A041483]

end A041483

/-!
# A041486: Numerators of continued fraction convergents to sqrt(260).

The programs for A041486, the canonical program `A041486.P2004875329500029528` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041486 has offset 0).

The definition of A041486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041486.P2004875329500029528

`ogf((16+129x+16x^2-x^3)/(1-258x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041486

/-- `ogf((16+129x+16x^2-x^3)/(1-258x^2+x^4))` -/
def P2004875329500029528.Spec : Prop :=
  ∀ n, P2004875329500029528.a n = A041486 n

theorem P2004875329500029528.correct : P2004875329500029528.Spec := by
  intro n
  simp only [A041486]

end A041486

/-! ## A041486.P6000174531098664155

`gcd(2, n)*A041112(n)`
-/

namespace A041486.P6000174531098664155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041112 n

end

end A041486.P6000174531098664155

namespace A041486

/-- `gcd(2, n)*A041112(n)` -/
def P6000174531098664155.Spec : Prop :=
  ∀ n, P6000174531098664155.a n = A041486 n

end A041486

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

namespace A041486

/-- `ratio[A060546(n)]*A041112(n)` -/
def P7957321317857844975.Spec : Prop :=
  ∀ n, P7957321317857844975.a n = (A041486 n : ℚ)

end A041486

/-! ## A041486.P2371590821796585755

`A000034(1+n)*A041112(n)`
-/

namespace A041486.P2371590821796585755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (1 + n) * A041112 n

end

end A041486.P2371590821796585755

namespace A041486

/-- `A000034(1+n)*A041112(n)` -/
def P2371590821796585755.Spec : Prop :=
  ∀ n, P2371590821796585755.a n = A041486 n

end A041486

/-! ## A041486.P17334169414640849512

`A090305(n+1)/A000034(n)`
-/

namespace A041486.P17334169414640849512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090305 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041486.P17334169414640849512

namespace A041486

/-- `A090305(n+1)/A000034(n)` -/
def P17334169414640849512.Spec : Prop :=
  ∀ n, P17334169414640849512.a n = (A041486 n : ℚ)

end A041486

/-! ## A041486.P14810567375671184727

`(3-A000034(n))*A041112(n)`
-/

namespace A041486.P14810567375671184727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041112 n

end

end A041486.P14810567375671184727

namespace A041486

/-- `(3-A000034(n))*A041112(n)` -/
def P14810567375671184727.Spec : Prop :=
  ∀ n, P14810567375671184727.a n = A041486 n

end A041486

/-!
# A041487: Denominators of continued fraction convergents to sqrt(260).

The programs for A041487, the canonical program `A041487.P13768263578995308418` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041487 has offset 0).

The definition of A041487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041487.P13768263578995308418

`ogf((1+8x-x^2)/(1-258x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041487

/-- `ogf((1+8x-x^2)/(1-258x^2+x^4))` -/
def P13768263578995308418.Spec : Prop :=
  ∀ n, P13768263578995308418.a n = A041487 n

theorem P13768263578995308418.correct : P13768263578995308418.Spec := by
  intro n
  simp only [A041487]

end A041487

/-! ## A041487.P3527975150782601107

`A041113(n)/gcd(2, n+1)`
-/

namespace A041487.P3527975150782601107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041113 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A041487.P3527975150782601107

namespace A041487

/-- `A041113(n)/gcd(2, n+1)` -/
def P3527975150782601107.Spec : Prop :=
  ∀ n, P3527975150782601107.a n = (A041487 n : ℚ)

end A041487

/-! ## A041487.P4455007525898476290

`A041113(n)/A000034(n)`
-/

namespace A041487.P4455007525898476290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041113 n : ℚ) / (A000034 n : ℚ)

end

end A041487.P4455007525898476290

namespace A041487

/-- `A041113(n)/A000034(n)` -/
def P4455007525898476290.Spec : Prop :=
  ∀ n, P4455007525898476290.a n = (A041487 n : ℚ)

end A041487

/-! ## A041487.P14490358212709831448

`A041113(n)/A014695(n²)`
-/

namespace A041487.P14490358212709831448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041113 n : ℚ) / (A014695 (n ^ 2) : ℚ)

end

end A041487.P14490358212709831448

namespace A041487

/-- `A041113(n)/A014695(n²)` -/
def P14490358212709831448.Spec : Prop :=
  ∀ n, P14490358212709831448.a n = (A041487 n : ℚ)

end A041487

/-! ## A041487.P17960400523082215001

`A041113(n)/A010673(n)!`
-/

namespace A041487.P17960400523082215001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041113 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A041487.P17960400523082215001

namespace A041487

/-- `A041113(n)/A010673(n)!` -/
def P17960400523082215001.Spec : Prop :=
  ∀ n, P17960400523082215001.a n = (A041487 n : ℚ)

end A041487

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

namespace A041487

/-- `A041113(n)/Δ[A032766(n)]` -/
def P11431149481381696678.Spec : Prop :=
  ∀ n, P11431149481381696678.a n = (A041487 n : ℚ)

end A041487

/-! ## A041487.P15773849886895402687

`A041113(n)/(A000035(n)+1)`
-/

namespace A041487.P15773849886895402687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041113 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041487.P15773849886895402687

namespace A041487

/-- `A041113(n)/(A000035(n)+1)` -/
def P15773849886895402687.Spec : Prop :=
  ∀ n, P15773849886895402687.a n = (A041487 n : ℚ)

end A041487

/-! ## A041487.P11216279500219980785

`A016116(n)/A016116(n+1)*A041113(n)`
-/

namespace A041487.P11216279500219980785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) / (A016116 (n + 1) : ℚ) * (A041113 n : ℚ)

end

end A041487.P11216279500219980785

namespace A041487

/-- `A016116(n)/A016116(n+1)*A041113(n)` -/
def P11216279500219980785.Spec : Prop :=
  ∀ n, P11216279500219980785.a n = (A041487 n : ℚ)

end A041487

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

/-!
# A041494: Numerators of continued fraction convergents to sqrt(264).

The programs for A041494, the canonical program `A041494.P17327335274612610127` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041494 has offset 0).

The definition of A041494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041494.P17327335274612610127

`ogf((16+65x+16x^2-x^3)/(1-130x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041494

/-- `ogf((16+65x+16x^2-x^3)/(1-130x^2+x^4))` -/
def P17327335274612610127.Spec : Prop :=
  ∀ n, P17327335274612610127.a n = A041494 n

theorem P17327335274612610127.correct : P17327335274612610127.Spec := by
  intro n
  simp only [A041494]

end A041494

/-! ## A041494.P14073095208956107287

`gcd(2, n)*A041114(n)`
-/

namespace A041494.P14073095208956107287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041114 n

end

end A041494.P14073095208956107287

namespace A041494

/-- `gcd(2, n)*A041114(n)` -/
def P14073095208956107287.Spec : Prop :=
  ∀ n, P14073095208956107287.a n = A041494 n

end A041494

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

namespace A041494

/-- `ratio[A060546(n)]*A041114(n)` -/
def P15198542285734190870.Spec : Prop :=
  ∀ n, P15198542285734190870.a n = (A041494 n : ℚ)

end A041494

/-! ## A041494.P3860902601041745825

`A000034(1+n)*A041114(n)`
-/

namespace A041494.P3860902601041745825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (1 + n) * A041114 n

end

end A041494.P3860902601041745825

namespace A041494

/-- `A000034(1+n)*A041114(n)` -/
def P3860902601041745825.Spec : Prop :=
  ∀ n, P3860902601041745825.a n = A041494 n

end A041494

/-! ## A041494.P6093999560682132738

`A040001(n+2)*A041114(n)`
-/

namespace A041494.P6093999560682132738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041114 n

end

end A041494.P6093999560682132738

namespace A041494

/-- `A040001(n+2)*A041114(n)` -/
def P6093999560682132738.Spec : Prop :=
  ∀ n, P6093999560682132738.a n = A041494 n

end A041494

/-! ## A041494.P12534954081215550983

`2/A000034(n)*A041114(n)`
-/

namespace A041494.P12534954081215550983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041114 n : ℚ)

end

end A041494.P12534954081215550983

namespace A041494

/-- `2/A000034(n)*A041114(n)` -/
def P12534954081215550983.Spec : Prop :=
  ∀ n, P12534954081215550983.a n = (A041494 n : ℚ)

end A041494

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

namespace A041494

/-- `(Δ[A110654(n)]+1)*A041114(n)` -/
def P12715081101260500945.Spec : Prop :=
  ∀ n, P12715081101260500945.a n = A041494 n

end A041494

/-! ## A041494.P9294968147121298713

`A001222(A116570(n))*A041114(n)`
-/

namespace A041494.P9294968147121298713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A116570 n).toNat * A041114 n

end

end A041494.P9294968147121298713

namespace A041494

/-- `A001222(A116570(n))*A041114(n)` -/
def P9294968147121298713.Spec : Prop :=
  ∀ n, P9294968147121298713.a n = A041494 n

end A041494

/-! ## A041494.P6739633561098799326

`A041115(n+1)/A041495(n+1)*A041114(n)`
-/

namespace A041494.P6739633561098799326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041115 (n + 1) : ℚ) / (A041495 (n + 1) : ℚ) * (A041114 n : ℚ)

end

end A041494.P6739633561098799326

namespace A041494

/-- `A041115(n+1)/A041495(n+1)*A041114(n)` -/
def P6739633561098799326.Spec : Prop :=
  ∀ n, P6739633561098799326.a n = (A041494 n : ℚ)

end A041494

/-!
# A041495: Denominators of continued fraction convergents to sqrt(264).

The programs for A041495, the canonical program `A041495.P14440834958764098737` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041495 has offset 0).

The definition of A041495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041495.P7043059797540168385

`ogf((1+4x-x^2)/(1-130x^2+x^4))`
-/

namespace A041495.P7043059797540168385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1] [1, 0, -130, 0, 1] n

end

end A041495.P7043059797540168385

namespace A041495

/-- `ogf((1+4x-x^2)/(1-130x^2+x^4))` -/
def P7043059797540168385.Spec : Prop :=
  ∀ n, P7043059797540168385.a n = A041495 n

end A041495

/-! ## A041495.P14440834958764098737

`130*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=129, a(3)=520`

The canonical program, it is in `Seq.B000.C009`.
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

