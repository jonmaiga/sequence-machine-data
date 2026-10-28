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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A202200: Number of (n+2) X 8 binary arrays avoiding patterns 001 and 101 in rows and columns.

The programs for A202200, the canonical program `A202200.P18439154657635021982` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202200 has offset 1).

The definition of A202200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202200.P18439154657635021982

`(n+9)*(n+8)*(n+7)*(n+6)*(n+5)*(n+4)*(n+3)²/315`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A202200

/-- `(n+9)*(n+8)*(n+7)*(n+6)*(n+5)*(n+4)*(n+3)²/315` -/
def P18439154657635021982.Spec : Prop :=
  ∀ n, P18439154657635021982.a n = (A202200 (n + 1) : ℚ)

end A202200

/-! ## A202200.P17504709831509419711

`16*A056001(n+2)`
-/

namespace A202200.P17504709831509419711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A056001 (n + 2)

end

end A202200.P17504709831509419711

namespace A202200

/-- `16*A056001(n+2)` -/
def P17504709831509419711.Spec : Prop :=
  ∀ n, P17504709831509419711.a n = A202200 (n + 1)

end A202200

/-! ## A202200.P7034973607365094548

`16*Δ[A056122(n+1)]`
-/

namespace A202200.P7034973607365094548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (f1 (n + 1) - f1 n)

end

end A202200.P7034973607365094548

namespace A202200

/-- `16*Δ[A056122(n+1)]` -/
def P7034973607365094548.Spec : Prop :=
  ∀ n, P7034973607365094548.a n = A202200 (n + 1)

end A202200

/-! ## A202200.P1086628689696415636

`A000580(n+9)*A008598(n+3)`
-/

namespace A202200.P1086628689696415636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 9) * A008598 (n + 3)

end

end A202200.P1086628689696415636

namespace A202200

/-- `A000580(n+9)*A008598(n+3)` -/
def P1086628689696415636.Spec : Prop :=
  ∀ n, P1086628689696415636.a n = A202200 (n + 1)

end A202200

/-! ## A202200.P17270116737899185652

`(A219529(2*n+1)+A219529(n+8))*A000580(n+9)`
-/

namespace A202200.P17270116737899185652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A219529 (2 * n + 1) + A219529 (n + 8)) * A000580 (n + 9)

end

end A202200.P17270116737899185652

namespace A202200

/-- `(A219529(2*n+1)+A219529(n+8))*A000580(n+9)` -/
def P17270116737899185652.Spec : Prop :=
  ∀ n, P17270116737899185652.a n = A202200 (n + 1)

end A202200

/-! ## A202200.P10704400570723623136

`Δ[A001105(2*n+5)]*A000580(n+9)`
-/

namespace A202200.P10704400570723623136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000580 (n + 9)

end

end A202200.P10704400570723623136

namespace A202200

/-- `Δ[A001105(2*n+5)]*A000580(n+9)` -/
def P10704400570723623136.Spec : Prop :=
  ∀ n, P10704400570723623136.a n = A202200 (n + 1)

end A202200

/-! ## A202200.P7960666784050861062

`A000580(n+9)*A008574(A008574(n+3))`
-/

namespace A202200.P7960666784050861062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 9) * A008574 (A008574 (n + 3)).toNat

end

end A202200.P7960666784050861062

namespace A202200

/-- `A000580(n+9)*A008574(A008574(n+3))` -/
def P7960666784050861062.Spec : Prop :=
  ∀ n, P7960666784050861062.a n = A202200 (n + 1)

end A202200

/-!
# A202201: Number of (n+2) X 9 binary arrays avoiding patterns 001 and 101 in rows and columns.

The programs for A202201, the canonical program `A202201.P3456671405789778067` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202201 has offset 1).

The definition of A202201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202201.P3456671405789778067

`18*A056003(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202201

/-- `18*A056003(n+2)` -/
def P3456671405789778067.Spec : Prop :=
  ∀ n, P3456671405789778067.a n = A202201 (n + 1)

theorem P3456671405789778067.correct : P3456671405789778067.Spec := by
  intro n
  simp only [A202201, Nat.add_sub_cancel]

end A202201

/-! ## A202201.P3606286764087221591

`18*Δ[A254142(n+1)]`
-/

namespace A202201.P3606286764087221591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * (f1 (n + 1) - f1 n)

end

end A202201.P3606286764087221591

namespace A202201

/-- `18*Δ[A254142(n+1)]` -/
def P3606286764087221591.Spec : Prop :=
  ∀ n, P3606286764087221591.a n = A202201 (n + 1)

end A202201

/-! ## A202201.P10704355847920618466

`A000581(n+10)*A008486(6*(n+3))`
-/

namespace A202201.P10704355847920618466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 10) * A008486 (6 * (n + 3))

end

end A202201.P10704355847920618466

namespace A202201

/-- `A000581(n+10)*A008486(6*(n+3))` -/
def P10704355847920618466.Spec : Prop :=
  ∀ n, P10704355847920618466.a n = A202201 (n + 1)

end A202201

/-! ## A202201.P9867119236665274524

`A202202(A374008(n+1))`
-/

namespace A202201.P9867119236665274524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202202 (A374008 (n + 1)).toNat

end

end A202201.P9867119236665274524

namespace A202201

/-- `A202202(A374008(n+1))` -/
def P9867119236665274524.Spec : Prop :=
  ∀ n, P9867119236665274524.a n = A202201 (n + 1)

end A202201

/-! ## A202201.P2479949278151693256

`A202202(A167487(n+5))`
-/

namespace A202201.P2479949278151693256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202202 (A167487 (n + 5)).toNat

end

end A202201.P2479949278151693256

namespace A202201

/-- `A202202(A167487(n+5))` -/
def P2479949278151693256.Spec : Prop :=
  ∀ n, P2479949278151693256.a n = A202201 (n + 1)

end A202201

/-!
# A202206: a(n) = 3*a(n-1)+3*a(n-2) with a(0)=1 and a(1)=2.

The programs for A202206, the canonical program `A202206.P11998482121119376995` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202206 has offset 0).

The definition of A202206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)` (program `A202206.P11998482121119376995`, by `A202206.P11998482121119376995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202206.P1285585373172389738

`ogf((1-x)/(1-3x-3x^2))`
-/

namespace A202206.P1285585373172389738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, -3] n

end

end A202206.P1285585373172389738

namespace A202206

/-- `ogf((1-x)/(1-3x-3x^2))` -/
def P1285585373172389738.Spec : Prop :=
  ∀ n, P1285585373172389738.a n = A202206 n

end A202206

/-! ## A202206.P11998482121119376995

`3*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A202206

/-- `3*a(n-1)+3*a(n-2)` -/
def P11998482121119376995.Spec : Prop :=
  ∀ n, (P11998482121119376995.a n : ℤ) = A202206 n

theorem P11998482121119376995.correct : P11998482121119376995.Spec := by
  intro n
  simp only [A202206]

end A202206

/-! ## A202206.P8259398858474000426

`3*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A202206.P8259398858474000426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A202206.P8259398858474000426

namespace A202206

/-- `3*(a(n-1)+a(n-2))` -/
def P8259398858474000426.Spec : Prop :=
  ∀ n, (P8259398858474000426.a n : ℤ) = A202206 n

theorem P8259398858474000426.correct : P8259398858474000426.Spec := by
  intro n
  simp only [A202206, Nat.add_sub_cancel, A202206.P8259398858474000426.a, A202206.P11998482121119376995.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A202206

/-! ## A202206.P11519908354972012550

`3*(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A202206.P11519908354972012550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A202206.P11519908354972012550

namespace A202206

/-- `3*(a(n-1)-floor(-a(n-2)))` -/
def P11519908354972012550.Spec : Prop :=
  ∀ n, P11519908354972012550.a n = A202206 n

end A202206

/-! ## A202206.P3654777534064476520

`3*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A202206.P3654777534064476520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A202206.P3654777534064476520

namespace A202206

/-- `3*(a(n-1)-ceil(-a(n-2)))` -/
def P3654777534064476520.Spec : Prop :=
  ∀ n, P3654777534064476520.a n = A202206 n

end A202206

/-! ## A202206.P6888287983438746888

`3*(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A202206.P6888287983438746888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A202206.P6888287983438746888

namespace A202206

/-- `3*(a(n-1)-round(-a(n-2)))` -/
def P6888287983438746888.Spec : Prop :=
  ∀ n, P6888287983438746888.a n = A202206 n

end A202206

/-! ## A202206.P9104887736669270288

`3-3*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A202206.P9104887736669270288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - 3 * (1 - a (n - 1) - a (n - 2))

end

end A202206.P9104887736669270288

namespace A202206

/-- `3-3*(1-a(n-1)-a(n-2))` -/
def P9104887736669270288.Spec : Prop :=
  ∀ n, P9104887736669270288.a n = A202206 n

end A202206

/-! ## A202206.P13175015540341070549

`(a(n-1)+a(n-2))/(1-2/3)` with `a(0)=1, a(1)=2`
-/

namespace A202206.P13175015540341070549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (2 : ℚ) / 3)

end

end A202206.P13175015540341070549

namespace A202206

/-- `(a(n-1)+a(n-2))/(1-2/3)` -/
def P13175015540341070549.Spec : Prop :=
  ∀ n, P13175015540341070549.a n = (A202206 n : ℚ)

end A202206

/-! ## A202206.P16293957748495270539

`lcm(3, 1-(a(n-1)+a(n-2)))+3` with `a(0)=1, a(1)=2`
-/

namespace A202206.P16293957748495270539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm 3 (1 - (a (n - 1) + a (n - 2) : ℤ)) + 3

end

end A202206.P16293957748495270539

namespace A202206

/-- `lcm(3, 1-(a(n-1)+a(n-2)))+3` -/
def P16293957748495270539.Spec : Prop :=
  ∀ n, (P16293957748495270539.a n : ℤ) = A202206 n

end A202206

/-! ## A202206.P10424763576489860089

`A271318(2*n)`
-/

namespace A202206.P10424763576489860089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271318 (2 * n)

end

end A202206.P10424763576489860089

namespace A202206

/-- `A271318(2*n)` -/
def P10424763576489860089.Spec : Prop :=
  ∀ n, P10424763576489860089.a n = A202206 n

end A202206

/-! ## A202206.P15331031597836727951

`A134927(n)+A030195(n)`
-/

namespace A202206.P15331031597836727951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134927 n + A030195 n

end

end A202206.P15331031597836727951

namespace A202206

/-- `A134927(n)+A030195(n)` -/
def P15331031597836727951.Spec : Prop :=
  ∀ n, P15331031597836727951.a n = A202206 n

end A202206

/-! ## A202206.P15720188610969611109

`Δ[A030195(n)]`
-/

namespace A202206.P15720188610969611109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202206.P15720188610969611109

namespace A202206

/-- `Δ[A030195(n)]` -/
def P15720188610969611109.Spec : Prop :=
  ∀ n, P15720188610969611109.a n = A202206 n

end A202206

/-! ## A202206.P16272497486641422542

`Δ[A106435(n)/3]`
-/

namespace A202206.P16272497486641422542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106435 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202206.P16272497486641422542

namespace A202206

/-- `Δ[A106435(n)/3]` -/
def P16272497486641422542.Spec : Prop :=
  ∀ n, P16272497486641422542.a n = (A202206 n : ℚ)

end A202206

/-! ## A202206.P9189757530070178654

`A172012(n)-A134927(n)`
-/

namespace A202206.P9189757530070178654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172012 n - A134927 n

end

end A202206.P9189757530070178654

namespace A202206

/-- `A172012(n)-A134927(n)` -/
def P9189757530070178654.Spec : Prop :=
  ∀ n, P9189757530070178654.a n = A202206 n

end A202206

/-! ## A202206.P3615976492517662392

`A030195(n+1)-A030195(n)`
-/

namespace A202206.P3615976492517662392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 (n + 1) - A030195 n

end

end A202206.P3615976492517662392

namespace A202206

/-- `A030195(n+1)-A030195(n)` -/
def P3615976492517662392.Spec : Prop :=
  ∀ n, P3615976492517662392.a n = A202206 n

end A202206

/-! ## A202206.P9503393469320552620

`A125145(n)-2*A030195(n)`
-/

namespace A202206.P9503393469320552620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 n - 2 * A030195 n

end

end A202206.P9503393469320552620

namespace A202206

/-- `A125145(n)-2*A030195(n)` -/
def P9503393469320552620.Spec : Prop :=
  ∀ n, P9503393469320552620.a n = A202206 n

end A202206

/-! ## A202206.P16295538507483621737

`(A172012(n)+A030195(n))/2`
-/

namespace A202206.P16295538507483621737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172012 n + A030195 n : ℚ) / 2

end

end A202206.P16295538507483621737

namespace A202206

/-- `(A172012(n)+A030195(n))/2` -/
def P16295538507483621737.Spec : Prop :=
  ∀ n, P16295538507483621737.a n = (A202206 n : ℚ)

end A202206

/-! ## A202206.P12901344414417567385

`2*A125145(n)-A108306(n)`
-/

namespace A202206.P12901344414417567385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125145 n - A108306 n

end

end A202206.P12901344414417567385

namespace A202206

/-- `2*A125145(n)-A108306(n)` -/
def P12901344414417567385.Spec : Prop :=
  ∀ n, P12901344414417567385.a n = A202206 n

end A202206

/-! ## A202206.P17307247360293394742

`A123620(n)+A155116(n)-A125145(n)`
-/

namespace A202206.P17307247360293394742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123620 n + (A155116 n - A125145 n)

end

end A202206.P17307247360293394742

namespace A202206

/-- `A123620(n)+A155116(n)-A125145(n)` -/
def P17307247360293394742.Spec : Prop :=
  ∀ n, P17307247360293394742.a n = A202206 n

end A202206

/-! ## A202206.P10105589257932831157

`A196472(n+2)-(A196472(n+1)+A108306(n))`
-/

namespace A202206.P10105589257932831157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196472 (n + 2) - (A196472 (n + 1) + A108306 n)

end

end A202206.P10105589257932831157

namespace A202206

/-- `A196472(n+2)-(A196472(n+1)+A108306(n))` -/
def P10105589257932831157.Spec : Prop :=
  ∀ n, P10105589257932831157.a n = A202206 n

end A202206

/-!
# A202207: a(n) = 3*a(n-1) - a(n-2) + a(n-3) with a(0)=1, a(1)=2, a(2)=5.

The programs for A202207, the canonical program `A202207.P6815703977762129554` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202207 has offset 0).

The definition of A202207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)+a(n-3)` (program `A202207.P6815703977762129554`, by `A202207.P6815703977762129554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202207.P2127037080765288921

`ogf((1-x)/(1-3x+x^2-x^3))`
-/

namespace A202207.P2127037080765288921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, 1, -1] n

end

end A202207.P2127037080765288921

namespace A202207

/-- `ogf((1-x)/(1-3x+x^2-x^3))` -/
def P2127037080765288921.Spec : Prop :=
  ∀ n, P2127037080765288921.a n = A202207 n

end A202207

/-! ## A202207.P6815703977762129554

`3*a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A202207

/-- `3*a(n-1)-a(n-2)+a(n-3)` -/
def P6815703977762129554.Spec : Prop :=
  ∀ n, P6815703977762129554.a n = A202207 n

theorem P6815703977762129554.correct : P6815703977762129554.Spec := by
  intro n
  simp only [A202207]

end A202207

/-! ## A202207.P16778172385211918715

`A200752(n+3)-A200752(n+2)`
-/

namespace A202207.P16778172385211918715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 (n + 3) - A200752 (n + 2)

end

end A202207.P16778172385211918715

namespace A202207

/-- `A200752(n+3)-A200752(n+2)` -/
def P16778172385211918715.Spec : Prop :=
  ∀ n, P16778172385211918715.a n = A202207 n

end A202207

/-! ## A202207.P8369769795232438592

`a(n-3)-(a(n-2)-3*a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A202207.P8369769795232438592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 3) - (a (n - 2) - 3 * a (n - 1))

end

end A202207.P8369769795232438592

namespace A202207

/-- `a(n-3)-(a(n-2)-3*a(n-1))` -/
def P8369769795232438592.Spec : Prop :=
  ∀ n, P8369769795232438592.a n = A202207 n

end A202207

/-! ## A202207.P5292610229086070240

`∑[A098182(n)]`
-/

namespace A202207.P5292610229086070240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202207.P5292610229086070240

namespace A202207

/-- `∑[A098182(n)]` -/
def P5292610229086070240.Spec : Prop :=
  ∀ n, P5292610229086070240.a n = A202207 n

end A202207

/-! ## A202207.P10832924871042393789

`Δ[A200752(n+2)]`
-/

namespace A202207.P10832924871042393789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202207.P10832924871042393789

namespace A202207

/-- `Δ[A200752(n+2)]` -/
def P10832924871042393789.Spec : Prop :=
  ∀ n, P10832924871042393789.a n = A202207 n

end A202207

/-! ## A202207.P12282488682060365394

`record[abs(Δ[A200752(n)])]`
-/

namespace A202207.P12282488682060365394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202207.P12282488682060365394

namespace A202207

/-- `record[abs(Δ[A200752(n)])]` -/
def P12282488682060365394.Spec : Prop :=
  ∀ n, P12282488682060365394.a n = A202207 n

end A202207

/-! ## A202207.P12213803626166015127

`∑{#}[n, C(n+#+1, 3*#+1)*2^#]`
-/

namespace A202207.P12213803626166015127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + k + 1) (3 * k + 1) * 2 ^ k

end

end A202207.P12213803626166015127

namespace A202207

/-- `∑{#}[n, C(n+#+1, 3*#+1)*2^#]` -/
def P12213803626166015127.Spec : Prop :=
  ∀ n, (P12213803626166015127.a n : ℤ) = A202207 n

end A202207

/-! ## A202207.P11793670515083886190

`Δ[A098182(n)-A200752(n)]`
-/

namespace A202207.P11793670515083886190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098182 n - A200752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202207.P11793670515083886190

namespace A202207

/-- `Δ[A098182(n)-A200752(n)]` -/
def P11793670515083886190.Spec : Prop :=
  ∀ n, P11793670515083886190.a n = A202207 n

end A202207

/-!
# A202208: Smallest square (>4n) == 1 mod 4n.

The programs for A202208, there is no canonical definition to state claims against.
-/

/-! ## A202208.P13654271737087593530

`A061369(4*(n+1))`
-/

namespace A202208.P13654271737087593530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061369 (4 * (n + 1))

end

end A202208.P13654271737087593530

/-! ## A202208.P17059735485579971261

`A070667(4*(n+1))²`
-/

namespace A202208.P17059735485579971261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (4 * (n + 1)) ^ 2

end

end A202208.P17059735485579971261

/-! ## A202208.P5346880315135566101

`A215653(4*(n+1))²`
-/

namespace A202208.P5346880315135566101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215653 (4 * (n + 1)) ^ 2

end

end A202208.P5346880315135566101

/-! ## A202208.P14347637748958106748

`4*A345988(n+1)+1`
-/

namespace A202208.P14347637748958106748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A345988 (n + 1) + 1

end

end A202208.P14347637748958106748

/-! ## A202208.P17460848470311317890

`(2*A344005(n+1)+1)²`
-/

namespace A202208.P17460848470311317890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A344005 (n + 1) + 1) ^ 2

end

end A202208.P17460848470311317890

/-! ## A202208.P7590280119086437798

`4*(n+1)*A344006(n+1)+1`
-/

namespace A202208.P7590280119086437798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A344006 (n + 1)) + 1

end

end A202208.P7590280119086437798

/-! ## A202208.P11813515855537661361

`A004766(A345988(n+1))`
-/

namespace A202208.P11813515855537661361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A345988 (n + 1)).toNat

end

end A202208.P11813515855537661361

/-! ## A202208.P3405796076496931497

`A016754(A344005(n+1))`
-/

namespace A202208.P3405796076496931497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A344005 (n + 1)).toNat

