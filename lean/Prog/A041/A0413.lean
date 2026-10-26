import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C002
import Seq.B005.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A041302: Numerators of continued fraction convergents to sqrt(164).

The programs for A041302, there is no canonical definition to state claims against.
-/

/-! ## A041302.P5462183543836458071

`gcd(2, n)*A041068(n)`
-/

namespace A041302.P5462183543836458071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041068 n

end

end A041302.P5462183543836458071

/-! ## A041302.P3241690579258112114

`A000034(n+1)*A041068(n)`
-/

namespace A041302.P3241690579258112114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041068 n

end

end A041302.P3241690579258112114

/-! ## A041302.P7663433869829858751

`2/A000034(n)*A041068(n)`
-/

namespace A041302.P7663433869829858751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041068 n : ℚ)

end

end A041302.P7663433869829858751

/-! ## A041302.P17447828599974941557

`(Δ[A047209(n+1)]-1)*A041068(n)`
-/

namespace A041302.P17447828599974941557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1) * A041068 n

end

end A041302.P17447828599974941557

/-! ## A041302.P11117920624669712491

`A008554(Δ[A047209(n+1)])*A041068(n)`
-/

namespace A041302.P11117920624669712491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (f1 (n + 1) - f1 n).toNat * A041068 n

end

end A041302.P11117920624669712491

/-! ## A041302.P8570328682056995616

`A041068(n)*A083952(A167301(n+1))`
-/

namespace A041302.P8570328682056995616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041068 n * A083952 (A167301 (n + 1)).toNat

end

end A041302.P8570328682056995616

/-!
# A041303: Denominators of continued fraction convergents to sqrt(164).

The programs for A041303, the canonical program `A041303.P6555737607842090651` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041303 has offset 0).

The definition of A041303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041303.P6555737607842090651

`A041069(n)/gcd(2, n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041303

/-- `A041069(n)/gcd(2, n+1)` -/
def P6555737607842090651.Spec : Prop :=
  ∀ n, P6555737607842090651.a n = (A041303 n : ℚ)

end A041303

/-! ## A041303.P11170663683533787576

`A041069(n)/A000034(n)`
-/

namespace A041303.P11170663683533787576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041069 n : ℚ) / (A000034 n : ℚ)

end

end A041303.P11170663683533787576

namespace A041303

/-- `A041069(n)/A000034(n)` -/
def P11170663683533787576.Spec : Prop :=
  ∀ n, P11170663683533787576.a n = (A041303 n : ℚ)

end A041303

/-! ## A041303.P1777470702149459547

`A041069(n)/(A000035(n)+1)`
-/

namespace A041303.P1777470702149459547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041069 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041303.P1777470702149459547

namespace A041303

/-- `A041069(n)/(A000035(n)+1)` -/
def P1777470702149459547.Spec : Prop :=
  ∀ n, P1777470702149459547.a n = (A041303 n : ℚ)

end A041303

/-! ## A041303.P12901955177002688193

`A041069(n)/A040001(n+1)`
-/

namespace A041303.P12901955177002688193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041069 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041303.P12901955177002688193

namespace A041303

/-- `A041069(n)/A040001(n+1)` -/
def P12901955177002688193.Spec : Prop :=
  ∀ n, P12901955177002688193.a n = (A041303 n : ℚ)

end A041303

/-! ## A041303.P9512683648393777071

`A041069(n)/A035214(A327832(3*n+2))`
-/

namespace A041303.P9512683648393777071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041069 n : ℚ) / (A035214 (A327832 (3 * n + 2)).toNat : ℚ)

end

end A041303.P9512683648393777071

namespace A041303

/-- `A041069(n)/A035214(A327832(3*n+2))` -/
def P9512683648393777071.Spec : Prop :=
  ∀ n, P9512683648393777071.a n = (A041303 n : ℚ)

end A041303

/-! ## A041303.P15637849895639181528

`A041069(n)/A006519(n²+1)`
-/

namespace A041303.P15637849895639181528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041069 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041303.P15637849895639181528

namespace A041303

/-- `A041069(n)/A006519(n²+1)` -/
def P15637849895639181528.Spec : Prop :=
  ∀ n, P15637849895639181528.a n = (A041303 n : ℚ)

end A041303

/-!
# A041308: Numerators of continued fraction convergents to sqrt(167).

The programs for A041308, there is no canonical definition to state claims against.
-/

/-! ## A041308.P17760815277549456597

`A004526(lcm(A042284(n), A043529(n)))`
-/

namespace A041308.P17760815277549456597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm (A042284 n) (A043529 n))

end

end A041308.P17760815277549456597

/-!
# A041309: Denominators of continued fraction convergents to sqrt(167).

The programs for A041309, there is no canonical definition to state claims against.
-/

/-! ## A041309.P16060619182418095627

`A140106(A041311(n))+1`
-/

namespace A041309.P16060619182418095627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A041311 n).toNat + 1

end

end A041309.P16060619182418095627

/-!
# A041310: Numerators of continued fraction convergents to sqrt(168).

The programs for A041310, there is no canonical definition to state claims against.
-/

/-! ## A041310.P12783147529016137946

`gcd(2, n)*A041070(n)`
-/

namespace A041310.P12783147529016137946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041070 n

end

end A041310.P12783147529016137946

/-! ## A041310.P16559409194433011746

`A000034(n+1)*A041070(n)`
-/

namespace A041310.P16559409194433011746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041070 n

end

end A041310.P16559409194433011746

/-! ## A041310.P17646211606774144830

`A041070(n)*A084642(n+3)`
-/

namespace A041310.P17646211606774144830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041070 n * A084642 (n + 3)

end

end A041310.P17646211606774144830

/-! ## A041310.P4585996008765136088

`(3-A000034(n))*A041070(n)`
-/

namespace A041310.P4585996008765136088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041070 n

end

end A041310.P4585996008765136088

/-! ## A041310.P14099709204662788989

`A014710(2*n)*A041070(n)`
-/

namespace A041310.P14099709204662788989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 (2 * n) * A041070 n

end

end A041310.P14099709204662788989

/-! ## A041310.P15206761351621413264

`(2-Δ[A004526(n)])*A041070(n)`
-/

namespace A041310.P15206761351621413264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A041070 n

end

end A041310.P15206761351621413264

/-! ## A041310.P11424355539377680178

`A041070(n)*A051699(Δ[A004526(n)])`
-/

namespace A041310.P11424355539377680178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041070 n * A051699 (f1 (n + 1) - f1 n).toNat

end

end A041310.P11424355539377680178

/-!
# A041311: Denominators of continued fraction convergents to sqrt(168).

The programs for A041311, the canonical program `A041311.P2325186195107379565` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041311 has offset 0).

The definition of A041311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041311.P2325186195107379565

`26*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=25, a(3)=26`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041311

/-- `26*a(n-2)-a(n-4)` -/
def P2325186195107379565.Spec : Prop :=
  ∀ n, P2325186195107379565.a n = A041311 n

theorem P2325186195107379565.correct : P2325186195107379565.Spec := by
  intro n
  simp only [A041311]

end A041311

/-! ## A041311.P449022323878045026

`ceil(A041071(n)/A084642(n))`
-/

namespace A041311.P449022323878045026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041071 n : ℚ) / (A084642 n : ℚ)⌉

end

end A041311.P449022323878045026

namespace A041311

/-- `ceil(A041071(n)/A084642(n))` -/
def P449022323878045026.Spec : Prop :=
  ∀ n, P449022323878045026.a n = A041311 n

end A041311

/-! ## A041311.P18359962260198993248

`A041071(n)/Δ[A032766(n)]`
-/

namespace A041311.P18359962260198993248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041071 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041311.P18359962260198993248

namespace A041311

/-- `A041071(n)/Δ[A032766(n)]` -/
def P18359962260198993248.Spec : Prop :=
  ∀ n, P18359962260198993248.a n = (A041311 n : ℚ)

end A041311

/-! ## A041311.P10231030575550086217

`A041071(n)/A084642(n+2)`
-/

namespace A041311.P10231030575550086217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041071 n : ℚ) / (A084642 (n + 2) : ℚ)

end

end A041311.P10231030575550086217

namespace A041311

/-- `A041071(n)/A084642(n+2)` -/
def P10231030575550086217.Spec : Prop :=
  ∀ n, P10231030575550086217.a n = (A041311 n : ℚ)

end A041311

/-! ## A041311.P4108179374796169622

`1/A084642(A112594(n))*A041071(n)`
-/

namespace A041311.P4108179374796169622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A084642 (A112594 n).toNat : ℚ) * (A041071 n : ℚ)

end

end A041311.P4108179374796169622

namespace A041311

/-- `1/A084642(A112594(n))*A041071(n)` -/
def P4108179374796169622.Spec : Prop :=
  ∀ n, P4108179374796169622.a n = (A041311 n : ℚ)

end A041311

/-! ## A041311.P15363176419874206369

`A041071(n)/A001511(A002522(n))`
-/

namespace A041311.P15363176419874206369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041071 n : ℚ) / (A001511 (A002522 n).toNat : ℚ)

end

end A041311.P15363176419874206369

namespace A041311

/-- `A041071(n)/A001511(A002522(n))` -/
def P15363176419874206369.Spec : Prop :=
  ∀ n, P15363176419874206369.a n = (A041311 n : ℚ)

end A041311

/-!
# A041312: Numerators of continued fraction convergents to sqrt(170).

The programs for A041312, the canonical program `A041312.P15883561088714022904` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041312 has offset 0).

The definition of A041312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041312.P15883561088714022904

`26*a(n-1)+a(n-2)` with `a(0)=13, a(1)=339`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041312

/-- `26*a(n-1)+a(n-2)` -/
def P15883561088714022904.Spec : Prop :=
  ∀ n, (P15883561088714022904.a n : ℤ) = A041312 n

theorem P15883561088714022904.correct : P15883561088714022904.Spec := by
  intro n
  simp only [A041312]

end A041312

/-! ## A041312.P6698035914937693852

`A042306(n)/gcd(2, n)`
-/

namespace A041312.P6698035914937693852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042306 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041312.P6698035914937693852

namespace A041312

/-- `A042306(n)/gcd(2, n)` -/
def P6698035914937693852.Spec : Prop :=
  ∀ n, P6698035914937693852.a n = (A041312 n : ℚ)

end A041312

/-! ## A041312.P9006180975618444877

`A042306(n)/A000034(n+1)`
-/

namespace A041312.P9006180975618444877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042306 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041312.P9006180975618444877

namespace A041312

/-- `A042306(n)/A000034(n+1)` -/
def P9006180975618444877.Spec : Prop :=
  ∀ n, P9006180975618444877.a n = (A041312 n : ℚ)

end A041312

/-! ## A041312.P9389679352607819594

`A000034(n)/2*A042306(n)`
-/

namespace A041312.P9389679352607819594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042306 n : ℚ)

end

end A041312.P9389679352607819594

namespace A041312

/-- `A000034(n)/2*A042306(n)` -/
def P9389679352607819594.Spec : Prop :=
  ∀ n, P9389679352607819594.a n = (A041312 n : ℚ)

end A041312

/-! ## A041312.P7615903409768746241

`A042306(n)/A122458((n+1)²)`
-/

namespace A041312.P7615903409768746241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042306 n : ℚ) / (A122458 ((n + 1) ^ 2) : ℚ)

end

end A041312.P7615903409768746241

namespace A041312

/-- `A042306(n)/A122458((n+1)²)` -/
def P7615903409768746241.Spec : Prop :=
  ∀ n, P7615903409768746241.a n = (A041312 n : ℚ)

end A041312

/-!
# A041313: Denominators of continued fraction convergents to sqrt(170).

The programs for A041313, the canonical program `A041313.P6128928753998715381` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041313 has offset 0).

The definition of A041313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041313.P6128928753998715381

`26*a(n-1)+a(n-2)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041313

