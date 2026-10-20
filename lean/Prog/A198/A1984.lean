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
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A198400: a(n) = 10^n - 10*n.

The programs for A198400, the canonical program `A198400.P8347250906926366900` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198400 has offset 0).

The definition of A198400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-10*n` (program `A198400.P8347250906926366900`, by `A198400.P8347250906926366900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198400.P8347250906926366900

`10^n-10*n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198400

/-- `10^n-10*n` -/
def P8347250906926366900.Spec : Prop :=
  ∀ n, P8347250906926366900.a n = A198400 n

theorem P8347250906926366900.correct : P8347250906926366900.Spec := by
  intro n
  simp only [A198400]

end A198400

/-! ## A198400.P7543287381555081090

`abs(10*n-A011557(n))`
-/

namespace A198400.P7543287381555081090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A011557 n|

end

end A198400.P7543287381555081090

namespace A198400

/-- `abs(10*n-A011557(n))` -/
def P7543287381555081090.Spec : Prop :=
  ∀ n, P7543287381555081090.a n = A198400 n

end A198400

/-! ## A198400.P580730048178998132

`abs(10^n-A008592(n))`
-/

namespace A198400.P580730048178998132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A008592 n|

end

end A198400.P580730048178998132

namespace A198400

/-- `abs(10^n-A008592(n))` -/
def P580730048178998132.Spec : Prop :=
  ∀ n, P580730048178998132.a n = A198400 n

end A198400

/-! ## A198400.P5932882660587367980

`abs(10^n-A005843(A008706(n)))`
-/

namespace A198400.P5932882660587367980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A005843 (A008706 n).toNat|

end

end A198400.P5932882660587367980

namespace A198400

/-- `abs(10^n-A005843(A008706(n)))` -/
def P5932882660587367980.Spec : Prop :=
  ∀ n, P5932882660587367980.a n = A198400 n

end A198400

/-! ## A198400.P1549451895824518130

`abs(10*n-Δ[A002275(n)])`
-/

namespace A198400.P1549451895824518130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - (f1 (n + 1) - f1 n)|

end

end A198400.P1549451895824518130

namespace A198400

/-- `abs(10*n-Δ[A002275(n)])` -/
def P1549451895824518130.Spec : Prop :=
  ∀ n, P1549451895824518130.a n = A198400 n

end A198400

/-! ## A198400.P6199753032155921815

`abs(A017377(n)-A253213(n))`
-/

namespace A198400.P6199753032155921815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017377 n - A253213 n|

end

end A198400.P6199753032155921815

namespace A198400

/-- `abs(A017377(n)-A253213(n))` -/
def P6199753032155921815.Spec : Prop :=
  ∀ n, P6199753032155921815.a n = A198400 n

end A198400

/-!
# A198401: a(n) = 8^n + n^8.

The programs for A198401, the canonical program `A198401.P8193122127899463585` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198401 has offset 0).

The definition of A198401 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+n^8` (program `A198401.P8193122127899463585`, by `A198401.P8193122127899463585.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198401.P8193122127899463585

`8^n+n^8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198401

/-- `8^n+n^8` -/
def P8193122127899463585.Spec : Prop :=
  ∀ n, (P8193122127899463585.a n : ℤ) = A198401 n

theorem P8193122127899463585.correct : P8193122127899463585.Spec := by
  intro n
  simp only [A198401]

end A198401

/-! ## A198401.P14241801265418597391

`A156354(A167614(n+7)+5)`
-/

namespace A198401.P14241801265418597391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A167614 (n + 7) + 5).toNat

end

end A198401.P14241801265418597391

namespace A198401

/-- `A156354(A167614(n+7)+5)` -/
def P14241801265418597391.Spec : Prop :=
  ∀ n, P14241801265418597391.a n = A198401 n

end A198401

/-! ## A198401.P7250070926209044896

`A055652(A051936(n+9))`
-/

namespace A198401.P7250070926209044896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A051936 (n + 9)).toNat

end

end A198401.P7250070926209044896

namespace A198401

/-- `A055652(A051936(n+9))` -/
def P7250070926209044896.Spec : Prop :=
  ∀ n, P7250070926209044896.a n = A198401 n

end A198401

/-! ## A198401.P4987447527599779129

`A156354(Δ[A101853(n+4)])`
-/

namespace A198401.P4987447527599779129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (f1 (n + 1) - f1 n).toNat

end

end A198401.P4987447527599779129

namespace A198401

/-- `A156354(Δ[A101853(n+4)])` -/
def P4987447527599779129.Spec : Prop :=
  ∀ n, P4987447527599779129.a n = A198401 n

end A198401

/-! ## A198401.P3349201000759579206

`A156354(A027379(n+7)-6)`
-/

namespace A198401.P3349201000759579206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A027379 (n + 7) - 6).toNat

end

end A198401.P3349201000759579206

namespace A198401

/-- `A156354(A027379(n+7)-6)` -/
def P3349201000759579206.Spec : Prop :=
  ∀ n, P3349201000759579206.a n = A198401 n

end A198401

/-! ## A198401.P3798569700128497746

`A156354(A161680(n+10)-9)`
-/

namespace A198401.P3798569700128497746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A161680 (n + 10) - 9).toNat

end

end A198401.P3798569700128497746

namespace A198401

/-- `A156354(A161680(n+10)-9)` -/
def P3798569700128497746.Spec : Prop :=
  ∀ n, P3798569700128497746.a n = A198401 n

end A198401

/-! ## A198401.P8261699208862285006

`A156354(A051936(n+9)*A057427(n))`
-/

namespace A198401.P8261699208862285006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A051936 (n + 9) * A057427 n).toNat

end

end A198401.P8261699208862285006

namespace A198401

/-- `A156354(A051936(n+9)*A057427(n))` -/
def P8261699208862285006.Spec : Prop :=
  ∀ n, P8261699208862285006.a n = A198401 n

end A198401

/-!
# A198402: a(n) = 5^n * n^5.

The programs for A198402, the canonical program `A198402.P11575180049980132160` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198402 has offset 0).

The definition of A198402 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n*n^5` (program `A198402.P11575180049980132160`, by `A198402.P11575180049980132160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198402.P11575180049980132160

`5^n*n^5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198402

/-- `5^n*n^5` -/
def P11575180049980132160.Spec : Prop :=
  ∀ n, (P11575180049980132160.a n : ℤ) = A198402 n

theorem P11575180049980132160.correct : P11575180049980132160.Spec := by
  intro n
  simp only [A198402]

end A198402

/-! ## A198402.P1070357264500982086

`lcm(n, n²²*A036291(n))`
-/

namespace A198402.P1070357264500982086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (((n ^ 2) ^ 2 : ℤ) * A036291 n)

end

end A198402.P1070357264500982086

namespace A198402

/-- `lcm(n, n²²*A036291(n))` -/
def P1070357264500982086.Spec : Prop :=
  ∀ n, (P1070357264500982086.a n : ℤ) = A198402 n

end A198402

/-! ## A198402.P15845447555743712270

`abs((A024003(n)-1)*A074872(2*(n+1)))`
-/

namespace A198402.P15845447555743712270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A024003 n - 1) * A074872 (2 * (n + 1))|

end

end A198402.P15845447555743712270

namespace A198402

/-- `abs((A024003(n)-1)*A074872(2*(n+1)))` -/
def P15845447555743712270.Spec : Prop :=
  ∀ n, P15845447555743712270.a n = A198402 n

end A198402

/-! ## A198402.P6360095139589035436

`A000035(2*(n+1))+n²²*A036291(n)`
-/

namespace A198402.P6360095139589035436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1)) + ((n ^ 2) ^ 2 : ℤ) * A036291 n

end

end A198402.P6360095139589035436

namespace A198402

/-- `A000035(2*(n+1))+n²²*A036291(n)` -/
def P6360095139589035436.Spec : Prop :=
  ∀ n, P6360095139589035436.a n = A198402 n

end A198402

/-! ## A198402.P6490755757324391038

`A000351(n)-A000351(n)*A024003(n)`
-/

namespace A198402.P6490755757324391038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A000351 n * A024003 n

end

end A198402.P6490755757324391038

namespace A198402

/-- `A000351(n)-A000351(n)*A024003(n)` -/
def P6490755757324391038.Spec : Prop :=
  ∀ n, P6490755757324391038.a n = A198402 n

end A198402

/-! ## A198402.P8022269869354055550

`n²²*A036291(n)/A001222(A005384(n+1))`
-/

namespace A198402.P8022269869354055550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) * A036291 n : ℚ) / (A001222 (A005384 (n + 1)).toNat : ℚ)

end

end A198402.P8022269869354055550

namespace A198402

/-- `n²²*A036291(n)/A001222(A005384(n+1))` -/
def P8022269869354055550.Spec : Prop :=
  ∀ n, P8022269869354055550.a n = (A198402 n : ℚ)

end A198402

/-! ## A198402.P1924321871458095785

`n²²*A036291(n)/A001222(A342406(n+1))`
-/

namespace A198402.P1924321871458095785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) * A036291 n : ℚ) / (A001222 (A342406 (n + 1)).toNat : ℚ)

end

end A198402.P1924321871458095785

namespace A198402

/-- `n²²*A036291(n)/A001222(A342406(n+1))` -/
def P1924321871458095785.Spec : Prop :=
  ∀ n, P1924321871458095785.a n = (A198402 n : ℚ)

end A198402

/-!
# A198403: a(n) = 6^n * n^6.

The programs for A198403, the canonical program `A198403.P12270912363627101023` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198403 has offset 0).

The definition of A198403 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n*n^6` (program `A198403.P12270912363627101023`, by `A198403.P12270912363627101023.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198403.P12270912363627101023

`6^n*n^6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198403

/-- `6^n*n^6` -/
def P12270912363627101023.Spec : Prop :=
  ∀ n, (P12270912363627101023.a n : ℤ) = A198403 n

theorem P12270912363627101023.correct : P12270912363627101023.Spec := by
  intro n
  simp only [A198403]

end A198403

/-! ## A198403.P7682139564576873884

`A001014(n)+A001014(n)*A024062(n)`
-/

namespace A198403.P7682139564576873884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n + A001014 n * A024062 n

end

end A198403.P7682139564576873884

namespace A198403

/-- `A001014(n)+A001014(n)*A024062(n)` -/
def P7682139564576873884.Spec : Prop :=
  ∀ n, P7682139564576873884.a n = A198403 n

end A198403

/-! ## A198403.P6394669047530561818

`A062275(eq[7, A002260(n+1)])`
-/

namespace A198403.P6394669047530561818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198403.P6394669047530561818

namespace A198403

/-- `A062275(eq[7, A002260(n+1)])` -/
def P6394669047530561818.Spec : Prop :=
  ∀ n, P6394669047530561818.a n = A198403 n

end A198403

/-! ## A198403.P11189243045774393799

`A062275(eq[6, A025581(n)])`
-/

namespace A198403.P11189243045774393799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198403.P11189243045774393799

namespace A198403

/-- `A062275(eq[6, A025581(n)])` -/
def P11189243045774393799.Spec : Prop :=
  ∀ n, P11189243045774393799.a n = A198403 n

end A198403

/-! ## A198403.P1846244329477466457

`A062275(eq[7, A004736(n+1)])`
-/

namespace A198403.P1846244329477466457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198403.P1846244329477466457

namespace A198403

/-- `A062275(eq[7, A004736(n+1)])` -/
def P1846244329477466457.Spec : Prop :=
  ∀ n, P1846244329477466457.a n = A198403 n

end A198403

/-!
# A198404: a(n) = 8^n*n^8.

The programs for A198404, the canonical program `A198404.P10815614981053554482` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198404 has offset 0).

The definition of A198404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n*n^8` (program `A198404.P10815614981053554482`, by `A198404.P10815614981053554482.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198404.P10815614981053554482

