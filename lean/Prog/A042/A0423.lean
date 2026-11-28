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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B005.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A042300: Numerators of continued fraction convergents to sqrt(677).

The programs for A042300, the canonical program `A042300.P173315665210422375` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042300 has offset 0).

The definition of A042300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042300.P173315665210422375

`ogf((26+x)/(1-52x-x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042300

/-- `ogf((26+x)/(1-52x-x^2))` -/
def P173315665210422375.Spec : Prop :=
  ∀ n, P173315665210422375.a n = A042300 n

theorem P173315665210422375.correct : P173315665210422375.Spec := by
  intro n
  simp only [A042300]

end A042300

/-! ## A042300.P16111063350642154747

`A042301(n+1)-26*A042301(n)`
-/

namespace A042300.P16111063350642154747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042301 (n + 1) - 26 * A042301 n

end

end A042300.P16111063350642154747

namespace A042300

/-- `A042301(n+1)-26*A042301(n)` -/
def P16111063350642154747.Spec : Prop :=
  ∀ n, P16111063350642154747.a n = A042300 n

end A042300

/-!
# A042301: Denominators of continued fraction convergents to sqrt(677).

The programs for A042301, the canonical program `A042301.P8330644888705433085` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042301 has offset 0).

The definition of A042301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042301.P6287552952176055323

`ogf(1/(1-52x-x^2))`
-/

namespace A042301.P6287552952176055323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -52, -1] n

end

end A042301.P6287552952176055323

namespace A042301

/-- `ogf(1/(1-52x-x^2))` -/
def P6287552952176055323.Spec : Prop :=
  ∀ n, P6287552952176055323.a n = A042301 n

end A042301

/-! ## A042301.P8330644888705433085

`52*a(n-1)+a(n-2)` with `a(0)=1, a(1)=52`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042301

/-- `52*a(n-1)+a(n-2)` -/
def P8330644888705433085.Spec : Prop :=
  ∀ n, (P8330644888705433085.a n : ℤ) = A042301 n

theorem P8330644888705433085.correct : P8330644888705433085.Spec := by
  intro n
  simp only [A042301]

end A042301

/-! ## A042301.P15553277699839237564

`a(A289207(n))+52*a(n-1)` with `a(0)=1, a(1)=52`
-/

namespace A042301.P15553277699839237564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 52] fun n a =>
  a (A289207 n).toNat + 52 * a (n - 1)

end

end A042301.P15553277699839237564

namespace A042301

/-- `a(A289207(n))+52*a(n-1)` -/
def P15553277699839237564.Spec : Prop :=
  ∀ n, (P15553277699839237564.a n : ℤ) = A042301 n

end A042301

/-! ## A042301.P12471546297299969142

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=52`
-/

namespace A042301.P12471546297299969142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 52] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042301.P12471546297299969142

namespace A042301

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P12471546297299969142.Spec : Prop :=
  ∀ n, P12471546297299969142.a n = (A042301 n : ℚ)

end A042301

/-! ## A042301.P406374991422746680

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=52`
-/

namespace A042301.P406374991422746680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 52] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042301.P406374991422746680

namespace A042301

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P406374991422746680.Spec : Prop :=
  ∀ n, P406374991422746680.a n = A042301 n

end A042301

/-!
# A042306: Numerators of continued fraction convergents to sqrt(680).

The programs for A042306, the canonical program `A042306.P10128316180618264585` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042306 has offset 0).

The definition of A042306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042306.P10128316180618264585

`ogf((26+339x+26x^2-x^3)/(1-678x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042306

/-- `ogf((26+339x+26x^2-x^3)/(1-678x^2+x^4))` -/
def P10128316180618264585.Spec : Prop :=
  ∀ n, P10128316180618264585.a n = A042306 n

theorem P10128316180618264585.correct : P10128316180618264585.Spec := by
  intro n
  simp only [A042306]

end A042306

/-! ## A042306.P12434822411966463002

`gcd(2, n)*A041312(n)`
-/

namespace A042306.P12434822411966463002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041312 n

end

end A042306.P12434822411966463002

namespace A042306

/-- `gcd(2, n)*A041312(n)` -/
def P12434822411966463002.Spec : Prop :=
  ∀ n, P12434822411966463002.a n = A042306 n

end A042306

/-! ## A042306.P16008995501656330313

`lcm(Δ[A052938(n)], A041312(n))`
-/

namespace A042306.P16008995501656330313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A041312 n)

end

end A042306.P16008995501656330313

namespace A042306

/-- `lcm(Δ[A052938(n)], A041312(n))` -/
def P16008995501656330313.Spec : Prop :=
  ∀ n, (P16008995501656330313.a n : ℤ) = A042306 n

end A042306

/-! ## A042306.P3872960654462066977

`A000034(1+n)*A041312(n)`
-/

namespace A042306.P3872960654462066977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (1 + n) * A041312 n

end

end A042306.P3872960654462066977

namespace A042306

/-- `A000034(1+n)*A041312(n)` -/
def P3872960654462066977.Spec : Prop :=
  ∀ n, P3872960654462066977.a n = A042306 n

end A042306

/-! ## A042306.P11658218496779751473

`2/A000034(n)*A041312(n)`
-/

namespace A042306.P11658218496779751473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041312 n : ℚ)