/-- `26*a(n-1)+a(n-2)` -/
def P6128928753998715381.Spec : Prop :=
  ∀ n, (P6128928753998715381.a n : ℤ) = A041313 n

theorem P6128928753998715381.correct : P6128928753998715381.Spec := by
  intro n
  simp only [A041313]

end A041313

/-! ## A041313.P16268486400412578541

`ogf(1/(1-26x-x^2))`
-/

namespace A041313.P16268486400412578541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -26, -1] n

end

end A041313.P16268486400412578541

namespace A041313

/-- `ogf(1/(1-26x-x^2))` -/
def P16268486400412578541.Spec : Prop :=
  ∀ n, P16268486400412578541.a n = A041313 n

end A041313

/-! ## A041313.P13921999464010885615

`A000034(n)*A042307(n)`
-/

namespace A041313.P13921999464010885615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042307 n

end

end A041313.P13921999464010885615

namespace A041313

/-- `A000034(n)*A042307(n)` -/
def P13921999464010885615.Spec : Prop :=
  ∀ n, P13921999464010885615.a n = A041313 n

end A041313

/-! ## A041313.P15879750600738978627

`A010673(n)!*A042307(n)`
-/

namespace A041313.P15879750600738978627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010673 n).toNat : ℤ) * A042307 n

end

end A041313.P15879750600738978627

namespace A041313

/-- `A010673(n)!*A042307(n)` -/
def P15879750600738978627.Spec : Prop :=
  ∀ n, P15879750600738978627.a n = A041313 n

end A041313

/-! ## A041313.P297901937540891236

`Δ[A032766(n)]*A042307(n)`
-/

namespace A041313.P297901937540891236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042307 n

end

end A041313.P297901937540891236

namespace A041313

/-- `Δ[A032766(n)]*A042307(n)` -/
def P297901937540891236.Spec : Prop :=
  ∀ n, P297901937540891236.a n = A041313 n

end A041313

/-! ## A041313.P491768110931195566

`lcm(A006519(n+1), A042307(n))`
-/

namespace A041313.P491768110931195566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A042307 n)

end

end A041313.P491768110931195566

namespace A041313

/-- `lcm(A006519(n+1), A042307(n))` -/
def P491768110931195566.Spec : Prop :=
  ∀ n, (P491768110931195566.a n : ℤ) = A041313 n

end A041313

/-!
# A041314: Numerators of continued fraction convergents to sqrt(171).

The programs for A041314, there is no canonical definition to state claims against.
-/

/-! ## A041314.P11369895047375084855

`A041028(3*n+2)`
-/

namespace A041314.P11369895047375084855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041028 (3 * n + 2)

end

end A041314.P11369895047375084855

/-! ## A041314.P5712008478184013457

`gcd(2, A001844(n))*A041028(A016789(n))`
-/

namespace A041314.P5712008478184013457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001844 n) : ℤ) * A041028 (A016789 n).toNat

end

end A041314.P5712008478184013457

/-! ## A041314.P116260987666307062

`gcd(3, A001316(n))*A041028(A016789(n))`
-/

namespace A041314.P116260987666307062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A001316 n) : ℤ) * A041028 (A016789 n).toNat

end

end A041314.P116260987666307062

/-! ## A041314.P1983940925201431102

`gcd(4, A035009(n))*A041028(A016789(n))`
-/

namespace A041314.P1983940925201431102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A035009 n) : ℤ) * A041028 (A016789 n).toNat

end

end A041314.P1983940925201431102

/-! ## A041314.P123558075156095569

`A041028(A016789(n))+A002262(A000217(n))`
-/

namespace A041314.P123558075156095569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041028 (A016789 n).toNat + A002262 (A000217 n).toNat

end

end A041314.P123558075156095569

/-!
# A041315: Denominators of continued fraction convergents to sqrt(171).

The programs for A041315, there is no canonical definition to state claims against.
-/

/-! ## A041315.P1012578510863218298

`A041029(2*(n+1)+n)/3`
-/

namespace A041315.P1012578510863218298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041029 (2 * (n + 1) + n) : ℚ) / 3

end

end A041315.P1012578510863218298

/-! ## A041315.P5320396209806769173

`floor(A041029(A016789(n))/3)`
-/

namespace A041315.P5320396209806769173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A041029 (A016789 n).toNat : ℚ) / 3⌋

end

end A041315.P5320396209806769173

/-! ## A041315.P11467510069422999839

`record[A041029(A016789(∑[n]%(n+1)))/3]`
-/

namespace A041315.P11467510069422999839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041029 (A016789 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1))).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041315.P11467510069422999839

/-! ## A041315.P15053581262097173705

`or(A041029(A016789(n))/3, A000007(n))`
-/

namespace A041315.P15053581262097173705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A041029 (A016789 n).toNat : ℚ) / 3)) (A000007 n)

end

end A041315.P15053581262097173705

/-! ## A041315.P868337217541226956

`(A041029(A016789(n))/3)^gcd(2, A000040(n+1))`
-/

namespace A041315.P868337217541226956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A041029 (A016789 n).toNat : ℚ) / 3) ^ Int.gcd 2 (A000040 (n + 1))

