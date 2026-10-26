import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C028
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

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
# A041505: Denominators of continued fraction convergents to sqrt(269).

The programs for A041505, the canonical program `A041505.P5522797116918286836` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041505 has offset 0).

The definition of A041505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041505.P5522797116918286836

`164*a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=162, a(4)=329, a(5)=820`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041505

/-- `164*a(n-3)+a(n-6)` -/
def P5522797116918286836.Spec : Prop :=
  ∀ n, (P5522797116918286836.a n : ℤ) = A041505 n

theorem P5522797116918286836.correct : P5522797116918286836.Spec := by
  intro n
  simp only [A041505]

end A041505

/-!
# A041507: Denominators of continued fraction convergents to sqrt(270).

The programs for A041507, there is no canonical definition to state claims against.
-/

/-! ## A041507.P6526442567905541625

`A194640(A194680(2*n+1)+A194650(n+1))`
-/

namespace A041507.P6526442567905541625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A194680 (2 * n + 1) + A194650 (n + 1)).toNat

end

end A041507.P6526442567905541625

/-!
# A041510: Numerators of continued fraction convergents to sqrt(272).

The programs for A041510, the canonical program `A041510.P6868064237641329744` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041510 has offset 0).

The definition of A041510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041510.P6868064237641329744

`gcd(2, n)²*A041024(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041510

/-- `gcd(2, n)²*A041024(n)` -/
def P6868064237641329744.Spec : Prop :=
  ∀ n, P6868064237641329744.a n = A041510 n

theorem P6868064237641329744.correct : P6868064237641329744.Spec := by
  intro n
  simp only [A041510]

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

The programs for A041511, the canonical program `A041511.P6997673176157051633` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041511 has offset 0).

The definition of A041511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041511.P6997673176157051633

`66*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=65, a(3)=132`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041511

/-- `66*a(n-2)-a(n-4)` -/
def P6997673176157051633.Spec : Prop :=
  ∀ n, P6997673176157051633.a n = A041511 n

theorem P6997673176157051633.correct : P6997673176157051633.Spec := by
  intro n
  simp only [A041511]

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

The programs for A041516, there is no canonical definition to state claims against.
-/

/-! ## A041516.P4423223086766601924

`A138466(A041974(n))`
-/

namespace A041516.P4423223086766601924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138466 (A041974 n).toNat

end

end A041516.P4423223086766601924

/-!
# A041517: Denominators of continued fraction convergents to sqrt(275).

The programs for A041517, there is no canonical definition to state claims against.
-/

/-! ## A041517.P12944824413162050803

`A176506(A000142(n)*A295511(n+1))`
-/

namespace A041517.P12944824413162050803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (A000142 n * A295511 (n + 1)).toNat

end

end A041517.P12944824413162050803

/-! ## A041517.P1523856105946966015

`A151702(A302344(n+1)+A089986(n+1))`
-/

namespace A041517.P1523856105946966015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (A302344 (n + 1) + A089986 (n + 1)).toNat

end

end A041517.P1523856105946966015

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

The programs for A041526, there is no canonical definition to state claims against.
-/

/-! ## A041526.P17358919136262037836

`gcd(2, n)*A041122(n)`
-/

namespace A041526.P17358919136262037836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041122 n

end

end A041526.P17358919136262037836

/-! ## A041526.P3756106819037298861

`A000034(n+1)*A041122(n)`
-/

namespace A041526.P3756106819037298861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041122 n

end

end A041526.P3756106819037298861

/-! ## A041526.P1953642766091937674

`A040001(n+2)*A041122(n)`
-/

namespace A041526.P1953642766091937674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041122 n

end

end A041526.P1953642766091937674

/-! ## A041526.P9029522757571193191

`(3-A000034(n))*A041122(n)`
-/

namespace A041526.P9029522757571193191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041122 n

end

end A041526.P9029522757571193191

/-! ## A041526.P3603342760305521293

`A041122(n)*A193267(A193267(n+1)+1)`
-/

namespace A041526.P3603342760305521293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041122 n * A193267 (A193267 (n + 1) + 1).toNat

end

end A041526.P3603342760305521293

/-!
# A041527: Denominators of continued fraction convergents to sqrt(280).

The programs for A041527, there is no canonical definition to state claims against.
-/

/-! ## A041527.P14714294251761646738

`A041123(n)/A000034(n)`
-/

namespace A041527.P14714294251761646738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (A000034 n : ℚ)

end

end A041527.P14714294251761646738

/-! ## A041527.P14353109709383800649

`A041123(n)/A000079(n)%3`
-/

namespace A041527.P14353109709383800649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (Int.tmod (A000079 n) 3 : ℚ)

end

end A041527.P14353109709383800649

/-! ## A041527.P8574935486458112909

`A041123(n)/gcd(2, A017500(n))`
-/

namespace A041527.P8574935486458112909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (Int.gcd 2 (A017500 n) : ℚ)

end

end A041527.P8574935486458112909

/-! ## A041527.P10614664622169887064

`A041123(n)/gcd(4, A141310(n))`
-/

namespace A041527.P10614664622169887064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (Int.gcd 4 (A141310 n) : ℚ)

end

end A041527.P10614664622169887064

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

/-! ## A041527.P15536953410906526883

`A041123(n)/gcd(A005843(n), A007947(n+1))`
-/

namespace A041527.P15536953410906526883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 n : ℚ) / (Int.gcd (A005843 n) (A007947 (n + 1)) : ℚ)

end

end A041527.P15536953410906526883

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
# A041541: Denominators of continued fraction convergents to sqrt(287).

The programs for A041541, there is no canonical definition to state claims against.
-/

/-! ## A041541.P5485824085653722878

`A140106(A041543(n))+1`
-/

namespace A041541.P5485824085653722878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A041543 n).toNat + 1

end

end A041541.P5485824085653722878

/-!
# A041542: Numerators of continued fraction convergents to sqrt(288).

The programs for A041542, the canonical program `A041542.P4991133602929681577` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041542 has offset 0).

The definition of A041542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041542.P4991133602929681577

`gcd(2, n)*A041126(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A041542

/-- `gcd(2, n)*A041126(n)` -/
def P4991133602929681577.Spec : Prop :=
  ∀ n, P4991133602929681577.a n = A041542 n

theorem P4991133602929681577.correct : P4991133602929681577.Spec := by
  intro n
  simp only [A041542]

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

The programs for A041543, the canonical program `A041543.P16764524027776922696` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041543 has offset 0).

