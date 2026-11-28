import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C014
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C007
import Seq.B003.C001
import Seq.B003.C004
import Seq.B008.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022

/-!
# A041500: Numerators of continued fraction convergents to sqrt(267).

The programs for A041500, there is no canonical definition to state claims against.
-/

/-! ## A041500.P11156236618870485260

`A102489(A041192(n))`
-/

namespace A041500.P11156236618870485260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A041192 n).toNat

end

end A041500.P11156236618870485260

/-!
# A041501: Denominators of continued fraction convergents to sqrt(267).

The programs for A041501, there is no canonical definition to state claims against.
-/

/-! ## A041501.P9458110838327752377

`A085798(A032020(n))+A006918(n)`
-/

namespace A041501.P9458110838327752377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085798 (A032020 n).toNat + A006918 n

end

end A041501.P9458110838327752377

/-!
# A041503: Denominators of continued fraction convergents to sqrt(268).

The programs for A041503, there is no canonical definition to state claims against.
-/

/-! ## A041503.P17616330241786673836

`A104737(record[A104770(comp[7*n-3])])`
-/

namespace A041503.P17616330241786673836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A041503.P17616330241786673836

/-! ## A041503.P715622722284675978

`or(A005663(n), A271394(A271377(n+1)))`
-/

namespace A041503.P715622722284675978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005663 n) (A271394 (A271377 (n + 1)).toNat)

end

end A041503.P715622722284675978

/-!
# A041504: Numerators of continued fraction convergents to sqrt(269).

The programs for A041504, the canonical program `A041504.P17117789972309414542` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041504 has offset 0).

The definition of A041504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041504.P17117789972309414542

`ogf((16+33x+82x^2+33x^3-16x^4+x^5)/(1-164x^3-x^6))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041504

/-- `ogf((16+33x+82x^2+33x^3-16x^4+x^5)/(1-164x^3-x^6))` -/
def P17117789972309414542.Spec : Prop :=
  ∀ n, P17117789972309414542.a n = A041504 n

theorem P17117789972309414542.correct : P17117789972309414542.Spec := by
  intro n
  simp only [A041504]

end A041504

/-!
# A041505: Denominators of continued fraction convergents to sqrt(269).

The programs for A041505, the canonical program `A041505.P5522797116918286836` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041505 has offset 0).

The definition of A041505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041505.P5522797116918286836

`164*a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=162, a(4)=329, a(5)=820`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041505

/-- `164*a(n-3)+a(n-6)` -/
def P5522797116918286836.Spec : Prop :=
  ∀ n, (P5522797116918286836.a n : ℤ) = A041505 n

theorem P5522797116918286836.correct : P5522797116918286836.Spec := by
  intro n
  simp only [A041505]

end A041505

/-! ## A041505.P6506270322848879949

`ogf((1+2x+5x^2-2x^3+x^4)/(1-164x^3-x^6))`
-/

namespace A041505.P6506270322848879949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5, -2, 1] [1, 0, 0, -164, 0, 0, -1] n

end

end A041505.P6506270322848879949

namespace A041505

/-- `ogf((1+2x+5x^2-2x^3+x^4)/(1-164x^3-x^6))` -/
def P6506270322848879949.Spec : Prop :=
  ∀ n, P6506270322848879949.a n = A041505 n

end A041505

/-!
# A041507: Denominators of continued fraction convergents to sqrt(270).

The programs for A041507, there is no canonical definition to state claims against.
-/

/-! ## A041507.P5226667614664239275

`A194672(n+3)+A194640(A194650(n+1))`
-/

namespace A041507.P5226667614664239275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194672 (n + 3) + A194640 (A194650 (n + 1)).toNat

end

end A041507.P5226667614664239275

/-!
# A041510: Numerators of continued fraction convergents to sqrt(272).

The programs for A041510, the canonical program `A041510.P12099896148885497788` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041510 has offset 0).

The definition of A041510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041510.P12099896148885497788

`ogf((16+33x+16x^2-x^3)/(1-66x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041510

/-- `ogf((16+33x+16x^2-x^3)/(1-66x^2+x^4))` -/
def P12099896148885497788.Spec : Prop :=
  ∀ n, P12099896148885497788.a n = A041510 n

theorem P12099896148885497788.correct : P12099896148885497788.Spec := by
  intro n
  simp only [A041510]

end A041510

/-! ## A041510.P6868064237641329744

`gcd(2, n)²*A041024(n)`
-/

namespace A041510.P6868064237641329744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) * A041024 n

end

end A041510.P6868064237641329744

namespace A041510

/-- `gcd(2, n)²*A041024(n)` -/
def P6868064237641329744.Spec : Prop :=
  ∀ n, P6868064237641329744.a n = A041510 n

end A041510

/-! ## A041510.P1030095615332607924

`Δ[A007494(n)]*A041118(n)`
-/

namespace A041510.P1030095615332607924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041118 n

end

end A041510.P1030095615332607924

namespace A041510

/-- `Δ[A007494(n)]*A041118(n)` -/
def P1030095615332607924.Spec : Prop :=
  ∀ n, P1030095615332607924.a n = A041510 n

end A041510

/-! ## A041510.P9290030963056307312

`A000034(n+1)*A041118(n)`
-/

namespace A041510.P9290030963056307312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041118 n

end

end A041510.P9290030963056307312

namespace A041510

/-- `A000034(n+1)*A041118(n)` -/
def P9290030963056307312.Spec : Prop :=
  ∀ n, P9290030963056307312.a n = A041510 n

end A041510

/-! ## A041510.P5056377782854104015

`A040001(n+2)*A041118(n)`
-/

namespace A041510.P5056377782854104015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041118 n

end

end A041510.P5056377782854104015

namespace A041510

/-- `A040001(n+2)*A041118(n)` -/
def P5056377782854104015.Spec : Prop :=
  ∀ n, P5056377782854104015.a n = A041510 n

end A041510

/-! ## A041510.P2933085896755008928

`2/A000034(n)*A041118(n)`
-/

namespace A041510.P2933085896755008928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041118 n : ℚ)

end

end A041510.P2933085896755008928

namespace A041510

/-- `2/A000034(n)*A041118(n)` -/
def P2933085896755008928.Spec : Prop :=
  ∀ n, P2933085896755008928.a n = (A041510 n : ℚ)

end A041510

/-! ## A041510.P15782789061442528755

`Δ[A007494(n)]²*A041024(n)`
-/

namespace A041510.P15782789061442528755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A041024 n

end

end A041510.P15782789061442528755

namespace A041510

/-- `Δ[A007494(n)]²*A041024(n)` -/
def P15782789061442528755.Spec : Prop :=
  ∀ n, P15782789061442528755.a n = A041510 n

end A041510

/-! ## A041510.P3938031593633524488

`A000034(n+1)²*A041024(n)`
-/

namespace A041510.P3938031593633524488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ 2 * A041024 n