end

end A042306.P11658218496779751473

namespace A042306

/-- `2/A000034(n)*A041312(n)` -/
def P11658218496779751473.Spec : Prop :=
  ∀ n, P11658218496779751473.a n = (A042306 n : ℚ)

end A042306

/-! ## A042306.P375778715928598055

`val(A010694(n)²+5, 3)*A041312(n)`
-/

namespace A042306.P375778715928598055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A010694 n ^ 2 + 5).toNat 3 : ℤ) * A041312 n

end

end A042306.P375778715928598055

namespace A042306

/-- `val(A010694(n)²+5, 3)*A041312(n)` -/
def P375778715928598055.Spec : Prop :=
  ∀ n, P375778715928598055.a n = A042306 n

end A042306

/-!
# A042307: Denominators of continued fraction convergents to sqrt(680).

The programs for A042307, the canonical program `A042307.P1558198845792962237` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042307 has offset 0).

The definition of A042307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042307.P1558198845792962237

`ogf((1+13x-x^2)/(1-678x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042307

/-- `ogf((1+13x-x^2)/(1-678x^2+x^4))` -/
def P1558198845792962237.Spec : Prop :=
  ∀ n, P1558198845792962237.a n = A042307 n

theorem P1558198845792962237.correct : P1558198845792962237.Spec := by
  intro n
  simp only [A042307]

end A042307

/-! ## A042307.P16933460827406104736

`A041313(n)/gcd(2, 1+n)`
-/

namespace A042307.P16933460827406104736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (Nat.gcd 2 (1 + n) : ℚ)

end

end A042307.P16933460827406104736

namespace A042307

/-- `A041313(n)/gcd(2, 1+n)` -/
def P16933460827406104736.Spec : Prop :=
  ∀ n, P16933460827406104736.a n = (A042307 n : ℚ)

end A042307

/-! ## A042307.P11846358696934942606

`A041313(n)/A000034(n)`
-/

namespace A042307.P11846358696934942606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (A000034 n : ℚ)

end

end A042307.P11846358696934942606

namespace A042307

/-- `A041313(n)/A000034(n)` -/
def P11846358696934942606.Spec : Prop :=
  ∀ n, P11846358696934942606.a n = (A042307 n : ℚ)

end A042307

/-! ## A042307.P636546796330188739

`A041313(n)/A014695(n²)`
-/

namespace A042307.P636546796330188739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (A014695 (n ^ 2) : ℚ)

end

end A042307.P636546796330188739

namespace A042307

/-- `A041313(n)/A014695(n²)` -/
def P636546796330188739.Spec : Prop :=
  ∀ n, P636546796330188739.a n = (A042307 n : ℚ)

end A042307

/-! ## A042307.P8961765990812041731

`A041313(n)/Δ[Δ[A001859(n)]]`
-/

namespace A042307.P8961765990812041731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042307.P8961765990812041731

namespace A042307

/-- `A041313(n)/Δ[Δ[A001859(n)]]` -/
def P8961765990812041731.Spec : Prop :=
  ∀ n, P8961765990812041731.a n = (A042307 n : ℚ)

end A042307

/-! ## A042307.P9340966843074417839

`A041313(n)/A006519(n²+1)`
-/

namespace A042307.P9340966843074417839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A042307.P9340966843074417839

namespace A042307

/-- `A041313(n)/A006519(n²+1)` -/
def P9340966843074417839.Spec : Prop :=
  ∀ n, P9340966843074417839.a n = (A042307 n : ℚ)

end A042307

/-! ## A042307.P2260978001509175980

`A041313(n)/Δ[A001651(n+1)]`
-/

namespace A042307.P2260978001509175980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042307.P2260978001509175980

namespace A042307

/-- `A041313(n)/Δ[A001651(n+1)]` -/
def P2260978001509175980.Spec : Prop :=
  ∀ n, P2260978001509175980.a n = (A042307 n : ℚ)

end A042307

/-! ## A042307.P6458260927369905024

`A041313(n)/(Δ[A004526(n)]+1)`
-/

namespace A042307.P6458260927369905024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A042307.P6458260927369905024

namespace A042307

/-- `A041313(n)/(Δ[A004526(n)]+1)` -/
def P6458260927369905024.Spec : Prop :=
  ∀ n, P6458260927369905024.a n = (A042307 n : ℚ)

end A042307

/-! ## A042307.P11930708208248019185

`A041313(n)/A040000(Δ[A004526(n)])`
-/

namespace A042307.P11930708208248019185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (A040000 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042307.P11930708208248019185

namespace A042307

/-- `A041313(n)/A040000(Δ[A004526(n)])` -/
def P11930708208248019185.Spec : Prop :=
  ∀ n, P11930708208248019185.a n = (A042307 n : ℚ)

end A042307

/-! ## A042307.P15487449841509068599

`A041313(n)/A014963(A006519(n+1))`
-/

namespace A042307.P15487449841509068599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A042307.P15487449841509068599

namespace A042307

/-- `A041313(n)/A014963(A006519(n+1))` -/
def P15487449841509068599.Spec : Prop :=
  ∀ n, P15487449841509068599.a n = (A042307 n : ℚ)

end A042307

/-!
# A042309: Denominators of continued fraction convergents to sqrt(681).

The programs for A042309, there is no canonical definition to state claims against.
-/

/-! ## A042309.P18405375613009476231

`A016742(n)+A007953(A037054(n))`
-/

namespace A042309.P18405375613009476231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A007953 (A037054 n).toNat

end

end A042309.P18405375613009476231

/-!
# A042315: Denominators of continued fraction convergents to sqrt(684).

The programs for A042315, there is no canonical definition to state claims against.
-/

/-! ## A042315.P15499985764905027110

`∑[abs(A062329(A163932(3*n+4)))]`
-/

namespace A042315.P15499985764905027110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062329 (A163932 (3 * n + 4)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042315.P15499985764905027110

/-!
# A042321: Denominators of continued fraction convergents to sqrt(687).

The programs for A042321, there is no canonical definition to state claims against.
-/

/-! ## A042321.P14565527903599451208

`A056239(or(A015552(n), A066198(n+1)))`
-/

namespace A042321.P14565527903599451208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor (A015552 n) (A066198 (n + 1))).toNat

end

end A042321.P14565527903599451208

/-!
# A042324: Numerators of continued fraction convergents to sqrt(689).

The programs for A042324, the canonical program `A042324.P9736345496201248723` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042324 has offset 0).

The definition of A042324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042324.P9736345496201248723

`ogf((26+105x+26x^2-x^3)/(1-210x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042324

/-- `ogf((26+105x+26x^2-x^3)/(1-210x^2+x^4))` -/
def P9736345496201248723.Spec : Prop :=
  ∀ n, P9736345496201248723.a n = A042324 n

theorem P9736345496201248723.correct : P9736345496201248723.Spec := by
  intro n
  simp only [A042324]

end A042324

/-!
# A042325: Denominators of continued fraction convergents to sqrt(689).

The programs for A042325, the canonical program `A042325.P4212600164347450776` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042325 has offset 0).

The definition of A042325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042325.P3765942848575886651

`ogf((1+4x-x^2)/(1-210x^2+x^4))`
-/

namespace A042325.P3765942848575886651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1] [1, 0, -210, 0, 1] n