end

end A202208.P3405796076496931497

/-! ## A202208.P929031099164621245

`A005408(2*A345988(n+1))`
-/

namespace A202208.P929031099164621245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A345988 (n + 1)).toNat

end

end A202208.P929031099164621245

/-! ## A202208.P3987411724699468758

`A020725(2*A344005(n+1))²`
-/

namespace A202208.P3987411724699468758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (2 * A344005 (n + 1)).toNat ^ 2

end

end A202208.P3987411724699468758

/-!
# A202209: Triangle T(n,k), read by rows, given by (2, 1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (0, 1/2, -1/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A202209, the canonical program `A202209.P197193000987849553` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202209 has offset 0).

The definition of A202209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202209.P197193000987849553

`3*T(n-1,k)-T(n-2,k)+T(n-2,k-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A202209

/-- `3*T(n-1,k)-T(n-2,k)+T(n-2,k-1)` -/
def P197193000987849553.Spec : Prop :=
  ∀ n, P197193000987849553.a n = A202209 n

theorem P197193000987849553.correct : P197193000987849553.Spec := by
  intro n
  simp only [A202209]

end A202209

/-! ## A202209.P16867910963997256651

`A003056((A208544(n+1)^A010283(n))!*A208535(n+1))`
-/

namespace A202209.P16867910963997256651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((Nat.factorial (SequenceMachineLib.roundAway ((A208544 (n + 1) : ℚ) ^ (A010283 n : ℤ))).toNat : ℤ) * A208535 (n + 1)).toNat

end

end A202209.P16867910963997256651

namespace A202209

/-- `A003056((A208544(n+1)^A010283(n))!*A208535(n+1))` -/
def P16867910963997256651.Spec : Prop :=
  ∀ n, P16867910963997256651.a n = A202209 n

end A202209

/-! ## A202209.P7598592859861415374

`A003056((A208544(n+1)^A010283(n))!*A208544(n+1))`
-/

namespace A202209.P7598592859861415374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((Nat.factorial (SequenceMachineLib.roundAway ((A208544 (n + 1) : ℚ) ^ (A010283 n : ℤ))).toNat : ℤ) * A208544 (n + 1)).toNat

end

end A202209.P7598592859861415374

namespace A202209

/-- `A003056((A208544(n+1)^A010283(n))!*A208544(n+1))` -/
def P7598592859861415374.Spec : Prop :=
  ∀ n, P7598592859861415374.a n = A202209 n

end A202209

/-! ## A202209.P15791603326389427317

`A003056((A068424(n+1)%A140303(n))!*A208535(n+1))`
-/

namespace A202209.P15791603326389427317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((Nat.factorial (Int.tmod (A068424 (n + 1)) (A140303 n)).toNat : ℤ) * A208535 (n + 1)).toNat

end

end A202209.P15791603326389427317

namespace A202209

/-- `A003056((A068424(n+1)%A140303(n))!*A208535(n+1))` -/
def P15791603326389427317.Spec : Prop :=
  ∀ n, P15791603326389427317.a n = A202209 n

end A202209

/-! ## A202209.P7613694004276374563

`A003056((A208544(n+1)^A214269(n+1))!*A208535(n+1))`
-/

namespace A202209.P7613694004276374563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((Nat.factorial (SequenceMachineLib.roundAway ((A208544 (n + 1) : ℚ) ^ (A214269 (n + 1) : ℤ))).toNat : ℤ) * A208535 (n + 1)).toNat

end

end A202209.P7613694004276374563

namespace A202209

/-- `A003056((A208544(n+1)^A214269(n+1))!*A208535(n+1))` -/
def P7613694004276374563.Spec : Prop :=
  ∀ n, P7613694004276374563.a n = A202209 n

end A202209

/-!
# A202210: G.f.: A(x) = ( Sum_{n>=0} 3^n*(2*n+1) * x^(n*(n+1)/2) )^(1/3).

The programs for A202210, there is no canonical definition to state claims against.
-/

/-! ## A202210.P7675720743626112407

`A084205(n)*A239086(A295148(n))`
-/

namespace A202210.P7675720743626112407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084205 n * A239086 (A295148 n).toNat

end

end A202210.P7675720743626112407

/-!
# A202211: a(1)=2, a(2)=3, for n >= 3, a(n) = 2*(gpf(a(n-1)) + gpf(a(n-2))) + 1, where gpf(n) is the greatest prime factor of n.

The programs for A202211, the canonical program `A202211.P13320344056783030357` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202211 has offset 1).

The definition of A202211 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A202211.P13320344056783030357

`2*(A006530(a(n-1))+A006530(a(n-2)))+1` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A202211

/-- `2*(A006530(a(n-1))+A006530(a(n-2)))+1` -/
def P13320344056783030357.Spec : Prop :=
  ∀ n, P13320344056783030357.a n = A202211 (n + 1)

theorem P13320344056783030357.correct : P13320344056783030357.Spec := by
  intro n
  simp only [A202211, Nat.add_sub_cancel]

end A202211

/-!
# A202212: Triangle read by rows: T(n,k) (1 <= k <= n-1, n >= 2) = d(2*(n-k)-1)*(d(2*n-2)/d(2*(n-k)-2) - d(2*n-3)/d(2*(n-k)-3)), where d = A006882 is the double factorial function.

The programs for A202212, there is no canonical definition to state claims against.
-/

/-! ## A202212.P3861210896173178562

`A099375(n)*A336599(A038722(n+1))`
-/

namespace A202212.P3861210896173178562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A336599 (A038722 (n + 1)).toNat

end

end A202212.P3861210896173178562

/-! ## A202212.P12116700355734795308

`record[A048691(∑[A008765(n)])]`
-/

namespace A202212.P12116700355734795308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008765 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202212.P12116700355734795308

/-! ## A202212.P2753520946498916265

`record[A048691(A209745(n+1))]`
-/

namespace A202212.P2753520946498916265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A209745 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202212.P2753520946498916265

/-!
# A202213: Number of permutations of [n] avoiding the consecutive pattern 45321.

The programs for A202213, there is no canonical definition to state claims against.
-/

/-! ## A202213.P3760854028836952827

`A264781(A130519(n+2)+1)`
-/

namespace A202213.P3760854028836952827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264781 (A130519 (n + 2) + 1).toNat

end

end A202213.P3760854028836952827

/-! ## A202213.P17686636769896581791

`abs(record[A264781(n)-A000038(n)])`
-/

namespace A202213.P17686636769896581791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264781 n - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A202213.P17686636769896581791

/-! ## A202213.P7198872549604326346

`A264781(∑[A002265(n+2)]+1)`
-/

namespace A202213.P7198872549604326346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264781 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A202213.P7198872549604326346

/-! ## A202213.P5883590592142700821

`A264781(A033638(n)-∑[A002265(n)])`
-/

namespace A202213.P5883590592142700821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264781 (A033638 n - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202213.P5883590592142700821

/-! ## A202213.P13392114366714218649

`record[A264781(n)+A057427(n)]-A057427(n)`
-/

namespace A202213.P13392114366714218649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264781 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A057427 n

end

end A202213.P13392114366714218649

/-! ## A202213.P16900432348266702222

`record[A264781(n)-A000038(n)]^(A285476(n)+1)`
-/

namespace A202213.P16900432348266702222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264781 n - A000038 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A285476 n + 1 : ℤ)

end

end A202213.P16900432348266702222

/-!
# A202214: Number of permutations avoiding the consecutive pattern 53421.

The programs for A202214, there is no canonical definition to state claims against.
-/

/-! ## A202214.P3660841875325708979

`A202217(n+1)+A064894(A309861(n))`
-/

namespace A202214.P3660841875325708979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202217 (n + 1) + A064894 (A309861 n).toNat

end

end A202214.P3660841875325708979

/-! ## A202214.P14609817994493692723

`A267414(A309861(n))+A202213(n+1)`
-/

namespace A202214.P14609817994493692723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267414 (A309861 n).toNat + A202213 (n + 1)

end

end A202214.P14609817994493692723

/-! ## A202214.P7257325360617785476

`A202215(n+1)-A262889(A012248(n))`
-/

namespace A202214.P7257325360617785476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202215 (n + 1) - A262889 (A012248 n).toNat

end

end A202214.P7257325360617785476

/-! ## A202214.P5349525491470143075

`A206442(A267407(n+1))+A202217(n+1)`
-/

namespace A202214.P5349525491470143075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206442 (A267407 (n + 1)).toNat + A202217 (n + 1)

end

end A202214.P5349525491470143075

/-!
# A202215: Number of permutations avoiding the consecutive pattern 43251.

The programs for A202215, there is no canonical definition to state claims against.
-/

/-! ## A202215.P4711193258826603788

`A262889(A012248(n))+A202214(n+1)`
-/

namespace A202215.P4711193258826603788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262889 (A012248 n).toNat + A202214 (n + 1)

end

end A202215.P4711193258826603788

/-! ## A202215.P12059360556715050665

`A202216(n+1)+A023443(A309861(n))`
-/

namespace A202215.P12059360556715050665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202216 (n + 1) + A023443 (A309861 n).toNat

end

end A202215.P12059360556715050665

/-! ## A202215.P3406908103948050634

`or(A070201(A002773(n)), A202214(n+1))`
-/

namespace A202215.P3406908103948050634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070201 (A002773 n).toNat) (A202214 (n + 1))

end

end A202215.P3406908103948050634

/-! ## A202215.P15176421248724881568

`or(A202177(A202190(n+3)), A202214(n+1))`
-/

namespace A202215.P15176421248724881568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A202177 (A202190 (n + 3)).toNat) (A202214 (n + 1))

end

end A202215.P15176421248724881568

/-!
# A202216: Number of permutations avoiding the consecutive pattern 34521.

The programs for A202216, there is no canonical definition to state claims against.
-/

/-! ## A202216.P11795063557824283767

`A274923(A309861(n))+A202217(n+1)`
-/

namespace A202216.P11795063557824283767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A309861 n).toNat + A202217 (n + 1)

end

end A202216.P11795063557824283767

/-! ## A202216.P1584889366133402932

`A202217(n+1)-A262889(A003471(n))`
-/

namespace A202216.P1584889366133402932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202217 (n + 1) - A262889 (A003471 n).toNat

end

end A202216.P1584889366133402932

/-! ## A202216.P2892429519882505939

`A202215(n+1)-A023443(A309861(n))`
-/

namespace A202216.P2892429519882505939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202215 (n + 1) - A023443 (A309861 n).toNat

end

end A202216.P2892429519882505939

/-! ## A202216.P5820351083956964137

`A202217(A056142(n+1))-A281154(n)`
-/

namespace A202216.P5820351083956964137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202217 (A056142 (n + 1)).toNat - A281154 n

end

end A202216.P5820351083956964137

/-! ## A202216.P16046458340941761840

`A202217(A056143(n+1))-A281154(n)`
-/

namespace A202216.P16046458340941761840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202217 (A056143 (n + 1)).toNat - A281154 n

end

end A202216.P16046458340941761840

/-!
# A202217: Number of permutations avoiding the consecutive pattern 45132.

The programs for A202217, there is no canonical definition to state claims against.
-/

/-! ## A202217.P8111750861649696113

`A202216(n+1)+A025469(A003422(n))`
-/

namespace A202217.P8111750861649696113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202216 (n + 1) + A025469 (A003422 n).toNat

end

end A202217.P8111750861649696113

/-! ## A202217.P8845428059991256033

`A202216(n+1)+A118175(A012248(n))`
-/

namespace A202217.P8845428059991256033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202216 (n + 1) + A118175 (A012248 n).toNat

end

end A202217.P8845428059991256033

/-! ## A202217.P17182727639824527780

`A262889(A003471(n))+A202216(n+1)`
-/

namespace A202217.P17182727639824527780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262889 (A003471 n).toNat + A202216 (n + 1)

end

end A202217.P17182727639824527780

/-! ## A202217.P7862196738527419673

`A262889(A007051(n))+A202216(n+1)`
-/

namespace A202217.P7862196738527419673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262889 (A007051 n).toNat + A202216 (n + 1)

end

end A202217.P7862196738527419673

/-! ## A202217.P10247845917221959983

`A202216(n+1)+A025455(A266980(n))`
-/

namespace A202217.P10247845917221959983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202216 (n + 1) + A025455 (A266980 n).toNat

end

end A202217.P10247845917221959983

/-!
# A202218: Number of permutations avoiding the consecutive pattern 32451.

The programs for A202218, there is no canonical definition to state claims against.
-/

/-! ## A202218.P15788945928716303938

`A202214(n+1)+A185284((2-n)²)`
-/

namespace A202218.P15788945928716303938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202214 (n + 1) + A185284 ((2 - (n : ℤ)) ^ 2).toNat

end

end A202218.P15788945928716303938

/-! ## A202218.P6028149978674669690

`A202219(n+1)-A102683(A192379(n+1))`
-/

namespace A202218.P6028149978674669690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202219 (n + 1) - A102683 (A192379 (n + 1)).toNat

end

end A202218.P6028149978674669690

/-! ## A202218.P5883430888859859493

`A202227(n+1)-A168201(A267407(n+1))`
-/

namespace A202218.P5883430888859859493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202227 (n + 1) - A168201 (A267407 (n + 1)).toNat

end

end A202218.P5883430888859859493

/-! ## A202218.P10100975733882265492

`A202219(n+1)-A185284(2*A033638(n))`
-/

namespace A202218.P10100975733882265492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202219 (n + 1) - A185284 (2 * A033638 n).toNat

end

end A202218.P10100975733882265492

/-! ## A202218.P988107572628893858

`A202219(n+1)-A185284(A033638(n+4))`
-/

namespace A202218.P988107572628893858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202219 (n + 1) - A185284 (A033638 (n + 4)).toNat

end

end A202218.P988107572628893858

/-!
# A202219: Number of permutations avoiding the consecutive pattern 45312.

The programs for A202219, there is no canonical definition to state claims against.
-/

/-! ## A202219.P2597005865175662818

`A202218(n+1)+A025469(A003422(n))`
-/

namespace A202219.P2597005865175662818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202218 (n + 1) + A025469 (A003422 n).toNat

end

end A202219.P2597005865175662818

/-! ## A202219.P361456455909299206

`A202218(n+1)+A118175(A012248(n))`
-/

namespace A202219.P361456455909299206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202218 (n + 1) + A118175 (A012248 n).toNat

end

end A202219.P361456455909299206

/-! ## A202219.P12708599313452875522

`A262889(A003471(n))+A202218(n+1)`
-/

namespace A202219.P12708599313452875522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262889 (A003471 n).toNat + A202218 (n + 1)

end

end A202219.P12708599313452875522

/-! ## A202219.P14111856505196409506

`A202218(n+1)+A061358(A309861(n))`
-/

namespace A202219.P14111856505196409506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202218 (n + 1) + A061358 (A309861 n).toNat

end

end A202219.P14111856505196409506

/-! ## A202219.P4638204239961933666

`A202218(n+1)+A044940(A327493(n))`
-/

namespace A202219.P4638204239961933666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202218 (n + 1) + A044940 (A327493 n).toNat

end

end A202219.P4638204239961933666

/-!
# A202220: Number of permutations avoiding the consecutive pattern 53241.

The programs for A202220, there is no canonical definition to state claims against.
-/

/-! ## A202220.P6835374508470616305

`A202226(n+1)-A185284(A128223(n))`
-/

namespace A202220.P6835374508470616305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202226 (n + 1) - A185284 (A128223 n).toNat

end

end A202220.P6835374508470616305

/-! ## A202220.P9155436866163565737

`A202226(n+1)-A185284(A301291(n))`
-/

namespace A202220.P9155436866163565737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202226 (n + 1) - A185284 (A301291 n).toNat

end

end A202220.P9155436866163565737

/-! ## A202220.P1038125788678697863

`or(A168201(A267407(n+1)), A202214(n+1))`
-/

namespace A202220.P1038125788678697863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168201 (A267407 (n + 1)).toNat) (A202214 (n + 1))

end

end A202220.P1038125788678697863

/-! ## A202220.P15622782269964861614

`or(A168201(A267407(n+1)), A202215(n+1))`
-/

namespace A202220.P15622782269964861614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168201 (A267407 (n + 1)).toNat) (A202215 (n + 1))

end

end A202220.P15622782269964861614

/-!
# A202221: Number of permutations avoiding the consecutive pattern 41523.

The programs for A202221, there is no canonical definition to state claims against.
-/

/-! ## A202221.P8730562782193764987

`A202222(n+1)-A070201(A002773(n))`
-/

namespace A202221.P8730562782193764987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202222 (n + 1) - A070201 (A002773 n).toNat

end

end A202221.P8730562782193764987

/-! ## A202221.P6452450117109969764

`A202218(n+1)-A003106(A309861(n))`
-/

namespace A202221.P6452450117109969764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202218 (n + 1) - A003106 (A309861 n).toNat

end

end A202221.P6452450117109969764

/-! ## A202221.P3771217455956519301

`xor(A202223(n+1), A319763(A068106(n+2)))`
-/

namespace A202221.P3771217455956519301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A202223 (n + 1)) (A319763 (A068106 (n + 2)).toNat)

end

end A202221.P3771217455956519301

/-!
# A202222: Number of permutations avoiding the consecutive pattern 23451.

The programs for A202222, there is no canonical definition to state claims against.
-/

/-! ## A202222.P4681159765031259851

`A202221(n+1)+A070201(A002773(n))`
-/

namespace A202222.P4681159765031259851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202221 (n + 1) + A070201 (A002773 n).toNat

end

end A202222.P4681159765031259851

/-!
# A202223: Number of permutations avoiding the consecutive pattern 45213.

The programs for A202223, there is no canonical definition to state claims against.
-/

/-! ## A202223.P14614732398412813897

`A185294(A329137(n))+A202214(n+1)+A185284((2-n)²)`
-/

namespace A202223.P14614732398412813897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185294 (A329137 n).toNat + (A202214 (n + 1) + A185284 ((2 - (n : ℤ)) ^ 2).toNat)

end

end A202223.P14614732398412813897

/-!
# A202224: Number of permutations avoiding the consecutive pattern 42351.

The programs for A202224, there is no canonical definition to state claims against.
-/

/-! ## A202224.P4127302673605308855

`A202225(A186753(∑[n]))`
-/

namespace A202224.P4127302673605308855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202225 (A186753 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A202224.P4127302673605308855

/-! ## A202224.P12454802537444193222

`A202225(∑[A069958(n)!])`
-/

namespace A202224.P12454802537444193222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A069958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202224.P12454802537444193222

/-! ## A202224.P14137728799826052115

`A202225(∑[(A069958(n)+1)²])`
-/

namespace A202224.P14137728799826052115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069958 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202224.P14137728799826052115

/-! ## A202224.P15199762002885260661

`A202225(∑[A167260(n+1)!])`
-/

namespace A202224.P15199762002885260661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A167260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202224.P15199762002885260661

/-! ## A202224.P11823325013017959703

`A202225(n+1)%A074580(n²)`
-/

namespace A202224.P11823325013017959703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202225 (n + 1)) (A074580 (n ^ 2))

end

end A202224.P11823325013017959703

/-!
# A202226: Number of permutations avoiding the consecutive pattern 34125.

The programs for A202226, there is no canonical definition to state claims against.
-/

/-! ## A202226.P15174799929828922545

`A202220(n+1)+A185284((2-n)²)`
-/

namespace A202226.P15174799929828922545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202220 (n + 1) + A185284 ((2 - (n : ℤ)) ^ 2).toNat

end

end A202226.P15174799929828922545

/-! ## A202226.P9141875787582522101

`A202227(n+1)-A118175(A012248(n))`
-/

namespace A202226.P9141875787582522101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202227 (n + 1) - A118175 (A012248 n).toNat

end

end A202226.P9141875787582522101

/-! ## A202226.P16898582986081802981

`A202227(n+1)-A014017(A148739(n))`
-/

namespace A202226.P16898582986081802981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202227 (n + 1) - A014017 (A148739 n).toNat

end

end A202226.P16898582986081802981

/-! ## A202226.P705947393804375935

`A202227(n+1)-A262889(A003471(n))`
-/

namespace A202226.P705947393804375935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202227 (n + 1) - A262889 (A003471 n).toNat

end

end A202226.P705947393804375935

/-! ## A202226.P4936279020902497

`A202227(n+1)-A061358(A309861(n))`
-/

namespace A202226.P4936279020902497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202227 (n + 1) - A061358 (A309861 n).toNat

end

end A202226.P4936279020902497

/-!
# A202227: Number of permutations avoiding the consecutive pattern 41532.

The programs for A202227, there is no canonical definition to state claims against.
-/

/-! ## A202227.P17902483515139215145

`A202226(n+1)+val(A162106(n+1), 7)`
-/

namespace A202227.P17902483515139215145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202226 (n + 1) + (SequenceMachineLib.valuation (A162106 (n + 1)).toNat 7 : ℤ)

end

end A202227.P17902483515139215145

/-! ## A202227.P12820962524104294141

`A202226(n+1)+A118175(A012248(n))`
-/

namespace A202227.P12820962524104294141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202226 (n + 1) + A118175 (A012248 n).toNat

end

end A202227.P12820962524104294141

/-! ## A202227.P14385354280452747494

`A000027(A253638(n)+A202226(n+1))`
-/

namespace A202227.P14385354280452747494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A253638 n + A202226 (n + 1)).toNat

end

end A202227.P14385354280452747494

/-! ## A202227.P1046303974830810105

`A262889(A003471(n))+A202226(n+1)`
-/

namespace A202227.P1046303974830810105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262889 (A003471 n).toNat + A202226 (n + 1)

end

end A202227.P1046303974830810105

/-!
# A202228: Number of permutations avoiding the consecutive pattern 52341.

The programs for A202228, there is no canonical definition to state claims against.
-/

/-! ## A202228.P2683159390841403131

`A202230(A303369(n+1))`
-/

namespace A202228.P2683159390841403131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202230 (A303369 (n + 1)).toNat

end

end A202228.P2683159390841403131

/-! ## A202228.P18378821744458092871

`A202234(A000005(5^n))`
-/

namespace A202228.P18378821744458092871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202234 (A000005 (5 ^ n)).toNat

end

end A202228.P18378821744458092871

/-! ## A202228.P9203267442213736244

`A202232(A290236(n)+n)`
-/

namespace A202228.P9203267442213736244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202232 (A290236 n + (n : ℤ)).toNat

end

end A202228.P9203267442213736244

/-! ## A202228.P9011456648432395778

`A202232(A290238(n)²+n)`
-/

namespace A202228.P9011456648432395778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202232 (A290238 n ^ 2 + (n : ℤ)).toNat

end

end A202228.P9011456648432395778

/-!
# A202229: Number of permutations avoiding the consecutive pattern 41253.

The programs for A202229, there is no canonical definition to state claims against.
-/

/-! ## A202229.P17254921049031882686

`A202227(n+1)+A185284((2-n)²)`
-/

namespace A202229.P17254921049031882686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202227 (n + 1) + A185284 ((2 - (n : ℤ)) ^ 2).toNat

end

end A202229.P17254921049031882686

/-!
# A202236: Number of permutations avoiding the consecutive pattern 35241.

The programs for A202236, there is no canonical definition to state claims against.
-/

/-! ## A202236.P16634373942403492246

`A025469(A001563(n))+record[A264781(n)]`
-/

namespace A202236.P16634373942403492246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A001563 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202236.P16634373942403492246

/-! ## A202236.P5591501435306031960

`A202213(n+1)+A025469(A001563(n))`
-/

namespace A202236.P5591501435306031960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202213 (n + 1) + A025469 (A001563 n).toNat

end

end A202236.P5591501435306031960

/-! ## A202236.P11795171671260939954

`A202214(n+1)+A025469(A001563(n))`
-/

namespace A202236.P11795171671260939954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202214 (n + 1) + A025469 (A001563 n).toNat

end

end A202236.P11795171671260939954

/-!
# A202237: Odd numbers with the same number of prime factors of the form 4*k+1 and 4*k+3.

The programs for A202237, the canonical program `A202237.P6137577916536499133` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202237 has offset 1).

The definition of A202237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202237.P10268084959081448515

`filter[2*n+1, A342025(#)]`
-/

namespace A202237.P10268084959081448515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j) = 1) n)