end

end A041510.P3938031593633524488

namespace A041510

/-- `A000034(n+1)²*A041024(n)` -/
def P3938031593633524488.Spec : Prop :=
  ∀ n, P3938031593633524488.a n = A041510 n

end A041510

/-! ## A041510.P217570827442322989

`A040001(n+2)²*A041024(n)`
-/

namespace A041510.P217570827442322989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) ^ 2 * A041024 n

end

end A041510.P217570827442322989

namespace A041510

/-- `A040001(n+2)²*A041024(n)` -/
def P217570827442322989.Spec : Prop :=
  ∀ n, P217570827442322989.a n = A041510 n

end A041510

/-! ## A041510.P13633809631176658657

`(2/A000034(n))²*A041024(n)`
-/

namespace A041510.P13633809631176658657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (A000034 n : ℚ)) ^ 2 * (A041024 n : ℚ)

end

end A041510.P13633809631176658657

namespace A041510

/-- `(2/A000034(n))²*A041024(n)` -/
def P13633809631176658657.Spec : Prop :=
  ∀ n, P13633809631176658657.a n = (A041510 n : ℚ)

end A041510

/-!
# A041511: Denominators of continued fraction convergents to sqrt(272).

The programs for A041511, the canonical program `A041511.P6997673176157051633` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041511 has offset 0).

The definition of A041511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041511.P7130853195675391992

`ogf((1+2x-x^2)/(1-66x^2+x^4))`
-/

namespace A041511.P7130853195675391992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -66, 0, 1] n

end

end A041511.P7130853195675391992

namespace A041511

/-- `ogf((1+2x-x^2)/(1-66x^2+x^4))` -/
def P7130853195675391992.Spec : Prop :=
  ∀ n, P7130853195675391992.a n = A041511 n

end A041511

/-! ## A041511.P6997673176157051633

`66*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=65, a(3)=132`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041511

/-- `66*a(n-2)-a(n-4)` -/
def P6997673176157051633.Spec : Prop :=
  ∀ n, P6997673176157051633.a n = A041511 n

theorem P6997673176157051633.correct : P6997673176157051633.Spec := by
  intro n
  simp only [A041511]

end A041511

/-! ## A041511.P11377259605776052576

`lcm(4, A041025(n))/4`
-/

namespace A041511.P11377259605776052576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A041025 n) : ℚ) / 4

end

end A041511.P11377259605776052576

namespace A041511

/-- `lcm(4, A041025(n))/4` -/
def P11377259605776052576.Spec : Prop :=
  ∀ n, P11377259605776052576.a n = (A041511 n : ℚ)

end A041511

/-! ## A041511.P1663136128407532233

`A041119(n)/A000034(n)`
-/

namespace A041511.P1663136128407532233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041119 n : ℚ) / (A000034 n : ℚ)

end

end A041511.P1663136128407532233

namespace A041511

/-- `A041119(n)/A000034(n)` -/
def P1663136128407532233.Spec : Prop :=
  ∀ n, P1663136128407532233.a n = (A041511 n : ℚ)

end A041511

/-! ## A041511.P17258127309714965857

`A041025(n)/A000034(n)²`
-/

namespace A041511.P17258127309714965857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A041511.P17258127309714965857

namespace A041511

/-- `A041025(n)/A000034(n)²` -/
def P17258127309714965857.Spec : Prop :=
  ∀ n, P17258127309714965857.a n = (A041511 n : ℚ)

end A041511

/-! ## A041511.P7977443494917586941

`A041025(n)/(A000035(n)+1)²`
-/

namespace A041511.P7977443494917586941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / ((A000035 n + 1) ^ 2 : ℚ)

end

end A041511.P7977443494917586941

namespace A041511

/-- `A041025(n)/(A000035(n)+1)²` -/
def P7977443494917586941.Spec : Prop :=
  ∀ n, P7977443494917586941.a n = (A041511 n : ℚ)

end A041511

/-! ## A041511.P4252173209804683056

`A041025(n)/A040001(n+1)²`
-/

namespace A041511.P4252173209804683056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (A040001 (n + 1) ^ 2 : ℚ)

end

end A041511.P4252173209804683056

namespace A041511

/-- `A041025(n)/A040001(n+1)²` -/
def P4252173209804683056.Spec : Prop :=
  ∀ n, P4252173209804683056.a n = (A041511 n : ℚ)

end A041511

/-! ## A041511.P18327666705796422411

`A041025(n)/A000302(Δ[A004526(n)])`
-/

namespace A041511.P18327666705796422411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (A000302 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041511.P18327666705796422411

namespace A041511

/-- `A041025(n)/A000302(Δ[A004526(n)])` -/
def P18327666705796422411.Spec : Prop :=
  ∀ n, P18327666705796422411.a n = (A041511 n : ℚ)

end A041511

/-! ## A041511.P9581398560112603084

`A041119(n)/A000010(Δ[A042948(n)])`
-/

namespace A041511.P9581398560112603084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041119 n : ℚ) / (A000010 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041511.P9581398560112603084

namespace A041511

/-- `A041119(n)/A000010(Δ[A042948(n)])` -/
def P9581398560112603084.Spec : Prop :=
  ∀ n, P9581398560112603084.a n = (A041511 n : ℚ)

end A041511

/-! ## A041511.P959146593563782601

`A041119(n)/A039730(Δ[A042948(n)])`
-/

namespace A041511.P959146593563782601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041119 n : ℚ) / (A039730 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041511.P959146593563782601

namespace A041511

/-- `A041119(n)/A039730(Δ[A042948(n)])` -/
def P959146593563782601.Spec : Prop :=
  ∀ n, P959146593563782601.a n = (A041511 n : ℚ)

end A041511

/-! ## A041511.P857852865753679159

`A041119(n)/A114095(Δ[A042948(n)])`
-/

namespace A041511.P857852865753679159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041119 n : ℚ) / (A114095 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041511.P857852865753679159

namespace A041511

/-- `A041119(n)/A114095(Δ[A042948(n)])` -/
def P857852865753679159.Spec : Prop :=
  ∀ n, P857852865753679159.a n = (A041511 n : ℚ)

end A041511

/-! ## A041511.P2340476318189847248

`A041025(n)/A256701(Δ[A042948(n)])`
-/

namespace A041511.P2340476318189847248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (A256701 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041511.P2340476318189847248

namespace A041511

/-- `A041025(n)/A256701(Δ[A042948(n)])` -/
def P2340476318189847248.Spec : Prop :=
  ∀ n, P2340476318189847248.a n = (A041511 n : ℚ)

end A041511

/-! ## A041511.P7253942597010637788

`A041119(n)/A041025(n)*A041119(n)`
-/

namespace A041511.P7253942597010637788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041119 n : ℚ) / (A041025 n : ℚ) * (A041119 n : ℚ)

end

end A041511.P7253942597010637788

namespace A041511

/-- `A041119(n)/A041025(n)*A041119(n)` -/
def P7253942597010637788.Spec : Prop :=
  ∀ n, P7253942597010637788.a n = (A041511 n : ℚ)

end A041511

/-! ## A041511.P9761053056820482744

`A041025(n)/A000010(Δ[A042948(n)])²`
-/

namespace A041511.P9761053056820482744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (A000010 (f1 (n + 1) - f1 n).toNat ^ 2 : ℚ)

end

end A041511.P9761053056820482744

namespace A041511

/-- `A041025(n)/A000010(Δ[A042948(n)])²` -/
def P9761053056820482744.Spec : Prop :=
  ∀ n, P9761053056820482744.a n = (A041511 n : ℚ)

end A041511

/-!
# A041516: Numerators of continued fraction convergents to sqrt(275).

The programs for A041516, the canonical program `A041516.P13235723902728570632` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041516 has offset 0).