`8^n*n^8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198404

/-- `8^n*n^8` -/
def P10815614981053554482.Spec : Prop :=
  ∀ n, (P10815614981053554482.a n : ℤ) = A198404 n

theorem P10815614981053554482.correct : P10815614981053554482.Spec := by
  intro n
  simp only [A198404]

end A198404

/-! ## A198404.P10252801791587923915

`A001016(n)/8^-n`
-/

namespace A198404.P10252801791587923915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n : ℚ) / (8 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A198404.P10252801791587923915

namespace A198404

/-- `A001016(n)/8^-n` -/
def P10252801791587923915.Spec : Prop :=
  ∀ n, P10252801791587923915.a n = (A198404 n : ℚ)

end A198404

/-! ## A198404.P13903754726894109057

`record[A002620(n)²²*A094014(n)]`
-/

namespace A198404.P13903754726894109057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002620 n ^ 2) ^ 2 * A094014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198404.P13903754726894109057

namespace A198404

/-- `record[A002620(n)²²*A094014(n)]` -/
def P13903754726894109057.Spec : Prop :=
  ∀ n, P13903754726894109057.a n = A198404 n

end A198404

/-! ## A198404.P6903724264553009141

`A062075(n)²/2^n`
-/

namespace A198404.P6903724264553009141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062075 n ^ 2 : ℚ) / (2 ^ n : ℚ)

end

end A198404.P6903724264553009141

namespace A198404

/-- `A062075(n)²/2^n` -/
def P6903724264553009141.Spec : Prop :=
  ∀ n, P6903724264553009141.a n = (A198404 n : ℚ)

end A198404

/-! ## A198404.P7915466375660127103

`A007758(n)²²/A000079(n)`
-/

namespace A198404.P7915466375660127103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A007758 n ^ 2) ^ 2 : ℚ) / (A000079 n : ℚ)

end

end A198404.P7915466375660127103

namespace A198404

/-- `A007758(n)²²/A000079(n)` -/
def P7915466375660127103.Spec : Prop :=
  ∀ n, P7915466375660127103.a n = (A198404 n : ℚ)

end A198404

/-! ## A198404.P9862135438346741173

`(n*A128790(n))²/A000079(n)`
-/

namespace A198404.P9862135438346741173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * A128790 n) ^ 2 : ℚ) / (A000079 n : ℚ)

end

end A198404.P9862135438346741173

namespace A198404

/-- `(n*A128790(n))²/A000079(n)` -/
def P9862135438346741173.Spec : Prop :=
  ∀ n, P9862135438346741173.a n = (A198404 n : ℚ)

end A198404

/-! ## A198404.P11451112246450470011

`A007758(n)²²/∑[A011782(n)]`
-/

namespace A198404.P11451112246450470011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A007758 n ^ 2) ^ 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A198404.P11451112246450470011

namespace A198404

/-- `A007758(n)²²/∑[A011782(n)]` -/
def P11451112246450470011.Spec : Prop :=
  ∀ n, P11451112246450470011.a n = (A198404 n : ℚ)

end A198404

/-! ## A198404.P11617469600787038925

`A062275(eq[8, A025581(n)])`
-/

namespace A198404.P11617469600787038925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198404.P11617469600787038925

namespace A198404

/-- `A062275(eq[8, A025581(n)])` -/
def P11617469600787038925.Spec : Prop :=
  ∀ n, P11617469600787038925.a n = A198404 n

end A198404

/-! ## A198404.P14143200169318285568

`A062275(eq[9, A004736(n+1)])`
-/

namespace A198404.P14143200169318285568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198404.P14143200169318285568

namespace A198404

/-- `A062275(eq[9, A004736(n+1)])` -/
def P14143200169318285568.Spec : Prop :=
  ∀ n, P14143200169318285568.a n = A198404 n

end A198404

/-!
# A198405: Number of 2n X 2 0..4 arrays with values 0..4 introduced in row major order and each element equal to exactly one horizontal and vertical neighbor.

The programs for A198405, there is no canonical definition to state claims against.
-/

/-! ## A198405.P765205770438318309

`A198408(∑[n]+1)`
-/

namespace A198405.P765205770438318309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198408 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198405.P765205770438318309

/-! ## A198405.P5651257504021856912

`lcm((-1)^n, A198408(A000124(n)))`
-/

namespace A198405.P5651257504021856912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A198408 (A000124 n).toNat)

end

end A198405.P5651257504021856912

/-! ## A198405.P11256581534397374391

`record[A010054(n)*A198408(n+1)]`
-/

namespace A198405.P11256581534397374391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A198408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198405.P11256581534397374391

/-!
# A198406: Number of 2nX4 0..4 arrays with values 0..4 introduced in row major order and each element equal to exactly one horizontal and vertical neighbor.

The programs for A198406, there is no canonical definition to state claims against.
-/

/-! ## A198406.P9343378725529066400

`A198408(∑[n+1]+2)`
-/

namespace A198406.P9343378725529066400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198408 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198406.P9343378725529066400

/-! ## A198406.P12275855083329410993

`record[A198408(A016789(n))]`
-/

namespace A198406.P12275855083329410993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198408 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198406.P12275855083329410993

/-!
# A198410: a(n) = ((3^(n-1) + 1)^3 - 1)/3^n.

The programs for A198410, the canonical program `A198410.P17177419039669887995` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198410 has offset 2).

The definition of A198410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((3^(n+1)+1)^3-1)/3^(n+2)` (program `A198410.P11023654595249467019`, by `A198410.P11023654595249467019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198410.P17177419039669887995

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=7, a(1)=37, a(2)=271`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198410

/-- `13*a(n-1)-39*a(n-2)+27*a(n-3)` -/
def P17177419039669887995.Spec : Prop :=
  ∀ n, P17177419039669887995.a n = A198410 (n + 2)

theorem P17177419039669887995.correct : P17177419039669887995.Spec := by
  intro n
  simp only [A198410, Nat.add_sub_cancel]

end A198410

/-! ## A198410.P3645883032562903451

`9^(n+2)/27+3^(n+2)/3+1`
-/

namespace A198410.P3645883032562903451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ (n + 2) : ℚ) / 27 + (3 ^ (n + 2) : ℚ) / 3 + 1

end

end A198410.P3645883032562903451

namespace A198410

/-- `9^(n+2)/27+3^(n+2)/3+1` -/
def P3645883032562903451.Spec : Prop :=
  ∀ n, P3645883032562903451.a n = (A198410 (n + 2) : ℚ)

theorem P3645883032562903451.correct : P3645883032562903451.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A198410, Nat.add_sub_cancel, A198410.P3645883032562903451.a, A198410.P17177419039669887995.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A198410, Nat.add_sub_cancel, A198410.P3645883032562903451.a, A198410.P17177419039669887995.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198410

/-! ## A198410.P11023654595249467019

`((3^(n+1)+1)^3-1)/3^(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198410.P11023654595249467019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ (n + 1) + 1) ^ 3 : ℤ) - 1 : ℚ) / (3 ^ (n + 2) : ℚ)

end

end A198410.P11023654595249467019

namespace A198410

/-- `((3^(n+1)+1)^3-1)/3^(n+2)` -/
def P11023654595249467019.Spec : Prop :=
  ∀ n, P11023654595249467019.a n = (A198410 (n + 2) : ℚ)

theorem P11023654595249467019.correct : P11023654595249467019.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A198410, Nat.add_sub_cancel, A198410.P11023654595249467019.a, A198410.P17177419039669887995.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A198410, Nat.add_sub_cancel, A198410.P11023654595249467019.a, A198410.P17177419039669887995.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198410

/-! ## A198410.P9207651440875514114

`or(1, 3*A074610(n))`
-/

namespace A198410.P9207651440875514114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A074610 n)

end

end A198410.P9207651440875514114

namespace A198410

/-- `or(1, 3*A074610(n))` -/
def P9207651440875514114.Spec : Prop :=
  ∀ n, P9207651440875514114.a n = A198410 (n + 2)

end A198410

/-! ## A198410.P7510472502317802154

`or(1, A008776(n)*A067771(n))`
-/

namespace A198410.P7510472502317802154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008776 n * A067771 n)

end

end A198410.P7510472502317802154

namespace A198410

/-- `or(1, A008776(n)*A067771(n))` -/
def P7510472502317802154.Spec : Prop :=
  ∀ n, P7510472502317802154.a n = A198410 (n + 2)

end A198410

/-! ## A198410.P6348342749331693465

`abs(A169724(n+1)-A074610(n))`
-/

namespace A198410.P6348342749331693465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A169724 (n + 1) - A074610 n|

end

end A198410.P6348342749331693465

namespace A198410

/-- `abs(A169724(n+1)-A074610(n))` -/
def P6348342749331693465.Spec : Prop :=
  ∀ n, P6348342749331693465.a n = A198410 (n + 2)

end A198410

/-! ## A198410.P2560962003811772120

`(A169724(n+1)-A074610(n))*char[A332412(n)]`
-/

namespace A198410.P2560962003811772120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169724 (n + 1) - A074610 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A198410.P2560962003811772120

namespace A198410

/-- `(A169724(n+1)-A074610(n))*char[A332412(n)]` -/
def P2560962003811772120.Spec : Prop :=
  ∀ n, P2560962003811772120.a n = A198410 (n + 2)

end A198410

/-! ## A198410.P8819704628584496275

`(A169724(n+1)-A074610(n))*char[A332413(n)]`
-/

namespace A198410.P8819704628584496275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332413 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169724 (n + 1) - A074610 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A198410.P8819704628584496275

namespace A198410

/-- `(A169724(n+1)-A074610(n))*char[A332413(n)]` -/
def P8819704628584496275.Spec : Prop :=
  ∀ n, P8819704628584496275.a n = A198410 (n + 2)

end A198410

/-! ## A198410.P14368414680856887395

`(A169724(n+1)-A074610(n))*char[A025581(n)]`
-/

namespace A198410.P14368414680856887395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169724 (n + 1) - A074610 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A198410.P14368414680856887395

namespace A198410

/-- `(A169724(n+1)-A074610(n))*char[A025581(n)]` -/
def P14368414680856887395.Spec : Prop :=
  ∀ n, P14368414680856887395.a n = A198410 (n + 2)

end A198410

/-!
# A198411: a(n)= (4^(2^n) + 2^(2^n) + 1)/7.

The programs for A198411, the canonical program `A198411.P17072075915274728331` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198411 has offset 0).

The definition of A198411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198411.P17072075915274728331

`(4^2^n+2^2^n+1)/7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198411

/-- `(4^2^n+2^2^n+1)/7` -/
def P17072075915274728331.Spec : Prop :=
  ∀ n, P17072075915274728331.a n = (A198411 n : ℚ)

end A198411

/-! ## A198411.P6978771826656556414

`∏[xor(1, Δ[a(n-1)²])]` with `a(0)=2, a(1)=2`
-/

namespace A198411.P6978771826656556414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A198411.P6978771826656556414

namespace A198411

/-- `∏[xor(1, Δ[a(n-1)²])]` -/
def P6978771826656556414.Spec : Prop :=
  ∀ n, P6978771826656556414.a n = A198411 n

end A198411

/-! ## A198411.P16780261880523619627

`∏[or(1, Δ[2^floor(2^(n-1))])]`
-/

namespace A198411.P16780261880523619627
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A198411.P16780261880523619627

namespace A198411

/-- `∏[or(1, Δ[2^floor(2^(n-1))])]` -/
def P16780261880523619627.Spec : Prop :=
  ∀ n, P16780261880523619627.a n = A198411 n

end A198411

/-! ## A198411.P8854138944790781337

`floor(A220161(n)/7)`
-/

namespace A198411.P8854138944790781337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A220161 n : ℚ) / 7⌋

end

end A198411.P8854138944790781337

namespace A198411

/-- `floor(A220161(n)/7)` -/
def P8854138944790781337.Spec : Prop :=
  ∀ n, P8854138944790781337.a n = A198411 n

end A198411

/-!
# A198412: a(n) = (3^(6*n) - 2^(6*n))/35.

The programs for A198412, the canonical program `A198412.P14494272115542389600` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198412 has offset 0).

The definition of A198412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198412.P14494272115542389600

`(3^(6*n)-2^(6*n))/35`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198412

/-- `(3^(6*n)-2^(6*n))/35` -/
def P14494272115542389600.Spec : Prop :=
  ∀ n, P14494272115542389600.a n = (A198412 n : ℚ)

end A198412

/-!
# A198413: G.f. satisfies: A(x) = exp( Sum_{n>=1} A(x)^n * A(x^n) * x^n/n ).

The programs for A198413, there is no canonical definition to state claims against.
-/

/-! ## A198413.P2758526077367874681

`A289207(n)+A034887(A084137(n))-A000389(n)`
-/

namespace A198413.P2758526077367874681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + A034887 (A084137 n).toNat - A000389 n

end

end A198413.P2758526077367874681

/-! ## A198413.P5650786392124506835

`A316500((2*n+1)*(floor(n/6)+1))`
-/

namespace A198413.P5650786392124506835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316500 ((2 * n + 1 : ℤ) * (⌊(n : ℚ) / 6⌋ + 1)).toNat

end

end A198413.P5650786392124506835

/-!
# A198435: First term of a triple of squares in arithmetic progression, which is not a multiple of another triple in (A198384,A198385,A198386).

The programs for A198435, there is no canonical definition to state claims against.
-/

/-! ## A198435.P6715329013574411355

`A198439(n+1)²`
-/

namespace A198435.P6715329013574411355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198439 (n + 1) ^ 2

end

end A198435.P6715329013574411355

/-! ## A198435.P14709487041940226373

`A198384(A198409(n+1))`
-/

namespace A198435.P14709487041940226373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198384 (A198409 (n + 1)).toNat

end

end A198435.P14709487041940226373

/-! ## A198435.P4347353039725959509

`A198436(n+1)-A198438(n+1)`
-/

namespace A198435.P4347353039725959509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198436 (n + 1) - A198438 (n + 1)

end

end A198435.P4347353039725959509

/-! ## A198435.P14962650231840033984

`A198440(n+1)²-A198438(n+1)`
-/

namespace A198435.P14962650231840033984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198440 (n + 1) ^ 2 - A198438 (n + 1)

end

end A198435.P14962650231840033984

/-! ## A198435.P15024416443090245451

`2*A198436(n+1)-A198437(n+1)`
-/

namespace A198435.P15024416443090245451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198436 (n + 1) - A198437 (n + 1)

end

end A198435.P15024416443090245451

/-! ## A198435.P14051939780290549198

`A198437(n+1)-2*A198438(n+1)`
-/

namespace A198435.P14051939780290549198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198437 (n + 1) - 2 * A198438 (n + 1)

end

end A198435.P14051939780290549198

/-! ## A198435.P10328713974291431144

`2*A198436(n+1)-A198441(n+1)²`
-/

namespace A198435.P10328713974291431144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198436 (n + 1) - A198441 (n + 1) ^ 2

end

end A198435.P10328713974291431144

/-! ## A198435.P5091693627390220729

`2*A198440(n+1)²-A198437(n+1)`
-/

namespace A198435.P5091693627390220729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198440 (n + 1) ^ 2 - A198437 (n + 1)

end

end A198435.P5091693627390220729

/-! ## A198435.P17799095680873846884

`A198441(n+1)²-2*A198438(n+1)`
-/

namespace A198435.P17799095680873846884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198441 (n + 1) ^ 2 - 2 * A198438 (n + 1)

end

end A198435.P17799095680873846884

/-! ## A198435.P17745354481517709253

`A198385(A198409(n+1))-A198438(n+1)`
-/

namespace A198435.P17745354481517709253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198385 (A198409 (n + 1)).toNat - A198438 (n + 1)

end

end A198435.P17745354481517709253

/-! ## A198435.P8996139203799538991

`A198436(n+1)-A198387(A198409(n+1))`
-/

namespace A198435.P8996139203799538991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198436 (n + 1) - A198387 (A198409 (n + 1)).toNat

end

end A198435.P8996139203799538991

/-! ## A198435.P12026323840787344092

`2*A198385(A198409(n+1))-A198437(n+1)`
-/

namespace A198435.P12026323840787344092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198385 (A198409 (n + 1)).toNat - A198437 (n + 1)

end