end

end A202237.P10268084959081448515

namespace A202237

/-- `filter[2*n+1, A342025(#)]` -/
def P10268084959081448515.Spec : Prop :=
  ∀ n, (P10268084959081448515.a n : ℤ) = A202237 (n + 1)

end A202237

/-! ## A202237.P6137577916536499133

`record[(2*n+1)*A342025(2*n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A202237

/-- `record[(2*n+1)*A342025(2*n+1)]` -/
def P6137577916536499133.Spec : Prop :=
  ∀ n, P6137577916536499133.a n = A202237 (n + 1)

theorem P6137577916536499133.correct : P6137577916536499133.Spec := by
  intro n
  simp only [A202237, Nat.add_sub_cancel]

end A202237

/-! ## A202237.P14955195368082722674

`∩[2*n+1, A072202(n+1)]`
-/

namespace A202237.P14955195368082722674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202237.P14955195368082722674

namespace A202237

/-- `∩[2*n+1, A072202(n+1)]` -/
def P14955195368082722674.Spec : Prop :=
  ∀ n, (P14955195368082722674.a n : ℤ) = A202237 (n + 1)

end A202237

/-! ## A202237.P378631142736707525

`record[A000265(A072202(n+1))]`
-/

namespace A202237.P378631142736707525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A072202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202237.P378631142736707525

namespace A202237

/-- `record[A000265(A072202(n+1))]` -/
def P378631142736707525.Spec : Prop :=
  ∀ n, P378631142736707525.a n = A202237 (n + 1)

end A202237

/-! ## A202237.P16046022865011948526

`filter[A072202(n+1), A353557(#)]`
-/

namespace A202237.P16046022865011948526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A202237.P16046022865011948526

namespace A202237

/-- `filter[A072202(n+1), A353557(#)]` -/
def P16046022865011948526.Spec : Prop :=
  ∀ n, P16046022865011948526.a n = A202237 (n + 1)

end A202237

/-! ## A202237.P15161904351301660515

`filter[A072202(n+1), A359370(#)]`
-/

namespace A202237.P15161904351301660515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A202237.P15161904351301660515

namespace A202237

/-- `filter[A072202(n+1), A359370(#)]` -/
def P15161904351301660515.Spec : Prop :=
  ∀ n, P15161904351301660515.a n = A202237 (n + 1)

end A202237

/-! ## A202237.P11322053447531924021

`filter[A072202(n+1), A360109(#)]`
-/

namespace A202237.P11322053447531924021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360109 (f1 j).toNat = 1) n)

end

end A202237.P11322053447531924021

namespace A202237

/-- `filter[A072202(n+1), A360109(#)]` -/
def P11322053447531924021.Spec : Prop :=
  ∀ n, P11322053447531924021.a n = A202237 (n + 1)

end A202237

/-! ## A202237.P6839947045322448649

`∩[A072202(n+1), A360110(n+1)]`
-/

namespace A202237.P6839947045322448649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202237.P6839947045322448649

namespace A202237

/-- `∩[A072202(n+1), A360110(n+1)]` -/
def P6839947045322448649.Spec : Prop :=
  ∀ n, (P6839947045322448649.a n : ℤ) = A202237 (n + 1)

end A202237

/-! ## A202237.P1949100067225225329

`∩[A072202(n+1), A359371(n+1)]`
-/

namespace A202237.P1949100067225225329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202237.P1949100067225225329

namespace A202237

/-- `∩[A072202(n+1), A359371(n+1)]` -/
def P1949100067225225329.Spec : Prop :=
  ∀ n, (P1949100067225225329.a n : ℤ) = A202237 (n + 1)

end A202237

/-! ## A202237.P7591285544009811301

`∩[A072202(n+1), A255763(n+1)]`
-/

namespace A202237.P7591285544009811301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202237.P7591285544009811301

namespace A202237

/-- `∩[A072202(n+1), A255763(n+1)]` -/
def P7591285544009811301.Spec : Prop :=
  ∀ n, (P7591285544009811301.a n : ℤ) = A202237 (n + 1)

end A202237

/-! ## A202237.P8259888387233836316

`∩[A072202(n+1), A193071(n+1)]`
-/

namespace A202237.P8259888387233836316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202237.P8259888387233836316

namespace A202237

/-- `∩[A072202(n+1), A193071(n+1)]` -/
def P8259888387233836316.Spec : Prop :=
  ∀ n, (P8259888387233836316.a n : ℤ) = A202237 (n + 1)

end A202237

/-! ## A202237.P13399582849177672022

`∩[A072202(n+1), A004273(n)]`
-/

namespace A202237.P13399582849177672022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202237.P13399582849177672022

namespace A202237

/-- `∩[A072202(n+1), A004273(n)]` -/
def P13399582849177672022.Spec : Prop :=
  ∀ n, (P13399582849177672022.a n : ℤ) = A202237 (n + 1)

end A202237

/-! ## A202237.P16055142425112913246

`∩[A072202(n+1), A060747(n)]`
-/

namespace A202237.P16055142425112913246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202237.P16055142425112913246

namespace A202237

/-- `∩[A072202(n+1), A060747(n)]` -/
def P16055142425112913246.Spec : Prop :=
  ∀ n, (P16055142425112913246.a n : ℤ) = A202237 (n + 1)

end A202237

/-! ## A202237.P17409380741368017328

`filter[A072202(n+1), A359768(#)]`
-/

namespace A202237.P17409380741368017328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A202237.P17409380741368017328

namespace A202237

/-- `filter[A072202(n+1), A359768(#)]` -/
def P17409380741368017328.Spec : Prop :=
  ∀ n, P17409380741368017328.a n = A202237 (n + 1)

end A202237

/-! ## A202237.P17170648459723918681

`filter[A072202(n+1), A000035(#)]`
-/

namespace A202237.P17170648459723918681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A202237.P17170648459723918681

namespace A202237

/-- `filter[A072202(n+1), A000035(#)]` -/
def P17170648459723918681.Spec : Prop :=
  ∀ n, P17170648459723918681.a n = A202237 (n + 1)

end A202237

/-!
# A202238: Characteristic function of positive integers not prime and not a power of 2.

The programs for A202238, the canonical program `A202238.P14298677801126806738` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202238 has offset 1).

The definition of A202238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202238.P17647601829136927046

`A037285(n+1)%2`
-/

namespace A202238.P17647601829136927046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037285 (n + 1)) 2

end

end A202238.P17647601829136927046

namespace A202238

/-- `A037285(n+1)%2` -/
def P17647601829136927046.Spec : Prop :=
  ∀ n, P17647601829136927046.a n = A202238 (n + 1)

end A202238

/-! ## A202238.P14298677801126806738