The definition of A041516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041516.P13235723902728570632

`ogf((16+17x+33x^2+83x^3+116x^4+199x^5+116x^6-83x^7+33x^8-17x^9+16x^10-x^11)/(1-398x^6+x^12))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041516

/-- `ogf((16+17x+33x^2+83x^3+116x^4+199x^5+116x^6-83x^7+33x^8-17x^9+16x^10-x^11)/(1-398x^6+x^12))` -/
def P13235723902728570632.Spec : Prop :=
  ∀ n, P13235723902728570632.a n = A041516 n

theorem P13235723902728570632.correct : P13235723902728570632.Spec := by
  intro n
  simp only [A041516]

end A041516

/-!
# A041517: Denominators of continued fraction convergents to sqrt(275).

The programs for A041517, the canonical program `A041517.P4033029511593543562` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041517 has offset 0).

The definition of A041517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041517.P4033029511593543562

`ogf((1+x+2x^2+5x^3+7x^4+12x^5-7x^6+5x^7-2x^8+x^9-x^10)/(1-398x^6+x^12))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041517

/-- `ogf((1+x+2x^2+5x^3+7x^4+12x^5-7x^6+5x^7-2x^8+x^9-x^10)/(1-398x^6+x^12))` -/
def P4033029511593543562.Spec : Prop :=
  ∀ n, P4033029511593543562.a n = A041517 n

theorem P4033029511593543562.correct : P4033029511593543562.Spec := by
  intro n
  simp only [A041517]

end A041517

/-! ## A041517.P12944824413162050803

`A176506(A000142(n)*A295511(n+1))`
-/

namespace A041517.P12944824413162050803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (A000142 n * A295511 (n + 1)).toNat

end

end A041517.P12944824413162050803

namespace A041517

/-- `A176506(A000142(n)*A295511(n+1))` -/
def P12944824413162050803.Spec : Prop :=
  ∀ n, P12944824413162050803.a n = A041517 n

end A041517

/-!
# A041518: Numerators of continued fraction convergents to sqrt(276).

The programs for A041518, there is no canonical definition to state claims against.
-/

/-! ## A041518.P11849187416894440071

`A226190(A042694(n))`
-/

namespace A041518.P11849187416894440071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A042694 n).toNat

end

end A041518.P11849187416894440071

/-!
# A041521: Denominators of continued fraction convergents to sqrt(277).

The programs for A041521, there is no canonical definition to state claims against.
-/

/-! ## A041521.P16708255644643804975

`A337329(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A041521.P16708255644643804975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A337329 (a (n - 1) + 1).toNat

end

end A041521.P16708255644643804975

/-!
# A041523: Denominators of continued fraction convergents to sqrt(278).

The programs for A041523, there is no canonical definition to state claims against.
-/

/-! ## A041523.P8250203547158886976

`2*A008676(13*A041983(n))-A041983(n)`
-/

namespace A041523.P8250203547158886976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008676 (13 * A041983 n).toNat - A041983 n

end

end A041523.P8250203547158886976

/-!
# A041526: Numerators of continued fraction convergents to sqrt(280).

The programs for A041526, the canonical program `A041526.P238575344356915672` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041526 has offset 0).

The definition of A041526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041526.P238575344356915672

`ogf((16+17x+50x^2+67x^3+184x^4+251x^5+184x^6-67x^7+50x^8-17x^9+16x^10-x^11)/(1-502x^6+x^12))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041526

/-- `ogf((16+17x+50x^2+67x^3+184x^4+251x^5+184x^6-67x^7+50x^8-17x^9+16x^10-x^11)/(1-502x^6+x^12))` -/
def P238575344356915672.Spec : Prop :=
  ∀ n, P238575344356915672.a n = A041526 n

theorem P238575344356915672.correct : P238575344356915672.Spec := by
  intro n
  simp only [A041526]

end A041526

/-! ## A041526.P17358919136262037836

`gcd(2, n)*A041122(n)`
-/

namespace A041526.P17358919136262037836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041122 n

end

end A041526.P17358919136262037836

namespace A041526

/-- `gcd(2, n)*A041122(n)` -/
def P17358919136262037836.Spec : Prop :=
  ∀ n, P17358919136262037836.a n = A041526 n

end A041526

/-! ## A041526.P3756106819037298861

`A000034(n+1)*A041122(n)`
-/

namespace A041526.P3756106819037298861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041122 n

end

end A041526.P3756106819037298861

namespace A041526

/-- `A000034(n+1)*A041122(n)` -/
def P3756106819037298861.Spec : Prop :=
  ∀ n, P3756106819037298861.a n = A041526 n

end A041526

/-! ## A041526.P4454568526373107976

`A040001(2+n)*A041122(n)`
-/

namespace A041526.P4454568526373107976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 + n) * A041122 n

end

end A041526.P4454568526373107976

namespace A041526

/-- `A040001(2+n)*A041122(n)` -/
def P4454568526373107976.Spec : Prop :=
  ∀ n, P4454568526373107976.a n = A041526 n

end A041526

/-! ## A041526.P9029522757571193191

`(3-A000034(n))*A041122(n)`
-/

namespace A041526.P9029522757571193191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041122 n

end

end A041526.P9029522757571193191

namespace A041526

/-- `(3-A000034(n))*A041122(n)` -/
def P9029522757571193191.Spec : Prop :=
  ∀ n, P9029522757571193191.a n = A041526 n

end A041526

/-! ## A041526.P3603342760305521293

`A041122(n)*A193267(A193267(n+1)+1)`
-/

namespace A041526.P3603342760305521293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041122 n * A193267 (A193267 (n + 1) + 1).toNat

end

end A041526.P3603342760305521293

namespace A041526

/-- `A041122(n)*A193267(A193267(n+1)+1)` -/
def P3603342760305521293.Spec : Prop :=
  ∀ n, P3603342760305521293.a n = A041526 n

end A041526

/-!
# A041527: Denominators of continued fraction convergents to sqrt(280).