end A198435.P12026323840787344092

/-!
# A198436: Second term of a triple of squares in arithmetic progression, which is not a multiple of another triple in (A198384, A198385, A198386).

The programs for A198436, there is no canonical definition to state claims against.
-/

/-! ## A198436.P5223242089303980713

`A198440(n+1)²`
-/

namespace A198436.P5223242089303980713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198440 (n + 1) ^ 2

end

end A198436.P5223242089303980713

/-! ## A198436.P16245827230194333128

`A198437(n+1)-A198438(n+1)`
-/

namespace A198436.P16245827230194333128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198437 (n + 1) - A198438 (n + 1)

end

end A198436.P16245827230194333128

/-! ## A198436.P145729755440110618

`A198385(A198409(n+1))`
-/

namespace A198436.P145729755440110618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198385 (A198409 (n + 1)).toNat

end

end A198436.P145729755440110618

/-! ## A198436.P226989703415401483

`A198440(A000027(n+1))^2`
-/

namespace A198436.P226989703415401483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198440 (A000027 (n + 1)).toNat ^ 2

end

end A198436.P226989703415401483

/-! ## A198436.P6118199473861349035

`A198438(n+1)+A198435(n+1)`
-/

namespace A198436.P6118199473861349035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198438 (n + 1) + A198435 (n + 1)

end

end A198436.P6118199473861349035

/-! ## A198436.P14839155857073556618

`A198438(n+1)+A198439(n+1)²`
-/

namespace A198436.P14839155857073556618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198438 (n + 1) + A198439 (n + 1) ^ 2

end

end A198436.P14839155857073556618

/-! ## A198436.P3861773375084454777

`A198441(n+1)²-A198438(n+1)`
-/

namespace A198436.P3861773375084454777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198441 (n + 1) ^ 2 - A198438 (n + 1)

end

end A198436.P3861773375084454777

/-! ## A198436.P783832143073333121

`(A198437(n+1)+A198435(n+1))/2`
-/

namespace A198436.P783832143073333121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198437 (n + 1) + A198435 (n + 1) : ℚ) / 2

end

end A198436.P783832143073333121

/-! ## A198436.P13005189036805621055

`A198440(A000027(n+1))*A198440(n+1)`
-/

namespace A198436.P13005189036805621055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198440 (A000027 (n + 1)).toNat * A198440 (n + 1)

end

end A198436.P13005189036805621055

/-! ## A198436.P12779413912260546888

`A198440(A008619(2*n))*A198440(n+1)`
-/

namespace A198436.P12779413912260546888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198440 (A008619 (2 * n)).toNat * A198440 (n + 1)

end

end A198436.P12779413912260546888

/-! ## A198436.P5487846160597368594

`A198435(n+1)+A198387(A198409(n+1))`
-/

namespace A198436.P5487846160597368594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198435 (n + 1) + A198387 (A198409 (n + 1)).toNat

end

end A198436.P5487846160597368594

/-! ## A198436.P13311791957665159634

`A198438(n+1)+A198384(A198409(n+1))`
-/

namespace A198436.P13311791957665159634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198438 (n + 1) + A198384 (A198409 (n + 1)).toNat

end

end A198436.P13311791957665159634

/-! ## A198436.P1333591729748838591

`A198437(n+1)-A198387(A198409(n+1))`
-/

namespace A198436.P1333591729748838591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198437 (n + 1) - A198387 (A198409 (n + 1)).toNat

end

end A198436.P1333591729748838591

/-! ## A198436.P4394653537035350773

`A198389(A198409(n+1))*A198440(n+1)`
-/

namespace A198436.P4394653537035350773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198389 (A198409 (n + 1)).toNat * A198440 (n + 1)

end

end A198436.P4394653537035350773

/-!
# A198437: Third term of a triple of squares in arithmetic progression, which is not a multiple of another triple in (A198384,A198385,A198386).

The programs for A198437, there is no canonical definition to state claims against.
-/

/-! ## A198437.P16366401037023671596

`A198441(n+1)²`
-/

namespace A198437.P16366401037023671596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198441 (n + 1) ^ 2

end

end A198437.P16366401037023671596

/-! ## A198437.P9001257613511851873

`A198386(A198409(n+1))`
-/

namespace A198437.P9001257613511851873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198386 (A198409 (n + 1)).toNat

end

end A198437.P9001257613511851873

/-! ## A198437.P15563329020308242754

`A198438(n+1)+A198436(n+1)`
-/

namespace A198437.P15563329020308242754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198438 (n + 1) + A198436 (n + 1)

end

end A198437.P15563329020308242754

/-! ## A198437.P14498553251461709514

`A198438(n+1)+A198440(n+1)²`
-/

namespace A198437.P14498553251461709514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198438 (n + 1) + A198440 (n + 1) ^ 2

end

end A198437.P14498553251461709514

/-! ## A198437.P12824823954103770564

`A198435(n+1)+2*A198438(n+1)`
-/

namespace A198437.P12824823954103770564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198435 (n + 1) + 2 * A198438 (n + 1)

end

end A198437.P12824823954103770564

/-! ## A198437.P17013944819412580151

`2*A198436(n+1)-A198435(n+1)`
-/

namespace A198437.P17013944819412580151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198436 (n + 1) - A198435 (n + 1)

end

end A198437.P17013944819412580151

/-! ## A198437.P19556397749039391

`A198439(n+1)²+2*A198438(n+1)`
-/

namespace A198437.P19556397749039391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198439 (n + 1) ^ 2 + 2 * A198438 (n + 1)

end

end A198437.P19556397749039391

/-! ## A198437.P806001781324637158

`2*A198436(n+1)-A198439(n+1)²`
-/

namespace A198437.P806001781324637158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198436 (n + 1) - A198439 (n + 1) ^ 2

end

end A198437.P806001781324637158

/-! ## A198437.P3512100730595396092

`2*A198440(n+1)²-A198435(n+1)`
-/

namespace A198437.P3512100730595396092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198440 (n + 1) ^ 2 - A198435 (n + 1)

end

end A198437.P3512100730595396092

/-! ## A198437.P14835954719346887488

`A198441(A000027(n+1))*A198441(n+1)`
-/

namespace A198437.P14835954719346887488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198441 (A000027 (n + 1)).toNat * A198441 (n + 1)

end

end A198437.P14835954719346887488

/-! ## A198437.P15946063332883595203

`A198436(n+1)+A198387(A198409(n+1))`
-/

namespace A198437.P15946063332883595203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198436 (n + 1) + A198387 (A198409 (n + 1)).toNat

end

end A198437.P15946063332883595203

/-! ## A198437.P18012705451325369112

`A198438(n+1)+A198385(A198409(n+1))`
-/

namespace A198437.P18012705451325369112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198438 (n + 1) + A198385 (A198409 (n + 1)).toNat

end

end A198437.P18012705451325369112

/-! ## A198437.P14729785234909739385

`A198435(n+1)+2*A198387(A198409(n+1))`
-/

namespace A198437.P14729785234909739385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198435 (n + 1) + 2 * A198387 (A198409 (n + 1)).toNat

end

end A198437.P14729785234909739385

/-!
# A198438: Common differences in triples of squares in arithmetic progression, that are not a multiples of other triples in (A198384, A198385, A198386).

The programs for A198438, there is no canonical definition to state claims against.
-/

/-! ## A198438.P9417585936147356650

`A198436(n+1)-A198435(n+1)`
-/

namespace A198438.P9417585936147356650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198436 (n + 1) - A198435 (n + 1)

end

end A198438.P9417585936147356650

/-! ## A198438.P12272758002170968100

`A198437(n+1)-A198436(n+1)`
-/

namespace A198438.P12272758002170968100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198437 (n + 1) - A198436 (n + 1)

end

end A198438.P12272758002170968100

/-! ## A198438.P9256622049622669288

`A198387(A198409(n+1))`
-/

namespace A198438.P9256622049622669288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198387 (A198409 (n + 1)).toNat

end

end A198438.P9256622049622669288

/-! ## A198438.P16198890631694867965

`A198436(n+1)-A198439(n+1)²`
-/

namespace A198438.P16198890631694867965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198436 (n + 1) - A198439 (n + 1) ^ 2

end

end A198438.P16198890631694867965

/-! ## A198438.P12259053053650078506

`A198437(n+1)-A198440(n+1)²`
-/

namespace A198438.P12259053053650078506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198437 (n + 1) - A198440 (n + 1) ^ 2

end

end A198438.P12259053053650078506

/-! ## A198438.P8872709213181882697

`A198440(n+1)²-A198435(n+1)`
-/

namespace A198438.P8872709213181882697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198440 (n + 1) ^ 2 - A198435 (n + 1)

end

end A198438.P8872709213181882697

/-! ## A198438.P9155417273478050137

`A198441(n+1)²-A198436(n+1)`
-/

namespace A198438.P9155417273478050137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198441 (n + 1) ^ 2 - A198436 (n + 1)

end

end A198438.P9155417273478050137

/-! ## A198438.P6849588162654121773

`(A198437(n+1)-A198435(n+1))/2`
-/

namespace A198438.P6849588162654121773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198437 (n + 1) - A198435 (n + 1) : ℚ) / 2

end

end A198438.P6849588162654121773

/-! ## A198438.P3356709246763584493

`A198385(A198409(n+1))-A198435(n+1)`
-/

namespace A198438.P3356709246763584493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198385 (A198409 (n + 1)).toNat - A198435 (n + 1)

end

end A198438.P3356709246763584493

/-! ## A198438.P2177571163011823310

`A198386(A198409(n+1))-A198436(n+1)`
-/

namespace A198438.P2177571163011823310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198386 (A198409 (n + 1)).toNat - A198436 (n + 1)

end

end A198438.P2177571163011823310

/-! ## A198438.P11411159670077837827

`A198437(n+1)-A198385(A198409(n+1))`
-/

namespace A198438.P11411159670077837827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198437 (n + 1) - A198385 (A198409 (n + 1)).toNat

end

end A198438.P11411159670077837827

/-!
# A198439: Square root of first term of a triple of squares in arithmetic progression that is not a multiple of another triple in (A198384, A198385, A198386).

The programs for A198439, there is no canonical definition to state claims against.
-/

/-! ## A198439.P5563479244581296226

`A198388(A198409(n+1))`
-/

namespace A198439.P5563479244581296226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198388 (A198409 (n + 1)).toNat

end

end A198439.P5563479244581296226

/-! ## A198439.P15974192873848521997

`sqrt(A198435(n+1))`
-/

namespace A198439.P15974192873848521997
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198435 (n + 1) : ℝ)

end

end A198439.P15974192873848521997

/-! ## A198439.P12691940985091004090

`sqrt(A198436(n+1)-A198438(n+1))`
-/

namespace A198439.P12691940985091004090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198436 (n + 1) - A198438 (n + 1) : ℝ)

end

end A198439.P12691940985091004090

/-! ## A198439.P827163961394945635

`root(A198435(n+1), A020639(2*(n+1)))`
-/

namespace A198439.P827163961394945635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A198435 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A198439.P827163961394945635

/-! ## A198439.P9058846630618472813

`sqrt(A198440(n+1)²-A198438(n+1))`
-/

namespace A198439.P9058846630618472813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198440 (n + 1) ^ 2 - A198438 (n + 1) : ℝ)

end

end A198439.P9058846630618472813

/-! ## A198439.P1600492440109920632

`sqrt(2*A198436(n+1)-A198437(n+1))`
-/

namespace A198439.P1600492440109920632
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A198436 (n + 1) - A198437 (n + 1) : ℝ)

end

end A198439.P1600492440109920632

/-! ## A198439.P16422791748024815249

`sqrt(A198437(n+1)-2*A198438(n+1))`
-/

namespace A198439.P16422791748024815249
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198437 (n + 1) - 2 * A198438 (n + 1) : ℝ)

end

end A198439.P16422791748024815249

/-! ## A198439.P9722080103729505684

`A198435(n+1)^(A006519(A049643(n+1))/2)`
-/

namespace A198439.P9722080103729505684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A198435 (n + 1) : ℝ) ^ ((A006519 (A049643 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A198439.P9722080103729505684

/-!
# A198440: Square root of second term of a triple of squares in arithmetic progression that is not a multiple of another triple in (A198384, A198385, A198386).

The programs for A198440, there is no canonical definition to state claims against.
-/

/-! ## A198440.P14930849546384596867

`A198389(A198409(n+1))`
-/

namespace A198440.P14930849546384596867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198389 (A198409 (n + 1)).toNat

end

end A198440.P14930849546384596867

/-! ## A198440.P5065116970357375637

`sqrt(A198436(n+1))`
-/

namespace A198440.P5065116970357375637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198436 (n + 1) : ℝ)

end

end A198440.P5065116970357375637

/-! ## A198440.P10803874173032582738

`sqrt(A198438(n+1)+A198435(n+1))`
-/

namespace A198440.P10803874173032582738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198438 (n + 1) + A198435 (n + 1) : ℝ)

end

end A198440.P10803874173032582738

/-! ## A198440.P18154987490043000793

`sqrt(A198437(n+1)-A198438(n+1))`
-/

namespace A198440.P18154987490043000793
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198437 (n + 1) - A198438 (n + 1) : ℝ)

end

end A198440.P18154987490043000793

/-! ## A198440.P5059354563606448081

`sqrt(A198438(n+1)+A198439(n+1)²)`
-/

namespace A198440.P5059354563606448081
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198438 (n + 1) + A198439 (n + 1) ^ 2 : ℝ)

end

end A198440.P5059354563606448081

/-! ## A198440.P2847393573498736923

`sqrt(A198441(n+1)²-A198438(n+1))`
-/

namespace A198440.P2847393573498736923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198441 (n + 1) ^ 2 - A198438 (n + 1) : ℝ)

end

end A198440.P2847393573498736923

/-! ## A198440.P6070147401375680400

`A198436(n+1)^(A007318(∑[n])/2)`
-/

