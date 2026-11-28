import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C041
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A041902: Numerators of continued fraction convergents to sqrt(473).

The programs for A041902, the canonical program `A041902.P12053289279023884228` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041902 has offset 0).

The definition of A041902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041902.P12053289279023884228

`ogf((21+22x+65x^2+87x^3+65x^4-22x^5+21x^6-x^7)/(1-174x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041902

/-- `ogf((21+22x+65x^2+87x^3+65x^4-22x^5+21x^6-x^7)/(1-174x^4+x^8))` -/
def P12053289279023884228.Spec : Prop :=
  ∀ n, P12053289279023884228.a n = A041902 n

theorem P12053289279023884228.correct : P12053289279023884228.Spec := by
  intro n
  simp only [A041902]

end A041902

/-!
# A041903: Denominators of continued fraction convergents to sqrt(473).

The programs for A041903, the canonical program `A041903.P8008674223263072293` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041903 has offset 0).

The definition of A041903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041903.P8008674223263072293

`174*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=171, a(5)=175, a(6)=521, a(7)=696`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041903

/-- `174*a(n-4)-a(n-8)` -/
def P8008674223263072293.Spec : Prop :=
  ∀ n, P8008674223263072293.a n = A041903 n

theorem P8008674223263072293.correct : P8008674223263072293.Spec := by
  intro n
  simp only [A041903]

end A041903

/-! ## A041903.P2093153462636896502

`ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-174x^4+x^8))`
-/

namespace A041903.P2093153462636896502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 4, -3, 1, -1] [1, 0, 0, 0, -174, 0, 0, 0, 1] n

end

end A041903.P2093153462636896502

namespace A041903

/-- `ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-174x^4+x^8))` -/
def P2093153462636896502.Spec : Prop :=
  ∀ n, P2093153462636896502.a n = A041903 n

end A041903

/-! ## A041903.P13197619456305757560

`A001281(A042081(n)+A041741(n))`
-/

namespace A041903.P13197619456305757560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A042081 n + A041741 n).toNat

end

end A041903.P13197619456305757560

namespace A041903

/-- `A001281(A042081(n)+A041741(n))` -/
def P13197619456305757560.Spec : Prop :=
  ∀ n, P13197619456305757560.a n = A041903 n

end A041903

/-!
# A041905: Denominators of continued fraction convergents to sqrt(474).

The programs for A041905, there is no canonical definition to state claims against.
-/

/-! ## A041905.P12140257663071964487

`A105519(A323862(n+1)+A041904(n))`
-/

namespace A041905.P12140257663071964487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A323862 (n + 1) + A041904 n).toNat

end

end A041905.P12140257663071964487

/-!
# A041909: Denominators of continued fraction convergents to sqrt(476).

The programs for A041909, there is no canonical definition to state claims against.
-/

/-! ## A041909.P4200164316114022285

`22^a(n-1)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=11, a(4)=115, a(5)=241`
-/

namespace A041909.P4200164316114022285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5, 11, 115, 241] fun n a =>
  22 ^ a (n - 1)

end

end A041909.P4200164316114022285

/-!
# A041911: Denominators of continued fraction convergents to sqrt(477).

The programs for A041911, there is no canonical definition to state claims against.
-/

/-! ## A041911.P7023840519224480688

`A383193(A041211(n))`
-/

namespace A041911.P7023840519224480688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383193 (A041211 n).toNat

end

end A041911.P7023840519224480688

/-!
# A041913: Denominators of continued fraction convergents to sqrt(478).

The programs for A041913, there is no canonical definition to state claims against.
-/

/-! ## A041913.P13986180684949869813

`A265705(A008295(3*n)*A045499(n))`
-/

namespace A041913.P13986180684949869813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265705 (A008295 (3 * n) * A045499 n).toNat

end

end A041913.P13986180684949869813

/-!
# A041916: Numerators of continued fraction convergents to sqrt(480).

The programs for A041916, the canonical program `A041916.P8918913623469329885` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041916 has offset 0).

The definition of A041916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041916.P8918913623469329885

`ogf((21+22x+219x^2+241x^3+219x^4-22x^5+21x^6-x^7)/(1-482x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041916

/-- `ogf((21+22x+219x^2+241x^3+219x^4-22x^5+21x^6-x^7)/(1-482x^4+x^8))` -/
def P8918913623469329885.Spec : Prop :=
  ∀ n, P8918913623469329885.a n = A041916 n

theorem P8918913623469329885.correct : P8918913623469329885.Spec := by
  intro n
  simp only [A041916]

end A041916

/-!
# A041917: Denominators of continued fraction convergents to sqrt(480).

The programs for A041917, the canonical program `A041917.P16525780609299321376` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041917 has offset 0).

The definition of A041917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041917.P16525780609299321376

`ogf((1+x+10x^2+11x^3-10x^4+x^5-x^6)/(1-482x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041917

/-- `ogf((1+x+10x^2+11x^3-10x^4+x^5-x^6)/(1-482x^4+x^8))` -/
def P16525780609299321376.Spec : Prop :=
  ∀ n, P16525780609299321376.a n = A041917 n

theorem P16525780609299321376.correct : P16525780609299321376.Spec := by
  intro n
  simp only [A041917]

end A041917

/-!
# A041920: Numerators of continued fraction convergents to sqrt(482).

The programs for A041920, the canonical program `A041920.P7395438848430320836` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041920 has offset 0).

The definition of A041920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041920.P7395438848430320836

`ogf((21+22x+461x^2+483x^3+461x^4-22x^5+21x^6-x^7)/(1-966x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041920

/-- `ogf((21+22x+461x^2+483x^3+461x^4-22x^5+21x^6-x^7)/(1-966x^4+x^8))` -/
def P7395438848430320836.Spec : Prop :=
  ∀ n, P7395438848430320836.a n = A041920 n

theorem P7395438848430320836.correct : P7395438848430320836.Spec := by
  intro n
  simp only [A041920]

end A041920

/-!
# A041921: Denominators of continued fraction convergents to sqrt(482).

The programs for A041921, the canonical program `A041921.P7827315687162224813` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041921 has offset 0).

The definition of A041921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041921.P7827315687162224813

`ogf((1+x+21x^2+22x^3-21x^4+x^5-x^6)/(1-966x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041921

/-- `ogf((1+x+21x^2+22x^3-21x^4+x^5-x^6)/(1-966x^4+x^8))` -/
def P7827315687162224813.Spec : Prop :=
  ∀ n, P7827315687162224813.a n = A041921 n

theorem P7827315687162224813.correct : P7827315687162224813.Spec := by
  intro n
  simp only [A041921]

end A041921

/-!
# A041922: Numerators of continued fraction convergents to sqrt(483).

The programs for A041922, the canonical program `A041922.P2751656773947299227` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041922 has offset 0).

The definition of A041922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041922.P5569217251858423712

`ogf((21+22x+21x^2-x^3)/(1-44x^2+x^4))`
-/

namespace A041922.P5569217251858423712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, 22, 21, -1] [1, 0, -44, 0, 1] n

end

end A041922.P5569217251858423712

namespace A041922

/-- `ogf((21+22x+21x^2-x^3)/(1-44x^2+x^4))` -/
def P5569217251858423712.Spec : Prop :=
  ∀ n, P5569217251858423712.a n = A041922 n

end A041922

/-! ## A041922.P2751656773947299227

`44*a(n-2)-a(n-4)` with `a(0)=21, a(1)=22, a(2)=945, a(3)=967`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041922

/-- `44*a(n-2)-a(n-4)` -/
def P2751656773947299227.Spec : Prop :=
  ∀ n, P2751656773947299227.a n = A041922 n

theorem P2751656773947299227.correct : P2751656773947299227.Spec := by
  intro n
  simp only [A041922]

end A041922

/-!
# A041923: Denominators of continued fraction convergents to sqrt(483).

The programs for A041923, the canonical program `A041923.P13341697187303893232` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041923 has offset 0).

The definition of A041923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041923.P13978061908847375124

`ogf((1+x-x^2)/(1-44x^2+x^4))`
-/

namespace A041923.P13978061908847375124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -44, 0, 1] n

end

end A041923.P13978061908847375124

namespace A041923

/-- `ogf((1+x-x^2)/(1-44x^2+x^4))` -/
def P13978061908847375124.Spec : Prop :=
  ∀ n, P13978061908847375124.a n = A041923 n

end A041923

/-! ## A041923.P13341697187303893232

`44*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=43, a(3)=44`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041923

/-- `44*a(n-2)-a(n-4)` -/
def P13341697187303893232.Spec : Prop :=
  ∀ n, P13341697187303893232.a n = A041923 n

theorem P13341697187303893232.correct : P13341697187303893232.Spec := by
  intro n
  simp only [A041923]

end A041923

/-!
# A041924: Numerators of continued fraction convergents to sqrt(485).

The programs for A041924, the canonical program `A041924.P3482193164427378553` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041924 has offset 0).

The definition of A041924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041924.P13843203394643892726

`ogf((22+x)/(1-44x-x^2))`
-/

namespace A041924.P13843203394643892726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [22, 1] [1, -44, -1] n

end

end A041924.P13843203394643892726

namespace A041924

/-- `ogf((22+x)/(1-44x-x^2))` -/
def P13843203394643892726.Spec : Prop :=
  ∀ n, P13843203394643892726.a n = A041924 n

end A041924

/-! ## A041924.P3482193164427378553

`44*a(n-1)+a(n-2)` with `a(0)=22, a(1)=969`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041924

/-- `44*a(n-1)+a(n-2)` -/
def P3482193164427378553.Spec : Prop :=
  ∀ n, (P3482193164427378553.a n : ℤ) = A041924 n

theorem P3482193164427378553.correct : P3482193164427378553.Spec := by
  intro n
  simp only [A041924]

end A041924

/-! ## A041924.P5180983486033598126

`A041925(n+1)-22*A041925(n)`
-/

namespace A041924.P5180983486033598126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041925 (n + 1) - 22 * A041925 n

end

end A041924.P5180983486033598126

namespace A041924

/-- `A041925(n+1)-22*A041925(n)` -/
def P5180983486033598126.Spec : Prop :=
  ∀ n, P5180983486033598126.a n = A041924 n

end A041924

/-!
# A041925: Denominators of continued fraction convergents to sqrt(485).

The programs for A041925, the canonical program `A041925.P15583635226805764172` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041925 has offset 0).

The definition of A041925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041925.P7649792153550019329

`ogf(1/(1-44x-x^2))`
-/

namespace A041925.P7649792153550019329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -44, -1] n

end

end A041925.P7649792153550019329

namespace A041925

/-- `ogf(1/(1-44x-x^2))` -/
def P7649792153550019329.Spec : Prop :=
  ∀ n, P7649792153550019329.a n = A041925 n

end A041925

/-! ## A041925.P15583635226805764172

`44*a(n-1)+a(n-2)` with `a(0)=1, a(1)=44`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041925

/-- `44*a(n-1)+a(n-2)` -/
def P15583635226805764172.Spec : Prop :=
  ∀ n, (P15583635226805764172.a n : ℤ) = A041925 n

theorem P15583635226805764172.correct : P15583635226805764172.Spec := by
  intro n
  simp only [A041925]

end A041925

/-! ## A041925.P12722290284154724138

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=44`
-/

namespace A041925.P12722290284154724138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 44] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A041925.P12722290284154724138

namespace A041925

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P12722290284154724138.Spec : Prop :=
  ∀ n, P12722290284154724138.a n = (A041925 n : ℚ)

end A041925

/-! ## A041925.P14315099369777578688

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=44`
-/

namespace A041925.P14315099369777578688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 44] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A041925.P14315099369777578688

namespace A041925

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P14315099369777578688.Spec : Prop :=
  ∀ n, P14315099369777578688.a n = A041925 n

end A041925

/-!
# A041926: Numerators of continued fraction convergents to sqrt(486).

The programs for A041926, the canonical program `A041926.P18378061131540132933` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041926 has offset 0).

The definition of A041926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041926.P18378061131540132933

`ogf((22+485x+22x^2-x^3)/(1-970x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041926

/-- `ogf((22+485x+22x^2-x^3)/(1-970x^2+x^4))` -/
def P18378061131540132933.Spec : Prop :=
  ∀ n, P18378061131540132933.a n = A041926 n

theorem P18378061131540132933.correct : P18378061131540132933.Spec := by
  intro n
  simp only [A041926]

end A041926

/-! ## A041926.P1914644222880698507

`A041006(2+3*n)`
-/

namespace A041926.P1914644222880698507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 (2 + 3 * n)

end

end A041926.P1914644222880698507

namespace A041926

/-- `A041006(2+3*n)` -/
def P1914644222880698507.Spec : Prop :=
  ∀ n, P1914644222880698507.a n = A041926 n

end A041926

/-! ## A041926.P13229049253762124469

`A041092(3*n+2)`
-/

namespace A041926.P13229049253762124469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041092 (3 * n + 2)

end

end A041926.P13229049253762124469

namespace A041926

/-- `A041092(3*n+2)` -/
def P13229049253762124469.Spec : Prop :=
  ∀ n, P13229049253762124469.a n = A041926 n

end A041926

/-! ## A041926.P831393259043464438

`record[A041006(A166517(n))]`
-/

namespace A041926.P831393259043464438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 (A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041926.P831393259043464438

namespace A041926

/-- `record[A041006(A166517(n))]` -/
def P831393259043464438.Spec : Prop :=
  ∀ n, P831393259043464438.a n = A041926 n

end A041926

/-! ## A041926.P16264864178276333644

`∩[A041006(n), A041092(n)]`
-/

namespace A041926.P16264864178276333644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A041926.P16264864178276333644

namespace A041926

/-- `∩[A041006(n), A041092(n)]` -/
def P16264864178276333644.Spec : Prop :=
  ∀ n, (P16264864178276333644.a n : ℤ) = A041926 n

end A041926

/-! ## A041926.P3705329072119481914

`record[A041006(Δ[A092530(n)])]`
-/

namespace A041926.P3705329072119481914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041926.P3705329072119481914

namespace A041926

/-- `record[A041006(Δ[A092530(n)])]` -/
def P3705329072119481914.Spec : Prop :=
  ∀ n, P3705329072119481914.a n = A041926 n

end A041926

/-!
# A041927: Denominators of continued fraction convergents to sqrt(486).

The programs for A041927, the canonical program `A041927.P8228691205783633000` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041927 has offset 0).

The definition of A041927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041927.P8228691205783633000

`ogf((1+22x-x^2)/(1-970x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041927

/-- `ogf((1+22x-x^2)/(1-970x^2+x^4))` -/
def P8228691205783633000.Spec : Prop :=
  ∀ n, P8228691205783633000.a n = A041927 n

theorem P8228691205783633000.correct : P8228691205783633000.Spec := by
  intro n
  simp only [A041927]

end A041927

/-! ## A041927.P16031361698726470050

`A041093(3*n+2)/3`
-/

namespace A041927.P16031361698726470050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 (3 * n + 2) : ℚ) / 3

end

end A041927.P16031361698726470050

namespace A041927

/-- `A041093(3*n+2)/3` -/
def P16031361698726470050.Spec : Prop :=
  ∀ n, P16031361698726470050.a n = (A041927 n : ℚ)

end A041927

/-! ## A041927.P6848576179559722254

`A041007(2+3*n)/9`
-/

namespace A041927.P6848576179559722254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 (2 + 3 * n) : ℚ) / 9

end

end A041927.P6848576179559722254

namespace A041927

/-- `A041007(2+3*n)/9` -/
def P6848576179559722254.Spec : Prop :=
  ∀ n, P6848576179559722254.a n = (A041927 n : ℚ)

end A041927

/-!
# A041930: Numerators of continued fraction convergents to sqrt(488).

The programs for A041930, the canonical program `A041930.P16156986222730919826` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041930 has offset 0).

The definition of A041930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041930.P16156986222730919826

`ogf((22+243x+22x^2-x^3)/(1-486x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041930

/-- `ogf((22+243x+22x^2-x^3)/(1-486x^2+x^4))` -/
def P16156986222730919826.Spec : Prop :=
  ∀ n, P16156986222730919826.a n = A041930 n

theorem P16156986222730919826.correct : P16156986222730919826.Spec := by
  intro n
  simp only [A041930]

end A041930

/-! ## A041930.P10857562830340161305

`gcd(2, n)*A041220(n)`
-/

namespace A041930.P10857562830340161305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041220 n

end

end A041930.P10857562830340161305

namespace A041930

/-- `gcd(2, n)*A041220(n)` -/
def P10857562830340161305.Spec : Prop :=
  ∀ n, P10857562830340161305.a n = A041930 n

end A041930

/-! ## A041930.P8291059049792824056

`lcm(Δ[A052938(n)], A041220(n))`
-/

namespace A041930.P8291059049792824056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A041220 n)

end

end A041930.P8291059049792824056

namespace A041930

/-- `lcm(Δ[A052938(n)], A041220(n))` -/
def P8291059049792824056.Spec : Prop :=
  ∀ n, (P8291059049792824056.a n : ℤ) = A041930 n

end A041930

/-! ## A041930.P18064383274050111071

`A000034(1+n)*A041220(n)`
-/

namespace A041930.P18064383274050111071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (1 + n) * A041220 n

end

end A041930.P18064383274050111071

namespace A041930

/-- `A000034(1+n)*A041220(n)` -/
def P18064383274050111071.Spec : Prop :=
  ∀ n, P18064383274050111071.a n = A041930 n

end A041930

/-! ## A041930.P887158819438645194

`A090313(n+1)/A000034(n)`
-/

namespace A041930.P887158819438645194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090313 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041930.P887158819438645194

namespace A041930

/-- `A090313(n+1)/A000034(n)` -/
def P887158819438645194.Spec : Prop :=
  ∀ n, P887158819438645194.a n = (A041930 n : ℚ)

end A041930

/-! ## A041930.P641523812375436252

`(3-A000034(n))*A041220(n)`
-/

namespace A041930.P641523812375436252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041220 n

end

end A041930.P641523812375436252

namespace A041930

/-- `(3-A000034(n))*A041220(n)` -/
def P641523812375436252.Spec : Prop :=
  ∀ n, P641523812375436252.a n = A041930 n

end A041930

/-!
# A041931: Denominators of continued fraction convergents to sqrt(488).

The programs for A041931, the canonical program `A041931.P14920958433840631375` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041931 has offset 0).

The definition of A041931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041931.P14920958433840631375

`ogf((1+11x-x^2)/(1-486x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041931

/-- `ogf((1+11x-x^2)/(1-486x^2+x^4))` -/
def P14920958433840631375.Spec : Prop :=
  ∀ n, P14920958433840631375.a n = A041931 n

theorem P14920958433840631375.correct : P14920958433840631375.Spec := by
  intro n
  simp only [A041931]

end A041931

/-! ## A041931.P268166920931239133

`A041221(n)/A000034(n)`
-/

namespace A041931.P268166920931239133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (A000034 n : ℚ)

end

end A041931.P268166920931239133

namespace A041931

/-- `A041221(n)/A000034(n)` -/
def P268166920931239133.Spec : Prop :=
  ∀ n, P268166920931239133.a n = (A041931 n : ℚ)

end A041931

/-! ## A041931.P17577657788804972918

`A041221(n)/A010673(n)!`
-/

namespace A041931.P17577657788804972918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A041931.P17577657788804972918

namespace A041931

/-- `A041221(n)/A010673(n)!` -/
def P17577657788804972918.Spec : Prop :=
  ∀ n, P17577657788804972918.a n = (A041931 n : ℚ)

end A041931

/-! ## A041931.P13645955629104919721

`A041221(n)/Δ[A032766(n)]`
-/

namespace A041931.P13645955629104919721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041931.P13645955629104919721

namespace A041931

/-- `A041221(n)/Δ[A032766(n)]` -/
def P13645955629104919721.Spec : Prop :=
  ∀ n, P13645955629104919721.a n = (A041931 n : ℚ)

end A041931

/-! ## A041931.P7474002401491522196

`A041221(n)/(A000035(n)+1)`
-/

namespace A041931.P7474002401491522196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041931.P7474002401491522196

namespace A041931

/-- `A041221(n)/(A000035(n)+1)` -/
def P7474002401491522196.Spec : Prop :=
  ∀ n, P7474002401491522196.a n = (A041931 n : ℚ)

end A041931

/-! ## A041931.P4171128795026690771

`A041221(n)/A134451(n+1)`
-/

namespace A041931.P4171128795026690771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (A134451 (n + 1) : ℚ)

end

end A041931.P4171128795026690771

namespace A041931

/-- `A041221(n)/A134451(n+1)` -/
def P4171128795026690771.Spec : Prop :=
  ∀ n, P4171128795026690771.a n = (A041931 n : ℚ)

end A041931

/-! ## A041931.P4559065728112785896

`A041221(n)/A006519(n²+1)`
-/

namespace A041931.P4559065728112785896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041931.P4559065728112785896

namespace A041931

/-- `A041221(n)/A006519(n²+1)` -/
def P4559065728112785896.Spec : Prop :=
  ∀ n, P4559065728112785896.a n = (A041931 n : ℚ)

end A041931

/-! ## A041931.P5245395305430706613

`A041221(n)/A006530(A006519(n+1))`
-/

namespace A041931.P5245395305430706613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (A006530 (A006519 (n + 1)).toNat : ℚ)

end

end A041931.P5245395305430706613

namespace A041931

/-- `A041221(n)/A006530(A006519(n+1))` -/
def P5245395305430706613.Spec : Prop :=
  ∀ n, P5245395305430706613.a n = (A041931 n : ℚ)

end A041931

/-!
# A041939: Denominators of continued fraction convergents to sqrt(492).

The programs for A041939, there is no canonical definition to state claims against.
-/

/-! ## A041939.P14816501055584711322

`A055035(A282980(n))+A022309(n)`
-/

namespace A041939.P14816501055584711322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (A282980 n).toNat + A022309 n

end

end A041939.P14816501055584711322

/-!
# A041943: Denominators of continued fraction convergents to sqrt(494).

The programs for A041943, there is no canonical definition to state claims against.
-/

/-! ## A041943.P5937986127722026031

`A151572(n)+A002487(A007484(n))`
-/

namespace A041943.P5937986127722026031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 n + A002487 (A007484 n).toNat

end

end A041943.P5937986127722026031

/-!
# A041944: Numerators of continued fraction convergents to sqrt(495).

The programs for A041944, the canonical program `A041944.P6595356183635447963` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041944 has offset 0).

The definition of A041944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041944.P6595356183635447963

`ogf((22+89x+22x^2-x^3)/(1-178x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041944

/-- `ogf((22+89x+22x^2-x^3)/(1-178x^2+x^4))` -/
def P6595356183635447963.Spec : Prop :=
  ∀ n, P6595356183635447963.a n = A041944 n

theorem P6595356183635447963.correct : P6595356183635447963.Spec := by
  intro n
  simp only [A041944]

end A041944

/-! ## A041944.P13497698282002713918

`A041094(2*n+1)-A041094(2*n)*A110514(2*n+1)`
-/

namespace A041944.P13497698282002713918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041094 (2 * n + 1) - A041094 (2 * n) * A110514 (2 * n + 1)

end

end A041944.P13497698282002713918

namespace A041944

/-- `A041094(2*n+1)-A041094(2*n)*A110514(2*n+1)` -/
def P13497698282002713918.Spec : Prop :=
  ∀ n, P13497698282002713918.a n = A041944 n

end A041944

/-!
# A041945: Denominators of continued fraction convergents to sqrt(495).

The programs for A041945, the canonical program `A041945.P17094087469757302406` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041945 has offset 0).

The definition of A041945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041945.P12571999193750379638

`ogf((1+4x-x^2)/(1-178x^2+x^4))`
-/

namespace A041945.P12571999193750379638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1] [1, 0, -178, 0, 1] n

end

end A041945.P12571999193750379638

namespace A041945

/-- `ogf((1+4x-x^2)/(1-178x^2+x^4))` -/
def P12571999193750379638.Spec : Prop :=
  ∀ n, P12571999193750379638.a n = A041945 n

end A041945

/-! ## A041945.P17094087469757302406

`178*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=177, a(3)=712`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041945

/-- `178*a(n-2)-a(n-4)` -/
def P17094087469757302406.Spec : Prop :=
  ∀ n, P17094087469757302406.a n = A041945 n

theorem P17094087469757302406.correct : P17094087469757302406.Spec := by
  intro n
  simp only [A041945]

end A041945

/-!
# A041949: Denominators of continued fraction convergents to sqrt(497).

The programs for A041949, there is no canonical definition to state claims against.
-/

/-! ## A041949.P5727477195021825576

`xor(n, A330474(n)+A014301(n+1))`
-/

namespace A041949.P5727477195021825576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A330474 n + A014301 (n + 1))

end

end A041949.P5727477195021825576

/-!
# A041953: Denominators of continued fraction convergents to sqrt(499).

The programs for A041953, there is no canonical definition to state claims against.
-/

/-! ## A041953.P7583349228299579141

`and(A115160(n+1), A219421(A081908(n)))`
-/

namespace A041953.P7583349228299579141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115160 (n + 1)) (A219421 (A081908 n).toNat)

end

end A041953.P7583349228299579141

/-!
# A041957: Denominators of continued fraction convergents to sqrt(501).

The programs for A041957, there is no canonical definition to state claims against.
-/

/-! ## A041957.P13396202372746256059

`A357522(A371351(n+1)+A333431(n+1))`
-/

namespace A041957.P13396202372746256059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357522 (A371351 (n + 1) + A333431 (n + 1)).toNat

end

end A041957.P13396202372746256059

/-!
# A041961: Denominators of continued fraction convergents to sqrt(503).

The programs for A041961, there is no canonical definition to state claims against.
-/

/-! ## A041961.P17403927175512378344

`∑[A008619(A076822(n*gcd(2, n)))]`
-/

namespace A041961.P17403927175512378344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A076822 (n * Nat.gcd 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041961.P17403927175512378344

/-!
# A041962: Numerators of continued fraction convergents to sqrt(504).

The programs for A041962, the canonical program `A041962.P17879111775999889029` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041962 has offset 0).

The definition of A041962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041962.P17879111775999889029

`ogf((22+45x+202x^2+449x^3+202x^4-45x^5+22x^6-x^7)/(1-898x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041962

/-- `ogf((22+45x+202x^2+449x^3+202x^4-45x^5+22x^6-x^7)/(1-898x^4+x^8))` -/
def P17879111775999889029.Spec : Prop :=
  ∀ n, P17879111775999889029.a n = A041962 n

theorem P17879111775999889029.correct : P17879111775999889029.Spec := by
  intro n
  simp only [A041962]

end A041962

/-! ## A041962.P5975191087485199765

`gcd(2, n)*A041228(n)`
-/

namespace A041962.P5975191087485199765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041228 n

end

end A041962.P5975191087485199765

namespace A041962

/-- `gcd(2, n)*A041228(n)` -/
def P5975191087485199765.Spec : Prop :=
  ∀ n, P5975191087485199765.a n = A041962 n

end A041962

/-! ## A041962.P3473566040514394302

`A000034(1+n)*A041228(n)`
-/

namespace A041962.P3473566040514394302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (1 + n) * A041228 n

end

end A041962.P3473566040514394302

namespace A041962

/-- `A000034(1+n)*A041228(n)` -/
def P3473566040514394302.Spec : Prop :=
  ∀ n, P3473566040514394302.a n = A041962 n

end A041962

/-! ## A041962.P2024649445140502424

`2/A000034(n)*A041228(n)`
-/

namespace A041962.P2024649445140502424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041228 n : ℚ)

end

end A041962.P2024649445140502424

namespace A041962

/-- `2/A000034(n)*A041228(n)` -/
def P2024649445140502424.Spec : Prop :=
  ∀ n, P2024649445140502424.a n = (A041962 n : ℚ)

end A041962

/-! ## A041962.P6207003770512937362

`(∑[A033999(n)]+1)*A041228(n)`
-/

namespace A041962.P6207003770512937362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A041228 n

end

end A041962.P6207003770512937362

namespace A041962

/-- `(∑[A033999(n)]+1)*A041228(n)` -/
def P6207003770512937362.Spec : Prop :=
  ∀ n, P6207003770512937362.a n = A041962 n

end A041962

/-! ## A041962.P7361041178410326090

`A000079(∑[A033999(n)])*A041228(n)`
-/

namespace A041962.P7361041178410326090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A041228 n

end

end A041962.P7361041178410326090

namespace A041962

/-- `A000079(∑[A033999(n)])*A041228(n)` -/
def P7361041178410326090.Spec : Prop :=
  ∀ n, P7361041178410326090.a n = A041962 n

end A041962

/-! ## A041962.P14962696451416111572

`A041228(n)*A041235(∑[A033999(n)])`
-/

namespace A041962.P14962696451416111572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041228 n * A041235 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041962.P14962696451416111572

namespace A041962

/-- `A041228(n)*A041235(∑[A033999(n)])` -/
def P14962696451416111572.Spec : Prop :=
  ∀ n, P14962696451416111572.a n = A041962 n

end A041962

/-! ## A041962.P6603295876766922968

`lcm(gcd(4, A041622(n)), A041228(n))`
-/

namespace A041962.P6603295876766922968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.gcd 4 (A041622 n) : ℤ) (A041228 n)

end

end A041962.P6603295876766922968

namespace A041962

/-- `lcm(gcd(4, A041622(n)), A041228(n))` -/
def P6603295876766922968.Spec : Prop :=
  ∀ n, (P6603295876766922968.a n : ℤ) = A041962 n

end A041962

/-!
# A041963: Denominators of continued fraction convergents to sqrt(504).

The programs for A041963, the canonical program `A041963.P15477007785878644389` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041963 has offset 0).

The definition of A041963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041963.P15477007785878644389

`ogf((1+2x+9x^2+20x^3-9x^4+2x^5-x^6)/(1-898x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041963

/-- `ogf((1+2x+9x^2+20x^3-9x^4+2x^5-x^6)/(1-898x^4+x^8))` -/
def P15477007785878644389.Spec : Prop :=
  ∀ n, P15477007785878644389.a n = A041963 n

theorem P15477007785878644389.correct : P15477007785878644389.Spec := by
  intro n
  simp only [A041963]

end A041963

/-! ## A041963.P18424590113121229334

`lcm(2, A041229(n))/2`
-/

namespace A041963.P18424590113121229334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041229 n) : ℚ) / 2

end

end A041963.P18424590113121229334

namespace A041963

/-- `lcm(2, A041229(n))/2` -/
def P18424590113121229334.Spec : Prop :=
  ∀ n, P18424590113121229334.a n = (A041963 n : ℚ)

end A041963

/-! ## A041963.P12173459025066873081

`A041229(n)/A000034(n)`
-/

namespace A041963.P12173459025066873081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041229 n : ℚ) / (A000034 n : ℚ)