end

end A042325.P3765942848575886651

namespace A042325

/-- `ogf((1+4x-x^2)/(1-210x^2+x^4))` -/
def P3765942848575886651.Spec : Prop :=
  ∀ n, P3765942848575886651.a n = A042325 n

end A042325

/-! ## A042325.P4212600164347450776

`210*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=209, a(3)=840`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042325

/-- `210*a(n-2)-a(n-4)` -/
def P4212600164347450776.Spec : Prop :=
  ∀ n, P4212600164347450776.a n = A042325 n

theorem P4212600164347450776.correct : P4212600164347450776.Spec := by
  intro n
  simp only [A042325]

end A042325

/-!
# A042335: Denominators of continued fraction convergents to sqrt(694).

The programs for A042335, there is no canonical definition to state claims against.
-/

/-! ## A042335.P5668749807930477638

`A205028(xor(n, A107841(n)))`
-/

namespace A042335.P5668749807930477638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205028 (Int.xor (n : ℤ) (A107841 n)).toNat

end

end A042335.P5668749807930477638

/-!
# A042337: Denominators of continued fraction convergents to sqrt(695).

The programs for A042337, there is no canonical definition to state claims against.
-/

/-! ## A042337.P6504912202858737247

`A004648(A266213(n)+A083659(n+1))`
-/

namespace A042337.P6504912202858737247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A266213 n + A083659 (n + 1)).toNat

end

end A042337.P6504912202858737247

/-!
# A042338: Numerators of continued fraction convergents to sqrt(696).

The programs for A042338, there is no canonical definition to state claims against.
-/

/-! ## A042338.P4135418164828669956

`A345352(A345352(a(n-2)))+a(n-1)` with `a(0)=26, a(1)=53`
-/

namespace A042338.P4135418164828669956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [26, 53] fun n a =>
  A345352 (A345352 (a (n - 2)).toNat).toNat + a (n - 1)

end

end A042338.P4135418164828669956

/-!
# A042340: Numerators of continued fraction convergents to sqrt(697).

The programs for A042340, the canonical program `A042340.P5915047499524835217` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042340 has offset 0).

The definition of A042340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042340.P5915047499524835217

`ogf((26+53x+132x^2+53x^3-26x^4+x^5)/(1-264x^3-x^6))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042340

/-- `ogf((26+53x+132x^2+53x^3-26x^4+x^5)/(1-264x^3-x^6))` -/
def P5915047499524835217.Spec : Prop :=
  ∀ n, P5915047499524835217.a n = A042340 n

theorem P5915047499524835217.correct : P5915047499524835217.Spec := by
  intro n
  simp only [A042340]

end A042340

/-!
# A042341: Denominators of continued fraction convergents to sqrt(697).

The programs for A042341, the canonical program `A042341.P205452468633089428` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042341 has offset 0).

The definition of A042341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042341.P205452468633089428

`ogf((1+2x+5x^2-2x^3+x^4)/(1-264x^3-x^6))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042341

/-- `ogf((1+2x+5x^2-2x^3+x^4)/(1-264x^3-x^6))` -/
def P205452468633089428.Spec : Prop :=
  ∀ n, P205452468633089428.a n = A042341 n