namespace A198440.P6070147401375680400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A198436 (n + 1) : ℝ) ^ ((A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 : ℝ)

end

end A198440.P6070147401375680400

/-!
# A198441: Square root of third term of a triple of squares in arithmetic progression that is not a multiple of another triple in (A198384, A198385, A198386).

The programs for A198441, there is no canonical definition to state claims against.
-/

/-! ## A198441.P5253172072545537428

`A198390(A198409(n+1))`
-/

namespace A198441.P5253172072545537428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (A198409 (n + 1)).toNat

end

end A198441.P5253172072545537428

/-! ## A198441.P3170000890659236530

`sqrt(A198437(n+1))`
-/

namespace A198441.P3170000890659236530
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198437 (n + 1) : ℝ)

end

end A198441.P3170000890659236530

/-! ## A198441.P5491831557221287369

`sqrt(A198438(n+1)+A198436(n+1))`
-/

namespace A198441.P5491831557221287369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198438 (n + 1) + A198436 (n + 1) : ℝ)

end

end A198441.P5491831557221287369

/-! ## A198441.P8040337621439063189

`sqrt(A198438(n+1)+A198440(n+1)²)`
-/

namespace A198441.P8040337621439063189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198438 (n + 1) + A198440 (n + 1) ^ 2 : ℝ)

end

end A198441.P8040337621439063189

/-! ## A198441.P7413056728883656926

`sqrt(A198435(n+1)+2*A198438(n+1))`
-/

namespace A198441.P7413056728883656926
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198435 (n + 1) + 2 * A198438 (n + 1) : ℝ)

end

end A198441.P7413056728883656926

/-! ## A198441.P13768741969065493716

`A198437(n+1)^(A047999(∑[n])/2)`
-/

namespace A198441.P13768741969065493716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A198437 (n + 1) : ℝ) ^ ((A047999 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 : ℝ)

end

end A198441.P13768741969065493716

/-!
# A198442: Number of sequences of n coin flips that win on the last flip, if the sequence of flips ends with (1,1,0) or (1,0,0).

The programs for A198442, the canonical program `A198442.P1653336753655397072` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198442 has offset 1).

The definition of A198442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198442.P2646046785009358651

`floor(((n+1)²-1)/4)`
-/

namespace A198442.P2646046785009358651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ 2 : ℤ) - 1 : ℚ) / 4⌋

end

end A198442.P2646046785009358651

namespace A198442

/-- `floor(((n+1)²-1)/4)` -/
def P2646046785009358651.Spec : Prop :=
  ∀ n, P2646046785009358651.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P1653336753655397072

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198442

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P1653336753655397072.Spec : Prop :=
  ∀ n, P1653336753655397072.a n = A198442 (n + 1)

theorem P1653336753655397072.correct : P1653336753655397072.Spec := by
  intro n
  simp only [A198442, Nat.add_sub_cancel]

end A198442

/-! ## A198442.P7230832766461929207

`A004526(n)*A004526(n+3)`
-/

namespace A198442.P7230832766461929207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A004526 (n + 3)

end

end A198442.P7230832766461929207

namespace A198442

/-- `A004526(n)*A004526(n+3)` -/
def P7230832766461929207.Spec : Prop :=
  ∀ n, P7230832766461929207.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P7513321822815230436

`A002620(n+3)-A052928(n+3)`
-/

namespace A198442.P7513321822815230436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 3) - A052928 (n + 3)

end

end A198442.P7513321822815230436

namespace A198442

/-- `A002620(n+3)-A052928(n+3)` -/
def P7513321822815230436.Spec : Prop :=
  ∀ n, P7513321822815230436.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P8070414776933371738

`a(n-2)+n` with `a(0)=0, a(1)=0`
-/

namespace A198442.P8070414776933371738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + n

end

end A198442.P8070414776933371738

namespace A198442

/-- `a(n-2)+n` -/
def P8070414776933371738.Spec : Prop :=
  ∀ n, (P8070414776933371738.a n : ℤ) = A198442 (n + 1)

end A198442

/-! ## A198442.P6816574191514580700

`round(cot(2/(n+1))²)`
-/

namespace A198442.P6816574191514580700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / (n + 1 : ℚ) : ℝ) ^ 2)

end

end A198442.P6816574191514580700

namespace A198442

/-- `round(cot(2/(n+1))²)` -/
def P6816574191514580700.Spec : Prop :=
  ∀ n, P6816574191514580700.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P12047659024118303570

`∑[n-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A198442.P12047659024118303570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198442.P12047659024118303570

namespace A198442

/-- `∑[n-a(n-1)]` -/
def P12047659024118303570.Spec : Prop :=
  ∀ n, P12047659024118303570.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P4362668284387384864

`∑[ceil(xor(1, n)/2)]-1`
-/

namespace A198442.P4362668284387384864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A198442.P4362668284387384864

namespace A198442

/-- `∑[ceil(xor(1, n)/2)]-1` -/
def P4362668284387384864.Spec : Prop :=
  ∀ n, P4362668284387384864.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P18275316287190294584

`∑[∑[n%2]]-n%2`
-/

namespace A198442.P18275316287190294584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A198442.P18275316287190294584

namespace A198442

/-- `∑[∑[n%2]]-n%2` -/
def P18275316287190294584.Spec : Prop :=
  ∀ n, P18275316287190294584.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P4250923030056023396

`and(n*(n+2), -4)/4`
-/

namespace A198442.P4250923030056023396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n * (n + 2) : ℤ) (-4) : ℚ) / 4

end

end A198442.P4250923030056023396

namespace A198442

/-- `and(n*(n+2), -4)/4` -/
def P4250923030056023396.Spec : Prop :=
  ∀ n, P4250923030056023396.a n = (A198442 (n + 1) : ℚ)

end A198442

/-! ## A198442.P12096109885158775706

`n-floor(-a(n-2))` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A198442.P12096109885158775706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) - (-a (n - 2))

end

end A198442.P12096109885158775706

namespace A198442

/-- `n-floor(-a(n-2))` -/
def P12096109885158775706.Spec : Prop :=
  ∀ n, P12096109885158775706.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P5857639895945656993

`n-ceil(-a(n-2))` with `a(0)=0, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A198442.P5857639895945656993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) - (-a (n - 2))

end

end A198442.P5857639895945656993

namespace A198442

/-- `n-ceil(-a(n-2))` -/
def P5857639895945656993.Spec : Prop :=
  ∀ n, P5857639895945656993.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P6837630725339256935

`n-round(-a(n-2))` with `a(0)=0, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A198442.P6837630725339256935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) - (-a (n - 2))

end

end A198442.P6837630725339256935

namespace A198442

/-- `n-round(-a(n-2))` -/
def P6837630725339256935.Spec : Prop :=
  ∀ n, P6837630725339256935.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P11798628445801649457

`ceil(record[((n-1)/2)²-1])`
-/

namespace A198442.P11798628445801649457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / 2) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A198442.P11798628445801649457

namespace A198442

/-- `ceil(record[((n-1)/2)²-1])` -/
def P11798628445801649457.Spec : Prop :=
  ∀ n, P11798628445801649457.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P17111909487651396297

`round(((n+1)/2)²-cos(1))`
-/

namespace A198442.P17111909487651396297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1 : ℚ) / 2) ^ 2 : ℝ) - Real.cos (1 : ℝ))

end

end A198442.P17111909487651396297

namespace A198442

/-- `round(((n+1)/2)²-cos(1))` -/
def P17111909487651396297.Spec : Prop :=
  ∀ n, P17111909487651396297.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P820182202952343514

`round((1/tan(2/(n+1)))²)`
-/

namespace A198442.P820182202952343514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 / Real.tan (2 / (n + 1 : ℚ) : ℝ)) ^ 2)

end

end A198442.P820182202952343514

namespace A198442

/-- `round((1/tan(2/(n+1)))²)` -/
def P820182202952343514.Spec : Prop :=
  ∀ n, P820182202952343514.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P10755285433960657320

`ceil(((n+1)/2)²-atan(2))`
-/

namespace A198442.P10755285433960657320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 1 : ℚ) / 2) ^ 2 : ℝ) - Real.arctan (2 : ℝ)⌉

end

end A198442.P10755285433960657320

namespace A198442

/-- `ceil(((n+1)/2)²-atan(2))` -/
def P10755285433960657320.Spec : Prop :=
  ∀ n, P10755285433960657320.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P13909849768703434178

`ceil(((n+1)/2)²-sinh(1))`
-/

namespace A198442.P13909849768703434178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 1 : ℚ) / 2) ^ 2 : ℝ) - Real.sinh (1 : ℝ)⌉

end

end A198442.P13909849768703434178

namespace A198442

/-- `ceil(((n+1)/2)²-sinh(1))` -/
def P13909849768703434178.Spec : Prop :=
  ∀ n, P13909849768703434178.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P2788167566787623525

`ceil(cot((2/(n+1))²))-1`
-/

namespace A198442.P2788167566787623525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot ((2 / (n + 1 : ℚ)) ^ 2 : ℝ)⌉ - 1

end

end A198442.P2788167566787623525

namespace A198442

/-- `ceil(cot((2/(n+1))²))-1` -/
def P2788167566787623525.Spec : Prop :=
  ∀ n, P2788167566787623525.a n = A198442 (n + 1)

end A198442

/-! ## A198442.P9757820236534245018

`round(((n+1-acot(n))/2)²)`
-/

namespace A198442.P9757820236534245018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ)) / 2) ^ 2)

end

end A198442.P9757820236534245018

namespace A198442

/-- `round(((n+1-acot(n))/2)²)` -/
def P9757820236534245018.Spec : Prop :=
  ∀ n, P9757820236534245018.a n = A198442 (n + 1)

end A198442

/-!
# A198443: Conjectured record minima of the positive distance d between the square of an integer y and the fifth power of a positive integer x such that d = y^2 - x^5 (x <> k^2 and y <> k^5).

The programs for A198443, there is no canonical definition to state claims against.
-/

/-! ## A198443.P6226276447669945826

`A198445(n+1)²-A198444(n+1)^5`
-/

namespace A198443.P6226276447669945826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198445 (n + 1) ^ 2 - A198444 (n + 1) ^ 5

end

end A198443.P6226276447669945826

/-!
# A198445: Values y of record minima of the positive distance d between the square of an integer y and the fifth power of a positive integer x such that d = y^2 - x^5 (x <> k^2 and y <> k^5).

The programs for A198445, there is no canonical definition to state claims against.
-/

/-! ## A198445.P15684785301147705879

`A155013(A198444(n+1))+1`
-/

namespace A198445.P15684785301147705879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155013 (A198444 (n + 1)).toNat + 1

end

end A198445.P15684785301147705879

/-! ## A198445.P10519105421692083336

`record[A177761(n+1)]`
-/

namespace A198445.P10519105421692083336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198445.P10519105421692083336

/-!
# A198446: Number of 2nX2n 0..2 arrays with values 0..2 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198446, there is no canonical definition to state claims against.
-/

/-! ## A198446.P9528696483644582477

`A198452(∑[4*n]+1)`
-/

namespace A198446.P9528696483644582477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198446.P9528696483644582477

/-!
# A198447: Number of 2n X 2 0..2 arrays with values 0..2 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198447, the canonical program `A198447.P7389581142126309332` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198447 has offset 1).

The definition of A198447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198447.P7389581142126309332

`∑[A102446(2*n)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A198447

/-- `∑[A102446(2*n)]+1` -/
def P7389581142126309332.Spec : Prop :=
  ∀ n, P7389581142126309332.a n = A198447 (n + 1)

theorem P7389581142126309332.correct : P7389581142126309332.Spec := by
  intro n
  simp only [A198447, Nat.add_sub_cancel]

end A198447

/-! ## A198447.P10498863766926562641

`∑[or(A000007(n), A102446(2*n))]`
-/

namespace A198447.P10498863766926562641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A102446 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198447.P10498863766926562641

namespace A198447

/-- `∑[or(A000007(n), A102446(2*n))]` -/
def P10498863766926562641.Spec : Prop :=
  ∀ n, P10498863766926562641.a n = A198447 (n + 1)

end A198447

/-! ## A198447.P17188556149648227074

`10*a(n-1)-25*a(n-2)+16*a(n-3)` with `a(0)=3, a(1)=13, a(2)=71`
-/

namespace A198447.P17188556149648227074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13, 71] fun n a =>
  10 * a (n - 1) - 25 * a (n - 2) + 16 * a (n - 3)

end

end A198447.P17188556149648227074

namespace A198447

/-- `10*a(n-1)-25*a(n-2)+16*a(n-3)` -/
def P17188556149648227074.Spec : Prop :=
  ∀ n, P17188556149648227074.a n = A198447 (n + 1)

end A198447

/-! ## A198447.P86511159664951075

`ceil(A095344(2*n+3)/4)`
-/

namespace A198447.P86511159664951075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A095344 (2 * n + 3) : ℚ) / 4⌉

end

end A198447.P86511159664951075

namespace A198447

/-- `ceil(A095344(2*n+3)/4)` -/
def P86511159664951075.Spec : Prop :=
  ∀ n, P86511159664951075.a n = A198447 (n + 1)

end A198447

/-! ## A198447.P7481441943073204635

`A006131(2*(n+1))-∑[A026597(2*n+1)]`
-/

namespace A198447.P7481441943073204635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198447.P7481441943073204635

namespace A198447

/-- `A006131(2*(n+1))-∑[A026597(2*n+1)]` -/
def P7481441943073204635.Spec : Prop :=
  ∀ n, P7481441943073204635.a n = A198447 (n + 1)

end A198447

/-!
# A198448: Number of 2nX4 0..2 arrays with values 0..2 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198448, there is no canonical definition to state claims against.
-/

/-! ## A198448.P13891583835101404552

`A198452(∑[n+1]+2)`
-/

namespace A198448.P13891583835101404552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198448.P13891583835101404552

/-! ## A198448.P11969060486756545505

`record[root(A198452(n+2), A278493(n))]`
-/