end

end A041315.P868337217541226956

/-! ## A041315.P10863277075533078810

`A002620(A028310(n)-n)+A041029(A016789(n))/3`
-/

namespace A041315.P10863277075533078810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 (A028310 n - (n : ℤ)).toNat : ℚ) + (A041029 (A016789 n).toNat : ℚ) / 3

end

end A041315.P10863277075533078810

/-!
# A041323: Denominators of continued fraction convergents to sqrt(175).

The programs for A041323, there is no canonical definition to state claims against.
-/

/-! ## A041323.P8667868247145850321

`A335761(∑[ceil(root(2, 3)^n)!])+1`
-/

namespace A041323.P8667868247145850321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈((2 : ℝ) ^ (1 / (3 : ℝ))) ^ n⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335761 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A041323.P8667868247145850321

/-!
# A041328: Numerators of continued fraction convergents to sqrt(178).

The programs for A041328, there is no canonical definition to state claims against.
-/

/-! ## A041328.P5493537095856419466

`lcm(2, A042370(n))/2`
-/

namespace A041328.P5493537095856419466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A042370 n) : ℚ) / 2

end

end A041328.P5493537095856419466

/-! ## A041328.P16989106810232694899

`A042370(n)/Δ[A032766(n+1)]`
-/

namespace A041328.P16989106810232694899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042370 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041328.P16989106810232694899

/-! ## A041328.P6420729112470412558

`Δ[A032766(n)/2]*A042370(n)`
-/

namespace A041328.P6420729112470412558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032766 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A042370 n : ℚ)

end

end A041328.P6420729112470412558

/-! ## A041328.P95813986386851855

`A042370(n)/A295819(Δ[A032766(n)])`
-/

namespace A041328.P95813986386851855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042370 n : ℚ) / (A295819 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041328.P95813986386851855

/-! ## A041328.P11028640148216637051

`A042370(n)/A001221(A116570(n))`
-/

namespace A041328.P11028640148216637051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042370 n : ℚ) / (A001221 (A116570 n).toNat : ℚ)

end

end A041328.P11028640148216637051

/-!
# A041329: Denominators of continued fraction convergents to sqrt(178).

The programs for A041329, there is no canonical definition to state claims against.
-/

/-! ## A041329.P13435733690170758573

`A000034(n)*A042371(n)`
-/

namespace A041329.P13435733690170758573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042371 n

end

end A041329.P13435733690170758573

/-! ## A041329.P3380209884230706700

`sqrt(A010685(n))*A042371(n)`
-/

namespace A041329.P3380209884230706700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010685 n : ℝ) * (A042371 n : ℝ)

end

end A041329.P3380209884230706700

/-! ## A041329.P4118774562646184675

`Δ[A032766(n)]*A042371(n)`
-/

namespace A041329.P4118774562646184675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042371 n

end

end A041329.P4118774562646184675

/-! ## A041329.P13424315365011031348

`(Δ[A004526(n)]+1)*A042371(n)`
-/

namespace A041329.P13424315365011031348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A042371 n

end

end A041329.P13424315365011031348

/-! ## A041329.P2760338036264841867

`A042371(n)*A265096(Δ[A004526(n)])`
-/

namespace A041329.P2760338036264841867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042371 n * A265096 (f1 (n + 1) - f1 n).toNat

end

end A041329.P2760338036264841867

/-! ## A041329.P17021323501461991864

`A042371(n)*A072438(A002522(n))`
-/

namespace A041329.P17021323501461991864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042371 n * A072438 (A002522 n).toNat

end

end A041329.P17021323501461991864

/-!
# A041331: Denominators of continued fraction convergents to sqrt(179).

The programs for A041331, there is no canonical definition to state claims against.
-/

/-! ## A041331.P10105166676793092003

`A342516(A176777(n))`
-/

namespace A041331.P10105166676793092003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 (A176777 n).toNat

end

end A041331.P10105166676793092003

/-! ## A041331.P13178818556009313138

`A342516(A164145(n+1))`
-/

namespace A041331.P13178818556009313138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 (A164145 (n + 1)).toNat

end

end A041331.P13178818556009313138

/-!
# A041332: Numerators of continued fraction convergents to sqrt(180).

The programs for A041332, there is no canonical definition to state claims against.
-/

/-! ## A041332.P7589253227342449072

`A042386(n)/A000034(n+1)`
-/

namespace A041332.P7589253227342449072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042386 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041332.P7589253227342449072

/-! ## A041332.P3981852633248251241

`A000034(n)/2*A042386(n)`
-/

namespace A041332.P3981852633248251241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042386 n : ℚ)

end

end A041332.P3981852633248251241

/-! ## A041332.P11528568946875010049

`A042386(n)/Δ[A032766(n+1)]`
-/

namespace A041332.P11528568946875010049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042386 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041332.P11528568946875010049

/-! ## A041332.P14758292371815633936

`Δ[A032766(n)/2]*A042386(n)`
-/

namespace A041332.P14758292371815633936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032766 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A042386 n : ℚ)

end

end A041332.P14758292371815633936

/-! ## A041332.P5159826117758271597

`A042386(n)/A001511(A007947(n+2))`
-/

namespace A041332.P5159826117758271597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042386 n : ℚ) / (A001511 (A007947 (n + 2)).toNat : ℚ)

end

end A041332.P5159826117758271597

/-! ## A041332.P6031925405426901151

`A042386(n)/A006530(A006519(n+2))`
-/

namespace A041332.P6031925405426901151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042386 n : ℚ) / (A006530 (A006519 (n + 2)).toNat : ℚ)

end

end A041332.P6031925405426901151

/-! ## A041332.P8790744913711082762

`A042386(n)/A006519(A006519(n+1)+1)`
-/

namespace A041332.P8790744913711082762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042386 n : ℚ) / (A006519 (A006519 (n + 1) + 1).toNat : ℚ)

end

end A041332.P8790744913711082762

/-! ## A041332.P7014655546489392747

`A042386(n)/A001511(n²+2)`
-/

namespace A041332.P7014655546489392747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042386 n : ℚ) / (A001511 (n ^ 2 + 2) : ℚ)

end

end A041332.P7014655546489392747

/-! ## A041332.P6898487105783494296

`A042386(n)/A006519(n²+2)`
-/

namespace A041332.P6898487105783494296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042386 n : ℚ) / (A006519 (n ^ 2 + 2) : ℚ)

end

end A041332.P6898487105783494296

/-!
# A041333: Denominators of continued fraction convergents to sqrt(180).

The programs for A041333, there is no canonical definition to state claims against.
-/

/-! ## A041333.P5241029575158613254

`A000034(n)*A042387(n)`
-/

namespace A041333.P5241029575158613254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042387 n

end

end A041333.P5241029575158613254

/-! ## A041333.P16019419927208109469

`Δ[A032766(n)]*A042387(n)`
-/

namespace A041333.P16019419927208109469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042387 n

end

end A041333.P16019419927208109469

/-! ## A041333.P17002893663951858947

`lcm(A006519(n+1), A042387(n))`
-/

namespace A041333.P17002893663951858947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A042387 n)

end

end A041333.P17002893663951858947

/-! ## A041333.P4244938575738880172

`A006519(A007947(n+1))*A042387(n)`
-/

namespace A041333.P4244938575738880172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A007947 (n + 1)).toNat * A042387 n

end

end A041333.P4244938575738880172

/-! ## A041333.P9920222677099386257

`A035218(A089120(n+1))*A042387(n)`
-/

namespace A041333.P9920222677099386257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A089120 (n + 1)).toNat * A042387 n

end

end A041333.P9920222677099386257

/-! ## A041333.P3232446812710575201

`A042387(n)*A319464(Δ[A047589(n+1)])`
-/

namespace A041333.P3232446812710575201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042387 n * A319464 (f1 (n + 1) - f1 n).toNat

end

end A041333.P3232446812710575201

/-! ## A041333.P11580794838652057582

`A006519(n²+1)*A042387(n)`
-/

namespace A041333.P11580794838652057582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A042387 n

end

end A041333.P11580794838652057582

/-!
# A041336: Numerators of continued fraction convergents to sqrt(182).

The programs for A041336, there is no canonical definition to state claims against.
-/

/-! ## A041336.P14940621637561744388

`A042402(n)/A000034(n+1)`
-/

namespace A041336.P14940621637561744388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042402 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041336.P14940621637561744388

/-! ## A041336.P14553932623717571489