end

end A041963.P12173459025066873081

namespace A041963

/-- `A041229(n)/A000034(n)` -/
def P12173459025066873081.Spec : Prop :=
  ∀ n, P12173459025066873081.a n = (A041963 n : ℚ)

end A041963

/-! ## A041963.P12680570107342743570

`A041229(n)/Δ[A007494(n+1)]`
-/

namespace A041963.P12680570107342743570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041229 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041963.P12680570107342743570

namespace A041963

/-- `A041229(n)/Δ[A007494(n+1)]` -/
def P12680570107342743570.Spec : Prop :=
  ∀ n, P12680570107342743570.a n = (A041963 n : ℚ)

end A041963

/-! ## A041963.P687486902527131059

`Δ[A007494(n)/2]*A041229(n)`
-/

namespace A041963.P687486902527131059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A041229 n : ℚ)

end

end A041963.P687486902527131059

namespace A041963

/-- `Δ[A007494(n)/2]*A041229(n)` -/
def P687486902527131059.Spec : Prop :=
  ∀ n, P687486902527131059.a n = (A041963 n : ℚ)

end A041963

/-! ## A041963.P5986110801780704721

`A041229(n)/A053222(Δ[A007494(n)])`
-/

namespace A041963.P5986110801780704721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041229 n : ℚ) / (A053222 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041963.P5986110801780704721

namespace A041963

/-- `A041229(n)/A053222(Δ[A007494(n)])` -/
def P5986110801780704721.Spec : Prop :=
  ∀ n, P5986110801780704721.a n = (A041963 n : ℚ)

end A041963

/-! ## A041963.P10599092268956188160

`A041229(n)/A006530(A006519(n+1))`
-/

namespace A041963.P10599092268956188160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041229 n : ℚ) / (A006530 (A006519 (n + 1)).toNat : ℚ)