theorem P205452468633089428.correct : P205452468633089428.Spec := by
  intro n
  simp only [A042341]

end A042341

/-!
# A042350: Numerators of continued fraction convergents to sqrt(702).

The programs for A042350, the canonical program `A042350.P14123008708584982142` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042350 has offset 0).

The definition of A042350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042350.P14123008708584982142

`ogf((26+53x+26x^2-x^3)/(1-106x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042350

/-- `ogf((26+53x+26x^2-x^3)/(1-106x^2+x^4))` -/
def P14123008708584982142.Spec : Prop :=
  ∀ n, P14123008708584982142.a n = A042350 n

theorem P14123008708584982142.correct : P14123008708584982142.Spec := by
  intro n
  simp only [A042350]

end A042350

/-!
# A042351: Denominators of continued fraction convergents to sqrt(702).

The programs for A042351, the canonical program `A042351.P9477665814424271680` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042351 has offset 0).

The definition of A042351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042351.P1191834867676137640

`ogf((1+2x-x^2)/(1-106x^2+x^4))`
-/

namespace A042351.P1191834867676137640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -106, 0, 1] n

end

end A042351.P1191834867676137640

namespace A042351

/-- `ogf((1+2x-x^2)/(1-106x^2+x^4))` -/
def P1191834867676137640.Spec : Prop :=
  ∀ n, P1191834867676137640.a n = A042351 n

end A042351

/-! ## A042351.P9477665814424271680

`106*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=105, a(3)=212`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042351

/-- `106*a(n-2)-a(n-4)` -/
def P9477665814424271680.Spec : Prop :=
  ∀ n, P9477665814424271680.a n = A042351 n

theorem P9477665814424271680.correct : P9477665814424271680.Spec := by
  intro n
  simp only [A042351]

end A042351

/-!
# A042353: Denominators of continued fraction convergents to sqrt(703).

The programs for A042353, there is no canonical definition to state claims against.
-/

/-! ## A042353.P8349313973624626513

`A042891(n)-A226460(A154638(n))`
-/

namespace A042353.P8349313973624626513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042891 n - A226460 (A154638 n).toNat

end

end A042353.P8349313973624626513

/-!
# A042355: Denominators of continued fraction convergents to sqrt(704).

The programs for A042355, there is no canonical definition to state claims against.
-/

/-! ## A042355.P15468257512820472966

`A057161(A199343(n)^A049782(n+1))`
-/

namespace A042355.P15468257512820472966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (SequenceMachineLib.roundAway ((A199343 n : ℚ) ^ (A049782 (n + 1) : ℤ))).toNat

end

end A042355.P15468257512820472966

/-!
# A042357: Denominators of continued fraction convergents to sqrt(705).

The programs for A042357, there is no canonical definition to state claims against.
-/

/-! ## A042357.P12402389594292745567

`A070317(a(n-1))+7` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A042357.P12402389594292745567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A070317 (a (n - 1)).toNat + 7

end

end A042357.P12402389594292745567

/-!
# A042359: Denominators of continued fraction convergents to sqrt(706).

The programs for A042359, there is no canonical definition to state claims against.
-/

/-! ## A042359.P4507828367478658563

`A008459(n)*A354361(A259792(n))`
-/

namespace A042359.P4507828367478658563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A354361 (A259792 n).toNat

end

end A042359.P4507828367478658563

/-!
# A042363: Denominators of continued fraction convergents to sqrt(708).

The programs for A042363, there is no canonical definition to state claims against.
-/

/-! ## A042363.P445244649626475402

`A004396(A326685(3*n+4)+A281618(n+1))`
-/

namespace A042363.P445244649626475402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A326685 (3 * n + 4) + A281618 (n + 1)).toNat

end

end A042363.P445244649626475402

/-!
# A042365: Denominators of continued fraction convergents to sqrt(709).

The programs for A042365, there is no canonical definition to state claims against.
-/

/-! ## A042365.P12870062099949132745

`∑[A165084(∑[A219229(n)])]`
-/

namespace A042365.P12870062099949132745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219229 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165084 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042365.P12870062099949132745

/-! ## A042365.P17858572403969385663

`A045917(A144690(n)+A000142(n))`
-/

namespace A042365.P17858572403969385663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A144690 n + A000142 n).toNat

end

end A042365.P17858572403969385663

/-!
# A042368: Numerators of continued fraction convergents to sqrt(711).

The programs for A042368, the canonical program `A042368.P9945793735797906194` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042368 has offset 0).

The definition of A042368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042368.P9945793735797906194

`ogf((26+27x+53x^2+80x^3+53x^4-27x^5+26x^6-x^7)/(1-160x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042368

/-- `ogf((26+27x+53x^2+80x^3+53x^4-27x^5+26x^6-x^7)/(1-160x^4+x^8))` -/
def P9945793735797906194.Spec : Prop :=
  ∀ n, P9945793735797906194.a n = A042368 n

theorem P9945793735797906194.correct : P9945793735797906194.Spec := by
  intro n
  simp only [A042368]

end A042368

/-!
# A042369: Denominators of continued fraction convergents to sqrt(711).

The programs for A042369, the canonical program `A042369.P7048449530795593392` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042369 has offset 0).

The definition of A042369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042369.P7048449530795593392

`ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-160x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042369

/-- `ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-160x^4+x^8))` -/
def P7048449530795593392.Spec : Prop :=
  ∀ n, P7048449530795593392.a n = A042369 n

theorem P7048449530795593392.correct : P7048449530795593392.Spec := by
  intro n
  simp only [A042369]

end A042369

/-! ## A042369.P3551955056437860308

`A004525(A042701(n)+A042073(n))`
-/

namespace A042369.P3551955056437860308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042701 n + A042073 n).toNat

end

end A042369.P3551955056437860308

namespace A042369

/-- `A004525(A042701(n)+A042073(n))` -/
def P3551955056437860308.Spec : Prop :=
  ∀ n, P3551955056437860308.a n = A042369 n

end A042369

/-! ## A042369.P11902544488743915161

`A004526(A042701(n)+A042073(n))`
-/

namespace A042369.P11902544488743915161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042701 n + A042073 n).toNat

end

end A042369.P11902544488743915161

namespace A042369

/-- `A004526(A042701(n)+A042073(n))` -/
def P11902544488743915161.Spec : Prop :=
  ∀ n, P11902544488743915161.a n = A042369 n

end A042369

/-!
# A042370: Numerators of continued fraction convergents to sqrt(712).

The programs for A042370, there is no canonical definition to state claims against.
-/

/-! ## A042370.P13087221341900517666

`gcd(2, n)*A041328(n)`
-/

namespace A042370.P13087221341900517666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041328 n

end

end A042370.P13087221341900517666

/-! ## A042370.P7213801667336582102

`Δ[A007494(n)]*A041328(n)`
-/

namespace A042370.P7213801667336582102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041328 n

end

end A042370.P7213801667336582102

/-! ## A042370.P8251279047010085792

`A000034(1+n)*A041328(n)`
-/

namespace A042370.P8251279047010085792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (1 + n) * A041328 n

end

end A042370.P8251279047010085792

/-! ## A042370.P9869661539437697568

`A040001(n+2)*A041328(n)`
-/

namespace A042370.P9869661539437697568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041328 n

end

end A042370.P9869661539437697568

/-! ## A042370.P7618724944379550104

`(2-A000035(n))*A041328(n)`
-/

namespace A042370.P7618724944379550104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A041328 n

end

end A042370.P7618724944379550104

/-! ## A042370.P5019291158547722941

`2/A000034(n)*A041328(n)`
-/

namespace A042370.P5019291158547722941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041328 n : ℚ)

end

end A042370.P5019291158547722941

/-! ## A042370.P372015740600545459

`A000010(Δ[A047451(n+1)])*A041328(n)`
-/

namespace A042370.P372015740600545459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat * A041328 n

end

end A042370.P372015740600545459

/-!
# A042371: Denominators of continued fraction convergents to sqrt(712).

The programs for A042371, there is no canonical definition to state claims against.
-/

/-! ## A042371.P10258977692273378006

`A041329(n)/A000034(n)`
-/

namespace A042371.P10258977692273378006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (A000034 n : ℚ)

end

end A042371.P10258977692273378006

/-! ## A042371.P2043026156060148324

`A041329(n)/Δ[A032766(n)]`
-/

namespace A042371.P2043026156060148324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042371.P2043026156060148324

/-! ## A042371.P1329824660039333093

`A041329(n)/Δ[A001651(n+1)]`
-/

namespace A042371.P1329824660039333093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042371.P1329824660039333093

/-! ## A042371.P8247105715099649875

`A041329(n)/(Δ[A008619(n)]+1)`
-/

namespace A042371.P8247105715099649875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A042371.P8247105715099649875

/-! ## A042371.P5446784807838816564

`A041329(n)/A041329(Δ[A008619(n)])`
-/

namespace A042371.P5446784807838816564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (A041329 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042371.P5446784807838816564

/-! ## A042371.P3559872996246089893

`A041329(n)/A006519(A002522(n))`
-/

namespace A042371.P3559872996246089893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (A006519 (A002522 n).toNat : ℚ)

end

end A042371.P3559872996246089893

/-!
# A042373: Denominators of continued fraction convergents to sqrt(713).

The programs for A042373, there is no canonical definition to state claims against.
-/

/-! ## A042373.P2328645870227034795

`A325353(A088274(n+1))-A060130(n)`
-/

namespace A042373.P2328645870227034795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325353 (A088274 (n + 1)).toNat - A060130 n

end

end A042373.P2328645870227034795

/-! ## A042373.P15346172746656837651

`or(A049802(n+1), A321393(A065694(n)))`
-/

namespace A042373.P15346172746656837651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049802 (n + 1)) (A321393 (A065694 n).toNat)

end

end A042373.P15346172746656837651

/-!
# A042375: Denominators of continued fraction convergents to sqrt(714).

The programs for A042375, there is no canonical definition to state claims against.
-/

/-! ## A042375.P7628428506998501622

`Δ[A054404(∑[A295333(n)])]`
-/

namespace A042375.P7628428506998501622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A042375.P7628428506998501622

/-! ## A042375.P13749484768048514519

`A093873(∑[record[A108520(n)]])`
-/

namespace A042375.P13749484768048514519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A042375.P13749484768048514519

/-! ## A042375.P17493507318492856345

`A093611(n+1)+A008683(A067713(n))`
-/

namespace A042375.P17493507318492856345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093611 (n + 1) + A008683 (A067713 n).toNat

end

end A042375.P17493507318492856345

/-! ## A042375.P15789507921955355648

`gcd(A008683(A166060(n)), A093611(n+1))`
-/

namespace A042375.P15789507921955355648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A166060 n).toNat) (A093611 (n + 1))

end

end A042375.P15789507921955355648

/-!
# A042377: Denominators of continued fraction convergents to sqrt(715).

The programs for A042377, there is no canonical definition to state claims against.
-/

/-! ## A042377.P7820314328834140415

`A113736(a(n-1)+4)` with `a(0)=1, a(1)=1`
-/

namespace A042377.P7820314328834140415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A113736 (a (n - 1) + 4).toNat

end

end A042377.P7820314328834140415

/-!
# A042381: Denominators of continued fraction convergents to sqrt(717).

The programs for A042381, there is no canonical definition to state claims against.
-/

/-! ## A042381.P844789708288846264

`A088473(A041137(n))`
-/

namespace A042381.P844789708288846264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088473 (A041137 n).toNat

end

end A042381.P844789708288846264

/-!
# A042383: Denominators of continued fraction convergents to sqrt(718).

The programs for A042383, there is no canonical definition to state claims against.
-/

/-! ## A042383.P14812372055552982631

`A275552(n)+A007814(n^n)`
-/

namespace A042383.P14812372055552982631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275552 n + A007814 (n ^ n)

end

end A042383.P14812372055552982631

/-!
# A042385: Denominators of continued fraction convergents to sqrt(719).

The programs for A042385, there is no canonical definition to state claims against.
-/

/-! ## A042385.P16992280989146375618

`A301726(A000045(n)%A002079(n))`
-/

namespace A042385.P16992280989146375618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 (Int.tmod (A000045 n) (A002079 n)).toNat

end

end A042385.P16992280989146375618

/-! ## A042385.P17305237175721170340

`A066628(A022383(n)^A357299(n+1))`
-/

namespace A042385.P17305237175721170340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (SequenceMachineLib.roundAway ((A022383 n : ℚ) ^ (A357299 (n + 1) : ℤ))).toNat

end

end A042385.P17305237175721170340

/-! ## A042385.P7027391851238513735

`A301726(A000045(n))%A364637(n+1)`
-/

namespace A042385.P7027391851238513735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301726 (A000045 n).toNat) (A364637 (n + 1))

end

end A042385.P7027391851238513735

/-!
# A042386: Numerators of continued fraction convergents to sqrt(720).

The programs for A042386, the canonical program `A042386.P9821975407807383547` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042386 has offset 0).

The definition of A042386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042386.P9821975407807383547

`ogf((26+27x+134x^2+161x^3+134x^4-27x^5+26x^6-x^7)/(1-322x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042386

/-- `ogf((26+27x+134x^2+161x^3+134x^4-27x^5+26x^6-x^7)/(1-322x^4+x^8))` -/
def P9821975407807383547.Spec : Prop :=
  ∀ n, P9821975407807383547.a n = A042386 n

theorem P9821975407807383547.correct : P9821975407807383547.Spec := by
  intro n
  simp only [A042386]

end A042386

/-! ## A042386.P5661442013927897109

`gcd(2, n)*A041332(n)`
-/

namespace A042386.P5661442013927897109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041332 n

end

end A042386.P5661442013927897109

namespace A042386

/-- `gcd(2, n)*A041332(n)` -/
def P5661442013927897109.Spec : Prop :=
  ∀ n, P5661442013927897109.a n = A042386 n

end A042386

/-! ## A042386.P16524931730852153135

`Δ[A007494(n)]*A041332(n)`
-/

namespace A042386.P16524931730852153135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041332 n

end

end A042386.P16524931730852153135

namespace A042386

/-- `Δ[A007494(n)]*A041332(n)` -/
def P16524931730852153135.Spec : Prop :=
  ∀ n, P16524931730852153135.a n = A042386 n

end A042386

/-! ## A042386.P1476735320706871314

`A000034(1+n)*A041332(n)`
-/

namespace A042386.P1476735320706871314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (1 + n) * A041332 n

end

end A042386.P1476735320706871314

namespace A042386

/-- `A000034(1+n)*A041332(n)` -/
def P1476735320706871314.Spec : Prop :=
  ∀ n, P1476735320706871314.a n = A042386 n

end A042386

/-! ## A042386.P16749764190928925543

`2/A000034(n)*A041332(n)`
-/

namespace A042386.P16749764190928925543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041332 n : ℚ)

end

end A042386.P16749764190928925543

namespace A042386

/-- `2/A000034(n)*A041332(n)` -/
def P16749764190928925543.Spec : Prop :=
  ∀ n, P16749764190928925543.a n = (A042386 n : ℚ)

end A042386

/-! ## A042386.P9753522094922728209

`A000032(Δ[A008619(n)])*A041332(n)`
-/

namespace A042386.P9753522094922728209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat * A041332 n

end

end A042386.P9753522094922728209

namespace A042386

/-- `A000032(Δ[A008619(n)])*A041332(n)` -/
def P9753522094922728209.Spec : Prop :=
  ∀ n, P9753522094922728209.a n = A042386 n

end A042386

/-! ## A042386.P15427360809030091503

`A001511(A047589(n+1))*A041332(n)`
-/

namespace A042386.P15427360809030091503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A047589 (n + 1)).toNat * A041332 n