The programs for A041527, the canonical program `A041527.P7011761153782652071` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041527 has offset 0).

The definition of A041527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041527.P7011761153782652071

`ogf((1+x+3x^2+4x^3+11x^4+15x^5-11x^6+4x^7-3x^8+x^9-x^10)/(1-502x^6+x^12))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041527

/-- `ogf((1+x+3x^2+4x^3+11x^4+15x^5-11x^6+4x^7-3x^8+x^9-x^10)/(1-502x^6+x^12))` -/
def P7011761153782652071.Spec : Prop :=
  ∀ n, P7011761153782652071.a n = A041527 n

theorem P7011761153782652071.correct : P7011761153782652071.Spec := by
  intro n
  simp only [A041527]

end A041527

/-! ## A041527.P14714294251761646738

`A041123(n)/A000034(n)`
-/

namespace A041527.P14714294251761646738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (A000034 n : ℚ)

end

end A041527.P14714294251761646738

namespace A041527

/-- `A041123(n)/A000034(n)` -/
def P14714294251761646738.Spec : Prop :=
  ∀ n, P14714294251761646738.a n = (A041527 n : ℚ)

end A041527

/-! ## A041527.P10790921300173884973

`A041123(n)/(A000035(n)+1)`
-/

namespace A041527.P10790921300173884973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041527.P10790921300173884973

namespace A041527

/-- `A041123(n)/(A000035(n)+1)` -/
def P10790921300173884973.Spec : Prop :=
  ∀ n, P10790921300173884973.a n = (A041527 n : ℚ)

end A041527

/-! ## A041527.P14353109709383800649

`A041123(n)/A000079(n)%3`
-/

namespace A041527.P14353109709383800649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (Int.tmod (A000079 n) 3 : ℚ)

end

end A041527.P14353109709383800649

namespace A041527

/-- `A041123(n)/A000079(n)%3` -/
def P14353109709383800649.Spec : Prop :=
  ∀ n, P14353109709383800649.a n = (A041527 n : ℚ)

end A041527

/-! ## A041527.P8574935486458112909

`A041123(n)/gcd(2, A017500(n))`
-/

namespace A041527.P8574935486458112909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (Int.gcd 2 (A017500 n) : ℚ)

end

end A041527.P8574935486458112909

namespace A041527

/-- `A041123(n)/gcd(2, A017500(n))` -/
def P8574935486458112909.Spec : Prop :=
  ∀ n, P8574935486458112909.a n = (A041527 n : ℚ)

end A041527

/-! ## A041527.P10614664622169887064

`A041123(n)/gcd(4, A141310(n))`
-/

namespace A041527.P10614664622169887064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (Int.gcd 4 (A141310 n) : ℚ)

end

end A041527.P10614664622169887064

namespace A041527

/-- `A041123(n)/gcd(4, A141310(n))` -/
def P10614664622169887064.Spec : Prop :=
  ∀ n, P10614664622169887064.a n = (A041527 n : ℚ)

end A041527

/-! ## A041527.P10355915366103737741

`A041123(n)/(Δ[A004526(n)]+1)`
-/

namespace A041527.P10355915366103737741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A041527.P10355915366103737741

namespace A041527

/-- `A041123(n)/(Δ[A004526(n)]+1)` -/
def P10355915366103737741.Spec : Prop :=
  ∀ n, P10355915366103737741.a n = (A041527 n : ℚ)

end A041527

/-! ## A041527.P11095924010728365466

`A041123(n)/A041123(Δ[A004526(n)])`
-/

namespace A041527.P11095924010728365466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (A041123 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041527.P11095924010728365466

namespace A041527

/-- `A041123(n)/A041123(Δ[A004526(n)])` -/
def P11095924010728365466.Spec : Prop :=
  ∀ n, P11095924010728365466.a n = (A041527 n : ℚ)

end A041527

/-! ## A041527.P15536953410906526883

`A041123(n)/gcd(A005843(n), A007947(n+1))`
-/

namespace A041527.P15536953410906526883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (Int.gcd (A005843 n) (A007947 (n + 1)) : ℚ)

end

end A041527.P15536953410906526883

namespace A041527

/-- `A041123(n)/gcd(A005843(n), A007947(n+1))` -/
def P15536953410906526883.Spec : Prop :=
  ∀ n, P15536953410906526883.a n = (A041527 n : ℚ)

end A041527

/-!
# A041531: Denominators of continued fraction convergents to sqrt(282).

The programs for A041531, there is no canonical definition to state claims against.
-/

/-! ## A041531.P7773580655557322486

`or(A042948(n), A089520(A324374(n)))`
-/

namespace A041531.P7773580655557322486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A042948 n) (A089520 (A324374 n).toNat)

end

end A041531.P7773580655557322486

/-! ## A041531.P15902662824485473726

`A360449(A287632(n+4)+A074352(n))`
-/

namespace A041531.P15902662824485473726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360449 (A287632 (n + 4) + A074352 n).toNat

end

end A041531.P15902662824485473726

/-!
# A041537: Denominators of continued fraction convergents to sqrt(285).

The programs for A041537, there is no canonical definition to state claims against.
-/

/-! ## A041537.P13767658554847190599

`A041786(n+1)%A041787(A292125(n+1))`
-/

namespace A041537.P13767658554847190599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041786 (n + 1)) (A041787 (A292125 (n + 1)).toNat)

end

end A041537.P13767658554847190599

/-!
# A041539: Denominators of continued fraction convergents to sqrt(286).

The programs for A041539, there is no canonical definition to state claims against.
-/

/-! ## A041539.P17015480422676927199

`A261876(A211942(n+1))+A211922(n)`
-/

namespace A041539.P17015480422676927199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261876 (A211942 (n + 1)).toNat + A211922 n

end

end A041539.P17015480422676927199

/-!
# A041540: Numerators of continued fraction convergents to sqrt(287).

The programs for A041540, the canonical program `A041540.P8712831895448670463` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041540 has offset 0).

The definition of A041540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041540.P8712831895448670463

`ogf((16+17x+271x^2+288x^3+271x^4-17x^5+16x^6-x^7)/(1-576x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041540

/-- `ogf((16+17x+271x^2+288x^3+271x^4-17x^5+16x^6-x^7)/(1-576x^4+x^8))` -/
def P8712831895448670463.Spec : Prop :=
  ∀ n, P8712831895448670463.a n = A041540 n

theorem P8712831895448670463.correct : P8712831895448670463.Spec := by
  intro n
  simp only [A041540]

end A041540

/-!
# A041541: Denominators of continued fraction convergents to sqrt(287).

The programs for A041541, the canonical program `A041541.P13497465800960470372` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041541 has offset 0).

The definition of A041541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041541.P13497465800960470372

`ogf((1+x+16x^2+17x^3-16x^4+x^5-x^6)/(1-576x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041541

/-- `ogf((1+x+16x^2+17x^3-16x^4+x^5-x^6)/(1-576x^4+x^8))` -/
def P13497465800960470372.Spec : Prop :=
  ∀ n, P13497465800960470372.a n = A041541 n

theorem P13497465800960470372.correct : P13497465800960470372.Spec := by
  intro n
  simp only [A041541]

end A041541

/-!
# A041542: Numerators of continued fraction convergents to sqrt(288).

The programs for A041542, the canonical program `A041542.P17967975116226753103` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041542 has offset 0).

The definition of A041542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041542.P17967975116226753103

`ogf((16+17x+16x^2-x^3)/(1-34x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041542

/-- `ogf((16+17x+16x^2-x^3)/(1-34x^2+x^4))` -/
def P17967975116226753103.Spec : Prop :=
  ∀ n, P17967975116226753103.a n = A041542 n

theorem P17967975116226753103.correct : P17967975116226753103.Spec := by
  intro n
  simp only [A041542]

end A041542

/-! ## A041542.P4991133602929681577

`gcd(2, n)*A041126(n)`
-/

namespace A041542.P4991133602929681577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041126 n

end

end A041542.P4991133602929681577

namespace A041542

/-- `gcd(2, n)*A041126(n)` -/
def P4991133602929681577.Spec : Prop :=
  ∀ n, P4991133602929681577.a n = A041542 n

end A041542

/-! ## A041542.P9818029402463685377

`∑{d}[2+((-1)^n)^n, #]*A041026(n)`
-/

namespace A041542.P9818029402463685377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + ((-1) ^ n) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A041026 n

end

end A041542.P9818029402463685377

namespace A041542

/-- `∑{d}[2+((-1)^n)^n, #]*A041026(n)` -/
def P9818029402463685377.Spec : Prop :=
  ∀ n, P9818029402463685377.a n = A041542 n

end A041542

/-! ## A041542.P16744080618204177944

`Δ[A007494(n)]*A041126(n)`
-/

namespace A041542.P16744080618204177944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041126 n

end

end A041542.P16744080618204177944

namespace A041542

/-- `Δ[A007494(n)]*A041126(n)` -/
def P16744080618204177944.Spec : Prop :=
  ∀ n, P16744080618204177944.a n = A041542 n

end A041542

/-! ## A041542.P14011111827593792564

`A000034(n+1)*A041126(n)`
-/

namespace A041542.P14011111827593792564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041126 n

end

end A041542.P14011111827593792564

namespace A041542

/-- `A000034(n+1)*A041126(n)` -/
def P14011111827593792564.Spec : Prop :=
  ∀ n, P14011111827593792564.a n = A041542 n

end A041542

/-! ## A041542.P3293894819064663870

`2/A000034(n)*A041126(n)`
-/

namespace A041542.P3293894819064663870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041126 n : ℚ)

end

end A041542.P3293894819064663870

namespace A041542

/-- `2/A000034(n)*A041126(n)` -/
def P3293894819064663870.Spec : Prop :=
  ∀ n, P3293894819064663870.a n = (A041542 n : ℚ)

end A041542

/-! ## A041542.P15255965622043368537

`and(5, A041026(n))*A041026(n)`
-/

namespace A041542.P15255965622043368537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A041026 n) * A041026 n

end

end A041542.P15255965622043368537

namespace A041542

/-- `and(5, A041026(n))*A041026(n)` -/
def P15255965622043368537.Spec : Prop :=
  ∀ n, P15255965622043368537.a n = A041542 n

end A041542

/-! ## A041542.P5730398384598093687

`Δ[A007494(n)]²*A041026(n)`
-/

namespace A041542.P5730398384598093687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A041026 n

end

end A041542.P5730398384598093687

namespace A041542

/-- `Δ[A007494(n)]²*A041026(n)` -/
def P5730398384598093687.Spec : Prop :=
  ∀ n, P5730398384598093687.a n = A041542 n

end A041542

/-!
# A041543: Denominators of continued fraction convergents to sqrt(288).

The programs for A041543, the canonical program `A041543.P16764524027776922696` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041543 has offset 0).