end

end A041963.P10599092268956188160

namespace A041963

/-- `A041229(n)/A006530(A006519(n+1))` -/
def P10599092268956188160.Spec : Prop :=
  ∀ n, P10599092268956188160.a n = (A041963 n : ℚ)

end A041963

/-! ## A041963.P9315072446029076733

`A041229(n)/A006519(n²+1)`
-/

namespace A041963.P9315072446029076733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041229 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041963.P9315072446029076733

namespace A041963

/-- `A041229(n)/A006519(n²+1)` -/
def P9315072446029076733.Spec : Prop :=
  ∀ n, P9315072446029076733.a n = (A041963 n : ℚ)

end A041963

/-!
# A041966: Numerators of continued fraction convergents to sqrt(506).

The programs for A041966, the canonical program `A041966.P14524356907965027232` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041966 has offset 0).

The definition of A041966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041966.P14524356907965027232

`ogf((22+45x+22x^2-x^3)/(1-90x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041966

/-- `ogf((22+45x+22x^2-x^3)/(1-90x^2+x^4))` -/
def P14524356907965027232.Spec : Prop :=
  ∀ n, P14524356907965027232.a n = A041966 n

theorem P14524356907965027232.correct : P14524356907965027232.Spec := by
  intro n
  simp only [A041966]

end A041966

/-!
# A041967: Denominators of continued fraction convergents to sqrt(506).

The programs for A041967, the canonical program `A041967.P18374034172772300654` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041967 has offset 0).

The definition of A041967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041967.P16711452061353006440

`ogf((1+2x-x^2)/(1-90x^2+x^4))`
-/

namespace A041967.P16711452061353006440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -90, 0, 1] n

end

end A041967.P16711452061353006440

namespace A041967

/-- `ogf((1+2x-x^2)/(1-90x^2+x^4))` -/
def P16711452061353006440.Spec : Prop :=
  ∀ n, P16711452061353006440.a n = A041967 n

end A041967

/-! ## A041967.P18374034172772300654

`90*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=89, a(3)=180`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041967

/-- `90*a(n-2)-a(n-4)` -/
def P18374034172772300654.Spec : Prop :=
  ∀ n, P18374034172772300654.a n = A041967 n

theorem P18374034172772300654.correct : P18374034172772300654.Spec := by
  intro n
  simp only [A041967]

end A041967

/-!
# A041971: Denominators of continued fraction convergents to sqrt(508).

The programs for A041971, there is no canonical definition to state claims against.
-/

/-! ## A041971.P11298825271145815822

`A027748(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^(lcm(2, n)+n%2))`
-/

namespace A041971.P11298825271145815822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ (Nat.lcm 2 n + n % 2))).toNat

end

end A041971.P11298825271145815822

/-!
# A041974: Numerators of continued fraction convergents to sqrt(510).

The programs for A041974, the canonical program `A041974.P17763189816290408034` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041974 has offset 0).

The definition of A041974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041974.P17763189816290408034

`ogf((22+23x+45x^2+113x^3+158x^4+271x^5+158x^6-113x^7+45x^8-23x^9+22x^10-x^11)/(1-542x^6+x^12))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041974