namespace A198448.P11969060486756545505
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A198452 (n + 2) : ℝ) ^ (1 / (A278493 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198448.P11969060486756545505

/-! ## A198448.P7413466647802438756

`record[A198452(A198453(n+1))]`
-/

namespace A198448.P7413466647802438756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198448.P7413466647802438756

/-! ## A198448.P3288958170198554546

`record[A198452(A198455(n+1))]`
-/

namespace A198448.P3288958170198554546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198448.P3288958170198554546

/-!
# A198449: Number of 2nX6 0..2 arrays with values 0..2 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198449, there is no canonical definition to state claims against.
-/

/-! ## A198449.P15359897105303841556

`A198452(∑[n+2]+4)`
-/

namespace A198449.P15359897105303841556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198449.P15359897105303841556

/-! ## A198449.P11541845378260652859

`record[A198452(A198468(n+1)+2)]`
-/

namespace A198449.P11541845378260652859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (A198468 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198449.P11541845378260652859

/-! ## A198449.P1430910279001659037

`record[A198452(A198455(n+1)+4)]`
-/

namespace A198449.P1430910279001659037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (A198455 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198449.P1430910279001659037

/-! ## A198449.P3591085338874245044

`A198452(A167614(n+1))+A097601(n)`
-/

namespace A198449.P3591085338874245044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (A167614 (n + 1)).toNat + A097601 n

end

end A198449.P3591085338874245044

/-!
# A198450: Number of 2nX8 0..2 arrays with values 0..2 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198450, there is no canonical definition to state claims against.
-/

/-! ## A198450.P12044790678155342500

`A198452(C(n+5, 2)-n)`
-/

namespace A198450.P12044790678155342500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (Nat.choose (n + 5) 2 - n)

end

end A198450.P12044790678155342500

/-! ## A198450.P4080519089530035357

`A198452(A141214(n)+7)`
-/

namespace A198450.P4080519089530035357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (A141214 n + 7).toNat

end

end A198450.P4080519089530035357

/-! ## A198450.P1329091710024811402

`A198452(A052905(n)+9)`
-/

namespace A198450.P1329091710024811402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (A052905 n + 9).toNat

end

end A198450.P1329091710024811402

/-!
# A198451: Number of 2nX10 0..2 arrays with values 0..2 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198451, there is no canonical definition to state claims against.
-/

/-! ## A198451.P1715756040310369673

`A198452(Δ[A264443(n)])`
-/

namespace A198451.P1715756040310369673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198452 (f1 (n + 1) - f1 n).toNat

end

end A198451.P1715756040310369673

/-!
# A198452: T(n,k)=Number of 2nX2k 0..2 arrays with values 0..2 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198452, there is no canonical definition to state claims against.
-/

/-! ## A198452.P14253252080957682114

`A109802(A284182(n+1)+1)`
-/

namespace A198452.P14253252080957682114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109802 (A284182 (n + 1) + 1).toNat

end

end A198452.P14253252080957682114

/-!
# A198453: Consider triples a<=b

The programs for A198453, there is no canonical definition to state claims against.
-/

/-! ## A198453.P330014134156981099

`A198465(n+1)-1`
-/

namespace A198453.P330014134156981099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198465 (n + 1) - 1

end

end A198453.P330014134156981099

/-! ## A198453.P17034683297908844653

`A023443(A198465(n+1))`
-/

namespace A198453.P17034683297908844653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198465 (n + 1)).toNat

end

end A198453.P17034683297908844653

/-! ## A198453.P928729333254372454

`A088226(A198465(n+1)²)`
-/

namespace A198453.P928729333254372454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A198465 (n + 1) ^ 2).toNat

end

end A198453.P928729333254372454

/-! ## A198453.P4499028794620304796

`A214526(A198465(n+1)²)`
-/

namespace A198453.P4499028794620304796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A198465 (n + 1) ^ 2).toNat

end

end A198453.P4499028794620304796

/-! ## A198453.P2515175332385487251

`A259361(A198465(n+1)²)`
-/

namespace A198453.P2515175332385487251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A198465 (n + 1) ^ 2).toNat

end

end A198453.P2515175332385487251

/-! ## A198453.P14298379683786836503

`A023444(A198465(n+1)+1)`
-/

namespace A198453.P14298379683786836503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A198465 (n + 1) + 1).toNat

end

end A198453.P14298379683786836503

/-! ## A198453.P17806667522251934281

`A289207(A198465(n+1)+1)`
-/

namespace A198453.P17806667522251934281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A198465 (n + 1) + 1).toNat

end

end A198453.P17806667522251934281

/-! ## A198453.P4238562134555856223

`A023445(A198465(n+1)+2)`
-/

namespace A198453.P4238562134555856223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A198465 (n + 1) + 2).toNat

end

end A198453.P4238562134555856223

/-! ## A198453.P12689947396999040451

`∑{d}[A198465(n+1), A000010(#)%#]`
-/

namespace A198453.P12689947396999040451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A000010 d) (d : ℤ)

end

end A198453.P12689947396999040451

/-! ## A198453.P1734144155100645010

`abs(A198465(n+1)+or(-1, A000041(n)))`
-/

namespace A198453.P1734144155100645010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A198465 (n + 1) + Int.lor (-1) (A000041 n)|

end

end A198453.P1734144155100645010

/-!
# A198454: Consider triples a<=b

The programs for A198454, there is no canonical definition to state claims against.
-/

/-! ## A198454.P17826138294114699190

`A198466(n+1)-1`
-/

namespace A198454.P17826138294114699190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198466 (n + 1) - 1

end

end A198454.P17826138294114699190

/-! ## A198454.P9656927734362868728

`∑[char[∑[A333529(n+1)]]]+1`
-/

namespace A198454.P9656927734362868728
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A198454.P9656927734362868728

/-! ## A198454.P11938066675679564149

`A002837(A198466(n+1))`
-/

namespace A198454.P11938066675679564149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A198466 (n + 1)).toNat

end

end A198454.P11938066675679564149

/-! ## A198454.P15512594523205171832

`A086520(A198466(n+1)²)`
-/

namespace A198454.P15512594523205171832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A198466 (n + 1) ^ 2).toNat

end

end A198454.P15512594523205171832

/-! ## A198454.P16598415298267460601

`A088226(A198466(n+1)²)`
-/

namespace A198454.P16598415298267460601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A198466 (n + 1) ^ 2).toNat

end

end A198454.P16598415298267460601

/-! ## A198454.P8048876739240646530

`A214526(A198466(n+1)²)`
-/

namespace A198454.P8048876739240646530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A198466 (n + 1) ^ 2).toNat

end

end A198454.P8048876739240646530

/-! ## A198454.P5666244839430944642

`A259361(A198466(n+1)²)`
-/

namespace A198454.P5666244839430944642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A198466 (n + 1) ^ 2).toNat

end

end A198454.P5666244839430944642

/-! ## A198454.P13966825920769888946

`A023444(A198466(n+1)+1)`
-/

namespace A198454.P13966825920769888946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A198466 (n + 1) + 1).toNat

end

end A198454.P13966825920769888946

/-! ## A198454.P4833494960131524872

`A023445(A198466(n+1)+2)`
-/

namespace A198454.P4833494960131524872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A198466 (n + 1) + 2).toNat

end

end A198454.P4833494960131524872

/-! ## A198454.P11450363779373003275

`A023446(A198466(n+1)+3)`
-/

namespace A198454.P11450363779373003275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A198466 (n + 1) + 3).toNat

end

end A198454.P11450363779373003275

/-!
# A198455: Consider triples a<=b

The programs for A198455, there is no canonical definition to state claims against.
-/

/-! ## A198455.P1403223376199606788

`A198467(n+1)-1`
-/

namespace A198455.P1403223376199606788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198467 (n + 1) - 1

end

end A198455.P1403223376199606788

/-! ## A198455.P7372322860487523623

`A023443(A198467(n+1))`
-/

namespace A198455.P7372322860487523623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198467 (n + 1)).toNat

end

end A198455.P7372322860487523623

/-! ## A198455.P12320524918087578303

`A023444(A198467(n+1)+1)`
-/

namespace A198455.P12320524918087578303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A198467 (n + 1) + 1).toNat

end

end A198455.P12320524918087578303

/-! ## A198455.P10655505132109694655

`A289207(A198467(n+1)+1)`
-/

namespace A198455.P10655505132109694655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A198467 (n + 1) + 1).toNat

end

end A198455.P10655505132109694655

/-! ## A198455.P11886577534484619966

`A023445(A198467(n+1)+2)`
-/

namespace A198455.P11886577534484619966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A198467 (n + 1) + 2).toNat

end

end A198455.P11886577534484619966

/-! ## A198455.P157591012668661716

`A023446(A198467(n+1)+3)`
-/

namespace A198455.P157591012668661716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A198467 (n + 1) + 3).toNat

end

end A198455.P157591012668661716

/-! ## A198455.P13358286727694506674

`A059169(4*A198467(n+1))`
-/

namespace A198455.P13358286727694506674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A198467 (n + 1)).toNat

end

end A198455.P13358286727694506674

/-! ## A198455.P14209502614676305824

`A233583(A198467(n+1)%A017233(n))`
-/

namespace A198455.P14209502614676305824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.tmod (A198467 (n + 1)) (A017233 n)).toNat

end

end A198455.P14209502614676305824

/-! ## A198455.P17159158826219420283

`A233583(or(A000007(n), A198467(n+1)))`
-/

namespace A198455.P17159158826219420283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.lor (A000007 n) (A198467 (n + 1))).toNat

end

end A198455.P17159158826219420283

/-! ## A198455.P58101991844448504

`A305805(A037126(n+1))+A198467(n+1)`
-/

namespace A198455.P58101991844448504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305805 (A037126 (n + 1)).toNat + A198467 (n + 1)

end

end A198455.P58101991844448504

/-!
# A198456: Consider triples a<=b

The programs for A198456, there is no canonical definition to state claims against.
-/

/-! ## A198456.P8494923070915131226

`A198468(n+1)-1`
-/

namespace A198456.P8494923070915131226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198468 (n + 1) - 1

end

end A198456.P8494923070915131226

/-! ## A198456.P3230249312871261163

`A023443(A198468(n+1))`
-/

namespace A198456.P3230249312871261163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198468 (n + 1)).toNat

end

end A198456.P3230249312871261163

/-! ## A198456.P16395678030096748565

`A023444(A198468(n+1)+1)`
-/

namespace A198456.P16395678030096748565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A198468 (n + 1) + 1).toNat

end

end A198456.P16395678030096748565

/-! ## A198456.P5636572298769028610

`A289207(A198468(n+1)+1)`
-/

namespace A198456.P5636572298769028610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A198468 (n + 1) + 1).toNat

end

end A198456.P5636572298769028610

/-! ## A198456.P6614812293698012021

`A023445(A198468(n+1)+2)`
-/

namespace A198456.P6614812293698012021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A198468 (n + 1) + 2).toNat

end

end A198456.P6614812293698012021

/-! ## A198456.P5153591207057770456

`A140106(2*A198468(n+1))`
-/

namespace A198456.P5153591207057770456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A198468 (n + 1)).toNat

end

end A198456.P5153591207057770456

/-! ## A198456.P15494976682832949693

`A059169(4*A198468(n+1))`
-/

namespace A198456.P15494976682832949693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A198468 (n + 1)).toNat

end

end A198456.P15494976682832949693

/-! ## A198456.P13764985996413342961

`abs(A198468(n+1)+A057428(A118541(n)))`
-/

namespace A198456.P13764985996413342961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A198468 (n + 1) + A057428 (A118541 n).toNat|

end

end A198456.P13764985996413342961

/-! ## A198456.P11903824329154283243

`A316441(A000040(n+1))+A198468(n+1)`
-/

namespace A198456.P11903824329154283243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A198468 (n + 1)

end

end A198456.P11903824329154283243

/-! ## A198456.P14206597473313241865

`A140106(A198468(n+1)+A198468(n+1)+1)`
-/

namespace A198456.P14206597473313241865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A198468 (n + 1) + (A198468 (n + 1) + 1)).toNat

end

end A198456.P14206597473313241865

/-!
# A198458: Consider triples a<=b

The programs for A198458, there is no canonical definition to state claims against.
-/

/-! ## A198458.P15626407160441131668

`A198457(3*n+1)`
-/

namespace A198458.P15626407160441131668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198457 (3 * n + 1)

end

end A198458.P15626407160441131668

/-! ## A198458.P5684151015769978913

`A198457(A016777(n))%32`
-/

namespace A198458.P5684151015769978913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198457 (A016777 n).toNat) 32

end

end A198458.P5684151015769978913

/-! ## A198458.P15536885088198859749

`A028310(A198457(n+1+n+n))`
-/

namespace A198458.P15536885088198859749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A198457 (n + 1 + n + n)).toNat

end

end A198458.P15536885088198859749

/-! ## A198458.P2325007040564144545

`A198457(n+1+n+n)%A209724(n+1)`
-/

namespace A198458.P2325007040564144545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198457 (n + 1 + n + n)) (A209724 (n + 1))

end

end A198458.P2325007040564144545

/-! ## A198458.P11624492796662093774

`or(A000007(n), A198457(A016777(n)))`
-/

namespace A198458.P11624492796662093774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A198457 (A016777 n).toNat)

end

end A198458.P11624492796662093774

/-! ## A198458.P9109058825689081155

`∑{d}[A198457(A016777(n)), A000010(#)]`
-/

namespace A198458.P9109058825689081155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198457 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A198458.P9109058825689081155

/-! ## A198458.P7191571695368491601

`A198457(A016777(n))+A000007(n+1)`
-/

namespace A198458.P7191571695368491601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198457 (A016777 n).toNat + A000007 (n + 1)

end

end A198458.P7191571695368491601

/-! ## A198458.P4298830477544478908

`or(A000038(n), A198457(A008585(n)+1))`
-/

namespace A198458.P4298830477544478908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A198457 (A008585 n + 1).toNat)

end

end A198458.P4298830477544478908

/-! ## A198458.P11210582086355881501

`or(A000038(n), A198457(A016789(n)-1))`
-/

namespace A198458.P11210582086355881501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A198457 (A016789 n - 1).toNat)

end

end A198458.P11210582086355881501