The definition of A041543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041543.P8340910495667507026

`ogf((1+x-x^2)/(1-34x^2+x^4))`
-/

namespace A041543.P8340910495667507026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -34, 0, 1] n

end

end A041543.P8340910495667507026

namespace A041543

/-- `ogf((1+x-x^2)/(1-34x^2+x^4))` -/
def P8340910495667507026.Spec : Prop :=
  ∀ n, P8340910495667507026.a n = A041543 n

end A041543

/-! ## A041543.P16764524027776922696

`34*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=33, a(3)=34`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041543

/-- `34*a(n-2)-a(n-4)` -/
def P16764524027776922696.Spec : Prop :=
  ∀ n, P16764524027776922696.a n = A041543 n

theorem P16764524027776922696.correct : P16764524027776922696.Spec := by
  intro n
  simp only [A041543]

end A041543

/-! ## A041543.P5660883002373970182

`((n+1)%2+1)*A041127(n)/2`
-/

namespace A041543.P5660883002373970182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) % 2 + 1 : ℕ) : ℤ) * A041127 n : ℚ) / 2

end

end A041543.P5660883002373970182

namespace A041543

/-- `((n+1)%2+1)*A041127(n)/2` -/
def P5660883002373970182.Spec : Prop :=
  ∀ n, P5660883002373970182.a n = (A041543 n : ℚ)

end A041543

/-! ## A041543.P4865850396706609633

`A041127(n)/A000034(n)`
-/

namespace A041543.P4865850396706609633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041127 n : ℚ) / (A000034 n : ℚ)

end

end A041543.P4865850396706609633

namespace A041543

/-- `A041127(n)/A000034(n)` -/
def P4865850396706609633.Spec : Prop :=
  ∀ n, P4865850396706609633.a n = (A041543 n : ℚ)

end A041543

/-! ## A041543.P1401824994683902406

`A041127(n)/Δ[A032766(n)]`
-/

namespace A041543.P1401824994683902406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041127 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041543.P1401824994683902406

namespace A041543

/-- `A041127(n)/Δ[A032766(n)]` -/
def P1401824994683902406.Spec : Prop :=
  ∀ n, P1401824994683902406.a n = (A041543 n : ℚ)

end A041543

/-! ## A041543.P17350888287509439969

`A041127(n)/ratio[A016116(n)]`
-/

namespace A041543.P17350888287509439969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041127 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A041543.P17350888287509439969

namespace A041543

/-- `A041127(n)/ratio[A016116(n)]` -/
def P17350888287509439969.Spec : Prop :=
  ∀ n, P17350888287509439969.a n = (A041543 n : ℚ)

end A041543

/-! ## A041543.P3014610517908545049

`A041127(n)/A040001(n+1)`
-/

namespace A041543.P3014610517908545049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041127 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041543.P3014610517908545049

namespace A041543