end

end A042386.P15427360809030091503

namespace A042386

/-- `A001511(A047589(n+1))*A041332(n)` -/
def P15427360809030091503.Spec : Prop :=
  ∀ n, P15427360809030091503.a n = A042386 n

end A042386

/-! ## A042386.P17922842953107291475

`lcm(A000034(A007947(n+1)), A041332(n))`
-/

namespace A042386.P17922842953107291475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (A007947 (n + 1)).toNat) (A041332 n)

end

end A042386.P17922842953107291475

namespace A042386

/-- `lcm(A000034(A007947(n+1)), A041332(n))` -/
def P17922842953107291475.Spec : Prop :=
  ∀ n, (P17922842953107291475.a n : ℤ) = A042386 n

end A042386

/-! ## A042386.P3482066110582342402

`A001511(A089120(n+1))*A041332(n)`
-/

namespace A042386.P3482066110582342402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A089120 (n + 1)).toNat * A041332 n

end

end A042386.P3482066110582342402

namespace A042386

/-- `A001511(A089120(n+1))*A041332(n)` -/
def P3482066110582342402.Spec : Prop :=
  ∀ n, P3482066110582342402.a n = A042386 n

end A042386

/-! ## A042386.P16764326936995454961

`A001511(n²+2)*A041332(n)`
-/