`A182936(n+1)%2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A202238

/-- `A182936(n+1)%2` -/
def P14298677801126806738.Spec : Prop :=
  ∀ n, P14298677801126806738.a n = A202238 (n + 1)

theorem P14298677801126806738.correct : P14298677801126806738.Spec := by
  intro n
  simp only [A202238, Nat.add_sub_cancel]

end A202238

/-! ## A202238.P13360669017161138727

`char[lt[1, A091570(n+1)]]`
-/

namespace A202238.P13360669017161138727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A202238.P13360669017161138727

namespace A202238

/-- `char[lt[1, A091570(n+1)]]` -/
def P13360669017161138727.Spec : Prop :=
  ∀ n, (P13360669017161138727.a n : ℤ) = A202238 (n + 1)

end A202238

/-! ## A202238.P17478138742473689999

`char[lt[1, A091954(n+1)]]`
-/

namespace A202238.P17478138742473689999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A202238.P17478138742473689999

namespace A202238

/-- `char[lt[1, A091954(n+1)]]` -/
def P17478138742473689999.Spec : Prop :=
  ∀ n, (P17478138742473689999.a n : ℤ) = A202238 (n + 1)

end A202238

/-! ## A202238.P13742569782879796784

`char[lt[1, A124794(n+1)]]`
-/

namespace A202238.P13742569782879796784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A202238.P13742569782879796784

namespace A202238

/-- `char[lt[1, A124794(n+1)]]` -/
def P13742569782879796784.Spec : Prop :=
  ∀ n, (P13742569782879796784.a n : ℤ) = A202238 (n + 1)

end A202238

/-! ## A202238.P815331411208935640

`char[lt[1, A153452(n+1)]]`
-/

namespace A202238.P815331411208935640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A202238.P815331411208935640

namespace A202238

/-- `char[lt[1, A153452(n+1)]]` -/
def P815331411208935640.Spec : Prop :=
  ∀ n, (P815331411208935640.a n : ℤ) = A202238 (n + 1)

end A202238

/-! ## A202238.P1511288610925073856

`char[lt[1, A325225(n+1)]]`
-/

namespace A202238.P1511288610925073856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A202238.P1511288610925073856

namespace A202238

/-- `char[lt[1, A325225(n+1)]]` -/
def P1511288610925073856.Spec : Prop :=
  ∀ n, (P1511288610925073856.a n : ℤ) = A202238 (n + 1)

end A202238

/-! ## A202238.P3542164927568172290

`char[lt[1, A351647(n+1)]]`
-/

namespace A202238.P3542164927568172290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351647 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A202238.P3542164927568172290

namespace A202238

/-- `char[lt[1, A351647(n+1)]]` -/
def P3542164927568172290.Spec : Prop :=
  ∀ n, (P3542164927568172290.a n : ℤ) = A202238 (n + 1)

end A202238

/-! ## A202238.P12694208103705370796

`char[lt[1, A359164(n+1)]]`
-/

namespace A202238.P12694208103705370796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359164 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A202238.P12694208103705370796

namespace A202238

/-- `char[lt[1, A359164(n+1)]]` -/
def P12694208103705370796.Spec : Prop :=
  ∀ n, (P12694208103705370796.a n : ℤ) = A202238 (n + 1)

end A202238

/-! ## A202238.P5337595346109659424

`n²%A171435(n+1)`
-/

namespace A202238.P5337595346109659424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A171435 (n + 1))

end

end A202238.P5337595346109659424

namespace A202238

/-- `n²%A171435(n+1)` -/
def P5337595346109659424.Spec : Prop :=
  ∀ n, P5337595346109659424.a n = A202238 (n + 1)

end A202238

/-! ## A202238.P18121422278329309221

`char[lt[A062570(n+1), n]]`
-/

namespace A202238.P18121422278329309221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A202238.P18121422278329309221

namespace A202238

/-- `char[lt[A062570(n+1), n]]` -/
def P18121422278329309221.Spec : Prop :=
  ∀ n, (P18121422278329309221.a n : ℤ) = A202238 (n + 1)

end A202238

/-! ## A202238.P5573618134741357973

`1-A354923(2*(n+1))`
-/

namespace A202238.P5573618134741357973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A354923 (2 * (n + 1))

end

end A202238.P5573618134741357973

namespace A202238

/-- `1-A354923(2*(n+1))` -/
def P5573618134741357973.Spec : Prop :=
  ∀ n, P5573618134741357973.a n = A202238 (n + 1)

end A202238

/-! ## A202238.P8970428742471880084

`1-C(2, A344765(n+1))`
-/

namespace A202238.P8970428742471880084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A344765 (n + 1)).toNat : ℤ)

end

end A202238.P8970428742471880084

namespace A202238

/-- `1-C(2, A344765(n+1))` -/
def P8970428742471880084.Spec : Prop :=
  ∀ n, P8970428742471880084.a n = A202238 (n + 1)

end A202238

/-! ## A202238.P2593184353414350883

`(n+2)%A093803(n+1)`
-/

namespace A202238.P2593184353414350883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A093803 (n + 1))

end

end A202238.P2593184353414350883

namespace A202238

/-- `(n+2)%A093803(n+1)` -/
def P2593184353414350883.Spec : Prop :=
  ∀ n, P2593184353414350883.a n = A202238 (n + 1)

end A202238

/-! ## A202238.P16116741088437693157

`char[lt[A000010(2*(n+1)), n]]`
-/

namespace A202238.P16116741088437693157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A202238.P16116741088437693157

namespace A202238

/-- `char[lt[A000010(2*(n+1)), n]]` -/
def P16116741088437693157.Spec : Prop :=
  ∀ n, (P16116741088437693157.a n : ℤ) = A202238 (n + 1)

end A202238

/-! ## A202238.P7192778853983928210

`(A006530(n+1)%(n+1))%2`
-/

namespace A202238.P7192778853983928210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A006530 (n + 1)) (n + 1 : ℤ)) 2

end

end A202238.P7192778853983928210

namespace A202238

/-- `(A006530(n+1)%(n+1))%2` -/
def P7192778853983928210.Spec : Prop :=
  ∀ n, P7192778853983928210.a n = A202238 (n + 1)

end A202238

/-! ## A202238.P14730098110883725172

`(A014963(n+1)%(n+1))%2`
-/

namespace A202238.P14730098110883725172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A014963 (n + 1)) (n + 1 : ℤ)) 2

end

end A202238.P14730098110883725172

namespace A202238

/-- `(A014963(n+1)%(n+1))%2` -/
def P14730098110883725172.Spec : Prop :=
  ∀ n, P14730098110883725172.a n = A202238 (n + 1)

end A202238

/-! ## A202238.P15484048561587172510

`1-C(A000010(n+1), and(n, n+1))`
-/

namespace A202238.P15484048561587172510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A000010 (n + 1)).toNat (Nat.land n (n + 1)) : ℤ)

end

end A202238.P15484048561587172510

namespace A202238

/-- `1-C(A000010(n+1), and(n, n+1))` -/
def P15484048561587172510.Spec : Prop :=
  ∀ n, P15484048561587172510.a n = A202238 (n + 1)

end A202238

/-! ## A202238.P11540201661171407615

`A005087(A085392(n+1))`
-/

namespace A202238.P11540201661171407615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A085392 (n + 1)).toNat

end

end A202238.P11540201661171407615

namespace A202238

/-- `A005087(A085392(n+1))` -/
def P11540201661171407615.Spec : Prop :=
  ∀ n, P11540201661171407615.a n = A202238 (n + 1)

end A202238

/-! ## A202238.P9117570053772664544

`A057427(A091921(n+1))`
-/

namespace A202238.P9117570053772664544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A091921 (n + 1)).toNat

end

end A202238.P9117570053772664544

namespace A202238

/-- `A057427(A091921(n+1))` -/
def P9117570053772664544.Spec : Prop :=
  ∀ n, P9117570053772664544.a n = A202238 (n + 1)

end A202238

/-! ## A202238.P2147168737685423048

`floor(atan((2^n)%(n+1)))`
-/

namespace A202238.P2147168737685423048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((2 ^ n % (n + 1) : ℕ) : ℝ)⌋

end

end A202238.P2147168737685423048

namespace A202238

/-- `floor(atan((2^n)%(n+1)))` -/
def P2147168737685423048.Spec : Prop :=
  ∀ n, P2147168737685423048.a n = A202238 (n + 1)

end A202238

/-!
# A202241: Array F(n,m) read by antidiagonals: F(0,m)=1, F(n,0) = A130713(n), and column m+1 is recursively defined as the partial sums of column m.

The programs for A202241, the canonical program `A202241.P12853601998288345001` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202241 has offset 0).

The definition of A202241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202241.P12853601998288345001

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=3, a(5)=1, a(6)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A202241

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P12853601998288345001.Spec : Prop :=
  ∀ n, (P12853601998288345001.a n : ℤ) = A202241 n

theorem P12853601998288345001.correct : P12853601998288345001.Spec := by
  intro n
  simp only [A202241]

end A202241

/-! ## A202241.P7932319477226029991

`A212633(n+1)+A025469(A164155(n))`
-/

namespace A202241.P7932319477226029991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (n + 1) + A025469 (A164155 n).toNat

end

end A202241.P7932319477226029991

namespace A202241

/-- `A212633(n+1)+A025469(A164155(n))` -/
def P7932319477226029991.Spec : Prop :=
  ∀ n, P7932319477226029991.a n = A202241 n

end A202241

/-! ## A202241.P718032530813617673

`A235145(A022349(n))+A212633(n+1)`
-/

namespace A202241.P718032530813617673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A022349 n).toNat + A212633 (n + 1)

end

end A202241.P718032530813617673

namespace A202241

/-- `A235145(A022349(n))+A212633(n+1)` -/
def P718032530813617673.Spec : Prop :=
  ∀ n, P718032530813617673.a n = A202241 n

end A202241

/-! ## A202241.P11589086004906213939

`A212633(n+1)+A135814(A135814(n)!)`
-/

namespace A202241.P11589086004906213939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (n + 1) + A135814 (Nat.factorial (A135814 n).toNat)

end

end A202241.P11589086004906213939

namespace A202241

/-- `A212633(n+1)+A135814(A135814(n)!)` -/
def P11589086004906213939.Spec : Prop :=
  ∀ n, P11589086004906213939.a n = A202241 n

end A202241

/-! ## A202241.P12477361243842017253

`A212633(n+1)+A010052(A253023(n+1))`
-/

namespace A202241.P12477361243842017253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (n + 1) + A010052 (A253023 (n + 1)).toNat

end

end A202241.P12477361243842017253

namespace A202241

/-- `A212633(n+1)+A010052(A253023(n+1))` -/
def P12477361243842017253.Spec : Prop :=
  ∀ n, P12477361243842017253.a n = A202241 n

end A202241

/-!
# A202246: Number of zero-sum -2..2 arrays of n elements with adjacent element differences also in -2..2.

The programs for A202246, there is no canonical definition to state claims against.
-/

/-! ## A202246.P8680869456450074312

`A202252(∑[n+2])`
-/

namespace A202246.P8680869456450074312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202246.P8680869456450074312

/-! ## A202246.P12023085665151031602

`record[A202252(A114092(2*n+1))]`
-/

namespace A202246.P12023085665151031602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A114092 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202246.P12023085665151031602

/-! ## A202246.P16706837732522868054

`record[A202252(A000096(A328399(n)))]`
-/

namespace A202246.P16706837732522868054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000096 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202246.P16706837732522868054

/-! ## A202246.P14802707158259108094

`record[A202252(A000096(A026242(n+1)))]`
-/

namespace A202246.P14802707158259108094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000096 (A026242 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202246.P14802707158259108094

/-! ## A202246.P383832668012634608

`record[A202252(A000096(A032742(n+1)))]`
-/

namespace A202246.P383832668012634608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202246.P383832668012634608

/-! ## A202246.P12940250792692061450

`record[A202252(A000096(A054576(n+1)))]`
-/

namespace A202246.P12940250792692061450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000096 (A054576 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202246.P12940250792692061450

/-! ## A202246.P1792524931164010531

`record[A202252(A000096(A122197(n+1)))]`
-/

namespace A202246.P1792524931164010531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000096 (A122197 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202246.P1792524931164010531

/-! ## A202246.P9497072799483204459

`record[A202252(A000096(A344771(n+1)))]`
-/

namespace A202246.P9497072799483204459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000096 (A344771 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202246.P9497072799483204459

/-! ## A202246.P5532308786898622673

`record[A202252(A000096(A026238(n+2)))]`
-/

namespace A202246.P5532308786898622673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000096 (A026238 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202246.P5532308786898622673

/-!
# A202247: Number of zero-sum -3..3 arrays of n elements with adjacent element differences also in -3..3.

The programs for A202247, there is no canonical definition to state claims against.
-/

/-! ## A202247.P10193962182284799776

`A202252(∑[n+3]+1)`
-/

namespace A202247.P10193962182284799776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202247.P10193962182284799776

/-! ## A202247.P1177086963733824685

`or(1, A202252(A034856(n+2)))`
-/

namespace A202247.P1177086963733824685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202252 (A034856 (n + 2)).toNat)

end

end A202247.P1177086963733824685

/-! ## A202247.P17725104025381889259

`A202252(A034856(n+2))^A178334(n)`
-/

namespace A202247.P17725104025381889259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202252 (A034856 (n + 2)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A202247.P17725104025381889259

/-! ## A202247.P16481484391400279949

`lcm(A033999(n), A202252(A034856(n+2)))`
-/

namespace A202247.P16481484391400279949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A202252 (A034856 (n + 2)).toNat)

end

end A202247.P16481484391400279949

/-! ## A202247.P15901928734578155074

`A202252(A034856(n+2))+A000038(n+1)`
-/

namespace A202247.P15901928734578155074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A034856 (n + 2)).toNat + A000038 (n + 1)

end

end A202247.P15901928734578155074

/-! ## A202247.P9750832691011331188

`A202252(A034856(n+2))%A057089(n+1)`
-/

namespace A202247.P9750832691011331188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202252 (A034856 (n + 2)).toNat) (A057089 (n + 1))

end

end A202247.P9750832691011331188

/-!
# A202248: Number of zero-sum -4..4 arrays of n elements with adjacent element differences also in -4..4.

The programs for A202248, there is no canonical definition to state claims against.
-/

/-! ## A202248.P15487808293657014972

`A202252(A027379(n+2))`
-/

namespace A202248.P15487808293657014972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A027379 (n + 2)).toNat

end

end A202248.P15487808293657014972

/-! ## A202248.P16977129397157590575

`A202252(A055998(n+2))`
-/

namespace A202248.P16977129397157590575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A055998 (n + 2)).toNat

end

end A202248.P16977129397157590575

/-! ## A202248.P15903370077722098365

`A202252(A155212(n)+5)`
-/

namespace A202248.P15903370077722098365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A155212 n + 5).toNat

end

end A202248.P15903370077722098365

/-! ## A202248.P14757160113583695492

`A202252(A052905(n+1)+2)`
-/

namespace A202248.P14757160113583695492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A052905 (n + 1) + 2).toNat

end

end A202248.P14757160113583695492

/-! ## A202248.P12815347435736778375

`A202252(A000217(n+3)+n+1)`
-/

namespace A202248.P12815347435736778375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A202248.P12815347435736778375

/-! ## A202248.P9557167486064757474

`record[A202252(A027379(A008616(n)))]`
-/

namespace A202248.P9557167486064757474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A027379 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202248.P9557167486064757474

/-! ## A202248.P7305010595110525214

`record[A202252(A027379(A028242(n)))]`
-/

namespace A202248.P7305010595110525214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A027379 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202248.P7305010595110525214

/-! ## A202248.P15403362851118764395

`record[A202252(A027379(A106249(n)))]`
-/

namespace A202248.P15403362851118764395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A027379 (A106249 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202248.P15403362851118764395

/-! ## A202248.P14713597415657952836

`record[A202252(A027379(A117909(n)))]`
-/

namespace A202248.P14713597415657952836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A027379 (A117909 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202248.P14713597415657952836

/-!
# A202249: Number of zero-sum -5..5 arrays of n elements with adjacent element differences also in -5..5.

The programs for A202249, there is no canonical definition to state claims against.
-/

/-! ## A202249.P15070924078906954140

`A202252(A046691(n+3))`
-/

namespace A202249.P15070924078906954140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A046691 (n + 3)).toNat

end

end A202249.P15070924078906954140

/-! ## A202249.P6318966249039059852

`A202252(Δ[A023545(n+1)])`
-/

namespace A202249.P6318966249039059852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (f1 (n + 1) - f1 n).toNat

end

end A202249.P6318966249039059852

/-! ## A202249.P15569866174578755224

`A202252(A000124(n+5)-5)`
-/

namespace A202249.P15569866174578755224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000124 (n + 5) - 5).toNat

end

end A202249.P15569866174578755224

/-! ## A202249.P13416823535226384131

`A202252(A000217(n+4)+n+1)`
-/

namespace A202249.P13416823535226384131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A202249.P13416823535226384131

/-! ## A202249.P5327333532093182883

`record[A202252(n+11)/A202252(n+16)]`
-/

namespace A202249.P5327333532093182883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202252 (n + 11) : ℚ) / (A202252 (n + 16) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202249.P5327333532093182883

/-!
# A202250: Number of zero-sum -6..6 arrays of n elements with adjacent element differences also in -6..6.

The programs for A202250, there is no canonical definition to state claims against.
-/

/-! ## A202250.P2861089582727281294

`A202252(A052905(n+3))`
-/

namespace A202250.P2861089582727281294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A052905 (n + 3)).toNat

end

end A202250.P2861089582727281294

/-! ## A202250.P10889420715439346040

`A202252(A046691(n+4)-1)`
-/

namespace A202250.P10889420715439346040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A046691 (n + 4) - 1).toNat

end

end A202250.P10889420715439346040

/-! ## A202250.P3837913609685224510

`A202252(A000124(n+6)-6)`
-/

namespace A202250.P3837913609685224510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000124 (n + 6) - 6).toNat

end

end A202250.P3837913609685224510

/-! ## A202250.P12330451499199529658

`A202252(Δ[A023545(n+2)]-1)`
-/

namespace A202250.P12330451499199529658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (f1 (n + 1) - f1 n - 1).toNat

end

end A202250.P12330451499199529658

/-! ## A202250.P10625198557449127174

`A202252(Δ[A026054(n+3)]+1)`
-/

namespace A202250.P10625198557449127174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (f1 (n + 1) - f1 n + 1).toNat

end

end A202250.P10625198557449127174

/-! ## A202250.P999201198007072562

`A202252(n+1+A000217(n+5))`
-/

namespace A202250.P999201198007072562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 ((n + 1 : ℤ) + A000217 (n + 5)).toNat

end

end A202250.P999201198007072562

/-! ## A202250.P17011705438602714969

`record[A202252(A052905(A202306(n)))]`
-/

namespace A202250.P17011705438602714969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A052905 (A202306 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202250.P17011705438602714969

/-!
# A202251: Number of zero-sum -7..7 arrays of n elements with adjacent element differences also in -7..7.

The programs for A202251, there is no canonical definition to state claims against.
-/

/-! ## A202251.P7928516805249438616

`A202252(A055999(n+4))`
-/

namespace A202251.P7928516805249438616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A055999 (n + 4)).toNat

end

end A202251.P7928516805249438616

/-! ## A202251.P16573987775035559049

`A202252(Δ[A026054(n+4)])`
-/

namespace A202251.P16573987775035559049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (f1 (n + 1) - f1 n).toNat

end

end A202251.P16573987775035559049

/-! ## A202251.P5765471085851206921

`A202252(A046691(n+5)-2)`
-/

namespace A202251.P5765471085851206921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A046691 (n + 5) - 2).toNat

end

end A202251.P5765471085851206921

/-! ## A202251.P13726958304690571941

`A202252(A000124(n+7)-7)`
-/

namespace A202251.P13726958304690571941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000124 (n + 7) - 7).toNat

end

end A202251.P13726958304690571941

/-! ## A202251.P1330154747191642831

`A202252(A000217(n+6)+n+1)`
-/

namespace A202251.P1330154747191642831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A202251.P1330154747191642831

/-!
# A202253: Number of zero-sum -n..n arrays of 3 elements with adjacent element differences also in -n..n.

The programs for A202253, the canonical program `A202253.P6731770445377144090` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202253 has offset 1).

The definition of A202253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202253.P6731770445377144090

`ceil((2*n+3)²/3)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A202253