/-- `A041127(n)/A040001(n+1)` -/
def P3014610517908545049.Spec : Prop :=
  ∀ n, P3014610517908545049.a n = (A041543 n : ℚ)

end A041543

/-! ## A041543.P13780340889602865998

`A041027(n)/gcd(4, A041027(n))`
-/

namespace A041543.P13780340889602865998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041027 n : ℚ) / (Int.gcd 4 (A041027 n) : ℚ)

end

end A041543.P13780340889602865998

namespace A041543

/-- `A041027(n)/gcd(4, A041027(n))` -/
def P13780340889602865998.Spec : Prop :=
  ∀ n, P13780340889602865998.a n = (A041543 n : ℚ)

end A041543

/-!
# A041544: Numerators of continued fraction convergents to sqrt(290).

The programs for A041544, the canonical program `A041544.P880033035995074248` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041544 has offset 0).

The definition of A041544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041544.P11866207731558804040

`ogf((17+x)/(1-34x-x^2))`
-/

namespace A041544.P11866207731558804040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [17, 1] [1, -34, -1] n

end

end A041544.P11866207731558804040

namespace A041544

/-- `ogf((17+x)/(1-34x-x^2))` -/
def P11866207731558804040.Spec : Prop :=
  ∀ n, P11866207731558804040.a n = A041544 n

end A041544

/-! ## A041544.P880033035995074248

`34*a(n-1)+a(n-2)` with `a(0)=17, a(1)=579`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041544

/-- `34*a(n-1)+a(n-2)` -/
def P880033035995074248.Spec : Prop :=
  ∀ n, (P880033035995074248.a n : ℤ) = A041544 n

theorem P880033035995074248.correct : P880033035995074248.Spec := by
  intro n
  simp only [A041544]

end A041544

/-!
# A041545: Denominators of continued fraction convergents to sqrt(290).

The programs for A041545, the canonical program `A041545.P9868295837258837890` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041545 has offset 0).

The definition of A041545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041545.P5188023204102701792

`ogf(1/(1-34x-x^2))`
-/

namespace A041545.P5188023204102701792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -34, -1] n

end

end A041545.P5188023204102701792

namespace A041545

/-- `ogf(1/(1-34x-x^2))` -/
def P5188023204102701792.Spec : Prop :=
  ∀ n, P5188023204102701792.a n = A041545 n

end A041545

/-! ## A041545.P9868295837258837890

`34*a(n-1)+a(n-2)` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041545

/-- `34*a(n-1)+a(n-2)` -/
def P9868295837258837890.Spec : Prop :=
  ∀ n, (P9868295837258837890.a n : ℤ) = A041545 n

theorem P9868295837258837890.correct : P9868295837258837890.Spec := by
  intro n
  simp only [A041545]

end A041545

/-! ## A041545.P13479012767329391244

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=34`
-/

namespace A041545.P13479012767329391244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 34] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A041545.P13479012767329391244

namespace A041545

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P13479012767329391244.Spec : Prop :=
  ∀ n, P13479012767329391244.a n = (A041545 n : ℚ)

end A041545

/-! ## A041545.P12879642988452417715

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=34`
-/

namespace A041545.P12879642988452417715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 34] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A041545.P12879642988452417715

namespace A041545

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P12879642988452417715.Spec : Prop :=
  ∀ n, P12879642988452417715.a n = A041545 n

end A041545

/-!
# A041546: Numerators of continued fraction convergents to sqrt(291).

The programs for A041546, the canonical program `A041546.P12891401969673406696` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041546 has offset 0).

The definition of A041546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041546.P12891401969673406696

`ogf((17+290x+17x^2-x^3)/(1-580x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041546

/-- `ogf((17+290x+17x^2-x^3)/(1-580x^2+x^4))` -/
def P12891401969673406696.Spec : Prop :=
  ∀ n, P12891401969673406696.a n = A041546 n

theorem P12891401969673406696.correct : P12891401969673406696.Spec := by
  intro n
  simp only [A041546]

end A041546

/-!
# A041547: Denominators of continued fraction convergents to sqrt(291).

The programs for A041547, the canonical program `A041547.P16435029769042094295` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041547 has offset 0).

The definition of A041547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041547.P16435029769042094295

`ogf((1+17x-x^2)/(1-580x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041547

/-- `ogf((1+17x-x^2)/(1-580x^2+x^4))` -/
def P16435029769042094295.Spec : Prop :=
  ∀ n, P16435029769042094295.a n = A041547 n

theorem P16435029769042094295.correct : P16435029769042094295.Spec := by
  intro n
  simp only [A041547]

end A041547

/-!
# A041555: Denominators of continued fraction convergents to sqrt(295).

The programs for A041555, there is no canonical definition to state claims against.
-/

/-! ## A041555.P2229416566862118149

`A033677(A026854(comp[(n+1)²+n]))`
-/

namespace A041555.P2229416566862118149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A026854 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A041555.P2229416566862118149

/-!
# A041559: Denominators of continued fraction convergents to sqrt(297).

The programs for A041559, there is no canonical definition to state claims against.
-/

/-! ## A041559.P5639482701858989410

`A194698(A042896(n))`
-/

namespace A041559.P5639482701858989410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A042896 n).toNat

end

end A041559.P5639482701858989410

/-! ## A041559.P1018039718662370739

`A042896(n)%A063655(A042897(n)²)`
-/

namespace A041559.P1018039718662370739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042896 n) (A063655 (A042897 n ^ 2).toNat)

end

end A041559.P1018039718662370739

/-!
# A041561: Denominators of continued fraction convergents to sqrt(298).

The programs for A041561, there is no canonical definition to state claims against.
-/

/-! ## A041561.P5737781737968216315

`∪[Δ[5^n]-1, A097271(10^n+1-9^n)]`
-/

namespace A041561.P5737781737968216315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097271 ((10 ^ n : ℤ) + (1 - (9 ^ n : ℤ))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A041561.P5737781737968216315

/-!
# A041562: Numerators of continued fraction convergents to sqrt(299).

The programs for A041562, the canonical program `A041562.P17108755239350421731` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041562 has offset 0).

The definition of A041562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041562.P17108755239350421731