namespace A042386.P16764326936995454961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 2) * A041332 n

end

end A042386.P16764326936995454961

namespace A042386

/-- `A001511(n²+2)*A041332(n)` -/
def P16764326936995454961.Spec : Prop :=
  ∀ n, P16764326936995454961.a n = A042386 n

end A042386

/-!
# A042387: Denominators of continued fraction convergents to sqrt(720).

The programs for A042387, the canonical program `A042387.P13018802944096290651` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042387 has offset 0).

The definition of A042387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042387.P13018802944096290651

`ogf((1+x+5x^2+6x^3-5x^4+x^5-x^6)/(1-322x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042387

/-- `ogf((1+x+5x^2+6x^3-5x^4+x^5-x^6)/(1-322x^4+x^8))` -/
def P13018802944096290651.Spec : Prop :=
  ∀ n, P13018802944096290651.a n = A042387 n

theorem P13018802944096290651.correct : P13018802944096290651.Spec := by
  intro n
  simp only [A042387]

end A042387

/-! ## A042387.P6560336370238636804

`A041333(n)/A000034(n)`
-/

namespace A042387.P6560336370238636804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A000034 n : ℚ)

end

end A042387.P6560336370238636804

namespace A042387

/-- `A041333(n)/A000034(n)` -/
def P6560336370238636804.Spec : Prop :=
  ∀ n, P6560336370238636804.a n = (A042387 n : ℚ)

end A042387

/-! ## A042387.P17291422146124079454

`A041333(n)/Δ[A032766(n)]`
-/

namespace A042387.P17291422146124079454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042387.P17291422146124079454

namespace A042387

/-- `A041333(n)/Δ[A032766(n)]` -/
def P17291422146124079454.Spec : Prop :=
  ∀ n, P17291422146124079454.a n = (A042387 n : ℚ)

end A042387

/-! ## A042387.P13123677012802924243

`A041333(n)/A260438(A016789(n))`
-/

namespace A042387.P13123677012802924243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A260438 (A016789 n).toNat : ℚ)

end

end A042387.P13123677012802924243

namespace A042387

/-- `A041333(n)/A260438(A016789(n))` -/
def P13123677012802924243.Spec : Prop :=
  ∀ n, P13123677012802924243.a n = (A042387 n : ℚ)

end A042387

/-! ## A042387.P3160426135452410924

`A041333(n)/A306240(Δ[A052928(n)])`
-/

namespace A042387.P3160426135452410924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A306240 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042387.P3160426135452410924

namespace A042387

/-- `A041333(n)/A306240(Δ[A052928(n)])` -/
def P3160426135452410924.Spec : Prop :=
  ∀ n, P3160426135452410924.a n = (A042387 n : ℚ)

end A042387

/-! ## A042387.P2250926780776999904

`A041333(n)/A001511(A007947(n+1))`
-/

namespace A042387.P2250926780776999904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A001511 (A007947 (n + 1)).toNat : ℚ)

end

end A042387.P2250926780776999904

namespace A042387

/-- `A041333(n)/A001511(A007947(n+1))` -/
def P2250926780776999904.Spec : Prop :=
  ∀ n, P2250926780776999904.a n = (A042387 n : ℚ)

end A042387

/-! ## A042387.P11272224798494276735

`A041333(n)/A014963(A006519(n+1))`
-/

namespace A042387.P11272224798494276735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A042387.P11272224798494276735

namespace A042387

/-- `A041333(n)/A014963(A006519(n+1))` -/
def P11272224798494276735.Spec : Prop :=
  ∀ n, P11272224798494276735.a n = (A042387 n : ℚ)

end A042387

/-! ## A042387.P10037005646212625778

`A041333(n)/A006519(A020639(n+1))`
-/

namespace A042387.P10037005646212625778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A006519 (A020639 (n + 1)).toNat : ℚ)

end

end A042387.P10037005646212625778

namespace A042387

/-- `A041333(n)/A006519(A020639(n+1))` -/
def P10037005646212625778.Spec : Prop :=
  ∀ n, P10037005646212625778.a n = (A042387 n : ℚ)

end A042387

/-! ## A042387.P10774018197660566939

`A041333(n)/A041333(n-A052928(n))`
-/

namespace A042387.P10774018197660566939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A041333 ((n : ℤ) - A052928 n).toNat : ℚ)

end

end A042387.P10774018197660566939

namespace A042387

/-- `A041333(n)/A041333(n-A052928(n))` -/
def P10774018197660566939.Spec : Prop :=
  ∀ n, P10774018197660566939.a n = (A042387 n : ℚ)

end A042387

/-! ## A042387.P7750881406166038959

`A041333(n)/A001511(n²+1)`
-/

namespace A042387.P7750881406166038959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A001511 (n ^ 2 + 1) : ℚ)

end

end A042387.P7750881406166038959

namespace A042387

/-- `A041333(n)/A001511(n²+1)` -/
def P7750881406166038959.Spec : Prop :=
  ∀ n, P7750881406166038959.a n = (A042387 n : ℚ)

end A042387

/-! ## A042387.P18362207137607720437

`A041333(n)/A006519(n²+1)`
-/

namespace A042387.P18362207137607720437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A042387.P18362207137607720437

namespace A042387

/-- `A041333(n)/A006519(n²+1)` -/
def P18362207137607720437.Spec : Prop :=
  ∀ n, P18362207137607720437.a n = (A042387 n : ℚ)

end A042387

/-!
# A042392: Numerators of continued fraction convergents to sqrt(723).

The programs for A042392, the canonical program `A042392.P12076691381768011679` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042392 has offset 0).

The definition of A042392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042392.P12076691381768011679

`ogf((26+27x+215x^2+242x^3+215x^4-27x^5+26x^6-x^7)/(1-484x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042392

/-- `ogf((26+27x+215x^2+242x^3+215x^4-27x^5+26x^6-x^7)/(1-484x^4+x^8))` -/
def P12076691381768011679.Spec : Prop :=
  ∀ n, P12076691381768011679.a n = A042392 n

theorem P12076691381768011679.correct : P12076691381768011679.Spec := by
  intro n
  simp only [A042392]

end A042392

/-!
# A042393: Denominators of continued fraction convergents to sqrt(723).

The programs for A042393, the canonical program `A042393.P13936403767009996705` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042393 has offset 0).

The definition of A042393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042393.P13936403767009996705

`ogf((1+x+8x^2+9x^3-8x^4+x^5-x^6)/(1-484x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042393

/-- `ogf((1+x+8x^2+9x^3-8x^4+x^5-x^6)/(1-484x^4+x^8))` -/
def P13936403767009996705.Spec : Prop :=
  ∀ n, P13936403767009996705.a n = A042393 n

theorem P13936403767009996705.correct : P13936403767009996705.Spec := by
  intro n
  simp only [A042393]

end A042393

/-!
# A042397: Denominators of continued fraction convergents to sqrt(725).

The programs for A042397, there is no canonical definition to state claims against.
-/

/-! ## A042397.P7712900348886323932

`A039217(or(A042005(n), A201629(n)))`
-/

namespace A042397.P7712900348886323932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039217 (Int.lor (A042005 n) (A201629 n)).toNat

end

end A042397.P7712900348886323932

/-!
# A042398: Numerators of continued fraction convergents to sqrt(726).

The programs for A042398, the canonical program `A042398.P1049131537348864788` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042398 has offset 0).

The definition of A042398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042398.P1049131537348864788

`ogf((26+27x+458x^2+485x^3+458x^4-27x^5+26x^6-x^7)/(1-970x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042398

/-- `ogf((26+27x+458x^2+485x^3+458x^4-27x^5+26x^6-x^7)/(1-970x^4+x^8))` -/
def P1049131537348864788.Spec : Prop :=
  ∀ n, P1049131537348864788.a n = A042398 n

theorem P1049131537348864788.correct : P1049131537348864788.Spec := by
  intro n
  simp only [A042398]

end A042398

/-!
# A042399: Denominators of continued fraction convergents to sqrt(726).

The programs for A042399, the canonical program `A042399.P5016787760246982243` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042399 has offset 0).

The definition of A042399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042399.P5016787760246982243

`ogf((1+x+17x^2+18x^3-17x^4+x^5-x^6)/(1-970x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042399

/-- `ogf((1+x+17x^2+18x^3-17x^4+x^5-x^6)/(1-970x^4+x^8))` -/
def P5016787760246982243.Spec : Prop :=
  ∀ n, P5016787760246982243.a n = A042399 n

theorem P5016787760246982243.correct : P5016787760246982243.Spec := by
  intro n
  simp only [A042399]

end A042399

