import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C004
import Seq.B004.C003
import Seq.B005.C000
import Seq.B007.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A042504: Numerators of continued fraction convergents to sqrt(780).

The programs for A042504, the canonical program `A042504.P15838418774272004729` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042504 has offset 0).

The definition of A042504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042504.P15838418774272004729

`ogf((27+28x+363x^2+391x^3+363x^4-28x^5+27x^6-x^7)/(1-782x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042504

/-- `ogf((27+28x+363x^2+391x^3+363x^4-28x^5+27x^6-x^7)/(1-782x^4+x^8))` -/
def P15838418774272004729.Spec : Prop :=
  ∀ n, P15838418774272004729.a n = A042504 n

theorem P15838418774272004729.correct : P15838418774272004729.Spec := by
  intro n
  simp only [A042504]

end A042504

/-!
# A042505: Denominators of continued fraction convergents to sqrt(780).

The programs for A042505, the canonical program `A042505.P10904875202848583017` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042505 has offset 0).

The definition of A042505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042505.P10904875202848583017

`ogf((1+x+13x^2+14x^3-13x^4+x^5-x^6)/(1-782x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042505

/-- `ogf((1+x+13x^2+14x^3-13x^4+x^5-x^6)/(1-782x^4+x^8))` -/
def P10904875202848583017.Spec : Prop :=
  ∀ n, P10904875202848583017.a n = A042505 n

theorem P10904875202848583017.correct : P10904875202848583017.Spec := by
  intro n
  simp only [A042505]

end A042505

/-!
# A042509: Denominators of continued fraction convergents to sqrt(782).

The programs for A042509, there is no canonical definition to state claims against.
-/

/-! ## A042509.P2286042690101439586

`A004525(A042511(n))`
-/

namespace A042509.P2286042690101439586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042511 n).toNat

end

end A042509.P2286042690101439586

/-!
# A042510: Numerators of continued fraction convergents to sqrt(783).

The programs for A042510, the canonical program `A042510.P13889652349619763437` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042510 has offset 0).

The definition of A042510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042510.P13889652349619763437