/-- `ceil((2*n+3)²/3)` -/
def P6731770445377144090.Spec : Prop :=
  ∀ n, P6731770445377144090.a n = A202253 (n + 1)

theorem P6731770445377144090.correct : P6731770445377144090.Spec := by
  intro n
  simp only [A202253, Nat.add_sub_cancel]

end A202253

/-! ## A202253.P16368380369869219517

`record[ceil((2*n-3)²/3)]`
-/

namespace A202253.P16368380369869219517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((2 * n : ℤ) - 3) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202253.P16368380369869219517

namespace A202253

/-- `record[ceil((2*n-3)²/3)]` -/
def P16368380369869219517.Spec : Prop :=
  ∀ n, P16368380369869219517.a n = A202253 (n + 1)

end A202253

/-! ## A202253.P1939269148544073897

`∑[∑[5-gcd(3, ∑[n])]]+1`
-/

namespace A202253.P1939269148544073897
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A202253.P1939269148544073897

namespace A202253

/-- `∑[∑[5-gcd(3, ∑[n])]]+1` -/
def P1939269148544073897.Spec : Prop :=
  ∀ n, P1939269148544073897.a n = A202253 (n + 1)

end A202253

/-! ## A202253.P14550127400724793692

`∑[2*comp[record[lcm(2, n)]]]+1`
-/

namespace A202253.P14550127400724793692
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A202253.P14550127400724793692

namespace A202253

/-- `∑[2*comp[record[lcm(2, n)]]]+1` -/
def P14550127400724793692.Spec : Prop :=
  ∀ n, (P14550127400724793692.a n : ℤ) = A202253 (n + 1)

end A202253

/-! ## A202253.P16239514964702475260

`or(1, ∑[∑[3-∑[n]%3]])`
-/

namespace A202253.P16239514964702475260
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((∑ j ∈ Finset.range (n + 1), f3 j) % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202253.P16239514964702475260

namespace A202253

/-- `or(1, ∑[∑[3-∑[n]%3]])` -/
def P16239514964702475260.Spec : Prop :=
  ∀ n, P16239514964702475260.a n = A202253 (n + 1)

end A202253

/-! ## A202253.P1891483943351168607

`∑[a(n-3)+8]` with `a(0)=3, a(1)=6, a(2)=8, a(3)=10`
-/

namespace A202253.P1891483943351168607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 8, 10] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202253.P1891483943351168607

namespace A202253

/-- `∑[a(n-3)+8]` -/
def P1891483943351168607.Spec : Prop :=
  ∀ n, (P1891483943351168607.a n : ℤ) = A202253 (n + 1)

end A202253

/-! ## A202253.P4097462161566353465

`2*∑[∑[C(2, n%3)]]+1`
-/

namespace A202253.P4097462161566353465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A202253.P4097462161566353465

namespace A202253

/-- `2*∑[∑[C(2, n%3)]]+1` -/
def P4097462161566353465.Spec : Prop :=
  ∀ n, (P4097462161566353465.a n : ℤ) = A202253 (n + 1)

end A202253

/-! ## A202253.P602125974312214720

`∑[∑[floor(a(n-3))]]` with `a(0)=3, a(1)=3, a(2)=2, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A202253.P602125974312214720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 2, 2, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202253.P602125974312214720

namespace A202253

/-- `∑[∑[floor(a(n-3))]]` -/
def P602125974312214720.Spec : Prop :=
  ∀ n, (P602125974312214720.a n : ℤ) = A202253 (n + 1)

end A202253

/-! ## A202253.P7534610169167614758

`∑[2*∑[(∑[n]+1)%3]]+1`
-/

namespace A202253.P7534610169167614758
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A202253.P7534610169167614758

namespace A202253

/-- `∑[2*∑[(∑[n]+1)%3]]+1` -/
def P7534610169167614758.Spec : Prop :=
  ∀ n, (P7534610169167614758.a n : ℤ) = A202253 (n + 1)

end A202253

/-! ## A202253.P10431904856392207915

`∑[∑[(n²+n)%3+2]]+1`
-/

namespace A202253.P10431904856392207915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) % 3 + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A202253.P10431904856392207915

namespace A202253

/-- `∑[∑[(n²+n)%3+2]]+1` -/
def P10431904856392207915.Spec : Prop :=
  ∀ n, (P10431904856392207915.a n : ℤ) = A202253 (n + 1)

end A202253

/-! ## A202253.P11708156607477150942

`∑[∑[gcd(4, a(n-3))]]` with `a(0)=3, a(1)=3, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A202253.P11708156607477150942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 2, 2, 4] fun n f2 =>
  Nat.gcd 4 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202253.P11708156607477150942

namespace A202253

/-- `∑[∑[gcd(4, a(n-3))]]` -/
def P11708156607477150942.Spec : Prop :=
  ∀ n, (P11708156607477150942.a n : ℤ) = A202253 (n + 1)

end A202253

/-! ## A202253.P12077178138847469003

`∑[∑[a(n-3)%5]]` with `a(0)=3, a(1)=3, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A202253.P12077178138847469003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 2, 2, 4] fun n f2 =>
  f2 (n - 3) % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202253.P12077178138847469003

namespace A202253

/-- `∑[∑[a(n-3)%5]]` -/
def P12077178138847469003.Spec : Prop :=
  ∀ n, (P12077178138847469003.a n : ℤ) = A202253 (n + 1)

end A202253

/-! ## A202253.P12988779725035646523

`∑[2*(comp[or(1, 4*n)]+1)]+1`
-/

namespace A202253.P12988779725035646523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A202253.P12988779725035646523

namespace A202253

/-- `∑[2*(comp[or(1, 4*n)]+1)]+1` -/
def P12988779725035646523.Spec : Prop :=
  ∀ n, (P12988779725035646523.a n : ℤ) = A202253 (n + 1)

end A202253

/-! ## A202253.P2099964687429387662

`ogf((3+3x+2x^2-x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A202253.P2099964687429387662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 2, -1, 1] [1, -2, 1, -1, 2, -1] n

end

end A202253.P2099964687429387662

namespace A202253

/-- `ogf((3+3x+2x^2-x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P2099964687429387662.Spec : Prop :=
  ∀ n, P2099964687429387662.a n = A202253 (n + 1)

end A202253

/-! ## A202253.P17987365226774138241

`∑[∑[gcd(2*n+1, n+2)+1]]+1`
-/

namespace A202253.P17987365226774138241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n + 1) (n + 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A202253.P17987365226774138241

namespace A202253

/-- `∑[∑[gcd(2*n+1, n+2)+1]]+1` -/
def P17987365226774138241.Spec : Prop :=
  ∀ n, (P17987365226774138241.a n : ℤ) = A202253 (n + 1)

end A202253

/-! ## A202253.P6393097570105609572

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=3, a(1)=9, a(2)=17, a(3)=27, a(4)=41`
-/

namespace A202253.P6393097570105609572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9, 17, 27, 41] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A202253.P6393097570105609572

namespace A202253

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P6393097570105609572.Spec : Prop :=
  ∀ n, P6393097570105609572.a n = A202253 (n + 1)

end A202253

/-! ## A202253.P17831378363419835287

`2*A143978(n+1)+1`
-/

namespace A202253.P17831378363419835287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143978 (n + 1) + 1

end

end A202253.P17831378363419835287

namespace A202253

/-- `2*A143978(n+1)+1` -/
def P17831378363419835287.Spec : Prop :=
  ∀ n, P17831378363419835287.a n = A202253 (n + 1)

end A202253

/-! ## A202253.P813781966894187578

`A147623(n)+A004767(n)`
-/

namespace A202253.P813781966894187578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 n + A004767 n

end

end A202253.P813781966894187578

namespace A202253

/-- `A147623(n)+A004767(n)` -/
def P813781966894187578.Spec : Prop :=
  ∀ n, P813781966894187578.a n = A202253 (n + 1)

end A202253

/-! ## A202253.P12737343949868655836

`A236535(n+1)+A008577(n)`
-/

namespace A202253.P12737343949868655836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236535 (n + 1) + A008577 n

end

end A202253.P12737343949868655836

namespace A202253

/-- `A236535(n+1)+A008577(n)` -/
def P12737343949868655836.Spec : Prop :=
  ∀ n, P12737343949868655836.a n = A202253 (n + 1)

end A202253

/-! ## A202253.P4110216090587578724

`A320259(n)+A000969(n+1)`
-/

namespace A202253.P4110216090587578724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320259 n + A000969 (n + 1)

end

end A202253.P4110216090587578724

namespace A202253

/-- `A320259(n)+A000969(n+1)` -/
def P4110216090587578724.Spec : Prop :=
  ∀ n, P4110216090587578724.a n = A202253 (n + 1)

end A202253

/-!
# A202254: Number of zero-sum -n..n arrays of 4 elements with adjacent element differences also in -n..n.

The programs for A202254, the canonical program `A202254.P6191763595835037228` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202254 has offset 1).

The definition of A202254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202254.P15442919007799818896