`A042402(n)/A040001(n+2)`
-/

namespace A041336.P14553932623717571489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042402 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041336.P14553932623717571489

/-! ## A041336.P7358339679617097199

`A042402(n)/A134451(n+2)`
-/

namespace A041336.P7358339679617097199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042402 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A041336.P7358339679617097199

/-! ## A041336.P10750379506597526706

`A000034(n)/2*A042402(n)`
-/

namespace A041336.P10750379506597526706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042402 n : ℚ)

end

end A041336.P10750379506597526706

/-! ## A041336.P18058907063089992808

`A042402(n)/A090270(A020639(3*(n+1)))`
-/

namespace A041336.P18058907063089992808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042402 n : ℚ) / (A090270 (A020639 (3 * (n + 1))).toNat : ℚ)

end

end A041336.P18058907063089992808

/-! ## A041336.P16362450081742998469

`A042402(n)/A155997(A000217(n))`
-/

namespace A041336.P16362450081742998469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042402 n : ℚ) / (A155997 (A000217 n).toNat : ℚ)

end

end A041336.P16362450081742998469

/-!
# A041337: Denominators of continued fraction convergents to sqrt(182).

The programs for A041337, the canonical program `A041337.P13627468944054800501` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041337 has offset 0).

The definition of A041337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041337.P13627468944054800501

`54*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=53, a(3)=108`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041337

/-- `54*a(n-2)-a(n-4)` -/
def P13627468944054800501.Spec : Prop :=
  ∀ n, P13627468944054800501.a n = A041337 n

theorem P13627468944054800501.correct : P13627468944054800501.Spec := by
  intro n
  simp only [A041337]

end A041337

/-! ## A041337.P9611770820561761737

`A000034(n)*A042403(n)`
-/

namespace A041337.P9611770820561761737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042403 n

end

end A041337.P9611770820561761737

namespace A041337

/-- `A000034(n)*A042403(n)` -/
def P9611770820561761737.Spec : Prop :=
  ∀ n, P9611770820561761737.a n = A041337 n

end A041337

/-! ## A041337.P15400558021222731161

`A040001(n+1)*A042403(n)`
-/

namespace A041337.P15400558021222731161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A042403 n

end

end A041337.P15400558021222731161

namespace A041337

/-- `A040001(n+1)*A042403(n)` -/
def P15400558021222731161.Spec : Prop :=
  ∀ n, P15400558021222731161.a n = A041337 n

end A041337

/-! ## A041337.P167778757667844251

`A042403(n)*A134451(n+1)`
-/

namespace A041337.P167778757667844251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042403 n * A134451 (n + 1)

end

end A041337.P167778757667844251

namespace A041337

/-- `A042403(n)*A134451(n+1)` -/
def P167778757667844251.Spec : Prop :=
  ∀ n, P167778757667844251.a n = A041337 n

end A041337

/-! ## A041337.P11275191350328282193

`lcm(A006519(n+1), A042403(n))`
-/

namespace A041337.P11275191350328282193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A042403 n)

end

end A041337.P11275191350328282193

namespace A041337

/-- `lcm(A006519(n+1), A042403(n))` -/
def P11275191350328282193.Spec : Prop :=
  ∀ n, (P11275191350328282193.a n : ℤ) = A041337 n

end A041337

/-! ## A041337.P11862689678105695246

`Δ[A001651(n+1)]*A042403(n)`
-/

namespace A041337.P11862689678105695246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042403 n

end

end A041337.P11862689678105695246

namespace A041337

/-- `Δ[A001651(n+1)]*A042403(n)` -/
def P11862689678105695246.Spec : Prop :=
  ∀ n, P11862689678105695246.a n = A041337 n

end A041337

/-! ## A041337.P4028219255154069216

`(Δ[A008619(n)]+1)*A042403(n)`
-/

namespace A041337.P4028219255154069216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A042403 n

end

end A041337.P4028219255154069216

namespace A041337

/-- `(Δ[A008619(n)]+1)*A042403(n)` -/
def P4028219255154069216.Spec : Prop :=
  ∀ n, P4028219255154069216.a n = A041337 n

end A041337

/-! ## A041337.P1317123663856062108

`Δ[A008619(3*n)]*A042403(n)`
-/

namespace A041337.P1317123663856062108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042403 n

end

end A041337.P1317123663856062108

namespace A041337

/-- `Δ[A008619(3*n)]*A042403(n)` -/
def P1317123663856062108.Spec : Prop :=
  ∀ n, P1317123663856062108.a n = A041337 n

end A041337

/-! ## A041337.P17451347691439330152

`A042403(n)*A065883(A120880(n))`
-/

namespace A041337.P17451347691439330152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042403 n * A065883 (A120880 n).toNat

end

end A041337.P17451347691439330152

namespace A041337

/-- `A042403(n)*A065883(A120880(n))` -/
def P17451347691439330152.Spec : Prop :=
  ∀ n, P17451347691439330152.a n = A041337 n

end A041337

/-! ## A041337.P7903010409851311805

`A042403(n)*A155997(A101881(2*n+1))`
-/

namespace A041337.P7903010409851311805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042403 n * A155997 (A101881 (2 * n + 1)).toNat

end

end A041337.P7903010409851311805

namespace A041337

/-- `A042403(n)*A155997(A101881(2*n+1))` -/
def P7903010409851311805.Spec : Prop :=
  ∀ n, P7903010409851311805.a n = A041337 n

end A041337

/-!
# A041343: Denominators of continued fraction convergents to sqrt(185).

The programs for A041343, the canonical program `A041343.P3958583122076330670` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041343 has offset 0).

The definition of A041343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041343.P3958583122076330670

`136*a(n-5)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=133, a(6)=138, a(7)=271, a(8)=409, a(9)=680`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041343

/-- `136*a(n-5)+a(n-10)` -/
def P3958583122076330670.Spec : Prop :=
  ∀ n, (P3958583122076330670.a n : ℤ) = A041343 n

theorem P3958583122076330670.correct : P3958583122076330670.Spec := by
  intro n
  simp only [A041343]

end A041343

/-! ## A041343.P7807413078423183319

`A000140(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=133, a(6)=138`
-/

namespace A041343.P7807413078423183319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 133, 138] fun n a =>
  A000140 (a (n - 1)).toNat

end

end A041343.P7807413078423183319

namespace A041343

/-- `A000140(a(n-1))` -/
def P7807413078423183319.Spec : Prop :=
  ∀ n, P7807413078423183319.a n = A041343 n

end A041343

/-!
# A041345: Denominators of continued fraction convergents to sqrt(186).

The programs for A041345, there is no canonical definition to state claims against.
-/

/-! ## A041345.P1641526126700982221

`A244982(A304914(n))`
-/

namespace A041345.P1641526126700982221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244982 (A304914 n).toNat

end

end A041345.P1641526126700982221

/-! ## A041345.P256241521333923200

`A244982(A032129(n+1))`
-/

namespace A041345.P256241521333923200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244982 (A032129 (n + 1)).toNat

end

end A041345.P256241521333923200

/-!
# A041347: Denominators of continued fraction convergents to sqrt(187).

The programs for A041347, there is no canonical definition to state claims against.
-/

/-! ## A041347.P18314944574424484081

`A057627(A269594(n)+n)`
-/

namespace A041347.P18314944574424484081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A269594 n + (n : ℤ)).toNat

end

end A041347.P18314944574424484081

/-!
# A041351: Denominators of continued fraction convergents to sqrt(189).

The programs for A041351, the canonical program `A041351.P2952019018534820385` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041351 has offset 0).

The definition of A041351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041351.P2952019018534820385

`110*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=107, a(5)=111, a(6)=329, a(7)=440`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041351

/-- `110*a(n-4)-a(n-8)` -/
def P2952019018534820385.Spec : Prop :=
  ∀ n, P2952019018534820385.a n = A041351 n

theorem P2952019018534820385.correct : P2952019018534820385.Spec := by
  intro n
  simp only [A041351]

end A041351

/-! ## A041351.P6747648558425206509

`A001281(A041465(n)+A041253(n))`
-/

namespace A041351.P6747648558425206509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041465 n + A041253 n).toNat

end

end A041351.P6747648558425206509

namespace A041351

/-- `A001281(A041465(n)+A041253(n))` -/
def P6747648558425206509.Spec : Prop :=
  ∀ n, P6747648558425206509.a n = A041351 n

end A041351

/-! ## A041351.P13933990570761871054

`A001281(A041741(n)+A041105(n))`
-/