/-- `ogf((22+23x+45x^2+113x^3+158x^4+271x^5+158x^6-113x^7+45x^8-23x^9+22x^10-x^11)/(1-542x^6+x^12))` -/
def P17763189816290408034.Spec : Prop :=
  ∀ n, P17763189816290408034.a n = A041974 n

theorem P17763189816290408034.correct : P17763189816290408034.Spec := by
  intro n
  simp only [A041974]

end A041974

/-!
# A041975: Denominators of continued fraction convergents to sqrt(510).

The programs for A041975, the canonical program `A041975.P16071454633844643227` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041975 has offset 0).

The definition of A041975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041975.P16071454633844643227

`ogf((1+x+2x^2+5x^3+7x^4+12x^5-7x^6+5x^7-2x^8+x^9-x^10)/(1-542x^6+x^12))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041975

/-- `ogf((1+x+2x^2+5x^3+7x^4+12x^5-7x^6+5x^7-2x^8+x^9-x^10)/(1-542x^6+x^12))` -/
def P16071454633844643227.Spec : Prop :=
  ∀ n, P16071454633844643227.a n = A041975 n

theorem P16071454633844643227.correct : P16071454633844643227.Spec := by
  intro n
  simp only [A041975]

end A041975

/-! ## A041975.P15288775341594438075

`A041517(n)+A004526(A042577(n)-A041517(n))`
-/

namespace A041975.P15288775341594438075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041517 n + A004526 (A042577 n - A041517 n).toNat

end

end A041975.P15288775341594438075

namespace A041975

/-- `A041517(n)+A004526(A042577(n)-A041517(n))` -/
def P15288775341594438075.Spec : Prop :=
  ∀ n, P15288775341594438075.a n = A041975 n

end A041975

/-! ## A041975.P14044990849521076445

`A004526(A042577(n)+A041517(n))`
-/

namespace A041975.P14044990849521076445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042577 n + A041517 n).toNat

end

end A041975.P14044990849521076445

namespace A041975

/-- `A004526(A042577(n)+A041517(n))` -/
def P14044990849521076445.Spec : Prop :=
  ∀ n, P14044990849521076445.a n = A041975 n

end A041975

/-!
# A041979: Denominators of continued fraction convergents to sqrt(512).

The programs for A041979, there is no canonical definition to state claims against.
-/

/-! ## A041979.P9165757529535572974

`A110656(A038052(n)+A034856(n+1))`
-/

namespace A041979.P9165757529535572974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A038052 n + A034856 (n + 1)).toNat

end

end A041979.P9165757529535572974

/-! ## A041979.P14709058852236633763

`A157604(n)+A002266(A121407(n+1))`
-/

namespace A041979.P14709058852236633763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157604 n + A002266 (A121407 (n + 1)).toNat

end

end A041979.P14709058852236633763

/-!
# A041983: Denominators of continued fraction convergents to sqrt(514).

The programs for A041983, there is no canonical definition to state claims against.
-/

/-! ## A041983.P6285129296220472830

`A272620(A387999(n+1))+A076279(n+1)`
-/

namespace A041983.P6285129296220472830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272620 (A387999 (n + 1)).toNat + A076279 (n + 1)

end

end A041983.P6285129296220472830

/-!
# A041989: Denominators of continued fraction convergents to sqrt(517).

The programs for A041989, there is no canonical definition to state claims against.
-/

/-! ## A041989.P5071556870603002851

`A025453(A267881(n)+A077538(n))`
-/

namespace A041989.P5071556870603002851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (A267881 n + A077538 n).toNat

end

end A041989.P5071556870603002851

/-! ## A041989.P12851927135044056875

`xor(A008651(A214997(n)), A099927(n))`
-/

namespace A041989.P12851927135044056875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008651 (A214997 n).toNat) (A099927 n)

end

end A041989.P12851927135044056875

/-!
# A041991: Denominators of continued fraction convergents to sqrt(518).

The programs for A041991, there is no canonical definition to state claims against.
-/

/-! ## A041991.P4945251400702979154

`A331912(A014741(n+1)-n)`
-/

namespace A041991.P4945251400702979154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (A014741 (n + 1) - (n : ℤ)).toNat

end

end A041991.P4945251400702979154

/-!
# A041994: Numerators of continued fraction convergents to sqrt(520).

The programs for A041994, the canonical program `A041994.P15394733854599508984` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041994 has offset 0).

The definition of A041994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041994.P15394733854599508984

`lcm(Δ[floor(3*(n+3)/2)], A041236(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041994

/-- `lcm(Δ[floor(3*(n+3)/2)], A041236(n))` -/
def P15394733854599508984.Spec : Prop :=
  ∀ n, (P15394733854599508984.a n : ℤ) = A041994 n

theorem P15394733854599508984.correct : P15394733854599508984.Spec := by
  intro n
  simp only [A041994]

end A041994

/-! ## A041994.P4540575757366534482

`Δ[A007494(n)]*A041236(n)`
-/

namespace A041994.P4540575757366534482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041236 n

end

end A041994.P4540575757366534482

namespace A041994

/-- `Δ[A007494(n)]*A041236(n)` -/
def P4540575757366534482.Spec : Prop :=
  ∀ n, P4540575757366534482.a n = A041994 n

end A041994

/-! ## A041994.P13951710586259247176

`A000034(1+n)*A041236(n)`
-/

namespace A041994.P13951710586259247176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (1 + n) * A041236 n

end

end A041994.P13951710586259247176

namespace A041994

/-- `A000034(1+n)*A041236(n)` -/
def P13951710586259247176.Spec : Prop :=
  ∀ n, P13951710586259247176.a n = A041994 n

end A041994

/-! ## A041994.P4634715557854004871

`A041236(n)*A134451(n+2)`
-/

namespace A041994.P4634715557854004871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041236 n * A134451 (n + 2)

end

end A041994.P4634715557854004871

namespace A041994

/-- `A041236(n)*A134451(n+2)` -/
def P4634715557854004871.Spec : Prop :=
  ∀ n, P4634715557854004871.a n = A041994 n

end A041994

/-! ## A041994.P14763842325249271264

`2/A000034(n)*A041236(n)`
-/

namespace A041994.P14763842325249271264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041236 n : ℚ)

end

end A041994.P14763842325249271264

namespace A041994

/-- `2/A000034(n)*A041236(n)` -/
def P14763842325249271264.Spec : Prop :=
  ∀ n, P14763842325249271264.a n = (A041994 n : ℚ)

end A041994

/-! ## A041994.P5825645006044056664

`A000079(∑[(-1)^n])*A041236(n)`
-/

namespace A041994.P5825645006044056664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A041236 n

end

end A041994.P5825645006044056664

namespace A041994

/-- `A000079(∑[(-1)^n])*A041236(n)` -/
def P5825645006044056664.Spec : Prop :=
  ∀ n, P5825645006044056664.a n = A041994 n

end A041994

/-! ## A041994.P10550836372823122935

`A000712(∑[(-1)^n])*A041236(n)`
-/

namespace A041994.P10550836372823122935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A041236 n

end

end A041994.P10550836372823122935

namespace A041994

/-- `A000712(∑[(-1)^n])*A041236(n)` -/
def P10550836372823122935.Spec : Prop :=
  ∀ n, P10550836372823122935.a n = A041994 n

end A041994

/-! ## A041994.P1473253928976264622

`A041236(n)*A240877(∑[(-1)^n])`
-/

namespace A041994.P1473253928976264622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041236 n * A240877 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041994.P1473253928976264622

namespace A041994

/-- `A041236(n)*A240877(∑[(-1)^n])` -/
def P1473253928976264622.Spec : Prop :=
  ∀ n, P1473253928976264622.a n = A041994 n

end A041994

/-!
# A041995: Denominators of continued fraction convergents to sqrt(520).

The programs for A041995, the canonical program `A041995.P13679483218004529466` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041995 has offset 0).