`ogf((27+28x+27x^2-x^3)/(1-56x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042510

/-- `ogf((27+28x+27x^2-x^3)/(1-56x^2+x^4))` -/
def P13889652349619763437.Spec : Prop :=
  ∀ n, P13889652349619763437.a n = A042510 n

theorem P13889652349619763437.correct : P13889652349619763437.Spec := by
  intro n
  simp only [A042510]

end A042510

/-! ## A042510.P5396368259242314567

`Δ[A014601(n)]*A041154(n)`
-/

namespace A042510.P5396368259242314567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041154 n

end

end A042510.P5396368259242314567

namespace A042510

/-- `Δ[A014601(n)]*A041154(n)` -/
def P5396368259242314567.Spec : Prop :=
  ∀ n, P5396368259242314567.a n = A042510 n

end A042510

/-! ## A042510.P17600543486672621803

`A010684(1+n)*A041154(n)`
-/

namespace A042510.P17600543486672621803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (1 + n) * A041154 n

end

end A042510.P17600543486672621803

namespace A042510

/-- `A010684(1+n)*A041154(n)` -/
def P17600543486672621803.Spec : Prop :=
  ∀ n, P17600543486672621803.a n = A042510 n

end A042510

/-! ## A042510.P8715608189972333926

`(4-A010684(n))*A041154(n)`
-/

namespace A042510.P8715608189972333926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A010684 n) * A041154 n

end

end A042510.P8715608189972333926

namespace A042510

/-- `(4-A010684(n))*A041154(n)` -/
def P8715608189972333926.Spec : Prop :=
  ∀ n, P8715608189972333926.a n = A042510 n

end A042510

/-! ## A042510.P1998353712296035576

`gcd(3, A006190(n))*A041154(n)`
-/

namespace A042510.P1998353712296035576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A006190 n) : ℤ) * A041154 n

end

end A042510.P1998353712296035576

namespace A042510

/-- `gcd(3, A006190(n))*A041154(n)` -/
def P1998353712296035576.Spec : Prop :=
  ∀ n, P1998353712296035576.a n = A042510 n

end A042510

/-! ## A042510.P2210320752577224907

`A041154(n)*A276391(n²+2)`
-/

namespace A042510.P2210320752577224907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041154 n * A276391 (n ^ 2 + 2)

end

end A042510.P2210320752577224907

namespace A042510

/-- `A041154(n)*A276391(n²+2)` -/
def P2210320752577224907.Spec : Prop :=
  ∀ n, P2210320752577224907.a n = A042510 n

end A042510

/-!
# A042511: Denominators of continued fraction convergents to sqrt(783).

The programs for A042511, the canonical program `A042511.P4233992975454410829` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042511 has offset 0).

The definition of A042511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042511.P4233992975454410829

`ogf((1+x-x^2)/(1-56x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042511

/-- `ogf((1+x-x^2)/(1-56x^2+x^4))` -/
def P4233992975454410829.Spec : Prop :=
  ∀ n, P4233992975454410829.a n = A042511 n

theorem P4233992975454410829.correct : P4233992975454410829.Spec := by
  intro n
  simp only [A042511]

end A042511

/-! ## A042511.P613052358327875848

`A041155(n)/A010684(n)`
-/

namespace A042511.P613052358327875848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (A010684 n : ℚ)

end

end A042511.P613052358327875848

namespace A042511

/-- `A041155(n)/A010684(n)` -/
def P613052358327875848.Spec : Prop :=
  ∀ n, P613052358327875848.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P10777084107603428337

`A041155(n)/Δ[A042948(n)]`
-/

namespace A042511.P10777084107603428337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042511.P10777084107603428337

namespace A042511

/-- `A041155(n)/Δ[A042948(n)]` -/
def P10777084107603428337.Spec : Prop :=
  ∀ n, P10777084107603428337.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P1537112945202551874

`A041155(n)/Δ[A338064(n+1)]`
-/

namespace A042511.P1537112945202551874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338064 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042511.P1537112945202551874

namespace A042511

/-- `A041155(n)/Δ[A338064(n+1)]` -/
def P1537112945202551874.Spec : Prop :=
  ∀ n, P1537112945202551874.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P6495577647138218137

`A041155(n)/A010873(2*n+1)`
-/

namespace A042511.P6495577647138218137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (A010873 (2 * n + 1) : ℚ)

end

end A042511.P6495577647138218137

namespace A042511

/-- `A041155(n)/A010873(2*n+1)` -/
def P6495577647138218137.Spec : Prop :=
  ∀ n, P6495577647138218137.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P10678642586105680978

`A041155(n)/(and(2, A005843(n))+1)`
-/

namespace A042511.P10678642586105680978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (Int.land 2 (A005843 n) + 1 : ℚ)

end

end A042511.P10678642586105680978

namespace A042511

/-- `A041155(n)/(and(2, A005843(n))+1)` -/
def P10678642586105680978.Spec : Prop :=
  ∀ n, P10678642586105680978.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P6313549074895018047

`A041155(n)/(Δ[A047241(n+1)]-1)`
-/

namespace A042511.P6313549074895018047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (f1 (n + 1) - f1 n - 1 : ℚ)

end

end A042511.P6313549074895018047

namespace A042511

/-- `A041155(n)/(Δ[A047241(n+1)]-1)` -/
def P6313549074895018047.Spec : Prop :=
  ∀ n, P6313549074895018047.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P165047539908376237

`A041155(n)/A276391(A098871(n))`
-/

namespace A042511.P165047539908376237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (A276391 (A098871 n).toNat : ℚ)

end

end A042511.P165047539908376237

namespace A042511

/-- `A041155(n)/A276391(A098871(n))` -/
def P165047539908376237.Spec : Prop :=
  ∀ n, P165047539908376237.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P5564030769156394667

`A041155(n)/A041155(Δ[A008619(n)])`
-/

namespace A042511.P5564030769156394667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (A041155 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042511.P5564030769156394667

namespace A042511

/-- `A041155(n)/A041155(Δ[A008619(n)])` -/
def P5564030769156394667.Spec : Prop :=
  ∀ n, P5564030769156394667.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P6768094036397189332

`A041155(n)/A016279(n)%4`
-/

namespace A042511.P6768094036397189332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (Int.tmod (A016279 n) 4 : ℚ)

end

end A042511.P6768094036397189332

namespace A042511

/-- `A041155(n)/A016279(n)%4` -/
def P6768094036397189332.Spec : Prop :=
  ∀ n, P6768094036397189332.a n = (A042511 n : ℚ)

end A042511

/-!
# A042512: Numerators of continued fraction convergents to sqrt(785).

The programs for A042512, the canonical program `A042512.P6111859540188846764` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042512 has offset 0).

The definition of A042512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042512.P6111859540188846764

`ogf((28+x)/(1-56x-x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042512

/-- `ogf((28+x)/(1-56x-x^2))` -/
def P6111859540188846764.Spec : Prop :=
  ∀ n, P6111859540188846764.a n = A042512 n

theorem P6111859540188846764.correct : P6111859540188846764.Spec := by
  intro n
  simp only [A042512]

end A042512

/-!
# A042513: Denominators of continued fraction convergents to sqrt(785).

The programs for A042513, the canonical program `A042513.P7842400077651823684` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042513 has offset 0).

The definition of A042513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042513.P5935538848261413888

`ogf(1/(1-56x-x^2))`
-/

namespace A042513.P5935538848261413888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -56, -1] n

end

end A042513.P5935538848261413888

namespace A042513

/-- `ogf(1/(1-56x-x^2))` -/
def P5935538848261413888.Spec : Prop :=
  ∀ n, P5935538848261413888.a n = A042513 n

end A042513

/-! ## A042513.P7842400077651823684

`56*a(n-1)+a(n-2)` with `a(0)=1, a(1)=56`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042513

/-- `56*a(n-1)+a(n-2)` -/
def P7842400077651823684.Spec : Prop :=
  ∀ n, (P7842400077651823684.a n : ℤ) = A042513 n

theorem P7842400077651823684.correct : P7842400077651823684.Spec := by
  intro n
  simp only [A042513]

end A042513

/-! ## A042513.P13168015503100246079

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=56`
-/

namespace A042513.P13168015503100246079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 56] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042513.P13168015503100246079

namespace A042513

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P13168015503100246079.Spec : Prop :=
  ∀ n, P13168015503100246079.a n = (A042513 n : ℚ)

end A042513

/-! ## A042513.P17607715906239817368

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=56`
-/

namespace A042513.P17607715906239817368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 56] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042513.P17607715906239817368

namespace A042513

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P17607715906239817368.Spec : Prop :=
  ∀ n, P17607715906239817368.a n = A042513 n

end A042513

/-!
# A042518: Numerators of continued fraction convergents to sqrt(788).

The programs for A042518, the canonical program `A042518.P5148271728148541641` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042518 has offset 0).

The definition of A042518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042518.P5148271728148541641

`ogf((28+393x+28x^2-x^3)/(1-786x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042518

/-- `ogf((28+393x+28x^2-x^3)/(1-786x^2+x^4))` -/
def P5148271728148541641.Spec : Prop :=
  ∀ n, P5148271728148541641.a n = A042518 n

theorem P5148271728148541641.correct : P5148271728148541641.Spec := by
  intro n
  simp only [A042518]

end A042518

/-! ## A042518.P2257520541371331989

`gcd(2, n)*A041364(n)`
-/

namespace A042518.P2257520541371331989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041364 n

end

end A042518.P2257520541371331989

namespace A042518

/-- `gcd(2, n)*A041364(n)` -/
def P2257520541371331989.Spec : Prop :=
  ∀ n, P2257520541371331989.a n = A042518 n

end A042518

/-! ## A042518.P11866824912651141734

`A000034(1+n)*A041364(n)`
-/

namespace A042518.P11866824912651141734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (1 + n) * A041364 n

end

end A042518.P11866824912651141734

namespace A042518

/-- `A000034(1+n)*A041364(n)` -/
def P11866824912651141734.Spec : Prop :=
  ∀ n, P11866824912651141734.a n = A042518 n

end A042518

/-! ## A042518.P8835613734175626872

`A134451(n+2)*A041364(n)`
-/

namespace A042518.P8835613734175626872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (n + 2) * A041364 n

end

end A042518.P8835613734175626872

namespace A042518

/-- `A134451(n+2)*A041364(n)` -/
def P8835613734175626872.Spec : Prop :=
  ∀ n, P8835613734175626872.a n = A042518 n

end A042518

/-! ## A042518.P6800549274426449092

`(3-A000034(n))*A041364(n)`
-/

namespace A042518.P6800549274426449092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041364 n

end

end A042518.P6800549274426449092

namespace A042518

/-- `(3-A000034(n))*A041364(n)` -/
def P6800549274426449092.Spec : Prop :=
  ∀ n, P6800549274426449092.a n = A042518 n

end A042518

/-! ## A042518.P915679559853426794

`A014695((n+1)²)*A041364(n)`
-/

namespace A042518.P915679559853426794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 ((n + 1) ^ 2) * A041364 n

end

end A042518.P915679559853426794

namespace A042518

/-- `A014695((n+1)²)*A041364(n)` -/
def P915679559853426794.Spec : Prop :=
  ∀ n, P915679559853426794.a n = A042518 n

end A042518

/-! ## A042518.P14912561406085683056

`Δ[A001651(n+2)]*A041364(n)`
-/

namespace A042518.P14912561406085683056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041364 n

end

end A042518.P14912561406085683056

namespace A042518

/-- `Δ[A001651(n+2)]*A041364(n)` -/
def P14912561406085683056.Spec : Prop :=
  ∀ n, P14912561406085683056.a n = A042518 n

end A042518

/-! ## A042518.P14378745316419719005

`(2-char[A099375(n)])*A041364(n)`
-/

namespace A042518.P14378745316419719005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A041364 n

end

end A042518.P14378745316419719005

namespace A042518

/-- `(2-char[A099375(n)])*A041364(n)` -/
def P14378745316419719005.Spec : Prop :=
  ∀ n, P14378745316419719005.a n = A042518 n

end A042518

/-! ## A042518.P1350819314361302417

`A010150(A005918(n))*A041364(n)`
-/

namespace A042518.P1350819314361302417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010150 (A005918 n).toNat * A041364 n

end

end A042518.P1350819314361302417

namespace A042518

/-- `A010150(A005918(n))*A041364(n)` -/
def P1350819314361302417.Spec : Prop :=
  ∀ n, P1350819314361302417.a n = A042518 n

end A042518

/-! ## A042518.P13316119392607040803

`A010150(A010000(n))*A041364(n)`
-/

namespace A042518.P13316119392607040803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010150 (A010000 n).toNat * A041364 n

end

end A042518.P13316119392607040803

namespace A042518

/-- `A010150(A010000(n))*A041364(n)` -/
def P13316119392607040803.Spec : Prop :=
  ∀ n, P13316119392607040803.a n = A042518 n

end A042518

/-!
# A042519: Denominators of continued fraction convergents to sqrt(788).

The programs for A042519, the canonical program `A042519.P1949552566778527829` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042519 has offset 0).

The definition of A042519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042519.P1949552566778527829

`ogf((1+14x-x^2)/(1-786x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042519

/-- `ogf((1+14x-x^2)/(1-786x^2+x^4))` -/
def P1949552566778527829.Spec : Prop :=
  ∀ n, P1949552566778527829.a n = A042519 n

theorem P1949552566778527829.correct : P1949552566778527829.Spec := by
  intro n
  simp only [A042519]

end A042519

/-! ## A042519.P5301636627426607244

`A041365(n)/A000034(n)`
-/

namespace A042519.P5301636627426607244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041365 n : ℚ) / (A000034 n : ℚ)

end

end A042519.P5301636627426607244

namespace A042519

/-- `A041365(n)/A000034(n)` -/
def P5301636627426607244.Spec : Prop :=
  ∀ n, P5301636627426607244.a n = (A042519 n : ℚ)

end A042519

/-! ## A042519.P9635890577664679922

`A041365(n)/A014695(n²)`
-/

namespace A042519.P9635890577664679922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041365 n : ℚ) / (A014695 (n ^ 2) : ℚ)

end

end A042519.P9635890577664679922

namespace A042519

/-- `A041365(n)/A014695(n²)` -/
def P9635890577664679922.Spec : Prop :=
  ∀ n, P9635890577664679922.a n = (A042519 n : ℚ)

end A042519

/-! ## A042519.P10458609703602370343

`A041365(n)/A040001(n+1)`
-/

namespace A042519.P10458609703602370343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041365 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A042519.P10458609703602370343

namespace A042519

/-- `A041365(n)/A040001(n+1)` -/
def P10458609703602370343.Spec : Prop :=
  ∀ n, P10458609703602370343.a n = (A042519 n : ℚ)

end A042519

/-! ## A042519.P8726536377202565155

`A041365(n)/A130658(2*n)`
-/

namespace A042519.P8726536377202565155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041365 n : ℚ) / (A130658 (2 * n) : ℚ)

end

end A042519.P8726536377202565155

namespace A042519

/-- `A041365(n)/A130658(2*n)` -/
def P8726536377202565155.Spec : Prop :=
  ∀ n, P8726536377202565155.a n = (A042519 n : ℚ)

end A042519

/-! ## A042519.P7844724636167345799

`A041365(n)/A010123(A056105(n))`
-/

namespace A042519.P7844724636167345799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041365 n : ℚ) / (A010123 (A056105 n).toNat : ℚ)

end

end A042519.P7844724636167345799

namespace A042519

/-- `A041365(n)/A010123(A056105(n))` -/
def P7844724636167345799.Spec : Prop :=
  ∀ n, P7844724636167345799.a n = (A042519 n : ℚ)

end A042519

/-!
# A042524: Numerators of continued fraction convergents to sqrt(791).

The programs for A042524, the canonical program `A042524.P15946178272617405046` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042524 has offset 0).

The definition of A042524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042524.P15946178272617405046

`ogf((28+225x+28x^2-x^3)/(1-450x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042524

/-- `ogf((28+225x+28x^2-x^3)/(1-450x^2+x^4))` -/
def P15946178272617405046.Spec : Prop :=
  ∀ n, P15946178272617405046.a n = A042524 n

theorem P15946178272617405046.correct : P15946178272617405046.Spec := by
  intro n
  simp only [A042524]

end A042524

/-!
# A042525: Denominators of continued fraction convergents to sqrt(791).

The programs for A042525, the canonical program `A042525.P17875606806033166183` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042525 has offset 0).

The definition of A042525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042525.P17875606806033166183

`ogf((1+8x-x^2)/(1-450x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042525

/-- `ogf((1+8x-x^2)/(1-450x^2+x^4))` -/
def P17875606806033166183.Spec : Prop :=
  ∀ n, P17875606806033166183.a n = A042525 n

theorem P17875606806033166183.correct : P17875606806033166183.Spec := by
  intro n
  simp only [A042525]

end A042525

/-!
# A042526: Numerators of continued fraction convergents to sqrt(792).

The programs for A042526, the canonical program `A042526.P15234561958344793271` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042526 has offset 0).

The definition of A042526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042526.P15234561958344793271

`ogf((28+197x+28x^2-x^3)/(1-394x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042526

/-- `ogf((28+197x+28x^2-x^3)/(1-394x^2+x^4))` -/
def P15234561958344793271.Spec : Prop :=
  ∀ n, P15234561958344793271.a n = A042526 n

theorem P15234561958344793271.correct : P15234561958344793271.Spec := by
  intro n
  simp only [A042526]

end A042526

/-! ## A042526.P10990240325921868337

`A041156(2+n*3)`
-/

namespace A042526.P10990240325921868337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041156 (2 + n * 3)

end

end A042526.P10990240325921868337

namespace A042526

/-- `A041156(2+n*3)` -/
def P10990240325921868337.Spec : Prop :=
  ∀ n, P10990240325921868337.a n = A042526 n

end A042526

/-! ## A042526.P14555789204389159028

`gcd(2, n)*A041366(n)`
-/

namespace A042526.P14555789204389159028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041366 n

end

end A042526.P14555789204389159028

namespace A042526

/-- `gcd(2, n)*A041366(n)` -/
def P14555789204389159028.Spec : Prop :=
  ∀ n, P14555789204389159028.a n = A042526 n

end A042526

/-! ## A042526.P14785890172213942699

`A000034(1+n)*A041366(n)`
-/

namespace A042526.P14785890172213942699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (1 + n) * A041366 n

end

end A042526.P14785890172213942699

namespace A042526

/-- `A000034(1+n)*A041366(n)` -/
def P14785890172213942699.Spec : Prop :=
  ∀ n, P14785890172213942699.a n = A042526 n

end A042526

/-! ## A042526.P7224645094554216802

`2/A000034(n)*A041366(n)`
-/

namespace A042526.P7224645094554216802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041366 n : ℚ)

end

end A042526.P7224645094554216802

namespace A042526

/-- `2/A000034(n)*A041366(n)` -/
def P7224645094554216802.Spec : Prop :=
  ∀ n, P7224645094554216802.a n = (A042526 n : ℚ)

end A042526

/-! ## A042526.P4338806713803551317

`A014695((n+1)²)*A041366(n)`
-/

namespace A042526.P4338806713803551317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 ((n + 1) ^ 2) * A041366 n

end

end A042526.P4338806713803551317

namespace A042526

/-- `A014695((n+1)²)*A041366(n)` -/
def P4338806713803551317.Spec : Prop :=
  ∀ n, P4338806713803551317.a n = A042526 n

end A042526

/-!
# A042527: Denominators of continued fraction convergents to sqrt(792).

The programs for A042527, the canonical program `A042527.P13284488342002944513` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042527 has offset 0).

The definition of A042527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042527.P13284488342002944513

`ogf((1+7x-x^2)/(1-394x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042527

/-- `ogf((1+7x-x^2)/(1-394x^2+x^4))` -/
def P13284488342002944513.Spec : Prop :=
  ∀ n, P13284488342002944513.a n = A042527 n

theorem P13284488342002944513.correct : P13284488342002944513.Spec := by
  intro n
  simp only [A042527]

end A042527

/-! ## A042527.P11384317800901149839

`A041157(A016789(n))/3`
-/

namespace A042527.P11384317800901149839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041157 (A016789 n).toNat : ℚ) / 3

end

end A042527.P11384317800901149839

namespace A042527

/-- `A041157(A016789(n))/3` -/
def P11384317800901149839.Spec : Prop :=
  ∀ n, P11384317800901149839.a n = (A042527 n : ℚ)

end A042527

/-! ## A042527.P15722080166000730063

`A041367(n)/A000034(n)`
-/

namespace A042527.P15722080166000730063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041367 n : ℚ) / (A000034 n : ℚ)

end

end A042527.P15722080166000730063

namespace A042527

/-- `A041367(n)/A000034(n)` -/
def P15722080166000730063.Spec : Prop :=
  ∀ n, P15722080166000730063.a n = (A042527 n : ℚ)

end A042527

/-! ## A042527.P6268905606075114804

`A041367(n)/A014695(n²)`
-/

namespace A042527.P6268905606075114804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041367 n : ℚ) / (A014695 (n ^ 2) : ℚ)

end

end A042527.P6268905606075114804

namespace A042527

/-- `A041367(n)/A014695(n²)` -/
def P6268905606075114804.Spec : Prop :=
  ∀ n, P6268905606075114804.a n = (A042527 n : ℚ)

end A042527

/-! ## A042527.P12422829299383512745

`A041367(n)/A130658(2*n)`
-/

namespace A042527.P12422829299383512745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041367 n : ℚ) / (A130658 (2 * n) : ℚ)

end

end A042527.P12422829299383512745

namespace A042527

/-- `A041367(n)/A130658(2*n)` -/
def P12422829299383512745.Spec : Prop :=
  ∀ n, P12422829299383512745.a n = (A042527 n : ℚ)

end A042527

/-! ## A042527.P4454018082403141957

`A041367(n)/A010123(n²+1)`
-/

namespace A042527.P4454018082403141957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041367 n : ℚ) / (A010123 (n ^ 2 + 1) : ℚ)

end

end A042527.P4454018082403141957

namespace A042527

/-- `A041367(n)/A010123(n²+1)` -/
def P4454018082403141957.Spec : Prop :=
  ∀ n, P4454018082403141957.a n = (A042527 n : ℚ)

end A042527

/-!
# A042537: Denominators of continued fraction convergents to sqrt(797).

The programs for A042537, there is no canonical definition to state claims against.
-/

/-! ## A042537.P1533371983228406848

`round(A042536(n)/sqrt(797))`
-/

namespace A042537.P1533371983228406848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A042536 n : ℝ) / Real.sqrt (797 : ℝ))

end

end A042537.P1533371983228406848

/-!
# A042538: Numerators of continued fraction convergents to sqrt(798).

The programs for A042538, the canonical program `A042538.P9985038438075703373` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042538 has offset 0).

The definition of A042538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042538.P9985038438075703373

`ogf((28+113x+28x^2-x^3)/(1-226x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042538

/-- `ogf((28+113x+28x^2-x^3)/(1-226x^2+x^4))` -/
def P9985038438075703373.Spec : Prop :=
  ∀ n, P9985038438075703373.a n = A042538 n

theorem P9985038438075703373.correct : P9985038438075703373.Spec := by
  intro n
  simp only [A042538]

end A042538

/-!
# A042539: Denominators of continued fraction convergents to sqrt(798).

The programs for A042539, the canonical program `A042539.P6181764605880865453` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042539 has offset 0).

The definition of A042539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042539.P6181764605880865453

`ogf((1+4x-x^2)/(1-226x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042539

/-- `ogf((1+4x-x^2)/(1-226x^2+x^4))` -/
def P6181764605880865453.Spec : Prop :=
  ∀ n, P6181764605880865453.a n = A042539 n

theorem P6181764605880865453.correct : P6181764605880865453.Spec := by
  intro n
  simp only [A042539]

end A042539

/-!
# A042540: Numerators of continued fraction convergents to sqrt(799).

The programs for A042540, the canonical program `A042540.P6482487796823086487` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042540 has offset 0).

The definition of A042540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042540.P6482487796823086487

`ogf((28+85x+113x^2+424x^3+113x^4-85x^5+28x^6-x^7)/(1-848x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042540

/-- `ogf((28+85x+113x^2+424x^3+113x^4-85x^5+28x^6-x^7)/(1-848x^4+x^8))` -/
def P6482487796823086487.Spec : Prop :=
  ∀ n, P6482487796823086487.a n = A042540 n

theorem P6482487796823086487.correct : P6482487796823086487.Spec := by
  intro n
  simp only [A042540]

end A042540

/-!
# A042541: Denominators of continued fraction convergents to sqrt(799).

The programs for A042541, the canonical program `A042541.P16845654584805370190` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042541 has offset 0).

The definition of A042541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042541.P16845654584805370190

`ogf((1+3x+4x^2+15x^3-4x^4+3x^5-x^6)/(1-848x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042541

/-- `ogf((1+3x+4x^2+15x^3-4x^4+3x^5-x^6)/(1-848x^4+x^8))` -/
def P16845654584805370190.Spec : Prop :=
  ∀ n, P16845654584805370190.a n = A042541 n

theorem P16845654584805370190.correct : P16845654584805370190.Spec := by
  intro n
  simp only [A042541]

end A042541

/-!
# A042543: Denominators of continued fraction convergents to sqrt(800).

The programs for A042543, there is no canonical definition to state claims against.
-/

/-! ## A042543.P8353472859776829570

`A065033(record[A041101(n)^A061358(n)])`
-/

namespace A042543.P8353472859776829570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041101 n : ℚ) ^ (A061358 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A042543.P8353472859776829570

/-!
# A042549: Denominators of continued fraction convergents to sqrt(803).

The programs for A042549, there is no canonical definition to state claims against.
-/

/-! ## A042549.P1248071143108660200

`A231149(A042673(n+1))`
-/

namespace A042549.P1248071143108660200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A042673 (n + 1)).toNat

end

end A042549.P1248071143108660200

/-!
# A042551: Denominators of continued fraction convergents to sqrt(804).

The programs for A042551, there is no canonical definition to state claims against.
-/

/-! ## A042551.P14917923348402303128

`A076689(A000698(n))+n`
-/

namespace A042551.P14917923348402303128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076689 (A000698 n).toNat + (n : ℤ)

end

end A042551.P14917923348402303128

/-!
# A042555: Denominators of continued fraction convergents to sqrt(806).

The programs for A042555, there is no canonical definition to state claims against.
-/

/-! ## A042555.P6800539387929737693

`A029998(n+1)+A007305(A227545(n))`
-/

namespace A042555.P6800539387929737693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (n + 1) + A007305 (A227545 n).toNat

end

end A042555.P6800539387929737693

/-! ## A042555.P1188198969923042614

`A233564(n+1)+A162223(A192637(n))`
-/

namespace A042555.P1188198969923042614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (n + 1) + A162223 (A192637 n).toNat

end

end A042555.P1188198969923042614

/-!
# A042557: Denominators of continued fraction convergents to sqrt(807).

The programs for A042557, there is no canonical definition to state claims against.
-/

/-! ## A042557.P3281160898905770901

`eq[A100204(n), A205115(n+1)]`
-/

namespace A042557.P3281160898905770901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042557.P3281160898905770901

/-!
# A042561: Denominators of continued fraction convergents to sqrt(809).

The programs for A042561, there is no canonical definition to state claims against.
-/

/-! ## A042561.P8813103737778342762

`A088881(n)+A002375(A359024(n))`
-/

namespace A042561.P8813103737778342762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088881 n + A002375 (A359024 n).toNat

end

end A042561.P8813103737778342762

/-!
# A042566: Numerators of continued fraction convergents to sqrt(812).

The programs for A042566, the canonical program `A042566.P11614867163836888386` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042566 has offset 0).

The definition of A042566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042566.P11614867163836888386

`ogf((28+57x+28x^2-x^3)/(1-114x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042566

/-- `ogf((28+57x+28x^2-x^3)/(1-114x^2+x^4))` -/
def P11614867163836888386.Spec : Prop :=
  ∀ n, P11614867163836888386.a n = A042566 n

theorem P11614867163836888386.correct : P11614867163836888386.Spec := by
  intro n
  simp only [A042566]

end A042566

/-! ## A042566.P17949600322427095265

`gcd(2, n)*A041376(n)`
-/

namespace A042566.P17949600322427095265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041376 n

end

end A042566.P17949600322427095265

namespace A042566

/-- `gcd(2, n)*A041376(n)` -/
def P17949600322427095265.Spec : Prop :=
  ∀ n, P17949600322427095265.a n = A042566 n

end A042566

/-! ## A042566.P17525186283273214442

`Δ[A007494(n)]*A041376(n)`
-/

namespace A042566.P17525186283273214442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041376 n

end

end A042566.P17525186283273214442

namespace A042566

/-- `Δ[A007494(n)]*A041376(n)` -/
def P17525186283273214442.Spec : Prop :=
  ∀ n, P17525186283273214442.a n = A042566 n

end A042566

/-! ## A042566.P9762266226061401961

`A000034(n+1)*A041376(n)`
-/

namespace A042566.P9762266226061401961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041376 n

end

end A042566.P9762266226061401961

namespace A042566

/-- `A000034(n+1)*A041376(n)` -/
def P9762266226061401961.Spec : Prop :=
  ∀ n, P9762266226061401961.a n = A042566 n

end A042566

/-! ## A042566.P8227628477672737987

`2/A000034(n)*A041376(n)`
-/

namespace A042566.P8227628477672737987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041376 n : ℚ)

end

end A042566.P8227628477672737987

namespace A042566

/-- `2/A000034(n)*A041376(n)` -/
def P8227628477672737987.Spec : Prop :=
  ∀ n, P8227628477672737987.a n = (A042566 n : ℚ)

end A042566

/-! ## A042566.P10690810905148065206

`A041376(n)*A003484(n²+2)`
-/

namespace A042566.P10690810905148065206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041376 n * A003484 (n ^ 2 + 2)

end

end A042566.P10690810905148065206

namespace A042566

/-- `A041376(n)*A003484(n²+2)` -/
def P10690810905148065206.Spec : Prop :=
  ∀ n, P10690810905148065206.a n = A042566 n

end A042566

/-! ## A042566.P17121497956852567126

`A041376(n)*A006519(n²+2)`
-/

namespace A042566.P17121497956852567126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041376 n * A006519 (n ^ 2 + 2)

end

end A042566.P17121497956852567126

namespace A042566

/-- `A041376(n)*A006519(n²+2)` -/
def P17121497956852567126.Spec : Prop :=
  ∀ n, P17121497956852567126.a n = A042566 n

end A042566

/-! ## A042566.P3325197475398504215

`A041376(n)*A141044(A003484(n+1))`
-/

namespace A042566.P3325197475398504215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041376 n * A141044 (A003484 (n + 1)).toNat

end

end A042566.P3325197475398504215

namespace A042566

/-- `A041376(n)*A141044(A003484(n+1))` -/
def P3325197475398504215.Spec : Prop :=
  ∀ n, P3325197475398504215.a n = A042566 n

end A042566

/-! ## A042566.P2024328806272748267

`A006519(A006519(n+1)+1)*A041376(n)`
-/

namespace A042566.P2024328806272748267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006519 (n + 1) + 1).toNat * A041376 n

end

end A042566.P2024328806272748267

namespace A042566

/-- `A006519(A006519(n+1)+1)*A041376(n)` -/
def P2024328806272748267.Spec : Prop :=
  ∀ n, P2024328806272748267.a n = A042566 n

end A042566

/-!
# A042567: Denominators of continued fraction convergents to sqrt(812).

The programs for A042567, the canonical program `A042567.P10718276246385651684` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042567 has offset 0).

The definition of A042567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042567.P10718276246385651684

`ogf((1+2x-x^2)/(1-114x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042567

/-- `ogf((1+2x-x^2)/(1-114x^2+x^4))` -/
def P10718276246385651684.Spec : Prop :=
  ∀ n, P10718276246385651684.a n = A042567 n

theorem P10718276246385651684.correct : P10718276246385651684.Spec := by
  intro n
  simp only [A042567]

end A042567

/-! ## A042567.P6378068354193251770

`A041377(n)/A000034(n)`
-/

namespace A042567.P6378068354193251770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041377 n : ℚ) / (A000034 n : ℚ)

end

end A042567.P6378068354193251770

namespace A042567

/-- `A041377(n)/A000034(n)` -/
def P6378068354193251770.Spec : Prop :=
  ∀ n, P6378068354193251770.a n = (A042567 n : ℚ)

end A042567

/-! ## A042567.P8696522452919726037

`A041377(n)/A040001(n+1)`
-/

namespace A042567.P8696522452919726037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041377 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A042567.P8696522452919726037

namespace A042567

/-- `A041377(n)/A040001(n+1)` -/
def P8696522452919726037.Spec : Prop :=
  ∀ n, P8696522452919726037.a n = (A042567 n : ℚ)

end A042567

/-! ## A042567.P14475143784292312529

`A041377(n)/A010873(n²+1)`
-/

namespace A042567.P14475143784292312529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041377 n : ℚ) / (A010873 (n ^ 2 + 1) : ℚ)

end

end A042567.P14475143784292312529

namespace A042567

/-- `A041377(n)/A010873(n²+1)` -/
def P14475143784292312529.Spec : Prop :=
  ∀ n, P14475143784292312529.a n = (A042567 n : ℚ)

end A042567

/-! ## A042567.P2408427021775312434

`A041377(n)/Δ[A001651(n+1)]`
-/

namespace A042567.P2408427021775312434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041377 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042567.P2408427021775312434

namespace A042567

/-- `A041377(n)/Δ[A001651(n+1)]` -/
def P2408427021775312434.Spec : Prop :=
  ∀ n, P2408427021775312434.a n = (A042567 n : ℚ)

end A042567

/-! ## A042567.P2695530924563418476

`A041377(n)/A002260(A236453(n))`
-/

namespace A042567.P2695530924563418476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041377 n : ℚ) / (A002260 (A236453 n).toNat : ℚ)

end

end A042567.P2695530924563418476

namespace A042567

/-- `A041377(n)/A002260(A236453(n))` -/
def P2695530924563418476.Spec : Prop :=
  ∀ n, P2695530924563418476.a n = (A042567 n : ℚ)

end A042567

/-!
# A042573: Denominators of continued fraction convergents to sqrt(815).

The programs for A042573, there is no canonical definition to state claims against.
-/

/-! ## A042573.P7684732740810676576

`round(A042572(n)/sqrt(815))`
-/

namespace A042573.P7684732740810676576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A042572 n : ℝ) / Real.sqrt (815 : ℝ))

end

end A042573.P7684732740810676576

/-! ## A042573.P6932198282022059567

`A219614(n)%A014311(A037949(n))`
-/

namespace A042573.P6932198282022059567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219614 n) (A014311 (A037949 n).toNat)

end

end A042573.P6932198282022059567

/-!
# A042576: Numerators of continued fraction convergents to sqrt(817).

The programs for A042576, the canonical program `A042576.P3406498807243833230` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042576 has offset 0).

The definition of A042576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042576.P3406498807243833230

`ogf((28+29x+57x^2+143x^3+200x^4+343x^5+200x^6-143x^7+57x^8-29x^9+28x^10-x^11)/(1-686x^6+x^12))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042576

/-- `ogf((28+29x+57x^2+143x^3+200x^4+343x^5+200x^6-143x^7+57x^8-29x^9+28x^10-x^11)/(1-686x^6+x^12))` -/
def P3406498807243833230.Spec : Prop :=
  ∀ n, P3406498807243833230.a n = A042576 n

theorem P3406498807243833230.correct : P3406498807243833230.Spec := by
  intro n
  simp only [A042576]

end A042576

/-!
# A042577: Denominators of continued fraction convergents to sqrt(817).

The programs for A042577, the canonical program `A042577.P2724512202941748680` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042577 has offset 0).

The definition of A042577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042577.P2724512202941748680

`ogf((1+x+2x^2+5x^3+7x^4+12x^5-7x^6+5x^7-2x^8+x^9-x^10)/(1-686x^6+x^12))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042577

/-- `ogf((1+x+2x^2+5x^3+7x^4+12x^5-7x^6+5x^7-2x^8+x^9-x^10)/(1-686x^6+x^12))` -/
def P2724512202941748680.Spec : Prop :=
  ∀ n, P2724512202941748680.a n = A042577 n

theorem P2724512202941748680.correct : P2724512202941748680.Spec := by
  intro n
  simp only [A042577]

end A042577

/-!
# A042578: Numerators of continued fraction convergents to sqrt(818).

The programs for A042578, the canonical program `A042578.P5749991441787989986` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042578 has offset 0).

The definition of A042578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042578.P5749991441787989986

`ogf((28+29x+57x^2+86x^3+143x^4+86x^5-57x^6+29x^7-28x^8+x^9)/(1-286x^5-x^10))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042578

/-- `ogf((28+29x+57x^2+86x^3+143x^4+86x^5-57x^6+29x^7-28x^8+x^9)/(1-286x^5-x^10))` -/
def P5749991441787989986.Spec : Prop :=
  ∀ n, P5749991441787989986.a n = A042578 n

theorem P5749991441787989986.correct : P5749991441787989986.Spec := by
  intro n
  simp only [A042578]

end A042578

/-!
# A042579: Denominators of continued fraction convergents to sqrt(818).

The programs for A042579, the canonical program `A042579.P12787029388015802348` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042579 has offset 0).

The definition of A042579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042579.P12787029388015802348

`ogf((1+x+2x^2+3x^3+5x^4-3x^5+2x^6-x^7+x^8)/(1-286x^5-x^10))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042579

/-- `ogf((1+x+2x^2+3x^3+5x^4-3x^5+2x^6-x^7+x^8)/(1-286x^5-x^10))` -/
def P12787029388015802348.Spec : Prop :=
  ∀ n, P12787029388015802348.a n = A042579 n

theorem P12787029388015802348.correct : P12787029388015802348.Spec := by
  intro n
  simp only [A042579]

end A042579

/-! ## A042579.P11933189761610892086

`A364913(n)+A194093(A055772(n+1))`
-/

namespace A042579.P11933189761610892086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364913 n + A194093 (A055772 (n + 1)).toNat

end

end A042579.P11933189761610892086

namespace A042579

/-- `A364913(n)+A194093(A055772(n+1))` -/
def P11933189761610892086.Spec : Prop :=
  ∀ n, P11933189761610892086.a n = A042579 n

end A042579

/-!
# A042580: Numerators of continued fraction convergents to sqrt(819).

The programs for A042580, there is no canonical definition to state claims against.
-/

/-! ## A042580.P1387345840670605526

`∑[(a(n-1)+a(n-2))^A040790(n)]` with `a(0)=28, a(1)=1, a(2)=28`
-/

namespace A042580.P1387345840670605526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [28, 1, 28] fun n f1 =>
  (f1 (n - 1) + f1 (n - 2)) ^ (A040790 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042580.P1387345840670605526

/-! ## A042580.P8169209427074425491

`A022398(A062399(n+1))`
-/

namespace A042580.P8169209427074425491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 (A062399 (n + 1)).toNat

end

end A042580.P8169209427074425491

/-! ## A042580.P3176646905164861202

`filter[A022398(n), A316824(#)]`
-/

namespace A042580.P3176646905164861202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316824 (f1 j).toNat = 1) n)

end

end A042580.P3176646905164861202

/-!
# A042583: Denominators of continued fraction convergents to sqrt(820).

The programs for A042583, there is no canonical definition to state claims against.
-/

/-! ## A042583.P15643158817011972073

`A002260(ceil(((4*n-2)/5)^n)+1)`
-/

namespace A042583.P15643158817011972073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (⌈(((4 * n : ℤ) - 2 : ℚ) / 5) ^ n⌉ + 1).toNat

end

end A042583.P15643158817011972073

/-!
# A042589: Denominators of continued fraction convergents to sqrt(823).

The programs for A042589, there is no canonical definition to state claims against.
-/

/-! ## A042589.P9181319818815464592

`A248601(A099642(n+1))`
-/

namespace A042589.P9181319818815464592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248601 (A099642 (n + 1)).toNat

end

end A042589.P9181319818815464592

/-!
# A042591: Denominators of continued fraction convergents to sqrt(824).

The programs for A042591, there is no canonical definition to state claims against.
-/

/-! ## A042591.P16463894489214557058

`A036049(A283908(n))`
-/

namespace A042591.P16463894489214557058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036049 (A283908 n).toNat

end

end A042591.P16463894489214557058

/-! ## A042591.P9398638831959604957

`A056239(A367061(n))+A007318(n)`
-/

namespace A042591.P9398638831959604957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A367061 n).toNat + A007318 n

end

end A042591.P9398638831959604957