namespace A041351.P13933990570761871054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041741 n + A041105 n).toNat

end

end A041351.P13933990570761871054

namespace A041351

/-- `A001281(A041741(n)+A041105(n))` -/
def P13933990570761871054.Spec : Prop :=
  ∀ n, P13933990570761871054.a n = A041351 n

end A041351

/-!
# A041356: Numerators of continued fraction convergents to sqrt(192).

The programs for A041356, there is no canonical definition to state claims against.
-/

/-! ## A041356.P17401413299679882652

`A106619(A042480(n)-A000007(n))`
-/

namespace A041356.P17401413299679882652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A042480 n - A000007 n).toNat

end

end A041356.P17401413299679882652

/-!
# A041357: Denominators of continued fraction convergents to sqrt(192).

The programs for A041357, there is no canonical definition to state claims against.
-/

/-! ## A041357.P3733597798095209909

`A110657(A041363(n))`
-/

namespace A041357.P3733597798095209909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A041363 n).toNat

end

end A041357.P3733597798095209909

/-!
# A041361: Denominators of continued fraction convergents to sqrt(194).

The programs for A041361, there is no canonical definition to state claims against.
-/

/-! ## A041361.P15736038058832852075

`A004525(A041363(n))`
-/

namespace A041361.P15736038058832852075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041363 n).toNat

end

end A041361.P15736038058832852075

/-!
# A041362: Numerators of continued fraction convergents to sqrt(195).

The programs for A041362, the canonical program `A041362.P5003115412466929346` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041362 has offset 0).

The definition of A041362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041362.P5003115412466929346