The definition of A041995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041995.P892233381030565806

`lcm(2, A041237(n))/2`
-/

namespace A041995.P892233381030565806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041237 n) : ℚ) / 2

end

end A041995.P892233381030565806

namespace A041995

/-- `lcm(2, A041237(n))/2` -/
def P892233381030565806.Spec : Prop :=
  ∀ n, P892233381030565806.a n = (A041995 n : ℚ)

end A041995

/-! ## A041995.P13679483218004529466

`A041237(n)/A000034(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041995

/-- `A041237(n)/A000034(n)` -/
def P13679483218004529466.Spec : Prop :=
  ∀ n, P13679483218004529466.a n = (A041995 n : ℚ)

end A041995

/-! ## A041995.P16053173080982691388

`A041237(n)/Δ[A032766(n)]`
-/

namespace A041995.P16053173080982691388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041237 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041995.P16053173080982691388

namespace A041995

/-- `A041237(n)/Δ[A032766(n)]` -/
def P16053173080982691388.Spec : Prop :=
  ∀ n, P16053173080982691388.a n = (A041995 n : ℚ)

end A041995

/-! ## A041995.P921727020569784999

`A041237(n)/A134451(n+1)`
-/

namespace A041995.P921727020569784999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041237 n : ℚ) / (A134451 (n + 1) : ℚ)

end

end A041995.P921727020569784999

namespace A041995

/-- `A041237(n)/A134451(n+1)` -/
def P921727020569784999.Spec : Prop :=
  ∀ n, P921727020569784999.a n = (A041995 n : ℚ)

end A041995

/-! ## A041995.P4966947860529173419

`A041237(n)/A006530(A006519(n+1))`
-/

namespace A041995.P4966947860529173419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041237 n : ℚ) / (A006530 (A006519 (n + 1)).toNat : ℚ)

end

end A041995.P4966947860529173419

namespace A041995

/-- `A041237(n)/A006530(A006519(n+1))` -/
def P4966947860529173419.Spec : Prop :=
  ∀ n, P4966947860529173419.a n = (A041995 n : ℚ)

end A041995

/-! ## A041995.P5861719102479977591

`A041237(n)/A001511(A090771(n+1)+n)`
-/

namespace A041995.P5861719102479977591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041237 n : ℚ) / (A001511 (A090771 (n + 1) + (n : ℤ)).toNat : ℚ)

end

end A041995.P5861719102479977591

namespace A041995

/-- `A041237(n)/A001511(A090771(n+1)+n)` -/
def P5861719102479977591.Spec : Prop :=
  ∀ n, P5861719102479977591.a n = (A041995 n : ℚ)

end A041995

/-! ## A041995.P8996072997226635912

`A041237(n)/A006519(n²+1)`
-/

namespace A041995.P8996072997226635912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041237 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041995.P8996072997226635912

namespace A041995

/-- `A041237(n)/A006519(n²+1)` -/
def P8996072997226635912.Spec : Prop :=
  ∀ n, P8996072997226635912.a n = (A041995 n : ℚ)

end A041995