/-! ## A198458.P9423428250014341958

`∑{e}[A000040(n+1), A198457(A008585(n)+#)]`
-/

namespace A198458.P9423428250014341958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A198457 (A008585 n + (Nat.factorization (f1 n).natAbs p : ℤ)).toNat

end

end A198458.P9423428250014341958

/-!
# A198459: Consider triples a<=b

The programs for A198459, there is no canonical definition to state claims against.
-/

/-! ## A198459.P2514517083629414995

`A198457(3*n+2)`
-/

namespace A198459.P2514517083629414995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198457 (3 * n + 2)

end

end A198459.P2514517083629414995

/-! ## A198459.P8534855625216802931

`xor(1, xor(1, A198457(A016789(n))))`
-/

namespace A198459.P8534855625216802931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A198457 (A016789 n).toNat))

end

end A198459.P8534855625216802931

/-! ## A198459.P14175612970227382112

`or(A000038(n), A198457(A016789(n)))`
-/

namespace A198459.P14175612970227382112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A198457 (A016789 n).toNat)

end

end A198459.P14175612970227382112

/-! ## A198459.P14246812445016621458

`A198457(A016789(n))%A030516(n+1)`
-/

namespace A198459.P14246812445016621458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198457 (A016789 n).toNat) (A030516 (n + 1))

end

end A198459.P14246812445016621458

/-! ## A198459.P7341827128601180368

`∑{d}[A198457(A008585(n)+2), A000010(#)]`
-/

namespace A198459.P7341827128601180368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198457 (A008585 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A198459.P7341827128601180368

/-! ## A198459.P10355201931278066338

`A198457(A016789(n))+A000045(C(n, 64))`
-/

namespace A198459.P10355201931278066338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198457 (A016789 n).toNat + A000045 (Nat.choose n 64)

end

end A198459.P10355201931278066338

/-! ## A198459.P6228814511864207650

`∏{p}[n, A001221(#)]*A198457(A016789(n))`
-/

namespace A198459.P6228814511864207650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A198457 (A016789 n).toNat

end

end A198459.P6228814511864207650

/-! ## A198459.P10608312258962546271

`ceil(1/A000032(n))*A198457(A016789(n))`
-/

namespace A198459.P10608312258962546271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000032 n : ℚ)⌉ * A198457 (A016789 n).toNat

end

end A198459.P10608312258962546271

/-! ## A198459.P6084332061011581115

`A198457(A008585(n)+2)/A007318(C(2, n))`
-/

namespace A198459.P6084332061011581115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198457 (A008585 n + 2).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A198459.P6084332061011581115

/-! ## A198459.P12047581660692991619

`A198457(A016789(n))/and(1, A000040(n+3))`
-/

namespace A198459.P12047581660692991619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198457 (A016789 n).toNat : ℚ) / (Int.land 1 (A000040 (n + 3)) : ℚ)

end

end A198459.P12047581660692991619

/-!
# A198460: Consider triples a<=b

The programs for A198460, there is no canonical definition to state claims against.
-/

/-! ## A198460.P2635478272387832283

`A198457(3*(n+1))`
-/

namespace A198460.P2635478272387832283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198457 (3 * (n + 1))

end

end A198460.P2635478272387832283

/-! ## A198460.P4846407449305464669

`xor(1, xor(1, A198457(A008585(n+1))))`
-/

namespace A198460.P4846407449305464669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A198457 (A008585 (n + 1)).toNat))

end

end A198460.P4846407449305464669

/-! ## A198460.P8903116746775492596

`Δ[A198457(A008585(n))+a(n-1)]` with `a(0)=0`
-/

namespace A198460.P8903116746775492596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A198457 (A008585 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198460.P8903116746775492596

/-! ## A198460.P17718414376328191513

`or(A000038(n), A198457(A008585(n+1)))`
-/

namespace A198460.P17718414376328191513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A198457 (A008585 (n + 1)).toNat)

end

end A198460.P17718414376328191513

/-! ## A198460.P13168191302413296420

`or(A025439(n), A198457(A008585(n+1)))`
-/

namespace A198460.P13168191302413296420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025439 n) (A198457 (A008585 (n + 1)).toNat)

end

end A198460.P13168191302413296420

/-! ## A198460.P17825440214804180327

`A198457(A008585(n+1))%A000040(n+2)²`
-/

namespace A198460.P17825440214804180327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198457 (A008585 (n + 1)).toNat) (A000040 (n + 2) ^ 2)

end

end A198460.P17825440214804180327

/-! ## A198460.P148864335660434718

`A198457(A008585(n+1))^A000032(gcd(n, n+1))`
-/

namespace A198460.P148864335660434718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198457 (A008585 (n + 1)).toNat : ℚ) ^ (A000032 (Nat.gcd n (n + 1)) : ℤ)

end

end A198460.P148864335660434718

/-! ## A198460.P14890617117834439370

`A198457(A008585(n+1))^∑{e}[A000040(n+1), #]`
-/

namespace A198460.P14890617117834439370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198457 (A008585 (n + 1)).toNat ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A198460.P14890617117834439370

/-! ## A198460.P7743328348160976580

`A198457(A008585(n+1))+A008683(A005878(n))`
-/

namespace A198460.P7743328348160976580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198457 (A008585 (n + 1)).toNat + A008683 (A005878 n).toNat

end

end A198460.P7743328348160976580

/-! ## A198460.P18089603794606265419

`A198457(A008585(n+1))+2-A020639(A000010(n+3))`
-/

namespace A198460.P18089603794606265419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198457 (A008585 (n + 1)).toNat + 2 - A020639 (A000010 (n + 3)).toNat

end

end A198460.P18089603794606265419

/-!
# A198462: Consider triples a<=b

The programs for A198462, there is no canonical definition to state claims against.
-/

/-! ## A198462.P16604196493111861683

`A002024(eq[A000034(n), A134404(n)])`
-/

namespace A198462.P16604196493111861683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A198462.P16604196493111861683

/-! ## A198462.P10233724585742204744

`A123578(eq[A000034(n), A134404(n)])`
-/

namespace A198462.P10233724585742204744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A198462.P10233724585742204744

/-! ## A198462.P3333097539459533494

`A043567(A022086(n+2))+A003056(2*(n+1))`
-/

namespace A198462.P3333097539459533494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 (A022086 (n + 2)).toNat + A003056 (2 * (n + 1))

end

end A198462.P3333097539459533494

/-! ## A198462.P17150474216503647541

`A000523(A238086(n+1)+A015723(2*(n+2)))`
-/

namespace A198462.P17150474216503647541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A238086 (n + 1) + A015723 (2 * (n + 2))).toNat

end

end A198462.P17150474216503647541

/-!
# A198463: Consider triples a<=b

The programs for A198463, there is no canonical definition to state claims against.
-/

/-! ## A198463.P1213229131902859026

`A198461(A016789(n))%A141739(n+3)`
-/

namespace A198463.P1213229131902859026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198461 (A016789 n).toNat) (A141739 (n + 3))

end

end A198463.P1213229131902859026

/-! ## A198463.P4870226414259569974

`A198461(A016789(n))%A000124(A048585(n))`
-/

namespace A198463.P4870226414259569974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198461 (A016789 n).toNat) (A000124 (A048585 n).toNat)

end

end A198463.P4870226414259569974

/-! ## A198463.P3279559325827746159

`A198461(3*n+2)%record[A187812(n+2)]`
-/

namespace A198463.P3279559325827746159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187812 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198461 (3 * n + 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A198463.P3279559325827746159

/-! ## A198463.P4800222423749828816

`or(A078442(A305523(n+3)), A198461(3*n+2))`
-/

namespace A198463.P4800222423749828816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078442 (A305523 (n + 3)).toNat) (A198461 (3 * n + 2))

end

end A198463.P4800222423749828816

/-! ## A198463.P9555577369622996547

`A198461(3*n+2)+A030201(A337231(n+1))`
-/

namespace A198463.P9555577369622996547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198461 (3 * n + 2) + A030201 (A337231 (n + 1)).toNat

end

end A198463.P9555577369622996547

/-!
# A198464: Consider triples a<=b

The programs for A198464, there is no canonical definition to state claims against.
-/

/-! ## A198464.P6494763601494812511

`A198461(3*(n+1))`
-/

namespace A198464.P6494763601494812511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198461 (3 * (n + 1))

end

end A198464.P6494763601494812511

/-!
# A198465: Consider triples a<=b

The programs for A198465, there is no canonical definition to state claims against.
-/

/-! ## A198465.P11360037041797605308

`A198453(n+1)+1`
-/

namespace A198465.P11360037041797605308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198453 (n + 1) + 1

end

end A198465.P11360037041797605308

/-! ## A198465.P15856275821753828562

`A020725(A198453(n+1))`
-/

namespace A198465.P15856275821753828562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A198453 (n + 1)).toNat

end

end A198465.P15856275821753828562

/-!
# A198466: Consider triples a<=b

The programs for A198466, there is no canonical definition to state claims against.
-/

/-! ## A198466.P10652168632688553174

`A198454(n+1)+1`
-/

namespace A198466.P10652168632688553174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198454 (n + 1) + 1

end

end A198466.P10652168632688553174

/-! ## A198466.P3353131208276819755

`A020725(A198454(n+1))`
-/

namespace A198466.P3353131208276819755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A198454 (n + 1)).toNat

end

end A198466.P3353131208276819755

/-! ## A198466.P3627137288005272930

`A000196(A346562(3*n+2)+A206284(3*n+5))`
-/

namespace A198466.P3627137288005272930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A346562 (3 * n + 2) + A206284 (3 * n + 5)).toNat

end

end A198466.P3627137288005272930

/-! ## A198466.P12806457157148038005

`A130233(A177710(n+2))`
-/

namespace A198466.P12806457157148038005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A177710 (n + 2)).toNat

end

end A198466.P12806457157148038005

/-! ## A198466.P11993936504911916691

`floor(sqrt(A329313(3*n+1)+A206284(3*n+5)))`
-/

namespace A198466.P11993936504911916691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A329313 (3 * n + 1) + A206284 (3 * n + 5))

end

end A198466.P11993936504911916691

/-!
# A198467: Consider triples a<=b

The programs for A198467, there is no canonical definition to state claims against.
-/

/-! ## A198467.P5358597196547206291

`A198455(n+1)+1`
-/

namespace A198467.P5358597196547206291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198455 (n + 1) + 1

end

end A198467.P5358597196547206291

/-! ## A198467.P3181071353839666562

`A020725(A198455(n+1))`
-/

namespace A198467.P3181071353839666562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A198455 (n + 1)).toNat

end

end A198467.P3181071353839666562

/-! ## A198467.P3029338755175521403

`A198465(3*n+2)`
-/

namespace A198467.P3029338755175521403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198465 (3 * n + 2)

end

end A198467.P3029338755175521403

/-! ## A198467.P7988243445476853733

`A198465(A016789(n))%98`
-/

namespace A198467.P7988243445476853733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198465 (A016789 n).toNat) 98

end

end A198467.P7988243445476853733

/-! ## A198467.P6787535544558580467

`∏{d}[A198465(A016789(n)), A014963(#)]`
-/

namespace A198467.P6787535544558580467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198465 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A198467.P6787535544558580467

/-!
# A198468: Consider triples a<=b

The programs for A198468, there is no canonical definition to state claims against.
-/

/-! ## A198468.P12138046397778141603

`A198456(n+1)+1`
-/

namespace A198468.P12138046397778141603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198456 (n + 1) + 1

end

end A198468.P12138046397778141603

/-! ## A198468.P7364206280271123621

`A020725(A198456(n+1))`
-/

namespace A198468.P7364206280271123621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A198456 (n + 1)).toNat

end

end A198468.P7364206280271123621

/-! ## A198468.P5776519357427092862

`A198465(3*(n+1))`
-/

namespace A198468.P5776519357427092862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198465 (3 * (n + 1))

end

end A198468.P5776519357427092862

/-! ## A198468.P1779319488920836738

`A198465(A008585(n+1))%98`
-/

namespace A198468.P1779319488920836738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198465 (A008585 (n + 1)).toNat) 98

end

end A198468.P1779319488920836738

/-! ## A198468.P11757196096620125361

`A198465(A008486(n+1))%99`
-/

namespace A198468.P11757196096620125361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198465 (A008486 (n + 1)).toNat) 99

end

end A198468.P11757196096620125361

/-!
# A198470: Numbers that are larger than the sum of their deficient divisors.

The programs for A198470, the canonical program `A198470.P9035181533126042493` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198470 has offset 1).

The definition of A198470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198470.P9035181533126042493