`ogf((17+52x+121x^2+415x^3+121x^4-52x^5+17x^6-x^7)/(1-830x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041562

/-- `ogf((17+52x+121x^2+415x^3+121x^4-52x^5+17x^6-x^7)/(1-830x^4+x^8))` -/
def P17108755239350421731.Spec : Prop :=
  ∀ n, P17108755239350421731.a n = A041562 n

theorem P17108755239350421731.correct : P17108755239350421731.Spec := by
  intro n
  simp only [A041562]

end A041562

/-!
# A041563: Denominators of continued fraction convergents to sqrt(299).

The programs for A041563, the canonical program `A041563.P8950862397391013436` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041563 has offset 0).

The definition of A041563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041563.P8950862397391013436

`ogf((1+3x+7x^2+24x^3-7x^4+3x^5-x^6)/(1-830x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041563

/-- `ogf((1+3x+7x^2+24x^3-7x^4+3x^5-x^6)/(1-830x^4+x^8))` -/
def P8950862397391013436.Spec : Prop :=
  ∀ n, P8950862397391013436.a n = A041563 n

theorem P8950862397391013436.correct : P8950862397391013436.Spec := by
  intro n
  simp only [A041563]

end A041563

/-!
# A041569: Denominators of continued fraction convergents to sqrt(302).

The programs for A041569, there is no canonical definition to state claims against.
-/

/-! ## A041569.P11580991122356114274

`A093873(A099970(n))`
-/

namespace A041569.P11580991122356114274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A099970 n).toNat

end

end A041569.P11580991122356114274

/-!
# A041571: Denominators of continued fraction convergents to sqrt(303).

The programs for A041571, there is no canonical definition to state claims against.
-/

/-! ## A041571.P13336303479135431461

`A279344(A136279(n+1)+n)`
-/

namespace A041571.P13336303479135431461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A136279 (n + 1) + (n : ℤ)).toNat

end

end A041571.P13336303479135431461

/-!
# A041573: Denominators of continued fraction convergents to sqrt(304).

The programs for A041573, there is no canonical definition to state claims against.
-/

/-! ## A041573.P17569068645045314887

`A022106(A004914(n+1))%A022120(n)`
-/

namespace A041573.P17569068645045314887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022106 (A004914 (n + 1)).toNat) (A022120 n)

end

end A041573.P17569068645045314887

/-!
# A041574: Numerators of continued fraction convergents to sqrt(305).

The programs for A041574, the canonical program `A041574.P13413354022334547587` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041574 has offset 0).

The definition of A041574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041574.P13413354022334547587

`ogf((17+35x+227x^2+489x^3+227x^4-35x^5+17x^6-x^7)/(1-978x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041574

/-- `ogf((17+35x+227x^2+489x^3+227x^4-35x^5+17x^6-x^7)/(1-978x^4+x^8))` -/
def P13413354022334547587.Spec : Prop :=
  ∀ n, P13413354022334547587.a n = A041574 n

theorem P13413354022334547587.correct : P13413354022334547587.Spec := by
  intro n
  simp only [A041574]

end A041574

/-!
# A041575: Denominators of continued fraction convergents to sqrt(305).

The programs for A041575, the canonical program `A041575.P8330549800298713460` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041575 has offset 0).

The definition of A041575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041575.P8330549800298713460

`ogf((1+2x+13x^2+28x^3-13x^4+2x^5-x^6)/(1-978x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041575

/-- `ogf((1+2x+13x^2+28x^3-13x^4+2x^5-x^6)/(1-978x^4+x^8))` -/
def P8330549800298713460.Spec : Prop :=
  ∀ n, P8330549800298713460.a n = A041575 n

theorem P8330549800298713460.correct : P8330549800298713460.Spec := by
  intro n
  simp only [A041575]

end A041575

/-!
# A041576: Numerators of continued fraction convergents to sqrt(306).

The programs for A041576, the canonical program `A041576.P6080802460357929324` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041576 has offset 0).

The definition of A041576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041576.P6080802460357929324

`ogf((17+35x+17x^2-x^3)/(1-70x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041576

/-- `ogf((17+35x+17x^2-x^3)/(1-70x^2+x^4))` -/
def P6080802460357929324.Spec : Prop :=
  ∀ n, P6080802460357929324.a n = A041576 n

theorem P6080802460357929324.correct : P6080802460357929324.Spec := by
  intro n
  simp only [A041576]

end A041576

/-!
# A041577: Denominators of continued fraction convergents to sqrt(306).

The programs for A041577, the canonical program `A041577.P544785945498735798` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041577 has offset 0).

The definition of A041577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041577.P16664670084306617685

`ogf((1+2x-x^2)/(1-70x^2+x^4))`
-/

namespace A041577.P16664670084306617685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -70, 0, 1] n

end

end A041577.P16664670084306617685

namespace A041577

/-- `ogf((1+2x-x^2)/(1-70x^2+x^4))` -/
def P16664670084306617685.Spec : Prop :=
  ∀ n, P16664670084306617685.a n = A041577 n

end A041577

/-! ## A041577.P544785945498735798

`70*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=69, a(3)=140`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041577

/-- `70*a(n-2)-a(n-4)` -/
def P544785945498735798.Spec : Prop :=
  ∀ n, P544785945498735798.a n = A041577 n

theorem P544785945498735798.correct : P544785945498735798.Spec := by
  intro n
  simp only [A041577]

end A041577

/-!
# A041579: Denominators of continued fraction convergents to sqrt(307).

The programs for A041579, there is no canonical definition to state claims against.
-/

/-! ## A041579.P10111525935894479335

`A194698(A041800(n))`
-/

namespace A041579.P10111525935894479335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A041800 n).toNat

end

end A041579.P10111525935894479335

/-!
# A041580: Numerators of continued fraction convergents to sqrt(308).

The programs for A041580, the canonical program `A041580.P2007781096684343928` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041580 has offset 0).

The definition of A041580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041580.P2007781096684343928

`ogf((17+18x+35x^2+158x^3+193x^4+351x^5+193x^6-158x^7+35x^8-18x^9+17x^10-x^11)/(1-702x^6+x^12))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041580

/-- `ogf((17+18x+35x^2+158x^3+193x^4+351x^5+193x^6-158x^7+35x^8-18x^9+17x^10-x^11)/(1-702x^6+x^12))` -/
def P2007781096684343928.Spec : Prop :=
  ∀ n, P2007781096684343928.a n = A041580 n

theorem P2007781096684343928.correct : P2007781096684343928.Spec := by
  intro n
  simp only [A041580]

end A041580

/-!
# A041581: Denominators of continued fraction convergents to sqrt(308).

The programs for A041581, the canonical program `A041581.P8700521349599848660` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041581 has offset 0).

The definition of A041581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041581.P8700521349599848660