`∪[A097310(n+1), Δ[A097310(n)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041362

/-- `∪[A097310(n+1), Δ[A097310(n)]]` -/
def P5003115412466929346.Spec : Prop :=
  ∀ n, (P5003115412466929346.a n : ℤ) = A041362 n

theorem P5003115412466929346.correct : P5003115412466929346.Spec := by
  intro n
  simp only [A041362]

end A041362

/-!
# A041363: Denominators of continued fraction convergents to sqrt(195).

The programs for A041363, the canonical program `A041363.P1149795143717309265` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041363 has offset 0).

The definition of A041363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041363.P1149795143717309265

`28*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=27, a(3)=28`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041363

/-- `28*a(n-2)-a(n-4)` -/
def P1149795143717309265.Spec : Prop :=
  ∀ n, P1149795143717309265.a n = A041363 n

theorem P1149795143717309265.correct : P1149795143717309265.Spec := by
  intro n
  simp only [A041363]

end A041363

/-!
# A041364: Numerators of continued fraction convergents to sqrt(197).

The programs for A041364, the canonical program `A041364.P10512068196893400626` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041364 has offset 0).

The definition of A041364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041364.P10512068196893400626

`28*a(n-1)+a(n-2)` with `a(0)=14, a(1)=393`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041364

/-- `28*a(n-1)+a(n-2)` -/
def P10512068196893400626.Spec : Prop :=
  ∀ n, (P10512068196893400626.a n : ℤ) = A041364 n

theorem P10512068196893400626.correct : P10512068196893400626.Spec := by
  intro n
  simp only [A041364]

end A041364

/-! ## A041364.P35148601331334249

`A042518(n)/gcd(2, n)`
-/

namespace A041364.P35148601331334249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042518 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041364.P35148601331334249

namespace A041364

/-- `A042518(n)/gcd(2, n)` -/
def P35148601331334249.Spec : Prop :=
  ∀ n, P35148601331334249.a n = (A041364 n : ℚ)

end A041364

/-! ## A041364.P8920487657711298477

`A042518(n)/A000034(n+1)`
-/

namespace A041364.P8920487657711298477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042518 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041364.P8920487657711298477

namespace A041364

/-- `A042518(n)/A000034(n+1)` -/
def P8920487657711298477.Spec : Prop :=
  ∀ n, P8920487657711298477.a n = (A041364 n : ℚ)

end A041364

/-! ## A041364.P15812139473368532937

`A000034(n)/2*A042518(n)`
-/

namespace A041364.P15812139473368532937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042518 n : ℚ)

end

end A041364.P15812139473368532937

namespace A041364

/-- `A000034(n)/2*A042518(n)` -/
def P15812139473368532937.Spec : Prop :=
  ∀ n, P15812139473368532937.a n = (A041364 n : ℚ)

end A041364

/-! ## A041364.P9262997561856713539

`A042518(n)/A014695((n+1)²)`
-/

namespace A041364.P9262997561856713539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042518 n : ℚ) / (A014695 ((n + 1) ^ 2) : ℚ)

end

end A041364.P9262997561856713539

namespace A041364

/-- `A042518(n)/A014695((n+1)²)` -/
def P9262997561856713539.Spec : Prop :=
  ∀ n, P9262997561856713539.a n = (A041364 n : ℚ)

end A041364

/-! ## A041364.P5287514850754829699

`A042518(n)/A010150(A005918(n))`
-/

namespace A041364.P5287514850754829699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042518 n : ℚ) / (A010150 (A005918 n).toNat : ℚ)

end

end A041364.P5287514850754829699

namespace A041364

/-- `A042518(n)/A010150(A005918(n))` -/
def P5287514850754829699.Spec : Prop :=
  ∀ n, P5287514850754829699.a n = (A041364 n : ℚ)

end A041364

/-! ## A041364.P13931439552875575011

`A042518(n)/A010150(A010000(n))`
-/

namespace A041364.P13931439552875575011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042518 n : ℚ) / (A010150 (A010000 n).toNat : ℚ)

end

end A041364.P13931439552875575011

namespace A041364

/-- `A042518(n)/A010150(A010000(n))` -/
def P13931439552875575011.Spec : Prop :=
  ∀ n, P13931439552875575011.a n = (A041364 n : ℚ)

end A041364

/-! ## A041364.P2624337401892214025

`1/A014695(A005408(n))*A042518(n)`
-/

namespace A041364.P2624337401892214025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A014695 (A005408 n).toNat : ℚ) * (A042518 n : ℚ)

end

end A041364.P2624337401892214025

namespace A041364

/-- `1/A014695(A005408(n))*A042518(n)` -/
def P2624337401892214025.Spec : Prop :=
  ∀ n, P2624337401892214025.a n = (A041364 n : ℚ)

end A041364

/-! ## A041364.P2486716832660597046

`1/A014695(A128468(n))*A042518(n)`
-/

namespace A041364.P2486716832660597046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A014695 (A128468 n).toNat : ℚ) * (A042518 n : ℚ)

end

end A041364.P2486716832660597046

namespace A041364

/-- `1/A014695(A128468(n))*A042518(n)` -/
def P2486716832660597046.Spec : Prop :=
  ∀ n, P2486716832660597046.a n = (A041364 n : ℚ)

end A041364

/-! ## A041364.P3434713164533007822

`A041365(n+1)-A040042(n+1)*A041365(n)`
-/

namespace A041364.P3434713164533007822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041365 (n + 1) - A040042 (n + 1) * A041365 n

end

end A041364.P3434713164533007822

namespace A041364

/-- `A041365(n+1)-A040042(n+1)*A041365(n)` -/
def P3434713164533007822.Spec : Prop :=
  ∀ n, P3434713164533007822.a n = A041364 n

end A041364

/-!
# A041365: Denominators of continued fraction convergents to sqrt(197).

The programs for A041365, the canonical program `A041365.P10284069409435062416` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041365 has offset 0).

The definition of A041365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041365.P10284069409435062416

`28*a(n-1)+a(n-2)` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041365

/-- `28*a(n-1)+a(n-2)` -/
def P10284069409435062416.Spec : Prop :=
  ∀ n, (P10284069409435062416.a n : ℤ) = A041365 n

theorem P10284069409435062416.correct : P10284069409435062416.Spec := by
  intro n
  simp only [A041365]

end A041365

/-! ## A041365.P8950005325136332100

`ogf(1/(1-28x-x^2))`
-/

namespace A041365.P8950005325136332100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -28, -1] n

end

end A041365.P8950005325136332100

namespace A041365

/-- `ogf(1/(1-28x-x^2))` -/
def P8950005325136332100.Spec : Prop :=
  ∀ n, P8950005325136332100.a n = A041365 n

end A041365

/-! ## A041365.P17945187211886393622

`A000034(n)*A042519(n)`
-/

namespace A041365.P17945187211886393622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042519 n

end

end A041365.P17945187211886393622

namespace A041365

/-- `A000034(n)*A042519(n)` -/
def P17945187211886393622.Spec : Prop :=
  ∀ n, P17945187211886393622.a n = A041365 n

end A041365

/-! ## A041365.P17649832464099438775

`A014695(n²)*A042519(n)`
-/

namespace A041365.P17649832464099438775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (n ^ 2) * A042519 n

end

end A041365.P17649832464099438775

namespace A041365

/-- `A014695(n²)*A042519(n)` -/
def P17649832464099438775.Spec : Prop :=
  ∀ n, P17649832464099438775.a n = A041365 n

end A041365

/-! ## A041365.P7827420252575747477

`gcd(2, A010889(n))*A042519(n)`
-/

namespace A041365.P7827420252575747477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A010889 n) : ℤ) * A042519 n

end

end A041365.P7827420252575747477

namespace A041365

/-- `gcd(2, A010889(n))*A042519(n)` -/
def P7827420252575747477.Spec : Prop :=
  ∀ n, P7827420252575747477.a n = A041365 n

end A041365

/-! ## A041365.P13162379089334069147

`A056105(n)%4*A042519(n)`
-/

namespace A041365.P13162379089334069147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056105 n) 4 * A042519 n

end

end A041365.P13162379089334069147

namespace A041365

/-- `A056105(n)%4*A042519(n)` -/
def P13162379089334069147.Spec : Prop :=
  ∀ n, P13162379089334069147.a n = A041365 n

end A041365

/-!
# A041366: Numerators of continued fraction convergents to sqrt(198).

The programs for A041366, there is no canonical definition to state claims against.
-/

/-! ## A041366.P15361762094632583404

`A041034(3*n+2)`
-/

namespace A041366.P15361762094632583404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041034 (3 * n + 2)

end

end A041366.P15361762094632583404

/-! ## A041366.P17158578039380025077

`A042526(n)/gcd(2, n)`
-/

namespace A041366.P17158578039380025077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042526 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041366.P17158578039380025077

/-! ## A041366.P2500443707625995631

`A042526(n)/Δ[A007494(n)]`
-/

namespace A041366.P2500443707625995631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042526 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041366.P2500443707625995631

/-! ## A041366.P5809122234431480

`A042526(n)/A000034(n+1)`
-/

namespace A041366.P5809122234431480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042526 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041366.P5809122234431480

/-! ## A041366.P13409367097355672038

`A000034(n)/2*A042526(n)`
-/

namespace A041366.P13409367097355672038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042526 n : ℚ)

end

end A041366.P13409367097355672038

/-! ## A041366.P10773297029562775034

`A042526(n)/(A007318(C(2, n))+1-n%2)`
-/

namespace A041366.P10773297029562775034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042526 n : ℚ) / (A007318 (Nat.choose 2 n) + 1 - ((n % 2 : ℕ) : ℤ) : ℚ)

end

end A041366.P10773297029562775034

/-!
# A041367: Denominators of continued fraction convergents to sqrt(198).

The programs for A041367, there is no canonical definition to state claims against.
-/

/-! ## A041367.P11061806919673850707

`gcd(2, n+1)*A042527(n)`
-/

namespace A041367.P11061806919673850707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A042527 n

end

end A041367.P11061806919673850707

/-! ## A041367.P7386941014454897409

`A000034(n)*A042527(n)`
-/

namespace A041367.P7386941014454897409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042527 n

end

end A041367.P7386941014454897409

/-! ## A041367.P18032694250819082363

`A014695(n²)*A042527(n)`
-/

namespace A041367.P18032694250819082363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (n ^ 2) * A042527 n

end

end A041367.P18032694250819082363

/-! ## A041367.P13556312504607462678

`A056105(n)%4*A042527(n)`
-/

namespace A041367.P13556312504607462678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056105 n) 4 * A042527 n

end

end A041367.P13556312504607462678

/-! ## A041367.P9079387803901941727

`(A063196(n+2)-n)*A042527(n)`
-/

namespace A041367.P9079387803901941727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063196 (n + 2) - (n : ℤ)) * A042527 n

end

end A041367.P9079387803901941727

/-! ## A041367.P12118253612746017865

`A042527(n)*A060236(∑[A040763(n)])`
-/

namespace A041367.P12118253612746017865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042527 n * A060236 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041367.P12118253612746017865

/-!
# A041369: Denominators of continued fraction convergents to sqrt(199).

The programs for A041369, there is no canonical definition to state claims against.
-/

/-! ## A041369.P1773263207286666414

`a(n-2)+a(n-1)*A328855(a(n-1))` with `a(0)=1, a(1)=9`
-/

namespace A041369.P1773263207286666414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 2) + a (n - 1) * A328855 (a (n - 1)).toNat

end

end A041369.P1773263207286666414

/-!
# A041370: Numerators of continued fraction convergents to sqrt(200).

The programs for A041370, there is no canonical definition to state claims against.
-/

/-! ## A041370.P2731215350658292175

`A041010(3*n+2)`
-/

namespace A041370.P2731215350658292175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041010 (3 * n + 2)

end

end A041370.P2731215350658292175

/-! ## A041370.P11538905346125085549

`A002203(3*(n+1))/A000034(n)`
-/

namespace A041370.P11538905346125085549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (3 * (n + 1)) : ℚ) / (A000034 n : ℚ)

end

end A041370.P11538905346125085549

/-! ## A041370.P9987357471515323468

`A167710(n+1)%3*A001333(3*(n+1))`
-/

namespace A041370.P9987357471515323468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167710 (n + 1)) 3 * A001333 (3 * (n + 1))

end

end A041370.P9987357471515323468

/-! ## A041370.P18189193955726824179

`A167936(n+3)%3*A001333(3*(n+1))`
-/

namespace A041370.P18189193955726824179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167936 (n + 3)) 3 * A001333 (3 * (n + 1))

end

end A041370.P18189193955726824179

/-! ## A041370.P13911435496693841559

`lcm(A078057(A016789(n)), A228826(n))`
-/

namespace A041370.P13911435496693841559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078057 (A016789 n).toNat) (A228826 n)

end

end A041370.P13911435496693841559

/-! ## A041370.P13847874293304864947

`ratio[A000034(n)]*A159582(A016789(n))`
-/

namespace A041370.P13847874293304864947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A159582 (A016789 n).toNat : ℚ)

end

end A041370.P13847874293304864947

/-! ## A041370.P13606415551457329072

`A099425(A008486(n+1))/A000034(n)`
-/

namespace A041370.P13606415551457329072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099425 (A008486 (n + 1)).toNat : ℚ) / (A000034 n : ℚ)

end

end A041370.P13606415551457329072

/-! ## A041370.P4197426941700321034

`A000034(n+1)*A001333(A008486(n+1))`
-/

namespace A041370.P4197426941700321034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A001333 (A008486 (n + 1)).toNat

end

end A041370.P4197426941700321034

/-! ## A041370.P3408566243770307319

`A001333(A008486(n+1))*A134451(n+2)`
-/

namespace A041370.P3408566243770307319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A008486 (n + 1)).toNat * A134451 (n + 2)

end

end A041370.P3408566243770307319

/-! ## A041370.P9031408890114818369

`A002203(A008486(n+1))/A134451(n+1)`
-/

namespace A041370.P9031408890114818369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (A008486 (n + 1)).toNat : ℚ) / (A134451 (n + 1) : ℚ)

end

end A041370.P9031408890114818369

/-!
# A041371: Denominators of continued fraction convergents to sqrt(200).

The programs for A041371, there is no canonical definition to state claims against.
-/

/-! ## A041371.P7635311096627714504

`A041085(n)/A000034(n)`
-/

namespace A041371.P7635311096627714504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041085 n : ℚ) / (A000034 n : ℚ)

end

end A041371.P7635311096627714504

/-! ## A041371.P7815243978520830734

`A041085(n)/A108300(n)%3`
-/

namespace A041371.P7815243978520830734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041085 n : ℚ) / (Int.tmod (A108300 n) 3 : ℚ)

end

end A041371.P7815243978520830734

/-! ## A041371.P9347523339981953375

`A041011(A016789(n))/5`
-/

namespace A041371.P9347523339981953375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041011 (A016789 n).toNat : ℚ) / 5

end

end A041371.P9347523339981953375

/-! ## A041371.P14404122049320132962

`A152118(A008486(n+1))/5`
-/

namespace A041371.P14404122049320132962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152118 (A008486 (n + 1)).toNat : ℚ) / 5

end

end A041371.P14404122049320132962

/-! ## A041371.P9618328092844713362

`A041085(n)/gcd(2, A041487(n))`
-/

namespace A041371.P9618328092844713362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041085 n : ℚ) / (Int.gcd 2 (A041487 n) : ℚ)

end

end A041371.P9618328092844713362

/-!
# A041376: Numerators of continued fraction convergents to sqrt(203).

The programs for A041376, there is no canonical definition to state claims against.
-/

/-! ## A041376.P6795199485348105343

`A042566(n)/gcd(2, n)`
-/

namespace A041376.P6795199485348105343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042566 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041376.P6795199485348105343

/-! ## A041376.P10330819136798021

`A042566(n)/Δ[A007494(n)]`
-/

namespace A041376.P10330819136798021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042566 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041376.P10330819136798021

/-! ## A041376.P2246577627194165963

`A042566(n)/A000034(n+1)`
-/

namespace A041376.P2246577627194165963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042566 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041376.P2246577627194165963

/-! ## A041376.P7183914144837438475

`A042566(n)/A040001(n+2)`
-/

namespace A041376.P7183914144837438475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042566 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041376.P7183914144837438475

/-! ## A041376.P9408252751091947663

`A000034(n)/2*A042566(n)`
-/

namespace A041376.P9408252751091947663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042566 n : ℚ)

end

end A041376.P9408252751091947663

/-! ## A041376.P6732793886288567308

`A042566(n)/A003484(n²+2)`
-/

namespace A041376.P6732793886288567308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042566 n : ℚ) / (A003484 (n ^ 2 + 2) : ℚ)

end

end A041376.P6732793886288567308

/-! ## A041376.P8912091871599347029

`A042566(n)/A006519(n²+2)`
-/

namespace A041376.P8912091871599347029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042566 n : ℚ) / (A006519 (n ^ 2 + 2) : ℚ)

end

end A041376.P8912091871599347029

/-! ## A041376.P11063254139883560473

`A042566(n)/A000010(or(1, 2-n)+n)`
-/

namespace A041376.P11063254139883560473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042566 n : ℚ) / (A000010 (Int.lor 1 (2 - (n : ℤ)) + (n : ℤ)).toNat : ℚ)

end

end A041376.P11063254139883560473

/-! ## A041376.P14285098508841235032

`A042566(n)/A000045(or(1, 2-n)+n)`
-/

namespace A041376.P14285098508841235032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042566 n : ℚ) / (A000045 (Int.lor 1 (2 - (n : ℤ)) + (n : ℤ)).toNat : ℚ)

end

end A041376.P14285098508841235032

/-!
# A041377: Denominators of continued fraction convergents to sqrt(203).

The programs for A041377, the canonical program `A041377.P1598313564662933863` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041377 has offset 0).

The definition of A041377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041377.P1598313564662933863

`114*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=113, a(3)=456`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041377

/-- `114*a(n-2)-a(n-4)` -/
def P1598313564662933863.Spec : Prop :=
  ∀ n, P1598313564662933863.a n = A041377 n

theorem P1598313564662933863.correct : P1598313564662933863.Spec := by
  intro n
  simp only [A041377]

end A041377

/-! ## A041377.P2378290295564186404

`gcd(2, n+1)*A042567(n)`
-/

namespace A041377.P2378290295564186404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A042567 n

end

end A041377.P2378290295564186404

namespace A041377

/-- `gcd(2, n+1)*A042567(n)` -/
def P2378290295564186404.Spec : Prop :=
  ∀ n, P2378290295564186404.a n = A041377 n

end A041377

/-! ## A041377.P16404883543081978015

`A000034(n)*A042567(n)`
-/

namespace A041377.P16404883543081978015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042567 n

end

end A041377.P16404883543081978015

namespace A041377

/-- `A000034(n)*A042567(n)` -/
def P16404883543081978015.Spec : Prop :=
  ∀ n, P16404883543081978015.a n = A041377 n

end A041377

/-! ## A041377.P12084231041617991210

`A040001(n+1)*A042567(n)`
-/

namespace A041377.P12084231041617991210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A042567 n

end

end A041377.P12084231041617991210

namespace A041377

/-- `A040001(n+1)*A042567(n)` -/
def P12084231041617991210.Spec : Prop :=
  ∀ n, P12084231041617991210.a n = A041377 n

end A041377

/-! ## A041377.P15627198032612651429

`A014963(xor(n, or(n, n+1)))*A042567(n)`
-/

namespace A041377.P15627198032612651429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.xor n (Nat.lor n (n + 1))) * A042567 n

end

end A041377.P15627198032612651429

namespace A041377

/-- `A014963(xor(n, or(n, n+1)))*A042567(n)` -/
def P15627198032612651429.Spec : Prop :=
  ∀ n, P15627198032612651429.a n = A041377 n

end A041377

/-! ## A041377.P4672217428863869235

`A002260(A236453(n))*A042567(n)`
-/

namespace A041377.P4672217428863869235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A236453 n).toNat * A042567 n

end

end A041377.P4672217428863869235

namespace A041377

/-- `A002260(A236453(n))*A042567(n)` -/
def P4672217428863869235.Spec : Prop :=
  ∀ n, P4672217428863869235.a n = A041377 n

end A041377

/-!
# A041386: Numerators of continued fraction convergents to sqrt(208).

The programs for A041386, there is no canonical definition to state claims against.
-/

/-! ## A041386.P15026535747542623444

`gcd(2, n)*A041088(n)`
-/

namespace A041386.P15026535747542623444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041088 n

end

end A041386.P15026535747542623444

/-! ## A041386.P10997655862962772636

`Δ[A007494(n)]*A041088(n)`
-/

namespace A041386.P10997655862962772636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041088 n

end

end A041386.P10997655862962772636

/-! ## A041386.P11588349097089121753

`A000034(n+1)*A041088(n)`
-/

namespace A041386.P11588349097089121753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041088 n

end

end A041386.P11588349097089121753

/-! ## A041386.P8353299772597119430

`2/A000034(n)*A041088(n)`
-/

namespace A041386.P8353299772597119430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041088 n : ℚ)

end

end A041386.P8353299772597119430

/-! ## A041386.P7617282898017392135

`(Δ[A110654(n)]+1)*A041088(n)`
-/

namespace A041386.P7617282898017392135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A041088 n

end

end A041386.P7617282898017392135

/-! ## A041386.P15446269050806138454

`Δ[A110654(3*n)]*A041088(n)`
-/

namespace A041386.P15446269050806138454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041088 n

end

end A041386.P15446269050806138454

/-! ## A041386.P16532806713596850775

`A041088(n)*A055396(3*(n+1))`
-/

namespace A041386.P16532806713596850775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041088 n * A055396 (3 * (n + 1))

end

end A041386.P16532806713596850775

/-! ## A041386.P15292169255258837068

`(A041089(n)%2+1)*A041088(n)`
-/

namespace A041386.P15292169255258837068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A041089 n) 2 + 1) * A041088 n

end

end A041386.P15292169255258837068

/-! ## A041386.P17806011705510300582

`A041088(n)*A041093(A003815(Δ[n²]))`
-/

namespace A041386.P17806011705510300582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041088 n * A041093 (A003815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A041386.P17806011705510300582

/-! ## A041386.P7827904812529556874

`A000045(A020639(3*(n+1)))*A041088(n)`
-/

namespace A041386.P7827904812529556874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (3 * (n + 1))).toNat * A041088 n

end

end A041386.P7827904812529556874

/-!
# A041387: Denominators of continued fraction convergents to sqrt(208).

The programs for A041387, there is no canonical definition to state claims against.
-/

/-! ## A041387.P17100184473721288044

`A041089(n)/A000034(n)`
-/

namespace A041387.P17100184473721288044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041089 n : ℚ) / (A000034 n : ℚ)

end

end A041387.P17100184473721288044

/-! ## A041387.P11280051015705988519

`A041089(n)/A040001(n+1)`
-/

namespace A041387.P11280051015705988519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041089 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041387.P11280051015705988519

/-! ## A041387.P13500681341567160404

`A041089(n)/A130658(2*n)`
-/

namespace A041387.P13500681341567160404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041089 n : ℚ) / (A130658 (2 * n) : ℚ)

end

end A041387.P13500681341567160404

/-! ## A041387.P5747113625079365702

`A041089(n)/gcd(2, A034326(n+1))`
-/

namespace A041387.P5747113625079365702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041089 n : ℚ) / (Int.gcd 2 (A034326 (n + 1)) : ℚ)

end

end A041387.P5747113625079365702

/-! ## A041387.P1119852785593525478

`A041089(n)/gcd(n+1, A077065(n+1))`
-/

namespace A041387.P1119852785593525478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041089 n : ℚ) / (Int.gcd (n + 1 : ℤ) (A077065 (n + 1)) : ℚ)

end

end A041387.P1119852785593525478

/-! ## A041387.P1971739459300217926

`A041089(n)/A089242(A141310(n))`
-/

namespace A041387.P1971739459300217926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041089 n : ℚ) / (A089242 (A141310 n).toNat : ℚ)

end

end A041387.P1971739459300217926

/-! ## A041387.P2880410248348238205

`A041089(n)/A006530(A006519(n+1))`
-/

namespace A041387.P2880410248348238205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041089 n : ℚ) / (A006530 (A006519 (n + 1)).toNat : ℚ)

end

end A041387.P2880410248348238205

/-! ## A041387.P2084357769332073382

`A041089(n)/A006519(A042963(n+1))`
-/

namespace A041387.P2084357769332073382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041089 n : ℚ) / (A006519 (A042963 (n + 1)).toNat : ℚ)

end

end A041387.P2084357769332073382

/-! ## A041387.P1598062382413530330

`A041089(n)/A006519(n²+1)`
-/

namespace A041387.P1598062382413530330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041089 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041387.P1598062382413530330

/-!
# A041389: Denominators of continued fraction convergents to sqrt(209).

The programs for A041389, there is no canonical definition to state claims against.
-/

/-! ## A041389.P6033266979817900402

`A361808(A162145(2*n+3)-A333489(n+3)+1)`
-/

namespace A041389.P6033266979817900402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A162145 (2 * n + 3) - A333489 (n + 3) + 1).toNat

end

end A041389.P6033266979817900402

/-!
# A041390: Numerators of continued fraction convergents to sqrt(210).

The programs for A041390, there is no canonical definition to state claims against.
-/

/-! ## A041390.P14897451969787783490

`A042622(n)/gcd(2, n)`
-/

namespace A041390.P14897451969787783490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042622 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041390.P14897451969787783490

/-! ## A041390.P15286261909240539545

`A042622(n)/A000034(n+1)`
-/

namespace A041390.P15286261909240539545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042622 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041390.P15286261909240539545

/-! ## A041390.P9127484690388095853

`A042622(n)/A040001(n+2)`
-/

namespace A041390.P9127484690388095853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042622 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041390.P9127484690388095853

/-! ## A041390.P13556743271757562555

`A042622(n)/A134451(n+2)`
-/

namespace A041390.P13556743271757562555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042622 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A041390.P13556743271757562555

/-! ## A041390.P14836058410701820088

`A000034(n)/2*A042622(n)`
-/

namespace A041390.P14836058410701820088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042622 n : ℚ)

end

end A041390.P14836058410701820088

/-! ## A041390.P15129927546176472190

`A042622(n)/A242308(A073334(n))`
-/

namespace A041390.P15129927546176472190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042622 n : ℚ) / (A242308 (A073334 n).toNat : ℚ)

end

end A041390.P15129927546176472190

/-! ## A041390.P15799337675532766405

`A042622(n)/A141256(A133565(n+1))`
-/

namespace A041390.P15799337675532766405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042622 n : ℚ) / (A141256 (A133565 (n + 1)).toNat : ℚ)

end

end A041390.P15799337675532766405

/-! ## A041390.P10121195056070605892

`A042622(n)/A001511(A007947(n+2))`
-/

namespace A041390.P10121195056070605892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042622 n : ℚ) / (A001511 (A007947 (n + 2)).toNat : ℚ)

end

end A041390.P10121195056070605892

/-! ## A041390.P11233003368296201967

`A042622(n)/A001511(n²+2)`
-/

namespace A041390.P11233003368296201967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042622 n : ℚ) / (A001511 (n ^ 2 + 2) : ℚ)

end

end A041390.P11233003368296201967

/-!
# A041391: Denominators of continued fraction convergents to sqrt(210).

The programs for A041391, the canonical program `A041391.P10586969447159010185` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041391 has offset 0).

The definition of A041391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041391.P10586969447159010185

`58*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=57, a(3)=116`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041391

/-- `58*a(n-2)-a(n-4)` -/
def P10586969447159010185.Spec : Prop :=
  ∀ n, P10586969447159010185.a n = A041391 n

theorem P10586969447159010185.correct : P10586969447159010185.Spec := by
  intro n
  simp only [A041391]

end A041391

/-! ## A041391.P1765055876440607551

`(n%2+1)*A042623(n)`
-/

namespace A041391.P1765055876440607551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A042623 n

end

end A041391.P1765055876440607551

namespace A041391

/-- `(n%2+1)*A042623(n)` -/
def P1765055876440607551.Spec : Prop :=
  ∀ n, P1765055876440607551.a n = A041391 n

end A041391

/-! ## A041391.P2628535137656108180

`A000034(n)*A042623(n)`
-/

namespace A041391.P2628535137656108180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042623 n

end

end A041391.P2628535137656108180

namespace A041391

/-- `A000034(n)*A042623(n)` -/
def P2628535137656108180.Spec : Prop :=
  ∀ n, P2628535137656108180.a n = A041391 n

end A041391

/-! ## A041391.P6341330704774720943

`A040001(n+1)*A042623(n)`
-/

namespace A041391.P6341330704774720943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A042623 n

end

end A041391.P6341330704774720943

namespace A041391

/-- `A040001(n+1)*A042623(n)` -/
def P6341330704774720943.Spec : Prop :=
  ∀ n, P6341330704774720943.a n = A041391 n

end A041391

/-! ## A041391.P7315789503389391756

`A042623(n)*A134451(n+1)`
-/

namespace A041391.P7315789503389391756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042623 n * A134451 (n + 1)

end

end A041391.P7315789503389391756

namespace A041391

/-- `A042623(n)*A134451(n+1)` -/
def P7315789503389391756.Spec : Prop :=
  ∀ n, P7315789503389391756.a n = A041391 n

end A041391

/-! ## A041391.P11723322049849229202

`lcm(A006519(n+1), A042623(n))`
-/

namespace A041391.P11723322049849229202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A042623 n)

end

end A041391.P11723322049849229202

namespace A041391

/-- `lcm(A006519(n+1), A042623(n))` -/
def P11723322049849229202.Spec : Prop :=
  ∀ n, (P11723322049849229202.a n : ℤ) = A041391 n

end A041391

/-! ## A041391.P8342358493498875155

`Δ[A006368(Δ[n²])]*A042623(n)`
-/

namespace A041391.P8342358493498875155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042623 n

end

end A041391.P8342358493498875155

namespace A041391

/-- `Δ[A006368(Δ[n²])]*A042623(n)` -/
def P8342358493498875155.Spec : Prop :=
  ∀ n, P8342358493498875155.a n = A041391 n

end A041391

/-! ## A041391.P2902735510413740362

`A020639(A271060(n))*A042623(n)`
-/

namespace A041391.P2902735510413740362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A271060 n).toNat * A042623 n

end

end A041391.P2902735510413740362

namespace A041391

/-- `A020639(A271060(n))*A042623(n)` -/
def P2902735510413740362.Spec : Prop :=
  ∀ n, P2902735510413740362.a n = A041391 n

end A041391

/-!
# A041393: Denominators of continued fraction convergents to sqrt(211).

The programs for A041393, there is no canonical definition to state claims against.
-/

/-! ## A041393.P16924732536065075977

`A000174(lcm(n+1, A062561(n)))`
-/

namespace A041393.P16924732536065075977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (Int.lcm (n + 1 : ℤ) (A062561 n))

end

end A041393.P16924732536065075977

/-!
# A041397: Denominators of continued fraction convergents to sqrt(213).

The programs for A041397, there is no canonical definition to state claims against.
-/

/-! ## A041397.P13465866130083567370

`A378716(3*(n+1))+A256702(A216604(2*n+1))`
-/

namespace A041397.P13465866130083567370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378716 (3 * (n + 1)) + A256702 (A216604 (2 * n + 1)).toNat

end

end A041397.P13465866130083567370

/-!
# A041399: Denominators of continued fraction convergents to sqrt(214).

The programs for A041399, there is no canonical definition to state claims against.
-/

/-! ## A041399.P18006924764494222893

`A324292(lcm(A008619(n), A222201(n)))`
-/

namespace A041399.P18006924764494222893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324292 (Int.lcm (A008619 n) (A222201 n))

end

end A041399.P18006924764494222893