`ogf((7+10x+2x^2+4x^3-x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A202254.P15442919007799818896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 10, 2, 4, -1] [1, -3, 2, 2, -3, 1] n

end

end A202254.P15442919007799818896

namespace A202254

/-- `ogf((7+10x+2x^2+4x^3-x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P15442919007799818896.Spec : Prop :=
  ∀ n, P15442919007799818896.a n = A202254 (n + 1)

end A202254

/-! ## A202254.P6191763595835037228

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=7, a(1)=31, a(2)=81, a(3)=171, a(4)=309`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A202254

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P6191763595835037228.Spec : Prop :=
  ∀ n, P6191763595835037228.a n = A202254 (n + 1)

theorem P6191763595835037228.correct : P6191763595835037228.Spec := by
  intro n
  simp only [A202254, Nat.add_sub_cancel]

end A202254

/-! ## A202254.P7506039491251898693

`n%2+∑[A054275(n+1)]-(n+1)`
-/

namespace A202254.P7506039491251898693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ))

end

end A202254.P7506039491251898693

namespace A202254

/-- `n%2+∑[A054275(n+1)]-(n+1)` -/
def P7506039491251898693.Spec : Prop :=
  ∀ n, P7506039491251898693.a n = A202254 (n + 1)

end A202254

/-! ## A202254.P3689096418939449677

`∑[A054275(n+1)]-A109613(n)`
-/

namespace A202254.P3689096418939449677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109613 n

end

end A202254.P3689096418939449677

namespace A202254

/-- `∑[A054275(n+1)]-A109613(n)` -/
def P3689096418939449677.Spec : Prop :=
  ∀ n, P3689096418939449677.a n = A202254 (n + 1)

end A202254

/-! ## A202254.P6767465718581301418

`∑[A054275(n+1)]-(A052928(n)+1)`
-/

namespace A202254.P6767465718581301418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A052928 n + 1)

end

end A202254.P6767465718581301418

namespace A202254

/-- `∑[A054275(n+1)]-(A052928(n)+1)` -/
def P6767465718581301418.Spec : Prop :=
  ∀ n, P6767465718581301418.a n = A202254 (n + 1)

end A202254

/-! ## A202254.P11076867409358996803

`∑[A054275(n+1)]-(A059841(n)+n)`
-/

namespace A202254.P11076867409358996803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A059841 n + (n : ℤ))

end

end A202254.P11076867409358996803

namespace A202254

/-- `∑[A054275(n+1)]-(A059841(n)+n)` -/
def P11076867409358996803.Spec : Prop :=
  ∀ n, P11076867409358996803.a n = A202254 (n + 1)

end A202254

/-! ## A202254.P4352148513334146263

`A007904(n+1)+2*A011934(n+1)`
-/

namespace A202254.P4352148513334146263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007904 (n + 1) + 2 * A011934 (n + 1)

end

end A202254.P4352148513334146263

namespace A202254

/-- `A007904(n+1)+2*A011934(n+1)` -/
def P4352148513334146263.Spec : Prop :=
  ∀ n, P4352148513334146263.a n = A202254 (n + 1)

end A202254

/-! ## A202254.P3544258627826383337

`∑[A054275(n+1)+A014681(n)-(n+1)]`
-/

namespace A202254.P3544258627826383337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 (n + 1) + (A014681 n - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202254.P3544258627826383337

namespace A202254

/-- `∑[A054275(n+1)+A014681(n)-(n+1)]` -/
def P3544258627826383337.Spec : Prop :=
  ∀ n, P3544258627826383337.a n = A202254 (n + 1)

end A202254

/-! ## A202254.P15290577457557414650

`∑[A022268(n+1)+A008619(A065190(n+1)+1)]`
-/

namespace A202254.P15290577457557414650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 (n + 1) + A008619 (A065190 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202254.P15290577457557414650

namespace A202254

/-- `∑[A022268(n+1)+A008619(A065190(n+1)+1)]` -/
def P15290577457557414650.Spec : Prop :=
  ∀ n, P15290577457557414650.a n = A202254 (n + 1)

end A202254

/-! ## A202254.P12174754551686435791

`A008619(n+1)+∑[A022268(n+1)+A008619(n+1)]`
-/

namespace A202254.P12174754551686435791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 (n + 1) + A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202254.P12174754551686435791

namespace A202254

/-- `A008619(n+1)+∑[A022268(n+1)+A008619(n+1)]` -/
def P12174754551686435791.Spec : Prop :=
  ∀ n, P12174754551686435791.a n = A202254 (n + 1)

end A202254

/-! ## A202254.P4974959262132854119

`∑[A054275(n+1)]-A004525(2*n+1)`
-/

namespace A202254.P4974959262132854119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004525 (2 * n + 1)

end

end A202254.P4974959262132854119

namespace A202254

/-- `∑[A054275(n+1)]-A004525(2*n+1)` -/
def P4974959262132854119.Spec : Prop :=
  ∀ n, P4974959262132854119.a n = A202254 (n + 1)

end A202254

/-!
# A202255: Number of zero-sum -n..n arrays of 5 elements with adjacent element differences also in -n..n.

The programs for A202255, there is no canonical definition to state claims against.
-/

/-! ## A202255.P17745859441313627759

`A202252(A167499(n+3))`
-/

namespace A202255.P17745859441313627759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A167499 (n + 3)).toNat

end

end A202255.P17745859441313627759

/-! ## A202255.P11216150968778234141

`A202252(A167614(n+3)+2)`
-/

namespace A202255.P11216150968778234141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A167614 (n + 3) + 2).toNat

end

end A202255.P11216150968778234141

/-! ## A202255.P10174654065098500886

`A202252(A000124(n+4)+4)`
-/

namespace A202255.P10174654065098500886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000124 (n + 4) + 4).toNat

end

end A202255.P10174654065098500886

/-! ## A202255.P11496159520674392463

`A202252(A000217(n+4)+5)`
-/

namespace A202255.P11496159520674392463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000217 (n + 4) + 5).toNat

end

end A202255.P11496159520674392463

/-! ## A202255.P12780179204440607165

`A202252(A038722(Δ[A023545(n+1)]))`
-/

namespace A202255.P12780179204440607165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A202255.P12780179204440607165

/-! ## A202255.P15585281238844526023

`A202252(A002522(n+4)-A046691(n+1))`
-/

namespace A202255.P15585281238844526023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A002522 (n + 4) - A046691 (n + 1)).toNat

end

end A202255.P15585281238844526023

/-! ## A202255.P8940374333494999171

`A202252(A046691(n+4)-A005843(n+1))`
-/

namespace A202255.P8940374333494999171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A046691 (n + 4) - A005843 (n + 1)).toNat

end

end A202255.P8940374333494999171

/-!
# A202256: Number of zero-sum -n..n arrays of 6 elements with adjacent element differences also in -n..n.

The programs for A202256, there is no canonical definition to state claims against.
-/

/-! ## A202256.P12051810009804330497

`A202252(A167614(n+4)+3)`
-/

namespace A202256.P12051810009804330497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A167614 (n + 4) + 3).toNat

end

end A202256.P12051810009804330497

/-! ## A202256.P15260718660618431609

`A202252(A000217(n+5)+6)`
-/

namespace A202256.P15260718660618431609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000217 (n + 5) + 6).toNat

end

end A202256.P15260718660618431609

/-! ## A202256.P9151892430362078638

`A202252(A161680(n+6)+6)`
-/

namespace A202256.P9151892430362078638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A161680 (n + 6) + 6).toNat

end

end A202256.P9151892430362078638

/-! ## A202256.P15197187845384270243

`A202252(A055999(n+4)-A005408(n))`
-/

namespace A202256.P15197187845384270243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A055999 (n + 4) - A005408 n).toNat

end

end A202256.P15197187845384270243

/-! ## A202256.P10102698149049946298

`A202252(A055999(n+4)-A004273(n+1))`
-/

namespace A202256.P10102698149049946298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A055999 (n + 4) - A004273 (n + 1)).toNat

end

end A202256.P10102698149049946298

/-!
# A202257: Number of zero-sum -n..n arrays of 7 elements with adjacent element differences also in -n..n.

The programs for A202257, there is no canonical definition to state claims against.
-/

/-! ## A202257.P4030181971878112275

`A202252(A167487(n+5))`
-/

namespace A202257.P4030181971878112275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A167487 (n + 5)).toNat

end

end A202257.P4030181971878112275

/-! ## A202257.P17952488325943291715

`A202252(A166136(n+5)+1)`
-/

namespace A202257.P17952488325943291715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A166136 (n + 5) + 1).toNat

end

end A202257.P17952488325943291715

/-! ## A202257.P8964939496616292907

`A202252(A000124(n+6)+6)`
-/

namespace A202257.P8964939496616292907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000124 (n + 6) + 6).toNat

end

end A202257.P8964939496616292907

/-! ## A202257.P1201979440753383376

`A202252(A000096(n+5)+8)`
-/

namespace A202257.P1201979440753383376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000096 (n + 5) + 8).toNat

end

end A202257.P1201979440753383376

/-! ## A202257.P13451653611648574204

`A202252(A000217(n+6)+7)`
-/

namespace A202257.P13451653611648574204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000217 (n + 6) + 7).toNat

end

end A202257.P13451653611648574204

/-! ## A202257.P644534774913471912

`A202252(A055998(n+4)+10)`
-/

namespace A202257.P644534774913471912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A055998 (n + 4) + 10).toNat

end

end A202257.P644534774913471912

/-! ## A202257.P15870695032049758338

`A202252(A161680(n+7)+7)`
-/

namespace A202257.P15870695032049758338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A161680 (n + 7) + 7).toNat

end

end A202257.P15870695032049758338

/-! ## A202257.P16590808250258192435

`A202252(A179865(n+7)+7)`
-/

namespace A202257.P16590808250258192435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A179865 (n + 7) + 7).toNat

end

end A202257.P16590808250258192435

/-!
# A202259: Right-truncatable nonprimes: every prefix is nonprime number.

The programs for A202259, there is no canonical definition to state claims against.
-/

/-! ## A202259.P6823187046328912037

`comp[A331046(n+1)]`
-/

namespace A202259.P6823187046328912037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A202259.P6823187046328912037

/-! ## A202259.P15789665951653182234

`record[A329428(n)]`
-/

namespace A202259.P15789665951653182234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202259.P15789665951653182234

/-! ## A202259.P12363647499750095099

`eq[0, A331044(n)]`
-/

namespace A202259.P12363647499750095099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202259.P12363647499750095099

/-! ## A202259.P6904038979875971500

`eq[0, A331045(n)]`
-/

namespace A202259.P6904038979875971500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202259.P6904038979875971500

/-! ## A202259.P4127710129327841739

`lt[A331045(A028310(n)), 1]`
-/

namespace A202259.P4127710129327841739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A202259.P4127710129327841739

/-! ## A202259.P15272994358729265160

`A329428(eq[n, A329428(n)])`
-/

namespace A202259.P15272994358729265160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202259.P15272994358729265160

/-! ## A202259.P1743571319733777534

`lt[A331044(n), A000002(n+1)]`
-/

namespace A202259.P1743571319733777534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A202259.P1743571319733777534

/-! ## A202259.P10200626151592261272

`lt[A331044(n), A033273(A001358(n+1))]`
-/

namespace A202259.P10200626151592261272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A001358 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A202259.P10200626151592261272

/-! ## A202259.P6276946256067007905

`lt[A158673(A331045(n)), A334685(2*n+5)]`
-/

namespace A202259.P6276946256067007905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158673 (A331045 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334685 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A202259.P6276946256067007905

/-! ## A202259.P6481790145668907750

`eq[A103164(n), A329428(n)]`
-/

namespace A202259.P6481790145668907750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202259.P6481790145668907750

/-! ## A202259.P8839187415464738050

`eq[A282462(n), A329428(n)]`
-/

namespace A202259.P8839187415464738050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202259.P8839187415464738050

/-! ## A202259.P7675401759643735893

`lt[A331045(n), A189673(3*n+2)]`
-/

namespace A202259.P7675401759643735893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A202259.P7675401759643735893

/-! ## A202259.P689416043754142182

`lt[A331045(n), A331034(A331023(3*n+2))]`
-/

namespace A202259.P689416043754142182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331034 (A331023 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A202259.P689416043754142182

/-! ## A202259.P2463747567274217965

`eq[A130891(n), A329428(n)]`
-/

namespace A202259.P2463747567274217965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202259.P2463747567274217965

/-!
# A202260: Right-truncatable composites: every decimal prefix is a composite number.

The programs for A202260, there is no canonical definition to state claims against.
-/

/-! ## A202260.P5253971163940772164

`∩[A202259(n+1), A288658(n+1)]`
-/

namespace A202260.P5253971163940772164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202260.P5253971163940772164

/-! ## A202260.P18112595590410436392

`record[A059995(A254750(A141310(n)))]`
-/

namespace A202260.P18112595590410436392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A254750 (A141310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202260.P18112595590410436392

/-! ## A202260.P3386550225849706583

`record[A059995(A254750(n+1))-A055671(n)]`
-/

namespace A202260.P3386550225849706583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A254750 (n + 1)).toNat - A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202260.P3386550225849706583

/-! ## A202260.P5414249039496157339

`record[A059995(A254752(n+1))-A055671(n)]`
-/

namespace A202260.P5414249039496157339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A254752 (n + 1)).toNat - A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202260.P5414249039496157339

/-! ## A202260.P17884881418701320831

`record[A059995(A254752(n+1))/A027642(n)]`
-/

namespace A202260.P17884881418701320831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059995 (A254752 (n + 1)).toNat : ℚ) / (A027642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202260.P17884881418701320831

/-! ## A202260.P6392757559917566014

`record[A059995(A005171(n+1)*A254750(n+1))]`
-/

namespace A202260.P6392757559917566014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A005171 (n + 1) * A254750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202260.P6392757559917566014

/-!
# A202261: Number of n-element subsets that can be chosen from {1,2,...,2*n} having element sum n^2.

The programs for A202261, there is no canonical definition to state claims against.
-/

/-! ## A202261.P7075508131455715697

`A063746(2*(∑[C(n, 2)]+n))`
-/

namespace A202261.P7075508131455715697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063746 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A202261.P7075508131455715697

/-! ## A202261.P17373253109874122929

`A063746(∑[∑[comp[2*n+3]]])`
-/

namespace A202261.P17373253109874122929
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063746 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202261.P17373253109874122929

/-! ## A202261.P2827436934984498420

`and(-1, A063746(A006527(n)))`
-/

namespace A202261.P2827436934984498420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A063746 (A006527 n).toNat)

end

end A202261.P2827436934984498420

/-! ## A202261.P11889912226798877752

`A063746(A006527(n))%A363543(n+1)`
-/

namespace A202261.P11889912226798877752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063746 (A006527 n).toNat) (A363543 (n + 1))

end

end A202261.P11889912226798877752

/-! ## A202261.P14211459128000919659

`A185282(∑[n+2]-1)`
-/

namespace A202261.P14211459128000919659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185282 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A202261.P14211459128000919659

/-!
# A202262: Composite numbers in which all substrings are composite.

The programs for A202262, there is no canonical definition to state claims against.
-/

/-! ## A202262.P3017732792693332850

`∩[A029581(n+1), A062115(n+1)]`
-/

namespace A202262.P3017732792693332850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202262.P3017732792693332850

/-! ## A202262.P5511875271588294033

`eq[n, A330356(A222210(n))]`
-/

namespace A202262.P5511875271588294033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330356 (A222210 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202262.P5511875271588294033

/-! ## A202262.P7100509369823387116

`record[A330356(A029581(n+1))]`
-/

namespace A202262.P7100509369823387116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330356 (A029581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202262.P7100509369823387116

/-! ## A202262.P12092307412949624945

`lt[A211396(n)+1, A054054(n)]`
-/

namespace A202262.P12092307412949624945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A202262.P12092307412949624945

/-! ## A202262.P17841834635615980748

`eq[A086066(n)%16, A211396(n)]`
-/

namespace A202262.P17841834635615980748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086066 n) 16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202262.P17841834635615980748

/-! ## A202262.P1148743685847061454

`eq[A047814(n)+n, A222210(n)]`
-/

namespace A202262.P1148743685847061454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202262.P1148743685847061454

/-! ## A202262.P10940118181888523862

`∩[A037344(n+1), A062115(n+1)]`
-/

namespace A202262.P10940118181888523862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202262.P10940118181888523862

/-!
# A202263: Primes in which all substrings and reversal substrings are primes.

The programs for A202263, there is no canonical definition to state claims against.
-/

/-! ## A202263.P876026316984878526

`A117639(comp[7*n])`
-/

namespace A202263.P876026316984878526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A202263.P876026316984878526

/-! ## A202263.P6001702542203407160

`A211681(∑[floor(sqrt(n))!])`
-/

namespace A202263.P6001702542203407160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211681 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202263.P6001702542203407160

/-! ## A202263.P8925759555474788450

`A155873(∑[floor(sqrt(n))]+1)`
-/

namespace A202263.P8925759555474788450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155873 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202263.P8925759555474788450

/-!
# A202264: Noncomposite numbers in which all substrings and reversal substrings are noncomposites.

The programs for A202264, there is no canonical definition to state claims against.
-/

/-! ## A202264.P4022766122227462689

`∩[A012884(n+1), A062895(n+1)]`
-/

namespace A202264.P4022766122227462689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202264.P4022766122227462689

/-! ## A202264.P10822034629400393525

`∩[A012884(n+1), A085869(n+1)]`
-/

namespace A202264.P10822034629400393525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202264.P10822034629400393525

/-! ## A202264.P6089431504036190051

`∩[A012884(n+1), A089743(n+1)]`
-/

namespace A202264.P6089431504036190051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202264.P6089431504036190051

/-! ## A202264.P15906656098647715286

`∩[A089743(n+1), A190222(n+1)]`
-/

namespace A202264.P15906656098647715286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202264.P15906656098647715286

/-! ## A202264.P6593490106122255860

`A068669(A250475(n+1))%A051962(2*n+5)`
-/

namespace A202264.P6593490106122255860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068669 (A250475 (n + 1)).toNat) (A051962 (2 * n + 5))

end

end A202264.P6593490106122255860

/-!
# A202265: Nonprime numbers in which all substrings and reversal substrings are nonprimes.

The programs for A202265, there is no canonical definition to state claims against.
-/

/-! ## A202265.P1839247645567202613

`eq[A047814(A004086(n))², A047814(n)]`
-/

namespace A202265.P1839247645567202613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A004086 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202265.P1839247645567202613

/-! ## A202265.P8317499912340177655

`eq[A075053(n), A085121(n²)]`
-/

namespace A202265.P8317499912340177655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202265.P8317499912340177655

/-! ## A202265.P8414763979295862464

`lt[A075053(n), A322589((n+2)²)]`
-/

namespace A202265.P8414763979295862464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322589 ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A202265.P8414763979295862464

/-! ## A202265.P15501534591091051977

`eq[A056594(A005106(n+1)), A075053(n)]`
-/

namespace A202265.P15501534591091051977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005106 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202265.P15501534591091051977

/-! ## A202265.P4491124712384842657

`eq[A075053(n), A354488(n+4)]`
-/

namespace A202265.P4491124712384842657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354488 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202265.P4491124712384842657

/-!
# A202266: Composite numbers in which all substrings and reversal substrings are composites.

The programs for A202266, there is no canonical definition to state claims against.
-/

/-! ## A202266.P952151379988339094

`∩[A029581(n+1), A202265(n+1)]`
-/

namespace A202266.P952151379988339094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202266.P952151379988339094

/-! ## A202266.P18339014704827494565

`∩[A037344(n+1), A202265(n+1)]`
-/

namespace A202266.P18339014704827494565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202266.P18339014704827494565

/-! ## A202266.P371240145037506503

`∩[A202262(n+1), A202265(n+1)]`
-/

namespace A202266.P371240145037506503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202266.P371240145037506503

/-! ## A202266.P14287511253574317317

`∩[A029581(n+1), A308040(n+1)]`
-/

namespace A202266.P14287511253574317317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202266.P14287511253574317317

/-!
# A202267: Numbers in which all digits are noncomposites (1, 2, 3, 5, 7) or 0.

The programs for A202267, the canonical program `A202267.P5737386404805848355` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202267 has offset 1).

The definition of A202267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202267.P9827011291703957525

`comp[A118951(n+1)]`
-/

namespace A202267.P9827011291703957525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A202267.P9827011291703957525

namespace A202267

/-- `comp[A118951(n+1)]` -/
def P9827011291703957525.Spec : Prop :=
  ∀ n, (P9827011291703957525.a n : ℤ) = A202267 (n + 1)

end A202267

/-! ## A202267.P5737386404805848355

`eq[A055641(n), A064692(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A202267

/-- `eq[A055641(n), A064692(n)]` -/
def P5737386404805848355.Spec : Prop :=
  ∀ n, (P5737386404805848355.a n : ℤ) = A202267 (n + 1)

theorem P5737386404805848355.correct : P5737386404805848355.Spec := by
  intro n
  simp only [A202267, Nat.add_sub_cancel]

end A202267

/-! ## A202267.P10752364769822789675

`eq[A102669(n), A193238(n)]`
-/

namespace A202267.P10752364769822789675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202267.P10752364769822789675

namespace A202267

/-- `eq[A102669(n), A193238(n)]` -/
def P10752364769822789675.Spec : Prop :=
  ∀ n, (P10752364769822789675.a n : ℤ) = A202267 (n + 1)

end A202267

/-! ## A202267.P13983426658569660828

`eq[1, (n+1)^A064692(A004185(n))]`
-/

namespace A202267.P13983426658569660828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A064692 (A004185 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A202267.P13983426658569660828

namespace A202267

/-- `eq[1, (n+1)^A064692(A004185(n))]` -/
def P13983426658569660828.Spec : Prop :=
  ∀ n, (P13983426658569660828.a n : ℤ) = A202267 (n + 1)

end A202267

/-! ## A202267.P7999297218966898826

`eq[A001222(A051801(n)), A193238(n)]`
-/

namespace A202267.P7999297218966898826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202267.P7999297218966898826

namespace A202267

/-- `eq[A001222(A051801(n)), A193238(n)]` -/
def P7999297218966898826.Spec : Prop :=
  ∀ n, (P7999297218966898826.a n : ℤ) = A202267 (n + 1)

end A202267

/-! ## A202267.P6323639878515858748

`A222252(A321702(n+1))`
-/

namespace A202267.P6323639878515858748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A321702 (n + 1)).toNat

end

end A202267.P6323639878515858748

namespace A202267

/-- `A222252(A321702(n+1))` -/
def P6323639878515858748.Spec : Prop :=
  ∀ n, P6323639878515858748.a n = A202267 (n + 1)

end A202267

/-! ## A202267.P8025748933857188937

`lt[A054055(A107130(n)), 4]`
-/

namespace A202267.P8025748933857188937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A107130 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A202267.P8025748933857188937

namespace A202267

/-- `lt[A054055(A107130(n)), 4]` -/
def P8025748933857188937.Spec : Prop :=
  ∀ n, (P8025748933857188937.a n : ℤ) = A202267 (n + 1)

end A202267

/-! ## A202267.P15991419941058563131

`eq[n, A222251(A222243(n))]`
-/

namespace A202267.P15991419941058563131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222243 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202267.P15991419941058563131

namespace A202267

/-- `eq[n, A222251(A222243(n))]` -/
def P15991419941058563131.Spec : Prop :=
  ∀ n, (P15991419941058563131.a n : ℤ) = A202267 (n + 1)

end A202267

/-! ## A202267.P9126811114151819751

`eq[n, A222250(A222244(n))]`
-/

namespace A202267.P9126811114151819751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202267.P9126811114151819751

namespace A202267

/-- `eq[n, A222250(A222244(n))]` -/
def P9126811114151819751.Spec : Prop :=
  ∀ n, (P9126811114151819751.a n : ℤ) = A202267 (n + 1)

end A202267

/-! ## A202267.P8299788906133454106

`eq[n, A222254(A222241(n))]`
-/

namespace A202267.P8299788906133454106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202267.P8299788906133454106

namespace A202267

/-- `eq[n, A222254(A222241(n))]` -/
def P8299788906133454106.Spec : Prop :=
  ∀ n, (P8299788906133454106.a n : ℤ) = A202267 (n + 1)

end A202267

/-! ## A202267.P8889339082055371050

`record[gcd(A222241(n), A222254(n))]`
-/

namespace A202267.P8889339082055371050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222241 n) (A222254 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202267.P8889339082055371050

namespace A202267

/-- `record[gcd(A222241(n), A222254(n))]` -/
def P8889339082055371050.Spec : Prop :=
  ∀ n, (P8889339082055371050.a n : ℤ) = A202267 (n + 1)

end A202267

/-! ## A202267.P3850732082147462798

`eq[n, A001613(A222233(n))+n]`
-/

namespace A202267.P3850732082147462798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A222233 n).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202267.P3850732082147462798

namespace A202267

/-- `eq[n, A001613(A222233(n))+n]` -/
def P3850732082147462798.Spec : Prop :=
  ∀ n, (P3850732082147462798.a n : ℤ) = A202267 (n + 1)

end A202267

/-! ## A202267.P7292869070038006499

`record[gcd(A222244(n)+n, A222250(n))]`
-/

namespace A202267.P7292869070038006499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222244 n + (n : ℤ)) (A222250 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202267.P7292869070038006499

namespace A202267

/-- `record[gcd(A222244(n)+n, A222250(n))]` -/
def P7292869070038006499.Spec : Prop :=
  ∀ n, (P7292869070038006499.a n : ℤ) = A202267 (n + 1)

end A202267

/-! ## A202267.P17235678476984120477

`eq[A064692(n), A064692(A064770(n))]`
-/

namespace A202267.P17235678476984120477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A064770 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202267.P17235678476984120477

namespace A202267

/-- `eq[A064692(n), A064692(A064770(n))]` -/
def P17235678476984120477.Spec : Prop :=
  ∀ n, (P17235678476984120477.a n : ℤ) = A202267 (n + 1)

end A202267

/-!
# A202268: Numbers in which all digits are neither primes nor zero, i.e., are members of (1, 4, 6, 8, 9).

The programs for A202268, the canonical program `A202268.P10475302286849161585` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202268 has offset 1).

The definition of A202268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202268.P10475302286849161585

`A084984(A248910(n+1)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A202268

/-- `A084984(A248910(n+1)+1)` -/
def P10475302286849161585.Spec : Prop :=
  ∀ n, P10475302286849161585.a n = A202268 (n + 1)

theorem P10475302286849161585.correct : P10475302286849161585.Spec := by
  intro n
  simp only [A202268, Nat.add_sub_cancel]

end A202268

/-! ## A202268.P13858507977180283224

`∩[A084984(n+1), A261189(n+1)]`
-/

namespace A202268.P13858507977180283224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202268.P13858507977180283224

namespace A202268

/-- `∩[A084984(n+1), A261189(n+1)]` -/
def P13858507977180283224.Spec : Prop :=
  ∀ n, (P13858507977180283224.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P6131297933767877766

`∩[A039113(n+1), A084984(n+1)]`
-/

namespace A202268.P6131297933767877766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202268.P6131297933767877766

namespace A202268

/-- `∩[A039113(n+1), A084984(n+1)]` -/
def P6131297933767877766.Spec : Prop :=
  ∀ n, (P6131297933767877766.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P15208823716240764378

`∩[A039114(n+1), A084984(n+1)]`
-/

namespace A202268.P15208823716240764378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202268.P15208823716240764378

namespace A202268

/-- `∩[A039114(n+1), A084984(n+1)]` -/
def P15208823716240764378.Spec : Prop :=
  ∀ n, (P15208823716240764378.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P15844731793984687179

`∩[A039116(n+1), A084984(n+1)]`
-/

namespace A202268.P15844731793984687179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202268.P15844731793984687179

namespace A202268

/-- `∩[A039116(n+1), A084984(n+1)]` -/
def P15844731793984687179.Spec : Prop :=
  ∀ n, (P15844731793984687179.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P8247914534337377920

`∩[A039118(n+1), A084984(n+1)]`
-/

namespace A202268.P8247914534337377920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202268.P8247914534337377920

namespace A202268

/-- `∩[A039118(n+1), A084984(n+1)]` -/
def P8247914534337377920.Spec : Prop :=
  ∀ n, (P8247914534337377920.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P11687949788261558709

`∩[A052382(n+1), A084984(n+1)]`
-/

namespace A202268.P11687949788261558709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202268.P11687949788261558709

namespace A202268

/-- `∩[A052382(n+1), A084984(n+1)]` -/
def P11687949788261558709.Spec : Prop :=
  ∀ n, (P11687949788261558709.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P16119037631383241909

`eq[atan(A055641(n)), A193238(n)]`
-/

namespace A202268.P16119037631383241909
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A055641 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A202268.P16119037631383241909

namespace A202268

/-- `eq[atan(A055641(n)), A193238(n)]` -/
def P16119037631383241909.Spec : Prop :=
  ∀ n, (P16119037631383241909.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P1848815342133274593

`filter[A084984(n+1), A168046(#)]`
-/

namespace A202268.P1848815342133274593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A202268.P1848815342133274593

namespace A202268

/-- `filter[A084984(n+1), A168046(#)]` -/
def P1848815342133274593.Spec : Prop :=
  ∀ n, P1848815342133274593.a n = A202268 (n + 1)

end A202268

/-! ## A202268.P14889900553778224921

`eq[n, A222216(A193238(n)+n)]`
-/

namespace A202268.P14889900553778224921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A193238 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202268.P14889900553778224921

namespace A202268

/-- `eq[n, A222216(A193238(n)+n)]` -/
def P14889900553778224921.Spec : Prop :=
  ∀ n, (P14889900553778224921.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P3867834918623583431

`eq[n, A222216(n-A193238(n))]`
-/

namespace A202268.P3867834918623583431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 ((n : ℤ) - A193238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202268.P3867834918623583431

namespace A202268

/-- `eq[n, A222216(n-A193238(n))]` -/
def P3867834918623583431.Spec : Prop :=
  ∀ n, (P3867834918623583431.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P10966049987267483225

`eq[n, A222246(A222212(A035044(n)))]`
-/

namespace A202268.P10966049987267483225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222212 (A035044 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202268.P10966049987267483225

namespace A202268

/-- `eq[n, A222246(A222212(A035044(n)))]` -/
def P10966049987267483225.Spec : Prop :=
  ∀ n, (P10966049987267483225.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P7930859719296236404

`eq[A035044(n), A222246(A222216(n))]`
-/

namespace A202268.P7930859719296236404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202268.P7930859719296236404

namespace A202268

/-- `eq[A035044(n), A222246(A222216(n))]` -/
def P7930859719296236404.Spec : Prop :=
  ∀ n, (P7930859719296236404.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P12901595820321245930

`eq[A000217(n)*A193238(n), A055641(n)]`
-/

namespace A202268.P12901595820321245930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202268.P12901595820321245930

namespace A202268

/-- `eq[A000217(n)*A193238(n), A055641(n)]` -/
def P12901595820321245930.Spec : Prop :=
  ∀ n, (P12901595820321245930.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P2622427462536129074

`eq[A186731(n)*A193238(n), A055641(n)]`
-/

namespace A202268.P2622427462536129074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n * A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202268.P2622427462536129074

namespace A202268

/-- `eq[A186731(n)*A193238(n), A055641(n)]` -/
def P2622427462536129074.Spec : Prop :=
  ∀ n, (P2622427462536129074.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P17565984245498690151

`eq[n*A193238(n), A193238(A222216(n))]`
-/

namespace A202268.P17565984245498690151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A222216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202268.P17565984245498690151

namespace A202268

/-- `eq[n*A193238(n), A193238(A222216(n))]` -/
def P17565984245498690151.Spec : Prop :=
  ∀ n, (P17565984245498690151.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P17038670855927858315

`eq[A067898(n)/A047842(n), A193238(n)]`
-/

namespace A202268.P17038670855927858315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067898 n : ℚ) / (A047842 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A202268.P17038670855927858315

namespace A202268

/-- `eq[A067898(n)/A047842(n), A193238(n)]` -/
def P17038670855927858315.Spec : Prop :=
  ∀ n, (P17038670855927858315.a n : ℤ) = A202268 (n + 1)

end A202268

/-! ## A202268.P8681799822977058779

`eq[A004280(n+1)*A055641(n), A193238(n)]`
-/

namespace A202268.P8681799822977058779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) * A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202268.P8681799822977058779

namespace A202268

/-- `eq[A004280(n+1)*A055641(n), A193238(n)]` -/
def P8681799822977058779.Spec : Prop :=
  ∀ n, (P8681799822977058779.a n : ℤ) = A202268 (n + 1)

end A202268

/-!
# A202269: Right-truncatable triangular numbers: every prefix is triangular number.

The programs for A202269, there is no canonical definition to state claims against.
-/

/-! ## A202269.P5284068707607178104

`A000217(A273736(2*n)+n)`
-/

namespace A202269.P5284068707607178104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A273736 (2 * n) + (n : ℤ)).toNat

end

end A202269.P5284068707607178104

/-! ## A202269.P12674307017051968341

`A000217(∑[A245507(ceil(n/4))])`
-/

namespace A202269.P12674307017051968341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245507 ⌈(n : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202269.P12674307017051968341

/-! ## A202269.P13020358499137217548

`A000217(∑[A268646(ceil(n/4))])`
-/

namespace A202269.P13020358499137217548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268646 ⌈(n : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202269.P13020358499137217548

/-! ## A202269.P7319219025409007208

`C(∑[A226459(A000700(n+3))]+1, 2)`
-/

namespace A202269.P7319219025409007208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226459 (A000700 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A202269.P7319219025409007208

/-! ## A202269.P7561916477827400852

`A008805(A215561(2*n)+A030978(n))`
-/

namespace A202269.P7561916477827400852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A215561 (2 * n) + A030978 n).toNat

end

end A202269.P7561916477827400852

/-!
# A202270: a(n) is the largest n-digit number whose sum of digits is n.

The programs for A202270, there is no canonical definition to state claims against.
-/

/-! ## A202270.P1022686388010430752

`A076643(A062123(n))-1`
-/

namespace A202270.P1022686388010430752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076643 (A062123 n).toNat - 1

end

end A202270.P1022686388010430752

/-! ## A202270.P6204939895943005659

`A087960(A016813(n))+A076643(A062123(n))`
-/

namespace A202270.P6204939895943005659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A016813 n).toNat + A076643 (A062123 n).toNat

end

end A202270.P6204939895943005659

/-!
# A202271: Right-truncatable perfect powers: every prefix is perfect power.

The programs for A202271, there is no canonical definition to state claims against.
-/

/-! ## A202271.P12872797331973553364

`∪[(round(sqrt(A017940(n)))+1)², (n+7)^n]`
-/

namespace A202271.P12872797331973553364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (A017940 n : ℝ)) + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 7) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A202271.P12872797331973553364

/-! ## A202271.P6531161354433715327

`A001597(record[A050186(n)])`
-/

namespace A202271.P6531161354433715327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A202271.P6531161354433715327

/-! ## A202271.P10746223581533207572

`A090516(A076707(n+1))`
-/

namespace A202271.P10746223581533207572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090516 (A076707 (n + 1)).toNat

end

end A202271.P10746223581533207572

/-!
# A202272: Numbers n with k digits such that each sum of 1, 2, ..., k digits of n is a substring of n.

The programs for A202272, there is no canonical definition to state claims against.
-/

/-! ## A202272.P16575012160310332369

`∩[A052018(n+1), A365420(n+1)]`
-/

namespace A202272.P16575012160310332369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202272.P16575012160310332369

/-! ## A202272.P14983887537310039846

`∩[A052018(n+1), A392051(n+1)]`
-/

namespace A202272.P14983887537310039846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202272.P14983887537310039846

/-!
# A202274: Numbers k for which sigma(k) = 2^m - 1 for some m.

The programs for A202274, there is no canonical definition to state claims against.
-/

/-! ## A202274.P12146818161741627724

`∪[2^n, ∑[(2*n)²!]]`
-/

namespace A202274.P12146818161741627724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((2 * n) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A202274.P12146818161741627724

/-! ## A202274.P12121932635524540520

`record[A055155(n+1)^A289508(n+1)]`
-/

namespace A202274.P12121932635524540520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055155 (n + 1) : ℚ) ^ (A289508 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202274.P12121932635524540520

/-! ## A202274.P15004452645974738806

`record[A119788(2*n+1)*A122111(n+1)]`
-/

namespace A202274.P15004452645974738806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (2 * n + 1) * A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202274.P15004452645974738806

/-! ## A202274.P16143044805314775804

`∪[A000079(n), A006880(A003336(n+1))]`
-/

namespace A202274.P16143044805314775804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (A003336 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A202274.P16143044805314775804

/-! ## A202274.P14825624846648141147

`A332223(∪[A000040(n+1), A371125(n)])`
-/

namespace A202274.P14825624846648141147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371125 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332223 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A202274.P14825624846648141147

/-!
# A202275: Differences between A074753 (number of integers k such that sigma(k) <= n) and A202276 (number of integers k <= n such that sigma(x) = k has no solution); sigma = A000203.

The programs for A202275, the canonical program `A202275.P3444828120116917410` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202275 has offset 1).

The definition of A202275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202275.P3444828120116917410

`∑[A054973(n+1)+A175192(n+1)-1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A202275

/-- `∑[A054973(n+1)+A175192(n+1)-1]` -/
def P3444828120116917410.Spec : Prop :=
  ∀ n, P3444828120116917410.a n = A202275 (n + 1)

theorem P3444828120116917410.correct : P3444828120116917410.Spec := by
  intro n
  simp only [A202275, Nat.add_sub_cancel]

end A202275

/-! ## A202275.P10732071358908320194

`A054973(n+1)+a(n-1)-A175253(n+1)` with `a(0)=1`
-/

namespace A202275.P10732071358908320194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054973 (n + 1) + (a (n - 1) - A175253 (n + 1))

end

end A202275.P10732071358908320194

namespace A202275

/-- `A054973(n+1)+a(n-1)-A175253(n+1)` -/
def P10732071358908320194.Spec : Prop :=
  ∀ n, P10732071358908320194.a n = A202275 (n + 1)

end A202275

/-! ## A202275.P18373808780186043701

`A054973(n+1)+A074753(n+1)-A202276(n+1)`
-/

namespace A202275.P18373808780186043701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1) + (A074753 (n + 1) - A202276 (n + 1))

end

end A202275.P18373808780186043701

namespace A202275

/-- `A054973(n+1)+A074753(n+1)-A202276(n+1)` -/
def P18373808780186043701.Spec : Prop :=
  ∀ n, P18373808780186043701.a n = A202275 (n + 1)

end A202275

/-! ## A202275.P11346518847758717323

`∑[A054973(n+1)-A054973(A054973(n+1)²+1)]`
-/

namespace A202275.P11346518847758717323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1) - A054973 (A054973 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202275.P11346518847758717323

namespace A202275

/-- `∑[A054973(n+1)-A054973(A054973(n+1)²+1)]` -/
def P11346518847758717323.Spec : Prop :=
  ∀ n, P11346518847758717323.a n = A202275 (n + 1)

end A202275

/-! ## A202275.P5516519101367199027

`A074753(n+2)-A202276(n+1)`
-/

namespace A202275.P5516519101367199027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (n + 2) - A202276 (n + 1)

end

end A202275.P5516519101367199027

namespace A202275

/-- `A074753(n+2)-A202276(n+1)` -/
def P5516519101367199027.Spec : Prop :=
  ∀ n, P5516519101367199027.a n = A202275 (n + 1)

end A202275

/-! ## A202275.P13686287002884377224

`A074753(n+2)-∑[A175253(n+1)]`
-/

namespace A202275.P13686287002884377224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202275.P13686287002884377224

namespace A202275

/-- `A074753(n+2)-∑[A175253(n+1)]` -/
def P13686287002884377224.Spec : Prop :=
  ∀ n, P13686287002884377224.a n = A202275 (n + 1)

end A202275

/-!
# A202276: Number of integers k <= n such that sigma(x) = k has no solution, sigma = A000203.

The programs for A202276, the canonical program `A202276.P11372972948396556949` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202276 has offset 1).

The definition of A202276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202276.P11372972948396556949

`∑[A175253(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A202276

/-- `∑[A175253(n+1)]` -/
def P11372972948396556949.Spec : Prop :=
  ∀ n, P11372972948396556949.a n = A202276 (n + 1)

theorem P11372972948396556949.correct : P11372972948396556949.Spec := by
  intro n
  simp only [A202276, Nat.add_sub_cancel]

end A202276

/-! ## A202276.P17830667800811246121

`∑[1-A175192(n+1)]`
-/

namespace A202276.P17830667800811246121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A175192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P17830667800811246121

namespace A202276

/-- `∑[1-A175192(n+1)]` -/
def P17830667800811246121.Spec : Prop :=
  ∀ n, P17830667800811246121.a n = A202276 (n + 1)

end A202276

/-! ## A202276.P11215710654457491609

`∑[floor(acot(A054973(n+1)))]`
-/

namespace A202276.P11215710654457491609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A054973 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P11215710654457491609

namespace A202276

/-- `∑[floor(acot(A054973(n+1)))]` -/
def P11215710654457491609.Spec : Prop :=
  ∀ n, P11215710654457491609.a n = A202276 (n + 1)

end A202276

/-! ## A202276.P10658991267000699508

`∑[C(n, A051444(n+1)²)]`
-/

namespace A202276.P10658991267000699508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A051444 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P10658991267000699508

namespace A202276

/-- `∑[C(n, A051444(n+1)²)]` -/
def P10658991267000699508.Spec : Prop :=
  ∀ n, (P10658991267000699508.a n : ℤ) = A202276 (n + 1)

end A202276

/-! ## A202276.P17123569593222025315

`∑[C(n, A057637(n+1)²)]`
-/

namespace A202276.P17123569593222025315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A057637 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P17123569593222025315

namespace A202276

/-- `∑[C(n, A057637(n+1)²)]` -/
def P17123569593222025315.Spec : Prop :=
  ∀ n, (P17123569593222025315.a n : ℤ) = A202276 (n + 1)

end A202276

/-! ## A202276.P4577153977247246122

`∑[char[comp[A000203(n+1)-1]]]`
-/

namespace A202276.P4577153977247246122
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P4577153977247246122

namespace A202276

/-- `∑[char[comp[A000203(n+1)-1]]]` -/
def P4577153977247246122.Spec : Prop :=
  ∀ n, (P4577153977247246122.a n : ℤ) = A202276 (n + 1)

end A202276

/-! ## A202276.P15420615499762068198

`∑[A000007(A051444(n+1))]`
-/

namespace A202276.P15420615499762068198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P15420615499762068198

namespace A202276

/-- `∑[A000007(A051444(n+1))]` -/
def P15420615499762068198.Spec : Prop :=
  ∀ n, P15420615499762068198.a n = A202276 (n + 1)

end A202276

/-! ## A202276.P11110947858108282496

`∑[A054973(A054973(n+1)²+1)]`
-/

namespace A202276.P11110947858108282496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A054973 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P11110947858108282496

namespace A202276

/-- `∑[A054973(A054973(n+1)²+1)]` -/
def P11110947858108282496.Spec : Prop :=
  ∀ n, P11110947858108282496.a n = A202276 (n + 1)

end A202276

/-! ## A202276.P12610577233440538600

`∑[A286011(A286011(n+1)²+1)]`
-/

namespace A202276.P12610577233440538600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (A286011 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P12610577233440538600

namespace A202276

/-- `∑[A286011(A286011(n+1)²+1)]` -/
def P12610577233440538600.Spec : Prop :=
  ∀ n, P12610577233440538600.a n = A202276 (n + 1)

end A202276

/-! ## A202276.P13777194880662366350

`∑[A341879(A341879(n+1)²+1)]`
-/

namespace A202276.P13777194880662366350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341879 (A341879 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P13777194880662366350

namespace A202276

/-- `∑[A341879(A341879(n+1)²+1)]` -/
def P13777194880662366350.Spec : Prop :=
  ∀ n, P13777194880662366350.a n = A202276 (n + 1)

end A202276

/-! ## A202276.P5884007572906051138

`∑[and(1, A046523(A240667(n+1)+1))]`
-/

namespace A202276.P5884007572906051138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046523 (A240667 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P5884007572906051138

namespace A202276

/-- `∑[and(1, A046523(A240667(n+1)+1))]` -/
def P5884007572906051138.Spec : Prop :=
  ∀ n, P5884007572906051138.a n = A202276 (n + 1)

end A202276

/-! ## A202276.P1541807891588828008

`∑[char[lt[A341879(n+1), 1]]]`
-/

namespace A202276.P1541807891588828008
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341879 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P1541807891588828008

namespace A202276

/-- `∑[char[lt[A341879(n+1), 1]]]` -/
def P1541807891588828008.Spec : Prop :=
  ∀ n, (P1541807891588828008.a n : ℤ) = A202276 (n + 1)

end A202276

/-! ## A202276.P16282271399219391161

`A074753(n+2)-A202275(n+1)`
-/

namespace A202276.P16282271399219391161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (n + 2) - A202275 (n + 1)

end

end A202276.P16282271399219391161

namespace A202276

/-- `A074753(n+2)-A202275(n+1)` -/
def P16282271399219391161.Spec : Prop :=
  ∀ n, P16282271399219391161.a n = A202276 (n + 1)

end A202276

/-! ## A202276.P6122079686892643792

`∑[1-char[∑{d}[n, #]-1]]`
-/

namespace A202276.P6122079686892643792
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P6122079686892643792

namespace A202276

/-- `∑[1-char[∑{d}[n, #]-1]]` -/
def P6122079686892643792.Spec : Prop :=
  ∀ n, P6122079686892643792.a n = A202276 (n + 1)

end A202276

/-! ## A202276.P10409751404352348499

`a(n-1)+1-char[∑{d}[n, #]-1]` with `a(0)=0`
-/

namespace A202276.P10409751404352348499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A202276.P10409751404352348499

namespace A202276

/-- `a(n-1)+1-char[∑{d}[n, #]-1]` -/
def P10409751404352348499.Spec : Prop :=
  ∀ n, P10409751404352348499.a n = A202276 (n + 1)

end A202276

/-! ## A202276.P3414617066908906225

`∑[char[comp[∑{d}[n, #%#²]]]]`
-/

namespace A202276.P3414617066908906225
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d % d ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P3414617066908906225

namespace A202276

/-- `∑[char[comp[∑{d}[n, #%#²]]]]` -/
def P3414617066908906225.Spec : Prop :=
  ∀ n, (P3414617066908906225.a n : ℤ) = A202276 (n + 1)

end A202276

/-! ## A202276.P2140550669395221726

`∑[char[comp[A039653(n)]]]`
-/

namespace A202276.P2140550669395221726
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P2140550669395221726

namespace A202276

/-- `∑[char[comp[A039653(n)]]]` -/
def P2140550669395221726.Spec : Prop :=
  ∀ n, (P2140550669395221726.a n : ℤ) = A202276 (n + 1)

end A202276

/-! ## A202276.P4252715800155259902

`∑[char[comp[A001065(n+1)+n]]]`
-/

namespace A202276.P4252715800155259902
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P4252715800155259902

namespace A202276

/-- `∑[char[comp[A001065(n+1)+n]]]` -/
def P4252715800155259902.Spec : Prop :=
  ∀ n, (P4252715800155259902.a n : ℤ) = A202276 (n + 1)

end A202276

/-! ## A202276.P8741122992340208956

`∑[A286011(A257670(A283524(n+1)))]`
-/

namespace A202276.P8741122992340208956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (A257670 (A283524 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P8741122992340208956

namespace A202276

/-- `∑[A286011(A257670(A283524(n+1)))]` -/
def P8741122992340208956.Spec : Prop :=
  ∀ n, P8741122992340208956.a n = A202276 (n + 1)

end A202276

/-!
# A202277: Numbers m such that number of integers k such sigma(k) <= m (A074753) is equal to number of integers k <= m such that sigma(x) = k has no solution (A202276).

The programs for A202277, there is no canonical definition to state claims against.
-/

/-! ## A202277.P13727927103271401015

`A020725(eq[0, A202275(n+1)])`
-/

namespace A202277.P13727927103271401015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202277.P13727927103271401015

/-!
# A202281: Record (maximal) gaps between prime decuplets (p+0,2,6,8,12,18,20,26,30,32).

The programs for A202281, there is no canonical definition to state claims against.
-/

/-! ## A202281.P6270697615229935996

`record[Δ[A027569(n+1)]]`
-/

namespace A202281.P6270697615229935996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202281.P6270697615229935996

/-! ## A202281.P13732035611172529584

`record[A027569(n+2)-A027569(n+1)]`
-/

namespace A202281.P13732035611172529584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 2) - A027569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202281.P13732035611172529584

/-!
# A202282: Initial prime in prime decuplets (p+0,2,6,8,12,18,20,26,30,32) preceding the maximal gaps in A202281.

The programs for A202282, there is no canonical definition to state claims against.
-/

/-! ## A202282.P18385862666991238628

`A027569(eq[A000194(n), A108087(n)])`
-/

namespace A202282.P18385862666991238628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A202282.P18385862666991238628

/-! ## A202282.P15606089767994041825

`A027569(eq[A000194(n), A119468(n)])`
-/

namespace A202282.P15606089767994041825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A202282.P15606089767994041825

/-!
# A202289: Number of faces of dimension n in a tight triangulation of the manifold OP^2.

The programs for A202289, there is no canonical definition to state claims against.
-/

/-! ## A202289.P7056632338615219138

`record[C(27, A252648(n))]`
-/

namespace A202289.P7056632338615219138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 27 (A252648 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202289.P7056632338615219138

/-! ## A202289.P11656314140827964891

`C(27, A113698(2^n))`
-/

namespace A202289.P11656314140827964891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 27 (A113698 (2 ^ n)).toNat

end

end A202289.P11656314140827964891

/-! ## A202289.P4607467949649885226

`C(27, A001227(3^n))`
-/

namespace A202289.P4607467949649885226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 27 (A001227 (3 ^ n)).toNat

end

end A202289.P4607467949649885226

/-! ## A202289.P14356683002470835681

`C(27, A016008(3^n))`
-/

namespace A202289.P14356683002470835681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 27 (A016008 (3 ^ n)).toNat

end

end A202289.P14356683002470835681

/-! ## A202289.P11239865962269011777

`C(27, A001222(11*3^n))`
-/

namespace A202289.P11239865962269011777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 27 (A001222 (11 * 3 ^ n)).toNat

end

end A202289.P11239865962269011777

/-!
# A202292: Number of faces of dimension n in a spherical triangulation of the manifold OP^2.

The programs for A202292, there is no canonical definition to state claims against.
-/

/-! ## A202292.P10438328848625589552

`record[C(26, val(C(2*n, n), 2)+1)]`
-/

namespace A202292.P10438328848625589552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 26 (SequenceMachineLib.valuation (Nat.choose (2 * n) n) 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202292.P10438328848625589552

/-! ## A202292.P413228057002565134

`C(26, A000005(5^n))`
-/

namespace A202292.P413228057002565134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 26 (A000005 (5 ^ n)).toNat

end

end A202292.P413228057002565134

/-! ## A202292.P11217167952153119794

`C(26, A257564((n+1)²))`
-/

namespace A202292.P11217167952153119794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 26 (A257564 ((n + 1) ^ 2)).toNat

end

end A202292.P11217167952153119794

/-! ## A202292.P1594499951264540621

`A010942(A010352(n+1))`
-/

namespace A202292.P1594499951264540621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010942 (A010352 (n + 1)).toNat

end

end A202292.P1594499951264540621

/-!
# A202293: Number of labeled trees avoiding a certain pattern (see Dotsenko reference for precise definition).

The programs for A202293, there is no canonical definition to state claims against.
-/

/-! ## A202293.P14806837190061306350

`A185190(n+1)/2^n`
-/

namespace A202293.P14806837190061306350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185190 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A202293.P14806837190061306350

/-! ## A202293.P3821804746859086255

`A088789(n+1)+C(comp[xor(2, 6*n)+3], 6)`
-/

namespace A202293.P3821804746859086255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088789 (n + 1) + (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 6 : ℤ)

end

end A202293.P3821804746859086255

/-! ## A202293.P10180742248301429218

`abs(A185190(n+1)/A120617(n))`
-/

namespace A202293.P10180742248301429218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A185190 (n + 1) : ℚ) / (A120617 n : ℚ)|

end

end A202293.P10180742248301429218

/-!
# A202294: Number of labeled trees avoiding a certain pattern (see Dotsenko reference for precise definition).

The programs for A202294, there is no canonical definition to state claims against.
-/

/-! ## A202294.P4468595873108563441

`xor(∑{d}[A011940(n), #], A202293(n))`
-/

namespace A202294.P4468595873108563441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A202293 n)

end

end A202294.P4468595873108563441

/-! ## A202294.P14281260146016234190

`A002266(A383957(n)+n)`
-/

namespace A202294.P14281260146016234190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A383957 n + (n : ℤ)).toNat

end

end A202294.P14281260146016234190

/-!
# A202295: Number of labeled trees avoiding a certain pattern (see Dotsenko reference for precise definition).

The programs for A202295, there is no canonical definition to state claims against.
-/

/-! ## A202295.P14270754433015928862

`A088789(n+1)-C(comp[xor(2, 6*n)+3], 6)`
-/

namespace A202295.P14270754433015928862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088789 (n + 1) - (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 6 : ℤ)

end

end A202295.P14270754433015928862

/-! ## A202295.P18024306287187353924

`ceil(root(A025035(n), π-1))-A000332(n)`
-/

namespace A202295.P18024306287187353924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025035 n : ℝ) ^ (1 / (Real.pi - 1))⌉ - A000332 n

end

end A202295.P18024306287187353924

/-! ## A202295.P3245723708886811976

`A200317(n+1)+A112367(A052964(n))`
-/

namespace A202295.P3245723708886811976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200317 (n + 1) + A112367 (A052964 n).toNat

end

end A202295.P3245723708886811976

/-!
# A202297: Product of the sum of the first n^2 primes by the sum of the first (n+1)^2 primes.

The programs for A202297, the canonical program `A202297.P4781330736124741313` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202297 has offset 0).

The definition of A202297 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109724, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A202297.P4781330736124741313

`A109724(n)*A109724(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A202297

/-- `A109724(n)*A109724(n+1)` -/
def P4781330736124741313.Spec : Prop :=
  ∀ n, P4781330736124741313.a n = A202297 n

theorem P4781330736124741313.correct : P4781330736124741313.Spec := by
  intro n
  simp only [A202297]

end A202297

/-! ## A202297.P12912544161695204575

`∑[A109725(n)]*A109724(n)`
-/

namespace A202297.P12912544161695204575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A109724 n

end

end A202297.P12912544161695204575

namespace A202297

/-- `∑[A109725(n)]*A109724(n)` -/
def P12912544161695204575.Spec : Prop :=
  ∀ n, P12912544161695204575.a n = A202297 n

end A202297

/-! ## A202297.P15122855452777663432

`∑[A109725(n)]*A007504(n²)`
-/

namespace A202297.P15122855452777663432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007504 (n ^ 2)

end

end A202297.P15122855452777663432

namespace A202297

/-- `∑[A109725(n)]*A007504(n²)` -/
def P15122855452777663432.Spec : Prop :=
  ∀ n, P15122855452777663432.a n = A202297 n

end A202297

/-! ## A202297.P7737316193351371463

`A007504(n*n)%A098562(n+1)*∑[A109725(n)]`
-/

namespace A202297.P7737316193351371463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n * n)) (A098562 (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202297.P7737316193351371463

namespace A202297

/-- `A007504(n*n)%A098562(n+1)*∑[A109725(n)]` -/
def P7737316193351371463.Spec : Prop :=
  ∀ n, P7737316193351371463.a n = A202297 n

end A202297

/-! ## A202297.P3194913809879730040

`A007504((n+1)²)*A007504(n²)`
-/

namespace A202297.P3194913809879730040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 ((n + 1) ^ 2) * A007504 (n ^ 2)

end

end A202297.P3194913809879730040

namespace A202297

/-- `A007504((n+1)²)*A007504(n²)` -/
def P3194913809879730040.Spec : Prop :=
  ∀ n, P3194913809879730040.a n = A202297 n

end A202297

/-!
# A202299: y-values in the solution to x^2 - 18*y^2 = 1.

The programs for A202299, the canonical program `A202299.P13817909703461216673` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202299 has offset 1).

The definition of A202299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202299.P15390643099026569701

`ogf(4x/(1-34x+x^2))`
-/

namespace A202299.P15390643099026569701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -34, 1] n

end

end A202299.P15390643099026569701

namespace A202299

/-- `ogf(4x/(1-34x+x^2))` -/
def P15390643099026569701.Spec : Prop :=
  ∀ n, P15390643099026569701.a n = A202299 (n + 1)

end A202299

/-! ## A202299.P13817909703461216673

`34*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A202299

/-- `34*a(n-1)-a(n-2)` -/
def P13817909703461216673.Spec : Prop :=
  ∀ n, P13817909703461216673.a n = A202299 (n + 1)

theorem P13817909703461216673.correct : P13817909703461216673.Spec := by
  intro n
  simp only [A202299, Nat.add_sub_cancel]

end A202299

/-! ## A202299.P2026121138318616444

`((3+2*sqrt(2))^(2*(n+1)-2)-(3-2*sqrt(2))^(2*(n+1)-2))/(6*sqrt(2))`
-/

namespace A202299.P2026121138318616444
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (2 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 2 : ℤ) - (3 - 2 * Real.sqrt (2 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 2 : ℤ)) / (6 * Real.sqrt (2 : ℝ))

end

end A202299.P2026121138318616444

namespace A202299

/-- `((3+2*sqrt(2))^(2*(n+1)-2)-(3-2*sqrt(2))^(2*(n+1)-2))/(6*sqrt(2))` -/
def P2026121138318616444.Spec : Prop :=
  ∀ n, P2026121138318616444.a n = (A202299 (n + 1) : ℝ)

end A202299

/-! ## A202299.P12131738731776899905

`1/3*A001542(2*n)`
-/

namespace A202299.P12131738731776899905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A001542 (2 * n) : ℚ)

end

end A202299.P12131738731776899905

namespace A202299

/-- `1/3*A001542(2*n)` -/
def P12131738731776899905.Spec : Prop :=
  ∀ n, P12131738731776899905.a n = (A202299 (n + 1) : ℚ)

end A202299

/-! ## A202299.P744189278652082129

`4*A091761(n)`
-/

namespace A202299.P744189278652082129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A091761 n

end

end A202299.P744189278652082129

namespace A202299

/-- `4*A091761(n)` -/
def P744189278652082129.Spec : Prop :=
  ∀ n, P744189278652082129.a n = A202299 (n + 1)

end A202299

/-! ## A202299.P5495157709159196057

`2/3*A082405(n)`
-/

namespace A202299.P5495157709159196057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A082405 n : ℚ)

end

end A202299.P5495157709159196057

namespace A202299

/-- `2/3*A082405(n)` -/
def P5495157709159196057.Spec : Prop :=
  ∀ n, P5495157709159196057.a n = (A202299 (n + 1) : ℚ)

end A202299

/-! ## A202299.P8386162868567094271

`A373358(A131098(n+1))`
-/

namespace A202299.P8386162868567094271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373358 (A131098 (n + 1)).toNat

end

end A202299.P8386162868567094271

namespace A202299

/-- `A373358(A131098(n+1))` -/
def P8386162868567094271.Spec : Prop :=
  ∀ n, P8386162868567094271.a n = A202299 (n + 1)

end A202299

/-! ## A202299.P2540297392735248632

`A077420(n)-A001653(2*n+1)`
-/

namespace A202299.P2540297392735248632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077420 n - A001653 (2 * n + 1)

end

end A202299.P2540297392735248632

namespace A202299

/-- `A077420(n)-A001653(2*n+1)` -/
def P2540297392735248632.Spec : Prop :=
  ∀ n, P2540297392735248632.a n = A202299 (n + 1)

end A202299