`lt[A187793(n+1), n]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A198470

/-- `lt[A187793(n+1), n]+1` -/
def P9035181533126042493.Spec : Prop :=
  ∀ n, (P9035181533126042493.a n : ℤ) = A198470 (n + 1)

theorem P9035181533126042493.correct : P9035181533126042493.Spec := by
  intro n
  simp only [A198470, Nat.add_sub_cancel]

end A198470

/-! ## A198470.P17070064850817348695

`lt[A187793(A028310(n)), n]`
-/

namespace A198470.P17070064850817348695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A198470.P17070064850817348695

namespace A198470

/-- `lt[A187793(A028310(n)), n]` -/
def P17070064850817348695.Spec : Prop :=
  ∀ n, (P17070064850817348695.a n : ℤ) = A198470 (n + 1)

end A198470

/-! ## A198470.P14514748290309262702

`A020725(lt[A187793(n+1), n])`
-/

namespace A198470.P14514748290309262702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A198470.P14514748290309262702

namespace A198470

/-- `A020725(lt[A187793(n+1), n])` -/
def P14514748290309262702.Spec : Prop :=
  ∀ n, P14514748290309262702.a n = A198470 (n + 1)

end A198470

/-! ## A198470.P7111848460131370993

`A153152(lt[A187793(n+1), n])`
-/

namespace A198470.P7111848460131370993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A198470.P7111848460131370993

namespace A198470

/-- `A153152(lt[A187793(n+1), n])` -/
def P7111848460131370993.Spec : Prop :=
  ∀ n, P7111848460131370993.a n = A198470 (n + 1)

end A198470

/-! ## A198470.P9296390834583390866

`lt[A187793(A065033(2*n)), n]`
-/

namespace A198470.P9296390834583390866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A198470.P9296390834583390866

namespace A198470

/-- `lt[A187793(A065033(2*n)), n]` -/
def P9296390834583390866.Spec : Prop :=
  ∀ n, (P9296390834583390866.a n : ℤ) = A198470 (n + 1)

end A198470

/-! ## A198470.P7586241910692700173

`lt[A187793(A233583(n+1)), n]`
-/

namespace A198470.P7586241910692700173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A198470.P7586241910692700173

namespace A198470

/-- `lt[A187793(A233583(n+1)), n]` -/
def P7586241910692700173.Spec : Prop :=
  ∀ n, (P7586241910692700173.a n : ℤ) = A198470 (n + 1)

end A198470

/-!
# A198471: Abundant numbers that are smaller than the sum of their deficient divisors.

The programs for A198471, the canonical program `A198471.P1128838665379452486` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198471 has offset 1).

The definition of A198471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198471.P8441591738933441300

`lt[n, A294886(round(sqrt(n²+1)))]`
-/

namespace A198471.P8441591738933441300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A198471.P8441591738933441300

namespace A198471

/-- `lt[n, A294886(round(sqrt(n²+1)))]` -/
def P8441591738933441300.Spec : Prop :=
  ∀ n, (P8441591738933441300.a n : ℤ) = A198471 (n + 1)

end A198471

/-! ## A198471.P1128838665379452486

`lt[n+1, A294886(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A198471

/-- `lt[n+1, A294886(n+1)]+1` -/
def P1128838665379452486.Spec : Prop :=
  ∀ n, (P1128838665379452486.a n : ℤ) = A198471 (n + 1)

theorem P1128838665379452486.correct : P1128838665379452486.Spec := by
  intro n
  simp only [A198471, Nat.add_sub_cancel]

end A198471

/-! ## A198471.P18010124327229593974

`∩[A005101(n+1), A254278(n+1)]`
-/

namespace A198471.P18010124327229593974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198471.P18010124327229593974

namespace A198471

/-- `∩[A005101(n+1), A254278(n+1)]` -/
def P18010124327229593974.Spec : Prop :=
  ∀ n, (P18010124327229593974.a n : ℤ) = A198471 (n + 1)

end A198471

/-! ## A198471.P8680017102200204262

`∩[A023196(n+1), A254278(n+1)]`
-/

namespace A198471.P8680017102200204262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198471.P8680017102200204262

namespace A198471

/-- `∩[A023196(n+1), A254278(n+1)]` -/
def P8680017102200204262.Spec : Prop :=
  ∀ n, (P8680017102200204262.a n : ℤ) = A198471 (n + 1)

end A198471

/-! ## A198471.P1619935367436083711

`∩[A181487(n+1), A254278(n+1)]`
-/

namespace A198471.P1619935367436083711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198471.P1619935367436083711

namespace A198471

/-- `∩[A181487(n+1), A254278(n+1)]` -/
def P1619935367436083711.Spec : Prop :=
  ∀ n, (P1619935367436083711.a n : ℤ) = A198471 (n + 1)

end A198471

/-! ## A198471.P5460809933745883542

`∩[A204829(n+1), A254278(n+1)]`
-/

namespace A198471.P5460809933745883542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198471.P5460809933745883542

namespace A198471

/-- `∩[A204829(n+1), A254278(n+1)]` -/
def P5460809933745883542.Spec : Prop :=
  ∀ n, (P5460809933745883542.a n : ℤ) = A198471 (n + 1)

end A198471

/-!
# A198474: Number of 2n X 2 0..2 arrays with values 0..2 introduced in row major order and each element equal to an odd number of horizontal and vertical neighbors.

The programs for A198474, the canonical program `A198474.P2041243130398523462` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198474 has offset 1).

The definition of A198474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198474.P12759676590917353574

`ogf((2-6x)/(1-9x+16x^2))`
-/

namespace A198474.P12759676590917353574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6] [1, -9, 16] n

end

end A198474.P12759676590917353574

namespace A198474

/-- `ogf((2-6x)/(1-9x+16x^2))` -/
def P12759676590917353574.Spec : Prop :=
  ∀ n, P12759676590917353574.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P2041243130398523462

`Δ[A193649(2*n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A198474

/-- `Δ[A193649(2*n)]` -/
def P2041243130398523462.Spec : Prop :=
  ∀ n, P2041243130398523462.a n = A198474 (n + 1)

theorem P2041243130398523462.correct : P2041243130398523462.Spec := by
  intro n
  simp only [A198474, Nat.add_sub_cancel]

end A198474

/-! ## A198474.P6432169429776936143

`Δ[A344236(2*n)]`
-/

namespace A198474.P6432169429776936143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198474.P6432169429776936143

namespace A198474

/-- `Δ[A344236(2*n)]` -/
def P6432169429776936143.Spec : Prop :=
  ∀ n, P6432169429776936143.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P12692242053612091537

`Δ[A344261(2*n)]`
-/

namespace A198474.P12692242053612091537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344261 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198474.P12692242053612091537

namespace A198474

/-- `Δ[A344261(2*n)]` -/
def P12692242053612091537.Spec : Prop :=
  ∀ n, P12692242053612091537.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P7173412636218480532

`record[2*A122112(n)]`
-/

namespace A198474.P7173412636218480532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198474.P7173412636218480532

namespace A198474

/-- `record[2*A122112(n)]` -/
def P7173412636218480532.Spec : Prop :=
  ∀ n, P7173412636218480532.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P15901222954614430538

`2*A026597(2*n)`
-/

namespace A198474.P15901222954614430538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026597 (2 * n)

end

end A198474.P15901222954614430538

namespace A198474

/-- `2*A026597(2*n)` -/
def P15901222954614430538.Spec : Prop :=
  ∀ n, P15901222954614430538.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P1281888000064391237

`2*A122112(2*n)`
-/

namespace A198474.P1281888000064391237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122112 (2 * n)

end

end A198474.P1281888000064391237

namespace A198474

/-- `2*A122112(2*n)` -/
def P1281888000064391237.Spec : Prop :=
  ∀ n, P1281888000064391237.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P16093686094763927537

`record[A122112(n)+A026597(n)]`
-/

namespace A198474.P16093686094763927537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 n + A026597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198474.P16093686094763927537

namespace A198474

/-- `record[A122112(n)+A026597(n)]` -/
def P16093686094763927537.Spec : Prop :=
  ∀ n, P16093686094763927537.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P8333874937614395634

`A026581(2*n)+A006131(2*n)`
-/

namespace A198474.P8333874937614395634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 (2 * n) + A006131 (2 * n)

end

end A198474.P8333874937614395634

namespace A198474

/-- `A026581(2*n)+A006131(2*n)` -/
def P8333874937614395634.Spec : Prop :=
  ∀ n, P8333874937614395634.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P15831259006455543437

`A344261(2*n)+A026599(2*n)`
-/

namespace A198474.P15831259006455543437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344261 (2 * n) + A026599 (2 * n)

end

end A198474.P15831259006455543437

namespace A198474

/-- `A344261(2*n)+A026599(2*n)` -/
def P15831259006455543437.Spec : Prop :=
  ∀ n, P15831259006455543437.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P12262713895267779150

`A344236(2*(n+1))-A344236(2*n)`
-/

namespace A198474.P12262713895267779150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 (2 * (n + 1)) - A344236 (2 * n)

end

end A198474.P12262713895267779150

namespace A198474

/-- `A344236(2*(n+1))-A344236(2*n)` -/
def P12262713895267779150.Spec : Prop :=
  ∀ n, P12262713895267779150.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P8436724343673438160

`A344261(2*(n+1))-A344261(2*n)`
-/

namespace A198474.P8436724343673438160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344261 (2 * (n + 1)) - A344261 (2 * n)

end

end A198474.P8436724343673438160

namespace A198474

/-- `A344261(2*(n+1))-A344261(2*n)` -/
def P8436724343673438160.Spec : Prop :=
  ∀ n, P8436724343673438160.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P10116228090877820127

`2*(A099580(2*n)+A006131(2*n))`
-/

namespace A198474.P10116228090877820127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099580 (2 * n) + A006131 (2 * n))

end

end A198474.P10116228090877820127

namespace A198474

/-- `2*(A099580(2*n)+A006131(2*n))` -/
def P10116228090877820127.Spec : Prop :=
  ∀ n, P10116228090877820127.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P14196350640880286614

`A026581(2*n)+A102446(2*n)/2`
-/

namespace A198474.P14196350640880286614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026581 (2 * n) : ℚ) + (A102446 (2 * n) : ℚ) / 2

end

end A198474.P14196350640880286614

namespace A198474

/-- `A026581(2*n)+A102446(2*n)/2` -/
def P14196350640880286614.Spec : Prop :=
  ∀ n, P14196350640880286614.a n = (A198474 (n + 1) : ℚ)

end A198474

/-! ## A198474.P11217321923217628403

`2*(A102446(2*n)-A052923(2*n))`
-/

namespace A198474.P11217321923217628403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A102446 (2 * n) - A052923 (2 * n))

end

end A198474.P11217321923217628403

namespace A198474

/-- `2*(A102446(2*n)-A052923(2*n))` -/
def P11217321923217628403.Spec : Prop :=
  ∀ n, P11217321923217628403.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P840496822235428476

`A052923(2*n+1)+2*A052923(2*n)`
-/

namespace A198474.P840496822235428476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 (2 * n + 1) + 2 * A052923 (2 * n)

end

end A198474.P840496822235428476

namespace A198474

/-- `A052923(2*n+1)+2*A052923(2*n)` -/
def P840496822235428476.Spec : Prop :=
  ∀ n, P840496822235428476.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P12547374983116307869

`A122112(A005843(n))+record[A122112(n)]`
-/

namespace A198474.P12547374983116307869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 (A005843 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198474.P12547374983116307869

namespace A198474

/-- `A122112(A005843(n))+record[A122112(n)]` -/
def P12547374983116307869.Spec : Prop :=
  ∀ n, P12547374983116307869.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P9143039682964880004

`9*a(n-1)-16*a(n-2)` with `a(0)=2, a(1)=12`
-/

namespace A198474.P9143039682964880004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 12] fun n a =>
  9 * a (n - 1) - 16 * a (n - 2)

end

end A198474.P9143039682964880004

namespace A198474

/-- `9*a(n-1)-16*a(n-2)` -/
def P9143039682964880004.Spec : Prop :=
  ∀ n, P9143039682964880004.a n = A198474 (n + 1)

end A198474

/-! ## A198474.P6798445969856445850

`Δ[A006131(2*n)/2]`
-/

namespace A198474.P6798445969856445850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006131 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198474.P6798445969856445850

namespace A198474

/-- `Δ[A006131(2*n)/2]` -/
def P6798445969856445850.Spec : Prop :=
  ∀ n, P6798445969856445850.a n = (A198474 (n + 1) : ℚ)

end A198474

/-! ## A198474.P2112954214936100580

`A159612(2*(n+1))/2`
-/

namespace A198474.P2112954214936100580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159612 (2 * (n + 1)) : ℚ) / 2

end

end A198474.P2112954214936100580

namespace A198474

/-- `A159612(2*(n+1))/2` -/
def P2112954214936100580.Spec : Prop :=
  ∀ n, P2112954214936100580.a n = (A198474 (n + 1) : ℚ)

end A198474

/-!
# A198475: Number of 2nX4 0..2 arrays with values 0..2 introduced in row major order and each element equal to an odd number of horizontal and vertical neighbors.

The programs for A198475, there is no canonical definition to state claims against.
-/

/-! ## A198475.P13029838894002614798

`A198477(∑[n+1]+2)`
-/

namespace A198475.P13029838894002614798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198477 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198475.P13029838894002614798

/-! ## A198475.P1405375253590779779

`record[A198477(3*n+2)]`
-/

namespace A198475.P1405375253590779779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198477 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198475.P1405375253590779779

/-!
# A198476: Number of 2nX6 0..2 arrays with values 0..2 introduced in row major order and each element equal to an odd number of horizontal and vertical neighbors.

The programs for A198476, there is no canonical definition to state claims against.
-/

/-! ## A198476.P15633304986837534693

`A198477(∑[n+2]+4)`
-/

namespace A198476.P15633304986837534693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198477 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198476.P15633304986837534693

/-!
# A198477: T(n,k)=Number of 2nX2k 0..2 arrays with values 0..2 introduced in row major order and each element equal to an odd number of horizontal and vertical neighbors.

The programs for A198477, there is no canonical definition to state claims against.
-/

/-! ## A198477.P5560252902603461546

`A001006(n)*A227352(A054871(n))`
-/

namespace A198477.P5560252902603461546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A227352 (A054871 n).toNat

end

end A198477.P5560252902603461546

/-!
# A198478: a(n) = 9^n * n^9.

The programs for A198478, the canonical program `A198478.P4385004455005019655` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198478 has offset 0).

The definition of A198478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n*n^9` (program `A198478.P4385004455005019655`, by `A198478.P4385004455005019655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198478.P4385004455005019655

`9^n*n^9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198478

/-- `9^n*n^9` -/
def P4385004455005019655.Spec : Prop :=
  ∀ n, (P4385004455005019655.a n : ℤ) = A198478 n

theorem P4385004455005019655.correct : P4385004455005019655.Spec := by
  intro n
  simp only [A198478]

end A198478

/-! ## A198478.P1309449922186630411

`A062275(eq[9, A002262(n)])`
-/

namespace A198478.P1309449922186630411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198478.P1309449922186630411

namespace A198478

/-- `A062275(eq[9, A002262(n)])` -/
def P1309449922186630411.Spec : Prop :=
  ∀ n, P1309449922186630411.a n = A198478 n

end A198478

/-! ## A198478.P13813428651977888168

`A062275(eq[10, A002260(n+1)])`
-/

namespace A198478.P13813428651977888168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198478.P13813428651977888168

namespace A198478

/-- `A062275(eq[10, A002260(n+1)])` -/
def P13813428651977888168.Spec : Prop :=
  ∀ n, P13813428651977888168.a n = A198478 n

end A198478

/-! ## A198478.P3807261667465551629

`A062275(eq[9, A025581(n)])`
-/

namespace A198478.P3807261667465551629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198478.P3807261667465551629

namespace A198478

/-- `A062275(eq[9, A025581(n)])` -/
def P3807261667465551629.Spec : Prop :=
  ∀ n, P3807261667465551629.a n = A198478 n

end A198478

/-! ## A198478.P3892351596153964513

`A062275(eq[10, A004736(n+1)])`
-/

namespace A198478.P3892351596153964513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198478.P3892351596153964513

namespace A198478

/-- `A062275(eq[10, A004736(n+1)])` -/
def P3892351596153964513.Spec : Prop :=
  ∀ n, P3892351596153964513.a n = A198478 n

end A198478

/-!
# A198479: a(n) = 10^n * n^10.

The programs for A198479, the canonical program `A198479.P4927994484308850207` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198479 has offset 0).