`ogf((1+x+2x^2+9x^3+11x^4+20x^5-11x^6+9x^7-2x^8+x^9-x^10)/(1-702x^6+x^12))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041581

/-- `ogf((1+x+2x^2+9x^3+11x^4+20x^5-11x^6+9x^7-2x^8+x^9-x^10)/(1-702x^6+x^12))` -/
def P8700521349599848660.Spec : Prop :=
  ∀ n, P8700521349599848660.a n = A041581 n

theorem P8700521349599848660.correct : P8700521349599848660.Spec := by
  intro n
  simp only [A041581]

end A041581

/-!
# A041588: Numerators of continued fraction convergents to sqrt(312).

The programs for A041588, the canonical program `A041588.P5205327415122672903` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041588 has offset 0).

The definition of A041588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041588.P5205327415122672903

`ogf((17+18x+35x^2+53x^3+35x^4-18x^5+17x^6-x^7)/(1-106x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041588

/-- `ogf((17+18x+35x^2+53x^3+35x^4-18x^5+17x^6-x^7)/(1-106x^4+x^8))` -/
def P5205327415122672903.Spec : Prop :=
  ∀ n, P5205327415122672903.a n = A041588 n

theorem P5205327415122672903.correct : P5205327415122672903.Spec := by
  intro n
  simp only [A041588]

end A041588

/-!
# A041589: Denominators of continued fraction convergents to sqrt(312).

The programs for A041589, the canonical program `A041589.P14866040070306637471` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041589 has offset 0).

The definition of A041589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041589.P14866040070306637471

`106*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=104, a(5)=107, a(6)=211, a(7)=318`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041589

/-- `106*a(n-4)-a(n-8)` -/
def P14866040070306637471.Spec : Prop :=
  ∀ n, P14866040070306637471.a n = A041589 n

theorem P14866040070306637471.correct : P14866040070306637471.Spec := by
  intro n
  simp only [A041589]

end A041589

/-! ## A041589.P2873177622812947800

`ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-106x^4+x^8))`
-/

namespace A041589.P2873177622812947800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 3, -2, 1, -1] [1, 0, 0, 0, -106, 0, 0, 0, 1] n

end

end A041589.P2873177622812947800

namespace A041589

/-- `ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-106x^4+x^8))` -/
def P2873177622812947800.Spec : Prop :=
  ∀ n, P2873177622812947800.a n = A041589 n

end A041589

/-! ## A041589.P7640442301653019923

`A004525(A041813(n)+A041401(n))`
-/

namespace A041589.P7640442301653019923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041813 n + A041401 n).toNat

end

end A041589.P7640442301653019923

namespace A041589

/-- `A004525(A041813(n)+A041401(n))` -/
def P7640442301653019923.Spec : Prop :=
  ∀ n, P7640442301653019923.a n = A041589 n

end A041589

/-!
# A041591: Denominators of continued fraction convergents to sqrt(313).

The programs for A041591, there is no canonical definition to state claims against.
-/

/-! ## A041591.P17426723603744228690

`A336590(A002486(n)+n)`
-/

namespace A041591.P17426723603744228690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (A002486 n + (n : ℤ)).toNat

end

end A041591.P17426723603744228690

/-!
# A041592: Numerators of continued fraction convergents to sqrt(314).

The programs for A041592, the canonical program `A041592.P9112581468993484237` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041592 has offset 0).

The definition of A041592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041592.P9112581468993484237

`ogf((17+18x+53x^2+71x^3+124x^4+319x^5+443x^6+319x^7-124x^8+71x^9-53x^10+18x^11-17x^12+x^13)/(1-886x^7-x^14))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041592

/-- `ogf((17+18x+53x^2+71x^3+124x^4+319x^5+443x^6+319x^7-124x^8+71x^9-53x^10+18x^11-17x^12+x^13)/(1-886x^7-x^14))` -/
def P9112581468993484237.Spec : Prop :=
  ∀ n, P9112581468993484237.a n = A041592 n

theorem P9112581468993484237.correct : P9112581468993484237.Spec := by
  intro n
  simp only [A041592]

end A041592

/-!
# A041593: Denominators of continued fraction convergents to sqrt(314).

The programs for A041593, the canonical program `A041593.P10494356657372404152` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041593 has offset 0).

The definition of A041593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041593.P10494356657372404152

`ogf((1+x+3x^2+4x^3+7x^4+18x^5+25x^6-18x^7+7x^8-4x^9+3x^10-x^11+x^12)/(1-886x^7-x^14))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041593

/-- `ogf((1+x+3x^2+4x^3+7x^4+18x^5+25x^6-18x^7+7x^8-4x^9+3x^10-x^11+x^12)/(1-886x^7-x^14))` -/
def P10494356657372404152.Spec : Prop :=
  ∀ n, P10494356657372404152.a n = A041593 n

theorem P10494356657372404152.correct : P10494356657372404152.Spec := by
  intro n
  simp only [A041593]

end A041593

/-!
# A041594: Numerators of continued fraction convergents to sqrt(315).

The programs for A041594, the canonical program `A041594.P17749284863470477240` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041594 has offset 0).

The definition of A041594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041594.P17749284863470477240

`ogf((17+18x+53x^2+71x^3+53x^4-18x^5+17x^6-x^7)/(1-142x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041594

/-- `ogf((17+18x+53x^2+71x^3+53x^4-18x^5+17x^6-x^7)/(1-142x^4+x^8))` -/
def P17749284863470477240.Spec : Prop :=
  ∀ n, P17749284863470477240.a n = A041594 n

theorem P17749284863470477240.correct : P17749284863470477240.Spec := by
  intro n
  simp only [A041594]

end A041594

/-!
# A041595: Denominators of continued fraction convergents to sqrt(315).

The programs for A041595, the canonical program `A041595.P2806147427049675241` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041595 has offset 0).

The definition of A041595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041595.P2806147427049675241

`142*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=139, a(5)=143, a(6)=425, a(7)=568`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041595

/-- `142*a(n-4)-a(n-8)` -/
def P2806147427049675241.Spec : Prop :=
  ∀ n, P2806147427049675241.a n = A041595 n

theorem P2806147427049675241.correct : P2806147427049675241.Spec := by
  intro n
  simp only [A041595]

end A041595

/-! ## A041595.P17610372196723612068

`ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-142x^4+x^8))`
-/

namespace A041595.P17610372196723612068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 4, -3, 1, -1] [1, 0, 0, 0, -142, 0, 0, 0, 1] n

end

end A041595.P17610372196723612068

namespace A041595

/-- `ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-142x^4+x^8))` -/
def P17610372196723612068.Spec : Prop :=
  ∀ n, P17610372196723612068.a n = A041595 n

end A041595

/-! ## A041595.P259976062148503018

`A292579(A042485(n))`
-/

namespace A041595.P259976062148503018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (A042485 n).toNat

end

end A041595.P259976062148503018

namespace A041595

/-- `A292579(A042485(n))` -/
def P259976062148503018.Spec : Prop :=
  ∀ n, P259976062148503018.a n = A041595 n

end A041595

/-!
# A041597: Denominators of continued fraction convergents to sqrt(316).

The programs for A041597, there is no canonical definition to state claims against.
-/

/-! ## A041597.P15115578052602380586

`A217294(∑[n²-1]+2)`
-/

namespace A041597.P15115578052602380586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217294 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A041597.P15115578052602380586

/-!
# A041599: Denominators of continued fraction convergents to sqrt(317).

The programs for A041599, there is no canonical definition to state claims against.
-/

/-! ## A041599.P13631190980693531529

`A108500(A108435(n+1))+A108489(n)`
-/

namespace A041599.P13631190980693531529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108500 (A108435 (n + 1)).toNat + A108489 n

end

end A041599.P13631190980693531529