The definition of A041543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041543.P16764524027776922696

`34*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=33, a(3)=34`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041543

/-- `34*a(n-2)-a(n-4)` -/
def P16764524027776922696.Spec : Prop :=
  ∀ n, P16764524027776922696.a n = A041543 n

theorem P16764524027776922696.correct : P16764524027776922696.Spec := by
  intro n
  simp only [A041543]

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

The programs for A041544, the canonical program `A041544.P880033035995074248` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041544 has offset 0).

The definition of A041544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041544.P880033035995074248

`34*a(n-1)+a(n-2)` with `a(0)=17, a(1)=579`

The canonical program, it is in `Seq.B000.C007`.
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

The programs for A041545, the canonical program `A041545.P9868295837258837890` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041545 has offset 0).

The definition of A041545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041545.P9868295837258837890

`34*a(n-1)+a(n-2)` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041545

/-- `34*a(n-1)+a(n-2)` -/
def P9868295837258837890.Spec : Prop :=
  ∀ n, (P9868295837258837890.a n : ℤ) = A041545 n

theorem P9868295837258837890.correct : P9868295837258837890.Spec := by
  intro n
  simp only [A041545]

end A041545

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

/-! ## A041569.P6158668587156771789

`A093873(A099969(n)/2)`
-/

namespace A041569.P6158668587156771789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (SequenceMachineLib.roundAway ((A099969 n : ℚ) / 2)).toNat

end

end A041569.P6158668587156771789

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
# A041577: Denominators of continued fraction convergents to sqrt(306).

The programs for A041577, the canonical program `A041577.P544785945498735798` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041577 has offset 0).

The definition of A041577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041577.P544785945498735798

`70*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=69, a(3)=140`

The canonical program, it is in `Seq.B000.C007`.
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

The programs for A041580, there is no canonical definition to state claims against.
-/

/-! ## A041580.P5152849601885594182

`A032509(A042462(n))`
-/

namespace A041580.P5152849601885594182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032509 (A042462 n).toNat

end

end A041580.P5152849601885594182

/-!
# A041588: Numerators of continued fraction convergents to sqrt(312).

The programs for A041588, there is no canonical definition to state claims against.
-/

/-! ## A041588.P10764729974345964387

`A004277(A041600(n))-A041604(n)`
-/

namespace A041588.P10764729974345964387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041600 n).toNat - A041604 n

end

end A041588.P10764729974345964387

/-!
# A041589: Denominators of continued fraction convergents to sqrt(312).

The programs for A041589, the canonical program `A041589.P14866040070306637471` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041589 has offset 0).

The definition of A041589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041589.P14866040070306637471

`106*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=104, a(5)=107, a(6)=211, a(7)=318`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041589

/-- `106*a(n-4)-a(n-8)` -/
def P14866040070306637471.Spec : Prop :=
  ∀ n, P14866040070306637471.a n = A041589 n

theorem P14866040070306637471.correct : P14866040070306637471.Spec := by
  intro n
  simp only [A041589]

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

/-! ## A041589.P456980056127379639

`A004526(A041813(n)+A041401(n))`
-/

namespace A041589.P456980056127379639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A041813 n + A041401 n).toNat

end

end A041589.P456980056127379639

namespace A041589

/-- `A004526(A041813(n)+A041401(n))` -/
def P456980056127379639.Spec : Prop :=
  ∀ n, P456980056127379639.a n = A041589 n

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
# A041595: Denominators of continued fraction convergents to sqrt(315).

The programs for A041595, the canonical program `A041595.P2806147427049675241` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041595 has offset 0).

The definition of A041595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041595.P2806147427049675241

`142*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=139, a(5)=143, a(6)=425, a(7)=568`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041595

/-- `142*a(n-4)-a(n-8)` -/
def P2806147427049675241.Spec : Prop :=
  ∀ n, P2806147427049675241.a n = A041595 n

theorem P2806147427049675241.correct : P2806147427049675241.Spec := by
  intro n
  simp only [A041595]

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

/-! ## A041595.P274503650941553160

`A001281(A041741(n)+A041465(n))`
-/

namespace A041595.P274503650941553160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041741 n + A041465 n).toNat

end

end A041595.P274503650941553160

namespace A041595

/-- `A001281(A041741(n)+A041465(n))` -/
def P274503650941553160.Spec : Prop :=
  ∀ n, P274503650941553160.a n = A041595 n

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