The definition of A198479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n*n^10` (program `A198479.P4927994484308850207`, by `A198479.P4927994484308850207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198479.P4927994484308850207

`10^n*n^10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198479

/-- `10^n*n^10` -/
def P4927994484308850207.Spec : Prop :=
  ∀ n, (P4927994484308850207.a n : ℤ) = A198479 n

theorem P4927994484308850207.correct : P4927994484308850207.Spec := by
  intro n
  simp only [A198479]

end A198479

/-! ## A198479.P8606131187864560964

`A008454(n)*A062397(n)-A008454(n)`
-/

namespace A198479.P8606131187864560964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n * A062397 n - A008454 n

end

end A198479.P8606131187864560964

namespace A198479

/-- `A008454(n)*A062397(n)-A008454(n)` -/
def P8606131187864560964.Spec : Prop :=
  ∀ n, P8606131187864560964.a n = A198479 n

end A198479

/-! ## A198479.P449212796860735346

`A062275(eq[10, A002262(n)])`
-/

namespace A198479.P449212796860735346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198479.P449212796860735346

namespace A198479

/-- `A062275(eq[10, A002262(n)])` -/
def P449212796860735346.Spec : Prop :=
  ∀ n, P449212796860735346.a n = A198479 n

end A198479

/-! ## A198479.P7730639540983876575

`A062275(eq[11, A002260(n+1)])`
-/

namespace A198479.P7730639540983876575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198479.P7730639540983876575

namespace A198479

/-- `A062275(eq[11, A002260(n+1)])` -/
def P7730639540983876575.Spec : Prop :=
  ∀ n, P7730639540983876575.a n = A198479 n

end A198479

/-! ## A198479.P8819377943453352730

`A062275(eq[10, A025581(n)])`
-/

namespace A198479.P8819377943453352730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198479.P8819377943453352730

namespace A198479

/-- `A062275(eq[10, A025581(n)])` -/
def P8819377943453352730.Spec : Prop :=
  ∀ n, P8819377943453352730.a n = A198479 n

end A198479

/-!
# A198480: a(n) = 2*7^n - 1.

The programs for A198480, the canonical program `A198480.P6836705424203815260` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198480 has offset 0).

The definition of A198480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*7^n-1` (program `A198480.P6836705424203815260`, by `A198480.P6836705424203815260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198480.P6836705424203815260

`2*7^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198480

/-- `2*7^n-1` -/
def P6836705424203815260.Spec : Prop :=
  ∀ n, P6836705424203815260.a n = A198480 n

theorem P6836705424203815260.correct : P6836705424203815260.Spec := by
  intro n
  simp only [A198480]

end A198480

/-! ## A198480.P14809697329826162336

`xor(3, 2*7^n)`
-/

namespace A198480.P14809697329826162336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * 7 ^ n)

end

end A198480.P14809697329826162336

namespace A198480

/-- `xor(3, 2*7^n)` -/
def P14809697329826162336.Spec : Prop :=
  ∀ n, (P14809697329826162336.a n : ℤ) = A198480 n

end A198480

/-! ## A198480.P17134039373197725711

`ogf((1+5x)/(1-8x+7x^2))`
-/

namespace A198480.P17134039373197725711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -8, 7] n

end

end A198480.P17134039373197725711

namespace A198480

/-- `ogf((1+5x)/(1-8x+7x^2))` -/
def P17134039373197725711.Spec : Prop :=
  ∀ n, P17134039373197725711.a n = A198480 n

end A198480

/-! ## A198480.P5946937095460209026

`∑[7*a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A198480.P5946937095460209026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198480.P5946937095460209026

namespace A198480

/-- `∑[7*a(n-1)]` -/
def P5946937095460209026.Spec : Prop :=
  ∀ n, (P5946937095460209026.a n : ℤ) = A198480 n

end A198480

/-! ## A198480.P2536764552891024133

`floor((lcm(4, 7^n)-1)/2)`
-/

namespace A198480.P2536764552891024133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 4 (7 ^ n) : ℤ) - 1 : ℚ) / 2⌋

end

end A198480.P2536764552891024133

namespace A198480

/-- `floor((lcm(4, 7^n)-1)/2)` -/
def P2536764552891024133.Spec : Prop :=
  ∀ n, P2536764552891024133.a n = A198480 n

end A198480

/-! ## A198480.P14247048500078166986

`(Δ[7^n]+1)%(2*7^n+1)`
-/

namespace A198480.P14247048500078166986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) (2 * 7 ^ n + 1 : ℤ)

end

end A198480.P14247048500078166986

namespace A198480

/-- `(Δ[7^n]+1)%(2*7^n+1)` -/
def P14247048500078166986.Spec : Prop :=
  ∀ n, P14247048500078166986.a n = A198480 n

end A198480

/-! ## A198480.P2285791097359937450

`floor(A198686(n)/2)`
-/

namespace A198480.P2285791097359937450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198686 n : ℚ) / 2⌋

end

end A198480.P2285791097359937450

namespace A198480

/-- `floor(A198686(n)/2)` -/
def P2285791097359937450.Spec : Prop :=
  ∀ n, P2285791097359937450.a n = A198480 n

end A198480

/-! ## A198480.P4468110304477854814

`(A198688(n)-2)/3`
-/

namespace A198480.P4468110304477854814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198688 n - 2 : ℚ) / 3

end

end A198480.P4468110304477854814

namespace A198480

/-- `(A198688(n)-2)/3` -/
def P4468110304477854814.Spec : Prop :=
  ∀ n, P4468110304477854814.a n = (A198480 n : ℚ)

end A198480

/-! ## A198480.P10630433640124760676

`(A199419(n)-3)/2`
-/

namespace A198480.P10630433640124760676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199419 n - 3 : ℚ) / 2

end

end A198480.P10630433640124760676

namespace A198480

/-- `(A199419(n)-3)/2` -/
def P10630433640124760676.Spec : Prop :=
  ∀ n, P10630433640124760676.a n = (A198480 n : ℚ)

end A198480

/-! ## A198480.P10301542742158016468

`(A198689(n)-3)/4`
-/

namespace A198480.P10301542742158016468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198689 n - 3 : ℚ) / 4

end

end A198480.P10301542742158016468

namespace A198480

/-- `(A198689(n)-3)/4` -/
def P10301542742158016468.Spec : Prop :=
  ∀ n, P10301542742158016468.a n = (A198480 n : ℚ)

end A198480

/-! ## A198480.P16498088712013398581

`(A199483(n)-4)/3`
-/

namespace A198480.P16498088712013398581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199483 n - 4 : ℚ) / 3

end

end A198480.P16498088712013398581

namespace A198480

/-- `(A199483(n)-4)/3` -/
def P16498088712013398581.Spec : Prop :=
  ∀ n, P16498088712013398581.a n = (A198480 n : ℚ)

end A198480

/-! ## A198480.P158345430189869072

`(A198691(n)-4)/5`
-/

namespace A198480.P158345430189869072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198691 n - 4 : ℚ) / 5

end

end A198480.P158345430189869072

namespace A198480

/-- `(A198691(n)-4)/5` -/
def P158345430189869072.Spec : Prop :=
  ∀ n, P158345430189869072.a n = (A198480 n : ℚ)

end A198480

/-! ## A198480.P17220892902841029276

`(A199485(n)-5)/4`
-/

namespace A198480.P17220892902841029276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199485 n - 5 : ℚ) / 4

end

end A198480.P17220892902841029276

namespace A198480

/-- `(A199485(n)-5)/4` -/
def P17220892902841029276.Spec : Prop :=
  ∀ n, P17220892902841029276.a n = (A198480 n : ℚ)

end A198480

/-! ## A198480.P11783567867801445521

`abs(2*A000420(n)-1)`
-/

namespace A198480.P11783567867801445521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A000420 n - 1|

end

end A198480.P11783567867801445521

namespace A198480

/-- `abs(2*A000420(n)-1)` -/
def P11783567867801445521.Spec : Prop :=
  ∀ n, P11783567867801445521.a n = A198480 n

end A198480

/-! ## A198480.P9682197299527053563

`(A208704(n+1)-2)/2`
-/

namespace A198480.P9682197299527053563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208704 (n + 1) - 2 : ℚ) / 2

end

end A198480.P9682197299527053563

namespace A198480

/-- `(A208704(n+1)-2)/2` -/
def P9682197299527053563.Spec : Prop :=
  ∀ n, P9682197299527053563.a n = (A198480 n : ℚ)

end A198480

/-! ## A198480.P4472734589312484625

`A181303(A016933(n))`
-/

namespace A198480.P4472734589312484625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181303 (A016933 n).toNat

end

end A198480.P4472734589312484625

namespace A198480

/-- `A181303(A016933(n))` -/
def P4472734589312484625.Spec : Prop :=
  ∀ n, P4472734589312484625.a n = A198480 n

end A198480

/-! ## A198480.P12386227467442534247

`A224331(n+1)/(n+1)`
-/

namespace A198480.P12386227467442534247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224331 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A198480.P12386227467442534247

namespace A198480

/-- `A224331(n+1)/(n+1)` -/
def P12386227467442534247.Spec : Prop :=
  ∀ n, P12386227467442534247.a n = (A198480 n : ℚ)

end A198480

/-!
# A198482: Number of 2n X 2 0..3 arrays with values 0..3 introduced in row major order and each element equal to an even number of horizontal and vertical neighbors.

The programs for A198482, there is no canonical definition to state claims against.
-/

/-! ## A198482.P16764193999262965351

`A240637(2*(n+1))`
-/

namespace A198482.P16764193999262965351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240637 (2 * (n + 1))

end

end A198482.P16764193999262965351

/-! ## A198482.P10047685993538556748

`record[A240637(A014681(n+1))]`
-/

namespace A198482.P10047685993538556748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240637 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198482.P10047685993538556748

/-! ## A198482.P10050521119259883667

`abs(A240637(A014681(n+1+n))-n)+n`
-/

namespace A198482.P10050521119259883667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A240637 (A014681 (n + 1 + n)).toNat - (n : ℤ)| + (n : ℤ)

end

end A198482.P10050521119259883667

/-! ## A198482.P16903628714372876344

`record[A240637(2*A064064(n))]`
-/

namespace A198482.P16903628714372876344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240637 (2 * A064064 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198482.P16903628714372876344

/-! ## A198482.P7269137135642427302

`C(A240637(A014681(n+1+n)), A355588(n))`
-/

namespace A198482.P7269137135642427302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A240637 (A014681 (n + 1 + n)).toNat).toNat (A355588 n).toNat

end

end A198482.P7269137135642427302

/-!
# A198483: Number of 2nX4 0..3 arrays with values 0..3 introduced in row major order and each element equal to an even number of horizontal and vertical neighbors.

The programs for A198483, there is no canonical definition to state claims against.
-/

/-! ## A198483.P7921595319898732129

`A240639(2*(n+1))`
-/

namespace A198483.P7921595319898732129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240639 (2 * (n + 1))

end

end A198483.P7921595319898732129

/-! ## A198483.P6202785538132451709

`A198485(∑[n+1]+2)`
-/

namespace A198483.P6202785538132451709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198485 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198483.P6202785538132451709

/-!
# A198484: 

The programs for A198484, there is no canonical definition to state claims against.
-/

/-! ## A198484.P1838543836525462375

`A240641(2*(n+1))`
-/

namespace A198484.P1838543836525462375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240641 (2 * (n + 1))

end

end A198484.P1838543836525462375

/-!
# A198485: T(n,k)=Number of 2nX2k 0..3 arrays with values 0..3 introduced in row major order and each element equal to an even number of horizontal and vertical neighbors.

The programs for A198485, there is no canonical definition to state claims against.
-/

/-! ## A198485.P5553876624981269072

`A240642((round(sqrt(2*(n+1)))+1)²+2*n+1)`
-/

namespace A198485.P5553876624981269072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 ((SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A198485.P5553876624981269072

/-!
# A198486: Numbers with the property that all pairs of consecutive digits differ by 9.

The programs for A198486, there is no canonical definition to state claims against.
-/

/-! ## A198486.P16871104279694883268

`∩[A032998(n+1), A376425(n+1)]`
-/

namespace A198486.P16871104279694883268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198486.P16871104279694883268

/-! ## A198486.P8510657534699086939

`∩[A032998(n+1), A385298(n+1)]`
-/

namespace A198486.P8510657534699086939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198486.P8510657534699086939

/-! ## A198486.P2650173157575850464

`∩[A032992(n+1), A376425(n+1)]`
-/

namespace A198486.P2650173157575850464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198486.P2650173157575850464

/-! ## A198486.P6029303320219201399

`∩[A032992(n+1), A385298(n+1)]`
-/

namespace A198486.P6029303320219201399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198486.P6029303320219201399

/-! ## A198486.P7329443916663249127

`filter[A385298(n+2), A196368(#)]`
-/

namespace A198486.P7329443916663249127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A198486.P7329443916663249127

