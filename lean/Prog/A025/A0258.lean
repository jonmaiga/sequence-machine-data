import SequenceMachineLib.Basic
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A025800: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^11)).

The programs for A025800, the canonical program `A025800.P5717015798714292719` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025800 has offset 0).

The definition of A025800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^5-x^11+x^13+x^14-x^16))` (program `A025800.P5717015798714292719`, by `A025800.P5717015798714292719.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025800.P13860087201691606977

`floor((n²+16*(n+(-1)^n)+116)/132)`
-/

namespace A025800.P13860087201691606977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) + 16 * ((n : ℤ) + (-1) ^ n) + 116 : ℚ) / 132⌋

end

end A025800.P13860087201691606977

namespace A025800

/-- `floor((n²+16*(n+(-1)^n)+116)/132)` -/
def P13860087201691606977.Spec : Prop :=
  ∀ n, P13860087201691606977.a n = A025800 n

end A025800

/-! ## A025800.P5717015798714292719

`ogf(1/(1-x^2-x^3+x^5-x^11+x^13+x^14-x^16))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025800

/-- `ogf(1/(1-x^2-x^3+x^5-x^11+x^13+x^14-x^16))` -/
def P5717015798714292719.Spec : Prop :=
  ∀ n, P5717015798714292719.a n = A025800 n

theorem P5717015798714292719.correct : P5717015798714292719.Spec := by
  intro n
  simp only [A025800]

end A025800

/-! ## A025800.P5010893155129538986

`A025771(n)-a(n-1)` with `a(0)=1`
-/

namespace A025800.P5010893155129538986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025771 n - a (n - 1)

end

end A025800.P5010893155129538986

namespace A025800

/-- `A025771(n)-a(n-1)` -/
def P5010893155129538986.Spec : Prop :=
  ∀ n, P5010893155129538986.a n = A025800 n

end A025800

/-! ## A025800.P7425192831064121598

`A025833(abs(2-n))+A025833(n)`
-/

namespace A025800.P7425192831064121598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025833 |2 - (n : ℤ)|.toNat + A025833 n

end

end A025800.P7425192831064121598

namespace A025800

/-- `A025833(abs(2-n))+A025833(n)` -/
def P7425192831064121598.Spec : Prop :=
  ∀ n, P7425192831064121598.a n = A025800 n

end A025800

/-! ## A025800.P4406275455199310856

`A029148(n)+A029154(n)-A029143(n)`
-/

namespace A025800.P4406275455199310856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029148 n + (A029154 n - A029143 n)

end

end A025800.P4406275455199310856

namespace A025800

/-- `A029148(n)+A029154(n)-A029143(n)` -/
def P4406275455199310856.Spec : Prop :=
  ∀ n, P4406275455199310856.a n = A025800 n

end A025800

/-! ## A025800.P2042245928695024076

`Δ[A177116(n+7)-A181120(n+7)]`
-/

namespace A025800.P2042245928695024076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177116 (n + 7) - A181120 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025800.P2042245928695024076

namespace A025800

/-- `Δ[A177116(n+7)-A181120(n+7)]` -/
def P2042245928695024076.Spec : Prop :=
  ∀ n, P2042245928695024076.a n = A025800 n

end A025800

/-! ## A025800.P2802515784193232002

`Δ[A177116(n+7)]-A069905(n+8)`
-/

namespace A025800.P2802515784193232002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177116 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A069905 (n + 8)

end

end A025800.P2802515784193232002

namespace A025800

/-- `Δ[A177116(n+7)]-A069905(n+8)` -/
def P2802515784193232002.Spec : Prop :=
  ∀ n, P2802515784193232002.a n = A025800 n

end A025800

/-! ## A025800.P11785708645716833726

`A025866(2*n)`
-/

namespace A025800.P11785708645716833726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025866 (2 * n)

end

end A025800.P11785708645716833726

namespace A025800

/-- `A025866(2*n)` -/
def P11785708645716833726.Spec : Prop :=
  ∀ n, P11785708645716833726.a n = A025800 n

end A025800

/-! ## A025800.P10575745602517170536

`A025815(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025800.P10575745602517170536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025815 (2 * n) - a (n - 1)

end

end A025800.P10575745602517170536

namespace A025800

/-- `A025815(2*n)-a(n-1)` -/
def P10575745602517170536.Spec : Prop :=
  ∀ n, P10575745602517170536.a n = A025800 n

end A025800

/-! ## A025800.P12520819779865876347

`A029357(2*n)-A029357(2*n+1)`
-/

namespace A025800.P12520819779865876347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 (2 * n) - A029357 (2 * n + 1)

end

end A025800.P12520819779865876347

namespace A025800

/-- `A029357(2*n)-A029357(2*n+1)` -/
def P12520819779865876347.Spec : Prop :=
  ∀ n, P12520819779865876347.a n = A025800 n

end A025800

/-! ## A025800.P7243255000984307475

`A029353(2*n)-A029353(2*n+3)`
-/

namespace A025800.P7243255000984307475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029353 (2 * n) - A029353 (2 * n + 3)

end

end A025800.P7243255000984307475

namespace A025800

/-- `A029353(2*n)-A029353(2*n+3)` -/
def P7243255000984307475.Spec : Prop :=
  ∀ n, P7243255000984307475.a n = A025800 n

end A025800

/-! ## A025800.P9178018321661620631

`A025875(2*n)+A025875(A062545(n+1))`
-/

namespace A025800.P9178018321661620631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (2 * n) + A025875 (A062545 (n + 1)).toNat

end

end A025800.P9178018321661620631

namespace A025800

/-- `A025875(2*n)+A025875(A062545(n+1))` -/
def P9178018321661620631.Spec : Prop :=
  ∀ n, P9178018321661620631.a n = A025800 n

end A025800

/-! ## A025800.P16540978867579607434

`A025875(A004273(n+3))+A025875(2*n)`
-/

namespace A025800.P16540978867579607434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (A004273 (n + 3)).toNat + A025875 (2 * n)

end

end A025800.P16540978867579607434

namespace A025800

/-- `A025875(A004273(n+3))+A025875(2*n)` -/
def P16540978867579607434.Spec : Prop :=
  ∀ n, P16540978867579607434.a n = A025800 n

end A025800

/-! ## A025800.P17939040081081321590

`A025905(3*n)`
-/

namespace A025800.P17939040081081321590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 (3 * n)

end

end A025800.P17939040081081321590

namespace A025800

/-- `A025905(3*n)` -/
def P17939040081081321590.Spec : Prop :=
  ∀ n, P17939040081081321590.a n = A025800 n

end A025800

/-! ## A025800.P995157950580237736

`A025922(4*n)`
-/

namespace A025800.P995157950580237736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (4 * n)

end

end A025800.P995157950580237736

namespace A025800

/-- `A025922(4*n)` -/
def P995157950580237736.Spec : Prop :=
  ∀ n, P995157950580237736.a n = A025800 n

end A025800

/-! ## A025800.P1507864894226135334

`A025875(4*n)-a(n-1)` with `a(0)=1`
-/

namespace A025800.P1507864894226135334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025875 (4 * n) - a (n - 1)

end

end A025800.P1507864894226135334

namespace A025800

/-- `A025875(4*n)-a(n-1)` -/
def P1507864894226135334.Spec : Prop :=
  ∀ n, P1507864894226135334.a n = A025800 n

end A025800

/-! ## A025800.P8872303563326183683

`A025922(A008574(n))+A008683(A008574(n))`
-/

namespace A025800.P8872303563326183683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (A008574 n).toNat + A008683 (A008574 n).toNat

end

end A025800.P8872303563326183683

namespace A025800

/-- `A025922(A008574(n))+A008683(A008574(n))` -/
def P8872303563326183683.Spec : Prop :=
  ∀ n, P8872303563326183683.a n = A025800 n

end A025800

/-!
# A025801: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^12)).

The programs for A025801, the canonical program `A025801.P11183780811663958550` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025801 has offset 0).

The definition of A025801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^5-x^12+x^14+x^15-x^17))` (program `A025801.P11183780811663958550`, by `A025801.P11183780811663958550.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025801.P11183780811663958550

`ogf(1/(1-x^2-x^3+x^5-x^12+x^14+x^15-x^17))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025801

/-- `ogf(1/(1-x^2-x^3+x^5-x^12+x^14+x^15-x^17))` -/
def P11183780811663958550.Spec : Prop :=
  ∀ n, P11183780811663958550.a n = A025801 n

theorem P11183780811663958550.correct : P11183780811663958550.Spec := by
  intro n
  simp only [A025801]

end A025801

/-! ## A025801.P14644703698682022052

`floor((n²+n*(17+3*(-1)^n)+120+4*(n+6)*((n+2)%3-1))/144)`
-/

namespace A025801.P14644703698682022052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) + (n : ℤ) * (17 + 3 * (-1) ^ n) + 120 + (4 * (n + 6) : ℤ) * ((((n + 2) % 3 : ℕ) : ℤ) - 1) : ℚ) / 144⌋

end

end A025801.P14644703698682022052

namespace A025801

/-- `floor((n²+n*(17+3*(-1)^n)+120+4*(n+6)*((n+2)%3-1))/144)` -/
def P14644703698682022052.Spec : Prop :=
  ∀ n, P14644703698682022052.a n = A025801 n

end A025801

/-! ## A025801.P18350864034073825742

`A002620(ceil(xor(1, n)/6)+1)`
-/

namespace A025801.P18350864034073825742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (⌈(Nat.xor 1 n : ℚ) / 6⌉ + 1).toNat

end

end A025801.P18350864034073825742

namespace A025801

/-- `A002620(ceil(xor(1, n)/6)+1)` -/
def P18350864034073825742.Spec : Prop :=
  ∀ n, P18350864034073825742.a n = A025801 n

end A025801

/-! ## A025801.P6451080349929034732

`abs(A083392(A103221(n)))`
-/

namespace A025801.P6451080349929034732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083392 (A103221 n).toNat|

end

end A025801.P6451080349929034732

namespace A025801

/-- `abs(A083392(A103221(n)))` -/
def P6451080349929034732.Spec : Prop :=
  ∀ n, P6451080349929034732.a n = A025801 n

end A025801

/-! ## A025801.P18188023515246629852

`A002620(A103221(n)+1)`
-/

namespace A025801.P18188023515246629852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A103221 n + 1).toNat

end

end A025801.P18188023515246629852

namespace A025801

/-- `A002620(A103221(n)+1)` -/
def P18188023515246629852.Spec : Prop :=
  ∀ n, P18188023515246629852.a n = A025801 n

end A025801

/-! ## A025801.P16989260888530453584

`A307018(3*A103221(n))`
-/

namespace A025801.P16989260888530453584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (3 * A103221 n).toNat

end

end A025801.P16989260888530453584

namespace A025801

/-- `A307018(3*A103221(n))` -/
def P16989260888530453584.Spec : Prop :=
  ∀ n, P16989260888530453584.a n = A025801 n

end A025801

/-! ## A025801.P8958057980765532433

`A008733(xor(1, A008611(n)))`
-/

namespace A025801.P8958057980765532433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (Int.xor 1 (A008611 n)).toNat

end

end A025801.P8958057980765532433

namespace A025801

/-- `A008733(xor(1, A008611(n)))` -/
def P8958057980765532433.Spec : Prop :=
  ∀ n, P8958057980765532433.a n = A025801 n

end A025801

/-! ## A025801.P7803521569128568758

`A025828(A128834(n)+n)`
-/

namespace A025801.P7803521569128568758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 (A128834 n + (n : ℤ)).toNat

end

end A025801.P7803521569128568758

namespace A025801

/-- `A025828(A128834(n)+n)` -/
def P7803521569128568758.Spec : Prop :=
  ∀ n, P7803521569128568758.a n = A025801 n

end A025801

/-! ## A025801.P6203870149636598534

`A002620(Δ[A001399(n+5)])`
-/

namespace A025801.P6203870149636598534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (f1 (n + 1) - f1 n).toNat

end

end A025801.P6203870149636598534

namespace A025801

/-- `A002620(Δ[A001399(n+5)])` -/
def P6203870149636598534.Spec : Prop :=
  ∀ n, P6203870149636598534.a n = A025801 n

end A025801

/-! ## A025801.P2794725747093658329

`A007590(A103221(n)+1)/2`
-/

namespace A025801.P2794725747093658329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (A103221 n + 1).toNat : ℚ) / 2

end

end A025801.P2794725747093658329

namespace A025801

/-- `A007590(A103221(n)+1)/2` -/
def P2794725747093658329.Spec : Prop :=
  ∀ n, P2794725747093658329.a n = (A025801 n : ℚ)

end A025801

/-! ## A025801.P9098498790581509089

`A173151(2*A103221(n))-1`
-/

namespace A025801.P9098498790581509089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 (2 * A103221 n).toNat - 1

end

end A025801.P9098498790581509089

namespace A025801

/-- `A173151(2*A103221(n))-1` -/
def P9098498790581509089.Spec : Prop :=
  ∀ n, P9098498790581509089.a n = A025801 n

end A025801

/-! ## A025801.P18220166495884044013

`A008217(A008611(n)+and(1, n+1)+3)`
-/

namespace A025801.P18220166495884044013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A008611 n + (Nat.land 1 (n + 1) + 3 : ℤ)).toNat

end

end A025801.P18220166495884044013

namespace A025801

/-- `A008217(A008611(n)+and(1, n+1)+3)` -/
def P18220166495884044013.Spec : Prop :=
  ∀ n, P18220166495884044013.a n = A025801 n

end A025801

/-! ## A025801.P16781767761812282611

`A008733(A008611(n)+n-A004442(n))`
-/

namespace A025801.P16781767761812282611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (A008611 n + ((n : ℤ) - A004442 n)).toNat

end

end A025801.P16781767761812282611

namespace A025801

/-- `A008733(A008611(n)+n-A004442(n))` -/
def P16781767761812282611.Spec : Prop :=
  ∀ n, P16781767761812282611.a n = A025801 n

end A025801

/-! ## A025801.P10792871377117078234

`A008733(n-(A004442(n)-A008611(n)))`
-/

namespace A025801.P10792871377117078234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 ((n : ℤ) - (A004442 n - A008611 n)).toNat

end

end A025801.P10792871377117078234

namespace A025801

/-- `A008733(n-(A004442(n)-A008611(n)))` -/
def P10792871377117078234.Spec : Prop :=
  ∀ n, P10792871377117078234.a n = A025801 n

end A025801

/-! ## A025801.P16157000300272201513

`floor((A026806(n+2)/2)²)`
-/

namespace A025801.P16157000300272201513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A026806 (n + 2) : ℚ) / 2) ^ 2⌋

end

end A025801.P16157000300272201513

namespace A025801

/-- `floor((A026806(n+2)/2)²)` -/
def P16157000300272201513.Spec : Prop :=
  ∀ n, P16157000300272201513.a n = A025801 n

end A025801

/-! ## A025801.P17334073830629837581

`A002620(A026806(n+2))`
-/

namespace A025801.P17334073830629837581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A026806 (n + 2)).toNat

end

end A025801.P17334073830629837581

namespace A025801

/-- `A002620(A026806(n+2))` -/
def P17334073830629837581.Spec : Prop :=
  ∀ n, P17334073830629837581.a n = A025801 n

end A025801

/-! ## A025801.P16498490822453827352

`A002620(A008615(n+2)+1)`
-/

namespace A025801.P16498490822453827352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008615 (n + 2) + 1).toNat

end

end A025801.P16498490822453827352

namespace A025801

/-- `A002620(A008615(n+2)+1)` -/
def P16498490822453827352.Spec : Prop :=
  ∀ n, P16498490822453827352.a n = A025801 n

end A025801

/-! ## A025801.P8944318463031069606

`(A026806(n+2)-A081753(n+1))*A081753(n+1)`
-/

namespace A025801.P8944318463031069606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026806 (n + 2) - A081753 (n + 1)) * A081753 (n + 1)

end

end A025801.P8944318463031069606

namespace A025801

/-- `(A026806(n+2)-A081753(n+1))*A081753(n+1)` -/
def P8944318463031069606.Spec : Prop :=
  ∀ n, P8944318463031069606.a n = A025801 n

end A025801

/-! ## A025801.P8128022795603422076

`A002620(A008615(n+8))`
-/

namespace A025801.P8128022795603422076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008615 (n + 8)).toNat

end

end A025801.P8128022795603422076

namespace A025801

/-- `A002620(A008615(n+8))` -/
def P8128022795603422076.Spec : Prop :=
  ∀ n, P8128022795603422076.a n = A025801 n

end A025801

/-! ## A025801.P13280443210413379835

`A025862(A047205(n+1))`
-/

namespace A025801.P13280443210413379835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025862 (A047205 (n + 1)).toNat

end

end A025801.P13280443210413379835

namespace A025801

/-- `A025862(A047205(n+1))` -/
def P13280443210413379835.Spec : Prop :=
  ∀ n, P13280443210413379835.a n = A025801 n

end A025801

/-!
# A025802: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)).

The programs for A025802, the canonical program `A025802.P5671299149986146018` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025802 has offset 0).

The definition of A025802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^4-x^5+x^6+x^7+x^9-x^11))` (program `A025802.P5671299149986146018`, by `A025802.P5671299149986146018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025802.P5671299149986146018

`ogf(1/(1-x^2-x^4-x^5+x^6+x^7+x^9-x^11))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025802

/-- `ogf(1/(1-x^2-x^4-x^5+x^6+x^7+x^9-x^11))` -/
def P5671299149986146018.Spec : Prop :=
  ∀ n, P5671299149986146018.a n = A025802 n

theorem P5671299149986146018.correct : P5671299149986146018.Spec := by
  intro n
  simp only [A025802]

end A025802

/-! ## A025802.P6220042472953282302

`floor((n²+n*(11+5*(-1)^n)+53+27*(-1)^n)/80)`
-/

namespace A025802.P6220042472953282302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) + (n : ℤ) * (11 + 5 * (-1) ^ n) + 53 + 27 * (-1) ^ n : ℚ) / 80⌋

end

end A025802.P6220042472953282302

namespace A025802

/-- `floor((n²+n*(11+5*(-1)^n)+53+27*(-1)^n)/80)` -/
def P6220042472953282302.Spec : Prop :=
  ∀ n, P6220042472953282302.a n = A025802 n

end A025802

/-! ## A025802.P1517059324314317847

`∑[floor(floor(n/4)+1-n/5)]-a(n-1)` with `a(0)=1`
-/

namespace A025802.P1517059324314317847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 4⌋ + 1 : ℚ) - (n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A025802.P1517059324314317847

namespace A025802

/-- `∑[floor(floor(n/4)+1-n/5)]-a(n-1)` -/
def P1517059324314317847.Spec : Prop :=
  ∀ n, P1517059324314317847.a n = A025802 n

end A025802

/-! ## A025802.P16049816639404542167

`A008667(n)+A029007(n)-A008669(n)`
-/

namespace A025802.P16049816639404542167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n + (A029007 n - A008669 n)

end

end A025802.P16049816639404542167

namespace A025802

/-- `A008667(n)+A029007(n)-A008669(n)` -/
def P16049816639404542167.Spec : Prop :=
  ∀ n, P16049816639404542167.a n = A025802 n

end A025802

/-! ## A025802.P10425510319043262949

`Δ[A008669(n)-A008667(n)]`
-/

namespace A025802.P10425510319043262949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 n - A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025802.P10425510319043262949

namespace A025802

/-- `Δ[A008669(n)-A008667(n)]` -/
def P10425510319043262949.Spec : Prop :=
  ∀ n, P10425510319043262949.a n = A025802 n

end A025802

/-! ## A025802.P12265435202441347657

`A025795(n)-Δ[Δ[A026811(n)]]`
-/

namespace A025802.P12265435202441347657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 n - (f1 (n + 1) - f1 n)

end

end A025802.P12265435202441347657

namespace A025802

/-- `A025795(n)-Δ[Δ[A026811(n)]]` -/
def P12265435202441347657.Spec : Prop :=
  ∀ n, P12265435202441347657.a n = A025802 n

end A025802

/-! ## A025802.P2066292569094186282

`A008667(n)-Δ[A026811(n+1)]`
-/

namespace A025802.P2066292569094186282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n - (f1 (n + 1) - f1 n)

end

end A025802.P2066292569094186282

namespace A025802

/-- `A008667(n)-Δ[A026811(n+1)]` -/
def P2066292569094186282.Spec : Prop :=
  ∀ n, P2066292569094186282.a n = A025802 n

end A025802

/-! ## A025802.P15151571381991881042

`A008669(n+1)+A008667(n)-A001400(n+1)`
-/

namespace A025802.P15151571381991881042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 (n + 1) + (A008667 n - A001400 (n + 1))

end

end A025802.P15151571381991881042

namespace A025802

/-- `A008669(n+1)+A008667(n)-A001400(n+1)` -/
def P15151571381991881042.Spec : Prop :=
  ∀ n, P15151571381991881042.a n = A025802 n

end A025802

/-! ## A025802.P7497283283787778311

`A025795(n+1)+A008667(n)-A008667(n+1)`
-/

namespace A025802.P7497283283787778311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (n + 1) + (A008667 n - A008667 (n + 1))

end

end A025802.P7497283283787778311

namespace A025802

/-- `A025795(n+1)+A008667(n)-A008667(n+1)` -/
def P7497283283787778311.Spec : Prop :=
  ∀ n, P7497283283787778311.a n = A025802 n

end A025802

/-! ## A025802.P9921387469294327434

`A266755(n+2)-A008680(n+2)`
-/

namespace A025802.P9921387469294327434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (n + 2) - A008680 (n + 2)

end

end A025802.P9921387469294327434

namespace A025802

/-- `A266755(n+2)-A008680(n+2)` -/
def P9921387469294327434.Spec : Prop :=
  ∀ n, P9921387469294327434.a n = A025802 n

end A025802

/-! ## A025802.P1949465170632207972

`A008680(2*n)-A005044(n)`
-/

namespace A025802.P1949465170632207972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (2 * n) - A005044 n

end

end A025802.P1949465170632207972

namespace A025802

/-- `A008680(2*n)-A005044(n)` -/
def P1949465170632207972.Spec : Prop :=
  ∀ n, P1949465170632207972.a n = A025802 n

end A025802

/-! ## A025802.P9233857126443572750

`A025860(2*n)`
-/

namespace A025802.P9233857126443572750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025860 (2 * n)

end

end A025802.P9233857126443572750

namespace A025802

/-- `A025860(2*n)` -/
def P9233857126443572750.Spec : Prop :=
  ∀ n, P9233857126443572750.a n = A025802 n

end A025802

/-! ## A025802.P1529538442541736203

`A029173(2*n)-A029173(2*n+3)`
-/

namespace A025802.P1529538442541736203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029173 (2 * n) - A029173 (2 * n + 3)

end

end A025802.P1529538442541736203

namespace A025802

/-- `A029173(2*n)-A029173(2*n+3)` -/
def P1529538442541736203.Spec : Prop :=
  ∀ n, P1529538442541736203.a n = A025802 n

end A025802

/-! ## A025802.P3252485411807861305

`Δ[A029173(2*n+3)]`
-/

namespace A025802.P3252485411807861305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029173 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025802.P3252485411807861305

namespace A025802

/-- `Δ[A029173(2*n+3)]` -/
def P3252485411807861305.Spec : Prop :=
  ∀ n, P3252485411807861305.a n = A025802 n

end A025802

/-! ## A025802.P10702661892330865973

`A025881(3*n)`
-/

namespace A025802.P10702661892330865973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (3 * n)

end

end A025802.P10702661892330865973

namespace A025802

/-- `A025881(3*n)` -/
def P10702661892330865973.Spec : Prop :=
  ∀ n, P10702661892330865973.a n = A025802 n

end A025802

/-! ## A025802.P17242021616509304329

`A025857(A136320(n))`
-/

namespace A025802.P17242021616509304329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (A136320 n).toNat

end

end A025802.P17242021616509304329

namespace A025802

/-- `A025857(A136320(n))` -/
def P17242021616509304329.Spec : Prop :=
  ∀ n, P17242021616509304329.a n = A025802 n

end A025802

/-! ## A025802.P11889459852681696541

`A025857(A047225(n+1))`
-/

namespace A025802.P11889459852681696541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (A047225 (n + 1)).toNat

end

end A025802.P11889459852681696541

namespace A025802

/-- `A025857(A047225(n+1))` -/
def P11889459852681696541.Spec : Prop :=
  ∀ n, P11889459852681696541.a n = A025802 n

end A025802

/-! ## A025802.P16794670116826502545

`A025857(A047243(n+1)-2)`
-/

namespace A025802.P16794670116826502545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (A047243 (n + 1) - 2).toNat

end

end A025802.P16794670116826502545

namespace A025802

/-- `A025857(A047243(n+1)-2)` -/
def P16794670116826502545.Spec : Prop :=
  ∀ n, P16794670116826502545.a n = A025802 n

end A025802

/-! ## A025802.P16682659967082373618

`A025857(A047243(n+2))`
-/

namespace A025802.P16682659967082373618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (A047243 (n + 2)).toNat

end

end A025802.P16682659967082373618

namespace A025802

/-- `A025857(A047243(n+2))` -/
def P16682659967082373618.Spec : Prop :=
  ∀ n, P16682659967082373618.a n = A025802 n

end A025802

/-! ## A025802.P7956244661808588715

`A025857(A166542(n+1)-2)`
-/

namespace A025802.P7956244661808588715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (A166542 (n + 1) - 2).toNat

end

end A025802.P7956244661808588715

namespace A025802

/-- `A025857(A166542(n+1)-2)` -/
def P7956244661808588715.Spec : Prop :=
  ∀ n, P7956244661808588715.a n = A025802 n

end A025802

/-!
# A025803: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)).

The programs for A025803, the canonical program `A025803.P7102647471543122504` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025803 has offset 0).

The definition of A025803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^4+x^6-x^7+x^9+x^11-x^13))` (program `A025803.P7102647471543122504`, by `A025803.P7102647471543122504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025803.P7102647471543122504

`ogf(1/(1-x^2-x^4+x^6-x^7+x^9+x^11-x^13))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025803

/-- `ogf(1/(1-x^2-x^4+x^6-x^7+x^9+x^11-x^13))` -/
def P7102647471543122504.Spec : Prop :=
  ∀ n, P7102647471543122504.a n = A025803 n

theorem P7102647471543122504.correct : P7102647471543122504.Spec := by
  intro n
  simp only [A025803]

end A025803

/-! ## A025803.P16828258099310196814

`floor((n²+n*(13+7*(-1)^n)+90+50*(-1)^n)/112)`
-/

namespace A025803.P16828258099310196814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) + (n : ℤ) * (13 + 7 * (-1) ^ n) + 90 + 50 * (-1) ^ n : ℚ) / 112⌋

end

end A025803.P16828258099310196814

namespace A025803

/-- `floor((n²+n*(13+7*(-1)^n)+90+50*(-1)^n)/112)` -/
def P16828258099310196814.Spec : Prop :=
  ∀ n, P16828258099310196814.a n = A025803 n

end A025803

/-! ## A025803.P5381031453046581162

`A025773(n)-a(n-1)` with `a(0)=1`
-/

namespace A025803.P5381031453046581162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025773 n - a (n - 1)

end

end A025803.P5381031453046581162

namespace A025803

/-- `A025773(n)-a(n-1)` -/
def P5381031453046581162.Spec : Prop :=
  ∀ n, P5381031453046581162.a n = A025803 n

end A025803

/-! ## A025803.P5129466180642794621

`A008721(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025803.P5129466180642794621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008721 n - a (n - 2)

end

end A025803.P5129466180642794621

namespace A025803

/-- `A008721(n)-a(n-2)` -/
def P5129466180642794621.Spec : Prop :=
  ∀ n, P5129466180642794621.a n = A025803 n

end A025803

/-! ## A025803.P3761372111169457971

`A025773(n)+∑[A008721(n)-A025773(n)]`
-/

namespace A025803.P3761372111169457971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008721 n - A025773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025773 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025803.P3761372111169457971

namespace A025803

/-- `A025773(n)+∑[A008721(n)-A025773(n)]` -/
def P3761372111169457971.Spec : Prop :=
  ∀ n, P3761372111169457971.a n = A025803 n

end A025803

/-! ## A025803.P11904760841007866391

`A025867(2*n)`
-/

namespace A025803.P11904760841007866391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 (2 * n)

end

end A025803.P11904760841007866391

namespace A025803

/-- `A025867(2*n)` -/
def P11904760841007866391.Spec : Prop :=
  ∀ n, P11904760841007866391.a n = A025803 n

end A025803

/-! ## A025803.P3280072865004701719

`A025816(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025803.P3280072865004701719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025816 (2 * n) - a (n - 1)

end

end A025803.P3280072865004701719

namespace A025803

/-- `A025816(2*n)-a(n-1)` -/
def P3280072865004701719.Spec : Prop :=
  ∀ n, P3280072865004701719.a n = A025803 n

end A025803

/-! ## A025803.P15486212411074970175

`A005044(n+3)-A008622(2*n+1)`
-/

namespace A025803.P15486212411074970175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 3) - A008622 (2 * n + 1)

end

end A025803.P15486212411074970175

namespace A025803

/-- `A005044(n+3)-A008622(2*n+1)` -/
def P15486212411074970175.Spec : Prop :=
  ∀ n, P15486212411074970175.a n = A025803 n

end A025803

/-! ## A025803.P15094937836124612111

`A029347(2*n)-A029347(2*n+1)`
-/

namespace A025803.P15094937836124612111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 (2 * n) - A029347 (2 * n + 1)

end

end A025803.P15094937836124612111

namespace A025803

/-- `A029347(2*n)-A029347(2*n+1)` -/
def P15094937836124612111.Spec : Prop :=
  ∀ n, P15094937836124612111.a n = A025803 n

end A025803

/-! ## A025803.P12381082225950766513

`Δ[A026810(n+3)]-A008622(2*n+1)`
-/

namespace A025803.P12381082225950766513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008622 (2 * n + 1)

end

end A025803.P12381082225950766513

namespace A025803

/-- `Δ[A026810(n+3)]-A008622(2*n+1)` -/
def P12381082225950766513.Spec : Prop :=
  ∀ n, P12381082225950766513.a n = A025803 n

end A025803

/-! ## A025803.P16766438632919494801

`A029214(2*n)-A029214(2*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A025803.P16766438632919494801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029214 (2 * n) - A029214 (2 * n + 1) - a (n - 1)

end

end A025803.P16766438632919494801

namespace A025803

/-- `A029214(2*n)-A029214(2*n+1)-a(n-1)` -/
def P16766438632919494801.Spec : Prop :=
  ∀ n, P16766438632919494801.a n = A025803 n

end A025803

/-! ## A025803.P5648910067297804538

`A025909(2*n+1)+A029360(2*n)-A029360(2*n+1)`
-/

namespace A025803.P5648910067297804538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 (2 * n + 1) + (A029360 (2 * n) - A029360 (2 * n + 1))

end

end A025803.P5648910067297804538

namespace A025803

/-- `A025909(2*n+1)+A029360(2*n)-A029360(2*n+1)` -/
def P5648910067297804538.Spec : Prop :=
  ∀ n, P5648910067297804538.a n = A025803 n

end A025803

/-! ## A025803.P3368789367068388528

`A025901(3*n)`
-/

namespace A025803.P3368789367068388528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 (3 * n)

end

end A025803.P3368789367068388528

namespace A025803

/-- `A025901(3*n)` -/
def P3368789367068388528.Spec : Prop :=
  ∀ n, P3368789367068388528.a n = A025803 n

end A025803

/-! ## A025803.P17267108247050184202

`Δ[A029348(A005818(n+1)+n)]`
-/

namespace A025803.P17267108247050184202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029348 (A005818 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025803.P17267108247050184202

namespace A025803

/-- `Δ[A029348(A005818(n+1)+n)]` -/
def P17267108247050184202.Spec : Prop :=
  ∀ n, P17267108247050184202.a n = A025803 n

end A025803

/-!
# A025804: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^9)).

The programs for A025804, the canonical program `A025804.P2299333251304292024` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025804 has offset 0).

The definition of A025804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^4+x^6-x^9+x^11+x^13-x^15))` (program `A025804.P2299333251304292024`, by `A025804.P2299333251304292024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025804.P2299333251304292024

`ogf(1/(1-x^2-x^4+x^6-x^9+x^11+x^13-x^15))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025804

/-- `ogf(1/(1-x^2-x^4+x^6-x^9+x^11+x^13-x^15))` -/
def P2299333251304292024.Spec : Prop :=
  ∀ n, P2299333251304292024.a n = A025804 n

theorem P2299333251304292024.correct : P2299333251304292024.Spec := by
  intro n
  simp only [A025804]

end A025804

/-! ## A025804.P14692494615872506557

`floor((n²+n*(15+9*(-1)^n)+116+64*(-1)^n)/144)`
-/

namespace A025804.P14692494615872506557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) + (n : ℤ) * (15 + 9 * (-1) ^ n) + 116 + 64 * (-1) ^ n : ℚ) / 144⌋

end

end A025804.P14692494615872506557

namespace A025804

/-- `floor((n²+n*(15+9*(-1)^n)+116+64*(-1)^n)/144)` -/
def P14692494615872506557.Spec : Prop :=
  ∀ n, P14692494615872506557.a n = A025804 n

end A025804

/-! ## A025804.P11265066568069017574

`A025774(n)-a(n-1)` with `a(0)=1`
-/

namespace A025804.P11265066568069017574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025774 n - a (n - 1)

end

end A025804.P11265066568069017574

namespace A025804

/-- `A025774(n)-a(n-1)` -/
def P11265066568069017574.Spec : Prop :=
  ∀ n, P11265066568069017574.a n = A025804 n

end A025804

/-! ## A025804.P15622159723415564542

`A033183(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025804.P15622159723415564542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A033183 n + a (n - 2)

end

end A025804.P15622159723415564542

namespace A025804

/-- `A033183(n)+a(n-2)` -/
def P15622159723415564542.Spec : Prop :=
  ∀ n, P15622159723415564542.a n = A025804 n

end A025804

/-! ## A025804.P9770350451075886860

`A008722(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025804.P9770350451075886860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008722 n - a (n - 2)

end

end A025804.P9770350451075886860

namespace A025804

/-- `A008722(n)-a(n-2)` -/
def P9770350451075886860.Spec : Prop :=
  ∀ n, P9770350451075886860.a n = A025804 n

end A025804

/-! ## A025804.P5533418770839522210

`(A033183(n)+A008722(n))/2`
-/

namespace A025804.P5533418770839522210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033183 n + A008722 n : ℚ) / 2

end

end A025804.P5533418770839522210

namespace A025804

/-- `(A033183(n)+A008722(n))/2` -/
def P5533418770839522210.Spec : Prop :=
  ∀ n, P5533418770839522210.a n = (A025804 n : ℚ)

end A025804

/-! ## A025804.P6412098135737681265

`A025774(n)+∑[A008722(n)-A025774(n)]`
-/

namespace A025804.P6412098135737681265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008722 n - A025774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025774 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025804.P6412098135737681265

namespace A025804

/-- `A025774(n)+∑[A008722(n)-A025774(n)]` -/
def P6412098135737681265.Spec : Prop :=
  ∀ n, P6412098135737681265.a n = A025804 n

end A025804

/-! ## A025804.P11718147821835553919

`A025872(2*n)`
-/

namespace A025804.P11718147821835553919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (2 * n)

end

end A025804.P11718147821835553919

namespace A025804

/-- `A025872(2*n)` -/
def P11718147821835553919.Spec : Prop :=
  ∀ n, P11718147821835553919.a n = A025804 n

end A025804

/-! ## A025804.P17052127728797083054

`A025821(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025804.P17052127728797083054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025821 (2 * n) - a (n - 1)

end

end A025804.P17052127728797083054

namespace A025804

/-- `A025821(2*n)-a(n-1)` -/
def P17052127728797083054.Spec : Prop :=
  ∀ n, P17052127728797083054.a n = A025804 n

end A025804

/-! ## A025804.P17683956644468311943

`A025920(2*n+1)+A025874(2*n)`
-/

namespace A025804.P17683956644468311943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 (2 * n + 1) + A025874 (2 * n)

end

end A025804.P17683956644468311943

namespace A025804

/-- `A025920(2*n+1)+A025874(2*n)` -/
def P17683956644468311943.Spec : Prop :=
  ∀ n, P17683956644468311943.a n = A025804 n

end A025804

/-! ## A025804.P16227302153647254985

`A025868(2*n+1)+A029359(2*n)-A029359(2*n+1)`
-/

namespace A025804.P16227302153647254985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (2 * n + 1) + (A029359 (2 * n) - A029359 (2 * n + 1))

end

end A025804.P16227302153647254985

namespace A025804

/-- `A025868(2*n+1)+A029359(2*n)-A029359(2*n+1)` -/
def P16227302153647254985.Spec : Prop :=
  ∀ n, P16227302153647254985.a n = A025804 n

end A025804

/-! ## A025804.P4507976040114760893

`A029282(2*n+1)+A029262(2*n)-A029246(2*n+1)`
-/

namespace A025804.P4507976040114760893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029282 (2 * n + 1) + (A029262 (2 * n) - A029246 (2 * n + 1))

end

end A025804.P4507976040114760893

namespace A025804

/-- `A029282(2*n+1)+A029262(2*n)-A029246(2*n+1)` -/
def P4507976040114760893.Spec : Prop :=
  ∀ n, P4507976040114760893.a n = A025804 n

end A025804

/-! ## A025804.P6696786844283488076

`A029352(2*n)-A029352(2*n+3)`
-/

namespace A025804.P6696786844283488076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029352 (2 * n) - A029352 (2 * n + 3)

end

end A025804.P6696786844283488076

namespace A025804

/-- `A029352(2*n)-A029352(2*n+3)` -/
def P6696786844283488076.Spec : Prop :=
  ∀ n, P6696786844283488076.a n = A025804 n

end A025804

/-! ## A025804.P6555536396102689083

`∑[A025868(n+1)-Δ[A029359(2*n)]]`
-/

namespace A025804.P6555536396102689083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025804.P6555536396102689083

namespace A025804

/-- `∑[A025868(n+1)-Δ[A029359(2*n)]]` -/
def P6555536396102689083.Spec : Prop :=
  ∀ n, P6555536396102689083.a n = A025804 n

end A025804

/-! ## A025804.P1532223259598369583

`Δ[A029173(2*(n+1))-A029204(2*(n+1))]`
-/

namespace A025804.P1532223259598369583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029173 (2 * (n + 1)) - A029204 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025804.P1532223259598369583

namespace A025804

/-- `Δ[A029173(2*(n+1))-A029204(2*(n+1))]` -/
def P1532223259598369583.Spec : Prop :=
  ∀ n, P1532223259598369583.a n = A025804 n

end A025804

/-! ## A025804.P5176527932634911731

`A029359(A005408(n+4))-A029359(2*(n+1))`
-/

namespace A025804.P5176527932634911731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A005408 (n + 4)).toNat - A029359 (2 * (n + 1))

end

end A025804.P5176527932634911731

namespace A025804

/-- `A029359(A005408(n+4))-A029359(2*(n+1))` -/
def P5176527932634911731.Spec : Prop :=
  ∀ n, P5176527932634911731.a n = A025804 n

end A025804

/-! ## A025804.P13617380380710810198

`A033183(n)+A014682(A008722(n)-A033183(n))`
-/

namespace A025804.P13617380380710810198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 n + A014682 (A008722 n - A033183 n).toNat

end

end A025804.P13617380380710810198

namespace A025804

/-- `A033183(n)+A014682(A008722(n)-A033183(n))` -/
def P13617380380710810198.Spec : Prop :=
  ∀ n, P13617380380710810198.a n = A025804 n

end A025804

/-! ## A025804.P7487615133044814866

`A014682(A033183(n)+A008722(n))`
-/

namespace A025804.P7487615133044814866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A033183 n + A008722 n).toNat

end

end A025804.P7487615133044814866

namespace A025804

/-- `A014682(A033183(n)+A008722(n))` -/
def P7487615133044814866.Spec : Prop :=
  ∀ n, P7487615133044814866.a n = A025804 n

end A025804

/-! ## A025804.P17239243586837527553

`A033183(n)+A001281(A008722(n)-A033183(n))`
-/

namespace A025804.P17239243586837527553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 n + A001281 (A008722 n - A033183 n).toNat

end

end A025804.P17239243586837527553

namespace A025804

/-- `A033183(n)+A001281(A008722(n)-A033183(n))` -/
def P17239243586837527553.Spec : Prop :=
  ∀ n, P17239243586837527553.a n = A025804 n

end A025804

/-! ## A025804.P962484077841401129

`A033183(n)+A004525(A008722(n)-A033183(n))`
-/

namespace A025804.P962484077841401129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 n + A004525 (A008722 n - A033183 n).toNat

end

end A025804.P962484077841401129

namespace A025804

/-- `A033183(n)+A004525(A008722(n)-A033183(n))` -/
def P962484077841401129.Spec : Prop :=
  ∀ n, P962484077841401129.a n = A025804 n

end A025804

/-!
# A025805: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^11)).

The programs for A025805, the canonical program `A025805.P9548513040616170086` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025805 has offset 0).

The definition of A025805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^4+x^6-x^11+x^13+x^15-x^17))` (program `A025805.P9548513040616170086`, by `A025805.P9548513040616170086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025805.P9548513040616170086

`ogf(1/(1-x^2-x^4+x^6-x^11+x^13+x^15-x^17))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025805

/-- `ogf(1/(1-x^2-x^4+x^6-x^11+x^13+x^15-x^17))` -/
def P9548513040616170086.Spec : Prop :=
  ∀ n, P9548513040616170086.a n = A025805 n

theorem P9548513040616170086.correct : P9548513040616170086.Spec := by
  intro n
  simp only [A025805]

end A025805

/-! ## A025805.P9749359241419202163

`A025775(n)-a(n-1)` with `a(0)=1`
-/

namespace A025805.P9749359241419202163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025775 n - a (n - 1)

end

end A025805.P9749359241419202163

namespace A025805

/-- `A025775(n)-a(n-1)` -/
def P9749359241419202163.Spec : Prop :=
  ∀ n, P9749359241419202163.a n = A025805 n

end A025805

/-! ## A025805.P3565056956733766212

`A008723(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025805.P3565056956733766212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008723 n - a (n - 2)

end

end A025805.P3565056956733766212

namespace A025805

/-- `A008723(n)-a(n-2)` -/
def P3565056956733766212.Spec : Prop :=
  ∀ n, P3565056956733766212.a n = A025805 n

end A025805

/-! ## A025805.P14931407155330874008

`2*A029010(n)-∑[A025775(n)]`
-/

namespace A025805.P14931407155330874008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029010 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025805.P14931407155330874008

namespace A025805

/-- `2*A029010(n)-∑[A025775(n)]` -/
def P14931407155330874008.Spec : Prop :=
  ∀ n, P14931407155330874008.a n = A025805 n

end A025805

/-! ## A025805.P16752240007835267340

`A025844(A168197(n+1))`
-/

namespace A025805.P16752240007835267340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025844 (A168197 (n + 1)).toNat

end

end A025805.P16752240007835267340

namespace A025805

/-- `A025844(A168197(n+1))` -/
def P16752240007835267340.Spec : Prop :=
  ∀ n, P16752240007835267340.a n = A025805 n

end A025805

/-! ## A025805.P14029048676015970709

`A025822(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025805.P14029048676015970709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025822 (2 * n) - a (n - 1)

end

end A025805.P14029048676015970709

namespace A025805

/-- `A025822(2*n)-a(n-1)` -/
def P14029048676015970709.Spec : Prop :=
  ∀ n, P14029048676015970709.a n = A025805 n

end A025805

/-! ## A025805.P10401376130933184916

`A025873(2*n)`
-/

namespace A025805.P10401376130933184916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 (2 * n)

end

end A025805.P10401376130933184916

namespace A025805

/-- `A025873(2*n)` -/
def P10401376130933184916.Spec : Prop :=
  ∀ n, P10401376130933184916.a n = A025805 n

end A025805

/-! ## A025805.P13450719358590140173

`A029372(2*n)-A029372(2*n+1)`
-/

namespace A025805.P13450719358590140173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 (2 * n) - A029372 (2 * n + 1)

end

end A025805.P13450719358590140173

namespace A025805

/-- `A029372(2*n)-A029372(2*n+1)` -/
def P13450719358590140173.Spec : Prop :=
  ∀ n, P13450719358590140173.a n = A025805 n

end A025805

/-! ## A025805.P17994377643288649054

`A029239(2*n)-A029239(2*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A025805.P17994377643288649054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029239 (2 * n) - A029239 (2 * n + 1) - a (n - 1)

end

end A025805.P17994377643288649054

namespace A025805

/-- `A029239(2*n)-A029239(2*n+1)-a(n-1)` -/
def P17994377643288649054.Spec : Prop :=
  ∀ n, P17994377643288649054.a n = A025805 n

end A025805

/-! ## A025805.P13914812864422637208

`A025853(2*n)+A025875(2*n)-A025858(2*n)`
-/

namespace A025805.P13914812864422637208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 (2 * n) + (A025875 (2 * n) - A025858 (2 * n))

end

end A025805.P13914812864422637208

namespace A025805

/-- `A025853(2*n)+A025875(2*n)-A025858(2*n)` -/
def P13914812864422637208.Spec : Prop :=
  ∀ n, P13914812864422637208.a n = A025805 n

end A025805

/-! ## A025805.P5110192039672820290

`A029339(2*n)+A029353(2*n)-A029327(2*n)`
-/

namespace A025805.P5110192039672820290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029339 (2 * n) + (A029353 (2 * n) - A029327 (2 * n))

end

end A025805.P5110192039672820290

namespace A025805

/-- `A029339(2*n)+A029353(2*n)-A029327(2*n)` -/
def P5110192039672820290.Spec : Prop :=
  ∀ n, P5110192039672820290.a n = A025805 n

end A025805

/-! ## A025805.P5453833162771272825

`A025815(n)+Δ[A029240(2*n+1)]`
-/

namespace A025805.P5453833162771272825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025815 n + (f1 (n + 1) - f1 n)

end

end A025805.P5453833162771272825

namespace A025805

/-- `A025815(n)+Δ[A029240(2*n+1)]` -/
def P5453833162771272825.Spec : Prop :=
  ∀ n, P5453833162771272825.a n = A025805 n

end A025805

/-! ## A025805.P16226091937324023110

`A025875(A062545(n+2))+A025866(n)`
-/

namespace A025805.P16226091937324023110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (A062545 (n + 2)).toNat + A025866 n

end

end A025805.P16226091937324023110

namespace A025805

/-- `A025875(A062545(n+2))+A025866(n)` -/
def P16226091937324023110.Spec : Prop :=
  ∀ n, P16226091937324023110.a n = A025805 n

end A025805

/-! ## A025805.P17233550400450299147

`A025907(3*n)`
-/

namespace A025805.P17233550400450299147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (3 * n)

end

end A025805.P17233550400450299147

namespace A025805

/-- `A025907(3*n)` -/
def P17233550400450299147.Spec : Prop :=
  ∀ n, P17233550400450299147.a n = A025805 n

end A025805

/-! ## A025805.P14991027928826373871

`A005843(A029010(n))-∑[A025775(n)]`
-/

namespace A025805.P14991027928826373871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A029010 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025805.P14991027928826373871

namespace A025805

/-- `A005843(A029010(n))-∑[A025775(n)]` -/
def P14991027928826373871.Spec : Prop :=
  ∀ n, P14991027928826373871.a n = A025805 n

end A025805

/-!
# A025806: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)).

The programs for A025806, the canonical program `A025806.P2767065301255915386` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025806 has offset 0).

The definition of A025806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^5-x^6+x^7+x^8+x^11-x^13))` (program `A025806.P2767065301255915386`, by `A025806.P2767065301255915386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025806.P2767065301255915386

`ogf(1/(1-x^2-x^5-x^6+x^7+x^8+x^11-x^13))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025806

/-- `ogf(1/(1-x^2-x^5-x^6+x^7+x^8+x^11-x^13))` -/
def P2767065301255915386.Spec : Prop :=
  ∀ n, P2767065301255915386.a n = A025806 n

theorem P2767065301255915386.correct : P2767065301255915386.Spec := by
  intro n
  simp only [A025806]

end A025806

/-! ## A025806.P1904378356058998

`floor((n²+n*(13+5*(-1)^n)+90+30*(-1)^n)/120)`
-/

namespace A025806.P1904378356058998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) + (n : ℤ) * (13 + 5 * (-1) ^ n) + 90 + 30 * (-1) ^ n : ℚ) / 120⌋

end

end A025806.P1904378356058998

namespace A025806

/-- `floor((n²+n*(13+5*(-1)^n)+90+30*(-1)^n)/120)` -/
def P1904378356058998.Spec : Prop :=
  ∀ n, P1904378356058998.a n = A025806 n

end A025806

/-! ## A025806.P15180311715096777419

`A025776(n)-a(n-1)` with `a(0)=1`
-/

namespace A025806.P15180311715096777419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025776 n - a (n - 1)

end

end A025806.P15180311715096777419

namespace A025806

/-- `A025776(n)-a(n-1)` -/
def P15180311715096777419.Spec : Prop :=
  ∀ n, P15180311715096777419.a n = A025806 n

end A025806

/-! ## A025806.P11041150468244655262

`A033182(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025806.P11041150468244655262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A033182 n + a (n - 2)

end

end A025806.P11041150468244655262

namespace A025806

/-- `A033182(n)+a(n-2)` -/
def P11041150468244655262.Spec : Prop :=
  ∀ n, P11041150468244655262.a n = A025806 n

end A025806

/-! ## A025806.P12398165769494919220

`A025795(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A025806.P12398165769494919220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025795 n - a (n - 3)

end

end A025806.P12398165769494919220

namespace A025806

/-- `A025795(n)-a(n-3)` -/
def P12398165769494919220.Spec : Prop :=
  ∀ n, P12398165769494919220.a n = A025806 n

end A025806

/-! ## A025806.P2291825674321171720

`A211524(A084964(n)+6)`
-/

namespace A025806.P2291825674321171720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (A084964 n + 6).toNat

end

end A025806.P2291825674321171720

namespace A025806

/-- `A211524(A084964(n)+6)` -/
def P2291825674321171720.Spec : Prop :=
  ∀ n, P2291825674321171720.a n = A025806 n

end A025806

/-! ## A025806.P13119670432824278601

`A211524(A097065(n)+7)`
-/

namespace A025806.P13119670432824278601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (A097065 n + 7).toNat

end

end A025806.P13119670432824278601

namespace A025806

/-- `A211524(A097065(n)+7)` -/
def P13119670432824278601.Spec : Prop :=
  ∀ n, P13119670432824278601.a n = A025806 n

end A025806

/-! ## A025806.P6438618346410409680

`A025799(abs(Δ[A266285(n)]))`
-/

namespace A025806.P6438618346410409680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 |f1 (n + 1) - f1 n|.toNat

end

end A025806.P6438618346410409680

namespace A025806

/-- `A025799(abs(Δ[A266285(n)]))` -/
def P6438618346410409680.Spec : Prop :=
  ∀ n, P6438618346410409680.a n = A025806 n

end A025806

/-! ## A025806.P4379260527355972338

`round(A008720(n+2)/3)`
-/

namespace A025806.P4379260527355972338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008720 (n + 2) : ℚ) / 3)

end

end A025806.P4379260527355972338

namespace A025806

/-- `round(A008720(n+2)/3)` -/
def P4379260527355972338.Spec : Prop :=
  ∀ n, P4379260527355972338.a n = A025806 n

end A025806

/-! ## A025806.P12425667235499010231

`A008613(A166523(n+1)-(3*n+1))`
-/

namespace A025806.P12425667235499010231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 (A166523 (n + 1) - (3 * n + 1 : ℤ)).toNat

end

end A025806.P12425667235499010231

namespace A025806

/-- `A008613(A166523(n+1)-(3*n+1))` -/
def P12425667235499010231.Spec : Prop :=
  ∀ n, P12425667235499010231.a n = A025806 n

end A025806

/-! ## A025806.P8272522456620135256

`A008613(A166523(n+1)%(3*n+1))`
-/

namespace A025806.P8272522456620135256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 (Int.tmod (A166523 (n + 1)) (3 * n + 1 : ℤ)).toNat

end

end A025806.P8272522456620135256

namespace A025806

/-- `A008613(A166523(n+1)%(3*n+1))` -/
def P8272522456620135256.Spec : Prop :=
  ∀ n, P8272522456620135256.a n = A025806 n

end A025806

/-! ## A025806.P10295482250947761408

`A025837(A166517(n+1)-1)`
-/

namespace A025806.P10295482250947761408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A166517 (n + 1) - 1).toNat

end

end A025806.P10295482250947761408

namespace A025806

/-- `A025837(A166517(n+1)-1)` -/
def P10295482250947761408.Spec : Prop :=
  ∀ n, P10295482250947761408.a n = A025806 n

end A025806

/-! ## A025806.P15901470079765851504

`A025837(A166517(n+2))`
-/

namespace A025806.P15901470079765851504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A166517 (n + 2)).toNat

end

end A025806.P15901470079765851504

namespace A025806

/-- `A025837(A166517(n+2))` -/
def P15901470079765851504.Spec : Prop :=
  ∀ n, P15901470079765851504.a n = A025806 n

end A025806

/-! ## A025806.P7530560044577629570

`A025864(2*n)`
-/

namespace A025806.P7530560044577629570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 (2 * n)

end

end A025806.P7530560044577629570

namespace A025806

/-- `A025864(2*n)` -/
def P7530560044577629570.Spec : Prop :=
  ∀ n, P7530560044577629570.a n = A025806 n

end A025806

/-! ## A025806.P1369659554209098694

`A025812(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025806.P1369659554209098694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025812 (2 * n) - a (n - 1)

end

end A025806.P1369659554209098694

namespace A025806

/-- `A025812(2*n)-a(n-1)` -/
def P1369659554209098694.Spec : Prop :=
  ∀ n, P1369659554209098694.a n = A025806 n

end A025806

/-! ## A025806.P12773136324051143329

`A025890(2*n+1)+A025890(2*n)`
-/

namespace A025806.P12773136324051143329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (2 * n + 1) + A025890 (2 * n)

end

end A025806.P12773136324051143329

namespace A025806

/-- `A025890(2*n+1)+A025890(2*n)` -/
def P12773136324051143329.Spec : Prop :=
  ∀ n, P12773136324051143329.a n = A025806 n

end A025806

/-! ## A025806.P3674177022169676072

`2*A029270(2*n)-A029254(2*n)`
-/

namespace A025806.P3674177022169676072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029270 (2 * n) - A029254 (2 * n)

end

end A025806.P3674177022169676072

namespace A025806

/-- `2*A029270(2*n)-A029254(2*n)` -/
def P3674177022169676072.Spec : Prop :=
  ∀ n, P3674177022169676072.a n = A025806 n

end A025806

/-! ## A025806.P14027822950451771953

`Δ[A029177(A004442(A004273(n)))]`
-/

namespace A025806.P14027822950451771953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025806.P14027822950451771953

namespace A025806

/-- `Δ[A029177(A004442(A004273(n)))]` -/
def P14027822950451771953.Spec : Prop :=
  ∀ n, P14027822950451771953.a n = A025806 n

end A025806

/-! ## A025806.P10460386664352186260

`A029011(n)-A029177(2*n+3)`
-/

namespace A025806.P10460386664352186260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029011 n - A029177 (2 * n + 3)

end

end A025806.P10460386664352186260

namespace A025806

/-- `A029011(n)-A029177(2*n+3)` -/
def P10460386664352186260.Spec : Prop :=
  ∀ n, P10460386664352186260.a n = A025806 n

end A025806

/-! ## A025806.P1195364831608241281

`Δ[A029057(2*n)-A029250(2*n)]`
-/

namespace A025806.P1195364831608241281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (2 * n) - A029250 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025806.P1195364831608241281

namespace A025806

/-- `Δ[A029057(2*n)-A029250(2*n)]` -/
def P1195364831608241281.Spec : Prop :=
  ∀ n, P1195364831608241281.a n = A025806 n

end A025806

/-!
# A025807: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^7)).

The programs for A025807, the canonical program `A025807.P11312392182461197579` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025807 has offset 0).

The definition of A025807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^5+x^9+x^12-x^14))` (program `A025807.P11312392182461197579`, by `A025807.P11312392182461197579.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025807.P11312392182461197579

`ogf(1/(1-x^2-x^5+x^9+x^12-x^14))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025807

/-- `ogf(1/(1-x^2-x^5+x^9+x^12-x^14))` -/
def P11312392182461197579.Spec : Prop :=
  ∀ n, P11312392182461197579.a n = A025807 n

theorem P11312392182461197579.correct : P11312392182461197579.Spec := by
  intro n
  simp only [A025807]

end A025807

/-! ## A025807.P157150713770775020

`round(((n+6)²+n)/70)-a(n-1)` with `a(0)=1`
-/

namespace A025807.P157150713770775020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (((n + 6) ^ 2 + n : ℚ) / 70) - a (n - 1)

end

end A025807.P157150713770775020

namespace A025807

/-- `round(((n+6)²+n)/70)-a(n-1)` -/
def P157150713770775020.Spec : Prop :=
  ∀ n, P157150713770775020.a n = A025807 n

end A025807

/-! ## A025807.P2857096946779251386

`abs(∑[A025777(n)*A033999(n)])`
-/

namespace A025807.P2857096946779251386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025777 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A025807.P2857096946779251386

namespace A025807

/-- `abs(∑[A025777(n)*A033999(n)])` -/
def P2857096946779251386.Spec : Prop :=
  ∀ n, P2857096946779251386.a n = A025807 n

end A025807

/-! ## A025807.P7961697044460284912

`A025859(abs(2-n))+A025859(n)`
-/

namespace A025807.P7961697044460284912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025859 |2 - (n : ℤ)|.toNat + A025859 n

end

end A025807.P7961697044460284912

namespace A025807

/-- `A025859(abs(2-n))+A025859(n)` -/
def P7961697044460284912.Spec : Prop :=
  ∀ n, P7961697044460284912.a n = A025807 n

end A025807

/-! ## A025807.P754116612450321070

`A025869(2*n)`
-/

namespace A025807.P754116612450321070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025869 (2 * n)

end

end A025807.P754116612450321070

namespace A025807

/-- `A025869(2*n)` -/
def P754116612450321070.Spec : Prop :=
  ∀ n, P754116612450321070.a n = A025807 n

end A025807

/-! ## A025807.P6051541449419972807

`A029349(2*n)-A029349(2*n+1)`
-/

namespace A025807.P6051541449419972807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 (2 * n) - A029349 (2 * n + 1)

end

end A025807.P6051541449419972807

namespace A025807

/-- `A029349(2*n)-A029349(2*n+1)` -/
def P6051541449419972807.Spec : Prop :=
  ∀ n, P6051541449419972807.a n = A025807 n

end A025807

/-! ## A025807.P8806244509935181172

`A025882(2*n+1)+A025909(2*n)-A025909(2*n+1)`
-/

namespace A025807.P8806244509935181172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025882 (2 * n + 1) + (A025909 (2 * n) - A025909 (2 * n + 1))

end

end A025807.P8806244509935181172

namespace A025807

/-- `A025882(2*n+1)+A025909(2*n)-A025909(2*n+1)` -/
def P8806244509935181172.Spec : Prop :=
  ∀ n, P8806244509935181172.a n = A025807 n

end A025807

/-! ## A025807.P8155040440900319915

`A025909(2*n+3)+A025909(2*n)`
-/

namespace A025807.P8155040440900319915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 (2 * n + 3) + A025909 (2 * n)

end

end A025807.P8155040440900319915

namespace A025807

/-- `A025909(2*n+3)+A025909(2*n)` -/
def P8155040440900319915.Spec : Prop :=
  ∀ n, P8155040440900319915.a n = A025807 n

end A025807

/-!
# A025808: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^8)).

The programs for A025808, the canonical program `A025808.P17199257377744393119` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025808 has offset 0).

The definition of A025808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^5+x^7-x^8+x^10+x^13-x^15))` (program `A025808.P17199257377744393119`, by `A025808.P17199257377744393119.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025808.P17199257377744393119

`ogf(1/(1-x^2-x^5+x^7-x^8+x^10+x^13-x^15))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025808

/-- `ogf(1/(1-x^2-x^5+x^7-x^8+x^10+x^13-x^15))` -/
def P17199257377744393119.Spec : Prop :=
  ∀ n, P17199257377744393119.a n = A025808 n

theorem P17199257377744393119.correct : P17199257377744393119.Spec := by
  intro n
  simp only [A025808]

end A025808

/-! ## A025808.P5038608716972672063

`A025778(n)-a(n-1)` with `a(0)=1`
-/

namespace A025808.P5038608716972672063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025778 n - a (n - 1)

end

end A025808.P5038608716972672063

namespace A025808

/-- `A025778(n)-a(n-1)` -/
def P5038608716972672063.Spec : Prop :=
  ∀ n, P5038608716972672063.a n = A025808 n

end A025808

/-! ## A025808.P4264598741789492870

`A025860(abs(2-n))+A025860(n)`
-/

namespace A025808.P4264598741789492870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025860 |2 - (n : ℤ)|.toNat + A025860 n

end

end A025808.P4264598741789492870

namespace A025808

/-- `A025860(abs(2-n))+A025860(n)` -/
def P4264598741789492870.Spec : Prop :=
  ∀ n, P4264598741789492870.a n = A025808 n

end A025808

/-! ## A025808.P5071382193556933239

`Δ[A029012(n)-A029199(n)]`
-/

namespace A025808.P5071382193556933239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029012 n - A029199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025808.P5071382193556933239

namespace A025808

/-- `Δ[A029012(n)-A029199(n)]` -/
def P5071382193556933239.Spec : Prop :=
  ∀ n, P5071382193556933239.a n = A025808 n

end A025808

/-! ## A025808.P2013479008940411680

`A025840(abs(2-A166517(n)))`
-/

namespace A025808.P2013479008940411680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 |2 - A166517 n|.toNat

end

end A025808.P2013479008940411680

namespace A025808

/-- `A025840(abs(2-A166517(n)))` -/
def P2013479008940411680.Spec : Prop :=
  ∀ n, P2013479008940411680.a n = A025808 n

end A025808

/-! ## A025808.P2987868105623339261

`A025893(A166517(n))+A008682(n)`
-/

namespace A025808.P2987868105623339261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A166517 n).toNat + A008682 n

end

end A025808.P2987868105623339261

namespace A025808

/-- `A025893(A166517(n))+A008682(n)` -/
def P2987868105623339261.Spec : Prop :=
  ∀ n, P2987868105623339261.a n = A025808 n

end A025808

/-! ## A025808.P886410234963208232

`A025840(A166517(n+1)-1)`
-/

namespace A025808.P886410234963208232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (A166517 (n + 1) - 1).toNat

end

end A025808.P886410234963208232

namespace A025808

/-- `A025840(A166517(n+1)-1)` -/
def P886410234963208232.Spec : Prop :=
  ∀ n, P886410234963208232.a n = A025808 n

end A025808

/-! ## A025808.P17064404175295179107

`A025840(A061800(record[A061800(n)]))`
-/

namespace A025808.P17064404175295179107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (A061800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A025808.P17064404175295179107

namespace A025808

/-- `A025840(A061800(record[A061800(n)]))` -/
def P17064404175295179107.Spec : Prop :=
  ∀ n, P17064404175295179107.a n = A025808 n

end A025808

/-! ## A025808.P13206166126220045143

`A025840(A010673(n)+A007494(n))`
-/

namespace A025808.P13206166126220045143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (A010673 n + A007494 n).toNat

end

end A025808.P13206166126220045143

namespace A025808

/-- `A025840(A010673(n)+A007494(n))` -/
def P13206166126220045143.Spec : Prop :=
  ∀ n, P13206166126220045143.a n = A025808 n

end A025808

/-! ## A025808.P14871890821386933888

`A025840(A097140(n)+A059029(n))`
-/

namespace A025808.P14871890821386933888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (A097140 n + A059029 n).toNat

end

end A025808.P14871890821386933888

namespace A025808

/-- `A025840(A097140(n)+A059029(n))` -/
def P14871890821386933888.Spec : Prop :=
  ∀ n, P14871890821386933888.a n = A025808 n

end A025808

/-! ## A025808.P11196720720111421765

`A025840(A159966(n)+A004525(n))`
-/

namespace A025808.P11196720720111421765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (A159966 n + A004525 n).toNat

end

end A025808.P11196720720111421765

namespace A025808

/-- `A025840(A159966(n)+A004525(n))` -/
def P11196720720111421765.Spec : Prop :=
  ∀ n, P11196720720111421765.a n = A025808 n

end A025808

/-! ## A025808.P10079223660270245536

`A025840(A016789(n)-A166517(n))`
-/

namespace A025808.P10079223660270245536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (A016789 n - A166517 n).toNat

end

end A025808.P10079223660270245536

namespace A025808

/-- `A025840(A016789(n)-A166517(n))` -/
def P10079223660270245536.Spec : Prop :=
  ∀ n, P10079223660270245536.a n = A025808 n

end A025808

/-! ## A025808.P4565149385960755760

`A025840(A166517(n+2))`
-/

namespace A025808.P4565149385960755760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (A166517 (n + 2)).toNat

end

end A025808.P4565149385960755760

namespace A025808

/-- `A025840(A166517(n+2))` -/
def P4565149385960755760.Spec : Prop :=
  ∀ n, P4565149385960755760.a n = A025808 n

end A025808

/-! ## A025808.P11833796056431559041

`A025840(record[A166517(n)]-A166517(n))`
-/

namespace A025808.P11833796056431559041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A166517 n).toNat

end

end A025808.P11833796056431559041

namespace A025808

/-- `A025840(record[A166517(n)]-A166517(n))` -/
def P11833796056431559041.Spec : Prop :=
  ∀ n, P11833796056431559041.a n = A025808 n

end A025808

/-!
# A025809: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^9)).

The programs for A025809, the canonical program `A025809.P4265674947462957534` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025809 has offset 0).

The definition of A025809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^5+x^7-x^9+x^11+x^14-x^16))` (program `A025809.P4265674947462957534`, by `A025809.P4265674947462957534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025809.P4265674947462957534

`ogf(1/(1-x^2-x^5+x^7-x^9+x^11+x^14-x^16))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025809

/-- `ogf(1/(1-x^2-x^5+x^7-x^9+x^11+x^14-x^16))` -/
def P4265674947462957534.Spec : Prop :=
  ∀ n, P4265674947462957534.a n = A025809 n

theorem P4265674947462957534.correct : P4265674947462957534.Spec := by
  intro n
  simp only [A025809]

end A025809

/-! ## A025809.P11486427593988040997

`A025779(n)-a(n-1)` with `a(0)=1`
-/

namespace A025809.P11486427593988040997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025779 n - a (n - 1)

end

end A025809.P11486427593988040997

namespace A025809

/-- `A025779(n)-a(n-1)` -/
def P11486427593988040997.Spec : Prop :=
  ∀ n, P11486427593988040997.a n = A025809 n

end A025809

/-! ## A025809.P1358960210496168143

`A025823(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025809.P1358960210496168143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025823 (2 * n) - a (n - 1)

end

end A025809.P1358960210496168143

namespace A025809

/-- `A025823(2*n)-a(n-1)` -/
def P1358960210496168143.Spec : Prop :=
  ∀ n, P1358960210496168143.a n = A025809 n

end A025809

/-! ## A025809.P1234404175712382217

`A025893(Δ[n²])+A025878(n)`
-/

namespace A025809.P1234404175712382217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A025878 n

end

end A025809.P1234404175712382217

namespace A025809

/-- `A025893(Δ[n²])+A025878(n)` -/
def P1234404175712382217.Spec : Prop :=
  ∀ n, P1234404175712382217.a n = A025809 n

end A025809

/-! ## A025809.P14308030212360427734

`A025924(2*n)+A025893(2*n+1)`
-/

namespace A025809.P14308030212360427734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (2 * n) + A025893 (2 * n + 1)

end

end A025809.P14308030212360427734

namespace A025809

/-- `A025924(2*n)+A025893(2*n+1)` -/
def P14308030212360427734.Spec : Prop :=
  ∀ n, P14308030212360427734.a n = A025809 n

end A025809

/-! ## A025809.P15481789259693601625

`A029369(2*n)-A029369(2*n+1)`
-/

namespace A025809.P15481789259693601625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029369 (2 * n) - A029369 (2 * n + 1)

end

end A025809.P15481789259693601625

namespace A025809

/-- `A029369(2*n)-A029369(2*n+1)` -/
def P15481789259693601625.Spec : Prop :=
  ∀ n, P15481789259693601625.a n = A025809 n

end A025809

/-! ## A025809.P11666335856105815789

`A029102(2*n+1)+A025924(2*n)-A029102(2*n)`
-/

namespace A025809.P11666335856105815789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029102 (2 * n + 1) + (A025924 (2 * n) - A029102 (2 * n))

end

end A025809.P11666335856105815789

namespace A025809

/-- `A029102(2*n+1)+A025924(2*n)-A029102(2*n)` -/
def P11666335856105815789.Spec : Prop :=
  ∀ n, P11666335856105815789.a n = A025809 n

end A025809

/-! ## A025809.P14719198782603904092

`A029354(2*n)-A029354(2*n+3)`
-/

namespace A025809.P14719198782603904092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 (2 * n) - A029354 (2 * n + 3)

end

end A025809.P14719198782603904092

namespace A025809

/-- `A029354(2*n)-A029354(2*n+3)` -/
def P14719198782603904092.Spec : Prop :=
  ∀ n, P14719198782603904092.a n = A025809 n

end A025809

/-! ## A025809.P4687544416645172154

`A029014(n)-A029204(A005408(n+1))`
-/

namespace A025809.P4687544416645172154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029014 n - A029204 (A005408 (n + 1)).toNat

end

end A025809.P4687544416645172154

namespace A025809

/-- `A029014(n)-A029204(A005408(n+1))` -/
def P4687544416645172154.Spec : Prop :=
  ∀ n, P4687544416645172154.a n = A025809 n

end A025809

/-! ## A025809.P15672354019938711475

`A025887(2*n+5)`
-/

namespace A025809.P15672354019938711475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025887 (2 * n + 5)

end

end A025809.P15672354019938711475

namespace A025809

/-- `A025887(2*n+5)` -/
def P15672354019938711475.Spec : Prop :=
  ∀ n, P15672354019938711475.a n = A025809 n

end A025809

/-! ## A025809.P17087672460775696848

`Δ[A029204(2*n+3)]`
-/

namespace A025809.P17087672460775696848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025809.P17087672460775696848

namespace A025809

/-- `Δ[A029204(2*n+3)]` -/
def P17087672460775696848.Spec : Prop :=
  ∀ n, P17087672460775696848.a n = A025809 n

end A025809

/-! ## A025809.P9008450774571446835

`Δ[A029188(2*n+7)]`
-/

namespace A025809.P9008450774571446835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029188 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025809.P9008450774571446835

namespace A025809

/-- `Δ[A029188(2*n+7)]` -/
def P9008450774571446835.Spec : Prop :=
  ∀ n, P9008450774571446835.a n = A025809 n

end A025809

/-!
# A025810: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^10)).

The programs for A025810, the canonical program `A025810.P3492397037284695369` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025810 has offset 0).

The definition of A025810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^5+x^7-x^10+x^12+x^15-x^17))` (program `A025810.P3492397037284695369`, by `A025810.P3492397037284695369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025810.P3492397037284695369

`ogf(1/(1-x^2-x^5+x^7-x^10+x^12+x^15-x^17))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025810

/-- `ogf(1/(1-x^2-x^5+x^7-x^10+x^12+x^15-x^17))` -/
def P3492397037284695369.Spec : Prop :=
  ∀ n, P3492397037284695369.a n = A025810 n

theorem P3492397037284695369.correct : P3492397037284695369.Spec := by
  intro n
  simp only [A025810]

end A025810

/-! ## A025810.P3393383735508697475

`a(n-10)+A008616(n)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1`
-/

namespace A025810.P3393383735508697475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 1, 1, 1, 1, 1] fun n a =>
  a (n - 10) + A008616 n

end

end A025810.P3393383735508697475

namespace A025810

/-- `a(n-10)+A008616(n)` -/
def P3393383735508697475.Spec : Prop :=
  ∀ n, P3393383735508697475.a n = A025810 n

end A025810

/-! ## A025810.P13565966924086361875

`A000217(A008616(n))`
-/

namespace A025810.P13565966924086361875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008616 n).toNat

end

end A025810.P13565966924086361875

namespace A025810

/-- `A000217(A008616(n))` -/
def P13565966924086361875.Spec : Prop :=
  ∀ n, P13565966924086361875.a n = A025810 n

end A025810

/-! ## A025810.P8187255984798188615

`floor((floor(n/5)/2+1)²)-a(n-1)` with `a(0)=1`
-/

namespace A025810.P8187255984798188615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((⌊(n : ℚ) / 5⌋ : ℚ) / 2 + 1) ^ 2⌋ - a (n - 1)

end

end A025810.P8187255984798188615

namespace A025810

/-- `floor((floor(n/5)/2+1)²)-a(n-1)` -/
def P8187255984798188615.Spec : Prop :=
  ∀ n, P8187255984798188615.a n = A025810 n

end A025810

/-! ## A025810.P14433969274968072869

`A000217(Δ[round(((n+3)/2)²/5)])`
-/

namespace A025810.P14433969274968072869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3 : ℚ) / 2) ^ 2 / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n).toNat

end

end A025810.P14433969274968072869

namespace A025810

/-- `A000217(Δ[round(((n+3)/2)²/5)])` -/
def P14433969274968072869.Spec : Prop :=
  ∀ n, P14433969274968072869.a n = A025810 n

end A025810

/-! ## A025810.P3146194914513293158

`A002378(Δ[round(((n+3)/2)²/5)])/2`
-/

namespace A025810.P3146194914513293158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3 : ℚ) / 2) ^ 2 / 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A025810.P3146194914513293158

namespace A025810

/-- `A002378(Δ[round(((n+3)/2)²/5)])/2` -/
def P3146194914513293158.Spec : Prop :=
  ∀ n, P3146194914513293158.a n = (A025810 n : ℚ)

end A025810

/-! ## A025810.P5506224050339151063

`A161680(A008616(n)+1)`
-/

namespace A025810.P5506224050339151063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A008616 n + 1).toNat

end

end A025810.P5506224050339151063

namespace A025810

/-- `A161680(A008616(n)+1)` -/
def P5506224050339151063.Spec : Prop :=
  ∀ n, P5506224050339151063.a n = A025810 n

end A025810

/-! ## A025810.P2420554968868630464

`∑{d}[A008616(n), A007438(#)]`
-/

namespace A025810.P2420554968868630464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007438 d

end

end A025810.P2420554968868630464

namespace A025810

/-- `∑{d}[A008616(n), A007438(#)]` -/
def P2420554968868630464.Spec : Prop :=
  ∀ n, P2420554968868630464.a n = A025810 n

end A025810

/-! ## A025810.P8606650907429004210

`A001971(2*A008616(n)+1)`
-/

namespace A025810.P8606650907429004210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * A008616 n + 1).toNat

end

end A025810.P8606650907429004210

namespace A025810

/-- `A001971(2*A008616(n)+1)` -/
def P8606650907429004210.Spec : Prop :=
  ∀ n, P8606650907429004210.a n = A025810 n

end A025810

/-! ## A025810.P1831667474335626028

`A001971(A008616(n)+A008616(n)+1)`
-/

namespace A025810.P1831667474335626028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A008616 n + (A008616 n + 1)).toNat

end

end A025810.P1831667474335626028

namespace A025810

/-- `A001971(A008616(n)+A008616(n)+1)` -/
def P1831667474335626028.Spec : Prop :=
  ∀ n, P1831667474335626028.a n = A025810 n

end A025810

/-! ## A025810.P11999291366374190807

`A187243(n+1)+A000008(n)-A000008(n+1)`
-/

namespace A025810.P11999291366374190807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187243 (n + 1) + (A000008 n - A000008 (n + 1))

end

end A025810.P11999291366374190807

namespace A025810

/-- `A187243(n+1)+A000008(n)-A000008(n+1)` -/
def P11999291366374190807.Spec : Prop :=
  ∀ n, P11999291366374190807.a n = A025810 n

end A025810

/-! ## A025810.P12235865785741770792

`C(A165190(2*n)+1, 2)`
-/

namespace A025810.P12235865785741770792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A165190 (2 * n) + 1).toNat 2

end

end A025810.P12235865785741770792

namespace A025810

/-- `C(A165190(2*n)+1, 2)` -/
def P12235865785741770792.Spec : Prop :=
  ∀ n, (P12235865785741770792.a n : ℤ) = A025810 n

end A025810

/-! ## A025810.P3806027459401156648

`A014682(A008616(n)+A008616(n)²)`
-/

namespace A025810.P3806027459401156648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A008616 n + A008616 n ^ 2).toNat

end

end A025810.P3806027459401156648

namespace A025810

/-- `A014682(A008616(n)+A008616(n)²)` -/
def P3806027459401156648.Spec : Prop :=
  ∀ n, P3806027459401156648.a n = A025810 n

end A025810

/-! ## A025810.P13510788517687789987

`A014682((A008616(n)+1)*A008616(n))`
-/

namespace A025810.P13510788517687789987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((A008616 n + 1) * A008616 n).toNat

end

end A025810.P13510788517687789987

namespace A025810

/-- `A014682((A008616(n)+1)*A008616(n))` -/
def P13510788517687789987.Spec : Prop :=
  ∀ n, P13510788517687789987.a n = A025810 n

end A025810

/-! ## A025810.P9350053030191577206

`A001281(A008616(n)+A008616(n)²)`
-/

namespace A025810.P9350053030191577206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A008616 n + A008616 n ^ 2).toNat

end

end A025810.P9350053030191577206

namespace A025810

/-- `A001281(A008616(n)+A008616(n)²)` -/
def P9350053030191577206.Spec : Prop :=
  ∀ n, P9350053030191577206.a n = A025810 n

end A025810

/-! ## A025810.P1607635463094011053

`A004526(A008616(n)+A008616(n)²)`
-/

namespace A025810.P1607635463094011053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008616 n + A008616 n ^ 2).toNat

end

end A025810.P1607635463094011053

namespace A025810

/-- `A004526(A008616(n)+A008616(n)²)` -/
def P1607635463094011053.Spec : Prop :=
  ∀ n, P1607635463094011053.a n = A025810 n

end A025810

/-! ## A025810.P9227783120325106119

`A025480(A008616(n)+A008616(n)²)`
-/

namespace A025810.P9227783120325106119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A008616 n + A008616 n ^ 2).toNat

end

end A025810.P9227783120325106119

namespace A025810

/-- `A025480(A008616(n)+A008616(n)²)` -/
def P9227783120325106119.Spec : Prop :=
  ∀ n, P9227783120325106119.a n = A025810 n

end A025810

/-! ## A025810.P17457516612694344591

`A001281((A008616(n)+1)*A008616(n))`
-/

namespace A025810.P17457516612694344591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((A008616 n + 1) * A008616 n).toNat

end

end A025810.P17457516612694344591

namespace A025810

/-- `A001281((A008616(n)+1)*A008616(n))` -/
def P17457516612694344591.Spec : Prop :=
  ∀ n, P17457516612694344591.a n = A025810 n

end A025810

/-! ## A025810.P12614469297730211115

`A004526((A008616(n)+1)*A008616(n))`
-/

namespace A025810.P12614469297730211115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A008616 n + 1) * A008616 n).toNat

end

end A025810.P12614469297730211115

namespace A025810

/-- `A004526((A008616(n)+1)*A008616(n))` -/
def P12614469297730211115.Spec : Prop :=
  ∀ n, P12614469297730211115.a n = A025810 n

end A025810

/-! ## A025810.P16867283024890510589

`A025480((A008616(n)+1)*A008616(n))`
-/

namespace A025810.P16867283024890510589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ((A008616 n + 1) * A008616 n).toNat

end

end A025810.P16867283024890510589

namespace A025810

/-- `A025480((A008616(n)+1)*A008616(n))` -/
def P16867283024890510589.Spec : Prop :=
  ∀ n, P16867283024890510589.a n = A025810 n

end A025810

/-!
# A025811: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^11)).

The programs for A025811, the canonical program `A025811.P1157380247085523034` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025811 has offset 0).

The definition of A025811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^5+x^7-x^11+x^13+x^16-x^18))` (program `A025811.P1157380247085523034`, by `A025811.P1157380247085523034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025811.P1157380247085523034

`ogf(1/(1-x^2-x^5+x^7-x^11+x^13+x^16-x^18))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025811

/-- `ogf(1/(1-x^2-x^5+x^7-x^11+x^13+x^16-x^18))` -/
def P1157380247085523034.Spec : Prop :=
  ∀ n, P1157380247085523034.a n = A025811 n

theorem P1157380247085523034.correct : P1157380247085523034.Spec := by
  intro n
  simp only [A025811]

end A025811

/-! ## A025811.P16082711769066574415

`floor((9*n²+30*n+44)/44)-floor((n²+3*n+2)/5)`
-/

namespace A025811.P16082711769066574415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 * n ^ 2 + 30 * n + 44 : ℚ) / 44⌋ - ⌊(n ^ 2 + 3 * n + 2 : ℚ) / 5⌋

end

end A025811.P16082711769066574415

namespace A025811

/-- `floor((9*n²+30*n+44)/44)-floor((n²+3*n+2)/5)` -/
def P16082711769066574415.Spec : Prop :=
  ∀ n, P16082711769066574415.a n = A025811 n

end A025811

/-! ## A025811.P1836761061677719000

`Δ[A029187(2*n)-A029176(n)]`
-/

namespace A025811.P1836761061677719000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029187 (2 * n) - A029176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025811.P1836761061677719000

namespace A025811

/-- `Δ[A029187(2*n)-A029176(n)]` -/
def P1836761061677719000.Spec : Prop :=
  ∀ n, P1836761061677719000.a n = A025811 n

end A025811

/-! ## A025811.P13634534994624281552

`Δ[A029191(A144396(n+4))]`
-/

namespace A025811.P13634534994624281552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029191 (A144396 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025811.P13634534994624281552

namespace A025811

/-- `Δ[A029191(A144396(n+4))]` -/
def P13634534994624281552.Spec : Prop :=
  ∀ n, P13634534994624281552.a n = A025811 n

end A025811

/-! ## A025811.P897243178954366903

`Δ[A029239(2*n+5)+A029239(2*n+9)]`
-/

namespace A025811.P897243178954366903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (2 * n + 5) + A029239 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025811.P897243178954366903

namespace A025811

/-- `Δ[A029239(2*n+5)+A029239(2*n+9)]` -/
def P897243178954366903.Spec : Prop :=
  ∀ n, P897243178954366903.a n = A025811 n

end A025811

/-!
# A025812: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^12)).

The programs for A025812, the canonical program `A025812.P13579929129636097739` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025812 has offset 0).

The definition of A025812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^5+x^7-x^12+x^14+x^17-x^19))` (program `A025812.P13579929129636097739`, by `A025812.P13579929129636097739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025812.P13579929129636097739

`ogf(1/(1-x^2-x^5+x^7-x^12+x^14+x^17-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025812

/-- `ogf(1/(1-x^2-x^5+x^7-x^12+x^14+x^17-x^19))` -/
def P13579929129636097739.Spec : Prop :=
  ∀ n, P13579929129636097739.a n = A025812 n

theorem P13579929129636097739.correct : P13579929129636097739.Spec := by
  intro n
  simp only [A025812]

end A025812

/-! ## A025812.P2459836770074466205

`A025781(n)-a(n-1)` with `a(0)=1`
-/

namespace A025812.P2459836770074466205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025781 n - a (n - 1)

end

end A025812.P2459836770074466205

namespace A025812

/-- `A025781(n)-a(n-1)` -/
def P2459836770074466205.Spec : Prop :=
  ∀ n, P2459836770074466205.a n = A025812 n

end A025812

/-! ## A025812.P9112219897235200873

`A025864(abs(2-n))+A025864(n)`
-/

namespace A025812.P9112219897235200873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 |2 - (n : ℤ)|.toNat + A025864 n

end

end A025812.P9112219897235200873

namespace A025812

/-- `A025864(abs(2-n))+A025864(n)` -/
def P9112219897235200873.Spec : Prop :=
  ∀ n, P9112219897235200873.a n = A025812 n

end A025812

/-! ## A025812.P1138033462440003643

`Δ[A029015(n)-A029213(n)]`
-/

namespace A025812.P1138033462440003643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029015 n - A029213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025812.P1138033462440003643

namespace A025812

/-- `Δ[A029015(n)-A029213(n)]` -/
def P1138033462440003643.Spec : Prop :=
  ∀ n, P1138033462440003643.a n = A025812 n

end A025812

/-! ## A025812.P8794121901246821432

`A000217(A008616(n+2))-A025895(n+2)`
-/

namespace A025812.P8794121901246821432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008616 (n + 2)).toNat - A025895 (n + 2)

end

end A025812.P8794121901246821432

namespace A025812

/-- `A000217(A008616(n+2))-A025895(n+2)` -/
def P8794121901246821432.Spec : Prop :=
  ∀ n, P8794121901246821432.a n = A025812 n

end A025812

/-! ## A025812.P1999637373664308544

`Δ[A029191(2*n)-A029213(n)]`
-/

namespace A025812.P1999637373664308544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029191 (2 * n) - A029213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025812.P1999637373664308544

namespace A025812

/-- `Δ[A029191(2*n)-A029213(n)]` -/
def P1999637373664308544.Spec : Prop :=
  ∀ n, P1999637373664308544.a n = A025812 n

end A025812

/-! ## A025812.P14301787955274558551

`A120565(A029212(n))`
-/

namespace A025812.P14301787955274558551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A029212 n).toNat

end

end A025812.P14301787955274558551

namespace A025812

/-- `A120565(A029212(n))` -/
def P14301787955274558551.Spec : Prop :=
  ∀ n, P14301787955274558551.a n = A025812 n

end A025812

/-!
# A025813: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^7)).

The programs for A025813, the canonical program `A025813.P3517063386122300184` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025813 has offset 0).

The definition of A025813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^6-x^7+x^8+x^9+x^13-x^15))` (program `A025813.P3517063386122300184`, by `A025813.P3517063386122300184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025813.P3517063386122300184

`ogf(1/(1-x^2-x^6-x^7+x^8+x^9+x^13-x^15))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025813

/-- `ogf(1/(1-x^2-x^6-x^7+x^8+x^9+x^13-x^15))` -/
def P3517063386122300184.Spec : Prop :=
  ∀ n, P3517063386122300184.a n = A025813 n

theorem P3517063386122300184.correct : P3517063386122300184.Spec := by
  intro n
  simp only [A025813]

end A025813

/-! ## A025813.P3310359944944854188

`floor((n²+15*n+7*(n+8)*(-1)^n+119)/168)`
-/

namespace A025813.P3310359944944854188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 15 * n : ℤ) + (7 * (n + 8) : ℤ) * (-1) ^ n + 119 : ℚ) / 168⌋

end

end A025813.P3310359944944854188

namespace A025813

/-- `floor((n²+15*n+7*(n+8)*(-1)^n+119)/168)` -/
def P3310359944944854188.Spec : Prop :=
  ∀ n, P3310359944944854188.a n = A025813 n

end A025813

/-! ## A025813.P12316188926717488469

`A025782(n)-a(n-1)` with `a(0)=1`
-/

namespace A025813.P12316188926717488469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025782 n - a (n - 1)

end

end A025813.P12316188926717488469

namespace A025813

/-- `A025782(n)-a(n-1)` -/
def P12316188926717488469.Spec : Prop :=
  ∀ n, P12316188926717488469.a n = A025813 n

end A025813

/-! ## A025813.P5597876024540892691

`A008671(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A025813.P5597876024540892691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A008671 n - a (n - 3)

end

end A025813.P5597876024540892691

namespace A025813

/-- `A008671(n)-a(n-3)` -/
def P5597876024540892691.Spec : Prop :=
  ∀ n, P5597876024540892691.a n = A025813 n

end A025813

/-! ## A025813.P16176721693089045088

`A008622(abs(2-n))+A008622(n)`
-/

namespace A025813.P16176721693089045088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 |2 - (n : ℤ)|.toNat + A008622 n

end

end A025813.P16176721693089045088

namespace A025813

/-- `A008622(abs(2-n))+A008622(n)` -/
def P16176721693089045088.Spec : Prop :=
  ∀ n, P16176721693089045088.a n = A025813 n

end A025813

/-! ## A025813.P18378080457530608726

`A025829(n+1)-Δ[A008622(n)]`
-/

namespace A025813.P18378080457530608726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025829 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025813.P18378080457530608726

namespace A025813

/-- `A025829(n+1)-Δ[A008622(n)]` -/
def P18378080457530608726.Spec : Prop :=
  ∀ n, P18378080457530608726.a n = A025813 n

end A025813

/-! ## A025813.P8933771513301559924

`round(A008721(n+2)/3)`
-/

namespace A025813.P8933771513301559924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008721 (n + 2) : ℚ) / 3)

end

end A025813.P8933771513301559924

namespace A025813

/-- `round(A008721(n+2)/3)` -/
def P8933771513301559924.Spec : Prop :=
  ∀ n, P8933771513301559924.a n = A025813 n

end A025813

/-! ## A025813.P5487862180782975698

`A025871(2*n)`
-/

namespace A025813.P5487862180782975698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 (2 * n)

end

end A025813.P5487862180782975698

namespace A025813

/-- `A025871(2*n)` -/
def P5487862180782975698.Spec : Prop :=
  ∀ n, P5487862180782975698.a n = A025813 n

end A025813

/-! ## A025813.P18049591156316761763

`A025820(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025813.P18049591156316761763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025820 (2 * n) - a (n - 1)

end

end A025813.P18049591156316761763

namespace A025813

/-- `A025820(2*n)-a(n-1)` -/
def P18049591156316761763.Spec : Prop :=
  ∀ n, P18049591156316761763.a n = A025813 n

end A025813

/-! ## A025813.P10712771892245817593

`A029218(2*n)-A029261(2*n+1)`
-/

namespace A025813.P10712771892245817593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (2 * n) - A029261 (2 * n + 1)

end

end A025813.P10712771892245817593

namespace A025813

/-- `A029218(2*n)-A029261(2*n+1)` -/
def P10712771892245817593.Spec : Prop :=
  ∀ n, P10712771892245817593.a n = A025813 n

end A025813

/-! ## A025813.P1883550198082928928

`A029347(2*n)-A029229(2*n+1)`
-/

namespace A025813.P1883550198082928928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 (2 * n) - A029229 (2 * n + 1)

end

end A025813.P1883550198082928928

namespace A025813

/-- `A029347(2*n)-A029229(2*n+1)` -/
def P1883550198082928928.Spec : Prop :=
  ∀ n, P1883550198082928928.a n = A025813 n

end A025813

/-! ## A025813.P1492183364424643049

`A029351(2*n)-A029351(2*n+1)`
-/

namespace A025813.P1492183364424643049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029351 (2 * n) - A029351 (2 * n + 1)

end

end A025813.P1492183364424643049

namespace A025813

/-- `A029351(2*n)-A029351(2*n+1)` -/
def P1492183364424643049.Spec : Prop :=
  ∀ n, P1492183364424643049.a n = A025813 n

end A025813

/-! ## A025813.P3771798158344732969

`A025875(2*n)+A025885(2*n)-A025896(2*n)`
-/

namespace A025813.P3771798158344732969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (2 * n) + (A025885 (2 * n) - A025896 (2 * n))

end

end A025813.P3771798158344732969

namespace A025813

/-- `A025875(2*n)+A025885(2*n)-A025896(2*n)` -/
def P3771798158344732969.Spec : Prop :=
  ∀ n, P3771798158344732969.a n = A025813 n

end A025813

/-! ## A025813.P7758605064819698176

`A025911(2*n)+A029185(2*n)-A029214(2*n)`
-/

namespace A025813.P7758605064819698176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 (2 * n) + (A029185 (2 * n) - A029214 (2 * n))

end

end A025813.P7758605064819698176

namespace A025813

/-- `A025911(2*n)+A029185(2*n)-A029214(2*n)` -/
def P7758605064819698176.Spec : Prop :=
  ∀ n, P7758605064819698176.a n = A025813 n

end A025813

/-! ## A025813.P5802563719906724257

`A025849(2*n+1)+A029261(2*n)-A029261(2*n+1)`
-/

namespace A025813.P5802563719906724257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025849 (2 * n + 1) + (A029261 (2 * n) - A029261 (2 * n + 1))

end

end A025813.P5802563719906724257

namespace A025813

/-- `A025849(2*n+1)+A029261(2*n)-A029261(2*n+1)` -/
def P5802563719906724257.Spec : Prop :=
  ∀ n, P5802563719906724257.a n = A025813 n

end A025813

/-! ## A025813.P10365756233265358262

`A025870(2*n+1)+A029368(2*n)-A029368(2*n+1)`
-/

namespace A025813.P10365756233265358262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025870 (2 * n + 1) + (A029368 (2 * n) - A029368 (2 * n + 1))

end

end A025813.P10365756233265358262

namespace A025813

/-- `A025870(2*n+1)+A029368(2*n)-A029368(2*n+1)` -/
def P10365756233265358262.Spec : Prop :=
  ∀ n, P10365756233265358262.a n = A025813 n

end A025813

/-! ## A025813.P5194601553383493400

`A025916(2*n+1)+A029367(2*n)-A029367(2*n+1)`
-/

namespace A025813.P5194601553383493400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025916 (2 * n + 1) + (A029367 (2 * n) - A029367 (2 * n + 1))

end

end A025813.P5194601553383493400

namespace A025813

/-- `A025916(2*n+1)+A029367(2*n)-A029367(2*n+1)` -/
def P5194601553383493400.Spec : Prop :=
  ∀ n, P5194601553383493400.a n = A025813 n

end A025813

/-! ## A025813.P1551914621727941163

`Δ[A029214(2*n)-A008622(n)]`
-/

namespace A025813.P1551914621727941163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (2 * n) - A008622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025813.P1551914621727941163

namespace A025813

/-- `Δ[A029214(2*n)-A008622(n)]` -/
def P1551914621727941163.Spec : Prop :=
  ∀ n, P1551914621727941163.a n = A025813 n

end A025813

/-! ## A025813.P7236451371814657956

`A025911(2*n+3)+A025911(2*n)`
-/

namespace A025813.P7236451371814657956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 (2 * n + 3) + A025911 (2 * n)

end

end A025813.P7236451371814657956

namespace A025813

/-- `A025911(2*n+3)+A025911(2*n)` -/
def P7236451371814657956.Spec : Prop :=
  ∀ n, P7236451371814657956.a n = A025813 n

end A025813

/-! ## A025813.P2125960754777526140

`Δ[A029229(2*n+1)+A029229(2*n+5)]`
-/

namespace A025813.P2125960754777526140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (2 * n + 1) + A029229 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025813.P2125960754777526140

namespace A025813

/-- `Δ[A029229(2*n+1)+A029229(2*n+5)]` -/
def P2125960754777526140.Spec : Prop :=
  ∀ n, P2125960754777526140.a n = A025813 n

end A025813

/-!
# A025814: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^9)).

The programs for A025814, the canonical program `A025814.P16119641188382889604` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025814 has offset 0).

The definition of A025814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^6+x^8-x^9+x^11+x^15-x^17))` (program `A025814.P16119641188382889604`, by `A025814.P16119641188382889604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025814.P16119641188382889604

`ogf(1/(1-x^2-x^6+x^8-x^9+x^11+x^15-x^17))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025814

/-- `ogf(1/(1-x^2-x^6+x^8-x^9+x^11+x^15-x^17))` -/
def P16119641188382889604.Spec : Prop :=
  ∀ n, P16119641188382889604.a n = A025814 n

theorem P16119641188382889604.correct : P16119641188382889604.Spec := by
  intro n
  simp only [A025814]

end A025814

/-! ## A025814.P16412803364827486869

`floor((n²+13*n+144+9*(n+8)*(-1)^n+4*n*(n+2)%3)/216)`
-/

namespace A025814.P16412803364827486869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 13 * n + 144 : ℤ) + (9 * (n + 8) : ℤ) * (-1) ^ n + ((4 * n * ((n + 2) % 3) : ℕ) : ℤ) : ℚ) / 216⌋

end

end A025814.P16412803364827486869

namespace A025814

/-- `floor((n²+13*n+144+9*(n+8)*(-1)^n+4*n*(n+2)%3)/216)` -/
def P16412803364827486869.Spec : Prop :=
  ∀ n, P16412803364827486869.a n = A025814 n

end A025814

/-! ## A025814.P11611117855187492253

`A025798(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A025814.P11611117855187492253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025798 n - a (n - 3)

end

end A025814.P11611117855187492253

namespace A025814

/-- `A025798(n)-a(n-3)` -/
def P11611117855187492253.Spec : Prop :=
  ∀ n, P11611117855187492253.a n = A025814 n

end A025814

/-! ## A025814.P17635519385657957944

`A001399(floor(n/3))-a(n-1)` with `a(0)=1`
-/

namespace A025814.P17635519385657957944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001399 ⌊(n : ℚ) / 3⌋.toNat - a (n - 1)

end

end A025814.P17635519385657957944

namespace A025814

/-- `A001399(floor(n/3))-a(n-1)` -/
def P17635519385657957944.Spec : Prop :=
  ∀ n, P17635519385657957944.a n = A025814 n

end A025814

/-! ## A025814.P5835108046080210527

`A114209(A008611(n)+1)`
-/

namespace A025814.P5835108046080210527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (A008611 n + 1).toNat

end

end A025814.P5835108046080210527

namespace A025814

/-- `A114209(A008611(n)+1)` -/
def P5835108046080210527.Spec : Prop :=
  ∀ n, P5835108046080210527.a n = A025814 n

end A025814

/-! ## A025814.P6366098764710327184

`A001840(floor(sqrt(A008802(n))))`
-/

namespace A025814.P6366098764710327184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (Int.sqrt (A008802 n)).toNat

end

end A025814.P6366098764710327184

namespace A025814

/-- `A001840(floor(sqrt(A008802(n))))` -/
def P6366098764710327184.Spec : Prop :=
  ∀ n, P6366098764710327184.a n = A025814 n

end A025814

/-! ## A025814.P13049874348483149073

`A008731(abs(1-A008611(n)))`
-/

namespace A025814.P13049874348483149073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 |1 - A008611 n|.toNat

end

end A025814.P13049874348483149073

namespace A025814

/-- `A008731(abs(1-A008611(n)))` -/
def P13049874348483149073.Spec : Prop :=
  ∀ n, P13049874348483149073.a n = A025814 n

end A025814

/-! ## A025814.P5800539941137335633

`A114209(2-A302402(n)+n)`
-/

namespace A025814.P5800539941137335633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (2 - A302402 n + (n : ℤ)).toNat

end

end A025814.P5800539941137335633

namespace A025814

/-- `A114209(2-A302402(n)+n)` -/
def P5800539941137335633.Spec : Prop :=
  ∀ n, P5800539941137335633.a n = A025814 n

end A025814

/-! ## A025814.P4148636384049597639

`A114209(2-(A302402(n)-n))`
-/

namespace A025814.P4148636384049597639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (2 - (A302402 n - (n : ℤ))).toNat

end

end A025814.P4148636384049597639

namespace A025814

/-- `A114209(2-(A302402(n)-n))` -/
def P4148636384049597639.Spec : Prop :=
  ∀ n, P4148636384049597639.a n = A025814 n

end A025814

/-! ## A025814.P11224398013732230827

`A008799(A165754(A008611(n)))`
-/

namespace A025814.P11224398013732230827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (A165754 (A008611 n).toNat).toNat

end

end A025814.P11224398013732230827

namespace A025814

/-- `A008799(A165754(A008611(n)))` -/
def P11224398013732230827.Spec : Prop :=
  ∀ n, P11224398013732230827.a n = A025814 n

end A025814

/-! ## A025814.P14766880466881167165

`A008731(abs(A024000(A008611(n))))`
-/

namespace A025814.P14766880466881167165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 |A024000 (A008611 n).toNat|.toNat

end

end A025814.P14766880466881167165

namespace A025814

/-- `A008731(abs(A024000(A008611(n))))` -/
def P14766880466881167165.Spec : Prop :=
  ∀ n, P14766880466881167165.a n = A025814 n

end A025814

/-! ## A025814.P15864429600231931531

`A025825(n)+A005044(A008611(n))`
-/

namespace A025814.P15864429600231931531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025825 n + A005044 (A008611 n).toNat

end

end A025814.P15864429600231931531

namespace A025814

/-- `A025825(n)+A005044(A008611(n))` -/
def P15864429600231931531.Spec : Prop :=
  ∀ n, P15864429600231931531.a n = A025814 n

end A025814

/-! ## A025814.P3978321050937906214

`A114209(Δ[A058212(n+5)])`
-/

namespace A025814.P3978321050937906214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (f1 (n + 1) - f1 n).toNat

end

end A025814.P3978321050937906214

namespace A025814

/-- `A114209(Δ[A058212(n+5)])` -/
def P3978321050937906214.Spec : Prop :=
  ∀ n, P3978321050937906214.a n = A025814 n

end A025814

/-! ## A025814.P3010844677355163793

`A025874(2*n)`
-/

namespace A025814.P3010844677355163793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 (2 * n)

end

end A025814.P3010844677355163793

namespace A025814

/-- `A025874(2*n)` -/
def P3010844677355163793.Spec : Prop :=
  ∀ n, P3010844677355163793.a n = A025814 n

end A025814

/-! ## A025814.P12330934407016569618

`A025825(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025814.P12330934407016569618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025825 (2 * n) - a (n - 1)

end

end A025814.P12330934407016569618

namespace A025814

/-- `A025825(2*n)-a(n-1)` -/
def P12330934407016569618.Spec : Prop :=
  ∀ n, P12330934407016569618.a n = A025814 n

end A025814

/-! ## A025814.P9089750145383302761

`A114209(A008612(2*n)+1)`
-/

namespace A025814.P9089750145383302761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (A008612 (2 * n) + 1).toNat

end

end A025814.P9089750145383302761

namespace A025814

/-- `A114209(A008612(2*n)+1)` -/
def P9089750145383302761.Spec : Prop :=
  ∀ n, P9089750145383302761.a n = A025814 n

end A025814

/-! ## A025814.P12629669527335977695

`A029371(2*n)-A029371(2*n+1)`
-/

namespace A025814.P12629669527335977695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029371 (2 * n) - A029371 (2 * n + 1)

end

end A025814.P12629669527335977695

namespace A025814

/-- `A029371(2*n)-A029371(2*n+1)` -/
def P12629669527335977695.Spec : Prop :=
  ∀ n, P12629669527335977695.a n = A025814 n

end A025814

/-! ## A025814.P3810910137421838048

`A025864(2*n)+A025914(2*n)-A025883(2*n)`
-/

namespace A025814.P3810910137421838048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 (2 * n) + (A025914 (2 * n) - A025883 (2 * n))

end

end A025814.P3810910137421838048

namespace A025814

/-- `A025864(2*n)+A025914(2*n)-A025883(2*n)` -/
def P3810910137421838048.Spec : Prop :=
  ∀ n, P3810910137421838048.a n = A025814 n

end A025814

/-! ## A025814.P16758527009026697784

`A025920(2*n)+A029190(2*n)-A029219(2*n)`
-/

namespace A025814.P16758527009026697784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 (2 * n) + (A029190 (2 * n) - A029219 (2 * n))

end

end A025814.P16758527009026697784

namespace A025814

/-- `A025920(2*n)+A029190(2*n)-A029219(2*n)` -/
def P16758527009026697784.Spec : Prop :=
  ∀ n, P16758527009026697784.a n = A025814 n

end A025814

/-! ## A025814.P2386337343679200436

`A029190(2*n)+A029375(2*n)-A029188(2*n)`
-/

namespace A025814.P2386337343679200436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 (2 * n) + (A029375 (2 * n) - A029188 (2 * n))

end

end A025814.P2386337343679200436

namespace A025814

/-- `A029190(2*n)+A029375(2*n)-A029188(2*n)` -/
def P2386337343679200436.Spec : Prop :=
  ∀ n, P2386337343679200436.a n = A025814 n

end A025814

/-!
# A025815: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^11)).

The programs for A025815, the canonical program `A025815.P16191651827028402568` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025815 has offset 0).

The definition of A025815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^6+x^8-x^11+x^13+x^17-x^19))` (program `A025815.P16191651827028402568`, by `A025815.P16191651827028402568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025815.P15445378098046673546

`floor((n²+19*n+210+(11*n+102)*(-1)^n)/264)`
-/

namespace A025815.P15445378098046673546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 19 * n + 210 : ℤ) + (11 * n + 102 : ℤ) * (-1) ^ n : ℚ) / 264⌋

end

end A025815.P15445378098046673546

namespace A025815

/-- `floor((n²+19*n+210+(11*n+102)*(-1)^n)/264)` -/
def P15445378098046673546.Spec : Prop :=
  ∀ n, P15445378098046673546.a n = A025815 n

end A025815

/-! ## A025815.P16191651827028402568

`ogf(1/(1-x^2-x^6+x^8-x^11+x^13+x^17-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025815

/-- `ogf(1/(1-x^2-x^6+x^8-x^11+x^13+x^17-x^19))` -/
def P16191651827028402568.Spec : Prop :=
  ∀ n, P16191651827028402568.a n = A025815 n

theorem P16191651827028402568.correct : P16191651827028402568.Spec := by
  intro n
  simp only [A025815]

end A025815

/-! ## A025815.P3493900775228971347

`A025783(n)-a(n-1)` with `a(0)=1`
-/

namespace A025815.P3493900775228971347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025783 n - a (n - 1)

end

end A025815.P3493900775228971347

namespace A025815

/-- `A025783(n)-a(n-1)` -/
def P3493900775228971347.Spec : Prop :=
  ∀ n, P3493900775228971347.a n = A025815 n

end A025815

/-! ## A025815.P5359163142603871915

`A025800(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A025815.P5359163142603871915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025800 n - a (n - 3)

end

end A025815.P5359163142603871915

namespace A025815

/-- `A025800(n)-a(n-3)` -/
def P5359163142603871915.Spec : Prop :=
  ∀ n, P5359163142603871915.a n = A025815 n

end A025815

/-! ## A025815.P17616386964931866660

`A025855(A168197(n+1))`
-/

namespace A025815.P17616386964931866660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025855 (A168197 (n + 1)).toNat

end

end A025815.P17616386964931866660

namespace A025815

/-- `A025855(A168197(n+1))` -/
def P17616386964931866660.Spec : Prop :=
  ∀ n, P17616386964931866660.a n = A025815 n

end A025815

/-! ## A025815.P2506421265003726704

`A025875(2*n)`
-/

namespace A025815.P2506421265003726704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (2 * n)

end

end A025815.P2506421265003726704

namespace A025815

/-- `A025875(2*n)` -/
def P2506421265003726704.Spec : Prop :=
  ∀ n, P2506421265003726704.a n = A025815 n

end A025815

/-! ## A025815.P8250733695856163866

`A025827(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025815.P8250733695856163866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025827 (2 * n) - a (n - 1)

end

end A025815.P8250733695856163866

namespace A025815

/-- `A025827(2*n)-a(n-1)` -/
def P8250733695856163866.Spec : Prop :=
  ∀ n, P8250733695856163866.a n = A025815 n

end A025815

/-! ## A025815.P17340884845460941795

`or(char[2], A025875(A008585(n)-n))`
-/

namespace A025815.P17340884845460941795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A025875 (A008585 n - (n : ℤ)).toNat)

end

end A025815.P17340884845460941795

namespace A025815

/-- `or(char[2], A025875(A008585(n)-n))` -/
def P17340884845460941795.Spec : Prop :=
  ∀ n, P17340884845460941795.a n = A025815 n

end A025815

/-! ## A025815.P16296924331834944067

`A029346(2*n)-A029357(2*n+1)`
-/

namespace A025815.P16296924331834944067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029346 (2 * n) - A029357 (2 * n + 1)

end

end A025815.P16296924331834944067

namespace A025815

/-- `A029346(2*n)-A029357(2*n+1)` -/
def P16296924331834944067.Spec : Prop :=
  ∀ n, P16296924331834944067.a n = A025815 n

end A025815

/-! ## A025815.P2137283215614362776

`A029377(2*n)-A029377(2*n+1)`
-/

namespace A025815.P2137283215614362776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 (2 * n) - A029377 (2 * n + 1)

end

end A025815.P2137283215614362776

namespace A025815

/-- `A029377(2*n)-A029377(2*n+1)` -/
def P2137283215614362776.Spec : Prop :=
  ∀ n, P2137283215614362776.a n = A025815 n

end A025815

/-! ## A025815.P4487953330112867776

`gcd(A000038(n), A025875(A005843(n)))`
-/

namespace A025815.P4487953330112867776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A025875 (A005843 n).toNat)

end

end A025815.P4487953330112867776

namespace A025815

/-- `gcd(A000038(n), A025875(A005843(n)))` -/
def P4487953330112867776.Spec : Prop :=
  ∀ n, (P4487953330112867776.a n : ℤ) = A025815 n

end A025815

/-! ## A025815.P18136062901146959861

`A029373(2*n)-A029373(2*n+3)`
-/

namespace A025815.P18136062901146959861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029373 (2 * n) - A029373 (2 * n + 3)

end

end A025815.P18136062901146959861

namespace A025815

/-- `A029373(2*n)-A029373(2*n+3)` -/
def P18136062901146959861.Spec : Prop :=
  ∀ n, P18136062901146959861.a n = A025815 n

end A025815

/-! ## A025815.P1323569045936816159

`A235145(A007318(n))+A025875(n+n)`
-/

namespace A025815.P1323569045936816159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A007318 n).toNat + A025875 (n + n)

end

end A025815.P1323569045936816159

namespace A025815

/-- `A235145(A007318(n))+A025875(n+n)` -/
def P1323569045936816159.Spec : Prop :=
  ∀ n, P1323569045936816159.a n = A025815 n

end A025815

/-! ## A025815.P7448596848840397962

`A025875(A005843(n))^A014963(∑[n+1])`
-/

namespace A025815.P7448596848840397962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025875 (A005843 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A025815.P7448596848840397962

namespace A025815

/-- `A025875(A005843(n))^A014963(∑[n+1])` -/
def P7448596848840397962.Spec : Prop :=
  ∀ n, P7448596848840397962.a n = (A025815 n : ℚ)

end A025815

/-! ## A025815.P5348103761007904293

`A025875(n+n)^A174097(∑[n])`
-/

namespace A025815.P5348103761007904293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025875 (n + n) : ℚ) ^ (A174097 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A025815.P5348103761007904293

namespace A025815

/-- `A025875(n+n)^A174097(∑[n])` -/
def P5348103761007904293.Spec : Prop :=
  ∀ n, P5348103761007904293.a n = (A025815 n : ℚ)

end A025815

/-!
# A025816: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^8)).

The programs for A025816, the canonical program `A025816.P8252561764659000761` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025816 has offset 0).

The definition of A025816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^7-x^8+x^9+x^10+x^15-x^17))` (program `A025816.P8252561764659000761`, by `A025816.P8252561764659000761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025816.P8252561764659000761

`ogf(1/(1-x^2-x^7-x^8+x^9+x^10+x^15-x^17))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025816

/-- `ogf(1/(1-x^2-x^7-x^8+x^9+x^10+x^15-x^17))` -/
def P8252561764659000761.Spec : Prop :=
  ∀ n, P8252561764659000761.a n = A025816 n

theorem P8252561764659000761.correct : P8252561764659000761.Spec := by
  intro n
  simp only [A025816]

end A025816

/-! ## A025816.P2439650168319643290

`A025784(n)-a(n-1)` with `a(0)=1`
-/

namespace A025816.P2439650168319643290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025784 n - a (n - 1)

end

end A025816.P2439650168319643290

namespace A025816

/-- `A025784(n)-a(n-1)` -/
def P2439650168319643290.Spec : Prop :=
  ∀ n, P2439650168319643290.a n = A025816 n

end A025816

/-! ## A025816.P16040619001451932071

`A025867(abs(2-n))+A025867(n)`
-/

namespace A025816.P16040619001451932071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 |2 - (n : ℤ)|.toNat + A025867 n

end

end A025816.P16040619001451932071

namespace A025816

/-- `A025867(abs(2-n))+A025867(n)` -/
def P16040619001451932071.Spec : Prop :=
  ∀ n, P16040619001451932071.a n = A025816 n

end A025816

/-! ## A025816.P16697398686449306937

`A025785(n)-A025821(abs(A023443(n)))`
-/

namespace A025816.P16697398686449306937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 n - A025821 |A023443 n|.toNat

end

end A025816.P16697398686449306937

namespace A025816

/-- `A025785(n)-A025821(abs(A023443(n)))` -/
def P16697398686449306937.Spec : Prop :=
  ∀ n, P16697398686449306937.a n = A025816 n

end A025816

/-! ## A025816.P3735644862369818968

`A025785(n)-A025821(abs(A024000(n)))`
-/

namespace A025816.P3735644862369818968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 n - A025821 |A024000 n|.toNat

end

end A025816.P3735644862369818968

namespace A025816

/-- `A025785(n)-A025821(abs(A024000(n)))` -/
def P3735644862369818968.Spec : Prop :=
  ∀ n, P3735644862369818968.a n = A025816 n

end A025816

/-! ## A025816.P17627839751622568962

`A025785(n)+A025821(n)-A025789(n)`
-/

namespace A025816.P17627839751622568962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 n + (A025821 n - A025789 n)

end

end A025816.P17627839751622568962

namespace A025816

/-- `A025785(n)+A025821(n)-A025789(n)` -/
def P17627839751622568962.Spec : Prop :=
  ∀ n, P17627839751622568962.a n = A025816 n

end A025816

/-! ## A025816.P2169978690863296915

`A008622(n+2)+A008622(n)-A025897(n+2)`
-/

namespace A025816.P2169978690863296915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (n + 2) + (A008622 n - A025897 (n + 2))

end

end A025816.P2169978690863296915

namespace A025816

/-- `A008622(n+2)+A008622(n)-A025897(n+2)` -/
def P2169978690863296915.Spec : Prop :=
  ∀ n, P2169978690863296915.a n = A025816 n

end A025816

/-! ## A025816.P12837378091001172006

`A025860(n+2)+A025860(n)-A025882(n+2)`
-/

namespace A025816.P12837378091001172006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025860 (n + 2) + (A025860 n - A025882 (n + 2))

end

end A025816.P12837378091001172006

namespace A025816

/-- `A025860(n+2)+A025860(n)-A025882(n+2)` -/
def P12837378091001172006.Spec : Prop :=
  ∀ n, P12837378091001172006.a n = A025816 n

end A025816

/-!
# A025817: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)).

The programs for A025817, the canonical program `A025817.P1205445591314151574` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025817 has offset 0).

The definition of A025817 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^7+x^11+x^16-x^18))` (program `A025817.P1205445591314151574`, by `A025817.P1205445591314151574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025817.P1205445591314151574

`ogf(1/(1-x^2-x^7+x^11+x^16-x^18))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025817

/-- `ogf(1/(1-x^2-x^7+x^11+x^16-x^18))` -/
def P1205445591314151574.Spec : Prop :=
  ∀ n, P1205445591314151574.a n = A025817 n

theorem P1205445591314151574.correct : P1205445591314151574.Spec := by
  intro n
  simp only [A025817]

end A025817

/-! ## A025817.P16828165375691116228

`A025785(n)-a(n-1)` with `a(0)=1`
-/

namespace A025817.P16828165375691116228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025785 n - a (n - 1)

end

end A025817.P16828165375691116228

namespace A025817

/-- `A025785(n)-a(n-1)` -/
def P16828165375691116228.Spec : Prop :=
  ∀ n, P16828165375691116228.a n = A025817 n

end A025817

/-! ## A025817.P14079622540984627144

`abs(∑[A025785(n)*A033999(n)])`
-/

namespace A025817.P14079622540984627144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A025817.P14079622540984627144

namespace A025817

/-- `abs(∑[A025785(n)*A033999(n)])` -/
def P14079622540984627144.Spec : Prop :=
  ∀ n, P14079622540984627144.a n = A025817 n

end A025817

/-! ## A025817.P1928470045196776543

`A025868(abs(2-n))+A025868(n)`
-/

namespace A025817.P1928470045196776543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 |2 - (n : ℤ)|.toNat + A025868 n

end

end A025817.P1928470045196776543

namespace A025817

/-- `A025868(abs(2-n))+A025868(n)` -/
def P1928470045196776543.Spec : Prop :=
  ∀ n, P1928470045196776543.a n = A025817 n

end A025817

/-! ## A025817.P1352656204050690409

`∑[A025785(n)*A033999(n)]*A033999(n+6)`
-/

namespace A025817.P1352656204050690409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 6)

end

end A025817.P1352656204050690409

namespace A025817

/-- `∑[A025785(n)*A033999(n)]*A033999(n+6)` -/
def P1352656204050690409.Spec : Prop :=
  ∀ n, P1352656204050690409.a n = A025817 n

end A025817

/-! ## A025817.P11798979519536912665

`∑[A025785(n)*A033999(n)]*A057077(2*n)`
-/

namespace A025817.P11798979519536912665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A025817.P11798979519536912665

namespace A025817

/-- `∑[A025785(n)*A033999(n)]*A057077(2*n)` -/
def P11798979519536912665.Spec : Prop :=
  ∀ n, P11798979519536912665.a n = A025817 n

end A025817

/-! ## A025817.P3186466157471972124

`A025913(n)+A025910(2*n+3)`
-/

namespace A025817.P3186466157471972124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 n + A025910 (2 * n + 3)

end

end A025817.P3186466157471972124

namespace A025817

/-- `A025913(n)+A025910(2*n+3)` -/
def P3186466157471972124.Spec : Prop :=
  ∀ n, P3186466157471972124.a n = A025817 n

end A025817

/-! ## A025817.P16068931699497856028

`A025868(n)+Δ[A029359(2*n+1)]`
-/

namespace A025817.P16068931699497856028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 n + (f1 (n + 1) - f1 n)

end

end A025817.P16068931699497856028

namespace A025817

/-- `A025868(n)+Δ[A029359(2*n+1)]` -/
def P16068931699497856028.Spec : Prop :=
  ∀ n, P16068931699497856028.a n = A025817 n

end A025817

/-! ## A025817.P6743276668035585922

`Δ[A029359(2*n+1)+A029359(2*n+5)]`
-/

namespace A025817.P6743276668035585922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (2 * n + 1) + A029359 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025817.P6743276668035585922

namespace A025817

/-- `Δ[A029359(2*n+1)+A029359(2*n+5)]` -/
def P6743276668035585922.Spec : Prop :=
  ∀ n, P6743276668035585922.a n = A025817 n

end A025817

/-!
# A025818: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^10)).

The programs for A025818, the canonical program `A025818.P6356469320211480491` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025818 has offset 0).

The definition of A025818 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^7+x^9-x^10+x^12+x^17-x^19))` (program `A025818.P6356469320211480491`, by `A025818.P6356469320211480491.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025818.P15454355414421217280

`floor((n²+19*n+217+7*(n+9)*(-1)^n)/280)`
-/

namespace A025818.P15454355414421217280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 19 * n + 217 : ℤ) + (7 * (n + 9) : ℤ) * (-1) ^ n : ℚ) / 280⌋

end

end A025818.P15454355414421217280

namespace A025818

/-- `floor((n²+19*n+217+7*(n+9)*(-1)^n)/280)` -/
def P15454355414421217280.Spec : Prop :=
  ∀ n, P15454355414421217280.a n = A025818 n

end A025818

/-! ## A025818.P6356469320211480491

`ogf(1/(1-x^2-x^7+x^9-x^10+x^12+x^17-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025818

/-- `ogf(1/(1-x^2-x^7+x^9-x^10+x^12+x^17-x^19))` -/
def P6356469320211480491.Spec : Prop :=
  ∀ n, P6356469320211480491.a n = A025818 n

theorem P6356469320211480491.correct : P6356469320211480491.Spec := by
  intro n
  simp only [A025818]

end A025818

/-! ## A025818.P6182404294250472648

`A025786(n)-a(n-1)` with `a(0)=1`
-/

namespace A025818.P6182404294250472648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025786 n - a (n - 1)

end

end A025818.P6182404294250472648

namespace A025818

/-- `A025786(n)-a(n-1)` -/
def P6182404294250472648.Spec : Prop :=
  ∀ n, P6182404294250472648.a n = A025818 n

end A025818

/-! ## A025818.P7785628811028665575

`2*A029022(n)-∑[A025786(n)]`
-/

namespace A025818.P7785628811028665575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029022 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025818.P7785628811028665575

namespace A025818

/-- `2*A029022(n)-∑[A025786(n)]` -/
def P7785628811028665575.Spec : Prop :=
  ∀ n, P7785628811028665575.a n = A025818 n

end A025818

/-! ## A025818.P13692025032982838227

`A029108(n)-A029193(abs(A023443(n)))`
-/

namespace A025818.P13692025032982838227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029108 n - A029193 |A023443 n|.toNat

end

end A025818.P13692025032982838227

namespace A025818

/-- `A029108(n)-A029193(abs(A023443(n)))` -/
def P13692025032982838227.Spec : Prop :=
  ∀ n, P13692025032982838227.a n = A025818 n

end A025818

/-! ## A025818.P10980394053610040987

`Δ[∑[A025786(n)]-A029022(n)]`
-/

namespace A025818.P10980394053610040987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025786 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025818.P10980394053610040987

namespace A025818

/-- `Δ[∑[A025786(n)]-A029022(n)]` -/
def P10980394053610040987.Spec : Prop :=
  ∀ n, P10980394053610040987.a n = A025818 n

end A025818

/-! ## A025818.P11554531406739367713

`A025786(n+1)-Δ[A029022(n)]`
-/

namespace A025818.P11554531406739367713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025786 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025818.P11554531406739367713

namespace A025818

/-- `A025786(n+1)-Δ[A029022(n)]` -/
def P11554531406739367713.Spec : Prop :=
  ∀ n, P11554531406739367713.a n = A025818 n

end A025818

/-! ## A025818.P12805769840906093372

`A025799(n+2)-Δ[A008673(n+1)]`
-/

namespace A025818.P12805769840906093372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 (n + 2) - (f1 (n + 1) - f1 n)

end

end A025818.P12805769840906093372

namespace A025818

/-- `A025799(n+2)-Δ[A008673(n+1)]` -/
def P12805769840906093372.Spec : Prop :=
  ∀ n, P12805769840906093372.a n = A025818 n

end A025818

/-! ## A025818.P9631300885049962175

`round(A008721(n+4)/5)`
-/

namespace A025818.P9631300885049962175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008721 (n + 4) : ℚ) / 5)

end

end A025818.P9631300885049962175

namespace A025818

/-- `round(A008721(n+4)/5)` -/
def P9631300885049962175.Spec : Prop :=
  ∀ n, P9631300885049962175.a n = A025818 n

end A025818

/-!
# A025819: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^11)).

The programs for A025819, the canonical program `A025819.P2395654115288674813` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025819 has offset 0).

The definition of A025819 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^7+x^9-x^11+x^13+x^18-x^20))` (program `A025819.P2395654115288674813`, by `A025819.P2395654115288674813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025819.P2395654115288674813

`ogf(1/(1-x^2-x^7+x^9-x^11+x^13+x^18-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025819

/-- `ogf(1/(1-x^2-x^7+x^9-x^11+x^13+x^18-x^20))` -/
def P2395654115288674813.Spec : Prop :=
  ∀ n, P2395654115288674813.a n = A025819 n

theorem P2395654115288674813.correct : P2395654115288674813.Spec := by
  intro n
  simp only [A025819]

end A025819

/-! ## A025819.P6977151415599887602

`A025787(n)-a(n-1)` with `a(0)=1`
-/

namespace A025819.P6977151415599887602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025787 n - a (n - 1)

end

end A025819.P6977151415599887602

namespace A025819

/-- `A025787(n)-a(n-1)` -/
def P6977151415599887602.Spec : Prop :=
  ∀ n, P6977151415599887602.a n = A025819 n

end A025819

/-! ## A025819.P11309431328726699023

`A168201(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025819.P11309431328726699023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A168201 n + a (n - 2)

end

end A025819.P11309431328726699023

namespace A025819

/-- `A168201(n)+a(n-2)` -/
def P11309431328726699023.Spec : Prop :=
  ∀ n, P11309431328726699023.a n = A025819 n

end A025819

/-! ## A025819.P2006238338577709637

`A025870(abs(2-n))+A025870(n)`
-/

namespace A025819.P2006238338577709637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025870 |2 - (n : ℤ)|.toNat + A025870 n

end

end A025819.P2006238338577709637

namespace A025819

/-- `A025870(abs(2-n))+A025870(n)` -/
def P2006238338577709637.Spec : Prop :=
  ∀ n, P2006238338577709637.a n = A025819 n

end A025819

/-! ## A025819.P11076762606207294636

`A029202(n)+A029217(n)-A029193(n)`
-/

namespace A025819.P11076762606207294636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029202 n + (A029217 n - A029193 n)

end

end A025819.P11076762606207294636

namespace A025819

/-- `A029202(n)+A029217(n)-A029193(n)` -/
def P11076762606207294636.Spec : Prop :=
  ∀ n, P11076762606207294636.a n = A025819 n

end A025819

/-! ## A025819.P7214983800085042515

`A025907(2*n)+Δ[A029422(2*n+1)]`
-/

namespace A025819.P7214983800085042515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029422 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (2 * n) + (f1 (n + 1) - f1 n)

end

end A025819.P7214983800085042515

namespace A025819

/-- `A025907(2*n)+Δ[A029422(2*n+1)]` -/
def P7214983800085042515.Spec : Prop :=
  ∀ n, P7214983800085042515.a n = A025819 n

end A025819

/-! ## A025819.P13880099107701363582

`A025910(2*n+7)`
-/

namespace A025819.P13880099107701363582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025910 (2 * n + 7)

end

end A025819.P13880099107701363582

namespace A025819

/-- `A025910(2*n+7)` -/
def P13880099107701363582.Spec : Prop :=
  ∀ n, P13880099107701363582.a n = A025819 n

end A025819

/-! ## A025819.P3098302678262738410

`Δ[A029228(2*n+5)]`
-/

namespace A025819.P3098302678262738410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025819.P3098302678262738410

namespace A025819

/-- `Δ[A029228(2*n+5)]` -/
def P3098302678262738410.Spec : Prop :=
  ∀ n, P3098302678262738410.a n = A025819 n

end A025819

/-!
# A025820: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^12)).

The programs for A025820, the canonical program `A025820.P17058153913027779529` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025820 has offset 0).

The definition of A025820 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^7+x^9-x^12+x^14+x^19-x^21))` (program `A025820.P17058153913027779529`, by `A025820.P17058153913027779529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025820.P17058153913027779529

`ogf(1/(1-x^2-x^7+x^9-x^12+x^14+x^19-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025820

/-- `ogf(1/(1-x^2-x^7+x^9-x^12+x^14+x^19-x^21))` -/
def P17058153913027779529.Spec : Prop :=
  ∀ n, P17058153913027779529.a n = A025820 n

theorem P17058153913027779529.correct : P17058153913027779529.Spec := by
  intro n
  simp only [A025820]

end A025820

/-! ## A025820.P17691362645579192748

`A025788(n)-a(n-1)` with `a(0)=1`
-/

namespace A025820.P17691362645579192748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025788 n - a (n - 1)

end

end A025820.P17691362645579192748

namespace A025820

/-- `A025788(n)-a(n-1)` -/
def P17691362645579192748.Spec : Prop :=
  ∀ n, P17691362645579192748.a n = A025820 n

end A025820

/-! ## A025820.P5945491040173321139

`abs(∑[A025788(n)*A033999(n)])`
-/

namespace A025820.P5945491040173321139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025788 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A025820.P5945491040173321139

namespace A025820

/-- `abs(∑[A025788(n)*A033999(n)])` -/
def P5945491040173321139.Spec : Prop :=
  ∀ n, P5945491040173321139.a n = A025820 n

end A025820

/-! ## A025820.P8849678046655005054

`2*A029024(n)-∑[A025788(n)]`
-/

namespace A025820.P8849678046655005054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029024 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025820.P8849678046655005054

namespace A025820

/-- `2*A029024(n)-∑[A025788(n)]` -/
def P8849678046655005054.Spec : Prop :=
  ∀ n, P8849678046655005054.a n = A025820 n

end A025820

/-! ## A025820.P16154105183383846534

`A025825(n)+A025883(n)-A025893(n)`
-/

namespace A025820.P16154105183383846534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025825 n + (A025883 n - A025893 n)

end

end A025820.P16154105183383846534

namespace A025820

/-- `A025825(n)+A025883(n)-A025893(n)` -/
def P16154105183383846534.Spec : Prop :=
  ∀ n, P16154105183383846534.a n = A025820 n

end A025820

/-! ## A025820.P10049192232936173007

`A029160(n)+A029185(n)-A029142(n)`
-/

namespace A025820.P10049192232936173007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029160 n + (A029185 n - A029142 n)

end

end A025820.P10049192232936173007

namespace A025820

/-- `A029160(n)+A029185(n)-A029142(n)` -/
def P10049192232936173007.Spec : Prop :=
  ∀ n, P10049192232936173007.a n = A025820 n

end A025820

/-! ## A025820.P13413269887462827292

`A157142(n)%2*∑[A025788(n)*A033999(n)]`
-/

namespace A025820.P13413269887462827292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025788 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157142 n) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025820.P13413269887462827292

namespace A025820

/-- `A157142(n)%2*∑[A025788(n)*A033999(n)]` -/
def P13413269887462827292.Spec : Prop :=
  ∀ n, P13413269887462827292.a n = A025820 n

end A025820

/-! ## A025820.P14899995678560363282

`Δ[∑[A025788(n)]-A029024(n)]`
-/

namespace A025820.P14899995678560363282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025788 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025820.P14899995678560363282

namespace A025820

/-- `Δ[∑[A025788(n)]-A029024(n)]` -/
def P14899995678560363282.Spec : Prop :=
  ∀ n, P14899995678560363282.a n = A025820 n

end A025820

/-! ## A025820.P10384964031558106067

`A025788(n+1)-Δ[A029024(n)]`
-/

namespace A025820.P10384964031558106067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025788 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025820.P10384964031558106067

namespace A025820

/-- `A025788(n+1)-Δ[A029024(n)]` -/
def P10384964031558106067.Spec : Prop :=
  ∀ n, P10384964031558106067.a n = A025820 n

end A025820

/-! ## A025820.P207866113565980692

`A025819(n+1)-Δ[A029235(n)]`
-/

namespace A025820.P207866113565980692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025820.P207866113565980692

namespace A025820

/-- `A025819(n+1)-Δ[A029235(n)]` -/
def P207866113565980692.Spec : Prop :=
  ∀ n, P207866113565980692.a n = A025820 n

end A025820

/-! ## A025820.P640108328391517686

`A025819(n)-Δ[A029235(n)-A025819(n)]`
-/

namespace A025820.P640108328391517686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029235 n - A025819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 n - (f1 (n + 1) - f1 n)

end

end A025820.P640108328391517686

namespace A025820

/-- `A025819(n)-Δ[A029235(n)-A025819(n)]` -/
def P640108328391517686.Spec : Prop :=
  ∀ n, P640108328391517686.a n = A025820 n

end A025820

/-! ## A025820.P5411034177680569784

`Δ[A029228(A020742(n))-A029235(n)]`
-/

namespace A025820.P5411034177680569784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (A020742 n).toNat - A029235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025820.P5411034177680569784

namespace A025820

/-- `Δ[A029228(A020742(n))-A029235(n)]` -/
def P5411034177680569784.Spec : Prop :=
  ∀ n, P5411034177680569784.a n = A025820 n

end A025820

/-! ## A025820.P2940937913308923847

`A000196(∑[A025788(n)*A033999(n)]²)`
-/

namespace A025820.P2940937913308923847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025788 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A025820.P2940937913308923847

namespace A025820

/-- `A000196(∑[A025788(n)*A033999(n)]²)` -/
def P2940937913308923847.Spec : Prop :=
  ∀ n, P2940937913308923847.a n = A025820 n

end A025820

/-! ## A025820.P5338278668485037659

`A000196(∑[A025788(n)/A033999(n)]²)`
-/

namespace A025820.P5338278668485037659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025788 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A025820.P5338278668485037659

namespace A025820

/-- `A000196(∑[A025788(n)/A033999(n)]²)` -/
def P5338278668485037659.Spec : Prop :=
  ∀ n, P5338278668485037659.a n = A025820 n

end A025820

/-!
# A025821: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)).

The programs for A025821, the canonical program `A025821.P17594224153874796601` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025821 has offset 0).

The definition of A025821 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^8-x^9+x^10+x^11+x^17-x^19))` (program `A025821.P17594224153874796601`, by `A025821.P17594224153874796601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025821.P17594224153874796601

`ogf(1/(1-x^2-x^8-x^9+x^10+x^11+x^17-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025821

/-- `ogf(1/(1-x^2-x^8-x^9+x^10+x^11+x^17-x^19))` -/
def P17594224153874796601.Spec : Prop :=
  ∀ n, P17594224153874796601.a n = A025821 n

theorem P17594224153874796601.correct : P17594224153874796601.Spec := by
  intro n
  simp only [A025821]

end A025821

/-! ## A025821.P2677800712095994418

`A025789(n)-a(n-1)` with `a(0)=1`
-/

namespace A025821.P2677800712095994418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025789 n - a (n - 1)

end

end A025821.P2677800712095994418

namespace A025821

/-- `A025789(n)-a(n-1)` -/
def P2677800712095994418.Spec : Prop :=
  ∀ n, P2677800712095994418.a n = A025821 n

end A025821

/-! ## A025821.P5565359166564890543

`A025804(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A025821.P5565359166564890543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n a =>
  A025804 n - a (n - 4)

end

end A025821.P5565359166564890543

namespace A025821

/-- `A025804(n)-a(n-4)` -/
def P5565359166564890543.Spec : Prop :=
  ∀ n, P5565359166564890543.a n = A025821 n

end A025821

/-! ## A025821.P17849461204208268232

`abs(∑[A025789(n)*A033999(n)])`
-/

namespace A025821.P17849461204208268232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025789 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A025821.P17849461204208268232

namespace A025821

/-- `abs(∑[A025789(n)*A033999(n)])` -/
def P17849461204208268232.Spec : Prop :=
  ∀ n, P17849461204208268232.a n = A025821 n

end A025821

/-! ## A025821.P8392293560128689342

`A025872(abs(2-n))+A025872(n)`
-/

namespace A025821.P8392293560128689342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 |2 - (n : ℤ)|.toNat + A025872 n

end

end A025821.P8392293560128689342

namespace A025821

/-- `A025872(abs(2-n))+A025872(n)` -/
def P8392293560128689342.Spec : Prop :=
  ∀ n, P8392293560128689342.a n = A025821 n

end A025821

/-! ## A025821.P8555416658386112560

`A025789(n)+A025816(n)-A025785(n)`
-/

namespace A025821.P8555416658386112560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025789 n + (A025816 n - A025785 n)

end

end A025821.P8555416658386112560

namespace A025821

/-- `A025789(n)+A025816(n)-A025785(n)` -/
def P8555416658386112560.Spec : Prop :=
  ∀ n, P8555416658386112560.a n = A025821 n

end A025821

/-! ## A025821.P5358057094311389310

`A025785(n+1)-A025816(n+1)`
-/

namespace A025821.P5358057094311389310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 (n + 1) - A025816 (n + 1)

end

end A025821.P5358057094311389310

namespace A025821

/-- `A025785(n+1)-A025816(n+1)` -/
def P5358057094311389310.Spec : Prop :=
  ∀ n, P5358057094311389310.a n = A025821 n

end A025821

/-! ## A025821.P7348848669107177184

`A000196(∑[A025789(n)*A033999(n)]²)`
-/

namespace A025821.P7348848669107177184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025789 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A025821.P7348848669107177184

namespace A025821

/-- `A000196(∑[A025789(n)*A033999(n)]²)` -/
def P7348848669107177184.Spec : Prop :=
  ∀ n, P7348848669107177184.a n = A025821 n

end A025821

/-! ## A025821.P7567293281343384597

`A000196(∑[A025789(n)/A033999(n)]²)`
-/

namespace A025821.P7567293281343384597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025789 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A025821.P7567293281343384597

namespace A025821

/-- `A000196(∑[A025789(n)/A033999(n)]²)` -/
def P7567293281343384597.Spec : Prop :=
  ∀ n, P7567293281343384597.a n = A025821 n

end A025821

/-!
# A025822: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^11)).

The programs for A025822, the canonical program `A025822.P8162646908997571034` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025822 has offset 0).

The definition of A025822 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^8+x^10-x^11+x^13+x^19-x^21))` (program `A025822.P8162646908997571034`, by `A025822.P8162646908997571034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025822.P8162646908997571034

`ogf(1/(1-x^2-x^8+x^10-x^11+x^13+x^19-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025822

/-- `ogf(1/(1-x^2-x^8+x^10-x^11+x^13+x^19-x^21))` -/
def P8162646908997571034.Spec : Prop :=
  ∀ n, P8162646908997571034.a n = A025822 n

theorem P8162646908997571034.correct : P8162646908997571034.Spec := by
  intro n
  simp only [A025822]

end A025822

/-! ## A025822.P9451112755296168037

`A025790(n)-a(n-1)` with `a(0)=1`
-/

namespace A025822.P9451112755296168037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025790 n - a (n - 1)

end

end A025822.P9451112755296168037

namespace A025822

/-- `A025790(n)-a(n-1)` -/
def P9451112755296168037.Spec : Prop :=
  ∀ n, P9451112755296168037.a n = A025822 n

end A025822

/-! ## A025822.P13378765492645860957

`2*A029026(n)-∑[A025790(n)]`
-/

namespace A025822.P13378765492645860957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029026 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025822.P13378765492645860957

namespace A025822

/-- `2*A029026(n)-∑[A025790(n)]` -/
def P13378765492645860957.Spec : Prop :=
  ∀ n, P13378765492645860957.a n = A025822 n

end A025822

/-! ## A025822.P9607108844470618803

`A029187(n)+A029228(n)-A029181(n)`
-/

namespace A025822.P9607108844470618803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029187 n + (A029228 n - A029181 n)

end

end A025822.P9607108844470618803

namespace A025822

/-- `A029187(n)+A029228(n)-A029181(n)` -/
def P9607108844470618803.Spec : Prop :=
  ∀ n, P9607108844470618803.a n = A025822 n

end A025822

/-! ## A025822.P12182443523741102345

`A029206(n)+A029220(n)-A029194(n)`
-/

namespace A025822.P12182443523741102345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029206 n + (A029220 n - A029194 n)

end

end A025822.P12182443523741102345

namespace A025822

/-- `A029206(n)+A029220(n)-A029194(n)` -/
def P12182443523741102345.Spec : Prop :=
  ∀ n, P12182443523741102345.a n = A025822 n

end A025822

/-! ## A025822.P14939792037977731658

`Δ[A029023(n)-A029228(n)]`
-/

namespace A025822.P14939792037977731658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029023 n - A029228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025822.P14939792037977731658

namespace A025822

/-- `Δ[A029023(n)-A029228(n)]` -/
def P14939792037977731658.Spec : Prop :=
  ∀ n, P14939792037977731658.a n = A025822 n

end A025822

/-! ## A025822.P14782803069112079587

`Δ[∑[A025790(n)]-A029026(n)]`
-/

namespace A025822.P14782803069112079587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025790 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025822.P14782803069112079587

namespace A025822

/-- `Δ[∑[A025790(n)]-A029026(n)]` -/
def P14782803069112079587.Spec : Prop :=
  ∀ n, P14782803069112079587.a n = A025822 n

end A025822

/-! ## A025822.P14791770142818955486

`Δ[∑[A025819(n)]-A029228(n)]`
-/

namespace A025822.P14791770142818955486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025822.P14791770142818955486

namespace A025822

/-- `Δ[∑[A025819(n)]-A029228(n)]` -/
def P14791770142818955486.Spec : Prop :=
  ∀ n, P14791770142818955486.a n = A025822 n

end A025822

/-! ## A025822.P10249395093503772489

`A025790(n+1)-Δ[A029026(n)]`
-/

namespace A025822.P10249395093503772489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025790 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025822.P10249395093503772489

namespace A025822

/-- `A025790(n+1)-Δ[A029026(n)]` -/
def P10249395093503772489.Spec : Prop :=
  ∀ n, P10249395093503772489.a n = A025822 n

end A025822

/-! ## A025822.P4037780590171177233

`A025819(n+1)-Δ[A029228(n)]`
-/

namespace A025822.P4037780590171177233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025822.P4037780590171177233

namespace A025822

/-- `A025819(n+1)-Δ[A029228(n)]` -/
def P4037780590171177233.Spec : Prop :=
  ∀ n, P4037780590171177233.a n = A025822 n

end A025822

/-! ## A025822.P17572973513711597272

`A025805(n+4)+A029187(n)-A029187(n+4)`
-/

namespace A025822.P17572973513711597272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025805 (n + 4) + (A029187 n - A029187 (n + 4))

end

end A025822.P17572973513711597272

namespace A025822

/-- `A025805(n+4)+A029187(n)-A029187(n+4)` -/
def P17572973513711597272.Spec : Prop :=
  ∀ n, P17572973513711597272.a n = A025822 n

end A025822

/-! ## A025822.P2096280943961608939

`A025858(A168197(n+1))`
-/

namespace A025822.P2096280943961608939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025858 (A168197 (n + 1)).toNat

end

end A025822.P2096280943961608939

namespace A025822

/-- `A025858(A168197(n+1))` -/
def P2096280943961608939.Spec : Prop :=
  ∀ n, P2096280943961608939.a n = A025822 n

end A025822

/-! ## A025822.P2257639608920901287

`Δ[A029228(A020742(n))-A029228(n)]`
-/

namespace A025822.P2257639608920901287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (A020742 n).toNat - A029228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025822.P2257639608920901287

namespace A025822

/-- `Δ[A029228(A020742(n))-A029228(n)]` -/
def P2257639608920901287.Spec : Prop :=
  ∀ n, P2257639608920901287.a n = A025822 n

end A025822

/-!
# A025823: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^10)).

The programs for A025823, the canonical program `A025823.P2313138981244158637` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025823 has offset 0).

The definition of A025823 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^9-x^10+x^11+x^12+x^19-x^21))` (program `A025823.P2313138981244158637`, by `A025823.P2313138981244158637.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025823.P2313138981244158637

`ogf(1/(1-x^2-x^9-x^10+x^11+x^12+x^19-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025823

/-- `ogf(1/(1-x^2-x^9-x^10+x^11+x^12+x^19-x^21))` -/
def P2313138981244158637.Spec : Prop :=
  ∀ n, P2313138981244158637.a n = A025823 n

theorem P2313138981244158637.correct : P2313138981244158637.Spec := by
  intro n
  simp only [A025823]

end A025823

/-! ## A025823.P4343682960441012621

`A025791(n)-a(n-1)` with `a(0)=1`
-/

namespace A025823.P4343682960441012621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025791 n - a (n - 1)

end

end A025823.P4343682960441012621

namespace A025823

/-- `A025791(n)-a(n-1)` -/
def P4343682960441012621.Spec : Prop :=
  ∀ n, P4343682960441012621.a n = A025823 n

end A025823

/-! ## A025823.P1335691272625039910

`A025792(n)-A025826(abs(A023443(n)))`
-/

namespace A025823.P1335691272625039910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025792 n - A025826 |A023443 n|.toNat

end

end A025823.P1335691272625039910

namespace A025823

/-- `A025792(n)-A025826(abs(A023443(n)))` -/
def P1335691272625039910.Spec : Prop :=
  ∀ n, P1335691272625039910.a n = A025823 n

end A025823

/-! ## A025823.P2573071691689629604

`A025924(n)+A005044(A194960(n+1))`
-/

namespace A025823.P2573071691689629604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 n + A005044 (A194960 (n + 1)).toNat

end

end A025823.P2573071691689629604

namespace A025823

/-- `A025924(n)+A005044(A194960(n+1))` -/
def P2573071691689629604.Spec : Prop :=
  ∀ n, P2573071691689629604.a n = A025823 n

theorem P2573071691689629604.correct : P2573071691689629604.Spec := by
  intro n
  simp only [A025823, Nat.add_sub_cancel, A025823.P2573071691689629604.a, A025823.P2313138981244158637.a, A005044, A005044.P15996777699151766909.a, A025924, A025924.P6419062361051786323.a, A194960, A194960.P13491412766380158050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A025823

/-! ## A025823.P12927094175557621208

`A029165(n)+A029221(n)-A029153(n)`
-/

namespace A025823.P12927094175557621208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029165 n + (A029221 n - A029153 n)

end

end A025823.P12927094175557621208

namespace A025823

/-- `A029165(n)+A029221(n)-A029153(n)` -/
def P12927094175557621208.Spec : Prop :=
  ∀ n, P12927094175557621208.a n = A025823 n

end A025823

/-! ## A025823.P11151203669391206755

`A029188(n)+A029221(n)-A029179(n)`
-/

namespace A025823.P11151203669391206755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029188 n + (A029221 n - A029179 n)

end

end A025823.P11151203669391206755

namespace A025823

/-- `A029188(n)+A029221(n)-A029179(n)` -/
def P11151203669391206755.Spec : Prop :=
  ∀ n, P11151203669391206755.a n = A025823 n

end A025823

/-! ## A025823.P14021849917044751700

`A029080(n+1)-A029174(n+1)`
-/

namespace A025823.P14021849917044751700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029080 (n + 1) - A029174 (n + 1)

end

end A025823.P14021849917044751700

namespace A025823

/-- `A029080(n+1)-A029174(n+1)` -/
def P14021849917044751700.Spec : Prop :=
  ∀ n, P14021849917044751700.a n = A025823 n

end A025823

/-!
# A025824: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^11)).

The programs for A025824, the canonical program `A025824.P2182594211057753820` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025824 has offset 0).

The definition of A025824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^9+x^13+x^20-x^22))` (program `A025824.P2182594211057753820`, by `A025824.P2182594211057753820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025824.P2182594211057753820

`ogf(1/(1-x^2-x^9+x^13+x^20-x^22))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025824

/-- `ogf(1/(1-x^2-x^9+x^13+x^20-x^22))` -/
def P2182594211057753820.Spec : Prop :=
  ∀ n, P2182594211057753820.a n = A025824 n

theorem P2182594211057753820.correct : P2182594211057753820.Spec := by
  intro n
  simp only [A025824]

end A025824

/-! ## A025824.P17820741529568901555

`A025792(n)-a(n-1)` with `a(0)=1`
-/

namespace A025824.P17820741529568901555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025792 n - a (n - 1)

end

end A025824.P17820741529568901555

namespace A025824

/-- `A025792(n)-a(n-1)` -/
def P17820741529568901555.Spec : Prop :=
  ∀ n, P17820741529568901555.a n = A025824 n

end A025824

/-! ## A025824.P2015568668118323390

`A029166(n)+A029222(n)-A029154(n)`
-/

namespace A025824.P2015568668118323390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029166 n + (A029222 n - A029154 n)

end

end A025824.P2015568668118323390

namespace A025824

/-- `A029166(n)+A029222(n)-A029154(n)` -/
def P2015568668118323390.Spec : Prop :=
  ∀ n, P2015568668118323390.a n = A025824 n

end A025824

/-! ## A025824.P12201807590052947799

`A029189(n)+A029209(n)-A029176(n)`
-/

namespace A025824.P12201807590052947799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029189 n + (A029209 n - A029176 n)

end

end A025824.P12201807590052947799

namespace A025824

/-- `A029189(n)+A029209(n)-A029176(n)` -/
def P12201807590052947799.Spec : Prop :=
  ∀ n, P12201807590052947799.a n = A025824 n

end A025824

/-! ## A025824.P11213618901506992019

`A029209(n)+A029222(n)-A029195(n)`
-/

namespace A025824.P11213618901506992019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029209 n + (A029222 n - A029195 n)

end

end A025824.P11213618901506992019

namespace A025824

/-- `A029209(n)+A029222(n)-A029195(n)` -/
def P11213618901506992019.Spec : Prop :=
  ∀ n, P11213618901506992019.a n = A025824 n

end A025824

/-! ## A025824.P11750703745860288515

`Δ[A029370(2*n+3)+A029370(2*n+7)]`
-/

namespace A025824.P11750703745860288515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029370 (2 * n + 3) + A029370 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025824.P11750703745860288515

namespace A025824

/-- `Δ[A029370(2*n+3)+A029370(2*n+7)]` -/
def P11750703745860288515.Spec : Prop :=
  ∀ n, P11750703745860288515.a n = A025824 n

end A025824

/-!
# A025825: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^12)).

The programs for A025825, the canonical program `A025825.P5315748665878678996` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025825 has offset 0).

The definition of A025825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^9+x^11-x^12+x^14+x^21-x^23))` (program `A025825.P5315748665878678996`, by `A025825.P5315748665878678996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025825.P5315748665878678996

`ogf(1/(1-x^2-x^9+x^11-x^12+x^14+x^21-x^23))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025825

/-- `ogf(1/(1-x^2-x^9+x^11-x^12+x^14+x^21-x^23))` -/
def P5315748665878678996.Spec : Prop :=
  ∀ n, P5315748665878678996.a n = A025825 n

theorem P5315748665878678996.correct : P5315748665878678996.Spec := by
  intro n
  simp only [A025825]

end A025825

/-! ## A025825.P11364700703871998127

`floor((n²+19*n+369+4*n*(n+2)%3+9*(n+7)*(-1)^n)/432)`
-/

namespace A025825.P11364700703871998127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n ^ 2 + 19 * n + 369 + 4 * n * ((n + 2) % 3) : ℕ) : ℤ) + (9 * (n + 7) : ℤ) * (-1) ^ n : ℚ) / 432⌋

end

end A025825.P11364700703871998127

namespace A025825

/-- `floor((n²+19*n+369+4*n*(n+2)%3+9*(n+7)*(-1)^n)/432)` -/
def P11364700703871998127.Spec : Prop :=
  ∀ n, P11364700703871998127.a n = A025825 n

end A025825

/-! ## A025825.P8762019504054225777

`A005044(∑[(-1)^(n%3)]+2)`
-/

namespace A025825.P8762019504054225777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A025825.P8762019504054225777

namespace A025825

/-- `A005044(∑[(-1)^(n%3)]+2)` -/
def P8762019504054225777.Spec : Prop :=
  ∀ n, P8762019504054225777.a n = A025825 n

end A025825

/-! ## A025825.P5819571536445049629

`A005044(A008611(n)+2)`
-/

namespace A025825.P5819571536445049629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008611 n + 2).toNat

end

end A025825.P5819571536445049629

namespace A025825

/-- `A005044(A008611(n)+2)` -/
def P5819571536445049629.Spec : Prop :=
  ∀ n, P5819571536445049629.a n = A025825 n

end A025825

/-! ## A025825.P9676108546092066963

`A025830(A133310(n)-1)`
-/

namespace A025825.P9676108546092066963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 (A133310 n - 1).toNat

end

end A025825.P9676108546092066963

namespace A025825

/-- `A025830(A133310(n)-1)` -/
def P9676108546092066963.Spec : Prop :=
  ∀ n, P9676108546092066963.a n = A025825 n

end A025825

/-! ## A025825.P7993930307623464460

`A005044(∑[A257075(n)]+2)`
-/

namespace A025825.P7993930307623464460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A025825.P7993930307623464460

namespace A025825

/-- `A005044(∑[A257075(n)]+2)` -/
def P7993930307623464460.Spec : Prop :=
  ∀ n, P7993930307623464460.a n = A025825 n

end A025825

/-! ## A025825.P1840550417795490470

`A025830(2*A008611(n)+1)`
-/

namespace A025825.P1840550417795490470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 (2 * A008611 n + 1).toNat

end

end A025825.P1840550417795490470

namespace A025825

/-- `A025830(2*A008611(n)+1)` -/
def P1840550417795490470.Spec : Prop :=
  ∀ n, P1840550417795490470.a n = A025825 n

end A025825

/-! ## A025825.P1911800618321663483

`A005044(A168056(n)+2-n)`
-/

namespace A025825.P1911800618321663483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A168056 n + (2 - (n : ℤ))).toNat

end

end A025825.P1911800618321663483

namespace A025825

/-- `A005044(A168056(n)+2-n)` -/
def P1911800618321663483.Spec : Prop :=
  ∀ n, P1911800618321663483.a n = A025825 n

end A025825

/-! ## A025825.P17819285262577645853

`A005044(2-(n-A168056(n)))`
-/

namespace A025825.P17819285262577645853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 - ((n : ℤ) - A168056 n)).toNat

end

end A025825.P17819285262577645853

namespace A025825

/-- `A005044(2-(n-A168056(n)))` -/
def P17819285262577645853.Spec : Prop :=
  ∀ n, P17819285262577645853.a n = A025825 n

end A025825

/-! ## A025825.P15693729813384286552

`A025830(A008611(n)+A008611(n)+1)`
-/

namespace A025825.P15693729813384286552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 (A008611 n + (A008611 n + 1)).toNat

end

end A025825.P15693729813384286552

namespace A025825

/-- `A025830(A008611(n)+A008611(n)+1)` -/
def P15693729813384286552.Spec : Prop :=
  ∀ n, P15693729813384286552.a n = A025825 n

end A025825

/-! ## A025825.P9042936937943896858

`A069905(2-Δ[A060022(n)])`
-/

namespace A025825.P9042936937943896858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A025825.P9042936937943896858

namespace A025825

/-- `A069905(2-Δ[A060022(n)])` -/
def P9042936937943896858.Spec : Prop :=
  ∀ n, P9042936937943896858.a n = A025825 n

end A025825

/-! ## A025825.P10033628097992640487

`A266755((n+2)%A008620(n+2))`
-/

namespace A025825.P10033628097992640487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (Int.tmod (n + 2 : ℤ) (A008620 (n + 2))).toNat

end

end A025825.P10033628097992640487

namespace A025825

/-- `A266755((n+2)%A008620(n+2))` -/
def P10033628097992640487.Spec : Prop :=
  ∀ n, P10033628097992640487.a n = A025825 n

end A025825

/-! ## A025825.P11134409694125387381

`A005044(A194960(n+3))`
-/

namespace A025825.P11134409694125387381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A194960 (n + 3)).toNat

end

end A025825.P11134409694125387381

namespace A025825

/-- `A005044(A194960(n+3))` -/
def P11134409694125387381.Spec : Prop :=
  ∀ n, P11134409694125387381.a n = A025825 n

end A025825

/-! ## A025825.P365012895211563497

`A351742(2*n)`
-/

namespace A025825.P365012895211563497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351742 (2 * n)

end

end A025825.P365012895211563497

namespace A025825

/-- `A351742(2*n)` -/
def P365012895211563497.Spec : Prop :=
  ∀ n, P365012895211563497.a n = A025825 n

end A025825

/-! ## A025825.P3215022398390319839

`A005044(A008612(2*n)+2)`
-/

namespace A025825.P3215022398390319839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008612 (2 * n) + 2).toNat

end

end A025825.P3215022398390319839

namespace A025825

/-- `A005044(A008612(2*n)+2)` -/
def P3215022398390319839.Spec : Prop :=
  ∀ n, P3215022398390319839.a n = A025825 n

end A025825

/-! ## A025825.P5974661924734204167

`A005044(Δ[A008742(2*n+1)]+2)`
-/

namespace A025825.P5974661924734204167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (f1 (n + 1) - f1 n + 2).toNat

end

end A025825.P5974661924734204167

namespace A025825

/-- `A005044(Δ[A008742(2*n+1)]+2)` -/
def P5974661924734204167.Spec : Prop :=
  ∀ n, P5974661924734204167.a n = A025825 n

end A025825

/-! ## A025825.P16910982168715010650

`A351725(A062725(n))`
-/

namespace A025825.P16910982168715010650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351725 (A062725 n).toNat

end

end A025825.P16910982168715010650

namespace A025825

/-- `A351725(A062725(n))` -/
def P16910982168715010650.Spec : Prop :=
  ∀ n, P16910982168715010650.a n = A025825 n

end A025825

/-! ## A025825.P3945025398714022399

`A351725(A210981(2*n))`
-/

namespace A025825.P3945025398714022399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351725 (A210981 (2 * n)).toNat

end

end A025825.P3945025398714022399

namespace A025825

/-- `A351725(A210981(2*n))` -/
def P3945025398714022399.Spec : Prop :=
  ∀ n, P3945025398714022399.a n = A025825 n

end A025825

/-! ## A025825.P12448060013396404414

`A351725(A117625(n+1))`
-/

namespace A025825.P12448060013396404414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351725 (A117625 (n + 1)).toNat

end

end A025825.P12448060013396404414

namespace A025825

/-- `A351725(A117625(n+1))` -/
def P12448060013396404414.Spec : Prop :=
  ∀ n, P12448060013396404414.a n = A025825 n

end A025825

/-! ## A025825.P8441282263410531070

`A351725(A276819(n+1))`
-/

namespace A025825.P8441282263410531070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351725 (A276819 (n + 1)).toNat

end

end A025825.P8441282263410531070

namespace A025825

/-- `A351725(A276819(n+1))` -/
def P8441282263410531070.Spec : Prop :=
  ∀ n, P8441282263410531070.a n = A025825 n

end A025825

/-!
# A025826: Expansion of 1/((1-x^2)*(1-x^10)*(1-x^11)).

The programs for A025826, the canonical program `A025826.P5577875791732945362` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025826 has offset 0).

The definition of A025826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^10-x^11+x^12+x^13+x^21-x^23))` (program `A025826.P5577875791732945362`, by `A025826.P5577875791732945362.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025826.P5577875791732945362

`ogf(1/(1-x^2-x^10-x^11+x^12+x^13+x^21-x^23))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025826

/-- `ogf(1/(1-x^2-x^10-x^11+x^12+x^13+x^21-x^23))` -/
def P5577875791732945362.Spec : Prop :=
  ∀ n, P5577875791732945362.a n = A025826 n

theorem P5577875791732945362.correct : P5577875791732945362.Spec := by
  intro n
  simp only [A025826]

end A025826

/-! ## A025826.P17755586261082147753

`A025793(n)-a(n-1)` with `a(0)=1`
-/

namespace A025826.P17755586261082147753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025793 n - a (n - 1)

end

end A025826.P17755586261082147753

namespace A025826

/-- `A025793(n)-a(n-1)` -/
def P17755586261082147753.Spec : Prop :=
  ∀ n, P17755586261082147753.a n = A025826 n

end A025826

/-! ## A025826.P14551761703883852428

`abs(∑[A025793(n)*A033999(n)])`
-/

namespace A025826.P14551761703883852428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025793 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A025826.P14551761703883852428

namespace A025826

/-- `abs(∑[A025793(n)*A033999(n)])` -/
def P14551761703883852428.Spec : Prop :=
  ∀ n, P14551761703883852428.a n = A025826 n

end A025826

/-! ## A025826.P18158151861206865134

`A029168(n)+A029233(n)-A029159(n)`
-/

namespace A025826.P18158151861206865134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029168 n + (A029233 n - A029159 n)

end

end A025826.P18158151861206865134

namespace A025826

/-- `A029168(n)+A029233(n)-A029159(n)` -/
def P18158151861206865134.Spec : Prop :=
  ∀ n, P18158151861206865134.a n = A025826 n

end A025826

/-! ## A025826.P6468507362071162182

`A029211(n)+A029224(n)-A029196(n)`
-/

namespace A025826.P6468507362071162182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029211 n + (A029224 n - A029196 n)

end

end A025826.P6468507362071162182

namespace A025826

/-- `A029211(n)+A029224(n)-A029196(n)` -/
def P6468507362071162182.Spec : Prop :=
  ∀ n, P6468507362071162182.a n = A025826 n

end A025826

/-! ## A025826.P11719882511395912951

`A025822(n+2)-A025921(n+2)`
-/

namespace A025826.P11719882511395912951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 (n + 2) - A025921 (n + 2)

end

end A025826.P11719882511395912951

namespace A025826

/-- `A025822(n+2)-A025921(n+2)` -/
def P11719882511395912951.Spec : Prop :=
  ∀ n, P11719882511395912951.a n = A025826 n

end A025826

/-!
# A025827: Expansion of 1/((1-x^2)*(1-x^11)*(1-x^12)).

The programs for A025827, the canonical program `A025827.P17085874073192218021` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025827 has offset 0).

The definition of A025827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^11-x^12+x^13+x^14+x^23-x^25))` (program `A025827.P17085874073192218021`, by `A025827.P17085874073192218021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025827.P17085874073192218021

`ogf(1/(1-x^2-x^11-x^12+x^13+x^14+x^23-x^25))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025827

/-- `ogf(1/(1-x^2-x^11-x^12+x^13+x^14+x^23-x^25))` -/
def P17085874073192218021.Spec : Prop :=
  ∀ n, P17085874073192218021.a n = A025827 n

theorem P17085874073192218021.correct : P17085874073192218021.Spec := by
  intro n
  simp only [A025827]

end A025827

/-! ## A025827.P9271408263939895006

`A025794(n)-a(n-1)` with `a(0)=1`
-/

namespace A025827.P9271408263939895006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025794 n - a (n - 1)

end

end A025827.P9271408263939895006

namespace A025827

/-- `A025794(n)-a(n-1)` -/
def P9271408263939895006.Spec : Prop :=
  ∀ n, P9271408263939895006.a n = A025827 n

end A025827

/-! ## A025827.P6655509117065246378

`A025875(abs(2-n))+A025875(n)`
-/

namespace A025827.P6655509117065246378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 |2 - (n : ℤ)|.toNat + A025875 n

end

end A025827.P6655509117065246378

namespace A025827

/-- `A025875(abs(2-n))+A025875(n)` -/
def P6655509117065246378.Spec : Prop :=
  ∀ n, P6655509117065246378.a n = A025827 n

end A025827

/-! ## A025827.P12471486266035957275

`2*A029031(n)-∑[A025794(n)]`
-/

namespace A025827.P12471486266035957275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029031 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025827.P12471486266035957275

namespace A025827

/-- `2*A029031(n)-∑[A025794(n)]` -/
def P12471486266035957275.Spec : Prop :=
  ∀ n, P12471486266035957275.a n = A025827 n

end A025827

/-! ## A025827.P17575831593718246194

`A029213(n)+A029225(n)-A029198(n)`
-/

namespace A025827.P17575831593718246194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 n + (A029225 n - A029198 n)

end

end A025827.P17575831593718246194

namespace A025827

/-- `A029213(n)+A029225(n)-A029198(n)` -/
def P17575831593718246194.Spec : Prop :=
  ∀ n, P17575831593718246194.a n = A025827 n

theorem P17575831593718246194.correct : P17575831593718246194.Spec := by
  intro n
  simp only [A025827, Nat.add_sub_cancel, A025827.P17575831593718246194.a, A025827.P17085874073192218021.a, A029198, A029198.P503402576151086867.a, A029213, A029213.P5201621740032638678.a, A029225, A029225.P16486130044195142611.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, A025907, A025907.P12793639154697755668.a, A025781, A025781.P7662789883593314095.a, A025783, A025783.P15062552760523704649.a, A025881, A025881.P15100123725397875390.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A025827

/-! ## A025827.P2665487057162999204

`Δ[∑[A025794(n)]-A029031(n)]`
-/

namespace A025827.P2665487057162999204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025827.P2665487057162999204

namespace A025827

/-- `Δ[∑[A025794(n)]-A029031(n)]` -/
def P2665487057162999204.Spec : Prop :=
  ∀ n, P2665487057162999204.a n = A025827 n

end A025827

/-! ## A025827.P5415544429102639778

`A025794(n+1)-Δ[A029031(n)]`
-/

namespace A025827.P5415544429102639778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025794 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025827.P5415544429102639778

namespace A025827

/-- `A025794(n+1)-Δ[A029031(n)]` -/
def P5415544429102639778.Spec : Prop :=
  ∀ n, P5415544429102639778.a n = A025827 n

end A025827

/-! ## A025827.P9370670211541316883

`A029105(n+1)-A029197(n+1)`
-/

namespace A025827.P9370670211541316883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029105 (n + 1) - A029197 (n + 1)

end

end A025827.P9370670211541316883

namespace A025827

/-- `A029105(n+1)-A029197(n+1)` -/
def P9370670211541316883.Spec : Prop :=
  ∀ n, P9370670211541316883.a n = A025827 n

end A025827

/-!
# A025828: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)).

The programs for A025828, the canonical program `A025828.P10643804630052572483` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025828 has offset 0).

The definition of A025828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^6+x^7+x^9+x^10-x^13))` (program `A025828.P10643804630052572483`, by `A025828.P10643804630052572483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025828.P10643804630052572483

`ogf(1/(1-x^3-x^4-x^6+x^7+x^9+x^10-x^13))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025828

/-- `ogf(1/(1-x^3-x^4-x^6+x^7+x^9+x^10-x^13))` -/
def P10643804630052572483.Spec : Prop :=
  ∀ n, P10643804630052572483.a n = A025828 n

theorem P10643804630052572483.correct : P10643804630052572483.Spec := by
  intro n
  simp only [A025828]

end A025828

/-! ## A025828.P4393864215093980517

`floor((n²+n*(21+3*(-1)^n-8*n%3))/144+1-n%6/12)`
-/

namespace A025828.P4393864215093980517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) + (n : ℤ) * (21 + 3 * (-1) ^ n - ((8 * (n % 3) : ℕ) : ℤ)) : ℚ) / 144 + 1 - ((n % 6 : ℕ) : ℚ) / 12⌋

end

end A025828.P4393864215093980517

namespace A025828

/-- `floor((n²+n*(21+3*(-1)^n-8*n%3))/144+1-n%6/12)` -/
def P4393864215093980517.Spec : Prop :=
  ∀ n, P4393864215093980517.a n = A025828 n

end A025828

/-! ## A025828.P16639115360157314028

`A025796(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025828.P16639115360157314028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025796 n - a (n - 2)

end

end A025828.P16639115360157314028

namespace A025828

/-- `A025796(n)-a(n-2)` -/
def P16639115360157314028.Spec : Prop :=
  ∀ n, P16639115360157314028.a n = A025828 n

end A025828

/-! ## A025828.P3623152745866766484

`A002620(Δ[ceil(n²/12)]+1)`
-/

namespace A025828.P3623152745866766484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (f1 (n + 1) - f1 n + 1).toNat

end

end A025828.P3623152745866766484

namespace A025828

/-- `A002620(Δ[ceil(n²/12)]+1)` -/
def P3623152745866766484.Spec : Prop :=
  ∀ n, P3623152745866766484.a n = A025828 n

end A025828

/-! ## A025828.P5055867932022285621

`A008612(n)+floor((ceil(n/2)/2-floor(n/3))²)`
-/

namespace A025828.P5055867932022285621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n + ⌊((⌈(n : ℚ) / 2⌉ : ℚ) / 2 - (⌊(n : ℚ) / 3⌋ : ℚ)) ^ 2⌋

end

end A025828.P5055867932022285621

namespace A025828

/-- `A008612(n)+floor((ceil(n/2)/2-floor(n/3))²)` -/
def P5055867932022285621.Spec : Prop :=
  ∀ n, P5055867932022285621.a n = A025828 n

end A025828

/-! ## A025828.P14800413026033116975

`abs(A083392(A008612(n)))`
-/

namespace A025828.P14800413026033116975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083392 (A008612 n).toNat|

end

end A025828.P14800413026033116975

namespace A025828

/-- `abs(A083392(A008612(n)))` -/
def P14800413026033116975.Spec : Prop :=
  ∀ n, P14800413026033116975.a n = A025828 n

end A025828

/-! ## A025828.P4691293080878638920

`A307018(A052938(n+1))`
-/

namespace A025828.P4691293080878638920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A052938 (n + 1)).toNat

end

end A025828.P4691293080878638920

namespace A025828

/-- `A307018(A052938(n+1))` -/
def P4691293080878638920.Spec : Prop :=
  ∀ n, P4691293080878638920.a n = A025828 n

end A025828

/-! ## A025828.P10514661288364829928

`A307018(A028242(n)+2)`
-/

namespace A025828.P10514661288364829928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A028242 n + 2).toNat

end

end A025828.P10514661288364829928

namespace A025828

/-- `A307018(A028242(n)+2)` -/
def P10514661288364829928.Spec : Prop :=
  ∀ n, P10514661288364829928.a n = A025828 n

end A025828

/-! ## A025828.P13681472890872633265

`A307018(3*A008612(n))`
-/

namespace A025828.P13681472890872633265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (3 * A008612 n).toNat

end

end A025828.P13681472890872633265

namespace A025828

/-- `A307018(3*A008612(n))` -/
def P13681472890872633265.Spec : Prop :=
  ∀ n, P13681472890872633265.a n = A025828 n

end A025828

/-! ## A025828.P11511057109182796756

`A033638(A008612(n)+1)-1`
-/

namespace A025828.P11511057109182796756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A008612 n + 1).toNat - 1

end

end A025828.P11511057109182796756

namespace A025828

/-- `A033638(A008612(n)+1)-1` -/
def P11511057109182796756.Spec : Prop :=
  ∀ n, P11511057109182796756.a n = A025828 n

end A025828

/-! ## A025828.P3413021618519570328

`A024165(n+1)+A008612(n)`
-/

namespace A025828.P3413021618519570328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (n + 1) + A008612 n

end

end A025828.P3413021618519570328

namespace A025828

/-- `A024165(n+1)+A008612(n)` -/
def P3413021618519570328.Spec : Prop :=
  ∀ n, P3413021618519570328.a n = A025828 n

end A025828

/-! ## A025828.P8644412448705747874

`A266755(n)-A000217(A008615(n))`
-/

namespace A025828.P8644412448705747874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A000217 (A008615 n).toNat

end

end A025828.P8644412448705747874

namespace A025828

/-- `A266755(n)-A000217(A008615(n))` -/
def P8644412448705747874.Spec : Prop :=
  ∀ n, P8644412448705747874.a n = A025828 n

end A025828

/-! ## A025828.P12176142782596706645

`(A008620(n)-A002265(n+1))*A008679(n)`
-/

namespace A025828.P12176142782596706645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008620 n - A002265 (n + 1)) * A008679 n

end

end A025828.P12176142782596706645

namespace A025828

/-- `(A008620(n)-A002265(n+1))*A008679(n)` -/
def P12176142782596706645.Spec : Prop :=
  ∀ n, P12176142782596706645.a n = A025828 n

end A025828

/-! ## A025828.P9771870099364465454

`A008679(n+6)*A008679(n)`
-/

namespace A025828.P9771870099364465454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (n + 6) * A008679 n

end

end A025828.P9771870099364465454

namespace A025828

/-- `A008679(n+6)*A008679(n)` -/
def P9771870099364465454.Spec : Prop :=
  ∀ n, P9771870099364465454.a n = A025828 n

end A025828

/-! ## A025828.P10578136538495406455

`A024165(n+13)`
-/

namespace A025828.P10578136538495406455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (n + 13)

end

end A025828.P10578136538495406455

namespace A025828

/-- `A024165(n+13)` -/
def P10578136538495406455.Spec : Prop :=
  ∀ n, P10578136538495406455.a n = A025828 n

end A025828

/-! ## A025828.P1638352487749375745

`abs(A083392(A103221(2*n)-A103221(n+1)))`
-/

namespace A025828.P1638352487749375745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083392 (A103221 (2 * n) - A103221 (n + 1)).toNat|

end

end A025828.P1638352487749375745

namespace A025828

/-- `abs(A083392(A103221(2*n)-A103221(n+1)))` -/
def P1638352487749375745.Spec : Prop :=
  ∀ n, P1638352487749375745.a n = A025828 n

end A025828

/-! ## A025828.P2325365940899350020

`A025853(2*n)`
-/

namespace A025828.P2325365940899350020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 (2 * n)

end

end A025828.P2325365940899350020

namespace A025828

/-- `A025853(2*n)` -/
def P2325365940899350020.Spec : Prop :=
  ∀ n, P2325365940899350020.a n = A025828 n

end A025828

/-! ## A025828.P12774357887968266330

`A307018(A110657(2*n+1)+2)`
-/

namespace A025828.P12774357887968266330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A110657 (2 * n + 1) + 2).toNat

end

end A025828.P12774357887968266330

namespace A025828

/-- `A307018(A110657(2*n+1)+2)` -/
def P12774357887968266330.Spec : Prop :=
  ∀ n, P12774357887968266330.a n = A025828 n

end A025828

/-! ## A025828.P2348850749105711947

`A029164(2*n)-A029164(2*n+1)`
-/

namespace A025828.P2348850749105711947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029164 (2 * n) - A029164 (2 * n + 1)

end

end A025828.P2348850749105711947

namespace A025828

/-- `A029164(2*n)-A029164(2*n+1)` -/
def P2348850749105711947.Spec : Prop :=
  ∀ n, P2348850749105711947.a n = A025828 n

end A025828

/-! ## A025828.P14328651961912119923

`Δ[A029164(Δ[n²])]`
-/

namespace A025828.P14328651961912119923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029164 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025828.P14328651961912119923

namespace A025828

/-- `Δ[A029164(Δ[n²])]` -/
def P14328651961912119923.Spec : Prop :=
  ∀ n, P14328651961912119923.a n = A025828 n

end A025828

/-!
# A025829: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^7)).

The programs for A025829, the canonical program `A025829.P9422774478300404844` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025829 has offset 0).

The definition of A025829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4+x^10+x^11-x^14))` (program `A025829.P9422774478300404844`, by `A025829.P9422774478300404844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025829.P9422774478300404844

`ogf(1/(1-x^3-x^4+x^10+x^11-x^14))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025829

/-- `ogf(1/(1-x^3-x^4+x^10+x^11-x^14))` -/
def P9422774478300404844.Spec : Prop :=
  ∀ n, P9422774478300404844.a n = A025829 n

theorem P9422774478300404844.correct : P9422774478300404844.Spec := by
  intro n
  simp only [A025829]

end A025829

/-! ## A025829.P13681330988320405037

`A008671(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025829.P13681330988320405037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008671 n - a (n - 2)

end

end A025829.P13681330988320405037

namespace A025829

/-- `A008671(n)-a(n-2)` -/
def P13681330988320405037.Spec : Prop :=
  ∀ n, P13681330988320405037.a n = A025829 n

end A025829

/-! ## A025829.P4351170119300382892

`A008622(abs(3-n))+A008622(n)`
-/

namespace A025829.P4351170119300382892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 |3 - (n : ℤ)|.toNat + A008622 n

end

end A025829.P4351170119300382892

namespace A025829

/-- `A008622(abs(3-n))+A008622(n)` -/
def P4351170119300382892.Spec : Prop :=
  ∀ n, P4351170119300382892.a n = A025829 n

end A025829

/-! ## A025829.P11328675899454099143

`A025897(2*n)`
-/

namespace A025829.P11328675899454099143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (2 * n)

end

end A025829.P11328675899454099143

namespace A025829

/-- `A025897(2*n)` -/
def P11328675899454099143.Spec : Prop :=
  ∀ n, P11328675899454099143.a n = A025829 n

end A025829

/-! ## A025829.P5638352049129605232

`A008622(2*n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025829.P5638352049129605232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008622 (2 * n) - a (n - 2)

end

end A025829.P5638352049129605232

namespace A025829

/-- `A008622(2*n)-a(n-2)` -/
def P5638352049129605232.Spec : Prop :=
  ∀ n, P5638352049129605232.a n = A025829 n

end A025829

/-! ## A025829.P12249070059028276743

`A025911(2*n+1)+A025911(2*n)`
-/

namespace A025829.P12249070059028276743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 (2 * n + 1) + A025911 (2 * n)

end

end A025829.P12249070059028276743

namespace A025829

/-- `A025911(2*n+1)+A025911(2*n)` -/
def P12249070059028276743.Spec : Prop :=
  ∀ n, P12249070059028276743.a n = A025829 n

end A025829

/-! ## A025829.P16548019257290710448

`A025782(2*n)-A025797(2*n+1)`
-/

namespace A025829.P16548019257290710448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025782 (2 * n) - A025797 (2 * n + 1)

end

end A025829.P16548019257290710448

namespace A025829

/-- `A025782(2*n)-A025797(2*n+1)` -/
def P16548019257290710448.Spec : Prop :=
  ∀ n, P16548019257290710448.a n = A025829 n

end A025829

/-! ## A025829.P9325863513362010868

`A029106(2*n)+A029378(2*n)-A029091(2*n)`
-/

namespace A025829.P9325863513362010868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029106 (2 * n) + (A029378 (2 * n) - A029091 (2 * n))

end

end A025829.P9325863513362010868

namespace A025829

/-- `A029106(2*n)+A029378(2*n)-A029091(2*n)` -/
def P9325863513362010868.Spec : Prop :=
  ∀ n, P9325863513362010868.a n = A025829 n

end A025829

/-! ## A025829.P10467085553344898841

`A029214(2*n)+A029347(2*n)-A029181(2*n)`
-/

namespace A025829.P10467085553344898841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (2 * n) + (A029347 (2 * n) - A029181 (2 * n))

end

end A025829.P10467085553344898841

namespace A025829

/-- `A029214(2*n)+A029347(2*n)-A029181(2*n)` -/
def P10467085553344898841.Spec : Prop :=
  ∀ n, P10467085553344898841.a n = A025829 n

end A025829

/-! ## A025829.P11677550279676306739

`A029414(2*n+1)+A029414(2*n)-A029349(2*n+1)`
-/

namespace A025829.P11677550279676306739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 (2 * n + 1) + (A029414 (2 * n) - A029349 (2 * n + 1))

end

end A025829.P11677550279676306739

namespace A025829

/-- `A029414(2*n+1)+A029414(2*n)-A029349(2*n+1)` -/
def P11677550279676306739.Spec : Prop :=
  ∀ n, P11677550279676306739.a n = A025829 n

end A025829

/-! ## A025829.P17057453120008142560

`A029347(2*n)-A029347(2*n+3)`
-/

namespace A025829.P17057453120008142560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 (2 * n) - A029347 (2 * n + 3)

end

end A025829.P17057453120008142560

namespace A025829

/-- `A029347(2*n)-A029347(2*n+3)` -/
def P17057453120008142560.Spec : Prop :=
  ∀ n, P17057453120008142560.a n = A025829 n

end A025829

/-! ## A025829.P11504076874003163719

`A008622(2*n)-Δ[A029214(2*n+1)]`
-/

namespace A025829.P11504076874003163719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (2 * n) - (f1 (n + 1) - f1 n)

end

end A025829.P11504076874003163719

namespace A025829

/-- `A008622(2*n)-Δ[A029214(2*n+1)]` -/
def P11504076874003163719.Spec : Prop :=
  ∀ n, P11504076874003163719.a n = A025829 n

end A025829

/-! ## A025829.P4402245156868932616

`Δ[A029257(2*n+1)+Δ[A029347(2*n+1)]]`
-/

namespace A025829.P4402245156868932616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029257 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025829.P4402245156868932616

namespace A025829

/-- `Δ[A029257(2*n+1)+Δ[A029347(2*n+1)]]` -/
def P4402245156868932616.Spec : Prop :=
  ∀ n, P4402245156868932616.a n = A025829 n

end A025829

/-! ## A025829.P12255982135057446467

`Δ[A029214(2*n+5)]`
-/

namespace A025829.P12255982135057446467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025829.P12255982135057446467

namespace A025829

/-- `Δ[A029214(2*n+5)]` -/
def P12255982135057446467.Spec : Prop :=
  ∀ n, P12255982135057446467.a n = A025829 n

end A025829

/-! ## A025829.P11969996999546859400

`A025914(3*n)`
-/

namespace A025829.P11969996999546859400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025914 (3 * n)

end

end A025829.P11969996999546859400

namespace A025829

/-- `A025914(3*n)` -/
def P11969996999546859400.Spec : Prop :=
  ∀ n, P11969996999546859400.a n = A025829 n

end A025829

/-!
# A025830: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^8)).

The programs for A025830, the canonical program `A025830.P4498043476027600214` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025830 has offset 0).

The definition of A025830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4+x^7-x^8+x^11+x^12-x^15))` (program `A025830.P4498043476027600214`, by `A025830.P4498043476027600214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025830.P2535015141738660125

`floor((n²+6*(n+10)*(1+(n+3)%4))/192)`
-/

namespace A025830.P2535015141738660125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 6 * (n + 10) * (1 + (n + 3) % 4) : ℕ) : ℚ) / 192⌋

end

end A025830.P2535015141738660125

namespace A025830

/-- `floor((n²+6*(n+10)*(1+(n+3)%4))/192)` -/
def P2535015141738660125.Spec : Prop :=
  ∀ n, P2535015141738660125.a n = A025830 n

end A025830

/-! ## A025830.P4498043476027600214

`ogf(1/(1-x^3-x^4+x^7-x^8+x^11+x^12-x^15))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025830

/-- `ogf(1/(1-x^3-x^4+x^7-x^8+x^11+x^12-x^15))` -/
def P4498043476027600214.Spec : Prop :=
  ∀ n, P4498043476027600214.a n = A025830 n

theorem P4498043476027600214.correct : P4498043476027600214.Spec := by
  intro n
  simp only [A025830]

end A025830

/-! ## A025830.P14589058213717596571

`A025797(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025830.P14589058213717596571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025797 n - a (n - 2)

end

end A025830.P14589058213717596571

namespace A025830

/-- `A025797(n)-a(n-2)` -/
def P14589058213717596571.Spec : Prop :=
  ∀ n, P14589058213717596571.a n = A025830 n

end A025830

/-! ## A025830.P3725165593644714671

`A005044(ceil(xor(1, n)/2)+2)`
-/

namespace A025830.P3725165593644714671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (⌈(Nat.xor 1 n : ℚ) / 2⌉ + 2).toNat

end

end A025830.P3725165593644714671

namespace A025830

/-- `A005044(ceil(xor(1, n)/2)+2)` -/
def P3725165593644714671.Spec : Prop :=
  ∀ n, P3725165593644714671.a n = A025830 n

end A025830

/-! ## A025830.P4018418974361970748

`A005044(round(xor(1, n)/2)+2)`
-/

namespace A025830.P4018418974361970748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) + 2).toNat

end

end A025830.P4018418974361970748

namespace A025830

/-- `A005044(round(xor(1, n)/2)+2)` -/
def P4018418974361970748.Spec : Prop :=
  ∀ n, P4018418974361970748.a n = A025830 n

end A025830

/-! ## A025830.P3956091771454434391

`A266755(abs(A097140(n)))`
-/

namespace A025830.P3956091771454434391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 |A097140 n|.toNat

end

end A025830.P3956091771454434391

namespace A025830

/-- `A266755(abs(A097140(n)))` -/
def P3956091771454434391.Spec : Prop :=
  ∀ n, P3956091771454434391.a n = A025830 n

end A025830

/-! ## A025830.P15977554754862365165

`A005044(A052938(n+1))`
-/

namespace A025830.P15977554754862365165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A052938 (n + 1)).toNat

end

end A025830.P15977554754862365165

namespace A025830

/-- `A005044(A052938(n+1))` -/
def P15977554754862365165.Spec : Prop :=
  ∀ n, P15977554754862365165.a n = A025830 n

end A025830

/-! ## A025830.P3049886031522262383

`A005044(A028242(n)+2)`
-/

namespace A025830.P3049886031522262383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A028242 n + 2).toNat

end

end A025830.P3049886031522262383

namespace A025830

/-- `A005044(A028242(n)+2)` -/
def P3049886031522262383.Spec : Prop :=
  ∀ n, P3049886031522262383.a n = A025830 n

end A025830

/-! ## A025830.P14325994709709936269

`A266755(abs(Δ[A029578(n)]))`
-/

namespace A025830.P14325994709709936269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 |f1 (n + 1) - f1 n|.toNat

end

end A025830.P14325994709709936269

namespace A025830

/-- `A266755(abs(Δ[A029578(n)]))` -/
def P14325994709709936269.Spec : Prop :=
  ∀ n, P14325994709709936269.a n = A025830 n

end A025830

/-! ## A025830.P16909196029114876328

`A005044(Δ[A004652(n)]+2)`
-/

namespace A025830.P16909196029114876328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (f1 (n + 1) - f1 n + 2).toNat

end

end A025830.P16909196029114876328

namespace A025830

/-- `A005044(Δ[A004652(n)]+2)` -/
def P16909196029114876328.Spec : Prop :=
  ∀ n, P16909196029114876328.a n = A025830 n

end A025830

/-! ## A025830.P4024275397166350881

`A005044(3*A008619(n)-n)`
-/

namespace A025830.P4024275397166350881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (3 * A008619 n - (n : ℤ)).toNat

end

end A025830.P4024275397166350881

namespace A025830

/-- `A005044(3*A008619(n)-n)` -/
def P4024275397166350881.Spec : Prop :=
  ∀ n, P4024275397166350881.a n = A025830 n

end A025830

/-! ## A025830.P12747167458833115582

`A005044(A008619(n)+gcd(2, n))`
-/

namespace A025830.P12747167458833115582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008619 n + (Nat.gcd 2 n : ℤ)).toNat

end

end A025830.P12747167458833115582

namespace A025830

/-- `A005044(A008619(n)+gcd(2, n))` -/
def P12747167458833115582.Spec : Prop :=
  ∀ n, P12747167458833115582.a n = A025830 n

end A025830

/-! ## A025830.P2383271123864922923

`A005044(A084964(A168361(n+1)+n))`
-/

namespace A025830.P2383271123864922923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A084964 (A168361 (n + 1) + (n : ℤ)).toNat).toNat

end

end A025830.P2383271123864922923

namespace A025830

/-- `A005044(A084964(A168361(n+1)+n))` -/
def P2383271123864922923.Spec : Prop :=
  ∀ n, P2383271123864922923.a n = A025830 n

end A025830

/-! ## A025830.P9573147577221852583

`A005044(A030451(n+1)+1)`
-/

namespace A025830.P9573147577221852583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A030451 (n + 1) + 1).toNat

end

end A025830.P9573147577221852583

namespace A025830

/-- `A005044(A030451(n+1)+1)` -/
def P9573147577221852583.Spec : Prop :=
  ∀ n, P9573147577221852583.a n = A025830 n

end A025830

/-! ## A025830.P5287880671996533652

`A005044(A060762(n+2)-1)`
-/

namespace A025830.P5287880671996533652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A060762 (n + 2) - 1).toNat

end

end A025830.P5287880671996533652

namespace A025830

/-- `A005044(A060762(n+2)-1)` -/
def P5287880671996533652.Spec : Prop :=
  ∀ n, P5287880671996533652.a n = A025830 n

end A025830

/-! ## A025830.P5463524019711595436

`A005044(A030451(n+3))`
-/

namespace A025830.P5463524019711595436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A030451 (n + 3)).toNat

end

end A025830.P5463524019711595436

namespace A025830

/-- `A005044(A030451(n+3))` -/
def P5463524019711595436.Spec : Prop :=
  ∀ n, P5463524019711595436.a n = A025830 n

end A025830

/-! ## A025830.P14910461684681260142

`A005044(A215415(n+3))`
-/

namespace A025830.P14910461684681260142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A215415 (n + 3)).toNat

end

end A025830.P14910461684681260142

namespace A025830

/-- `A005044(A215415(n+3))` -/
def P14910461684681260142.Spec : Prop :=
  ∀ n, P14910461684681260142.a n = A025830 n

end A025830

/-! ## A025830.P9607907865052773268

`A005044(Δ[A181385(n+4)])`
-/

namespace A025830.P9607907865052773268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (f1 (n + 1) - f1 n).toNat

end

end A025830.P9607907865052773268

namespace A025830

/-- `A005044(Δ[A181385(n+4)])` -/
def P9607907865052773268.Spec : Prop :=
  ∀ n, P9607907865052773268.a n = A025830 n

end A025830

/-! ## A025830.P516468367531261282

`A069905(A110657(n+6))`
-/

namespace A025830.P516468367531261282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A110657 (n + 6)).toNat

end

end A025830.P516468367531261282

namespace A025830

/-- `A069905(A110657(n+6))` -/
def P516468367531261282.Spec : Prop :=
  ∀ n, P516468367531261282.a n = A025830 n

end A025830

/-! ## A025830.P3989205401721035127

`A025838(A271324(n+1)-2)`
-/

namespace A025830.P3989205401721035127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025838 (A271324 (n + 1) - 2).toNat

end

end A025830.P3989205401721035127

namespace A025830

/-- `A025838(A271324(n+1)-2)` -/
def P3989205401721035127.Spec : Prop :=
  ∀ n, P3989205401721035127.a n = A025830 n

end A025830

/-!
# A025831: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^9)).

The programs for A025831, the canonical program `A025831.P13079284326636947772` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025831 has offset 0).

The definition of A025831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4+x^7-x^9+x^12+x^13-x^16))` (program `A025831.P13079284326636947772`, by `A025831.P13079284326636947772.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025831.P13079284326636947772

`ogf(1/(1-x^3-x^4+x^7-x^9+x^12+x^13-x^16))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025831

/-- `ogf(1/(1-x^3-x^4+x^7-x^9+x^12+x^13-x^16))` -/
def P13079284326636947772.Spec : Prop :=
  ∀ n, P13079284326636947772.a n = A025831 n

theorem P13079284326636947772.correct : P13079284326636947772.Spec := by
  intro n
  simp only [A025831]

end A025831

/-! ## A025831.P6654797002362361672

`floor((n²+16*n+168+8*(n+6)*(1-n%3))/216)`
-/

namespace A025831.P6654797002362361672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 16 * n + 168 : ℤ) + (8 * (n + 6) : ℤ) * (1 - ((n % 3 : ℕ) : ℤ)) : ℚ) / 216⌋

end

end A025831.P6654797002362361672

namespace A025831

/-- `floor((n²+16*n+168+8*(n+6)*(1-n%3))/216)` -/
def P6654797002362361672.Spec : Prop :=
  ∀ n, P6654797002362361672.a n = A025831 n

end A025831

/-! ## A025831.P9343871419199393657

`A025798(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025831.P9343871419199393657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025798 n - a (n - 2)

end

end A025831.P9343871419199393657

namespace A025831

/-- `A025798(n)-a(n-2)` -/
def P9343871419199393657.Spec : Prop :=
  ∀ n, P9343871419199393657.a n = A025831 n

end A025831

/-! ## A025831.P512955366219633375

`A033183(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025831.P512955366219633375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A033183 n + a (n - 3)

end

end A025831.P512955366219633375

namespace A025831

/-- `A033183(n)+a(n-3)` -/
def P512955366219633375.Spec : Prop :=
  ∀ n, P512955366219633375.a n = A025831 n

end A025831

/-! ## A025831.P6987369864699313309

`A025902(2*n)`
-/

namespace A025831.P6987369864699313309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (2 * n)

end

end A025831.P6987369864699313309

namespace A025831

/-- `A025902(2*n)` -/
def P6987369864699313309.Spec : Prop :=
  ∀ n, P6987369864699313309.a n = A025831 n

end A025831

/-! ## A025831.P173763807819575972

`Δ[A029219(xor(1, A004273(n)))]`
-/

namespace A025831.P173763807819575972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029219 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025831.P173763807819575972

namespace A025831

/-- `Δ[A029219(xor(1, A004273(n)))]` -/
def P173763807819575972.Spec : Prop :=
  ∀ n, P173763807819575972.a n = A025831 n

end A025831

/-! ## A025831.P7548385428120041745

`2*A029425(2*n)-A029318(2*n)`
-/

namespace A025831.P7548385428120041745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029425 (2 * n) - A029318 (2 * n)

end

end A025831.P7548385428120041745

namespace A025831

/-- `2*A029425(2*n)-A029318(2*n)` -/
def P7548385428120041745.Spec : Prop :=
  ∀ n, P7548385428120041745.a n = A025831 n

end A025831

/-! ## A025831.P17946029736946318822

`Δ[A029219(A004442(A004273(n)))]`
-/

namespace A025831.P17946029736946318822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029219 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025831.P17946029736946318822

namespace A025831

/-- `Δ[A029219(A004442(A004273(n)))]` -/
def P17946029736946318822.Spec : Prop :=
  ∀ n, P17946029736946318822.a n = A025831 n

end A025831

/-! ## A025831.P1165969881045978739

`A029425(2*n+1)+A029425(2*n)-A029356(2*n+1)`
-/

namespace A025831.P1165969881045978739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 (2 * n + 1) + (A029425 (2 * n) - A029356 (2 * n + 1))

end

end A025831.P1165969881045978739

namespace A025831

/-- `A029425(2*n+1)+A029425(2*n)-A029356(2*n+1)` -/
def P1165969881045978739.Spec : Prop :=
  ∀ n, P1165969881045978739.a n = A025831 n

end A025831

/-! ## A025831.P5593968820401931619

`A025920(2*n+3)+A025920(2*n)`
-/

namespace A025831.P5593968820401931619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 (2 * n + 3) + A025920 (2 * n)

end

end A025831.P5593968820401931619

namespace A025831

/-- `A025920(2*n+3)+A025920(2*n)` -/
def P5593968820401931619.Spec : Prop :=
  ∀ n, P5593968820401931619.a n = A025831 n

end A025831

/-! ## A025831.P4757727858154932516

`A029219(2*n)-A029219(A020742(n))`
-/

namespace A025831.P4757727858154932516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029219 (2 * n) - A029219 (A020742 n).toNat

end

end A025831.P4757727858154932516

namespace A025831

/-- `A029219(2*n)-A029219(A020742(n))` -/
def P4757727858154932516.Spec : Prop :=
  ∀ n, P4757727858154932516.a n = A025831 n

end A025831

/-! ## A025831.P4609047445141697026

`Δ[A029219(2*n+7)]`
-/

namespace A025831.P4609047445141697026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029219 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025831.P4609047445141697026

namespace A025831

/-- `Δ[A029219(2*n+7)]` -/
def P4609047445141697026.Spec : Prop :=
  ∀ n, P4609047445141697026.a n = A025831 n

end A025831

/-! ## A025831.P14374564594755581116

`A008647(A008619((A063942(n)+3)²))`
-/

namespace A025831.P14374564594755581116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A008619 ((A063942 n + 3) ^ 2).toNat).toNat

end

end A025831.P14374564594755581116

namespace A025831

/-- `A008647(A008619((A063942(n)+3)²))` -/
def P14374564594755581116.Spec : Prop :=
  ∀ n, P14374564594755581116.a n = A025831 n

end A025831

/-!
# A025832: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^10)).

The programs for A025832, the canonical program `A025832.P16990244734009276327` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025832 has offset 0).

The definition of A025832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4+x^7-x^10+x^13+x^14-x^17))` (program `A025832.P16990244734009276327`, by `A025832.P16990244734009276327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025832.P16990244734009276327

`ogf(1/(1-x^3-x^4+x^7-x^10+x^13+x^14-x^17))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025832

/-- `ogf(1/(1-x^3-x^4+x^7-x^10+x^13+x^14-x^17))` -/
def P16990244734009276327.Spec : Prop :=
  ∀ n, P16990244734009276327.a n = A025832 n

theorem P16990244734009276327.correct : P16990244734009276327.Spec := by
  intro n
  simp only [A025832]

end A025832

/-! ## A025832.P6610529385234616200

`A025799(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025832.P6610529385234616200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025799 n - a (n - 2)

end

end A025832.P6610529385234616200

namespace A025832

/-- `A025799(n)-a(n-2)` -/
def P6610529385234616200.Spec : Prop :=
  ∀ n, P6610529385234616200.a n = A025832 n

end A025832

/-! ## A025832.P12068065024887319459

`A025795(abs(A097140(n)))`
-/

namespace A025832.P12068065024887319459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 |A097140 n|.toNat

end

end A025832.P12068065024887319459

namespace A025832

/-- `A025795(abs(A097140(n)))` -/
def P12068065024887319459.Spec : Prop :=
  ∀ n, P12068065024887319459.a n = A025832 n

end A025832

/-! ## A025832.P8453506895398654277

`A025795(abs(Δ[A029578(n)]))`
-/

namespace A025832.P8453506895398654277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 |f1 (n + 1) - f1 n|.toNat

end

end A025832.P8453506895398654277

namespace A025832

/-- `A025795(abs(Δ[A029578(n)]))` -/
def P8453506895398654277.Spec : Prop :=
  ∀ n, P8453506895398654277.a n = A025832 n

end A025832

/-! ## A025832.P4288341659611314618

`A008682(abs(1-A097062(n)))`
-/

namespace A025832.P4288341659611314618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 |1 - A097062 n|.toNat

end

end A025832.P4288341659611314618

namespace A025832

/-- `A008682(abs(1-A097062(n)))` -/
def P4288341659611314618.Spec : Prop :=
  ∀ n, P4288341659611314618.a n = A025832 n

end A025832

/-! ## A025832.P16300460386583135293

`A008682(xor(1, n+1))`
-/

namespace A025832.P16300460386583135293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (Nat.xor 1 (n + 1))

end

end A025832.P16300460386583135293

namespace A025832

/-- `A008682(xor(1, n+1))` -/
def P16300460386583135293.Spec : Prop :=
  ∀ n, P16300460386583135293.a n = A025832 n

end A025832

/-! ## A025832.P5592694714421851016

`A008682(n+1-(-1)^n)`
-/

namespace A025832.P5592694714421851016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 ((n + 1 : ℤ) - (-1) ^ n).toNat

end

end A025832.P5592694714421851016

namespace A025832

/-- `A008682(n+1-(-1)^n)` -/
def P5592694714421851016.Spec : Prop :=
  ∀ n, P5592694714421851016.a n = A025832 n

end A025832

/-! ## A025832.P7826943492949532861

`Δ[A029063(n)-A325488(n)]`
-/

namespace A025832.P7826943492949532861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029063 n - A325488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025832.P7826943492949532861

namespace A025832

/-- `Δ[A029063(n)-A325488(n)]` -/
def P7826943492949532861.Spec : Prop :=
  ∀ n, P7826943492949532861.a n = A025832 n

end A025832

/-! ## A025832.P12981477237443299285

`A025878(A007494(n))`
-/

namespace A025832.P12981477237443299285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025878 (A007494 n).toNat

end

end A025832.P12981477237443299285

namespace A025832

/-- `A025878(A007494(n))` -/
def P12981477237443299285.Spec : Prop :=
  ∀ n, P12981477237443299285.a n = A025832 n

end A025832

/-! ## A025832.P10588055148190992914

`A025878(A168202(n+1))`
-/

namespace A025832.P10588055148190992914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025878 (A168202 (n + 1)).toNat

end

end A025832.P10588055148190992914

namespace A025832

/-- `A025878(A168202(n+1))` -/
def P10588055148190992914.Spec : Prop :=
  ∀ n, P10588055148190992914.a n = A025832 n

end A025832

/-! ## A025832.P1512686364268211310

`A025878(A168197(n+1))`
-/

namespace A025832.P1512686364268211310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025878 (A168197 (n + 1)).toNat

end

end A025832.P1512686364268211310

namespace A025832

/-- `A025878(A168197(n+1))` -/
def P1512686364268211310.Spec : Prop :=
  ∀ n, P1512686364268211310.a n = A025832 n

end A025832

/-! ## A025832.P14695919986327790206

`A025890(A042948(n))`
-/

namespace A025832.P14695919986327790206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (A042948 n).toNat

end

end A025832.P14695919986327790206

namespace A025832

/-- `A025890(A042948(n))` -/
def P14695919986327790206.Spec : Prop :=
  ∀ n, P14695919986327790206.a n = A025832 n

end A025832

/-! ## A025832.P1362755397484732044

`A025890(2*n-A000035(n))`
-/

namespace A025832.P1362755397484732044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 ((2 * n : ℤ) - A000035 n).toNat

end

end A025832.P1362755397484732044

namespace A025832

/-- `A025890(2*n-A000035(n))` -/
def P1362755397484732044.Spec : Prop :=
  ∀ n, P1362755397484732044.a n = A025832 n

end A025832

/-! ## A025832.P15792954153072157649

`A025890(n-A000035(n)+n)`
-/

namespace A025832.P15792954153072157649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 ((n : ℤ) - A000035 n + (n : ℤ)).toNat

end

end A025832.P15792954153072157649

namespace A025832

/-- `A025890(n-A000035(n)+n)` -/
def P15792954153072157649.Spec : Prop :=
  ∀ n, P15792954153072157649.a n = A025832 n

end A025832

/-! ## A025832.P14616519995849647865

`A025890(n-(A000035(n)-n))`
-/

namespace A025832.P14616519995849647865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 ((n : ℤ) - (A000035 n - (n : ℤ))).toNat

end

end A025832.P14616519995849647865

namespace A025832

/-- `A025890(n-(A000035(n)-n))` -/
def P14616519995849647865.Spec : Prop :=
  ∀ n, P14616519995849647865.a n = A025832 n

end A025832

/-! ## A025832.P2961382779707043230

`A025890(xor(2, 2*(n+1)))`
-/

namespace A025832.P2961382779707043230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (Nat.xor 2 (2 * (n + 1)))

end

end A025832.P2961382779707043230

namespace A025832

/-- `A025890(xor(2, 2*(n+1)))` -/
def P2961382779707043230.Spec : Prop :=
  ∀ n, P2961382779707043230.a n = A025832 n

end A025832

/-! ## A025832.P5068048696280291476

`A025890(A142954(n+2))`
-/

namespace A025832.P5068048696280291476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (A142954 (n + 2)).toNat

end

end A025832.P5068048696280291476

namespace A025832

/-- `A025890(A142954(n+2))` -/
def P5068048696280291476.Spec : Prop :=
  ∀ n, P5068048696280291476.a n = A025832 n

end A025832

/-! ## A025832.P12308472931394897303

`A025924(3*n)`
-/

namespace A025832.P12308472931394897303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (3 * n)

end

end A025832.P12308472931394897303

namespace A025832

/-- `A025924(3*n)` -/
def P12308472931394897303.Spec : Prop :=
  ∀ n, P12308472931394897303.a n = A025832 n

end A025832

/-!
# A025833: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^11)).

The programs for A025833, the canonical program `A025833.P14960608950118286729` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025833 has offset 0).

The definition of A025833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4+x^7-x^11+x^14+x^15-x^18))` (program `A025833.P14960608950118286729`, by `A025833.P14960608950118286729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025833.P14960608950118286729

`ogf(1/(1-x^3-x^4+x^7-x^11+x^14+x^15-x^18))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025833

/-- `ogf(1/(1-x^3-x^4+x^7-x^11+x^14+x^15-x^18))` -/
def P14960608950118286729.Spec : Prop :=
  ∀ n, P14960608950118286729.a n = A025833 n

theorem P14960608950118286729.correct : P14960608950118286729.Spec := by
  intro n
  simp only [A025833]

end A025833

/-! ## A025833.P11721580056707328339

`A025800(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025833.P11721580056707328339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025800 n - a (n - 2)

end

end A025833.P11721580056707328339

namespace A025833

/-- `A025800(n)-a(n-2)` -/
def P11721580056707328339.Spec : Prop :=
  ∀ n, P11721580056707328339.a n = A025833 n

end A025833

/-! ## A025833.P12855039189757996400

`A025903(2*n)`
-/

namespace A025833.P12855039189757996400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025903 (2 * n)

end

end A025833.P12855039189757996400

namespace A025833

/-- `A025903(2*n)` -/
def P12855039189757996400.Spec : Prop :=
  ∀ n, P12855039189757996400.a n = A025833 n

end A025833

/-! ## A025833.P17388886391462591050

`Δ[A029220(xor(1, A004273(n)))]`
-/

namespace A025833.P17388886391462591050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025833.P17388886391462591050

namespace A025833

/-- `Δ[A029220(xor(1, A004273(n)))]` -/
def P17388886391462591050.Spec : Prop :=
  ∀ n, P17388886391462591050.a n = A025833 n

end A025833

/-! ## A025833.P15655529561372734110

`A029148(n)-A029385(2*n+1)`
-/

namespace A025833.P15655529561372734110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029148 n - A029385 (2 * n + 1)

end

end A025833.P15655529561372734110

namespace A025833

/-- `A029148(n)-A029385(2*n+1)` -/
def P15655529561372734110.Spec : Prop :=
  ∀ n, P15655529561372734110.a n = A025833 n

end A025833

/-! ## A025833.P13178727046220656788

`A029357(2*n)-A029385(2*n+1)`
-/

namespace A025833.P13178727046220656788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 (2 * n) - A029385 (2 * n + 1)

end

end A025833.P13178727046220656788

namespace A025833

/-- `A029357(2*n)-A029385(2*n+1)` -/
def P13178727046220656788.Spec : Prop :=
  ∀ n, P13178727046220656788.a n = A025833 n

end A025833

/-! ## A025833.P11783764327094794974

`A029426(2*n)-A029426(2*n+1)`
-/

namespace A025833.P11783764327094794974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029426 (2 * n) - A029426 (2 * n + 1)

end

end A025833.P11783764327094794974

namespace A025833

/-- `A029426(2*n)-A029426(2*n+1)` -/
def P11783764327094794974.Spec : Prop :=
  ∀ n, P11783764327094794974.a n = A025833 n

end A025833

/-! ## A025833.P14731496043506900903

`A029112(2*n+1)-A029163(2*n+1)`
-/

namespace A025833.P14731496043506900903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029112 (2 * n + 1) - A029163 (2 * n + 1)

end

end A025833.P14731496043506900903

namespace A025833

/-- `A029112(2*n+1)-A029163(2*n+1)` -/
def P14731496043506900903.Spec : Prop :=
  ∀ n, P14731496043506900903.a n = A025833 n

end A025833

/-! ## A025833.P16868488672582971174

`Δ[A029220(A004442(A004273(n)))]`
-/

namespace A025833.P16868488672582971174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025833.P16868488672582971174

namespace A025833

/-- `Δ[A029220(A004442(A004273(n)))]` -/
def P16868488672582971174.Spec : Prop :=
  ∀ n, P16868488672582971174.a n = A025833 n

end A025833

/-! ## A025833.P3435185034132532549

`A025852(2*n)+A029072(2*n)-A029056(2*n)`
-/

namespace A025833.P3435185034132532549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025852 (2 * n) + (A029072 (2 * n) - A029056 (2 * n))

end

end A025833.P3435185034132532549

namespace A025833

/-- `A025852(2*n)+A029072(2*n)-A029056(2*n)` -/
def P3435185034132532549.Spec : Prop :=
  ∀ n, P3435185034132532549.a n = A025833 n

end A025833

/-! ## A025833.P16758846400729555243

`A029072(2*n)+A029163(2*n)-A029026(2*n)`
-/

namespace A025833.P16758846400729555243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 (2 * n) + (A029163 (2 * n) - A029026 (2 * n))

end

end A025833.P16758846400729555243

namespace A025833

/-- `A029072(2*n)+A029163(2*n)-A029026(2*n)` -/
def P16758846400729555243.Spec : Prop :=
  ∀ n, P16758846400729555243.a n = A025833 n

end A025833

/-! ## A025833.P10770221400798312657

`Δ[A029187(2*n)-A029141(n)]`
-/

namespace A025833.P10770221400798312657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029187 (2 * n) - A029141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025833.P10770221400798312657

namespace A025833

/-- `Δ[A029187(2*n)-A029141(n)]` -/
def P10770221400798312657.Spec : Prop :=
  ∀ n, P10770221400798312657.a n = A025833 n

end A025833

/-! ## A025833.P6354843999268923802

`Δ[A029220(2*n+9)]`
-/

namespace A025833.P6354843999268923802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025833.P6354843999268923802

namespace A025833

/-- `Δ[A029220(2*n+9)]` -/
def P6354843999268923802.Spec : Prop :=
  ∀ n, P6354843999268923802.a n = A025833 n

end A025833

/-! ## A025833.P7022908959303539118

`A025925(3*n)`
-/

namespace A025833.P7022908959303539118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 (3 * n)

end

end A025833.P7022908959303539118

namespace A025833

/-- `A025925(3*n)` -/
def P7022908959303539118.Spec : Prop :=
  ∀ n, P7022908959303539118.a n = A025833 n

end A025833

/-!
# A025834: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^12)).

The programs for A025834, the canonical program `A025834.P7422942276613971496` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025834 has offset 0).

The definition of A025834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4+x^7-x^12+x^15+x^16-x^19))` (program `A025834.P7422942276613971496`, by `A025834.P7422942276613971496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025834.P7422942276613971496

`ogf(1/(1-x^3-x^4+x^7-x^12+x^15+x^16-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025834

/-- `ogf(1/(1-x^3-x^4+x^7-x^12+x^15+x^16-x^19))` -/
def P7422942276613971496.Spec : Prop :=
  ∀ n, P7422942276613971496.a n = A025834 n

theorem P7422942276613971496.correct : P7422942276613971496.Spec := by
  intro n
  simp only [A025834]

end A025834

/-! ## A025834.P10439621650770113227

`C(floor(floor(n/3)+1-n/4)+1, 2)`
-/

namespace A025834.P10439621650770113227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(⌊(n : ℚ) / 3⌋ : ℚ) + (1 - (n : ℚ) / 4)⌋ + 1).toNat 2

end

end A025834.P10439621650770113227

namespace A025834

/-- `C(floor(floor(n/3)+1-n/4)+1, 2)` -/
def P10439621650770113227.Spec : Prop :=
  ∀ n, (P10439621650770113227.a n : ℤ) = A025834 n

end A025834

/-! ## A025834.P11647346945589991706

`A025801(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025834.P11647346945589991706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025801 n - a (n - 2)

end

end A025834.P11647346945589991706

namespace A025834

/-- `A025801(n)-a(n-2)` -/
def P11647346945589991706.Spec : Prop :=
  ∀ n, P11647346945589991706.a n = A025834 n

end A025834

/-! ## A025834.P4126955787008744406

`A000217(ceil(Δ[ceil(n²/12)]/2))`
-/

namespace A025834.P4126955787008744406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈(f1 (n + 1) - f1 n : ℚ) / 2⌉.toNat

end

end A025834.P4126955787008744406

namespace A025834

/-- `A000217(ceil(Δ[ceil(n²/12)]/2))` -/
def P4126955787008744406.Spec : Prop :=
  ∀ n, P4126955787008744406.a n = A025834 n

end A025834

/-! ## A025834.P11737685720866168499

`A161680(ceil(Δ[ceil(n²/12)]/2)+1)`
-/

namespace A025834.P11737685720866168499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (⌈(f1 (n + 1) - f1 n : ℚ) / 2⌉ + 1).toNat

end

end A025834.P11737685720866168499

namespace A025834

/-- `A161680(ceil(Δ[ceil(n²/12)]/2)+1)` -/
def P11737685720866168499.Spec : Prop :=
  ∀ n, P11737685720866168499.a n = A025834 n

end A025834

/-! ## A025834.P12680232151383209598

`A025796(abs(A097140(n)))`
-/

namespace A025834.P12680232151383209598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 |A097140 n|.toNat

end

end A025834.P12680232151383209598

namespace A025834

/-- `A025796(abs(A097140(n)))` -/
def P12680232151383209598.Spec : Prop :=
  ∀ n, P12680232151383209598.a n = A025834 n

end A025834

/-! ## A025834.P5309860898144844959

`A025796(abs(A215415(n)))`
-/

namespace A025834.P5309860898144844959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 |A215415 n|.toNat

end

end A025834.P5309860898144844959

namespace A025834

/-- `A025796(abs(A215415(n)))` -/
def P5309860898144844959.Spec : Prop :=
  ∀ n, P5309860898144844959.a n = A025834 n

end A025834

/-! ## A025834.P5307475345624580983

`A008795(xor(1, A008612(n)))`
-/

namespace A025834.P5307475345624580983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (Int.xor 1 (A008612 n)).toNat

end

end A025834.P5307475345624580983

namespace A025834

/-- `A008795(xor(1, A008612(n)))` -/
def P5307475345624580983.Spec : Prop :=
  ∀ n, P5307475345624580983.a n = A025834 n

end A025834

/-! ## A025834.P3908703053504351416

`∑{d}[A008679(n), A007438(#)]`
-/

namespace A025834.P3908703053504351416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007438 d

end

end A025834.P3908703053504351416

namespace A025834

/-- `∑{d}[A008679(n), A007438(#)]` -/
def P3908703053504351416.Spec : Prop :=
  ∀ n, P3908703053504351416.a n = A025834 n

end A025834

/-! ## A025834.P17356514574845460820

`A000124(ceil(A008612(n)/2))-1`
-/

namespace A025834.P17356514574845460820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ⌈(A008612 n : ℚ) / 2⌉.toNat - 1

end

end A025834.P17356514574845460820

namespace A025834

/-- `A000124(ceil(A008612(n)/2))-1` -/
def P17356514574845460820.Spec : Prop :=
  ∀ n, P17356514574845460820.a n = A025834 n

end A025834

/-! ## A025834.P1552208253900828682

`A002378(ceil(A008612(n)/2))/2`
-/

namespace A025834.P1552208253900828682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 ⌈(A008612 n : ℚ) / 2⌉.toNat : ℚ) / 2

end

end A025834.P1552208253900828682

namespace A025834

/-- `A002378(ceil(A008612(n)/2))/2` -/
def P1552208253900828682.Spec : Prop :=
  ∀ n, P1552208253900828682.a n = (A025834 n : ℚ)

end A025834

/-! ## A025834.P14981025666393692740

`A090176(A168195(n+2))`
-/

namespace A025834.P14981025666393692740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090176 (A168195 (n + 2)).toNat

end

end A025834.P14981025666393692740

namespace A025834

/-- `A090176(A168195(n+2))` -/
def P14981025666393692740.Spec : Prop :=
  ∀ n, P14981025666393692740.a n = A025834 n

end A025834

/-! ## A025834.P12669283295081373089

`A004525(A008679(n)+A008679(n)²)`
-/

namespace A025834.P12669283295081373089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008679 n + A008679 n ^ 2).toNat

end

end A025834.P12669283295081373089

namespace A025834

/-- `A004525(A008679(n)+A008679(n)²)` -/
def P12669283295081373089.Spec : Prop :=
  ∀ n, P12669283295081373089.a n = A025834 n

end A025834

/-! ## A025834.P12406148787876506148

`A004526(A008679(n)+A008679(n)²)`
-/

namespace A025834.P12406148787876506148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008679 n + A008679 n ^ 2).toNat

end

end A025834.P12406148787876506148

namespace A025834

/-- `A004526(A008679(n)+A008679(n)²)` -/
def P12406148787876506148.Spec : Prop :=
  ∀ n, P12406148787876506148.a n = A025834 n

end A025834

/-! ## A025834.P5155005283113321598

`A004525((A008679(n)+1)*A008679(n))`
-/

namespace A025834.P5155005283113321598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((A008679 n + 1) * A008679 n).toNat

end

end A025834.P5155005283113321598

namespace A025834

/-- `A004525((A008679(n)+1)*A008679(n))` -/
def P5155005283113321598.Spec : Prop :=
  ∀ n, P5155005283113321598.a n = A025834 n

end A025834

/-!
# A025835: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)).

The programs for A025835, the canonical program `A025835.P7210783551118033455` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025835 has offset 0).

The definition of A025835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^5-x^6+x^8+x^9+x^11-x^14))` (program `A025835.P7210783551118033455`, by `A025835.P7210783551118033455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025835.P7210783551118033455

`ogf(1/(1-x^3-x^5-x^6+x^8+x^9+x^11-x^14))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025835

/-- `ogf(1/(1-x^3-x^5-x^6+x^8+x^9+x^11-x^14))` -/
def P7210783551118033455.Spec : Prop :=
  ∀ n, P7210783551118033455.a n = A025835 n

theorem P7210783551118033455.correct : P7210783551118033455.Spec := by
  intro n
  simp only [A025835]

end A025835

/-! ## A025835.P16645359218698622935

`floor((n²+4*n+40+10*(n+7)*(n+2)%3)/180)`
-/

namespace A025835.P16645359218698622935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 4 * n + 40 + 10 * (n + 7) * ((n + 2) % 3) : ℕ) : ℚ) / 180⌋

end

end A025835.P16645359218698622935

namespace A025835

/-- `floor((n²+4*n+40+10*(n+7)*(n+2)%3)/180)` -/
def P16645359218698622935.Spec : Prop :=
  ∀ n, P16645359218698622935.a n = A025835 n

end A025835

/-! ## A025835.P2629410859167698004

`A033182(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025835.P2629410859167698004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A033182 n + a (n - 3)

end

end A025835.P2629410859167698004

namespace A025835

/-- `A033182(n)+a(n-3)` -/
def P2629410859167698004.Spec : Prop :=
  ∀ n, P2629410859167698004.a n = A025835 n

end A025835

/-! ## A025835.P18090475089985540236

`Δ[A008670(n)-A008681(n)]`
-/

namespace A025835.P18090475089985540236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n - A008681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025835.P18090475089985540236

namespace A025835

/-- `Δ[A008670(n)-A008681(n)]` -/
def P18090475089985540236.Spec : Prop :=
  ∀ n, P18090475089985540236.a n = A025835 n

end A025835

/-! ## A025835.P11411698632399588148

`A025857(2*n)`
-/

namespace A025835.P11411698632399588148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (2 * n)

end

end A025835.P11411698632399588148

namespace A025835

/-- `A025857(2*n)` -/
def P11411698632399588148.Spec : Prop :=
  ∀ n, P11411698632399588148.a n = A025835 n

end A025835

/-! ## A025835.P9184790590567250570

`A025881(2*n)`
-/

namespace A025835.P9184790590567250570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (2 * n)

end

end A025835.P9184790590567250570

namespace A025835

/-- `A025881(2*n)` -/
def P9184790590567250570.Spec : Prop :=
  ∀ n, P9184790590567250570.a n = A025835 n

end A025835

/-! ## A025835.P591439170659786679

`A025796(n)-A025864(2*n+1)`
-/

namespace A025835.P591439170659786679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 n - A025864 (2 * n + 1)

end

end A025835.P591439170659786679

namespace A025835

/-- `A025796(n)-A025864(2*n+1)` -/
def P591439170659786679.Spec : Prop :=
  ∀ n, P591439170659786679.a n = A025835 n

end A025835

/-! ## A025835.P13750779148987287221

`A029169(2*n)-A029169(2*n+1)`
-/

namespace A025835.P13750779148987287221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029169 (2 * n) - A029169 (2 * n + 1)

end

end A025835.P13750779148987287221

namespace A025835

/-- `A029169(2*n)-A029169(2*n+1)` -/
def P13750779148987287221.Spec : Prop :=
  ∀ n, P13750779148987287221.a n = A025835 n

end A025835

/-! ## A025835.P16068081108483114593

`A029331(2*n)-A029331(2*n+1)`
-/

namespace A025835.P16068081108483114593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (2 * n) - A029331 (2 * n + 1)

end

end A025835.P16068081108483114593

namespace A025835

/-- `A029331(2*n)-A029331(2*n+1)` -/
def P16068081108483114593.Spec : Prop :=
  ∀ n, P16068081108483114593.a n = A025835 n

end A025835

/-! ## A025835.P15820089682880615158

`Δ[A029169(Δ[n²])]`
-/

namespace A025835.P15820089682880615158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029169 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025835.P15820089682880615158

namespace A025835

/-- `Δ[A029169(Δ[n²])]` -/
def P15820089682880615158.Spec : Prop :=
  ∀ n, P15820089682880615158.a n = A025835 n

end A025835

/-! ## A025835.P17603060808901600409

`Δ[A029250(Δ[n²])]`
-/

namespace A025835.P17603060808901600409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029250 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025835.P17603060808901600409

namespace A025835

/-- `Δ[A029250(Δ[n²])]` -/
def P17603060808901600409.Spec : Prop :=
  ∀ n, P17603060808901600409.a n = A025835 n

end A025835

/-! ## A025835.P2865390972551645083

`A029198(2*n)-A029198(2*n+3)`
-/

namespace A025835.P2865390972551645083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 (2 * n) - A029198 (2 * n + 3)

end

end A025835.P2865390972551645083

namespace A025835

/-- `A029198(2*n)-A029198(2*n+3)` -/
def P2865390972551645083.Spec : Prop :=
  ∀ n, P2865390972551645083.a n = A025835 n

end A025835

/-! ## A025835.P2016501066906804244

`A029061(2*n+3)-A029061(2*(n+1))`
-/

namespace A025835.P2016501066906804244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029061 (2 * n + 3) - A029061 (2 * (n + 1))

end

end A025835.P2016501066906804244

namespace A025835

/-- `A029061(2*n+3)-A029061(2*(n+1))` -/
def P2016501066906804244.Spec : Prop :=
  ∀ n, P2016501066906804244.a n = A025835 n

end A025835

/-! ## A025835.P10129748995009521573

`A029250(2*n+3)-A029250(2*n+1)`
-/

namespace A025835.P10129748995009521573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029250 (2 * n + 3) - A029250 (2 * n + 1)

end

end A025835.P10129748995009521573

namespace A025835

/-- `A029250(2*n+3)-A029250(2*n+1)` -/
def P10129748995009521573.Spec : Prop :=
  ∀ n, P10129748995009521573.a n = A025835 n

end A025835

/-! ## A025835.P10447826412430427278

`Δ[A029198(2*n+3)]`
-/

namespace A025835.P10447826412430427278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025835.P10447826412430427278

namespace A025835

/-- `Δ[A029198(2*n+3)]` -/
def P10447826412430427278.Spec : Prop :=
  ∀ n, P10447826412430427278.a n = A025835 n

end A025835

/-!
# A025836: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^8)).

The programs for A025836, the canonical program `A025836.P5539969222882256542` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025836 has offset 0).

The definition of A025836 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^5+x^11+x^13-x^16))` (program `A025836.P5539969222882256542`, by `A025836.P5539969222882256542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025836.P5539969222882256542

`ogf(1/(1-x^3-x^5+x^11+x^13-x^16))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025836

/-- `ogf(1/(1-x^3-x^5+x^11+x^13-x^16))` -/
def P5539969222882256542.Spec : Prop :=
  ∀ n, P5539969222882256542.a n = A025836 n

theorem P5539969222882256542.correct : P5539969222882256542.Spec := by
  intro n
  simp only [A025836]

end A025836

/-! ## A025836.P1434189988463526663

`abs(∑[A291985(n)])`
-/

namespace A025836.P1434189988463526663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A025836.P1434189988463526663

namespace A025836

/-- `abs(∑[A291985(n)])` -/
def P1434189988463526663.Spec : Prop :=
  ∀ n, P1434189988463526663.a n = A025836 n

end A025836

/-! ## A025836.P5502552146757141694

`∑[A291985(n)]*A033999(n)`
-/

namespace A025836.P5502552146757141694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A025836.P5502552146757141694

namespace A025836

/-- `∑[A291985(n)]*A033999(n)` -/
def P5502552146757141694.Spec : Prop :=
  ∀ n, P5502552146757141694.a n = A025836 n

end A025836

/-! ## A025836.P1448409379777046182

`lcm(∑[A291985(n)], A020985(n))`
-/

namespace A025836.P1448409379777046182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A020985 n)

end

end A025836.P1448409379777046182

namespace A025836

/-- `lcm(∑[A291985(n)], A020985(n))` -/
def P1448409379777046182.Spec : Prop :=
  ∀ n, (P1448409379777046182.a n : ℤ) = A025836 n

end A025836

/-! ## A025836.P13400092637902242110

`A025877(abs(3-n))+A025877(n)`
-/

namespace A025836.P13400092637902242110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 |3 - (n : ℤ)|.toNat + A025877 n

end

end A025836.P13400092637902242110

namespace A025836

/-- `A025877(abs(3-n))+A025877(n)` -/
def P13400092637902242110.Spec : Prop :=
  ∀ n, P13400092637902242110.a n = A025836 n

end A025836

/-! ## A025836.P11844084764830395535

`∑[A291985(n)]*A009531(2*n+1)`
-/

namespace A025836.P11844084764830395535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009531 (2 * n + 1)

end

end A025836.P11844084764830395535

namespace A025836

/-- `∑[A291985(n)]*A009531(2*n+1)` -/
def P11844084764830395535.Spec : Prop :=
  ∀ n, P11844084764830395535.a n = A025836 n

end A025836

/-! ## A025836.P18319594782381566785

`∑[A291985(n)]/A009531(A005408(n))`
-/

namespace A025836.P18319594782381566785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A009531 (A005408 n).toNat : ℚ)

end

end A025836.P18319594782381566785

namespace A025836

/-- `∑[A291985(n)]/A009531(A005408(n))` -/
def P18319594782381566785.Spec : Prop :=
  ∀ n, P18319594782381566785.a n = (A025836 n : ℚ)

end A025836

/-! ## A025836.P5615428702613090474

`gcd(∑[A291985(n)], A048298(2*n+1))`
-/

namespace A025836.P5615428702613090474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A048298 (2 * n + 1))

end

end A025836.P5615428702613090474

namespace A025836

/-- `gcd(∑[A291985(n)], A048298(2*n+1))` -/
def P5615428702613090474.Spec : Prop :=
  ∀ n, (P5615428702613090474.a n : ℤ) = A025836 n

end A025836

/-! ## A025836.P6176410118595854778

`A369611(2*n+1)-A220838(n+1)`
-/

namespace A025836.P6176410118595854778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369611 (2 * n + 1) - A220838 (n + 1)

end

end A025836.P6176410118595854778

namespace A025836

/-- `A369611(2*n+1)-A220838(n+1)` -/
def P6176410118595854778.Spec : Prop :=
  ∀ n, P6176410118595854778.a n = A025836 n

end A025836

/-! ## A025836.P7910649408018918639

`A025890(2*(n+1))-Δ[A025877(n)]`
-/

namespace A025836.P7910649408018918639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A025836.P7910649408018918639

namespace A025836

/-- `A025890(2*(n+1))-Δ[A025877(n)]` -/
def P7910649408018918639.Spec : Prop :=
  ∀ n, P7910649408018918639.a n = A025836 n

end A025836

/-! ## A025836.P17485377650681679040

`Δ[A029318(A008585(n))-A029246(n)]`
-/

namespace A025836.P17485377650681679040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029318 (A008585 n).toNat - A029246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025836.P17485377650681679040

namespace A025836

/-- `Δ[A029318(A008585(n))-A029246(n)]` -/
def P17485377650681679040.Spec : Prop :=
  ∀ n, P17485377650681679040.a n = A025836 n

end A025836

/-! ## A025836.P9573427286919607911

`A056926(∑[A291985(n)]²)`
-/

namespace A025836.P9573427286919607911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A025836.P9573427286919607911

namespace A025836

/-- `A056926(∑[A291985(n)]²)` -/
def P9573427286919607911.Spec : Prop :=
  ∀ n, P9573427286919607911.a n = A025836 n

end A025836

/-! ## A025836.P12361431909070766612

`A018851(∑[A291985(n)]²)`
-/

namespace A025836.P12361431909070766612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A025836.P12361431909070766612

namespace A025836

/-- `A018851(∑[A291985(n)]²)` -/
def P12361431909070766612.Spec : Prop :=
  ∀ n, P12361431909070766612.a n = A025836 n

end A025836

/-! ## A025836.P13965703747100273951

`A000196(∑[A291985(n)]²)`
-/

namespace A025836.P13965703747100273951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A025836.P13965703747100273951

namespace A025836

/-- `A000196(∑[A291985(n)]²)` -/
def P13965703747100273951.Spec : Prop :=
  ∀ n, P13965703747100273951.a n = A025836 n

end A025836

/-! ## A025836.P15968053143789927282

`A037213(∑[A291985(n)]²)`
-/

namespace A025836.P15968053143789927282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A025836.P15968053143789927282

namespace A025836

/-- `A037213(∑[A291985(n)]²)` -/
def P15968053143789927282.Spec : Prop :=
  ∀ n, P15968053143789927282.a n = A025836 n

end A025836

/-! ## A025836.P5577180082798038840

`A178786(∑[A291985(n)]²)`
-/

namespace A025836.P5577180082798038840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A025836.P5577180082798038840

namespace A025836

/-- `A178786(∑[A291985(n)]²)` -/
def P5577180082798038840.Spec : Prop :=
  ∀ n, P5577180082798038840.a n = A025836 n

end A025836

/-! ## A025836.P14439018792353171543

`A331958(∑[A291985(n)]²)`
-/

namespace A025836.P14439018792353171543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A025836.P14439018792353171543

namespace A025836

/-- `A331958(∑[A291985(n)]²)` -/
def P14439018792353171543.Spec : Prop :=
  ∀ n, P14439018792353171543.a n = A025836 n

end A025836

/-! ## A025836.P9622079189851684398

`A000194(∑[A291985(n)]²)`
-/

namespace A025836.P9622079189851684398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A025836.P9622079189851684398

namespace A025836

/-- `A000194(∑[A291985(n)]²)` -/
def P9622079189851684398.Spec : Prop :=
  ∀ n, P9622079189851684398.a n = A025836 n

end A025836

/-! ## A025836.P11917225107401655219

`abs(∑[A342708(A000096(n+4)+7)])`
-/

namespace A025836.P11917225107401655219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342708 (A000096 (n + 4) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A025836.P11917225107401655219

namespace A025836

/-- `abs(∑[A342708(A000096(n+4)+7)])` -/
def P11917225107401655219.Spec : Prop :=
  ∀ n, P11917225107401655219.a n = A025836 n

end A025836

/-!
# A025837: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^9)).

The programs for A025837, the canonical program `A025837.P12101036720242063415` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025837 has offset 0).

The definition of A025837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^5+x^8-x^9+x^12+x^14-x^17))` (program `A025837.P12101036720242063415`, by `A025837.P12101036720242063415.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025837.P12101036720242063415

`ogf(1/(1-x^3-x^5+x^8-x^9+x^12+x^14-x^17))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025837

/-- `ogf(1/(1-x^3-x^5+x^8-x^9+x^12+x^14-x^17))` -/
def P12101036720242063415.Spec : Prop :=
  ∀ n, P12101036720242063415.a n = A025837 n

theorem P12101036720242063415.correct : P12101036720242063415.Spec := by
  intro n
  simp only [A025837]

end A025837

/-! ## A025837.P4351581931671655560

`floor((n²+7*n+170+10*(n+5)*(n+2)%3)/270)`
-/

namespace A025837.P4351581931671655560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 7 * n + 170 + 10 * (n + 5) * ((n + 2) % 3) : ℕ) : ℚ) / 270⌋

end

end A025837.P4351581931671655560

namespace A025837

/-- `floor((n²+7*n+170+10*(n+5)*(n+2)%3)/270)` -/
def P4351581931671655560.Spec : Prop :=
  ∀ n, P4351581931671655560.a n = A025837 n

end A025837

/-! ## A025837.P14089993397480469275

`A025904(A047242(n+1))`
-/

namespace A025837.P14089993397480469275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (A047242 (n + 1)).toNat

end

end A025837.P14089993397480469275

namespace A025837

/-- `A025904(A047242(n+1))` -/
def P14089993397480469275.Spec : Prop :=
  ∀ n, P14089993397480469275.a n = A025837 n

end A025837

/-! ## A025837.P4979122505253491529

`A025904(A047244(n+1))`
-/

namespace A025837.P4979122505253491529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (A047244 (n + 1)).toNat

end

end A025837.P4979122505253491529

namespace A025837

/-- `A025904(A047244(n+1))` -/
def P4979122505253491529.Spec : Prop :=
  ∀ n, P4979122505253491529.a n = A025837 n

end A025837

/-! ## A025837.P16518405094037495656

`A025904(2*n)`
-/

namespace A025837.P16518405094037495656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (2 * n)

end

end A025837.P16518405094037495656

namespace A025837

/-- `A025904(2*n)` -/
def P16518405094037495656.Spec : Prop :=
  ∀ n, P16518405094037495656.a n = A025837 n

end A025837

/-! ## A025837.P1378051560579239337

`A029423(2*n)-A029423(2*n+1)`
-/

namespace A025837.P1378051560579239337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (2 * n) - A029423 (2 * n + 1)

end

end A025837.P1378051560579239337

namespace A025837

/-- `A029423(2*n)-A029423(2*n+1)` -/
def P1378051560579239337.Spec : Prop :=
  ∀ n, P1378051560579239337.a n = A025837 n

end A025837

/-! ## A025837.P10289524741052516425

`A025865(2*n)+A025891(2*n)-A025862(2*n)`
-/

namespace A025837.P10289524741052516425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 (2 * n) + (A025891 (2 * n) - A025862 (2 * n))

end

end A025837.P10289524741052516425

namespace A025837

/-- `A025865(2*n)+A025891(2*n)-A025862(2*n)` -/
def P10289524741052516425.Spec : Prop :=
  ∀ n, P10289524741052516425.a n = A025837 n

end A025837

/-! ## A025837.P5314521306970984739

`A029221(2*n)+A029354(2*n)-A029188(2*n)`
-/

namespace A025837.P5314521306970984739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (2 * n) + (A029354 (2 * n) - A029188 (2 * n))

end

end A025837.P5314521306970984739

namespace A025837

/-- `A029221(2*n)+A029354(2*n)-A029188(2*n)` -/
def P5314521306970984739.Spec : Prop :=
  ∀ n, P5314521306970984739.a n = A025837 n

end A025837

/-! ## A025837.P10550174863429253252

`A029221(2*n+1)+A029221(2*n)-A029165(2*n+1)`
-/

namespace A025837.P10550174863429253252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (2 * n + 1) + (A029221 (2 * n) - A029165 (2 * n + 1))

end

end A025837.P10550174863429253252

namespace A025837

/-- `A029221(2*n+1)+A029221(2*n)-A029165(2*n+1)` -/
def P10550174863429253252.Spec : Prop :=
  ∀ n, P10550174863429253252.a n = A025837 n

end A025837

/-! ## A025837.P5514201610321341814

`A025924(2*n+3)+A025924(2*n)`
-/

namespace A025837.P5514201610321341814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (2 * n + 3) + A025924 (2 * n)

end

end A025837.P5514201610321341814

namespace A025837

/-- `A025924(2*n+3)+A025924(2*n)` -/
def P5514201610321341814.Spec : Prop :=
  ∀ n, P5514201610321341814.a n = A025837 n

end A025837

/-! ## A025837.P6496318465330047466

`A029221(2*n)-A029221(A020742(n))`
-/

namespace A025837.P6496318465330047466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (2 * n) - A029221 (A020742 n).toNat

end

end A025837.P6496318465330047466

namespace A025837

/-- `A029221(2*n)-A029221(A020742(n))` -/
def P6496318465330047466.Spec : Prop :=
  ∀ n, P6496318465330047466.a n = A025837 n

end A025837

/-! ## A025837.P18321820659722035231

`Δ[A029221(2*n+7)]`
-/

namespace A025837.P18321820659722035231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025837.P18321820659722035231

namespace A025837

/-- `Δ[A029221(2*n+7)]` -/
def P18321820659722035231.Spec : Prop :=
  ∀ n, P18321820659722035231.a n = A025837 n

end A025837

/-!
# A025838: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^10)).

The programs for A025838, the canonical program `A025838.P4812318481093533767` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025838 has offset 0).

The definition of A025838 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^5+x^8-x^10+x^13+x^15-x^18))` (program `A025838.P4812318481093533767`, by `A025838.P4812318481093533767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025838.P4812318481093533767

`ogf(1/(1-x^3-x^5+x^8-x^10+x^13+x^15-x^18))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025838

/-- `ogf(1/(1-x^3-x^5+x^8-x^10+x^13+x^15-x^18))` -/
def P4812318481093533767.Spec : Prop :=
  ∀ n, P4812318481093533767.a n = A025838 n

theorem P4812318481093533767.correct : P4812318481093533767.Spec := by
  intro n
  simp only [A025838]

end A025838

/-! ## A025838.P2408230229544312139

`floor((n²+42*n+348-6*(n+4)*(n%5+(n+2)%5))/300)`
-/

namespace A025838.P2408230229544312139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 42 * n + 348 : ℤ) - ((6 * (n + 4) * (n % 5 + (n + 2) % 5) : ℕ) : ℤ) : ℚ) / 300⌋

end

end A025838.P2408230229544312139

namespace A025838

/-- `floor((n²+42*n+348-6*(n+4)*(n%5+(n+2)%5))/300)` -/
def P2408230229544312139.Spec : Prop :=
  ∀ n, P2408230229544312139.a n = A025838 n

end A025838

/-! ## A025838.P10390721907101932502

`A029042(n)+A029147(n)-A000008(n)`
-/

namespace A025838.P10390721907101932502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 n + (A029147 n - A000008 n)

end

end A025838.P10390721907101932502

namespace A025838

/-- `A029042(n)+A029147(n)-A000008(n)` -/
def P10390721907101932502.Spec : Prop :=
  ∀ n, P10390721907101932502.a n = A025838 n

end A025838

/-! ## A025838.P10823629055316873853

`A025845(n)+A025888(n)-A025909(n)`
-/

namespace A025838.P10823629055316873853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 n + (A025888 n - A025909 n)

end

end A025838.P10823629055316873853

namespace A025838

/-- `A025845(n)+A025888(n)-A025909(n)` -/
def P10823629055316873853.Spec : Prop :=
  ∀ n, P10823629055316873853.a n = A025838 n

end A025838

/-! ## A025838.P9754845587504168866

`A029042(n)+A029286(n)-A029041(n)`
-/

namespace A025838.P9754845587504168866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 n + (A029286 n - A029041 n)

end

end A025838.P9754845587504168866

namespace A025838

/-- `A029042(n)+A029286(n)-A029041(n)` -/
def P9754845587504168866.Spec : Prop :=
  ∀ n, P9754845587504168866.a n = A025838 n

end A025838

/-! ## A025838.P5713871940125333901

`A029147(n)+A029283(n)-A029145(n)`
-/

namespace A025838.P5713871940125333901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029147 n + (A029283 n - A029145 n)

end

end A025838.P5713871940125333901

namespace A025838

/-- `A029147(n)+A029283(n)-A029145(n)` -/
def P5713871940125333901.Spec : Prop :=
  ∀ n, P5713871940125333901.a n = A025838 n

end A025838

/-! ## A025838.P8993607914269842488

`Δ[A000008(n)-A029147(n)]`
-/

namespace A025838.P8993607914269842488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 n - A029147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025838.P8993607914269842488

namespace A025838

/-- `Δ[A000008(n)-A029147(n)]` -/
def P8993607914269842488.Spec : Prop :=
  ∀ n, P8993607914269842488.a n = A025838 n

end A025838

/-! ## A025838.P2197929240328203957

`Δ[A029041(n)-A029286(n)]`
-/

namespace A025838.P2197929240328203957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029041 n - A029286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025838.P2197929240328203957

namespace A025838

/-- `Δ[A029041(n)-A029286(n)]` -/
def P2197929240328203957.Spec : Prop :=
  ∀ n, P2197929240328203957.a n = A025838 n

end A025838

/-! ## A025838.P1347575507641309981

`A025810(n+1)-Δ[A029147(n)]`
-/

namespace A025838.P1347575507641309981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025810 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025838.P1347575507641309981

namespace A025838

/-- `A025810(n+1)-Δ[A029147(n)]` -/
def P1347575507641309981.Spec : Prop :=
  ∀ n, P1347575507641309981.a n = A025838 n

end A025838

/-! ## A025838.P8636782365458212239

`A025865(xor(1, A304808(n)))`
-/

namespace A025838.P8636782365458212239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 (Int.xor 1 (A304808 n)).toNat

end

end A025838.P8636782365458212239

namespace A025838

/-- `A025865(xor(1, A304808(n)))` -/
def P8636782365458212239.Spec : Prop :=
  ∀ n, P8636782365458212239.a n = A025838 n

end A025838

/-! ## A025838.P15935804194579539707

`A025893(A001651(n+1))+A025888(n)`
-/

namespace A025838.P15935804194579539707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A001651 (n + 1)).toNat + A025888 n

end

end A025838.P15935804194579539707

namespace A025838

/-- `A025893(A001651(n+1))+A025888(n)` -/
def P15935804194579539707.Spec : Prop :=
  ∀ n, P15935804194579539707.a n = A025838 n

end A025838

/-! ## A025838.P11073530557655889325

`A069905(A194519(2*n+1)+2)`
-/

namespace A025838.P11073530557655889325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A194519 (2 * n + 1) + 2).toNat

end

end A025838.P11073530557655889325

namespace A025838

/-- `A069905(A194519(2*n+1)+2)` -/
def P11073530557655889325.Spec : Prop :=
  ∀ n, P11073530557655889325.a n = A025838 n

end A025838

/-!
# A025839: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^11)).

The programs for A025839, the canonical program `A025839.P5118851539840454156` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025839 has offset 0).

The definition of A025839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^5+x^8-x^11+x^14+x^16-x^19))` (program `A025839.P5118851539840454156`, by `A025839.P5118851539840454156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025839.P5118851539840454156

`ogf(1/(1-x^3-x^5+x^8-x^11+x^14+x^16-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025839

/-- `ogf(1/(1-x^3-x^5+x^8-x^11+x^14+x^16-x^19))` -/
def P5118851539840454156.Spec : Prop :=
  ∀ n, P5118851539840454156.a n = A025839 n

theorem P5118851539840454156.correct : P5118851539840454156.Spec := by
  intro n
  simp only [A025839]

end A025839

/-! ## A025839.P7715254064617963911

`A025906(2*n)`
-/

namespace A025839.P7715254064617963911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 (2 * n)

end

end A025839.P7715254064617963911

namespace A025839

/-- `A025906(2*n)` -/
def P7715254064617963911.Spec : Prop :=
  ∀ n, P7715254064617963911.a n = A025839 n

end A025839

/-! ## A025839.P3699311083585512877

`Δ[A029224(xor(1, A004273(n)))]`
-/

namespace A025839.P3699311083585512877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025839.P3699311083585512877

namespace A025839

/-- `Δ[A029224(xor(1, A004273(n)))]` -/
def P3699311083585512877.Spec : Prop :=
  ∀ n, P3699311083585512877.a n = A025839 n

end A025839

/-! ## A025839.P9763136057983069610

`A029148(n)-A029346(2*n+1)`
-/

namespace A025839.P9763136057983069610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029148 n - A029346 (2 * n + 1)

end

end A025839.P9763136057983069610

namespace A025839

/-- `A029148(n)-A029346(2*n+1)` -/
def P9763136057983069610.Spec : Prop :=
  ∀ n, P9763136057983069610.a n = A025839 n

end A025839

/-! ## A025839.P1635772572508471627

`A029357(2*n)-A029346(2*n+1)`
-/

namespace A025839.P1635772572508471627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 (2 * n) - A029346 (2 * n + 1)

end

end A025839.P1635772572508471627

namespace A025839

/-- `A029357(2*n)-A029346(2*n+1)` -/
def P1635772572508471627.Spec : Prop :=
  ∀ n, P1635772572508471627.a n = A025839 n

end A025839

/-! ## A025839.P13620281814390121372

`Δ[A029224(A004442(A004273(n)))]`
-/

namespace A025839.P13620281814390121372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025839.P13620281814390121372

namespace A025839

/-- `Δ[A029224(A004442(A004273(n)))]` -/
def P13620281814390121372.Spec : Prop :=
  ∀ n, P13620281814390121372.a n = A025839 n

end A025839

/-! ## A025839.P1886915076645936483

`A029115(2*n)+A029428(2*n)-A029114(2*n)`
-/

namespace A025839.P1886915076645936483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 (2 * n) + (A029428 (2 * n) - A029114 (2 * n))

end

end A025839.P1886915076645936483

namespace A025839

/-- `A029115(2*n)+A029428(2*n)-A029114(2*n)` -/
def P1886915076645936483.Spec : Prop :=
  ∀ n, P1886915076645936483.a n = A025839 n

end A025839

/-! ## A025839.P5511537963212237643

`A025905(2*n+1)+A029428(2*n)-A029428(2*n+1)`
-/

namespace A025839.P5511537963212237643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 (2 * n + 1) + (A029428 (2 * n) - A029428 (2 * n + 1))

end

end A025839.P5511537963212237643

namespace A025839

/-- `A025905(2*n+1)+A029428(2*n)-A029428(2*n+1)` -/
def P5511537963212237643.Spec : Prop :=
  ∀ n, P5511537963212237643.a n = A025839 n

end A025839

/-! ## A025839.P8617617811631447443

`A029114(2*n+1)+A029428(2*n)-A029113(2*n+1)`
-/

namespace A025839.P8617617811631447443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 (2 * n + 1) + (A029428 (2 * n) - A029113 (2 * n + 1))

end

end A025839.P8617617811631447443

namespace A025839

/-- `A029114(2*n+1)+A029428(2*n)-A029113(2*n+1)` -/
def P8617617811631447443.Spec : Prop :=
  ∀ n, P8617617811631447443.a n = A025839 n

end A025839

/-! ## A025839.P17019473155470559394

`A029426(2*n)-A029426(2*n+3)`
-/

namespace A025839.P17019473155470559394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029426 (2 * n) - A029426 (2 * n + 3)

end

end A025839.P17019473155470559394

namespace A025839

/-- `A029426(2*n)-A029426(2*n+3)` -/
def P17019473155470559394.Spec : Prop :=
  ∀ n, P17019473155470559394.a n = A025839 n

end A025839

/-! ## A025839.P12621331889519163456

`Δ[∑[A025904(2*n)]-A029428(2*n)]`
-/

namespace A025839.P12621331889519163456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029428 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025839.P12621331889519163456

namespace A025839

/-- `Δ[∑[A025904(2*n)]-A029428(2*n)]` -/
def P12621331889519163456.Spec : Prop :=
  ∀ n, P12621331889519163456.a n = A025839 n

end A025839

/-! ## A025839.P9374840393106944109

`A025896(2*n+5)`
-/

namespace A025839.P9374840393106944109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025896 (2 * n + 5)

end

end A025839.P9374840393106944109

namespace A025839

/-- `A025896(2*n+5)` -/
def P9374840393106944109.Spec : Prop :=
  ∀ n, P9374840393106944109.a n = A025839 n

end A025839

/-! ## A025839.P3102085089593488078

`Δ[A029213(2*n+3)]`
-/

namespace A025839.P3102085089593488078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025839.P3102085089593488078

namespace A025839

/-- `Δ[A029213(2*n+3)]` -/
def P3102085089593488078.Spec : Prop :=
  ∀ n, P3102085089593488078.a n = A025839 n

end A025839

/-! ## A025839.P17222218956087733610

`Δ[A029224(A004273(n+5))]`
-/

namespace A025839.P17222218956087733610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (A004273 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025839.P17222218956087733610

namespace A025839

/-- `Δ[A029224(A004273(n+5))]` -/
def P17222218956087733610.Spec : Prop :=
  ∀ n, P17222218956087733610.a n = A025839 n

end A025839

/-!
# A025840: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^12)).

The programs for A025840, the canonical program `A025840.P14367124131948747260` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025840 has offset 0).

The definition of A025840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^5+x^8-x^12+x^15+x^17-x^20))` (program `A025840.P14367124131948747260`, by `A025840.P14367124131948747260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025840.P14367124131948747260

`ogf(1/(1-x^3-x^5+x^8-x^12+x^15+x^17-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025840

/-- `ogf(1/(1-x^3-x^5+x^8-x^12+x^15+x^17-x^20))` -/
def P14367124131948747260.Spec : Prop :=
  ∀ n, P14367124131948747260.a n = A025840 n

theorem P14367124131948747260.correct : P14367124131948747260.Spec := by
  intro n
  simp only [A025840]

end A025840

/-! ## A025840.P13065083741714530508

`A025853(n)+A025882(n)-A025911(n)`
-/

namespace A025840.P13065083741714530508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 n + (A025882 n - A025911 n)

end

end A025840.P13065083741714530508

namespace A025840

/-- `A025853(n)+A025882(n)-A025911(n)` -/
def P13065083741714530508.Spec : Prop :=
  ∀ n, P13065083741714530508.a n = A025840 n

end A025840

/-! ## A025840.P6978480861589427000

`A025857(n)+A029044(n)-A029047(n)`
-/

namespace A025840.P6978480861589427000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n + (A029044 n - A029047 n)

end

end A025840.P6978480861589427000

namespace A025840

/-- `A025857(n)+A029044(n)-A029047(n)` -/
def P6978480861589427000.Spec : Prop :=
  ∀ n, P6978480861589427000.a n = A025840 n

end A025840

/-! ## A025840.P2686872788132705294

`A029044(n)+A029149(n)-A029016(n)`
-/

namespace A025840.P2686872788132705294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029044 n + (A029149 n - A029016 n)

end

end A025840.P2686872788132705294

namespace A025840

/-- `A029044(n)+A029149(n)-A029016(n)` -/
def P2686872788132705294.Spec : Prop :=
  ∀ n, P2686872788132705294.a n = A025840 n

end A025840

/-! ## A025840.P2481674003356058747

`Δ[A029047(n)-A025857(n)]`
-/

namespace A025840.P2481674003356058747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029047 n - A025857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025840.P2481674003356058747

namespace A025840

/-- `Δ[A029047(n)-A025857(n)]` -/
def P2481674003356058747.Spec : Prop :=
  ∀ n, P2481674003356058747.a n = A025840 n

end A025840

/-! ## A025840.P7223437735749000111

`Δ[A029016(n)-A029149(n)]`
-/

namespace A025840.P7223437735749000111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029016 n - A029149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025840.P7223437735749000111

namespace A025840

/-- `Δ[A029016(n)-A029149(n)]` -/
def P7223437735749000111.Spec : Prop :=
  ∀ n, P7223437735749000111.a n = A025840 n

end A025840

/-! ## A025840.P12687333428922672677

`Δ[∑[A025839(n)]-A029291(n)]`
-/

namespace A025840.P12687333428922672677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025839 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025840.P12687333428922672677

namespace A025840

/-- `Δ[∑[A025839(n)]-A029291(n)]` -/
def P12687333428922672677.Spec : Prop :=
  ∀ n, P12687333428922672677.a n = A025840 n

end A025840

/-! ## A025840.P15506177593366205426

`A025843(n+1)-Δ[A025857(n)]`
-/

namespace A025840.P15506177593366205426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025840.P15506177593366205426

namespace A025840

/-- `A025843(n+1)-Δ[A025857(n)]` -/
def P15506177593366205426.Spec : Prop :=
  ∀ n, P15506177593366205426.a n = A025840 n

end A025840

/-! ## A025840.P10739985318773567871

`A025839(n+1)-Δ[A029291(n)]`
-/

namespace A025840.P10739985318773567871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025839 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025840.P10739985318773567871

namespace A025840

/-- `A025839(n+1)-Δ[A029291(n)]` -/
def P10739985318773567871.Spec : Prop :=
  ∀ n, P10739985318773567871.a n = A025840 n

end A025840

/-! ## A025840.P4636078637828481243

`A025835(n+6)+A029277(n)-A029277(n+6)`
-/

namespace A025840.P4636078637828481243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 (n + 6) + (A029277 n - A029277 (n + 6))

end

end A025840.P4636078637828481243

namespace A025840

/-- `A025835(n+6)+A029277(n)-A029277(n+6)` -/
def P4636078637828481243.Spec : Prop :=
  ∀ n, P4636078637828481243.a n = A025840 n

end A025840

/-! ## A025840.P3747568619644977859

`A025835(n+6)-(A025857(n+1)+A025857(n+6))`
-/

namespace A025840.P3747568619644977859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 (n + 6) - (A025857 (n + 1) + A025857 (n + 6))

end

end A025840.P3747568619644977859

namespace A025840

/-- `A025835(n+6)-(A025857(n+1)+A025857(n+6))` -/
def P3747568619644977859.Spec : Prop :=
  ∀ n, P3747568619644977859.a n = A025840 n

end A025840

/-! ## A025840.P11396230964725605935

`Δ[A029224(2*n)-A029291(n)]`
-/

namespace A025840.P11396230964725605935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (2 * n) - A029291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025840.P11396230964725605935

namespace A025840

/-- `Δ[A029224(2*n)-A029291(n)]` -/
def P11396230964725605935.Spec : Prop :=
  ∀ n, P11396230964725605935.a n = A025840 n

end A025840

/-!
# A025841: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^7)).

The programs for A025841, the canonical program `A025841.P2480632287267505238` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025841 has offset 0).

The definition of A025841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^6-x^7+x^9+x^10+x^13-x^16))` (program `A025841.P2480632287267505238`, by `A025841.P2480632287267505238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025841.P2480632287267505238

`ogf(1/(1-x^3-x^6-x^7+x^9+x^10+x^13-x^16))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025841

/-- `ogf(1/(1-x^3-x^6-x^7+x^9+x^10+x^13-x^16))` -/
def P2480632287267505238.Spec : Prop :=
  ∀ n, P2480632287267505238.a n = A025841 n

theorem P2480632287267505238.correct : P2480632287267505238.Spec := by
  intro n
  simp only [A025841]

end A025841

/-! ## A025841.P4029116764243009455

`floor((n²+30*n+260)/252-((n+7)*n%3-(n+2)%3)/18)`
-/

namespace A025841.P4029116764243009455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 30 * n + 260 : ℚ) / 252 - ((((n + 7) * (n % 3) : ℕ) : ℤ) - (((n + 2) % 3 : ℕ) : ℤ) : ℚ) / 18⌋

end

end A025841.P4029116764243009455

namespace A025841

/-- `floor((n²+30*n+260)/252-((n+7)*n%3-(n+2)%3)/18)` -/
def P4029116764243009455.Spec : Prop :=
  ∀ n, P4029116764243009455.a n = A025841 n

end A025841

/-! ## A025841.P17779106659989419502

`Δ[A029017(n)-A029150(n)]`
-/

namespace A025841.P17779106659989419502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029017 n - A029150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025841.P17779106659989419502

namespace A025841

/-- `Δ[A029017(n)-A029150(n)]` -/
def P17779106659989419502.Spec : Prop :=
  ∀ n, P17779106659989419502.a n = A025841 n

end A025841

/-! ## A025841.P13288905355069037793

`A025901(2*n)`
-/

namespace A025841.P13288905355069037793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 (2 * n)

end

end A025841.P13288905355069037793

namespace A025841

/-- `A025901(2*n)` -/
def P13288905355069037793.Spec : Prop :=
  ∀ n, P13288905355069037793.a n = A025841 n

end A025841

/-! ## A025841.P6286327880818138290

`Δ[A029218(xor(1, A004273(n)))]`
-/

namespace A025841.P6286327880818138290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025841.P6286327880818138290

namespace A025841

/-- `Δ[A029218(xor(1, A004273(n)))]` -/
def P6286327880818138290.Spec : Prop :=
  ∀ n, P6286327880818138290.a n = A025841 n

end A025841

/-! ## A025841.P14306025328840177027

`Δ[A029218(A004442(A004273(n)))]`
-/

namespace A025841.P14306025328840177027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025841.P14306025328840177027

namespace A025841

/-- `Δ[A029218(A004442(A004273(n)))]` -/
def P14306025328840177027.Spec : Prop :=
  ∀ n, P14306025328840177027.a n = A025841 n

end A025841

/-! ## A025841.P12128576559827458048

`A025886(2*n+1)+A029382(2*n)-A029382(2*n+1)`
-/

namespace A025841.P12128576559827458048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025886 (2 * n + 1) + (A029382 (2 * n) - A029382 (2 * n + 1))

end

end A025841.P12128576559827458048

namespace A025841

/-- `A025886(2*n+1)+A029382(2*n)-A029382(2*n+1)` -/
def P12128576559827458048.Spec : Prop :=
  ∀ n, P12128576559827458048.a n = A025841 n

end A025841

/-! ## A025841.P2709374313574254000

`A025900(2*n+1)+A029422(2*n)-A029422(2*n+1)`
-/

namespace A025841.P2709374313574254000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025900 (2 * n + 1) + (A029422 (2 * n) - A029422 (2 * n + 1))

end

end A025841.P2709374313574254000

namespace A025841

/-- `A025900(2*n+1)+A029422(2*n)-A029422(2*n+1)` -/
def P2709374313574254000.Spec : Prop :=
  ∀ n, P2709374313574254000.a n = A025841 n

end A025841

/-! ## A025841.P6149015448595641232

`A029351(2*n)-A029351(2*n+3)`
-/

namespace A025841.P6149015448595641232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029351 (2 * n) - A029351 (2 * n + 3)

end

end A025841.P6149015448595641232

namespace A025841

/-- `A029351(2*n)-A029351(2*n+3)` -/
def P6149015448595641232.Spec : Prop :=
  ∀ n, P6149015448595641232.a n = A025841 n

end A025841

/-! ## A025841.P13450278936140286143

`Δ[∑[A025881(2*n)]-A029382(2*n)]`
-/

namespace A025841.P13450278936140286143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029382 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025841.P13450278936140286143

namespace A025841

/-- `Δ[∑[A025881(2*n)]-A029382(2*n)]` -/
def P13450278936140286143.Spec : Prop :=
  ∀ n, P13450278936140286143.a n = A025841 n

end A025841

/-! ## A025841.P12176875788987898481

`A029218(A005843(n))-A029218(A005818(n+1))`
-/

namespace A025841.P12176875788987898481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (A005843 n).toNat - A029218 (A005818 (n + 1)).toNat

end

end A025841.P12176875788987898481

namespace A025841

/-- `A029218(A005843(n))-A029218(A005818(n+1))` -/
def P12176875788987898481.Spec : Prop :=
  ∀ n, P12176875788987898481.a n = A025841 n

end A025841

/-! ## A025841.P5042542494507429981

`A029218(A005843(n))-A029218(A020735(n+1))`
-/

namespace A025841.P5042542494507429981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (A005843 n).toNat - A029218 (A020735 (n + 1)).toNat

end

end A025841.P5042542494507429981

namespace A025841

/-- `A029218(A005843(n))-A029218(A020735(n+1))` -/
def P5042542494507429981.Spec : Prop :=
  ∀ n, P5042542494507429981.a n = A025841 n

end A025841

/-! ## A025841.P14694572209787126051

`Δ[A029218(2*n+5)]`
-/

namespace A025841.P14694572209787126051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025841.P14694572209787126051

namespace A025841

/-- `Δ[A029218(2*n+5)]` -/
def P14694572209787126051.Spec : Prop :=
  ∀ n, P14694572209787126051.a n = A025841 n

end A025841

/-!
# A025842: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^8)).

The programs for A025842, the canonical program `A025842.P16698942177374646397` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025842 has offset 0).

The definition of A025842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^6-x^8+x^9+x^11+x^14-x^17))` (program `A025842.P16698942177374646397`, by `A025842.P16698942177374646397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025842.P16698942177374646397

`ogf(1/(1-x^3-x^6-x^8+x^9+x^11+x^14-x^17))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025842

/-- `ogf(1/(1-x^3-x^6-x^8+x^9+x^11+x^14-x^17))` -/
def P16698942177374646397.Spec : Prop :=
  ∀ n, P16698942177374646397.a n = A025842 n

theorem P16698942177374646397.correct : P16698942177374646397.Spec := by
  intro n
  simp only [A025842]

end A025842

/-! ## A025842.P11522893818711735044

`A307018(A110657(n))+A025853(n)`
-/

namespace A025842.P11522893818711735044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A110657 n).toNat + A025853 n

end

end A025842.P11522893818711735044

namespace A025842

/-- `A307018(A110657(n))+A025853(n)` -/
def P11522893818711735044.Spec : Prop :=
  ∀ n, P11522893818711735044.a n = A025842 n

end A025842

/-! ## A025842.P11904756137874607850

`A029046(n)+A029292(n)-A029045(n)`
-/

namespace A025842.P11904756137874607850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029046 n + (A029292 n - A029045 n)

end

end A025842.P11904756137874607850

namespace A025842

/-- `A029046(n)+A029292(n)-A029045(n)` -/
def P11904756137874607850.Spec : Prop :=
  ∀ n, P11904756137874607850.a n = A025842 n

end A025842

/-! ## A025842.P4639373899217190495

`Δ[A029013(n)-A029143(n)]`
-/

namespace A025842.P4639373899217190495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029013 n - A029143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025842.P4639373899217190495

namespace A025842

/-- `Δ[A029013(n)-A029143(n)]` -/
def P4639373899217190495.Spec : Prop :=
  ∀ n, P4639373899217190495.a n = A025842 n

end A025842

/-! ## A025842.P11762730071589109451

`Δ[A029045(n)-A029292(n)]`
-/

namespace A025842.P11762730071589109451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029045 n - A029292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025842.P11762730071589109451

namespace A025842

/-- `Δ[A029045(n)-A029292(n)]` -/
def P11762730071589109451.Spec : Prop :=
  ∀ n, P11762730071589109451.a n = A025842 n

end A025842

/-! ## A025842.P8793935591212449645

`A130519(A010872(n+2)+A008615(n+8))`
-/

namespace A025842.P8793935591212449645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A010872 (n + 2) + A008615 (n + 8)).toNat

end

end A025842.P8793935591212449645

namespace A025842

/-- `A130519(A010872(n+2)+A008615(n+8))` -/
def P8793935591212449645.Spec : Prop :=
  ∀ n, P8793935591212449645.a n = A025842 n

end A025842

/-! ## A025842.P3322043472189993761

`A048766(A045944(A029300(n)))`
-/

namespace A025842.P3322043472189993761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A045944 (A029300 n).toNat).toNat

end

end A025842.P3322043472189993761

namespace A025842

/-- `A048766(A045944(A029300(n)))` -/
def P3322043472189993761.Spec : Prop :=
  ∀ n, P3322043472189993761.a n = A025842 n

end A025842

/-! ## A025842.P2360320400001503018

`A137687(A029300(n))%A327825(n)`
-/

namespace A025842.P2360320400001503018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137687 (A029300 n).toNat) (A327825 (n + 979))

end

end A025842.P2360320400001503018

namespace A025842

/-- `A137687(A029300(n))%A327825(n)` -/
def P2360320400001503018.Spec : Prop :=
  ∀ n, P2360320400001503018.a n = A025842 n

end A025842

/-!
# A025843: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^10)).

The programs for A025843, the canonical program `A025843.P3271928889132358641` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025843 has offset 0).

The definition of A025843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^6+x^9-x^10+x^13+x^16-x^19))` (program `A025843.P3271928889132358641`, by `A025843.P3271928889132358641.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025843.P3271928889132358641

`ogf(1/(1-x^3-x^6+x^9-x^10+x^13+x^16-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025843

/-- `ogf(1/(1-x^3-x^6+x^9-x^10+x^13+x^16-x^19))` -/
def P3271928889132358641.Spec : Prop :=
  ∀ n, P3271928889132358641.a n = A025843 n

theorem P3271928889132358641.correct : P3271928889132358641.Spec := by
  intro n
  simp only [A025843]

end A025843

/-! ## A025843.P403320393322734937

`A325488(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025843.P403320393322734937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A325488 n + a (n - 3)

end

end A025843.P403320393322734937

namespace A025843

/-- `A325488(n)+a(n-3)` -/
def P403320393322734937.Spec : Prop :=
  ∀ n, P403320393322734937.a n = A025843 n

end A025843

/-! ## A025843.P10066164247660231381

`A029047(n)+A029275(n)-A029042(n)`
-/

namespace A025843.P10066164247660231381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029047 n + (A029275 n - A029042 n)

end

end A025843.P10066164247660231381

namespace A025843

/-- `A029047(n)+A029275(n)-A029042(n)` -/
def P10066164247660231381.Spec : Prop :=
  ∀ n, P10066164247660231381.a n = A025843 n

end A025843

/-! ## A025843.P7953859962206976321

`Δ[A029042(n)-A029275(n)]`
-/

namespace A025843.P7953859962206976321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 n - A029275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025843.P7953859962206976321

namespace A025843

/-- `Δ[A029042(n)-A029275(n)]` -/
def P7953859962206976321.Spec : Prop :=
  ∀ n, P7953859962206976321.a n = A025843 n

end A025843

/-! ## A025843.P16451626126649996542

`Δ[A029042(n)-(A029042(n+5)-A029047(n+5))]`
-/

namespace A025843.P16451626126649996542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 n - (A029042 (n + 5) - A029047 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025843.P16451626126649996542

namespace A025843

/-- `Δ[A029042(n)-(A029042(n+5)-A029047(n+5))]` -/
def P16451626126649996542.Spec : Prop :=
  ∀ n, P16451626126649996542.a n = A025843 n

end A025843

/-!
# A025844: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^11)).

The programs for A025844, the canonical program `A025844.P8888666222567590418` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025844 has offset 0).

The definition of A025844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^6+x^9-x^11+x^14+x^17-x^20))` (program `A025844.P8888666222567590418`, by `A025844.P8888666222567590418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025844.P8888666222567590418

`ogf(1/(1-x^3-x^6+x^9-x^11+x^14+x^17-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025844

/-- `ogf(1/(1-x^3-x^6+x^9-x^11+x^14+x^17-x^20))` -/
def P8888666222567590418.Spec : Prop :=
  ∀ n, P8888666222567590418.a n = A025844 n

theorem P8888666222567590418.correct : P8888666222567590418.Spec := by
  intro n
  simp only [A025844]

end A025844

/-! ## A025844.P10452811617873038085

`A025907(2*n)`
-/

namespace A025844.P10452811617873038085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (2 * n)

end

end A025844.P10452811617873038085

namespace A025844

/-- `A025907(2*n)` -/
def P10452811617873038085.Spec : Prop :=
  ∀ n, P10452811617873038085.a n = A025844 n

end A025844

/-! ## A025844.P5654562209044415215

`Δ[A029225(xor(1, A004273(n)))]`
-/

namespace A025844.P5654562209044415215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025844.P5654562209044415215

namespace A025844

/-- `Δ[A029225(xor(1, A004273(n)))]` -/
def P5654562209044415215.Spec : Prop :=
  ∀ n, P5654562209044415215.a n = A025844 n

end A025844

/-! ## A025844.P14482430529430764144

`A029431(2*n)-A029431(2*n+1)`
-/

namespace A025844.P14482430529430764144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 (2 * n) - A029431 (2 * n + 1)

end

end A025844.P14482430529430764144

namespace A025844

/-- `A029431(2*n)-A029431(2*n+1)` -/
def P14482430529430764144.Spec : Prop :=
  ∀ n, P14482430529430764144.a n = A025844 n

end A025844

/-! ## A025844.P157852863027278607

`A029116(2*n+1)-A029170(2*n+1)`
-/

namespace A025844.P157852863027278607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029116 (2 * n + 1) - A029170 (2 * n + 1)

end

end A025844.P157852863027278607

namespace A025844

/-- `A029116(2*n+1)-A029170(2*n+1)` -/
def P157852863027278607.Spec : Prop :=
  ∀ n, P157852863027278607.a n = A025844 n

end A025844

/-! ## A025844.P5515780815497825069

`Δ[A029225(A004442(A004273(n)))]`
-/

namespace A025844.P5515780815497825069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025844.P5515780815497825069

namespace A025844

/-- `Δ[A029225(A004442(A004273(n)))]` -/
def P5515780815497825069.Spec : Prop :=
  ∀ n, P5515780815497825069.a n = A025844 n

end A025844

/-! ## A025844.P4100405161845632878

`A025783(2*n)+A025881(2*n)-A025781(2*n)`
-/

namespace A025844.P4100405161845632878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025783 (2 * n) + (A025881 (2 * n) - A025781 (2 * n))

end

end A025844.P4100405161845632878

namespace A025844

/-- `A025783(2*n)+A025881(2*n)-A025781(2*n)` -/
def P4100405161845632878.Spec : Prop :=
  ∀ n, P4100405161845632878.a n = A025844 n

end A025844

/-! ## A025844.P9991835652633446222

`A025881(2*n)+A025917(2*n)-A025885(2*n)`
-/

namespace A025844.P9991835652633446222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (2 * n) + (A025917 (2 * n) - A025885 (2 * n))

end

end A025844.P9991835652633446222

namespace A025844

/-- `A025881(2*n)+A025917(2*n)-A025885(2*n)` -/
def P9991835652633446222.Spec : Prop :=
  ∀ n, P9991835652633446222.a n = A025844 n

end A025844

/-! ## A025844.P4673192196632459508

`A029427(2*n)-A029427(2*n+3)`
-/

namespace A025844.P4673192196632459508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029427 (2 * n) - A029427 (2 * n + 3)

end

end A025844.P4673192196632459508

namespace A025844

/-- `A029427(2*n)-A029427(2*n+3)` -/
def P4673192196632459508.Spec : Prop :=
  ∀ n, P4673192196632459508.a n = A025844 n

end A025844

/-! ## A025844.P12239679328788493449

`A029225(2*n)-A029225(2*n+9)`
-/

namespace A025844.P12239679328788493449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (2 * n) - A029225 (2 * n + 9)

end

end A025844.P12239679328788493449

namespace A025844

/-- `A029225(2*n)-A029225(2*n+9)` -/
def P12239679328788493449.Spec : Prop :=
  ∀ n, P12239679328788493449.a n = A025844 n

end A025844

/-! ## A025844.P3663416031370045976

`Δ[A029225(2*n+9)]`
-/

namespace A025844.P3663416031370045976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025844.P3663416031370045976

namespace A025844

/-- `Δ[A029225(2*n+9)]` -/
def P3663416031370045976.Spec : Prop :=
  ∀ n, P3663416031370045976.a n = A025844 n

end A025844

/-!
# A025845: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^8)).

The programs for A025845, the canonical program `A025845.P14760905506929466486` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025845 has offset 0).

The definition of A025845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^7-x^8+x^10+x^11+x^15-x^18))` (program `A025845.P14760905506929466486`, by `A025845.P14760905506929466486.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025845.P14760905506929466486

`ogf(1/(1-x^3-x^7-x^8+x^10+x^11+x^15-x^18))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025845

/-- `ogf(1/(1-x^3-x^7-x^8+x^10+x^11+x^15-x^18))` -/
def P14760905506929466486.Spec : Prop :=
  ∀ n, P14760905506929466486.a n = A025845 n

theorem P14760905506929466486.correct : P14760905506929466486.Spec := by
  intro n
  simp only [A025845]

end A025845

/-! ## A025845.P2312347419463820473

`floor((n²+18*n+336)/336-(6*n²+3*n)%7/8)`
-/

namespace A025845.P2312347419463820473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 18 * n + 336 : ℚ) / 336 - (((6 * n ^ 2 + 3 * n) % 7 : ℕ) : ℚ) / 8⌋

end

end A025845.P2312347419463820473

namespace A025845

/-- `floor((n²+18*n+336)/336-(6*n²+3*n)%7/8)` -/
def P2312347419463820473.Spec : Prop :=
  ∀ n, P2312347419463820473.a n = A025845 n

end A025845

/-! ## A025845.P2150213778566754961

`A025897(abs(3-n))+A025897(n)`
-/

namespace A025845.P2150213778566754961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 |3 - (n : ℤ)|.toNat + A025897 n

end

end A025845.P2150213778566754961

namespace A025845

/-- `A025897(abs(3-n))+A025897(n)` -/
def P2150213778566754961.Spec : Prop :=
  ∀ n, P2150213778566754961.a n = A025845 n

end A025845

/-! ## A025845.P3895094213401773043

`A025838(n)+A025909(n)-A025888(n)`
-/

namespace A025845.P3895094213401773043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025838 n + (A025909 n - A025888 n)

end

end A025845.P3895094213401773043

namespace A025845

/-- `A025838(n)+A025909(n)-A025888(n)` -/
def P3895094213401773043.Spec : Prop :=
  ∀ n, P3895094213401773043.a n = A025845 n

end A025845

/-! ## A025845.P11590439376208902554

`Δ[A029070(n)-A025897(n)]`
-/

namespace A025845.P11590439376208902554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029070 n - A025897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025845.P11590439376208902554

namespace A025845

/-- `Δ[A029070(n)-A025897(n)]` -/
def P11590439376208902554.Spec : Prop :=
  ∀ n, P11590439376208902554.a n = A025845 n

end A025845

/-! ## A025845.P5958196291214021040

`Δ[A029046(n)-A029292(n)]`
-/

namespace A025845.P5958196291214021040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029046 n - A029292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025845.P5958196291214021040

namespace A025845

/-- `Δ[A029046(n)-A029292(n)]` -/
def P5958196291214021040.Spec : Prop :=
  ∀ n, P5958196291214021040.a n = A025845 n

end A025845

/-! ## A025845.P5101711053588881364

`Δ[∑[A008622(n)]-A025897(n)]`
-/

namespace A025845.P5101711053588881364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A025897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025845.P5101711053588881364

namespace A025845

/-- `Δ[∑[A008622(n)]-A025897(n)]` -/
def P5101711053588881364.Spec : Prop :=
  ∀ n, P5101711053588881364.a n = A025845 n

end A025845

/-! ## A025845.P17882986680135012188

`Δ[∑[A025816(n)]-A029156(n)]`
-/

namespace A025845.P17882986680135012188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025816 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025845.P17882986680135012188

namespace A025845

/-- `Δ[∑[A025816(n)]-A029156(n)]` -/
def P17882986680135012188.Spec : Prop :=
  ∀ n, P17882986680135012188.a n = A025845 n

end A025845

/-! ## A025845.P7110927291537749950

`Δ[∑[A025842(n)]-A029292(n)]`
-/

namespace A025845.P7110927291537749950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025845.P7110927291537749950

namespace A025845

/-- `Δ[∑[A025842(n)]-A029292(n)]` -/
def P7110927291537749950.Spec : Prop :=
  ∀ n, P7110927291537749950.a n = A025845 n

end A025845

/-! ## A025845.P4994209174277278454

`A008622(n+1)-Δ[A025897(n)]`
-/

namespace A025845.P4994209174277278454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025845.P4994209174277278454

namespace A025845

/-- `A008622(n+1)-Δ[A025897(n)]` -/
def P4994209174277278454.Spec : Prop :=
  ∀ n, P4994209174277278454.a n = A025845 n

end A025845

/-! ## A025845.P6587451483719427241

`A025816(n+1)-Δ[A029156(n)]`
-/

namespace A025845.P6587451483719427241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025816 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025845.P6587451483719427241

namespace A025845

/-- `A025816(n+1)-Δ[A029156(n)]` -/
def P6587451483719427241.Spec : Prop :=
  ∀ n, P6587451483719427241.a n = A025845 n

end A025845

/-! ## A025845.P12139834509013320018

`A025842(n+1)-Δ[A029292(n)]`
-/

namespace A025845.P12139834509013320018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025845.P12139834509013320018

namespace A025845

/-- `A025842(n+1)-Δ[A029292(n)]` -/
def P12139834509013320018.Spec : Prop :=
  ∀ n, P12139834509013320018.a n = A025845 n

end A025845

/-! ## A025845.P6413328792557828251

`A008622(n+1)+A025897(n)-A025897(n+1)`
-/

namespace A025845.P6413328792557828251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (n + 1) + (A025897 n - A025897 (n + 1))

end

end A025845.P6413328792557828251

namespace A025845

/-- `A008622(n+1)+A025897(n)-A025897(n+1)` -/
def P6413328792557828251.Spec : Prop :=
  ∀ n, P6413328792557828251.a n = A025845 n

end A025845

/-!
# A025846: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^9)).

The programs for A025846, the canonical program `A025846.P17030466612282043604` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025846 has offset 0).

The definition of A025846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^7-x^9+x^10+x^12+x^16-x^19))` (program `A025846.P17030466612282043604`, by `A025846.P17030466612282043604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025846.P17030466612282043604

`ogf(1/(1-x^3-x^7-x^9+x^10+x^12+x^16-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025846

/-- `ogf(1/(1-x^3-x^7-x^9+x^10+x^12+x^16-x^19))` -/
def P17030466612282043604.Spec : Prop :=
  ∀ n, P17030466612282043604.a n = A025846 n

theorem P17030466612282043604.correct : P17030466612282043604.Spec := by
  intro n
  simp only [A025846]

end A025846

/-! ## A025846.P2733198107911465055

`A025785(n)-a(n-2)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A025846.P2733198107911465055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025785 n - a (n - 2) - a (n - 1)

end

end A025846.P2733198107911465055

namespace A025846

/-- `A025785(n)-a(n-2)-a(n-1)` -/
def P2733198107911465055.Spec : Prop :=
  ∀ n, P2733198107911465055.a n = A025846 n

end A025846

/-! ## A025846.P8983253375660255275

`A025831(n)+A025883(n)-A025859(n)`
-/

namespace A025846.P8983253375660255275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025831 n + (A025883 n - A025859 n)

end

end A025846.P8983253375660255275

namespace A025846

/-- `A025831(n)+A025883(n)-A025859(n)` -/
def P8983253375660255275.Spec : Prop :=
  ∀ n, P8983253375660255275.a n = A025846 n

end A025846

/-! ## A025846.P11882546733712550098

`Δ[A029021(n)-A029157(n)]`
-/

namespace A025846.P11882546733712550098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029021 n - A029157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025846.P11882546733712550098

namespace A025846

/-- `Δ[A029021(n)-A029157(n)]` -/
def P11882546733712550098.Spec : Prop :=
  ∀ n, P11882546733712550098.a n = A025846 n

end A025846

/-! ## A025846.P11117099627152834503

`Δ[A029348(2*n+5)]`
-/

namespace A025846.P11117099627152834503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029348 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025846.P11117099627152834503

namespace A025846

/-- `Δ[A029348(2*n+5)]` -/
def P11117099627152834503.Spec : Prop :=
  ∀ n, P11117099627152834503.a n = A025846 n

end A025846

/-! ## A025846.P11439337793992582672

`abs(Δ[A029348(A005818(n+1))])`
-/

namespace A025846.P11439337793992582672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029348 (A005818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A025846.P11439337793992582672

namespace A025846

/-- `abs(Δ[A029348(A005818(n+1))])` -/
def P11439337793992582672.Spec : Prop :=
  ∀ n, P11439337793992582672.a n = A025846 n

end A025846

/-! ## A025846.P8054347086423485952

`A319951(A029293(n))%A204598(n+3)`
-/

namespace A025846.P8054347086423485952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319951 (A029293 n).toNat) (A204598 (n + 3))

end

end A025846.P8054347086423485952

namespace A025846

/-- `A319951(A029293(n))%A204598(n+3)` -/
def P8054347086423485952.Spec : Prop :=
  ∀ n, P8054347086423485952.a n = A025846 n

end A025846

/-! ## A025846.P17656613484536411504

`A001222(A105436(n))*A319951(A029293(n))`
-/

namespace A025846.P17656613484536411504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A105436 n).toNat * A319951 (A029293 n).toNat

end

end A025846.P17656613484536411504

namespace A025846

/-- `A001222(A105436(n))*A319951(A029293(n))` -/
def P17656613484536411504.Spec : Prop :=
  ∀ n, P17656613484536411504.a n = A025846 n

end A025846

/-! ## A025846.P7279101947507673551

`A319951(A029293(n))%A168651(A005728(n))`
-/

namespace A025846.P7279101947507673551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319951 (A029293 n).toNat) (A168651 (A005728 n).toNat)

end

end A025846.P7279101947507673551

namespace A025846

/-- `A319951(A029293(n))%A168651(A005728(n))` -/
def P7279101947507673551.Spec : Prop :=
  ∀ n, P7279101947507673551.a n = A025846 n

end A025846

/-! ## A025846.P11845400380334865245

`A319951(A029293(n))^A014963(A034703(n+1))`
-/

namespace A025846.P11845400380334865245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319951 (A029293 n).toNat : ℚ) ^ (A014963 (A034703 (n + 1)).toNat : ℤ)

end

end A025846.P11845400380334865245

namespace A025846

/-- `A319951(A029293(n))^A014963(A034703(n+1))` -/
def P11845400380334865245.Spec : Prop :=
  ∀ n, P11845400380334865245.a n = (A025846 n : ℚ)

end A025846

/-!
# A025847: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^10)).

The programs for A025847, the canonical program `A025847.P1648800718506512442` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025847 has offset 0).

The definition of A025847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^7+x^13+x^17-x^20))` (program `A025847.P1648800718506512442`, by `A025847.P1648800718506512442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025847.P1648800718506512442

`ogf(1/(1-x^3-x^7+x^13+x^17-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025847

/-- `ogf(1/(1-x^3-x^7+x^13+x^17-x^20))` -/
def P1648800718506512442.Spec : Prop :=
  ∀ n, P1648800718506512442.a n = A025847 n

theorem P1648800718506512442.correct : P1648800718506512442.Spec := by
  intro n
  simp only [A025847]

end A025847

/-! ## A025847.P5286757537207826011

`A025899(n)+A029158(n)-A029193(n)`
-/

namespace A025847.P5286757537207826011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n + (A029158 n - A029193 n)

end

end A025847.P5286757537207826011

namespace A025847

/-- `A025899(n)+A029158(n)-A029193(n)` -/
def P5286757537207826011.Spec : Prop :=
  ∀ n, P5286757537207826011.a n = A025847 n

end A025847

/-! ## A025847.P16626483643045557663

`A029051(n)+A029158(n)-A029022(n)`
-/

namespace A025847.P16626483643045557663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029051 n + (A029158 n - A029022 n)

end

end A025847.P16626483643045557663

namespace A025847

/-- `A029051(n)+A029158(n)-A029022(n)` -/
def P16626483643045557663.Spec : Prop :=
  ∀ n, P16626483643045557663.a n = A025847 n

end A025847

/-! ## A025847.P13293735649271243980

`Δ[A029022(n)-A029158(n)]`
-/

namespace A025847.P13293735649271243980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029022 n - A029158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025847.P13293735649271243980

namespace A025847

/-- `Δ[A029022(n)-A029158(n)]` -/
def P13293735649271243980.Spec : Prop :=
  ∀ n, P13293735649271243980.a n = A025847 n

end A025847

/-! ## A025847.P16478541501353352052

`Δ[∑[A025818(n)]-A029158(n)]`
-/

namespace A025847.P16478541501353352052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025818 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025847.P16478541501353352052

namespace A025847

/-- `Δ[∑[A025818(n)]-A029158(n)]` -/
def P16478541501353352052.Spec : Prop :=
  ∀ n, P16478541501353352052.a n = A025847 n

end A025847

/-! ## A025847.P2058783381512028170

`A025818(n+1)-Δ[A029158(n)]`
-/

namespace A025847.P2058783381512028170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025818 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025847.P2058783381512028170

namespace A025847

/-- `A025818(n+1)-Δ[A029158(n)]` -/
def P2058783381512028170.Spec : Prop :=
  ∀ n, P2058783381512028170.a n = A025847 n

end A025847

/-!
# A025848: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^11)).

The programs for A025848, the canonical program `A025848.P1375602395834296756` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025848 has offset 0).

The definition of A025848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^7+x^10-x^11+x^14+x^18-x^21))` (program `A025848.P1375602395834296756`, by `A025848.P1375602395834296756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025848.P1375602395834296756

`ogf(1/(1-x^3-x^7+x^10-x^11+x^14+x^18-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025848

/-- `ogf(1/(1-x^3-x^7+x^10-x^11+x^14+x^18-x^21))` -/
def P1375602395834296756.Spec : Prop :=
  ∀ n, P1375602395834296756.a n = A025848 n

theorem P1375602395834296756.correct : P1375602395834296756.Spec := by
  intro n
  simp only [A025848]

end A025848

/-! ## A025848.P16351742410229940497

`a(n-3)+A168201(n)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025848.P16351742410229940497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) + A168201 n

end

end A025848.P16351742410229940497

namespace A025848

/-- `a(n-3)+A168201(n)` -/
def P16351742410229940497.Spec : Prop :=
  ∀ n, P16351742410229940497.a n = A025848 n

end A025848

/-! ## A025848.P15584183117477820928

`A025900(abs(3-n))+A025900(n)`
-/

namespace A025848.P15584183117477820928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025900 |3 - (n : ℤ)|.toNat + A025900 n

end

end A025848.P15584183117477820928

namespace A025848

/-- `A025900(abs(3-n))+A025900(n)` -/
def P15584183117477820928.Spec : Prop :=
  ∀ n, P15584183117477820928.a n = A025848 n

end A025848

/-! ## A025848.P473912941604464966

`A029280(n)+A029295(n)-A029272(n)`
-/

namespace A025848.P473912941604464966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029280 n + (A029295 n - A029272 n)

end

end A025848.P473912941604464966

namespace A025848

/-- `A029280(n)+A029295(n)-A029272(n)` -/
def P473912941604464966.Spec : Prop :=
  ∀ n, P473912941604464966.a n = A025848 n

end A025848

/-! ## A025848.P7074008804601301667

`Δ[A029051(n)-A029313(n)]`
-/

namespace A025848.P7074008804601301667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029051 n - A029313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025848.P7074008804601301667

namespace A025848

/-- `Δ[A029051(n)-A029313(n)]` -/
def P7074008804601301667.Spec : Prop :=
  ∀ n, P7074008804601301667.a n = A025848 n

end A025848

/-! ## A025848.P3704451013635201895

`Δ[∑[A025847(n)]-A029313(n)]`
-/

namespace A025848.P3704451013635201895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025848.P3704451013635201895

namespace A025848

/-- `Δ[∑[A025847(n)]-A029313(n)]` -/
def P3704451013635201895.Spec : Prop :=
  ∀ n, P3704451013635201895.a n = A025848 n

end A025848

/-! ## A025848.P11725855038071711851

`A025847(n+1)-Δ[A029313(n)]`
-/

namespace A025848.P11725855038071711851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025847 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025848.P11725855038071711851

namespace A025848

/-- `A025847(n+1)-Δ[A029313(n)]` -/
def P11725855038071711851.Spec : Prop :=
  ∀ n, P11725855038071711851.a n = A025848 n

end A025848

/-!
# A025849: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^12)).

The programs for A025849, the canonical program `A025849.P14824281847777159137` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025849 has offset 0).

The definition of A025849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^7+x^10-x^12+x^15+x^19-x^22))` (program `A025849.P14824281847777159137`, by `A025849.P14824281847777159137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025849.P14824281847777159137

`ogf(1/(1-x^3-x^7+x^10-x^12+x^15+x^19-x^22))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025849

/-- `ogf(1/(1-x^3-x^7+x^10-x^12+x^15+x^19-x^22))` -/
def P14824281847777159137.Spec : Prop :=
  ∀ n, P14824281847777159137.a n = A025849 n

theorem P14824281847777159137.correct : P14824281847777159137.Spec := by
  intro n
  simp only [A025849]

end A025849

/-! ## A025849.P13243924425980503723

`Δ[A029053(abs(1-n))]+C(2, n+2)`
-/

namespace A025849.P13243924425980503723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A025849.P13243924425980503723

namespace A025849

/-- `Δ[A029053(abs(1-n))]+C(2, n+2)` -/
def P13243924425980503723.Spec : Prop :=
  ∀ n, P13243924425980503723.a n = A025849 n

end A025849

/-! ## A025849.P8576787706429041925

`A000007(n)+Δ[A029053(abs(1-n))]`
-/

namespace A025849.P8576787706429041925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A025849.P8576787706429041925

namespace A025849

/-- `A000007(n)+Δ[A029053(abs(1-n))]` -/
def P8576787706429041925.Spec : Prop :=
  ∀ n, P8576787706429041925.a n = A025849 n

end A025849

/-! ## A025849.P1507978650807507563

`A025857(n)+A025884(n)-A025895(n)`
-/

namespace A025849.P1507978650807507563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n + (A025884 n - A025895 n)

end

end A025849.P1507978650807507563

namespace A025849

/-- `A025857(n)+A025884(n)-A025895(n)` -/
def P1507978650807507563.Spec : Prop :=
  ∀ n, P1507978650807507563.a n = A025849 n

end A025849

/-! ## A025849.P16697460434696131825

`A029053(n)+A029160(n)-A029024(n)`
-/

namespace A025849.P16697460434696131825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 n + (A029160 n - A029024 n)

end

end A025849.P16697460434696131825

namespace A025849

/-- `A029053(n)+A029160(n)-A029024(n)` -/
def P16697460434696131825.Spec : Prop :=
  ∀ n, P16697460434696131825.a n = A025849 n

end A025849

/-! ## A025849.P12491705155560770956

`Δ[A029024(n)-A029160(n)]`
-/

namespace A025849.P12491705155560770956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029024 n - A029160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025849.P12491705155560770956

namespace A025849

/-- `Δ[A029024(n)-A029160(n)]` -/
def P12491705155560770956.Spec : Prop :=
  ∀ n, P12491705155560770956.a n = A025849 n

end A025849

/-! ## A025849.P1103720298109788326

`Δ[∑[A025820(n)]-A029160(n)]`
-/

namespace A025849.P1103720298109788326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025820 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025849.P1103720298109788326

namespace A025849

/-- `Δ[∑[A025820(n)]-A029160(n)]` -/
def P1103720298109788326.Spec : Prop :=
  ∀ n, P1103720298109788326.a n = A025849 n

end A025849

/-! ## A025849.P16314086017153685536

`Δ[∑[A025848(n)]-A029315(n)]`
-/

namespace A025849.P16314086017153685536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025848 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025849.P16314086017153685536

namespace A025849

/-- `Δ[∑[A025848(n)]-A029315(n)]` -/
def P16314086017153685536.Spec : Prop :=
  ∀ n, P16314086017153685536.a n = A025849 n

end A025849

/-! ## A025849.P17975472301188311365

`A025820(n+1)-Δ[A029160(n)]`
-/

namespace A025849.P17975472301188311365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025820 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025849.P17975472301188311365

namespace A025849

/-- `A025820(n+1)-Δ[A029160(n)]` -/
def P17975472301188311365.Spec : Prop :=
  ∀ n, P17975472301188311365.a n = A025849 n

end A025849

/-! ## A025849.P4732418388605671322

`A025848(n+1)-Δ[A029315(n)]`
-/

namespace A025849.P4732418388605671322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025848 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025849.P4732418388605671322

namespace A025849

/-- `A025848(n+1)-Δ[A029315(n)]` -/
def P4732418388605671322.Spec : Prop :=
  ∀ n, P4732418388605671322.a n = A025849 n

end A025849

/-!
# A025850: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)).

The programs for A025850, the canonical program `A025850.P11888118195792574450` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025850 has offset 0).

The definition of A025850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^8-x^9+x^11+x^12+x^17-x^20))` (program `A025850.P11888118195792574450`, by `A025850.P11888118195792574450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025850.P11888118195792574450

`ogf(1/(1-x^3-x^8-x^9+x^11+x^12+x^17-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025850

/-- `ogf(1/(1-x^3-x^8-x^9+x^11+x^12+x^17-x^20))` -/
def P11888118195792574450.Spec : Prop :=
  ∀ n, P11888118195792574450.a n = A025850 n

theorem P11888118195792574450.correct : P11888118195792574450.Spec := by
  intro n
  simp only [A025850]

end A025850

/-! ## A025850.P12575558541293850214

`A025902(abs(3-n))+A025902(n)`
-/

namespace A025850.P12575558541293850214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 |3 - (n : ℤ)|.toNat + A025902 n

end

end A025850.P12575558541293850214

namespace A025850

/-- `A025902(abs(3-n))+A025902(n)` -/
def P12575558541293850214.Spec : Prop :=
  ∀ n, P12575558541293850214.a n = A025850 n

end A025850

/-! ## A025850.P8628792431840119563

`A025769(n)+A025798(n)-A025765(n)`
-/

namespace A025850.P8628792431840119563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025769 n + (A025798 n - A025765 n)

end

end A025850.P8628792431840119563

namespace A025850

/-- `A025769(n)+A025798(n)-A025765(n)` -/
def P8628792431840119563.Spec : Prop :=
  ∀ n, P8628792431840119563.a n = A025850 n

end A025850

/-! ## A025850.P5972411102742329237

`A025821(n)+A025842(n)-A025814(n)`
-/

namespace A025850.P5972411102742329237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025821 n + (A025842 n - A025814 n)

end

end A025850.P5972411102742329237

namespace A025850

/-- `A025821(n)+A025842(n)-A025814(n)` -/
def P5972411102742329237.Spec : Prop :=
  ∀ n, P5972411102742329237.a n = A025850 n

end A025850

/-! ## A025850.P8319238437763467434

`A029262(n)+A029282(n)-A029246(n)`
-/

namespace A025850.P8319238437763467434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029262 n + (A029282 n - A029246 n)

end

end A025850.P8319238437763467434

namespace A025850

/-- `A029262(n)+A029282(n)-A029246(n)` -/
def P8319238437763467434.Spec : Prop :=
  ∀ n, P8319238437763467434.a n = A025850 n

end A025850

/-! ## A025850.P10066384841811743412

`Δ[A029071(n)-A025902(n)]`
-/

namespace A025850.P10066384841811743412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029071 n - A025902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025850.P10066384841811743412

namespace A025850

/-- `Δ[A029071(n)-A025902(n)]` -/
def P10066384841811743412.Spec : Prop :=
  ∀ n, P10066384841811743412.a n = A025850 n

end A025850

/-! ## A025850.P6154264849095591292

`A319951(A029297(n))`
-/

namespace A025850.P6154264849095591292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A029297 n).toNat

end

end A025850.P6154264849095591292

namespace A025850

/-- `A319951(A029297(n))` -/
def P6154264849095591292.Spec : Prop :=
  ∀ n, P6154264849095591292.a n = A025850 n

end A025850

/-!
# A025851: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^10)).

The programs for A025851, the canonical program `A025851.P3651448202258843893` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025851 has offset 0).

The definition of A025851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^8-x^10+x^11+x^13+x^18-x^21))` (program `A025851.P3651448202258843893`, by `A025851.P3651448202258843893.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025851.P3651448202258843893

`ogf(1/(1-x^3-x^8-x^10+x^11+x^13+x^18-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025851

/-- `ogf(1/(1-x^3-x^8-x^10+x^11+x^13+x^18-x^21))` -/
def P3651448202258843893.Spec : Prop :=
  ∀ n, P3651448202258843893.a n = A025851 n

theorem P3651448202258843893.correct : P3651448202258843893.Spec := by
  intro n
  simp only [A025851]

end A025851

/-! ## A025851.P2264519182131935994

`A025877(xor(1, n+1))`
-/

namespace A025851.P2264519182131935994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (Nat.xor 1 (n + 1))

end

end A025851.P2264519182131935994

namespace A025851

/-- `A025877(xor(1, n+1))` -/
def P2264519182131935994.Spec : Prop :=
  ∀ n, P2264519182131935994.a n = A025851 n

end A025851

/-! ## A025851.P18019513993009704116

`A025877(2*n%2+n)`
-/

namespace A025851.P18019513993009704116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (2 * (n % 2) + n)

end

end A025851.P18019513993009704116

namespace A025851

/-- `A025877(2*n%2+n)` -/
def P18019513993009704116.Spec : Prop :=
  ∀ n, P18019513993009704116.a n = A025851 n

end A025851

/-! ## A025851.P644838060368152521

`A025877(n+1-(-1)^n)`
-/

namespace A025851.P644838060368152521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 ((n + 1 : ℤ) - (-1) ^ n).toNat

end

end A025851.P644838060368152521

namespace A025851

/-- `A025877(n+1-(-1)^n)` -/
def P644838060368152521.Spec : Prop :=
  ∀ n, P644838060368152521.a n = A025851 n

end A025851

/-! ## A025851.P6446367238976590986

`A025877(A004442(n+1))-A000007(n+1)`
-/

namespace A025851.P6446367238976590986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (A004442 (n + 1)).toNat - A000007 (n + 1)

end

end A025851.P6446367238976590986

namespace A025851

/-- `A025877(A004442(n+1))-A000007(n+1)` -/
def P6446367238976590986.Spec : Prop :=
  ∀ n, P6446367238976590986.a n = A025851 n

end A025851

/-! ## A025851.P11384666469184802802

`A025893(∑[n%2]+n)`
-/

namespace A025851.P11384666469184802802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A025851.P11384666469184802802

namespace A025851

/-- `A025893(∑[n%2]+n)` -/
def P11384666469184802802.Spec : Prop :=
  ∀ n, P11384666469184802802.a n = A025851 n

end A025851

/-! ## A025851.P3505281108941528615

`A025893(∑[and(1, n)]+n)`
-/

namespace A025851.P3505281108941528615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A025851.P3505281108941528615

namespace A025851

/-- `A025893(∑[and(1, n)]+n)` -/
def P3505281108941528615.Spec : Prop :=
  ∀ n, P3505281108941528615.a n = A025851 n

end A025851

/-! ## A025851.P16316765732801319443

`A025893(A007494(n))`
-/

namespace A025851.P16316765732801319443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A007494 n).toNat

end

end A025851.P16316765732801319443

namespace A025851

/-- `A025893(A007494(n))` -/
def P16316765732801319443.Spec : Prop :=
  ∀ n, P16316765732801319443.a n = A025851 n

end A025851

/-! ## A025851.P162201929863234155

`A025893(A001651(n+2)-2)`
-/

namespace A025851.P162201929863234155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A001651 (n + 2) - 2).toNat

end

end A025851.P162201929863234155

namespace A025851

/-- `A025893(A001651(n+2)-2)` -/
def P162201929863234155.Spec : Prop :=
  ∀ n, P162201929863234155.a n = A025851 n

end A025851

/-! ## A025851.P4249103716565741105

`A025893(A004526(n+1)+n)`
-/

namespace A025851.P4249103716565741105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A004526 (n + 1) + (n : ℤ)).toNat

end

end A025851.P4249103716565741105

namespace A025851

/-- `A025893(A004526(n+1)+n)` -/
def P4249103716565741105.Spec : Prop :=
  ∀ n, P4249103716565741105.a n = A025851 n

end A025851

/-! ## A025851.P2248575535394629684

`A025893(2*n-A004526(n))`
-/

namespace A025851.P2248575535394629684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 ((2 * n : ℤ) - A004526 n).toNat

end

end A025851.P2248575535394629684

namespace A025851

/-- `A025893(2*n-A004526(n))` -/
def P2248575535394629684.Spec : Prop :=
  ∀ n, P2248575535394629684.a n = A025851 n

end A025851

/-! ## A025851.P3797155272901406140

`A025893(n-(A004526(n)-n))`
-/

namespace A025851.P3797155272901406140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 ((n : ℤ) - (A004526 n - (n : ℤ))).toNat

end

end A025851.P3797155272901406140

namespace A025851

/-- `A025893(n-(A004526(n)-n))` -/
def P3797155272901406140.Spec : Prop :=
  ∀ n, P3797155272901406140.a n = A025851 n

end A025851

/-! ## A025851.P8219301382099238924

`A025893(A168202(n+1))`
-/

namespace A025851.P8219301382099238924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A168202 (n + 1)).toNat

end

end A025851.P8219301382099238924

namespace A025851

/-- `A025893(A168202(n+1))` -/
def P8219301382099238924.Spec : Prop :=
  ∀ n, P8219301382099238924.a n = A025851 n

end A025851

/-! ## A025851.P5231423787178286450

`A025893(A168197(n+1))`
-/

namespace A025851.P5231423787178286450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A168197 (n + 1)).toNat

end

end A025851.P5231423787178286450

namespace A025851

/-- `A025893(A168197(n+1))` -/
def P5231423787178286450.Spec : Prop :=
  ∀ n, P5231423787178286450.a n = A025851 n

end A025851

/-!
# A025852: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^11)).

The programs for A025852, the canonical program `A025852.P18077667799201211312` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025852 has offset 0).

The definition of A025852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^8+x^14+x^19-x^22))` (program `A025852.P18077667799201211312`, by `A025852.P18077667799201211312.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025852.P18077667799201211312

`ogf(1/(1-x^3-x^8+x^14+x^19-x^22))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025852

/-- `ogf(1/(1-x^3-x^8+x^14+x^19-x^22))` -/
def P18077667799201211312.Spec : Prop :=
  ∀ n, P18077667799201211312.a n = A025852 n

theorem P18077667799201211312.correct : P18077667799201211312.Spec := by
  intro n
  simp only [A025852]

end A025852

/-! ## A025852.P12461268655805797422

`A029056(n)+A029163(n)-A029026(n)`
-/

namespace A025852.P12461268655805797422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029056 n + (A029163 n - A029026 n)

end

end A025852.P12461268655805797422

namespace A025852

/-- `A029056(n)+A029163(n)-A029026(n)` -/
def P12461268655805797422.Spec : Prop :=
  ∀ n, P12461268655805797422.a n = A025852 n

end A025852

/-! ## A025852.P5311394455568674120

`A029284(n)+A029299(n)-A029273(n)`
-/

namespace A025852.P5311394455568674120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029284 n + (A029299 n - A029273 n)

end

end A025852.P5311394455568674120

namespace A025852

/-- `A029284(n)+A029299(n)-A029273(n)` -/
def P5311394455568674120.Spec : Prop :=
  ∀ n, P5311394455568674120.a n = A025852 n

end A025852

/-! ## A025852.P2979244591477571098

`Δ[A029072(n)-A025903(n)]`
-/

namespace A025852.P2979244591477571098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n - A025903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025852.P2979244591477571098

namespace A025852

/-- `Δ[A029072(n)-A025903(n)]` -/
def P2979244591477571098.Spec : Prop :=
  ∀ n, P2979244591477571098.a n = A025852 n

end A025852

/-! ## A025852.P1184215545828576648

`Δ[A029026(n)-A029163(n)]`
-/

namespace A025852.P1184215545828576648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029026 n - A029163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025852.P1184215545828576648

namespace A025852

/-- `Δ[A029026(n)-A029163(n)]` -/
def P1184215545828576648.Spec : Prop :=
  ∀ n, P1184215545828576648.a n = A025852 n

end A025852

/-! ## A025852.P3182008420908955211

`Δ[∑[A025822(n)]-A029163(n)]`
-/

namespace A025852.P3182008420908955211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025852.P3182008420908955211

namespace A025852

/-- `Δ[∑[A025822(n)]-A029163(n)]` -/
def P3182008420908955211.Spec : Prop :=
  ∀ n, P3182008420908955211.a n = A025852 n

end A025852

/-! ## A025852.P4839865812723874427

`A025822(n+1)-Δ[A029163(n)]`
-/

namespace A025852.P4839865812723874427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025852.P4839865812723874427

namespace A025852

/-- `A025822(n+1)-Δ[A029163(n)]` -/
def P4839865812723874427.Spec : Prop :=
  ∀ n, P4839865812723874427.a n = A025852 n

end A025852

/-! ## A025852.P13279819658845310723

`Δ[A029072(n)-A025925(A168197(n+1))]`
-/

namespace A025852.P13279819658845310723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n - A025925 (A168197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025852.P13279819658845310723

namespace A025852

/-- `Δ[A029072(n)-A025925(A168197(n+1))]` -/
def P13279819658845310723.Spec : Prop :=
  ∀ n, P13279819658845310723.a n = A025852 n

end A025852

/-!
# A025853: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^12)).

The programs for A025853, the canonical program `A025853.P14576105725025755182` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025853 has offset 0).

The definition of A025853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^8+x^11-x^12+x^15+x^20-x^23))` (program `A025853.P14576105725025755182`, by `A025853.P14576105725025755182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025853.P14576105725025755182

`ogf(1/(1-x^3-x^8+x^11-x^12+x^15+x^20-x^23))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025853

/-- `ogf(1/(1-x^3-x^8+x^11-x^12+x^15+x^20-x^23))` -/
def P14576105725025755182.Spec : Prop :=
  ∀ n, P14576105725025755182.a n = A025853 n

theorem P14576105725025755182.correct : P14576105725025755182.Spec := by
  intro n
  simp only [A025853]

end A025853

/-! ## A025853.P9221015279945753723

`A025828(abs(A097140(n)))`
-/

namespace A025853.P9221015279945753723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 |A097140 n|.toNat

end

end A025853.P9221015279945753723

namespace A025853

/-- `A025828(abs(A097140(n)))` -/
def P9221015279945753723.Spec : Prop :=
  ∀ n, P9221015279945753723.a n = A025853 n

end A025853

/-! ## A025853.P4190781791207249957

`A025828(abs(A215415(n)))`
-/

namespace A025853.P4190781791207249957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 |A215415 n|.toNat

end

end A025853.P4190781791207249957

namespace A025853

/-- `A025828(abs(A215415(n)))` -/
def P4190781791207249957.Spec : Prop :=
  ∀ n, P4190781791207249957.a n = A025853 n

end A025853

/-! ## A025853.P4064462081946360682

`A024165(A028242(n)+12)`
-/

namespace A025853.P4064462081946360682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (A028242 n + 12).toNat

end

end A025853.P4064462081946360682

namespace A025853

/-- `A024165(A028242(n)+12)` -/
def P4064462081946360682.Spec : Prop :=
  ∀ n, P4064462081946360682.a n = A025853 n

end A025853

/-! ## A025853.P4866992973875841658

`A025828(abs(Δ[A029578(n)]))`
-/

namespace A025853.P4866992973875841658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 |f1 (n + 1) - f1 n|.toNat

end

end A025853.P4866992973875841658

namespace A025853

/-- `A025828(abs(Δ[A029578(n)]))` -/
def P4866992973875841658.Spec : Prop :=
  ∀ n, P4866992973875841658.a n = A025853 n

end A025853

/-! ## A025853.P3628720502770003318

`A025828(abs(1-A028242(n)))`
-/

namespace A025853.P3628720502770003318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 |1 - A028242 n|.toNat

end

end A025853.P3628720502770003318

namespace A025853

/-- `A025828(abs(1-A028242(n)))` -/
def P3628720502770003318.Spec : Prop :=
  ∀ n, P3628720502770003318.a n = A025853 n

end A025853

/-! ## A025853.P149842724495723234

`A025828(A014682(n)%(n+2))`
-/

namespace A025853.P149842724495723234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 (Int.tmod (A014682 n) (n + 2 : ℤ)).toNat

end

end A025853.P149842724495723234

namespace A025853

/-- `A025828(A014682(n)%(n+2))` -/
def P149842724495723234.Spec : Prop :=
  ∀ n, P149842724495723234.a n = A025853 n

end A025853

/-! ## A025853.P7802179774089736633

`A002620(A008611(n)-floor((n-1)/4))`
-/

namespace A025853.P7802179774089736633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008611 n - ⌊((n : ℤ) - 1 : ℚ) / 4⌋).toNat

end

end A025853.P7802179774089736633

namespace A025853

/-- `A002620(A008611(n)-floor((n-1)/4))` -/
def P7802179774089736633.Spec : Prop :=
  ∀ n, P7802179774089736633.a n = A025853 n

end A025853

/-! ## A025853.P12614174965780576497

`A307018(A052938(A028242(n)))`
-/

namespace A025853.P12614174965780576497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A052938 (A028242 n).toNat).toNat

end

end A025853.P12614174965780576497

namespace A025853

/-- `A307018(A052938(A028242(n)))` -/
def P12614174965780576497.Spec : Prop :=
  ∀ n, P12614174965780576497.a n = A025853 n

end A025853

/-! ## A025853.P4238295620734463887

`A025828(abs(A024000(A028242(n))))`
-/

namespace A025853.P4238295620734463887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 |A024000 (A028242 n).toNat|.toNat

end

end A025853.P4238295620734463887

namespace A025853

/-- `A025828(abs(A024000(A028242(n))))` -/
def P4238295620734463887.Spec : Prop :=
  ∀ n, P4238295620734463887.a n = A025853 n

end A025853

/-! ## A025853.P16664629580633812279

`A307018(A028242(A028242(n)+3))`
-/

namespace A025853.P16664629580633812279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A028242 (A028242 n + 3).toNat).toNat

end

end A025853.P16664629580633812279

namespace A025853

/-- `A307018(A028242(A028242(n)+3))` -/
def P16664629580633812279.Spec : Prop :=
  ∀ n, P16664629580633812279.a n = A025853 n

end A025853

/-! ## A025853.P13781299204714987156

`A002620(A008612(A028242(n)+5))`
-/

namespace A025853.P13781299204714987156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008612 (A028242 n + 5).toNat).toNat

end

end A025853.P13781299204714987156

namespace A025853

/-- `A002620(A008612(A028242(n)+5))` -/
def P13781299204714987156.Spec : Prop :=
  ∀ n, P13781299204714987156.a n = A025853 n

end A025853

/-! ## A025853.P14280765753624420479

`A025828(abs(Δ[A029579(n)]))`
-/

namespace A025853.P14280765753624420479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 |f1 (n + 1) - f1 n|.toNat

end

end A025853.P14280765753624420479

namespace A025853

/-- `A025828(abs(Δ[A029579(n)]))` -/
def P14280765753624420479.Spec : Prop :=
  ∀ n, P14280765753624420479.a n = A025853 n

end A025853

/-!
# A025854: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^10)).

The programs for A025854, the canonical program `A025854.P15073905896180326708` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025854 has offset 0).

The definition of A025854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^9-x^10+x^12+x^13+x^19-x^22))` (program `A025854.P15073905896180326708`, by `A025854.P15073905896180326708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025854.P15073905896180326708

`ogf(1/(1-x^3-x^9-x^10+x^12+x^13+x^19-x^22))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025854

/-- `ogf(1/(1-x^3-x^9-x^10+x^12+x^13+x^19-x^22))` -/
def P15073905896180326708.Spec : Prop :=
  ∀ n, P15073905896180326708.a n = A025854 n

theorem P15073905896180326708.correct : P15073905896180326708.Spec := by
  intro n
  simp only [A025854]

end A025854

/-! ## A025854.P7362768709074642502

`A214772(2*n)`
-/

namespace A025854.P7362768709074642502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (2 * n)

end

end A025854.P7362768709074642502

namespace A025854

/-- `A214772(2*n)` -/
def P7362768709074642502.Spec : Prop :=
  ∀ n, P7362768709074642502.a n = A025854 n

end A025854

/-! ## A025854.P17442514019124407417

`A214772(A004277(n))+A000007(n)`
-/

namespace A025854.P17442514019124407417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (A004277 n).toNat + A000007 n

end

end A025854.P17442514019124407417

namespace A025854

/-- `A214772(A004277(n))+A000007(n)` -/
def P17442514019124407417.Spec : Prop :=
  ∀ n, P17442514019124407417.a n = A025854 n

end A025854

/-! ## A025854.P13576228451672113751

`A214772(A005843(n))%A096941(n)`
-/

namespace A025854.P13576228451672113751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214772 (A005843 n).toNat) (A096941 n)

end

end A025854.P13576228451672113751

namespace A025854

/-- `A214772(A005843(n))%A096941(n)` -/
def P13576228451672113751.Spec : Prop :=
  ∀ n, P13576228451672113751.a n = A025854 n

end A025854

/-! ## A025854.P5063786784214733741

`A028310(n)+A214772(A004277(n))-n`
-/

namespace A025854.P5063786784214733741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A214772 (A004277 n).toNat - (n : ℤ))

end

end A025854.P5063786784214733741

namespace A025854

/-- `A028310(n)+A214772(A004277(n))-n` -/
def P5063786784214733741.Spec : Prop :=
  ∀ n, P5063786784214733741.a n = A025854 n

end A025854

/-! ## A025854.P9739839601275571924

`A214772(A004277(n))+A193426(A004016(n)+1)`
-/

namespace A025854.P9739839601275571924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (A004277 n).toNat + A193426 (A004016 n + 1).toNat

end

end A025854.P9739839601275571924

namespace A025854

/-- `A214772(A004277(n))+A193426(A004016(n)+1)` -/
def P9739839601275571924.Spec : Prop :=
  ∀ n, P9739839601275571924.a n = A025854 n

end A025854

/-! ## A025854.P6783130924918707352

`A118759(A214772(n+n))`
-/

namespace A025854.P6783130924918707352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A214772 (n + n)).toNat

end

end A025854.P6783130924918707352

namespace A025854

/-- `A118759(A214772(n+n))` -/
def P6783130924918707352.Spec : Prop :=
  ∀ n, P6783130924918707352.a n = A025854 n

end A025854

/-! ## A025854.P854091414477671578

`A214772(A005843(n))/A014963(∑[n+1])`
-/

namespace A025854.P854091414477671578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214772 (A005843 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A025854.P854091414477671578

namespace A025854

/-- `A214772(A005843(n))/A014963(∑[n+1])` -/
def P854091414477671578.Spec : Prop :=
  ∀ n, P854091414477671578.a n = (A025854 n : ℚ)

end A025854

/-!
# A025855: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^11)).

The programs for A025855, the canonical program `A025855.P13568078616427789954` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025855 has offset 0).

The definition of A025855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^9-x^11+x^12+x^14+x^20-x^23))` (program `A025855.P13568078616427789954`, by `A025855.P13568078616427789954.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025855.P13568078616427789954

`ogf(1/(1-x^3-x^9-x^11+x^12+x^14+x^20-x^23))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025855

/-- `ogf(1/(1-x^3-x^9-x^11+x^12+x^14+x^20-x^23))` -/
def P13568078616427789954.Spec : Prop :=
  ∀ n, P13568078616427789954.a n = A025855 n

theorem P13568078616427789954.correct : P13568078616427789954.Spec := by
  intro n
  simp only [A025855]

end A025855

/-! ## A025855.P8815391365434828454

`floor((n²+n+22*(n+8)*(n+2)%3+54*(n²+n+5)%11)/594)`
-/

namespace A025855.P8815391365434828454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + n + 22 * (n + 8) * ((n + 2) % 3) + 54 * ((n ^ 2 + n + 5) % 11) : ℕ) : ℚ) / 594⌋

end

end A025855.P8815391365434828454

namespace A025855

/-- `floor((n²+n+22*(n+8)*(n+2)%3+54*(n²+n+5)%11)/594)` -/
def P8815391365434828454.Spec : Prop :=
  ∀ n, P8815391365434828454.a n = A025855 n

end A025855

/-! ## A025855.P15285033373270992385

`A025771(n)+A025798(n)-A025766(n)`
-/

namespace A025855.P15285033373270992385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025771 n + (A025798 n - A025766 n)

end

end A025855.P15285033373270992385

namespace A025855

/-- `A025771(n)+A025798(n)-A025766(n)` -/
def P15285033373270992385.Spec : Prop :=
  ∀ n, P15285033373270992385.a n = A025855 n

end A025855

/-! ## A025855.P7143773857299824702

`A029287(n)+A029302(n)-A029274(n)`
-/

namespace A025855.P7143773857299824702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029287 n + (A029302 n - A029274 n)

end

end A025855.P7143773857299824702

namespace A025855

/-- `A029287(n)+A029302(n)-A029274(n)` -/
def P7143773857299824702.Spec : Prop :=
  ∀ n, P7143773857299824702.a n = A025855 n

end A025855

/-! ## A025855.P14457291548108757479

`Δ[A029028(n)-A029166(n)]`
-/

namespace A025855.P14457291548108757479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029028 n - A029166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025855.P14457291548108757479

namespace A025855

/-- `Δ[A029028(n)-A029166(n)]` -/
def P14457291548108757479.Spec : Prop :=
  ∀ n, P14457291548108757479.a n = A025855 n

end A025855

/-! ## A025855.P18291188986653143448

`Δ[∑[A025852(n)]-A029317(n)]`
-/

namespace A025855.P18291188986653143448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025855.P18291188986653143448

namespace A025855

/-- `Δ[∑[A025852(n)]-A029317(n)]` -/
def P18291188986653143448.Spec : Prop :=
  ∀ n, P18291188986653143448.a n = A025855 n

end A025855

/-! ## A025855.P15351829805794200329

`Δ[∑[A025854(n)]-A029322(n)]`
-/

namespace A025855.P15351829805794200329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025855.P15351829805794200329

namespace A025855

/-- `Δ[∑[A025854(n)]-A029322(n)]` -/
def P15351829805794200329.Spec : Prop :=
  ∀ n, P15351829805794200329.a n = A025855 n

end A025855

/-! ## A025855.P15210065917302719524

`A025852(n+1)-Δ[A029317(n)]`
-/

namespace A025855.P15210065917302719524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025852 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025855.P15210065917302719524

namespace A025855

/-- `A025852(n+1)-Δ[A029317(n)]` -/
def P15210065917302719524.Spec : Prop :=
  ∀ n, P15210065917302719524.a n = A025855 n

end A025855

/-! ## A025855.P5895239481219181998

`A025854(n+1)-Δ[A029322(n)]`
-/

namespace A025855.P5895239481219181998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025854 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025855.P5895239481219181998

namespace A025855

/-- `A025854(n+1)-Δ[A029322(n)]` -/
def P5895239481219181998.Spec : Prop :=
  ∀ n, P5895239481219181998.a n = A025855 n

end A025855

/-!
# A025856: Expansion of 1/((1-x^3)*(1-x^10)*(1-x^11)).

The programs for A025856, the canonical program `A025856.P14574672808354054514` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025856 has offset 0).

The definition of A025856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^10-x^11+x^13+x^14+x^21-x^24))` (program `A025856.P14574672808354054514`, by `A025856.P14574672808354054514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025856.P14574672808354054514

`ogf(1/(1-x^3-x^10-x^11+x^13+x^14+x^21-x^24))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025856

/-- `ogf(1/(1-x^3-x^10-x^11+x^13+x^14+x^21-x^24))` -/
def P14574672808354054514.Spec : Prop :=
  ∀ n, P14574672808354054514.a n = A025856 n

theorem P14574672808354054514.correct : P14574672808354054514.Spec := by
  intro n
  simp only [A025856]

end A025856

/-! ## A025856.P4194532838647033904

`A025826(n)+A025851(n)-A025822(n)`
-/

namespace A025856.P4194532838647033904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 n + (A025851 n - A025822 n)

end

end A025856.P4194532838647033904

namespace A025856

/-- `A025826(n)+A025851(n)-A025822(n)` -/
def P4194532838647033904.Spec : Prop :=
  ∀ n, P4194532838647033904.a n = A025856 n

end A025856

/-! ## A025856.P13919053735689660707

`A029269(n)+A029303(n)-A029255(n)`
-/

namespace A025856.P13919053735689660707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029269 n + (A029303 n - A029255 n)

end

end A025856.P13919053735689660707

namespace A025856

/-- `A029269(n)+A029303(n)-A029255(n)` -/
def P13919053735689660707.Spec : Prop :=
  ∀ n, P13919053735689660707.a n = A025856 n

end A025856

/-! ## A025856.P15582705509565591852

`A029269(n)+A029313(n)-A029259(n)`
-/

namespace A025856.P15582705509565591852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029269 n + (A029313 n - A029259 n)

end

end A025856.P15582705509565591852

namespace A025856

/-- `A029269(n)+A029313(n)-A029259(n)` -/
def P15582705509565591852.Spec : Prop :=
  ∀ n, P15582705509565591852.a n = A025856 n

end A025856

/-! ## A025856.P11485961609325623385

`A029289(n)+A029303(n)-A029275(n)`
-/

namespace A025856.P11485961609325623385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029289 n + (A029303 n - A029275 n)

end

end A025856.P11485961609325623385

namespace A025856

/-- `A029289(n)+A029303(n)-A029275(n)` -/
def P11485961609325623385.Spec : Prop :=
  ∀ n, P11485961609325623385.a n = A025856 n

end A025856

/-! ## A025856.P6558445458760293079

`A025855(n+1)+A025855(n)-A025854(n+1)`
-/

namespace A025856.P6558445458760293079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025855 (n + 1) + (A025855 n - A025854 (n + 1))

end

end A025856.P6558445458760293079

namespace A025856

/-- `A025855(n+1)+A025855(n)-A025854(n+1)` -/
def P6558445458760293079.Spec : Prop :=
  ∀ n, P6558445458760293079.a n = A025856 n

end A025856

/-!
# A025857: Expansion of 1/((1-x^3)*(1-x^10)*(1-x^12)).

The programs for A025857, the canonical program `A025857.P15166867553370185322` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025857 has offset 0).

The definition of A025857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^10-x^12+x^13+x^15+x^22-x^25))` (program `A025857.P15166867553370185322`, by `A025857.P15166867553370185322.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025857.P10331129322510757431

`floor((n²+3*n*(15+(-1)^n)+720)/720-(n+12)*n%3/36)`
-/

namespace A025857.P10331129322510757431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) + (3 * n : ℤ) * (15 + (-1) ^ n) + 720 : ℚ) / 720 - (((n + 12) * (n % 3) : ℕ) : ℚ) / 36⌋

end

end A025857.P10331129322510757431

namespace A025857

/-- `floor((n²+3*n*(15+(-1)^n)+720)/720-(n+12)*n%3/36)` -/
def P10331129322510757431.Spec : Prop :=
  ∀ n, P10331129322510757431.a n = A025857 n

end A025857

/-! ## A025857.P15166867553370185322

`ogf(1/(1-x^3-x^10-x^12+x^13+x^15+x^22-x^25))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025857

/-- `ogf(1/(1-x^3-x^10-x^12+x^13+x^15+x^22-x^25))` -/
def P15166867553370185322.Spec : Prop :=
  ∀ n, P15166867553370185322.a n = A025857 n

theorem P15166867553370185322.correct : P15166867553370185322.Spec := by
  intro n
  simp only [A025857]

end A025857

/-! ## A025857.P3983971562944804926

`A025881(lcm(2, n)%(n+3))`
-/

namespace A025857.P3983971562944804926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (Nat.lcm 2 n % (n + 3))

end

end A025857.P3983971562944804926

namespace A025857

/-- `A025881(lcm(2, n)%(n+3))` -/
def P3983971562944804926.Spec : Prop :=
  ∀ n, P3983971562944804926.a n = A025857 n

end A025857

/-! ## A025857.P2494671765522904737

`A025835(abs(∑[A097141(n)]))`
-/

namespace A025857.P2494671765522904737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A025857.P2494671765522904737

namespace A025857

/-- `A025835(abs(∑[A097141(n)]))` -/
def P2494671765522904737.Spec : Prop :=
  ∀ n, P2494671765522904737.a n = A025857 n

end A025857

/-! ## A025857.P3105839696673990094

`A025881(abs(1-A097062(n)))`
-/

namespace A025857.P3105839696673990094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 |1 - A097062 n|.toNat

end

end A025857.P3105839696673990094

namespace A025857

/-- `A025881(abs(1-A097062(n)))` -/
def P3105839696673990094.Spec : Prop :=
  ∀ n, P3105839696673990094.a n = A025857 n

end A025857

/-! ## A025857.P6055634230797298956

`A025881(abs(xor(1, A097062(n))))`
-/

namespace A025857.P6055634230797298956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 |Int.xor 1 (A097062 n)|.toNat

end

end A025857.P6055634230797298956

namespace A025857

/-- `A025881(abs(xor(1, A097062(n))))` -/
def P6055634230797298956.Spec : Prop :=
  ∀ n, P6055634230797298956.a n = A025857 n

end A025857

/-! ## A025857.P5093983156554055214

`A025835((n+1)%A052938(n))`
-/

namespace A025857.P5093983156554055214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 (Int.tmod (n + 1 : ℤ) (A052938 n)).toNat

end

end A025857.P5093983156554055214

namespace A025857

/-- `A025835((n+1)%A052938(n))` -/
def P5093983156554055214.Spec : Prop :=
  ∀ n, P5093983156554055214.a n = A025857 n

end A025857

/-! ## A025857.P5854410463675286824

`A029169(n)-A029169(abs(A097062(n)))`
-/

namespace A025857.P5854410463675286824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029169 n - A029169 |A097062 n|.toNat

end

end A025857.P5854410463675286824

namespace A025857

/-- `A029169(n)-A029169(abs(A097062(n)))` -/
def P5854410463675286824.Spec : Prop :=
  ∀ n, P5854410463675286824.a n = A025857 n

end A025857

/-! ## A025857.P12254133489413393716

`A029061(n)-∑[A025881(A004442(n))]`
-/

namespace A025857.P12254133489413393716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029061 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025857.P12254133489413393716

namespace A025857

/-- `A029061(n)-∑[A025881(A004442(n))]` -/
def P12254133489413393716.Spec : Prop :=
  ∀ n, P12254133489413393716.a n = A025857 n

end A025857

/-! ## A025857.P14889639850399356932

`A025881(xor(1, n+1))`
-/

namespace A025857.P14889639850399356932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (Nat.xor 1 (n + 1))

end

end A025857.P14889639850399356932

namespace A025857

/-- `A025881(xor(1, n+1))` -/
def P14889639850399356932.Spec : Prop :=
  ∀ n, P14889639850399356932.a n = A025857 n

end A025857

/-! ## A025857.P7582995629712900506

`A025881(A004442(n+1))`
-/

namespace A025857.P7582995629712900506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (A004442 (n + 1)).toNat

end

end A025857.P7582995629712900506

namespace A025857

/-- `A025881(A004442(n+1))` -/
def P7582995629712900506.Spec : Prop :=
  ∀ n, P7582995629712900506.a n = A025857 n

end A025857

/-! ## A025857.P13840256759561281070

`A025881(A010673(n)+n)`
-/

namespace A025857.P13840256759561281070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (A010673 n + (n : ℤ)).toNat

end

end A025857.P13840256759561281070

namespace A025857

/-- `A025881(A010673(n)+n)` -/
def P13840256759561281070.Spec : Prop :=
  ∀ n, P13840256759561281070.a n = A025857 n

end A025857

/-! ## A025857.P14533812710633484705

`A025835(abs(Δ[A029579(n)]))`
-/

namespace A025857.P14533812710633484705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 |f1 (n + 1) - f1 n|.toNat

end

end A025857.P14533812710633484705

namespace A025857

/-- `A025835(abs(Δ[A029579(n)]))` -/
def P14533812710633484705.Spec : Prop :=
  ∀ n, P14533812710633484705.a n = A025857 n

end A025857

/-! ## A025857.P7146562492511210155

`A025881(A097062(n+4))`
-/

namespace A025857.P7146562492511210155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (A097062 (n + 4)).toNat

end

end A025857.P7146562492511210155

namespace A025857

/-- `A025881(A097062(n+4))` -/
def P7146562492511210155.Spec : Prop :=
  ∀ n, P7146562492511210155.a n = A025857 n

end A025857

/-! ## A025857.P5623032455661229581

`A025881(A004442(2*n)-A004442(n))`
-/

namespace A025857.P5623032455661229581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (A004442 (2 * n) - A004442 n).toNat

end

end A025857.P5623032455661229581

namespace A025857

/-- `A025881(A004442(2*n)-A004442(n))` -/
def P5623032455661229581.Spec : Prop :=
  ∀ n, P5623032455661229581.a n = A025857 n

end A025857

/-!
# A025858: Expansion of 1/((1-x^3)*(1-x^11)*(1-x^12)).

The programs for A025858, the canonical program `A025858.P3197150635227061186` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025858 has offset 0).

The definition of A025858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^11-x^12+x^14+x^15+x^23-x^26))` (program `A025858.P3197150635227061186`, by `A025858.P3197150635227061186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025858.P3197150635227061186

`ogf(1/(1-x^3-x^11-x^12+x^14+x^15+x^23-x^26))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025858

/-- `ogf(1/(1-x^3-x^11-x^12+x^14+x^15+x^23-x^26))` -/
def P3197150635227061186.Spec : Prop :=
  ∀ n, P3197150635227061186.a n = A025858 n

theorem P3197150635227061186.correct : P3197150635227061186.Spec := by
  intro n
  simp only [A025858]

end A025858

/-! ## A025858.P921057180640317668

`A025907(abs(3-n))+A025907(n)`
-/

namespace A025858.P921057180640317668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 |3 - (n : ℤ)|.toNat + A025907 n

end

end A025858.P921057180640317668

namespace A025858

/-- `A025907(abs(3-n))+A025907(n)` -/
def P921057180640317668.Spec : Prop :=
  ∀ n, P921057180640317668.a n = A025858 n

end A025858

/-! ## A025858.P3583979696732241079

`A025853(n)+A025875(n)-A025873(n)`
-/

namespace A025858.P3583979696732241079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 n + (A025875 n - A025873 n)

end

end A025858.P3583979696732241079

namespace A025858

/-- `A025853(n)+A025875(n)-A025873(n)` -/
def P3583979696732241079.Spec : Prop :=
  ∀ n, P3583979696732241079.a n = A025858 n

end A025858

/-! ## A025858.P13973465581610968462

`A025855(n+3)-A025925(n+3)`
-/

namespace A025858.P13973465581610968462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025855 (n + 3) - A025925 (n + 3)

end

end A025858.P13973465581610968462

namespace A025858

/-- `A025855(n+3)-A025925(n+3)` -/
def P13973465581610968462.Spec : Prop :=
  ∀ n, P13973465581610968462.a n = A025858 n

end A025858

/-! ## A025858.P17242039793295835312

`Δ[A029059(n+2)]-A025925(n+3)`
-/

namespace A025858.P17242039793295835312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029059 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A025925 (n + 3)

end

end A025858.P17242039793295835312

namespace A025858

/-- `Δ[A029059(n+2)]-A025925(n+3)` -/
def P17242039793295835312.Spec : Prop :=
  ∀ n, P17242039793295835312.a n = A025858 n

end A025858

/-! ## A025858.P17247766523339043239

`A029166(n+3)-(A029166(n+1)+A025925(n+3))`
-/

namespace A025858.P17247766523339043239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029166 (n + 3) - (A029166 (n + 1) + A025925 (n + 3))

end

end A025858.P17247766523339043239

namespace A025858

/-- `A029166(n+3)-(A029166(n+1)+A025925(n+3))` -/
def P17247766523339043239.Spec : Prop :=
  ∀ n, P17247766523339043239.a n = A025858 n

end A025858

/-! ## A025858.P15656184949280517405

`A029059(n+3)-(A029059(n+2)+A025925(n+3))`
-/

namespace A025858.P15656184949280517405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029059 (n + 3) - (A029059 (n + 2) + A025925 (n + 3))

end

end A025858.P15656184949280517405

namespace A025858

/-- `A029059(n+3)-(A029059(n+2)+A025925(n+3))` -/
def P15656184949280517405.Spec : Prop :=
  ∀ n, P15656184949280517405.a n = A025858 n

end A025858

/-!
# A025859: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^7)).

The programs for A025859, the canonical program `A025859.P285339617279396563` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025859 has offset 0).

The definition of A025859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^7+x^9+x^11+x^12-x^16))` (program `A025859.P285339617279396563`, by `A025859.P285339617279396563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025859.P285339617279396563

`ogf(1/(1-x^4-x^5-x^7+x^9+x^11+x^12-x^16))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025859

/-- `ogf(1/(1-x^4-x^5-x^7+x^9+x^11+x^12-x^16))` -/
def P285339617279396563.Spec : Prop :=
  ∀ n, P285339617279396563.a n = A025859 n

theorem P285339617279396563.correct : P285339617279396563.Spec := by
  intro n
  simp only [A025859]

end A025859

/-! ## A025859.P15427161111522599031

`floor((n²+16*n+128)/280+(4*n²+n+4)%7/7)`
-/

namespace A025859.P15427161111522599031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 16 * n + 128 : ℚ) / 280 + (((4 * n ^ 2 + n + 4) % 7 : ℕ) : ℚ) / 7⌋

end

end A025859.P15427161111522599031

namespace A025859

/-- `floor((n²+16*n+128)/280+(4*n²+n+4)%7/7)` -/
def P15427161111522599031.Spec : Prop :=
  ∀ n, P15427161111522599031.a n = A025859 n

end A025859

/-! ## A025859.P10802122507911805993

`A025807(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025859.P10802122507911805993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025807 n - a (n - 2)

end

end A025859.P10802122507911805993

namespace A025859

/-- `A025807(n)-a(n-2)` -/
def P10802122507911805993.Spec : Prop :=
  ∀ n, P10802122507911805993.a n = A025859 n

end A025859

/-! ## A025859.P1934006559960119106

`A008680(n+4)-A008677(n+4)`
-/

namespace A025859.P1934006559960119106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (n + 4) - A008677 (n + 4)

end

end A025859.P1934006559960119106

namespace A025859

/-- `A008680(n+4)-A008677(n+4)` -/
def P1934006559960119106.Spec : Prop :=
  ∀ n, P1934006559960119106.a n = A025859 n

end A025859

/-! ## A025859.P13566074784586950719

`A025909(2*n)`
-/

namespace A025859.P13566074784586950719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 (2 * n)

end

end A025859.P13566074784586950719

namespace A025859

/-- `A025909(2*n)` -/
def P13566074784586950719.Spec : Prop :=
  ∀ n, P13566074784586950719.a n = A025859 n

end A025859

/-! ## A025859.P13538880510806076453

`Δ[A029227(xor(1, A004273(n)))]`
-/

namespace A025859.P13538880510806076453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029227 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025859.P13538880510806076453

namespace A025859

/-- `Δ[A029227(xor(1, A004273(n)))]` -/
def P13538880510806076453.Spec : Prop :=
  ∀ n, P13538880510806076453.a n = A025859 n

end A025859

/-! ## A025859.P9244094065492618694

`A029245(n)-A029414(2*n+1)`
-/

namespace A025859.P9244094065492618694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029245 n - A029414 (2 * n + 1)

end

end A025859.P9244094065492618694

namespace A025859

/-- `A029245(n)-A029414(2*n+1)` -/
def P9244094065492618694.Spec : Prop :=
  ∀ n, P9244094065492618694.a n = A025859 n

end A025859

/-! ## A025859.P16476363828217835596

`A029414(2*n)-A029414(2*n+1)`
-/

namespace A025859.P16476363828217835596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 (2 * n) - A029414 (2 * n + 1)

end

end A025859.P16476363828217835596

namespace A025859

/-- `A029414(2*n)-A029414(2*n+1)` -/
def P16476363828217835596.Spec : Prop :=
  ∀ n, P16476363828217835596.a n = A025859 n

end A025859

/-! ## A025859.P7560729713391523961

`2*A029436(2*n)-A029396(2*n)`
-/

namespace A025859.P7560729713391523961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029436 (2 * n) - A029396 (2 * n)

end

end A025859.P7560729713391523961

namespace A025859

/-- `2*A029436(2*n)-A029396(2*n)` -/
def P7560729713391523961.Spec : Prop :=
  ∀ n, P7560729713391523961.a n = A025859 n

end A025859

/-! ## A025859.P2864614937898702056

`Δ[A029227(A004442(A004273(n)))]`
-/

namespace A025859.P2864614937898702056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029227 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025859.P2864614937898702056

namespace A025859

/-- `Δ[A029227(A004442(A004273(n)))]` -/
def P2864614937898702056.Spec : Prop :=
  ∀ n, P2864614937898702056.a n = A025859 n

end A025859

/-! ## A025859.P13478785472441393196

`A025808(2*n)+A025845(2*n)-A025799(2*n)`
-/

namespace A025859.P13478785472441393196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025808 (2 * n) + (A025845 (2 * n) - A025799 (2 * n))

end

end A025859.P13478785472441393196

namespace A025859

/-- `A025808(2*n)+A025845(2*n)-A025799(2*n)` -/
def P13478785472441393196.Spec : Prop :=
  ∀ n, P13478785472441393196.a n = A025859 n

end A025859

/-! ## A025859.P25198514149758679

`A025845(2*n)+A025888(2*n)-A025838(2*n)`
-/

namespace A025859.P25198514149758679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 (2 * n) + (A025888 (2 * n) - A025838 (2 * n))

end

end A025859.P25198514149758679

namespace A025859

/-- `A025845(2*n)+A025888(2*n)-A025838(2*n)` -/
def P25198514149758679.Spec : Prop :=
  ∀ n, P25198514149758679.a n = A025859 n

end A025859

/-! ## A025859.P11203652182865469267

`A029360(2*n)-A029360(2*n+3)`
-/

namespace A025859.P11203652182865469267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029360 (2 * n) - A029360 (2 * n + 3)

end

end A025859.P11203652182865469267

namespace A025859

/-- `A029360(2*n)-A029360(2*n+3)` -/
def P11203652182865469267.Spec : Prop :=
  ∀ n, P11203652182865469267.a n = A025859 n

end A025859

/-! ## A025859.P5964538178365535762

`Δ[A029332(2*n+3)]`
-/

namespace A025859.P5964538178365535762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029332 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025859.P5964538178365535762

namespace A025859

/-- `Δ[A029332(2*n+3)]` -/
def P5964538178365535762.Spec : Prop :=
  ∀ n, P5964538178365535762.a n = A025859 n

end A025859

/-! ## A025859.P7168273934439604673

`Δ[A029227(2*n+5)]`
-/

namespace A025859.P7168273934439604673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029227 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025859.P7168273934439604673

namespace A025859

/-- `Δ[A029227(2*n+5)]` -/
def P7168273934439604673.Spec : Prop :=
  ∀ n, P7168273934439604673.a n = A025859 n

end A025859

/-! ## A025859.P5456253521898605914

`A025845(2*n)-A025893(3*n+1)`
-/

namespace A025859.P5456253521898605914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 (2 * n) - A025893 (3 * n + 1)

end

end A025859.P5456253521898605914

namespace A025859

/-- `A025845(2*n)-A025893(3*n+1)` -/
def P5456253521898605914.Spec : Prop :=
  ∀ n, P5456253521898605914.a n = A025859 n

end A025859

/-!
# A025860: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^8)).

The programs for A025860, the canonical program `A025860.P8018022976961395476` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025860 has offset 0).

The definition of A025860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^8+x^9+x^12+x^13-x^17))` (program `A025860.P8018022976961395476`, by `A025860.P8018022976961395476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025860.P14573031198659990853

`floor((n²+32*n+320-10*(n+8)*n%4)/320)`
-/

namespace A025860.P14573031198659990853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 32 * n + 320 : ℤ) - ((10 * (n + 8) * (n % 4) : ℕ) : ℤ) : ℚ) / 320⌋

end

end A025860.P14573031198659990853

namespace A025860

/-- `floor((n²+32*n+320-10*(n+8)*n%4)/320)` -/
def P14573031198659990853.Spec : Prop :=
  ∀ n, P14573031198659990853.a n = A025860 n

end A025860

/-! ## A025860.P8018022976961395476

`ogf(1/(1-x^4-x^5-x^8+x^9+x^12+x^13-x^17))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025860

/-- `ogf(1/(1-x^4-x^5-x^8+x^9+x^12+x^13-x^17))` -/
def P8018022976961395476.Spec : Prop :=
  ∀ n, P8018022976961395476.a n = A025860 n

theorem P8018022976961395476.correct : P8018022976961395476.Spec := by
  intro n
  simp only [A025860]

end A025860

/-! ## A025860.P11747482110590855365

`A025808(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025860.P11747482110590855365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025808 n - a (n - 2)

end

end A025860.P11747482110590855365

namespace A025860

/-- `A025808(n)-a(n-2)` -/
def P11747482110590855365.Spec : Prop :=
  ∀ n, P11747482110590855365.a n = A025860 n

end A025860

/-! ## A025860.P17840236132532052151

`A025802(A026741(n)%A052938(n))`
-/

namespace A025860.P17840236132532052151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 (Int.tmod (A026741 n) (A052938 n)).toNat

end

end A025860.P17840236132532052151

namespace A025860

/-- `A025802(A026741(n)%A052938(n))` -/
def P17840236132532052151.Spec : Prop :=
  ∀ n, P17840236132532052151.a n = A025860 n

end A025860

/-! ## A025860.P8804043520336252710

`A025802(A109613(n)%A052938(n))`
-/

namespace A025860.P8804043520336252710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 (Int.tmod (A109613 n) (A052938 n)).toNat

end

end A025860.P8804043520336252710

namespace A025860

/-- `A025802(A109613(n)%A052938(n))` -/
def P8804043520336252710.Spec : Prop :=
  ∀ n, P8804043520336252710.a n = A025860 n

end A025860

/-! ## A025860.P16625779587106575367

`A025802(A063196(n+1)%A052938(n))`
-/

namespace A025860.P16625779587106575367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 (Int.tmod (A063196 (n + 1)) (A052938 n)).toNat

end

end A025860.P16625779587106575367

namespace A025860

/-- `A025802(A063196(n+1)%A052938(n))` -/
def P16625779587106575367.Spec : Prop :=
  ∀ n, P16625779587106575367.a n = A025860 n

end A025860

/-! ## A025860.P18316898990506341292

`A008720(A084964(n))-A025802(A084964(n))`
-/

namespace A025860.P18316898990506341292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (A084964 n).toNat - A025802 (A084964 n).toNat

end

end A025860.P18316898990506341292

namespace A025860

/-- `A008720(A084964(n))-A025802(A084964(n))` -/
def P18316898990506341292.Spec : Prop :=
  ∀ n, P18316898990506341292.a n = A025860 n

end A025860

/-! ## A025860.P4509878879483587783

`Δ[A029040(n)-A029246(n)]`
-/

namespace A025860.P4509878879483587783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029040 n - A029246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025860.P4509878879483587783

namespace A025860

/-- `Δ[A029040(n)-A029246(n)]` -/
def P4509878879483587783.Spec : Prop :=
  ∀ n, P4509878879483587783.a n = A025860 n

end A025860

/-! ## A025860.P3021018949565402548

`A029173(n)-A029277(A166517(n))`
-/

namespace A025860.P3021018949565402548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029173 n - A029277 (A166517 n).toNat

end

end A025860.P3021018949565402548

namespace A025860

/-- `A029173(n)-A029277(A166517(n))` -/
def P3021018949565402548.Spec : Prop :=
  ∀ n, P3021018949565402548.a n = A025860 n

end A025860

/-! ## A025860.P13091753766946729953

`A025881(A166517(n+1)-1)`
-/

namespace A025860.P13091753766946729953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (A166517 (n + 1) - 1).toNat

end

end A025860.P13091753766946729953

namespace A025860

/-- `A025881(A166517(n+1)-1)` -/
def P13091753766946729953.Spec : Prop :=
  ∀ n, P13091753766946729953.a n = A025860 n

end A025860

/-! ## A025860.P3107351488739096514

`A025881(A016789(n)-A166517(n))`
-/

namespace A025860.P3107351488739096514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (A016789 n - A166517 n).toNat

end

end A025860.P3107351488739096514

namespace A025860

/-- `A025881(A016789(n)-A166517(n))` -/
def P3107351488739096514.Spec : Prop :=
  ∀ n, P3107351488739096514.a n = A025860 n

end A025860

/-! ## A025860.P14623100845449956150

`A025881(A166517(n+2))`
-/

namespace A025860.P14623100845449956150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (A166517 (n + 2)).toNat

end

end A025860.P14623100845449956150

namespace A025860

/-- `A025881(A166517(n+2))` -/
def P14623100845449956150.Spec : Prop :=
  ∀ n, P14623100845449956150.a n = A025860 n

end A025860

/-!
# A025861: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^9)).

The programs for A025861, the canonical program `A025861.P16297449271679243250` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025861 has offset 0).

The definition of A025861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5+x^13+x^14-x^18))` (program `A025861.P16297449271679243250`, by `A025861.P16297449271679243250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025861.P16297449271679243250

`ogf(1/(1-x^4-x^5+x^13+x^14-x^18))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025861

/-- `ogf(1/(1-x^4-x^5+x^13+x^14-x^18))` -/
def P16297449271679243250.Spec : Prop :=
  ∀ n, P16297449271679243250.a n = A025861 n

theorem P16297449271679243250.correct : P16297449271679243250.Spec := by
  intro n
  simp only [A025861]

end A025861

/-! ## A025861.P15563681495923121511

`A025809(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025861.P15563681495923121511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025809 n - a (n - 2)

end

end A025861.P15563681495923121511

namespace A025861

/-- `A025809(n)-a(n-2)` -/
def P15563681495923121511.Spec : Prop :=
  ∀ n, P15563681495923121511.a n = A025861 n

end A025861

/-! ## A025861.P4696357940371216862

`A025918(2*n)`
-/

namespace A025861.P4696357940371216862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 (2 * n)

end

end A025861.P4696357940371216862

namespace A025861

/-- `A025918(2*n)` -/
def P4696357940371216862.Spec : Prop :=
  ∀ n, P4696357940371216862.a n = A025861 n

end A025861

/-! ## A025861.P1943511299435861073

`Δ[A029236(xor(1, A004273(n)))]`
-/

namespace A025861.P1943511299435861073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025861.P1943511299435861073

namespace A025861

/-- `Δ[A029236(xor(1, A004273(n)))]` -/
def P1943511299435861073.Spec : Prop :=
  ∀ n, P1943511299435861073.a n = A025861 n

end A025861

/-! ## A025861.P3656324899655840106

`Δ[A029236(A004442(A004273(n)))]`
-/

namespace A025861.P3656324899655840106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025861.P3656324899655840106

namespace A025861

/-- `Δ[A029236(A004442(A004273(n)))]` -/
def P3656324899655840106.Spec : Prop :=
  ∀ n, P3656324899655840106.a n = A025861 n

end A025861

/-! ## A025861.P15769960025107391924

`A029236(2*n)+A029423(2*n)-A029221(2*n)`
-/

namespace A025861.P15769960025107391924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (2 * n) + (A029423 (2 * n) - A029221 (2 * n))

end

end A025861.P15769960025107391924

namespace A025861

/-- `A029236(2*n)+A029423(2*n)-A029221(2*n)` -/
def P15769960025107391924.Spec : Prop :=
  ∀ n, P15769960025107391924.a n = A025861 n

end A025861

/-! ## A025861.P10785908552410730887

`A029423(2*n)-A029423(2*n+3)`
-/

namespace A025861.P10785908552410730887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (2 * n) - A029423 (2 * n + 3)

end

end A025861.P10785908552410730887

namespace A025861

/-- `A029423(2*n)-A029423(2*n+3)` -/
def P10785908552410730887.Spec : Prop :=
  ∀ n, P10785908552410730887.a n = A025861 n

end A025861

/-! ## A025861.P7518756655606934578

`Δ[A029236(2*n+7)]`
-/

namespace A025861.P7518756655606934578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025861.P7518756655606934578

namespace A025861

/-- `Δ[A029236(2*n+7)]` -/
def P7518756655606934578.Spec : Prop :=
  ∀ n, P7518756655606934578.a n = A025861 n

end A025861

/-! ## A025861.P9508547890496111772

`abs(Δ[A029236(n+7+n)])`
-/

namespace A025861.P9508547890496111772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (n + 7 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A025861.P9508547890496111772

namespace A025861

/-- `abs(Δ[A029236(n+7+n)])` -/
def P9508547890496111772.Spec : Prop :=
  ∀ n, P9508547890496111772.a n = A025861 n

end A025861

/-! ## A025861.P17209152010364891402

`A060950(A002151(n+1))+A025918(n+n)`
-/

namespace A025861.P17209152010364891402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A002151 (n + 1)).toNat + A025918 (n + n)

end

end A025861.P17209152010364891402

namespace A025861

/-- `A060950(A002151(n+1))+A025918(n+n)` -/
def P17209152010364891402.Spec : Prop :=
  ∀ n, P17209152010364891402.a n = A025861 n

end A025861

/-! ## A025861.P10235571852854307125

`Δ[A029236(n+7+n)%A225957(n)]`
-/

namespace A025861.P10235571852854307125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029236 (n + 7 + n)) (A225957 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025861.P10235571852854307125

namespace A025861

/-- `Δ[A029236(n+7+n)%A225957(n)]` -/
def P10235571852854307125.Spec : Prop :=
  ∀ n, P10235571852854307125.a n = A025861 n

end A025861

/-! ## A025861.P8047402736023791528

`Δ[A029236(n+7+n)]%A000032(n)`
-/

namespace A025861.P8047402736023791528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (n + 7 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000032 n)

end

end A025861.P8047402736023791528

namespace A025861

/-- `Δ[A029236(n+7+n)]%A000032(n)` -/
def P8047402736023791528.Spec : Prop :=
  ∀ n, P8047402736023791528.a n = A025861 n

end A025861

/-!
# A025862: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^10)).

The programs for A025862, the canonical program `A025862.P17015796576045785219` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025862 has offset 0).

The definition of A025862 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5+x^9-x^10+x^14+x^15-x^19))` (program `A025862.P17015796576045785219`, by `A025862.P17015796576045785219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025862.P17015796576045785219

`ogf(1/(1-x^4-x^5+x^9-x^10+x^14+x^15-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025862

/-- `ogf(1/(1-x^4-x^5+x^9-x^10+x^14+x^15-x^19))` -/
def P17015796576045785219.Spec : Prop :=
  ∀ n, P17015796576045785219.a n = A025862 n

theorem P17015796576045785219.correct : P17015796576045785219.Spec := by
  intro n
  simp only [A025862]

end A025862

/-! ## A025862.P5949031767459722660

`floor((n²+3*n+272+5*n*(-1)^n+8*(n+4)*(n+4)%5)/400)`
-/

namespace A025862.P5949031767459722660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 3 * n + 272 : ℤ) + (5 * n : ℤ) * (-1) ^ n + ((8 * (n + 4) * ((n + 4) % 5) : ℕ) : ℤ) : ℚ) / 400⌋

end

end A025862.P5949031767459722660

namespace A025862

/-- `floor((n²+3*n+272+5*n*(-1)^n+8*(n+4)*(n+4)%5)/400)` -/
def P5949031767459722660.Spec : Prop :=
  ∀ n, P5949031767459722660.a n = A025862 n

end A025862

/-! ## A025862.P10499467345000669586

`A025810(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025862.P10499467345000669586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025810 n - a (n - 2)

end

end A025862.P10499467345000669586

namespace A025862

/-- `A025810(n)-a(n-2)` -/
def P10499467345000669586.Spec : Prop :=
  ∀ n, P10499467345000669586.a n = A025862 n

end A025862

/-! ## A025862.P2432046594522780339

`A025865(n)+A025891(n)-A025904(n)`
-/

namespace A025862.P2432046594522780339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 n + (A025891 n - A025904 n)

end

end A025862.P2432046594522780339

namespace A025862

/-- `A025865(n)+A025891(n)-A025904(n)` -/
def P2432046594522780339.Spec : Prop :=
  ∀ n, P2432046594522780339.a n = A025862 n

end A025862

/-! ## A025862.P15347769500251131890

`Δ[A029042(n)-A029248(n)]`
-/

namespace A025862.P15347769500251131890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 n - A029248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025862.P15347769500251131890

namespace A025862

/-- `Δ[A029042(n)-A029248(n)]` -/
def P15347769500251131890.Spec : Prop :=
  ∀ n, P15347769500251131890.a n = A025862 n

end A025862

/-! ## A025862.P14049906744641715306

`A165190(n+10)*A165190(n)`
-/

namespace A025862.P14049906744641715306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (n + 10) * A165190 n

end

end A025862.P14049906744641715306

namespace A025862

/-- `A165190(n+10)*A165190(n)` -/
def P14049906744641715306.Spec : Prop :=
  ∀ n, P14049906744641715306.a n = A025862 n

end A025862

/-! ## A025862.P11193689450291734158

`abs(a(n-2)-A000217(A008651(3*n)))` with `a(0)=1, a(1)=0`
-/

namespace A025862.P11193689450291734158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  |a (n - 2) - A000217 (A008651 (3 * n)).toNat|

end

end A025862.P11193689450291734158

namespace A025862

/-- `abs(a(n-2)-A000217(A008651(3*n)))` -/
def P11193689450291734158.Spec : Prop :=
  ∀ n, P11193689450291734158.a n = A025862 n

end A025862

/-! ## A025862.P16708466638923563708

`A002265((A004526(n)+2-A130496(n+4))²)`
-/

namespace A025862.P16708466638923563708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((A004526 n + 2 - A130496 (n + 4)) ^ 2).toNat

end

end A025862.P16708466638923563708

namespace A025862

/-- `A002265((A004526(n)+2-A130496(n+4))²)` -/
def P16708466638923563708.Spec : Prop :=
  ∀ n, P16708466638923563708.a n = A025862 n

end A025862

/-!
# A025863: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^11)).

The programs for A025863, the canonical program `A025863.P8392620270379645234` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025863 has offset 0).

The definition of A025863 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5+x^9-x^11+x^15+x^16-x^20))` (program `A025863.P8392620270379645234`, by `A025863.P8392620270379645234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025863.P8392620270379645234

`ogf(1/(1-x^4-x^5+x^9-x^11+x^15+x^16-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025863

/-- `ogf(1/(1-x^4-x^5+x^9-x^11+x^15+x^16-x^20))` -/
def P8392620270379645234.Spec : Prop :=
  ∀ n, P8392620270379645234.a n = A025863 n

theorem P8392620270379645234.correct : P8392620270379645234.Spec := by
  intro n
  simp only [A025863]

end A025863

/-! ## A025863.P11788053294611047951

`A025811(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025863.P11788053294611047951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025811 n - a (n - 2)

end

end A025863.P11788053294611047951

namespace A025863

/-- `A025811(n)-a(n-2)` -/
def P11788053294611047951.Spec : Prop :=
  ∀ n, P11788053294611047951.a n = A025863 n

end A025863

/-! ## A025863.P14187996190069284006

`A025921(2*n)`
-/

namespace A025863.P14187996190069284006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 (2 * n)

end

end A025863.P14187996190069284006

namespace A025863

/-- `A025921(2*n)` -/
def P14187996190069284006.Spec : Prop :=
  ∀ n, P14187996190069284006.a n = A025863 n

end A025863

/-! ## A025863.P499343634990688523

`Δ[A029239(A004442(A004273(n)))]`
-/

namespace A025863.P499343634990688523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025863.P499343634990688523

namespace A025863

/-- `Δ[A029239(A004442(A004273(n)))]` -/
def P499343634990688523.Spec : Prop :=
  ∀ n, P499343634990688523.a n = A025863 n

end A025863

/-! ## A025863.P11358751074722577646

`A025921(A004277(n))+A000007(n)`
-/

namespace A025863.P11358751074722577646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 (A004277 n).toNat + A000007 n

end

end A025863.P11358751074722577646

namespace A025863

/-- `A025921(A004277(n))+A000007(n)` -/
def P11358751074722577646.Spec : Prop :=
  ∀ n, P11358751074722577646.a n = A025863 n

end A025863

/-! ## A025863.P9995868352528696200

`A025921(A005843(n))+A000007(n+1)`
-/

namespace A025863.P9995868352528696200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 (A005843 n).toNat + A000007 (n + 1)

end

end A025863.P9995868352528696200

namespace A025863

/-- `A025921(A005843(n))+A000007(n+1)` -/
def P9995868352528696200.Spec : Prop :=
  ∀ n, P9995868352528696200.a n = A025863 n

end A025863

/-! ## A025863.P13610433359170844004

`A029130(2*n)+A029435(2*n)-A029124(2*n)`
-/

namespace A025863.P13610433359170844004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029130 (2 * n) + (A029435 (2 * n) - A029124 (2 * n))

end

end A025863.P13610433359170844004

namespace A025863

/-- `A029130(2*n)+A029435(2*n)-A029124(2*n)` -/
def P13610433359170844004.Spec : Prop :=
  ∀ n, P13610433359170844004.a n = A025863 n

end A025863

/-! ## A025863.P10514435470681728075

`A025919(2*n+1)+A025919(2*n)-A025918(2*n+1)`
-/

namespace A025863.P10514435470681728075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 (2 * n + 1) + (A025919 (2 * n) - A025918 (2 * n + 1))

end

end A025863.P10514435470681728075

namespace A025863

/-- `A025919(2*n+1)+A025919(2*n)-A025918(2*n+1)` -/
def P10514435470681728075.Spec : Prop :=
  ∀ n, P10514435470681728075.a n = A025863 n

end A025863

/-! ## A025863.P3659106451962119878

`A025915(2*n+1)+A029435(2*n)-A029435(2*n+1)`
-/

namespace A025863.P3659106451962119878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 (2 * n + 1) + (A029435 (2 * n) - A029435 (2 * n + 1))

end

end A025863.P3659106451962119878

namespace A025863

/-- `A025915(2*n+1)+A029435(2*n)-A029435(2*n+1)` -/
def P3659106451962119878.Spec : Prop :=
  ∀ n, P3659106451962119878.a n = A025863 n

end A025863

/-! ## A025863.P5854933061785469874

`Δ[∑[A025918(2*n)]-A029442(2*n)]`
-/

namespace A025863.P5854933061785469874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029442 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025863.P5854933061785469874

namespace A025863

/-- `Δ[∑[A025918(2*n)]-A029442(2*n)]` -/
def P5854933061785469874.Spec : Prop :=
  ∀ n, P5854933061785469874.a n = A025863 n

end A025863

/-! ## A025863.P13856658857723771424

`Δ[A029239(2*n+9)]`
-/

namespace A025863.P13856658857723771424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025863.P13856658857723771424

namespace A025863

/-- `Δ[A029239(2*n+9)]` -/
def P13856658857723771424.Spec : Prop :=
  ∀ n, P13856658857723771424.a n = A025863 n

end A025863

/-!
# A025864: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^12)).

The programs for A025864, the canonical program `A025864.P10836401984761958059` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025864 has offset 0).

The definition of A025864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5+x^9-x^12+x^16+x^17-x^21))` (program `A025864.P10836401984761958059`, by `A025864.P10836401984761958059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025864.P10836401984761958059

`ogf(1/(1-x^4-x^5+x^9-x^12+x^16+x^17-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025864

/-- `ogf(1/(1-x^4-x^5+x^9-x^12+x^16+x^17-x^21))` -/
def P10836401984761958059.Spec : Prop :=
  ∀ n, P10836401984761958059.a n = A025864 n

theorem P10836401984761958059.correct : P10836401984761958059.Spec := by
  intro n
  simp only [A025864]

end A025864

/-! ## A025864.P12787596041841869248

`A025812(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025864.P12787596041841869248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025812 n - a (n - 2)

end

end A025864.P12787596041841869248

namespace A025864

/-- `A025812(n)-a(n-2)` -/
def P12787596041841869248.Spec : Prop :=
  ∀ n, P12787596041841869248.a n = A025864 n

end A025864

/-! ## A025864.P441569782507185122

`round(A008720(A084964(n))/3)`
-/

namespace A025864.P441569782507185122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008720 (A084964 n).toNat : ℚ) / 3)

end

end A025864.P441569782507185122

namespace A025864

/-- `round(A008720(A084964(n))/3)` -/
def P441569782507185122.Spec : Prop :=
  ∀ n, P441569782507185122.a n = A025864 n

end A025864

/-! ## A025864.P11183903762465022092

`A025806(A026741(n)%A052938(n))`
-/

namespace A025864.P11183903762465022092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 (Int.tmod (A026741 n) (A052938 n)).toNat

end

end A025864.P11183903762465022092

namespace A025864

/-- `A025806(A026741(n)%A052938(n))` -/
def P11183903762465022092.Spec : Prop :=
  ∀ n, P11183903762465022092.a n = A025864 n

end A025864

/-! ## A025864.P13170847581133927918

`A025806(A109613(n)%A052938(n))`
-/

namespace A025864.P13170847581133927918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 (Int.tmod (A109613 n) (A052938 n)).toNat

end

end A025864.P13170847581133927918

namespace A025864

/-- `A025806(A109613(n)%A052938(n))` -/
def P13170847581133927918.Spec : Prop :=
  ∀ n, P13170847581133927918.a n = A025864 n

end A025864

/-! ## A025864.P11739457311649233218

`A025874(n)+A025883(n)-A025914(n)`
-/

namespace A025864.P11739457311649233218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 n + (A025883 n - A025914 n)

end

end A025864.P11739457311649233218

namespace A025864

/-- `A025874(n)+A025883(n)-A025914(n)` -/
def P11739457311649233218.Spec : Prop :=
  ∀ n, P11739457311649233218.a n = A025864 n

end A025864

/-! ## A025864.P15848509270071326790

`Δ[A029044(n)-A029250(n)]`
-/

namespace A025864.P15848509270071326790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029044 n - A029250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025864.P15848509270071326790

namespace A025864

/-- `Δ[A029044(n)-A029250(n)]` -/
def P15848509270071326790.Spec : Prop :=
  ∀ n, P15848509270071326790.a n = A025864 n

end A025864

/-! ## A025864.P9324769432488014776

`A048766(A029340(n)²)`
-/

namespace A025864.P9324769432488014776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A029340 n ^ 2).toNat

end

end A025864.P9324769432488014776

namespace A025864

/-- `A048766(A029340(n)²)` -/
def P9324769432488014776.Spec : Prop :=
  ∀ n, P9324769432488014776.a n = A025864 n

end A025864

/-! ## A025864.P10265441956049938154

`A048766((A029340(n)+1)*A029340(n))`
-/

namespace A025864.P10265441956049938154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((A029340 n + 1) * A029340 n).toNat

end

end A025864.P10265441956049938154

namespace A025864

/-- `A048766((A029340(n)+1)*A029340(n))` -/
def P10265441956049938154.Spec : Prop :=
  ∀ n, P10265441956049938154.a n = A025864 n

end A025864

/-! ## A025864.P500166766372070762

`A003056(A288166(n+5))%A318816(n+6)`
-/

namespace A025864.P500166766372070762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A288166 (n + 5)).toNat) (A318816 (n + 6))

end

end A025864.P500166766372070762

namespace A025864

/-- `A003056(A288166(n+5))%A318816(n+6)` -/
def P500166766372070762.Spec : Prop :=
  ∀ n, P500166766372070762.a n = A025864 n

end A025864

/-!
# A025865: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^9)).

The programs for A025865, the canonical program `A025865.P4050563034657353175` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025865 has offset 0).

The definition of A025865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^6-x^9+x^10+x^13+x^15-x^19))` (program `A025865.P4050563034657353175`, by `A025865.P4050563034657353175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025865.P4050563034657353175

`ogf(1/(1-x^4-x^6-x^9+x^10+x^13+x^15-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025865

/-- `ogf(1/(1-x^4-x^6-x^9+x^10+x^13+x^15-x^19))` -/
def P4050563034657353175.Spec : Prop :=
  ∀ n, P4050563034657353175.a n = A025865 n

theorem P4050563034657353175.correct : P4050563034657353175.Spec := by
  intro n
  simp only [A025865]

end A025865

/-! ## A025865.P1495208147731119466

`floor((n²+27*n+432)/432+(n+8)*(-1)^n/48-(n+15)*n%3/54)`
-/

namespace A025865.P1495208147731119466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 27 * n + 432 : ℚ) / 432 + ((n + 8 : ℤ) * (-1) ^ n : ℚ) / 48 - (((n + 15) * (n % 3) : ℕ) : ℚ) / 54⌋

end

end A025865.P1495208147731119466

namespace A025865

/-- `floor((n²+27*n+432)/432+(n+8)*(-1)^n/48-(n+15)*n%3/54)` -/
def P1495208147731119466.Spec : Prop :=
  ∀ n, P1495208147731119466.a n = A025865 n

end A025865

/-! ## A025865.P3305465472500844583

`A025814(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025865.P3305465472500844583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025814 n - a (n - 2)

end

end A025865.P3305465472500844583

namespace A025865

/-- `A025814(n)-a(n-2)` -/
def P3305465472500844583.Spec : Prop :=
  ∀ n, P3305465472500844583.a n = A025865 n

end A025865

/-! ## A025865.P12129358116815412158

`A025831(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025865.P12129358116815412158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025831 n - a (n - 3)

end

end A025865.P12129358116815412158

namespace A025865

/-- `A025831(n)-a(n-3)` -/
def P12129358116815412158.Spec : Prop :=
  ∀ n, P12129358116815412158.a n = A025865 n

end A025865

/-! ## A025865.P4070011130473797293

`A005044(A063942(n)+2)`
-/

namespace A025865.P4070011130473797293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A063942 n + 2).toNat

end

end A025865.P4070011130473797293

namespace A025865

/-- `A005044(A063942(n)+2)` -/
def P4070011130473797293.Spec : Prop :=
  ∀ n, P4070011130473797293.a n = A025865 n

end A025865

/-! ## A025865.P663438954783087627

`A029253(n)-A288165(n+1)`
-/

namespace A025865.P663438954783087627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 n - A288165 (n + 1)

end

end A025865.P663438954783087627

namespace A025865

/-- `A029253(n)-A288165(n+1)` -/
def P663438954783087627.Spec : Prop :=
  ∀ n, P663438954783087627.a n = A025865 n

end A025865

/-! ## A025865.P18124761272033955623

`A025920(2*n)`
-/

namespace A025865.P18124761272033955623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 (2 * n)

end

end A025865.P18124761272033955623

namespace A025865

/-- `A025920(2*n)` -/
def P18124761272033955623.Spec : Prop :=
  ∀ n, P18124761272033955623.a n = A025865 n

end A025865

/-! ## A025865.P3196793754288531943

`A351742(A047271(n+1))`
-/

namespace A025865.P3196793754288531943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351742 (A047271 (n + 1)).toNat

end

end A025865.P3196793754288531943

namespace A025865

/-- `A351742(A047271(n+1))` -/
def P3196793754288531943.Spec : Prop :=
  ∀ n, P3196793754288531943.a n = A025865 n

end A025865

/-! ## A025865.P17116545720610188470

`Δ[A029238(xor(1, A004273(n)))]`
-/

namespace A025865.P17116545720610188470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025865.P17116545720610188470

namespace A025865

/-- `Δ[A029238(xor(1, A004273(n)))]` -/
def P17116545720610188470.Spec : Prop :=
  ∀ n, P17116545720610188470.a n = A025865 n

end A025865

/-! ## A025865.P10114714650936726000

`Δ[A029238(A004442(A004273(n)))]`
-/

namespace A025865.P10114714650936726000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025865.P10114714650936726000

namespace A025865

/-- `Δ[A029238(A004442(A004273(n)))]` -/
def P10114714650936726000.Spec : Prop :=
  ∀ n, P10114714650936726000.a n = A025865 n

end A025865

/-! ## A025865.P305788108948223025

`A025850(2*n)+A025890(2*n)-A025840(2*n)`
-/

namespace A025865.P305788108948223025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025850 (2 * n) + (A025890 (2 * n) - A025840 (2 * n))

end

end A025865.P305788108948223025

namespace A025865

/-- `A025850(2*n)+A025890(2*n)-A025840(2*n)` -/
def P305788108948223025.Spec : Prop :=
  ∀ n, P305788108948223025.a n = A025865 n

end A025865

/-! ## A025865.P6186366360456253788

`A025872(2*n)+A025893(2*n)-A025864(2*n)`
-/

namespace A025865.P6186366360456253788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (2 * n) + (A025893 (2 * n) - A025864 (2 * n))

end

end A025865.P6186366360456253788

namespace A025865

/-- `A025872(2*n)+A025893(2*n)-A025864(2*n)` -/
def P6186366360456253788.Spec : Prop :=
  ∀ n, P6186366360456253788.a n = A025865 n

end A025865

/-! ## A025865.P6290513739336325769

`A025874(2*n)+A029219(2*n)-A029190(2*n)`
-/

namespace A025865.P6290513739336325769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 (2 * n) + (A029219 (2 * n) - A029190 (2 * n))

end

end A025865.P6290513739336325769

namespace A025865

/-- `A025874(2*n)+A029219(2*n)-A029190(2*n)` -/
def P6290513739336325769.Spec : Prop :=
  ∀ n, P6290513739336325769.a n = A025865 n

end A025865

/-! ## A025865.P3599108923579411933

`A029238(2*n)+A029425(2*n)-A029223(2*n)`
-/

namespace A025865.P3599108923579411933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n) + (A029425 (2 * n) - A029223 (2 * n))

end

end A025865.P3599108923579411933

namespace A025865

/-- `A029238(2*n)+A029425(2*n)-A029223(2*n)` -/
def P3599108923579411933.Spec : Prop :=
  ∀ n, P3599108923579411933.a n = A025865 n

end A025865

/-! ## A025865.P4881906551911432770

`A029425(2*n)-A029425(2*n+3)`
-/

namespace A025865.P4881906551911432770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 (2 * n) - A029425 (2 * n + 3)

end

end A025865.P4881906551911432770

namespace A025865

/-- `A029425(2*n)-A029425(2*n+3)` -/
def P4881906551911432770.Spec : Prop :=
  ∀ n, P4881906551911432770.a n = A025865 n

end A025865

/-! ## A025865.P13655280040023518114

`A029238(2*n)-A029238(2*n+7)`
-/

namespace A025865.P13655280040023518114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n) - A029238 (2 * n + 7)

end

end A025865.P13655280040023518114

namespace A025865

/-- `A029238(2*n)-A029238(2*n+7)` -/
def P13655280040023518114.Spec : Prop :=
  ∀ n, P13655280040023518114.a n = A025865 n

end A025865

/-! ## A025865.P11926673306270309264

`Δ[A029238(2*n+7)]`
-/

namespace A025865.P11926673306270309264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025865.P11926673306270309264

namespace A025865

/-- `Δ[A029238(2*n+7)]` -/
def P11926673306270309264.Spec : Prop :=
  ∀ n, P11926673306270309264.a n = A025865 n

end A025865

/-!
# A025866: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^11)).

The programs for A025866, the canonical program `A025866.P5585467804852399268` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025866 has offset 0).

The definition of A025866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^6+x^10-x^11+x^15+x^17-x^21))` (program `A025866.P5585467804852399268`, by `A025866.P5585467804852399268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025866.P5585467804852399268

`ogf(1/(1-x^4-x^6+x^10-x^11+x^15+x^17-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025866

/-- `ogf(1/(1-x^4-x^6+x^10-x^11+x^15+x^17-x^21))` -/
def P5585467804852399268.Spec : Prop :=
  ∀ n, P5585467804852399268.a n = A025866 n

theorem P5585467804852399268.correct : P5585467804852399268.Spec := by
  intro n
  simp only [A025866]

end A025866

/-! ## A025866.P13846047430702582108

`A025815(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025866.P13846047430702582108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025815 n - a (n - 2)

end

end A025866.P13846047430702582108

namespace A025866

/-- `A025815(n)-a(n-2)` -/
def P13846047430702582108.Spec : Prop :=
  ∀ n, P13846047430702582108.a n = A025866 n

end A025866

/-! ## A025866.P11253978069635437238

`A025833(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025866.P11253978069635437238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025833 n - a (n - 3)

end

end A025866.P11253978069635437238

namespace A025866

/-- `A025833(n)-a(n-3)` -/
def P11253978069635437238.Spec : Prop :=
  ∀ n, P11253978069635437238.a n = A025866 n

end A025866

/-! ## A025866.P13783742543830784608

`A025905(A168197(n+1))`
-/

namespace A025866.P13783742543830784608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 (A168197 (n + 1)).toNat

end

end A025866.P13783742543830784608

namespace A025866

/-- `A025905(A168197(n+1))` -/
def P13783742543830784608.Spec : Prop :=
  ∀ n, P13783742543830784608.a n = A025866 n

end A025866

/-! ## A025866.P17917769552786906942

`A025922(2*n)`
-/

namespace A025866.P17917769552786906942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (2 * n)

end

end A025866.P17917769552786906942

namespace A025866

/-- `A025922(2*n)` -/
def P17917769552786906942.Spec : Prop :=
  ∀ n, P17917769552786906942.a n = A025866 n

end A025866

/-! ## A025866.P6944612458804362600

`Δ[A029240(xor(1, A004273(n)))]`
-/

namespace A025866.P6944612458804362600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025866.P6944612458804362600

namespace A025866

/-- `Δ[A029240(xor(1, A004273(n)))]` -/
def P6944612458804362600.Spec : Prop :=
  ∀ n, P6944612458804362600.a n = A025866 n

end A025866

/-! ## A025866.P10887774367393175481

`A029445(2*n)-A029445(2*n+1)`
-/

namespace A025866.P10887774367393175481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029445 (2 * n) - A029445 (2 * n + 1)

end

end A025866.P10887774367393175481

namespace A025866

/-- `A029445(2*n)-A029445(2*n+1)` -/
def P10887774367393175481.Spec : Prop :=
  ∀ n, P10887774367393175481.a n = A025866 n

end A025866

/-! ## A025866.P11808466670724489913

`Δ[A029240(A004442(A004273(n)))]`
-/

namespace A025866.P11808466670724489913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025866.P11808466670724489913

namespace A025866

/-- `Δ[A029240(A004442(A004273(n)))]` -/
def P11808466670724489913.Spec : Prop :=
  ∀ n, P11808466670724489913.a n = A025866 n

end A025866

/-! ## A025866.P8868878801269167543

`A029240(2*n)+A029427(2*n)-A029225(2*n)`
-/

namespace A025866.P8868878801269167543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n) + (A029427 (2 * n) - A029225 (2 * n))

end

end A025866.P8868878801269167543

namespace A025866

/-- `A029240(2*n)+A029427(2*n)-A029225(2*n)` -/
def P8868878801269167543.Spec : Prop :=
  ∀ n, P8868878801269167543.a n = A025866 n

end A025866

/-! ## A025866.P16627465830102774755

`A029240(2*n)+A029444(2*n)-A029238(2*n)`
-/

namespace A025866.P16627465830102774755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n) + (A029444 (2 * n) - A029238 (2 * n))

end

end A025866.P16627465830102774755

namespace A025866

/-- `A029240(2*n)+A029444(2*n)-A029238(2*n)` -/
def P16627465830102774755.Spec : Prop :=
  ∀ n, P16627465830102774755.a n = A025866 n

end A025866

/-! ## A025866.P12341874548958788879

`A029408(2*n)+A029427(2*n)-A029386(2*n)`
-/

namespace A025866.P12341874548958788879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 (2 * n) + (A029427 (2 * n) - A029386 (2 * n))

end

end A025866.P12341874548958788879

namespace A025866

/-- `A029408(2*n)+A029427(2*n)-A029386(2*n)` -/
def P12341874548958788879.Spec : Prop :=
  ∀ n, P12341874548958788879.a n = A025866 n

end A025866

/-! ## A025866.P15908251403978067895

`A029408(2*n)+A029437(2*n)-A029395(2*n)`
-/

namespace A025866.P15908251403978067895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 (2 * n) + (A029437 (2 * n) - A029395 (2 * n))

end

end A025866.P15908251403978067895

namespace A025866

/-- `A029408(2*n)+A029437(2*n)-A029395(2*n)` -/
def P15908251403978067895.Spec : Prop :=
  ∀ n, P15908251403978067895.a n = A025866 n

end A025866

/-! ## A025866.P4426416552001146169

`A029445(2*n)+A029445(2*n+1)*A260196(n+1)`
-/

namespace A025866.P4426416552001146169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029445 (2 * n) + A029445 (2 * n + 1) * A260196 (n + 1)

end

end A025866.P4426416552001146169

namespace A025866

/-- `A029445(2*n)+A029445(2*n+1)*A260196(n+1)` -/
def P4426416552001146169.Spec : Prop :=
  ∀ n, P4426416552001146169.a n = A025866 n

end A025866

/-! ## A025866.P1979014739799187300

`A029217(n+2)-A029437(A005843(n+2))`
-/

namespace A025866.P1979014739799187300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029217 (n + 2) - A029437 (A005843 (n + 2)).toNat

end

end A025866.P1979014739799187300

namespace A025866

/-- `A029217(n+2)-A029437(A005843(n+2))` -/
def P1979014739799187300.Spec : Prop :=
  ∀ n, P1979014739799187300.a n = A025866 n

end A025866

/-! ## A025866.P14254983202743238964

`A029240(2*n)-A029240(2*n+9)`
-/

namespace A025866.P14254983202743238964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n) - A029240 (2 * n + 9)

end

end A025866.P14254983202743238964

namespace A025866

/-- `A029240(2*n)-A029240(2*n+9)` -/
def P14254983202743238964.Spec : Prop :=
  ∀ n, P14254983202743238964.a n = A025866 n

end A025866

/-! ## A025866.P1191530579801288331

`Δ[A029240(2*n+9)]`
-/

namespace A025866.P1191530579801288331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025866.P1191530579801288331

namespace A025866

/-- `Δ[A029240(2*n+9)]` -/
def P1191530579801288331.Spec : Prop :=
  ∀ n, P1191530579801288331.a n = A025866 n

end A025866

/-!
# A025867: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)).

The programs for A025867, the canonical program `A025867.P12483091323951719519` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025867 has offset 0).

The definition of A025867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^7-x^8+x^11+x^12+x^15-x^19))` (program `A025867.P12483091323951719519`, by `A025867.P12483091323951719519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025867.P12483091323951719519

`ogf(1/(1-x^4-x^7-x^8+x^11+x^12+x^15-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025867

/-- `ogf(1/(1-x^4-x^7-x^8+x^11+x^12+x^15-x^19))` -/
def P12483091323951719519.Spec : Prop :=
  ∀ n, P12483091323951719519.a n = A025867 n

theorem P12483091323951719519.correct : P12483091323951719519.Spec := by
  intro n
  simp only [A025867]

end A025867

/-! ## A025867.P4210357465313117353

`A025816(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025867.P4210357465313117353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025816 n - a (n - 2)

end

end A025867.P4210357465313117353

namespace A025867

/-- `A025816(n)-a(n-2)` -/
def P4210357465313117353.Spec : Prop :=
  ∀ n, P4210357465313117353.a n = A025867 n

end A025867

/-! ## A025867.P5788270785382424922

`A029181(n)+A029347(n)-A029178(n)`
-/

namespace A025867.P5788270785382424922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029181 n + (A029347 n - A029178 n)

end

end A025867.P5788270785382424922

namespace A025867

/-- `A029181(n)+A029347(n)-A029178(n)` -/
def P5788270785382424922.Spec : Prop :=
  ∀ n, P5788270785382424922.a n = A025867 n

end A025867

/-! ## A025867.P5064199986098446655

`A008622(n+2)+A029347(n)-A029347(n+2)`
-/

namespace A025867.P5064199986098446655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (n + 2) + (A029347 n - A029347 (n + 2))

end

end A025867.P5064199986098446655

namespace A025867

/-- `A008622(n+2)+A029347(n)-A029347(n+2)` -/
def P5064199986098446655.Spec : Prop :=
  ∀ n, P5064199986098446655.a n = A025867 n

end A025867

/-! ## A025867.P8390720560425753899

`A025901(A168230(n+1)+n)`
-/

namespace A025867.P8390720560425753899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 (A168230 (n + 1) + (n : ℤ)).toNat

end

end A025867.P8390720560425753899

namespace A025867

/-- `A025901(A168230(n+1)+n)` -/
def P8390720560425753899.Spec : Prop :=
  ∀ n, P8390720560425753899.a n = A025867 n

end A025867

/-! ## A025867.P5693069855580345078

`A025901(A016897(n)-A168373(n+1))`
-/

namespace A025867.P5693069855580345078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 (A016897 n - A168373 (n + 1)).toNat

end

end A025867.P5693069855580345078

namespace A025867

/-- `A025901(A016897(n)-A168373(n+1))` -/
def P5693069855580345078.Spec : Prop :=
  ∀ n, P5693069855580345078.a n = A025867 n

end A025867

/-! ## A025867.P1139813285910873770

`A025901(A016897(n)%A168373(n+1))`
-/

namespace A025867.P1139813285910873770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 (Int.tmod (A016897 n) (A168373 (n + 1))).toNat

end

end A025867.P1139813285910873770

namespace A025867

/-- `A025901(A016897(n)%A168373(n+1))` -/
def P1139813285910873770.Spec : Prop :=
  ∀ n, P1139813285910873770.a n = A025867 n

end A025867

/-!
# A025868: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^9)).

The programs for A025868, the canonical program `A025868.P5044212076507662820` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025868 has offset 0).

The definition of A025868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^7-x^9+x^11+x^13+x^16-x^20))` (program `A025868.P5044212076507662820`, by `A025868.P5044212076507662820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025868.P5044212076507662820

`ogf(1/(1-x^4-x^7-x^9+x^11+x^13+x^16-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025868

/-- `ogf(1/(1-x^4-x^7-x^9+x^11+x^13+x^16-x^20))` -/
def P5044212076507662820.Spec : Prop :=
  ∀ n, P5044212076507662820.a n = A025868 n

theorem P5044212076507662820.correct : P5044212076507662820.Spec := by
  intro n
  simp only [A025868]

end A025868

/-! ## A025868.P12465780577285811025

`floor((n²+20*n+288)/504-n%4/9+(3*n²+4*n+3)%7/7)`
-/

namespace A025868.P12465780577285811025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 20 * n + 288 : ℚ) / 504 - ((n % 4 : ℕ) : ℚ) / 9 + (((3 * n ^ 2 + 4 * n + 3) % 7 : ℕ) : ℚ) / 7⌋

end

end A025868.P12465780577285811025

namespace A025868

/-- `floor((n²+20*n+288)/504-n%4/9+(3*n²+4*n+3)%7/7)` -/
def P12465780577285811025.Spec : Prop :=
  ∀ n, P12465780577285811025.a n = A025868 n

end A025868

/-! ## A025868.P632508948921518616

`A025817(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025868.P632508948921518616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025817 n - a (n - 2)

end

end A025868.P632508948921518616

namespace A025868

/-- `A025817(n)-a(n-2)` -/
def P632508948921518616.Spec : Prop :=
  ∀ n, P632508948921518616.a n = A025868 n

end A025868

/-! ## A025868.P901289332984662225

`Δ[A029071(n)-A029348(n)]`
-/

namespace A025868.P901289332984662225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029071 n - A029348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025868.P901289332984662225

namespace A025868

/-- `Δ[A029071(n)-A029348(n)]` -/
def P901289332984662225.Spec : Prop :=
  ∀ n, P901289332984662225.a n = A025868 n

end A025868

/-! ## A025868.P1674513117190577756

`A029074(n)-A029359(A144396(n+2))`
-/

namespace A025868.P1674513117190577756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029074 n - A029359 (A144396 (n + 2)).toNat

end

end A025868.P1674513117190577756

namespace A025868

/-- `A029074(n)-A029359(A144396(n+2))` -/
def P1674513117190577756.Spec : Prop :=
  ∀ n, P1674513117190577756.a n = A025868 n

end A025868

/-! ## A025868.P17739871985133295217

`Δ[A029359(2*n+5)]`
-/

namespace A025868.P17739871985133295217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025868.P17739871985133295217

namespace A025868

/-- `Δ[A029359(2*n+5)]` -/
def P17739871985133295217.Spec : Prop :=
  ∀ n, P17739871985133295217.a n = A025868 n

end A025868

/-! ## A025868.P8879623324746596734

`abs(Δ[A029359(A005818(n+1))])`
-/

namespace A025868.P8879623324746596734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A005818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A025868.P8879623324746596734

namespace A025868

/-- `abs(Δ[A029359(A005818(n+1))])` -/
def P8879623324746596734.Spec : Prop :=
  ∀ n, P8879623324746596734.a n = A025868 n

end A025868

/-! ## A025868.P12805402368105611257

`abs(Δ[A029359(A004273(n+3))])`
-/

namespace A025868.P12805402368105611257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A004273 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A025868.P12805402368105611257

namespace A025868

/-- `abs(Δ[A029359(A004273(n+3))])` -/
def P12805402368105611257.Spec : Prop :=
  ∀ n, P12805402368105611257.a n = A025868 n

end A025868

/-! ## A025868.P17483016050311765798

`Δ[A029359(A004273(n+3))]%A017353(n)`
-/

namespace A025868.P17483016050311765798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A004273 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A017353 n)

end

end A025868.P17483016050311765798

namespace A025868

/-- `Δ[A029359(A004273(n+3))]%A017353(n)` -/
def P17483016050311765798.Spec : Prop :=
  ∀ n, P17483016050311765798.a n = A025868 n

end A025868

/-! ## A025868.P182654160078989300

`Δ[A029359(A005818(n+1))]%A001750(n+1)`
-/

namespace A025868.P182654160078989300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A005818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001750 (n + 1))

end

end A025868.P182654160078989300

namespace A025868

/-- `Δ[A029359(A005818(n+1))]%A001750(n+1)` -/
def P182654160078989300.Spec : Prop :=
  ∀ n, P182654160078989300.a n = A025868 n

end A025868

/-! ## A025868.P12909240788819783895

`Δ[A029359(A004273(n+3))%A000447(n+1)]`
-/

namespace A025868.P12909240788819783895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029359 (A004273 (n + 3)).toNat) (A000447 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025868.P12909240788819783895

namespace A025868

/-- `Δ[A029359(A004273(n+3))%A000447(n+1)]` -/
def P12909240788819783895.Spec : Prop :=
  ∀ n, P12909240788819783895.a n = A025868 n

end A025868

/-!
# A025869: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^10)).

The programs for A025869, the canonical program `A025869.P15173990488837988588` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025869 has offset 0).

The definition of A025869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^7-x^10+x^11+x^14+x^17-x^21))` (program `A025869.P15173990488837988588`, by `A025869.P15173990488837988588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025869.P15173990488837988588

`ogf(1/(1-x^4-x^7-x^10+x^11+x^14+x^17-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025869

/-- `ogf(1/(1-x^4-x^7-x^10+x^11+x^14+x^17-x^21))` -/
def P15173990488837988588.Spec : Prop :=
  ∀ n, P15173990488837988588.a n = A025869 n

theorem P15173990488837988588.correct : P15173990488837988588.Spec := by
  intro n
  simp only [A025869]

end A025869

/-! ## A025869.P6072988599627476186

`A025818(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025869.P6072988599627476186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025818 n - a (n - 2)

end

end A025869.P6072988599627476186

namespace A025869

/-- `A025818(n)-a(n-2)` -/
def P6072988599627476186.Spec : Prop :=
  ∀ n, P6072988599627476186.a n = A025869 n

end A025869

/-! ## A025869.P17863156062601817169

`Δ[A029074(n)-A029363(n)]`
-/

namespace A025869.P17863156062601817169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029074 n - A029363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025869.P17863156062601817169

namespace A025869

/-- `Δ[A029074(n)-A029363(n)]` -/
def P17863156062601817169.Spec : Prop :=
  ∀ n, P17863156062601817169.a n = A025869 n

end A025869

/-! ## A025869.P13017946012163073349

`Δ[∑[A025882(n)]-A025909(n)]`
-/

namespace A025869.P13017946012163073349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025882 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A025909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025869.P13017946012163073349

namespace A025869

/-- `Δ[∑[A025882(n)]-A025909(n)]` -/
def P13017946012163073349.Spec : Prop :=
  ∀ n, P13017946012163073349.a n = A025869 n

end A025869

/-! ## A025869.P11481690783127765592

`A025882(n+1)-Δ[A025909(n)]`
-/

namespace A025869.P11481690783127765592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025882 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025869.P11481690783127765592

namespace A025869

/-- `A025882(n+1)-Δ[A025909(n)]` -/
def P11481690783127765592.Spec : Prop :=
  ∀ n, P11481690783127765592.a n = A025869 n

end A025869

/-! ## A025869.P6724957979295310802

`A025832(n+4)-A025847(n+4)`
-/

namespace A025869.P6724957979295310802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025832 (n + 4) - A025847 (n + 4)

end

end A025869.P6724957979295310802

namespace A025869

/-- `A025832(n+4)-A025847(n+4)` -/
def P6724957979295310802.Spec : Prop :=
  ∀ n, P6724957979295310802.a n = A025869 n

end A025869

/-!
# A025870: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^11)).

The programs for A025870, the canonical program `A025870.P8600799357263061614` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025870 has offset 0).

The definition of A025870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^7+x^15+x^18-x^22))` (program `A025870.P8600799357263061614`, by `A025870.P8600799357263061614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025870.P8600799357263061614

`ogf(1/(1-x^4-x^7+x^15+x^18-x^22))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025870

/-- `ogf(1/(1-x^4-x^7+x^15+x^18-x^22))` -/
def P8600799357263061614.Spec : Prop :=
  ∀ n, P8600799357263061614.a n = A025870 n

theorem P8600799357263061614.correct : P8600799357263061614.Spec := by
  intro n
  simp only [A025870]

end A025870

/-! ## A025870.P5911728511515181031

`A025819(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025870.P5911728511515181031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025819 n - a (n - 2)

end

end A025870.P5911728511515181031

namespace A025870

/-- `A025819(n)-a(n-2)` -/
def P5911728511515181031.Spec : Prop :=
  ∀ n, P5911728511515181031.a n = A025870 n

end A025870

/-! ## A025870.P1403552026789215102

`A029335(n)+A029350(n)-A029326(n)`
-/

namespace A025870.P1403552026789215102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029335 n + (A029350 n - A029326 n)

end

end A025870.P1403552026789215102

namespace A025870

/-- `A029335(n)+A029350(n)-A029326(n)` -/
def P1403552026789215102.Spec : Prop :=
  ∀ n, P1403552026789215102.a n = A025870 n

end A025870

/-! ## A025870.P13491999239844364681

`Δ[A029072(n)-A029350(n)]`
-/

namespace A025870.P13491999239844364681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n - A029350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025870.P13491999239844364681

namespace A025870

/-- `Δ[A029072(n)-A029350(n)]` -/
def P13491999239844364681.Spec : Prop :=
  ∀ n, P13491999239844364681.a n = A025870 n

end A025870

/-! ## A025870.P5180852372010807280

`A004216(A135435(n)²+1)`
-/

namespace A025870.P5180852372010807280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A135435 n ^ 2 + 1).toNat

end

end A025870.P5180852372010807280

namespace A025870

/-- `A004216(A135435(n)²+1)` -/
def P5180852372010807280.Spec : Prop :=
  ∀ n, P5180852372010807280.a n = A025870 n

end A025870

/-!
# A025871: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^12)).

The programs for A025871, the canonical program `A025871.P8195415980285947582` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025871 has offset 0).

The definition of A025871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^7+x^11-x^12+x^16+x^19-x^23))` (program `A025871.P8195415980285947582`, by `A025871.P8195415980285947582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025871.P8195415980285947582

`ogf(1/(1-x^4-x^7+x^11-x^12+x^16+x^19-x^23))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025871

/-- `ogf(1/(1-x^4-x^7+x^11-x^12+x^16+x^19-x^23))` -/
def P8195415980285947582.Spec : Prop :=
  ∀ n, P8195415980285947582.a n = A025871 n

theorem P8195415980285947582.correct : P8195415980285947582.Spec := by
  intro n
  simp only [A025871]

end A025871

/-! ## A025871.P6960719274736762225

`floor((n+1)²/672+(n+7)*(n+3)%4/48+(2*n+2)²%7/7)`
-/

namespace A025871.P6960719274736762225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / 672 + (((n + 7) * ((n + 3) % 4) : ℕ) : ℚ) / 48 + (((2 * n + 2) ^ 2 % 7 : ℕ) : ℚ) / 7⌋

end

end A025871.P6960719274736762225

namespace A025871

/-- `floor((n+1)²/672+(n+7)*(n+3)%4/48+(2*n+2)²%7/7)` -/
def P6960719274736762225.Spec : Prop :=
  ∀ n, P6960719274736762225.a n = A025871 n

end A025871

/-! ## A025871.P11777721483545355939

`A025820(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025871.P11777721483545355939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025820 n - a (n - 2)

end

end A025871.P11777721483545355939

namespace A025871

/-- `A025820(n)-a(n-2)` -/
def P11777721483545355939.Spec : Prop :=
  ∀ n, P11777721483545355939.a n = A025871 n

end A025871

/-! ## A025871.P219170690418080575

`A025875(n)+A025885(n)-A025896(n)`
-/

namespace A025871.P219170690418080575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A025885 n - A025896 n)

end

end A025871.P219170690418080575

namespace A025871

/-- `A025875(n)+A025885(n)-A025896(n)` -/
def P219170690418080575.Spec : Prop :=
  ∀ n, P219170690418080575.a n = A025871 n

end A025871

/-! ## A025871.P5924190795933414515

`A025911(n)+A029185(n)-A029214(n)`
-/

namespace A025871.P5924190795933414515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 n + (A029185 n - A029214 n)

end

end A025871.P5924190795933414515

namespace A025871

/-- `A025911(n)+A029185(n)-A029214(n)` -/
def P5924190795933414515.Spec : Prop :=
  ∀ n, P5924190795933414515.a n = A025871 n

end A025871

/-! ## A025871.P8576229382265357631

`A029229(n)+A029347(n)-A029214(n)`
-/

namespace A025871.P8576229382265357631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 n + (A029347 n - A029214 n)

end

end A025871.P8576229382265357631

namespace A025871

/-- `A029229(n)+A029347(n)-A029214(n)` -/
def P8576229382265357631.Spec : Prop :=
  ∀ n, P8576229382265357631.a n = A025871 n

end A025871

/-! ## A025871.P14386743553505395261

`Δ[A029053(n)-A029261(n)]`
-/

namespace A025871.P14386743553505395261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 n - A029261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025871.P14386743553505395261

namespace A025871

/-- `Δ[A029053(n)-A029261(n)]` -/
def P14386743553505395261.Spec : Prop :=
  ∀ n, P14386743553505395261.a n = A025871 n

end A025871

/-! ## A025871.P4527981673648888304

`Δ[∑[A025849(n)]-A029261(n)]`
-/

namespace A025871.P4527981673648888304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025849 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025871.P4527981673648888304

namespace A025871

/-- `Δ[∑[A025849(n)]-A029261(n)]` -/
def P4527981673648888304.Spec : Prop :=
  ∀ n, P4527981673648888304.a n = A025871 n

end A025871

/-! ## A025871.P994227340782039172

`A025849(n+1)-Δ[A029261(n)]`
-/

namespace A025871.P994227340782039172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025849 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025871.P994227340782039172

namespace A025871

/-- `A025849(n+1)-Δ[A029261(n)]` -/
def P994227340782039172.Spec : Prop :=
  ∀ n, P994227340782039172.a n = A025871 n

end A025871

/-! ## A025871.P17203928928867059882

`A025870(n+1)-Δ[A029368(n)]`
-/

namespace A025871.P17203928928867059882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025870 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025871.P17203928928867059882

namespace A025871

/-- `A025870(n+1)-Δ[A029368(n)]` -/
def P17203928928867059882.Spec : Prop :=
  ∀ n, P17203928928867059882.a n = A025871 n

end A025871

/-!
# A025872: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^9)).

The programs for A025872, the canonical program `A025872.P2667476376341195096` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025872 has offset 0).

The definition of A025872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^8-x^9+x^12+x^13+x^17-x^21))` (program `A025872.P2667476376341195096`, by `A025872.P2667476376341195096.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025872.P2667476376341195096

`ogf(1/(1-x^4-x^8-x^9+x^12+x^13+x^17-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025872

/-- `ogf(1/(1-x^4-x^8-x^9+x^12+x^13+x^17-x^21))` -/
def P2667476376341195096.Spec : Prop :=
  ∀ n, P2667476376341195096.a n = A025872 n

theorem P2667476376341195096.correct : P2667476376341195096.Spec := by
  intro n
  simp only [A025872]

end A025872

/-! ## A025872.P6078473724533073689

`A025821(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025872.P6078473724533073689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025821 n - a (n - 2)

end

end A025872.P6078473724533073689

namespace A025872

/-- `A025821(n)-a(n-2)` -/
def P6078473724533073689.Spec : Prop :=
  ∀ n, P6078473724533073689.a n = A025872 n

end A025872

/-! ## A025872.P12571772105621470636

`Δ[A029054(n)-A029262(n)]`
-/

namespace A025872.P12571772105621470636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029054 n - A029262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025872.P12571772105621470636

namespace A025872

/-- `Δ[A029054(n)-A029262(n)]` -/
def P12571772105621470636.Spec : Prop :=
  ∀ n, P12571772105621470636.a n = A025872 n

end A025872

/-! ## A025872.P7785065342530139390

`Δ[A029074(n)-A029359(n)]`
-/

namespace A025872.P7785065342530139390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029074 n - A029359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025872.P7785065342530139390

namespace A025872

/-- `Δ[A029074(n)-A029359(n)]` -/
def P7785065342530139390.Spec : Prop :=
  ∀ n, P7785065342530139390.a n = A025872 n

end A025872

/-! ## A025872.P1751322598445102124

`Δ[∑[A025868(n)]-A029359(n)]`
-/

namespace A025872.P1751322598445102124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025872.P1751322598445102124

namespace A025872

/-- `Δ[∑[A025868(n)]-A029359(n)]` -/
def P1751322598445102124.Spec : Prop :=
  ∀ n, P1751322598445102124.a n = A025872 n

end A025872

/-! ## A025872.P5433067504752554418

`A025868(n+1)-Δ[A029359(n)]`
-/

namespace A025872.P5433067504752554418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025872.P5433067504752554418

namespace A025872

/-- `A025868(n+1)-Δ[A029359(n)]` -/
def P5433067504752554418.Spec : Prop :=
  ∀ n, P5433067504752554418.a n = A025872 n

end A025872

/-! ## A025872.P15303145318225028474

`A025868(n+1)+A029359(n)-A029359(n+1)`
-/

namespace A025872.P15303145318225028474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (n + 1) + (A029359 n - A029359 (n + 1))

end

end A025872.P15303145318225028474

namespace A025872

/-- `A025868(n+1)+A029359(n)-A029359(n+1)` -/
def P15303145318225028474.Spec : Prop :=
  ∀ n, P15303145318225028474.a n = A025872 n

end A025872

/-! ## A025872.P9351253310638919935

`Δ[A029359(2*n+7)-A029359(n)]`
-/

namespace A025872.P9351253310638919935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (2 * n + 7) - A029359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025872.P9351253310638919935

namespace A025872

/-- `Δ[A029359(2*n+7)-A029359(n)]` -/
def P9351253310638919935.Spec : Prop :=
  ∀ n, P9351253310638919935.a n = A025872 n

end A025872

/-!
# A025873: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^11)).

The programs for A025873, the canonical program `A025873.P13022515239427195127` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025873 has offset 0).

The definition of A025873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^8-x^11+x^12+x^15+x^19-x^23))` (program `A025873.P13022515239427195127`, by `A025873.P13022515239427195127.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025873.P13022515239427195127

`ogf(1/(1-x^4-x^8-x^11+x^12+x^15+x^19-x^23))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025873

/-- `ogf(1/(1-x^4-x^8-x^11+x^12+x^15+x^19-x^23))` -/
def P13022515239427195127.Spec : Prop :=
  ∀ n, P13022515239427195127.a n = A025873 n

theorem P13022515239427195127.correct : P13022515239427195127.Spec := by
  intro n
  simp only [A025873]

end A025873

/-! ## A025873.P10207999387663879374

`A025822(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025873.P10207999387663879374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025822 n - a (n - 2)

end

end A025873.P10207999387663879374

namespace A025873

/-- `A025822(n)-a(n-2)` -/
def P10207999387663879374.Spec : Prop :=
  ∀ n, P10207999387663879374.a n = A025873 n

end A025873

/-! ## A025873.P5381280088767422106

`A025853(n)+A025875(n)-A025858(n)`
-/

namespace A025873.P5381280088767422106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 n + (A025875 n - A025858 n)

end

end A025873.P5381280088767422106

namespace A025873

/-- `A025853(n)+A025875(n)-A025858(n)` -/
def P5381280088767422106.Spec : Prop :=
  ∀ n, P5381280088767422106.a n = A025873 n

end A025873

/-! ## A025873.P11510450473572828082

`A029339(n)+A029353(n)-A029327(n)`
-/

namespace A025873.P11510450473572828082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029339 n + (A029353 n - A029327 n)

end

end A025873.P11510450473572828082

namespace A025873

/-- `A029339(n)+A029353(n)-A029327(n)` -/
def P11510450473572828082.Spec : Prop :=
  ∀ n, P11510450473572828082.a n = A025873 n

end A025873

/-! ## A025873.P11654636246844835469

`Δ[A029076(n)-A029361(n)]`
-/

namespace A025873.P11654636246844835469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029076 n - A029361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025873.P11654636246844835469

namespace A025873

/-- `Δ[A029076(n)-A029361(n)]` -/
def P11654636246844835469.Spec : Prop :=
  ∀ n, P11654636246844835469.a n = A025873 n

end A025873

/-! ## A025873.P11176494036634789609

`A025822(n+2)+A029187(n)-A029187(n+2)`
-/

namespace A025873.P11176494036634789609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 (n + 2) + (A029187 n - A029187 (n + 2))

end

end A025873.P11176494036634789609

namespace A025873

/-- `A025822(n+2)+A029187(n)-A029187(n+2)` -/
def P11176494036634789609.Spec : Prop :=
  ∀ n, P11176494036634789609.a n = A025873 n

end A025873

/-! ## A025873.P3027307747041060710

`A025805(n+6)+A029187(n)-A029187(n+6)`
-/

namespace A025873.P3027307747041060710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025805 (n + 6) + (A029187 n - A029187 (n + 6))

end

end A025873.P3027307747041060710

namespace A025873

/-- `A025805(n+6)+A029187(n)-A029187(n+6)` -/
def P3027307747041060710.Spec : Prop :=
  ∀ n, P3027307747041060710.a n = A025873 n

end A025873

/-! ## A025873.P13598682174758894622

`A025907(A168197(n+1))`
-/

namespace A025873.P13598682174758894622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (A168197 (n + 1)).toNat

end

end A025873.P13598682174758894622

namespace A025873

/-- `A025907(A168197(n+1))` -/
def P13598682174758894622.Spec : Prop :=
  ∀ n, P13598682174758894622.a n = A025873 n

end A025873

/-!
# A025874: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^12)).

The programs for A025874, the canonical program `A025874.P6316006152174688047` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025874 has offset 0).

The definition of A025874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^9-x^12+x^13+x^16+x^21-x^25))` (program `A025874.P6316006152174688047`, by `A025874.P6316006152174688047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025874.P7359332921850181803

`floor((n+24)*(n+36)/864-n*n%3/108-(n+9)*n%4/48)`
-/

namespace A025874.P7359332921850181803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 24) * (n + 36) : ℚ) / 864 - ((n * (n % 3) : ℕ) : ℚ) / 108 - (((n + 9) * (n % 4) : ℕ) : ℚ) / 48⌋

end

end A025874.P7359332921850181803

namespace A025874

/-- `floor((n+24)*(n+36)/864-n*n%3/108-(n+9)*n%4/48)` -/
def P7359332921850181803.Spec : Prop :=
  ∀ n, P7359332921850181803.a n = A025874 n

end A025874

/-! ## A025874.P6316006152174688047

`ogf(1/(1-x^4-x^9-x^12+x^13+x^16+x^21-x^25))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025874

/-- `ogf(1/(1-x^4-x^9-x^12+x^13+x^16+x^21-x^25))` -/
def P6316006152174688047.Spec : Prop :=
  ∀ n, P6316006152174688047.a n = A025874 n

theorem P6316006152174688047.correct : P6316006152174688047.Spec := by
  intro n
  simp only [A025874]

end A025874

/-! ## A025874.P4781955559004832929

`A025825(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025874.P4781955559004832929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025825 n - a (n - 2)

end

end A025874.P4781955559004832929

namespace A025874

/-- `A025825(n)-a(n-2)` -/
def P4781955559004832929.Spec : Prop :=
  ∀ n, P4781955559004832929.a n = A025874 n

end A025874

/-! ## A025874.P13474538953113574999

`A029238(n)-A029352(abs(2-n))`
-/

namespace A025874.P13474538953113574999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 n - A029352 |2 - (n : ℤ)|.toNat

end

end A025874.P13474538953113574999

namespace A025874

/-- `A029238(n)-A029352(abs(2-n))` -/
def P13474538953113574999.Spec : Prop :=
  ∀ n, P13474538953113574999.a n = A025874 n

end A025874

/-! ## A025874.P4673066309253128073

`A025864(n)+A025914(n)-A025883(n)`
-/

namespace A025874.P4673066309253128073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 n + (A025914 n - A025883 n)

end

end A025874.P4673066309253128073

namespace A025874

/-- `A025864(n)+A025914(n)-A025883(n)` -/
def P4673066309253128073.Spec : Prop :=
  ∀ n, P4673066309253128073.a n = A025874 n

end A025874

/-! ## A025874.P12152571172762449766

`A025920(n)+A029190(n)-A029219(n)`
-/

namespace A025874.P12152571172762449766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 n + (A029190 n - A029219 n)

end

end A025874.P12152571172762449766

namespace A025874

/-- `A025920(n)+A029190(n)-A029219(n)` -/
def P12152571172762449766.Spec : Prop :=
  ∀ n, P12152571172762449766.a n = A025874 n

end A025874

/-! ## A025874.P6333172814958883646

`A029190(n)+A029375(n)-A029188(n)`
-/

namespace A025874.P6333172814958883646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 n + (A029375 n - A029188 n)

end

end A025874.P6333172814958883646

namespace A025874

/-- `A029190(n)+A029375(n)-A029188(n)` -/
def P6333172814958883646.Spec : Prop :=
  ∀ n, P6333172814958883646.a n = A025874 n

end A025874

/-! ## A025874.P11653019295558845325

`Δ[A029057(n)-A029262(n)]`
-/

namespace A025874.P11653019295558845325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 n - A029262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025874.P11653019295558845325

namespace A025874

/-- `Δ[A029057(n)-A029262(n)]` -/
def P11653019295558845325.Spec : Prop :=
  ∀ n, P11653019295558845325.a n = A025874 n

end A025874

/-! ## A025874.P4917988947317581356

`Δ[A029081(n)-A029376(n)]`
-/

namespace A025874.P4917988947317581356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029081 n - A029376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025874.P4917988947317581356

namespace A025874

/-- `Δ[A029081(n)-A029376(n)]` -/
def P4917988947317581356.Spec : Prop :=
  ∀ n, P4917988947317581356.a n = A025874 n

end A025874

/-!
# A025875: Expansion of 1/((1-x^4)*(1-x^11)*(1-x^12)).

The programs for A025875, the canonical program `A025875.P6817867275474269582` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025875 has offset 0).

The definition of A025875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^11-x^12+x^15+x^16+x^23-x^27))` (program `A025875.P6817867275474269582`, by `A025875.P6817867275474269582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025875.P6817867275474269582

`ogf(1/(1-x^4-x^11-x^12+x^15+x^16+x^23-x^27))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025875

/-- `ogf(1/(1-x^4-x^11-x^12+x^15+x^16+x^23-x^27))` -/
def P6817867275474269582.Spec : Prop :=
  ∀ n, P6817867275474269582.a n = A025875 n

theorem P6817867275474269582.correct : P6817867275474269582.Spec := by
  intro n
  simp only [A025875]

end A025875

/-! ## A025875.P3739812241934497963

`A025827(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025875.P3739812241934497963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025827 n - a (n - 2)

end

end A025875.P3739812241934497963

namespace A025875

/-- `A025827(n)-a(n-2)` -/
def P3739812241934497963.Spec : Prop :=
  ∀ n, P3739812241934497963.a n = A025875 n

end A025875

/-! ## A025875.P16644175936134704893

`A025858(n)+A025873(n)-A025853(n)`
-/

namespace A025875.P16644175936134704893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025858 n + (A025873 n - A025853 n)

end

end A025875.P16644175936134704893

namespace A025875

/-- `A025858(n)+A025873(n)-A025853(n)` -/
def P16644175936134704893.Spec : Prop :=
  ∀ n, P16644175936134704893.a n = A025875 n

end A025875

/-! ## A025875.P2850945274841614815

`A025871(n)+A025896(n)-A025885(n)`
-/

namespace A025875.P2850945274841614815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 n + (A025896 n - A025885 n)

end

end A025875.P2850945274841614815

namespace A025875

/-- `A025871(n)+A025896(n)-A025885(n)` -/
def P2850945274841614815.Spec : Prop :=
  ∀ n, P2850945274841614815.a n = A025875 n

end A025875

/-! ## A025875.P13248790131916874129

`A029079(n)+A029271(n)-A029057(n)`
-/

namespace A025875.P13248790131916874129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029079 n + (A029271 n - A029057 n)

end

end A025875.P13248790131916874129

namespace A025875

/-- `A029079(n)+A029271(n)-A029057(n)` -/
def P13248790131916874129.Spec : Prop :=
  ∀ n, P13248790131916874129.a n = A025875 n

end A025875

/-! ## A025875.P13372963247046977109

`A029240(n)+A029353(n)-A029220(n)`
-/

namespace A025875.P13372963247046977109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 n + (A029353 n - A029220 n)

end

end A025875.P13372963247046977109

namespace A025875

/-- `A029240(n)+A029353(n)-A029220(n)` -/
def P13372963247046977109.Spec : Prop :=
  ∀ n, P13372963247046977109.a n = A025875 n

end A025875

/-! ## A025875.P2628423544389140513

`A029346(n)+A029358(n)-A029331(n)`
-/

namespace A025875.P2628423544389140513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029346 n + (A029358 n - A029331 n)

end

end A025875.P2628423544389140513

namespace A025875

/-- `A029346(n)+A029358(n)-A029331(n)` -/
def P2628423544389140513.Spec : Prop :=
  ∀ n, P2628423544389140513.a n = A025875 n

theorem P2628423544389140513.correct : P2628423544389140513.Spec := by
  intro n
  simp only [A025875, Nat.add_sub_cancel, A025875.P2628423544389140513.a, A025875.P6817867275474269582.a, A029331, A029331.P16509172661417459008.a, A029346, A029346.P15441236893995981458.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A025796, A025796.P17123033237818759149.a, A029072, A029072.P16720113097825012275.a, A057979, A057979.P16537735927241777837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A025875

/-! ## A025875.P195012370696394798

`A029346(n)+A029368(n)-A029335(n)`
-/

namespace A025875.P195012370696394798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029346 n + (A029368 n - A029335 n)

end

end A025875.P195012370696394798

namespace A025875

/-- `A029346(n)+A029368(n)-A029335(n)` -/
def P195012370696394798.Spec : Prop :=
  ∀ n, P195012370696394798.a n = A025875 n

end A025875

/-! ## A025875.P17248764902319144102

`Δ[A029062(n)-A029271(n)]`
-/

namespace A025875.P17248764902319144102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029062 n - A029271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025875.P17248764902319144102

namespace A025875

/-- `Δ[A029062(n)-A029271(n)]` -/
def P17248764902319144102.Spec : Prop :=
  ∀ n, P17248764902319144102.a n = A025875 n

end A025875

/-! ## A025875.P10064294397645426382

`A025873(n+4)-A025922(n+4)`
-/

namespace A025875.P10064294397645426382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 (n + 4) - A025922 (n + 4)

end

end A025875.P10064294397645426382

namespace A025875

/-- `A025873(n+4)-A025922(n+4)` -/
def P10064294397645426382.Spec : Prop :=
  ∀ n, P10064294397645426382.a n = A025875 n

end A025875

/-!
# A025876: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^7)).

The programs for A025876, the canonical program `A025876.P17577319514828589469` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025876 has offset 0).

The definition of A025876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7+x^11+x^12+x^13-x^18))` (program `A025876.P17577319514828589469`, by `A025876.P17577319514828589469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025876.P5732033638566840129

`floor((n²+18*n+165)/420+(n%6-3)²/12)`
-/

namespace A025876.P5732033638566840129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 18 * n + 165 : ℚ) / 420 + ((((n % 6 : ℕ) : ℤ) - 3) ^ 2 : ℚ) / 12⌋

end

end A025876.P5732033638566840129

namespace A025876

/-- `floor((n²+18*n+165)/420+(n%6-3)²/12)` -/
def P5732033638566840129.Spec : Prop :=
  ∀ n, P5732033638566840129.a n = A025876 n

end A025876

/-! ## A025876.P17577319514828589469

`ogf(1/(1-x^5-x^6-x^7+x^11+x^12+x^13-x^18))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025876

/-- `ogf(1/(1-x^5-x^6-x^7+x^11+x^12+x^13-x^18))` -/
def P17577319514828589469.Spec : Prop :=
  ∀ n, P17577319514828589469.a n = A025876 n

theorem P17577319514828589469.correct : P17577319514828589469.Spec := by
  intro n
  simp only [A025876]

end A025876

/-! ## A025876.P14766016950573170578

`A008677(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025876.P14766016950573170578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A008677 n - a (n - 3)

end

end A025876.P14766016950573170578

namespace A025876

/-- `A008677(n)-a(n-3)` -/
def P14766016950573170578.Spec : Prop :=
  ∀ n, P14766016950573170578.a n = A025876 n

end A025876

/-! ## A025876.P6778569603059007825

`A025916(2*n)`
-/

namespace A025876.P6778569603059007825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025916 (2 * n)

end

end A025876.P6778569603059007825

namespace A025876

/-- `A025916(2*n)` -/
def P6778569603059007825.Spec : Prop :=
  ∀ n, P6778569603059007825.a n = A025876 n

end A025876

/-! ## A025876.P12629459519788018673

`Δ[A029234(xor(1, A004273(n)))]`
-/

namespace A025876.P12629459519788018673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025876.P12629459519788018673

namespace A025876

/-- `Δ[A029234(xor(1, A004273(n)))]` -/
def P12629459519788018673.Spec : Prop :=
  ∀ n, P12629459519788018673.a n = A025876 n

end A025876

/-! ## A025876.P3865526129606682922

`A029421(2*n)-A029421(2*n+1)`
-/

namespace A025876.P3865526129606682922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029421 (2 * n) - A029421 (2 * n + 1)

end

end A025876.P3865526129606682922

namespace A025876

/-- `A029421(2*n)-A029421(2*n+1)` -/
def P3865526129606682922.Spec : Prop :=
  ∀ n, P3865526129606682922.a n = A025876 n

end A025876

/-! ## A025876.P703743219429904059

`A025886(2*n)+A029108(2*n)-A029095(2*n)`
-/

namespace A025876.P703743219429904059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025886 (2 * n) + (A029108 (2 * n) - A029095 (2 * n))

end

end A025876.P703743219429904059

namespace A025876

/-- `A025886(2*n)+A029108(2*n)-A029095(2*n)` -/
def P703743219429904059.Spec : Prop :=
  ∀ n, P703743219429904059.a n = A025876 n

end A025876

/-! ## A025876.P36108611795548382

`A029234(2*n)+A029401(2*n)-A029212(2*n)`
-/

namespace A025876.P36108611795548382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (2 * n) + (A029401 (2 * n) - A029212 (2 * n))

end

end A025876.P36108611795548382

namespace A025876

/-- `A029234(2*n)+A029401(2*n)-A029212(2*n)` -/
def P36108611795548382.Spec : Prop :=
  ∀ n, P36108611795548382.a n = A025876 n

end A025876

/-! ## A025876.P15786139101457437192

`A029402(2*n)+A029420(2*n)-A029381(2*n)`
-/

namespace A025876.P15786139101457437192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029402 (2 * n) + (A029420 (2 * n) - A029381 (2 * n))

end

end A025876.P15786139101457437192

namespace A025876

/-- `A029402(2*n)+A029420(2*n)-A029381(2*n)` -/
def P15786139101457437192.Spec : Prop :=
  ∀ n, P15786139101457437192.a n = A025876 n

end A025876

/-! ## A025876.P3806779010762393024

`A025915(2*n+1)+A029441(2*n)-A029441(2*n+1)`
-/

namespace A025876.P3806779010762393024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 (2 * n + 1) + (A029441 (2 * n) - A029441 (2 * n + 1))

end

end A025876.P3806779010762393024

namespace A025876

/-- `A025915(2*n+1)+A029441(2*n)-A029441(2*n+1)` -/
def P3806779010762393024.Spec : Prop :=
  ∀ n, P3806779010762393024.a n = A025876 n

end A025876

/-! ## A025876.P16419376322325032307

`A029367(2*n)-A029367(2*n+3)`
-/

namespace A025876.P16419376322325032307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 (2 * n) - A029367 (2 * n + 3)

end

end A025876.P16419376322325032307

namespace A025876

/-- `A029367(2*n)-A029367(2*n+3)` -/
def P16419376322325032307.Spec : Prop :=
  ∀ n, P16419376322325032307.a n = A025876 n

end A025876

/-! ## A025876.P1452683691450600621

`Δ[A029336(2*n+3)]`
-/

namespace A025876.P1452683691450600621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029336 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025876.P1452683691450600621

namespace A025876

/-- `Δ[A029336(2*n+3)]` -/
def P1452683691450600621.Spec : Prop :=
  ∀ n, P1452683691450600621.a n = A025876 n

end A025876

/-! ## A025876.P10921939953879182661

`A029085(n)-A029234(A144396(n+2))`
-/

namespace A025876.P10921939953879182661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029085 n - A029234 (A144396 (n + 2)).toNat

end

end A025876.P10921939953879182661

namespace A025876

/-- `A029085(n)-A029234(A144396(n+2))` -/
def P10921939953879182661.Spec : Prop :=
  ∀ n, P10921939953879182661.a n = A025876 n

end A025876

/-! ## A025876.P3011249058658517929

`A029234(2*n)-A029234(A144396(n+2))`
-/

namespace A025876.P3011249058658517929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (2 * n) - A029234 (A144396 (n + 2)).toNat

end

end A025876.P3011249058658517929

namespace A025876

/-- `A029234(2*n)-A029234(A144396(n+2))` -/
def P3011249058658517929.Spec : Prop :=
  ∀ n, P3011249058658517929.a n = A025876 n

end A025876

/-! ## A025876.P6894149123875381172

`Δ[A029234(2*n+5)]`
-/

namespace A025876.P6894149123875381172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025876.P6894149123875381172

namespace A025876

/-- `Δ[A029234(2*n+5)]` -/
def P6894149123875381172.Spec : Prop :=
  ∀ n, P6894149123875381172.a n = A025876 n

end A025876

/-!
# A025877: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)).

The programs for A025877, the canonical program `A025877.P13309258880979822310` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025877 has offset 0).

The definition of A025877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^8+x^11+x^13+x^14-x^19))` (program `A025877.P13309258880979822310`, by `A025877.P13309258880979822310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025877.P13309258880979822310

`ogf(1/(1-x^5-x^6-x^8+x^11+x^13+x^14-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025877

/-- `ogf(1/(1-x^5-x^6-x^8+x^11+x^13+x^14-x^19))` -/
def P13309258880979822310.Spec : Prop :=
  ∀ n, P13309258880979822310.a n = A025877 n

theorem P13309258880979822310.correct : P13309258880979822310.Spec := by
  intro n
  simp only [A025877]

end A025877

/-! ## A025877.P17980124231401424228

`A025836(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025877.P17980124231401424228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025836 n - a (n - 3)

end

end A025877.P17980124231401424228

namespace A025877

/-- `A025836(n)-a(n-3)` -/
def P17980124231401424228.Spec : Prop :=
  ∀ n, P17980124231401424228.a n = A025877 n

end A025877

/-! ## A025877.P2739623208816684505

`A025851(abs(1-A004442(n)))`
-/

namespace A025877.P2739623208816684505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025851 |1 - A004442 n|.toNat

end

end A025877.P2739623208816684505

namespace A025877

/-- `A025851(abs(1-A004442(n)))` -/
def P2739623208816684505.Spec : Prop :=
  ∀ n, P2739623208816684505.a n = A025877 n

end A025877

/-! ## A025877.P10466847401103007344

`A008680(abs(1-A097065(n)))`
-/

namespace A025877.P10466847401103007344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 |1 - A097065 n|.toNat

end

end A025877.P10466847401103007344

namespace A025877

/-- `A008680(abs(1-A097065(n)))` -/
def P10466847401103007344.Spec : Prop :=
  ∀ n, P10466847401103007344.a n = A025877 n

end A025877

/-! ## A025877.P3637123996753840591

`A025851(abs(n-A010673(n)))`
-/

namespace A025877.P3637123996753840591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025851 |(n : ℤ) - A010673 n|.toNat

end

end A025877.P3637123996753840591

namespace A025877

/-- `A025851(abs(n-A010673(n)))` -/
def P3637123996753840591.Spec : Prop :=
  ∀ n, P3637123996753840591.a n = A025877 n

end A025877

/-! ## A025877.P13729161791760903346

`A025893(abs(2-A166517(n)))`
-/

namespace A025877.P13729161791760903346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 |2 - A166517 n|.toNat

end

end A025877.P13729161791760903346

namespace A025877

/-- `A025893(abs(2-A166517(n)))` -/
def P13729161791760903346.Spec : Prop :=
  ∀ n, P13729161791760903346.a n = A025877 n

end A025877

/-! ## A025877.P8932747662344713695

`A029194(n)-A029288(A166517(n))`
-/

namespace A025877.P8932747662344713695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029194 n - A029288 (A166517 n).toNat

end

end A025877.P8932747662344713695

namespace A025877

/-- `A029194(n)-A029288(A166517(n))` -/
def P8932747662344713695.Spec : Prop :=
  ∀ n, P8932747662344713695.a n = A025877 n

end A025877

/-! ## A025877.P16008960456099515035

`A025893(A166517(n+1)-1)`
-/

namespace A025877.P16008960456099515035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A166517 (n + 1) - 1).toNat

end

end A025877.P16008960456099515035

namespace A025877

/-- `A025893(A166517(n+1)-1)` -/
def P16008960456099515035.Spec : Prop :=
  ∀ n, P16008960456099515035.a n = A025877 n

end A025877

/-! ## A025877.P10716134314614069685

`A025893(A168284(n+1)-n)`
-/

namespace A025877.P10716134314614069685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A168284 (n + 1) - (n : ℤ)).toNat

end

end A025877.P10716134314614069685

namespace A025877

/-- `A025893(A168284(n+1)-n)` -/
def P10716134314614069685.Spec : Prop :=
  ∀ n, P10716134314614069685.a n = A025877 n

end A025877

/-! ## A025877.P13451279350182079057

`A025893(n+1+A097065(n+1))`
-/

namespace A025877.P13451279350182079057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 ((n + 1 : ℤ) + A097065 (n + 1)).toNat

end

end A025877.P13451279350182079057

namespace A025877

/-- `A025893(n+1+A097065(n+1))` -/
def P13451279350182079057.Spec : Prop :=
  ∀ n, P13451279350182079057.a n = A025877 n

end A025877

/-! ## A025877.P645148479998406922

`A025893(A159966(n)+A004525(n))`
-/

namespace A025877.P645148479998406922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A159966 n + A004525 n).toNat

end

end A025877.P645148479998406922

namespace A025877

/-- `A025893(A159966(n)+A004525(n))` -/
def P645148479998406922.Spec : Prop :=
  ∀ n, P645148479998406922.a n = A025877 n

end A025877

/-! ## A025877.P10499464627600697136

`A025893(A016789(n)-A166517(n))`
-/

namespace A025877.P10499464627600697136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A016789 n - A166517 n).toNat

end

end A025877.P10499464627600697136

namespace A025877

/-- `A025893(A016789(n)-A166517(n))` -/
def P10499464627600697136.Spec : Prop :=
  ∀ n, P10499464627600697136.a n = A025877 n

end A025877

/-! ## A025877.P14759933752720632193

`A025893(A166517(n+2))`
-/

namespace A025877.P14759933752720632193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A166517 (n + 2)).toNat

end

end A025877.P14759933752720632193

namespace A025877

/-- `A025893(A166517(n+2))` -/
def P14759933752720632193.Spec : Prop :=
  ∀ n, P14759933752720632193.a n = A025877 n

end A025877

/-! ## A025877.P6422713096066503559

`A025893(A168200(n+1)+1)`
-/

namespace A025877.P6422713096066503559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A168200 (n + 1) + 1).toNat

end

end A025877.P6422713096066503559

namespace A025877

/-- `A025893(A168200(n+1)+1)` -/
def P6422713096066503559.Spec : Prop :=
  ∀ n, P6422713096066503559.a n = A025877 n

end A025877

/-!
# A025878: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^9)).

The programs for A025878, the canonical program `A025878.P9498419331829559126` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025878 has offset 0).

The definition of A025878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^9+x^11+x^14+x^15-x^20))` (program `A025878.P9498419331829559126`, by `A025878.P9498419331829559126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025878.P9498419331829559126

`ogf(1/(1-x^5-x^6-x^9+x^11+x^14+x^15-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025878

/-- `ogf(1/(1-x^5-x^6-x^9+x^11+x^14+x^15-x^20))` -/
def P9498419331829559126.Spec : Prop :=
  ∀ n, P9498419331829559126.a n = A025878 n

theorem P9498419331829559126.correct : P9498419331829559126.Spec := by
  intro n
  simp only [A025878]

end A025878

/-! ## A025878.P1279235894174252568

`A025837(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025878.P1279235894174252568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025837 n - a (n - 3)

end

end A025878.P1279235894174252568

namespace A025878

/-- `A025837(n)-a(n-3)` -/
def P1279235894174252568.Spec : Prop :=
  ∀ n, P1279235894174252568.a n = A025878 n

end A025878

/-! ## A025878.P1700783711393210204

`A025924(A047242(n+1))`
-/

namespace A025878.P1700783711393210204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (A047242 (n + 1)).toNat

end

end A025878.P1700783711393210204

namespace A025878

/-- `A025924(A047242(n+1))` -/
def P1700783711393210204.Spec : Prop :=
  ∀ n, P1700783711393210204.a n = A025878 n

end A025878

/-! ## A025878.P16181657171805734599

`A025924(A047244(n+1))`
-/

namespace A025878.P16181657171805734599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (A047244 (n + 1)).toNat

end

end A025878.P16181657171805734599

namespace A025878

/-- `A025924(A047244(n+1))` -/
def P16181657171805734599.Spec : Prop :=
  ∀ n, P16181657171805734599.a n = A025878 n

end A025878

/-! ## A025878.P3095126683691606437

`A025924(2*n)`
-/

namespace A025878.P3095126683691606437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (2 * n)

end

end A025878.P3095126683691606437

namespace A025878

/-- `A025924(2*n)` -/
def P3095126683691606437.Spec : Prop :=
  ∀ n, P3095126683691606437.a n = A025878 n

end A025878

/-! ## A025878.P12649136074805640964

`Δ[A029242(xor(1, A004273(n)))]`
-/

namespace A025878.P12649136074805640964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025878.P12649136074805640964

namespace A025878

/-- `Δ[A029242(xor(1, A004273(n)))]` -/
def P12649136074805640964.Spec : Prop :=
  ∀ n, P12649136074805640964.a n = A025878 n

end A025878

/-! ## A025878.P5579765285596164651

`A029443(2*n)-A029443(2*n+1)`
-/

namespace A025878.P5579765285596164651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029443 (2 * n) - A029443 (2 * n + 1)

end

end A025878.P5579765285596164651

namespace A025878

/-- `A029443(2*n)-A029443(2*n+1)` -/
def P5579765285596164651.Spec : Prop :=
  ∀ n, P5579765285596164651.a n = A025878 n

end A025878

/-! ## A025878.P8380565747749559040

`Δ[A029242(A004442(A004273(n)))]`
-/

namespace A025878.P8380565747749559040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025878.P8380565747749559040

namespace A025878

/-- `Δ[A029242(A004442(A004273(n)))]` -/
def P8380565747749559040.Spec : Prop :=
  ∀ n, P8380565747749559040.a n = A025878 n

end A025878

/-! ## A025878.P788798638231686196

`A025823(2*n)-A005044(A194960(2*n+1))`
-/

namespace A025878.P788798638231686196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025823 (2 * n) - A005044 (A194960 (2 * n + 1)).toNat

end

end A025878.P788798638231686196

namespace A025878

/-- `A025823(2*n)-A005044(A194960(2*n+1))` -/
def P788798638231686196.Spec : Prop :=
  ∀ n, P788798638231686196.a n = A025878 n

end A025878

/-! ## A025878.P5743727764778989686

`A025893(2*n)+A029113(2*n)-A029102(2*n)`
-/

namespace A025878.P5743727764778989686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (2 * n) + (A029113 (2 * n) - A029102 (2 * n))

end

end A025878.P5743727764778989686

namespace A025878

/-- `A025893(2*n)+A029113(2*n)-A029102(2*n)` -/
def P5743727764778989686.Spec : Prop :=
  ∀ n, P5743727764778989686.a n = A025878 n

end A025878

/-! ## A025878.P2040846729245267343

`A029411(2*n)+A029428(2*n)-A029388(2*n)`
-/

namespace A025878.P2040846729245267343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 (2 * n) + (A029428 (2 * n) - A029388 (2 * n))

end

end A025878.P2040846729245267343

namespace A025878

/-- `A029411(2*n)+A029428(2*n)-A029388(2*n)` -/
def P2040846729245267343.Spec : Prop :=
  ∀ n, P2040846729245267343.a n = A025878 n

end A025878

/-! ## A025878.P4515568377400105624

`A029429(2*n)-A029429(2*n+3)`
-/

namespace A025878.P4515568377400105624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 (2 * n) - A029429 (2 * n + 3)

end

end A025878.P4515568377400105624

namespace A025878

/-- `A029429(2*n)-A029429(2*n+3)` -/
def P4515568377400105624.Spec : Prop :=
  ∀ n, P4515568377400105624.a n = A025878 n

end A025878

/-! ## A025878.P18399526366445067160

`Δ[A029242(2*n+7)]`
-/

namespace A025878.P18399526366445067160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025878.P18399526366445067160

namespace A025878

/-- `Δ[A029242(2*n+7)]` -/
def P18399526366445067160.Spec : Prop :=
  ∀ n, P18399526366445067160.a n = A025878 n

end A025878

/-!
# A025879: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^10)).

The programs for A025879, the canonical program `A025879.P9575001426680041452` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025879 has offset 0).

The definition of A025879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^10+x^11+x^15+x^16-x^21))` (program `A025879.P9575001426680041452`, by `A025879.P9575001426680041452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025879.P9575001426680041452

`ogf(1/(1-x^5-x^6-x^10+x^11+x^15+x^16-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025879

/-- `ogf(1/(1-x^5-x^6-x^10+x^11+x^15+x^16-x^21))` -/
def P9575001426680041452.Spec : Prop :=
  ∀ n, P9575001426680041452.a n = A025879 n

theorem P9575001426680041452.correct : P9575001426680041452.Spec := by
  intro n
  simp only [A025879]

end A025879

/-! ## A025879.P9834414109902301738

`floor((n+19)*(n+26)/600+(n+22)*(-1)^n/120-(n+8)*n%5/50)`
-/

namespace A025879.P9834414109902301738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 19) * (n + 26) : ℚ) / 600 + ((n + 22 : ℤ) * (-1) ^ n : ℚ) / 120 - (((n + 8) * (n % 5) : ℕ) : ℚ) / 50⌋

end

end A025879.P9834414109902301738

namespace A025879

/-- `floor((n+19)*(n+26)/600+(n+22)*(-1)^n/120-(n+8)*n%5/50)` -/
def P9834414109902301738.Spec : Prop :=
  ∀ n, P9834414109902301738.a n = A025879 n

end A025879

/-! ## A025879.P3450282748289553300

`A025838(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025879.P3450282748289553300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025838 n - a (n - 3)

end

end A025879.P3450282748289553300

namespace A025879

/-- `A025838(n)-a(n-3)` -/
def P3450282748289553300.Spec : Prop :=
  ∀ n, P3450282748289553300.a n = A025879 n

end A025879

/-! ## A025879.P1344095677487840402

`A029196(n)+A029329(n)-A029175(n)`
-/

namespace A025879.P1344095677487840402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029196 n + (A029329 n - A029175 n)

end

end A025879.P1344095677487840402

namespace A025879

/-- `A029196(n)+A029329(n)-A029175(n)` -/
def P1344095677487840402.Spec : Prop :=
  ∀ n, P1344095677487840402.a n = A025879 n

end A025879

/-! ## A025879.P6751397623185584006

`Δ[∑[A025878(n)]-A029387(n)]`
-/

namespace A025879.P6751397623185584006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025878 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025879.P6751397623185584006

namespace A025879

/-- `Δ[∑[A025878(n)]-A029387(n)]` -/
def P6751397623185584006.Spec : Prop :=
  ∀ n, P6751397623185584006.a n = A025879 n

end A025879

/-! ## A025879.P8972523444591713525

`A025878(n+1)-Δ[A029387(n)]`
-/

namespace A025879.P8972523444591713525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025878 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025879.P8972523444591713525

namespace A025879

/-- `A025878(n+1)-Δ[A029387(n)]` -/
def P8972523444591713525.Spec : Prop :=
  ∀ n, P8972523444591713525.a n = A025879 n

end A025879

/-! ## A025879.P16230306268098532119

`A029088(n+1)-A029147(n+1)`
-/

namespace A025879.P16230306268098532119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029088 (n + 1) - A029147 (n + 1)

end

end A025879.P16230306268098532119

namespace A025879

/-- `A029088(n+1)-A029147(n+1)` -/
def P16230306268098532119.Spec : Prop :=
  ∀ n, P16230306268098532119.a n = A025879 n

end A025879

/-!
# A025880: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^11)).

The programs for A025880, the canonical program `A025880.P113721997457935514` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025880 has offset 0).

The definition of A025880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6+x^16+x^17-x^22))` (program `A025880.P113721997457935514`, by `A025880.P113721997457935514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025880.P113721997457935514

`ogf(1/(1-x^5-x^6+x^16+x^17-x^22))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025880

/-- `ogf(1/(1-x^5-x^6+x^16+x^17-x^22))` -/
def P113721997457935514.Spec : Prop :=
  ∀ n, P113721997457935514.a n = A025880 n

theorem P113721997457935514.correct : P113721997457935514.Spec := by
  intro n
  simp only [A025880]

end A025880

/-! ## A025880.P2768374886108930625

`A025839(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025880.P2768374886108930625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025839 n - a (n - 3)

end

end A025880.P2768374886108930625

namespace A025880

/-- `A025839(n)-a(n-3)` -/
def P2768374886108930625.Spec : Prop :=
  ∀ n, P2768374886108930625.a n = A025880 n

end A025880

/-! ## A025880.P16709464709863633373

`A025926(2*n)`
-/

namespace A025880.P16709464709863633373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (2 * n)

end

end A025880.P16709464709863633373

namespace A025880

/-- `A025926(2*n)` -/
def P16709464709863633373.Spec : Prop :=
  ∀ n, P16709464709863633373.a n = A025880 n

end A025880

/-! ## A025880.P7101969720414825091

`Δ[A029244(xor(1, A004273(n)))]`
-/

namespace A025880.P7101969720414825091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025880.P7101969720414825091

namespace A025880

/-- `Δ[A029244(xor(1, A004273(n)))]` -/
def P7101969720414825091.Spec : Prop :=
  ∀ n, P7101969720414825091.a n = A025880 n

end A025880

/-! ## A025880.P2697339767243707029

`Δ[A029244(A004442(A004273(n)))]`
-/

namespace A025880.P2697339767243707029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025880.P2697339767243707029

namespace A025880

/-- `Δ[A029244(A004442(A004273(n)))]` -/
def P2697339767243707029.Spec : Prop :=
  ∀ n, P2697339767243707029.a n = A025880 n

end A025880

/-! ## A025880.P1487526469955253094

`gcd(A000038(n), A025926(A005843(n)))`
-/

namespace A025880.P1487526469955253094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A025926 (A005843 n).toNat)

end

end A025880.P1487526469955253094

namespace A025880

/-- `gcd(A000038(n), A025926(A005843(n)))` -/
def P1487526469955253094.Spec : Prop :=
  ∀ n, (P1487526469955253094.a n : ℤ) = A025880 n

end A025880

/-! ## A025880.P15804012389489230916

`or(A000007(n), A025926(A005843(n)))`
-/

namespace A025880.P15804012389489230916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A025926 (A005843 n).toNat)

end

end A025880.P15804012389489230916

namespace A025880

/-- `or(A000007(n), A025926(A005843(n)))` -/
def P15804012389489230916.Spec : Prop :=
  ∀ n, P15804012389489230916.a n = A025880 n

end A025880

/-! ## A025880.P16981517618870874626

`A029445(2*n)-A029445(2*n+3)`
-/

namespace A025880.P16981517618870874626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029445 (2 * n) - A029445 (2 * n + 3)

end

end A025880.P16981517618870874626

namespace A025880

/-- `A029445(2*n)-A029445(2*n+3)` -/
def P16981517618870874626.Spec : Prop :=
  ∀ n, P16981517618870874626.a n = A025880 n

end A025880

/-! ## A025880.P17271338196086923467

`Δ[A029244(2*n+9)]`
-/

namespace A025880.P17271338196086923467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025880.P17271338196086923467

namespace A025880

/-- `Δ[A029244(2*n+9)]` -/
def P17271338196086923467.Spec : Prop :=
  ∀ n, P17271338196086923467.a n = A025880 n

end A025880

/-!
# A025881: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^12)).

The programs for A025881, the canonical program `A025881.P15100123725397875390` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025881 has offset 0).

The definition of A025881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6+x^11-x^12+x^17+x^18-x^23))` (program `A025881.P15100123725397875390`, by `A025881.P15100123725397875390.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025881.P567539160077846703

`floor((n²-2*n+145)/720+(n+12)*(n+5)%6/72)`
-/

namespace A025881.P567539160077846703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) - (2 * n : ℤ) + 145 : ℚ) / 720 + (((n + 12) * ((n + 5) % 6) : ℕ) : ℚ) / 72⌋

end

end A025881.P567539160077846703

namespace A025881

/-- `floor((n²-2*n+145)/720+(n+12)*(n+5)%6/72)` -/
def P567539160077846703.Spec : Prop :=
  ∀ n, P567539160077846703.a n = A025881 n

end A025881

/-! ## A025881.P15100123725397875390

`ogf(1/(1-x^5-x^6+x^11-x^12+x^17+x^18-x^23))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025881

/-- `ogf(1/(1-x^5-x^6+x^11-x^12+x^17+x^18-x^23))` -/
def P15100123725397875390.Spec : Prop :=
  ∀ n, P15100123725397875390.a n = A025881 n

theorem P15100123725397875390.correct : P15100123725397875390.Spec := by
  intro n
  simp only [A025881]

end A025881

/-! ## A025881.P18383509037900537522

`A025857(abs(xor(1, 1-n)))`
-/

namespace A025881.P18383509037900537522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 |Int.xor 1 (1 - (n : ℤ))|.toNat

end

end A025881.P18383509037900537522

namespace A025881

/-- `A025857(abs(xor(1, 1-n)))` -/
def P18383509037900537522.Spec : Prop :=
  ∀ n, P18383509037900537522.a n = A025881 n

end A025881

/-! ## A025881.P605420521535022498

`A025840(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025881.P605420521535022498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025840 n - a (n - 3)

end

end A025881.P605420521535022498

namespace A025881

/-- `A025840(n)-a(n-3)` -/
def P605420521535022498.Spec : Prop :=
  ∀ n, P605420521535022498.a n = A025881 n

end A025881

/-! ## A025881.P11871909941146074805

`A025857(abs(1-A004442(n)))`
-/

namespace A025881.P11871909941146074805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 |1 - A004442 n|.toNat

end

end A025881.P11871909941146074805

namespace A025881

/-- `A025857(abs(1-A004442(n)))` -/
def P11871909941146074805.Spec : Prop :=
  ∀ n, P11871909941146074805.a n = A025881 n

end A025881

/-! ## A025881.P2850387445200007875

`A025857(abs(A024000(xor(1, n))))`
-/

namespace A025881.P2850387445200007875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 |A024000 (Nat.xor 1 n)|.toNat

end

end A025881.P2850387445200007875

namespace A025881

/-- `A025857(abs(A024000(xor(1, n))))` -/
def P2850387445200007875.Spec : Prop :=
  ∀ n, P2850387445200007875.a n = A025881 n

end A025881

/-! ## A025881.P17181716779781003523

`A025857(abs(n-A010673(n)))`
-/

namespace A025881.P17181716779781003523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 |(n : ℤ) - A010673 n|.toNat

end

end A025881.P17181716779781003523

namespace A025881

/-- `A025857(abs(n-A010673(n)))` -/
def P17181716779781003523.Spec : Prop :=
  ∀ n, P17181716779781003523.a n = A025881 n

end A025881

/-! ## A025881.P13917775497873657789

`A025857(A109043(n)%(n+2))`
-/

namespace A025881.P13917775497873657789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (Int.tmod (A109043 n) (n + 2 : ℤ)).toNat

end

end A025881.P13917775497873657789

namespace A025881

/-- `A025857(A109043(n)%(n+2))` -/
def P13917775497873657789.Spec : Prop :=
  ∀ n, P13917775497873657789.a n = A025881 n

end A025881

/-! ## A025881.P1773453575919271001

`A025857(abs(A010673(n)+A001489(n)))`
-/

namespace A025881.P1773453575919271001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 |A010673 n + A001489 n|.toNat

end

end A025881.P1773453575919271001

namespace A025881

/-- `A025857(abs(A010673(n)+A001489(n)))` -/
def P1773453575919271001.Spec : Prop :=
  ∀ n, P1773453575919271001.a n = A025881 n

end A025881

/-! ## A025881.P4259646647491767194

`A025835(abs(A052938(n)-A109613(n)))`
-/

namespace A025881.P4259646647491767194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 |A052938 n - A109613 n|.toNat

end

end A025881.P4259646647491767194

namespace A025881

/-- `A025835(abs(A052938(n)-A109613(n)))` -/
def P4259646647491767194.Spec : Prop :=
  ∀ n, P4259646647491767194.a n = A025881 n

end A025881

/-! ## A025881.P12789788672985113603

`A025885(n)+A025907(n)-A025917(n)`
-/

namespace A025881.P12789788672985113603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 n + (A025907 n - A025917 n)

end

end A025881.P12789788672985113603

namespace A025881

/-- `A025885(n)+A025907(n)-A025917(n)` -/
def P12789788672985113603.Spec : Prop :=
  ∀ n, P12789788672985113603.a n = A025881 n

end A025881

/-! ## A025881.P3960205830986379158

`A029277(n)+A029389(n)-A029274(n)`
-/

namespace A025881.P3960205830986379158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 n + (A029389 n - A029274 n)

end

end A025881.P3960205830986379158

namespace A025881

/-- `A029277(n)+A029389(n)-A029274(n)` -/
def P3960205830986379158.Spec : Prop :=
  ∀ n, P3960205830986379158.a n = A025881 n

end A025881

/-! ## A025881.P6868260302185084127

`A025857(n-Δ[A273405(n)%(n+1)])`
-/

namespace A025881.P6868260302185084127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273405 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A025881.P6868260302185084127

namespace A025881

/-- `A025857(n-Δ[A273405(n)%(n+1)])` -/
def P6868260302185084127.Spec : Prop :=
  ∀ n, P6868260302185084127.a n = A025881 n

end A025881

/-!
# A025882: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)).

The programs for A025882, the canonical program `A025882.P11677596910554462889` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025882 has offset 0).

The definition of A025882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^7-x^8+x^12+x^13+x^15-x^20))` (program `A025882.P11677596910554462889`, by `A025882.P11677596910554462889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025882.P11677596910554462889

`ogf(1/(1-x^5-x^7-x^8+x^12+x^13+x^15-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025882

/-- `ogf(1/(1-x^5-x^7-x^8+x^12+x^13+x^15-x^20))` -/
def P11677596910554462889.Spec : Prop :=
  ∀ n, P11677596910554462889.a n = A025882 n

theorem P11677596910554462889.correct : P11677596910554462889.Spec := by
  intro n
  simp only [A025882]

end A025882

/-! ## A025882.P466723514163051088

`A025859(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A025882.P466723514163051088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025859 n - a (n - 4)

end

end A025882.P466723514163051088

namespace A025882

/-- `A025859(n)-a(n-4)` -/
def P466723514163051088.Spec : Prop :=
  ∀ n, P466723514163051088.a n = A025882 n

end A025882

/-! ## A025882.P11040885331878174128

`A025840(n)+A025911(n)-A025853(n)`
-/

namespace A025882.P11040885331878174128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 n + (A025911 n - A025853 n)

end

end A025882.P11040885331878174128

namespace A025882

/-- `A025840(n)+A025911(n)-A025853(n)` -/
def P11040885331878174128.Spec : Prop :=
  ∀ n, P11040885331878174128.a n = A025882 n

end A025882

/-! ## A025882.P3124184519987937530

`A025877(n+1)+A025877(n)-A025876(n+1)`
-/

namespace A025882.P3124184519987937530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (n + 1) + (A025877 n - A025876 (n + 1))

end

end A025882.P3124184519987937530

namespace A025882

/-- `A025877(n+1)+A025877(n)-A025876(n+1)` -/
def P3124184519987937530.Spec : Prop :=
  ∀ n, P3124184519987937530.a n = A025882 n

end A025882

/-! ## A025882.P2223223132894706533

`ceil(A029394(n)%p?[A240852(n)]/2)`
-/

namespace A025882.P2223223132894706533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A029394 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ) / 2⌉

end

end A025882.P2223223132894706533

namespace A025882

/-- `ceil(A029394(n)%p?[A240852(n)]/2)` -/
def P2223223132894706533.Spec : Prop :=
  ∀ n, P2223223132894706533.a n = A025882 n

end A025882

/-!
# A025883: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)).

The programs for A025883, the canonical program `A025883.P4747679464912903568` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025883 has offset 0).

The definition of A025883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^7-x^9+x^12+x^14+x^16-x^21))` (program `A025883.P4747679464912903568`, by `A025883.P4747679464912903568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025883.P4747679464912903568

`ogf(1/(1-x^5-x^7-x^9+x^12+x^14+x^16-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025883

/-- `ogf(1/(1-x^5-x^7-x^9+x^12+x^14+x^16-x^21))` -/
def P4747679464912903568.Spec : Prop :=
  ∀ n, P4747679464912903568.a n = A025883 n

theorem P4747679464912903568.correct : P4747679464912903568.Spec := by
  intro n
  simp only [A025883]

end A025883

/-! ## A025883.P2542008571755179238

`A025807(n)+A025837(n)-A025798(n)`
-/

namespace A025883.P2542008571755179238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025807 n + (A025837 n - A025798 n)

end

end A025883.P2542008571755179238

namespace A025883

/-- `A025807(n)+A025837(n)-A025798(n)` -/
def P2542008571755179238.Spec : Prop :=
  ∀ n, P2542008571755179238.a n = A025883 n

end A025883

/-! ## A025883.P15157821750037263586

`A025846(n)+A025859(n)-A025831(n)`
-/

namespace A025883.P15157821750037263586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025846 n + (A025859 n - A025831 n)

end

end A025883.P15157821750037263586

namespace A025883

/-- `A025846(n)+A025859(n)-A025831(n)` -/
def P15157821750037263586.Spec : Prop :=
  ∀ n, P15157821750037263586.a n = A025883 n

end A025883

/-! ## A025883.P18062211363898760441

`A025864(n)+A025914(n)-A025874(n)`
-/

namespace A025883.P18062211363898760441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 n + (A025914 n - A025874 n)

end

end A025883.P18062211363898760441

namespace A025883

/-- `A025864(n)+A025914(n)-A025874(n)` -/
def P18062211363898760441.Spec : Prop :=
  ∀ n, P18062211363898760441.a n = A025883 n

end A025883

/-! ## A025883.P15966982539341628075

`Δ[A029074(n)-A029333(n)]`
-/

namespace A025883.P15966982539341628075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029074 n - A029333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025883.P15966982539341628075

namespace A025883

/-- `Δ[A029074(n)-A029333(n)]` -/
def P15966982539341628075.Spec : Prop :=
  ∀ n, P15966982539341628075.a n = A025883 n

end A025883

/-! ## A025883.P5590825634433322837

`Δ[A029091(n)-A029393(n)]`
-/

namespace A025883.P5590825634433322837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029091 n - A029393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025883.P5590825634433322837

namespace A025883

/-- `Δ[A029091(n)-A029393(n)]` -/
def P5590825634433322837.Spec : Prop :=
  ∀ n, P5590825634433322837.a n = A025883 n

end A025883

/-! ## A025883.P17626597450896301031

`Δ[∑[A025882(n)]-A029393(n)]`
-/

namespace A025883.P17626597450896301031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025882 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025883.P17626597450896301031

namespace A025883

/-- `Δ[∑[A025882(n)]-A029393(n)]` -/
def P17626597450896301031.Spec : Prop :=
  ∀ n, P17626597450896301031.a n = A025883 n

end A025883

/-! ## A025883.P11257301295423123180

`A025882(n+1)-Δ[A029393(n)]`
-/

namespace A025883.P11257301295423123180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025882 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025883.P11257301295423123180

namespace A025883

/-- `A025882(n+1)-Δ[A029393(n)]` -/
def P11257301295423123180.Spec : Prop :=
  ∀ n, P11257301295423123180.a n = A025883 n

end A025883

/-!
# A025884: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^10)).

The programs for A025884, the canonical program `A025884.P13476327910837717326` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025884 has offset 0).

The definition of A025884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^7-x^10+x^12+x^15+x^17-x^22))` (program `A025884.P13476327910837717326`, by `A025884.P13476327910837717326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025884.P13476327910837717326

`ogf(1/(1-x^5-x^7-x^10+x^12+x^15+x^17-x^22))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025884

/-- `ogf(1/(1-x^5-x^7-x^10+x^12+x^15+x^17-x^22))` -/
def P13476327910837717326.Spec : Prop :=
  ∀ n, P13476327910837717326.a n = A025884 n

theorem P13476327910837717326.correct : P13476327910837717326.Spec := by
  intro n
  simp only [A025884]

end A025884

/-! ## A025884.P16520142317178747783

`A025849(n)+A025895(n)-A025857(n)`
-/

namespace A025884.P16520142317178747783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025849 n + (A025895 n - A025857 n)

end

end A025884.P16520142317178747783

namespace A025884

/-- `A025849(n)+A025895(n)-A025857(n)` -/
def P16520142317178747783.Spec : Prop :=
  ∀ n, P16520142317178747783.a n = A025884 n

end A025884

/-! ## A025884.P11768749754784947118

`Δ[A029092(n)-A029397(n)]`
-/

namespace A025884.P11768749754784947118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029092 n - A029397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025884.P11768749754784947118

namespace A025884

/-- `Δ[A029092(n)-A029397(n)]` -/
def P11768749754784947118.Spec : Prop :=
  ∀ n, P11768749754784947118.a n = A025884 n

end A025884

/-! ## A025884.P660992872458519121

`Δ[∑[A025883(n)]-A029397(n)]`
-/

namespace A025884.P660992872458519121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025884.P660992872458519121

namespace A025884

/-- `Δ[∑[A025883(n)]-A029397(n)]` -/
def P660992872458519121.Spec : Prop :=
  ∀ n, P660992872458519121.a n = A025884 n

end A025884

/-! ## A025884.P15914334083345427156

`A025883(n+1)-Δ[A029397(n)]`
-/

namespace A025884.P15914334083345427156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025884.P15914334083345427156

namespace A025884

/-- `A025883(n+1)-Δ[A029397(n)]` -/
def P15914334083345427156.Spec : Prop :=
  ∀ n, P15914334083345427156.a n = A025884 n

end A025884

/-!
# A025885: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^11)).

The programs for A025885, the canonical program `A025885.P4368601557696957963` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025885 has offset 0).

The definition of A025885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^7-x^11+x^12+x^16+x^18-x^23))` (program `A025885.P4368601557696957963`, by `A025885.P4368601557696957963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025885.P4368601557696957963

`ogf(1/(1-x^5-x^7-x^11+x^12+x^16+x^18-x^23))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025885

/-- `ogf(1/(1-x^5-x^7-x^11+x^12+x^16+x^18-x^23))` -/
def P4368601557696957963.Spec : Prop :=
  ∀ n, P4368601557696957963.a n = A025885 n

theorem P4368601557696957963.correct : P4368601557696957963.Spec := by
  intro n
  simp only [A025885]

end A025885

/-! ## A025885.P9910945682261835043

`A025871(n)+A025896(n)-A025875(n)`
-/

namespace A025885.P9910945682261835043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 n + (A025896 n - A025875 n)

end

end A025885.P9910945682261835043

namespace A025885

/-- `A025871(n)+A025896(n)-A025875(n)` -/
def P9910945682261835043.Spec : Prop :=
  ∀ n, P9910945682261835043.a n = A025885 n

end A025885

/-! ## A025885.P12884235664403199703

`A025881(n)+A025917(n)-A025907(n)`
-/

namespace A025885.P12884235664403199703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 n + (A025917 n - A025907 n)

end

end A025885.P12884235664403199703

namespace A025885

/-- `A025881(n)+A025917(n)-A025907(n)` -/
def P12884235664403199703.Spec : Prop :=
  ∀ n, P12884235664403199703.a n = A025885 n

end A025885

/-! ## A025885.P15015035149972794634

`Δ[A029093(n)-A029400(n)]`
-/

namespace A025885.P15015035149972794634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n - A029400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025885.P15015035149972794634

namespace A025885

/-- `Δ[A029093(n)-A029400(n)]` -/
def P15015035149972794634.Spec : Prop :=
  ∀ n, P15015035149972794634.a n = A025885 n

end A025885

/-! ## A025885.P3006954278051647958

`Δ[∑[A025870(n)]-A029335(n)]`
-/

namespace A025885.P3006954278051647958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025870 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025885.P3006954278051647958

namespace A025885

/-- `Δ[∑[A025870(n)]-A029335(n)]` -/
def P3006954278051647958.Spec : Prop :=
  ∀ n, P3006954278051647958.a n = A025885 n

end A025885

/-! ## A025885.P12788624959069077403

`Δ[∑[A025884(n)]-A029400(n)]`
-/

namespace A025885.P12788624959069077403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025884 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025885.P12788624959069077403

namespace A025885

/-- `Δ[∑[A025884(n)]-A029400(n)]` -/
def P12788624959069077403.Spec : Prop :=
  ∀ n, P12788624959069077403.a n = A025885 n

end A025885

/-! ## A025885.P9849853442927468939

`A025870(n+1)-Δ[A029335(n)]`
-/

namespace A025885.P9849853442927468939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025870 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025885.P9849853442927468939

namespace A025885

/-- `A025870(n+1)-Δ[A029335(n)]` -/
def P9849853442927468939.Spec : Prop :=
  ∀ n, P9849853442927468939.a n = A025885 n

end A025885

/-! ## A025885.P7614918721989152863

`A025884(n+1)-Δ[A029400(n)]`
-/

namespace A025885.P7614918721989152863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025884 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025885.P7614918721989152863

namespace A025885

/-- `A025884(n+1)-Δ[A029400(n)]` -/
def P7614918721989152863.Spec : Prop :=
  ∀ n, P7614918721989152863.a n = A025885 n

end A025885

/-! ## A025885.P18169290874160882295

`A029350(n+1)+A029335(n)-A029326(n+1)`
-/

namespace A025885.P18169290874160882295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029350 (n + 1) + (A029335 n - A029326 (n + 1))

end

end A025885.P18169290874160882295

namespace A025885

/-- `A029350(n+1)+A029335(n)-A029326(n+1)` -/
def P18169290874160882295.Spec : Prop :=
  ∀ n, P18169290874160882295.a n = A025885 n

end A025885

/-!
# A025886: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^12)).

The programs for A025886, the canonical program `A025886.P4686945559480879337` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025886 has offset 0).

The definition of A025886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^7+x^17+x^19-x^24))` (program `A025886.P4686945559480879337`, by `A025886.P4686945559480879337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025886.P4686945559480879337

`ogf(1/(1-x^5-x^7+x^17+x^19-x^24))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025886

/-- `ogf(1/(1-x^5-x^7+x^17+x^19-x^24))` -/
def P4686945559480879337.Spec : Prop :=
  ∀ n, P4686945559480879337.a n = A025886 n

theorem P4686945559480879337.correct : P4686945559480879337.Spec := by
  intro n
  simp only [A025886]

end A025886

/-! ## A025886.P3392264516869231449

`Δ[A029108(n)-A025916(n)]`
-/

namespace A025886.P3392264516869231449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029108 n - A025916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025886.P3392264516869231449

namespace A025886

/-- `Δ[A029108(n)-A025916(n)]` -/
def P3392264516869231449.Spec : Prop :=
  ∀ n, P3392264516869231449.a n = A025886 n

end A025886

/-! ## A025886.P11620546022259988189

`Δ[∑[A025899(n)]-A025916(n)]`
-/

namespace A025886.P11620546022259988189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A025916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025886.P11620546022259988189

namespace A025886

/-- `Δ[∑[A025899(n)]-A025916(n)]` -/
def P11620546022259988189.Spec : Prop :=
  ∀ n, P11620546022259988189.a n = A025886 n

end A025886

/-! ## A025886.P14651472530071339990

`Δ[∑[A025881(n)]-A029382(n)]`
-/

namespace A025886.P14651472530071339990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025886.P14651472530071339990

namespace A025886

/-- `Δ[∑[A025881(n)]-A029382(n)]` -/
def P14651472530071339990.Spec : Prop :=
  ∀ n, P14651472530071339990.a n = A025886 n

end A025886

/-! ## A025886.P2252446980657467496

`Δ[∑[A025885(n)]-A029402(n)]`
-/

namespace A025886.P2252446980657467496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025886.P2252446980657467496

namespace A025886

/-- `Δ[∑[A025885(n)]-A029402(n)]` -/
def P2252446980657467496.Spec : Prop :=
  ∀ n, P2252446980657467496.a n = A025886 n

end A025886

/-! ## A025886.P10433098939514407586

`A025899(n+1)-Δ[A025916(n)]`
-/

namespace A025886.P10433098939514407586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025886.P10433098939514407586

namespace A025886

/-- `A025899(n+1)-Δ[A025916(n)]` -/
def P10433098939514407586.Spec : Prop :=
  ∀ n, P10433098939514407586.a n = A025886 n

end A025886

/-! ## A025886.P14046486831811437981

`A025881(n+1)-Δ[A029382(n)]`
-/

namespace A025886.P14046486831811437981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025886.P14046486831811437981

namespace A025886

/-- `A025881(n+1)-Δ[A029382(n)]` -/
def P14046486831811437981.Spec : Prop :=
  ∀ n, P14046486831811437981.a n = A025886 n

end A025886

/-! ## A025886.P8269984141584025220

`A025885(n+1)-Δ[A029402(n)]`
-/

namespace A025886.P8269984141584025220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025886.P8269984141584025220

namespace A025886

/-- `A025885(n+1)-Δ[A029402(n)]` -/
def P8269984141584025220.Spec : Prop :=
  ∀ n, P8269984141584025220.a n = A025886 n

end A025886

/-!
# A025887: Expansion of 1/((1-x^5)*(1-x^8)*(1-x^9)).

The programs for A025887, the canonical program `A025887.P13965746169919858549` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025887 has offset 0).

The definition of A025887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^8-x^9+x^13+x^14+x^17-x^22))` (program `A025887.P13965746169919858549`, by `A025887.P13965746169919858549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025887.P13965746169919858549

`ogf(1/(1-x^5-x^8-x^9+x^13+x^14+x^17-x^22))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025887

/-- `ogf(1/(1-x^5-x^8-x^9+x^13+x^14+x^17-x^22))` -/
def P13965746169919858549.Spec : Prop :=
  ∀ n, P13965746169919858549.a n = A025887 n

theorem P13965746169919858549.correct : P13965746169919858549.Spec := by
  intro n
  simp only [A025887]

end A025887

/-! ## A025887.P13895249074876984790

`A029096(n)+A029337(n)-A029078(n)`
-/

namespace A025887.P13895249074876984790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029096 n + (A029337 n - A029078 n)

end

end A025887.P13895249074876984790

namespace A025887

/-- `A029096(n)+A029337(n)-A029078(n)` -/
def P13895249074876984790.Spec : Prop :=
  ∀ n, P13895249074876984790.a n = A025887 n

end A025887

/-! ## A025887.P17715148272468719373

`Δ[A029078(n)-A029337(n)]`
-/

namespace A025887.P17715148272468719373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029078 n - A029337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025887.P17715148272468719373

namespace A025887

/-- `Δ[A029078(n)-A029337(n)]` -/
def P17715148272468719373.Spec : Prop :=
  ∀ n, P17715148272468719373.a n = A025887 n

end A025887

/-! ## A025887.P2437595992755196333

`Δ[A029092(n)-A029393(n)]`
-/

namespace A025887.P2437595992755196333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029092 n - A029393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025887.P2437595992755196333

namespace A025887

/-- `Δ[A029092(n)-A029393(n)]` -/
def P2437595992755196333.Spec : Prop :=
  ∀ n, P2437595992755196333.a n = A025887 n

end A025887

/-! ## A025887.P530413499464057149

`Δ[∑[A025872(n)]-A029337(n)]`
-/

namespace A025887.P530413499464057149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025887.P530413499464057149

namespace A025887

/-- `Δ[∑[A025872(n)]-A029337(n)]` -/
def P530413499464057149.Spec : Prop :=
  ∀ n, P530413499464057149.a n = A025887 n

end A025887

/-! ## A025887.P6938143467299555175

`A025872(n+1)-Δ[A029337(n)]`
-/

namespace A025887.P6938143467299555175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025887.P6938143467299555175

namespace A025887

/-- `A025872(n+1)-Δ[A029337(n)]` -/
def P6938143467299555175.Spec : Prop :=
  ∀ n, P6938143467299555175.a n = A025887 n

end A025887

/-! ## A025887.P6071526386251065600

`A025883(n+1)+A025883(n)-A025882(n+1)`
-/

namespace A025887.P6071526386251065600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 (n + 1) + (A025883 n - A025882 (n + 1))

end

end A025887.P6071526386251065600

namespace A025887

/-- `A025883(n+1)+A025883(n)-A025882(n+1)` -/
def P6071526386251065600.Spec : Prop :=
  ∀ n, P6071526386251065600.a n = A025887 n

end A025887

/-!
# A025888: Expansion of 1/((1-x^5)*(1-x^8)*(1-x^10)).

The programs for A025888, the canonical program `A025888.P7230121095574801545` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025888 has offset 0).

The definition of A025888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^8-x^10+x^13+x^15+x^18-x^23))` (program `A025888.P7230121095574801545`, by `A025888.P7230121095574801545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025888.P7230121095574801545

`ogf(1/(1-x^5-x^8-x^10+x^13+x^15+x^18-x^23))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025888

/-- `ogf(1/(1-x^5-x^8-x^10+x^13+x^15+x^18-x^23))` -/
def P7230121095574801545.Spec : Prop :=
  ∀ n, P7230121095574801545.a n = A025888 n

theorem P7230121095574801545.correct : P7230121095574801545.Spec := by
  intro n
  simp only [A025888]

end A025888

/-! ## A025888.P1338946681589150922

`A025808(n)+A025838(n)-A025799(n)`
-/

namespace A025888.P1338946681589150922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025808 n + (A025838 n - A025799 n)

end

end A025888.P1338946681589150922

namespace A025888

/-- `A025808(n)+A025838(n)-A025799(n)` -/
def P1338946681589150922.Spec : Prop :=
  ∀ n, P1338946681589150922.a n = A025888 n

end A025888

/-! ## A025888.P5541487644031161552

`A025838(n)+A025909(n)-A025845(n)`
-/

namespace A025888.P5541487644031161552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025838 n + (A025909 n - A025845 n)

end

end A025888.P5541487644031161552

namespace A025888

/-- `A025838(n)+A025909(n)-A025845(n)` -/
def P5541487644031161552.Spec : Prop :=
  ∀ n, P5541487644031161552.a n = A025888 n

end A025888

/-! ## A025888.P3244465275548749563

`A029205(n)+A029283(n)-A029162(n)`
-/

namespace A025888.P3244465275548749563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029205 n + (A029283 n - A029162 n)

end

end A025888.P3244465275548749563

namespace A025888

/-- `A029205(n)+A029283(n)-A029162(n)` -/
def P3244465275548749563.Spec : Prop :=
  ∀ n, P3244465275548749563.a n = A025888 n

end A025888

/-! ## A025888.P8706765381196711073

`Δ[∑[A025887(n)]-A029403(n)]`
-/

namespace A025888.P8706765381196711073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025887 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025888.P8706765381196711073

namespace A025888

/-- `Δ[∑[A025887(n)]-A029403(n)]` -/
def P8706765381196711073.Spec : Prop :=
  ∀ n, P8706765381196711073.a n = A025888 n

end A025888

/-! ## A025888.P14529174364343792606

`A025887(n+1)-Δ[A029403(n)]`
-/

namespace A025888.P14529174364343792606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025887 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025888.P14529174364343792606

namespace A025888

/-- `A025887(n+1)-Δ[A029403(n)]` -/
def P14529174364343792606.Spec : Prop :=
  ∀ n, P14529174364343792606.a n = A025888 n

end A025888

/-!
# A025889: Expansion of 1/((1-x^5)*(1-x^8)*(1-x^11)).

The programs for A025889, the canonical program `A025889.P4142291300216174223` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025889 has offset 0).

The definition of A025889 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^8-x^11+x^13+x^16+x^19-x^24))` (program `A025889.P4142291300216174223`, by `A025889.P4142291300216174223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025889.P4142291300216174223

`ogf(1/(1-x^5-x^8-x^11+x^13+x^16+x^19-x^24))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025889

/-- `ogf(1/(1-x^5-x^8-x^11+x^13+x^16+x^19-x^24))` -/
def P4142291300216174223.Spec : Prop :=
  ∀ n, P4142291300216174223.a n = A025889 n

theorem P4142291300216174223.correct : P4142291300216174223.Spec := by
  intro n
  simp only [A025889]

end A025889

/-! ## A025889.P201501614113230032

`A025921(abs(5-n))+A025921(n)`
-/

namespace A025889.P201501614113230032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 |5 - (n : ℤ)|.toNat + A025921 n

end

end A025889.P201501614113230032

namespace A025889

/-- `A025921(abs(5-n))+A025921(n)` -/
def P201501614113230032.Spec : Prop :=
  ∀ n, P201501614113230032.a n = A025889 n

end A025889

/-! ## A025889.P15713874465294161923

`Δ[∑[A025873(n)]-A029339(n)]`
-/

namespace A025889.P15713874465294161923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025889.P15713874465294161923

namespace A025889

/-- `Δ[∑[A025873(n)]-A029339(n)]` -/
def P15713874465294161923.Spec : Prop :=
  ∀ n, P15713874465294161923.a n = A025889 n

end A025889

/-! ## A025889.P16966329463213956818

`A025873(n+1)-Δ[A029339(n)]`
-/

namespace A025889.P16966329463213956818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025889.P16966329463213956818

namespace A025889

/-- `A025873(n+1)-Δ[A029339(n)]` -/
def P16966329463213956818.Spec : Prop :=
  ∀ n, P16966329463213956818.a n = A025889 n

end A025889

/-! ## A025889.P13186969481337187479

`A025873(n)-Δ[A029327(n)-A029353(n)]`
-/

namespace A025889.P13186969481337187479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 n - A029353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 n - (f1 (n + 1) - f1 n)

end

end A025889.P13186969481337187479

namespace A025889

/-- `A025873(n)-Δ[A029327(n)-A029353(n)]` -/
def P13186969481337187479.Spec : Prop :=
  ∀ n, P13186969481337187479.a n = A025889 n

end A025889

/-! ## A025889.P16973441928643785840

`Δ[A029043(n+4)-A029056(n+4)]`
-/

namespace A025889.P16973441928643785840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029043 (n + 4) - A029056 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025889.P16973441928643785840

namespace A025889

/-- `Δ[A029043(n+4)-A029056(n+4)]` -/
def P16973441928643785840.Spec : Prop :=
  ∀ n, P16973441928643785840.a n = A025889 n

end A025889

/-!
# A025890: Expansion of 1/((1-x^5)*(1-x^8)*(1-x^12)).

The programs for A025890, the canonical program `A025890.P1795050374044750195` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025890 has offset 0).

The definition of A025890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^8-x^12+x^13+x^17+x^20-x^25))` (program `A025890.P1795050374044750195`, by `A025890.P1795050374044750195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025890.P1795050374044750195

`ogf(1/(1-x^5-x^8-x^12+x^13+x^17+x^20-x^25))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025890

/-- `ogf(1/(1-x^5-x^8-x^12+x^13+x^17+x^20-x^25))` -/
def P1795050374044750195.Spec : Prop :=
  ∀ n, P1795050374044750195.a n = A025890 n

theorem P1795050374044750195.correct : P1795050374044750195.Spec := by
  intro n
  simp only [A025890]

end A025890

/-! ## A025890.P57793754091666350

`A008682(A026741(n)%A052938(n))`
-/

namespace A025890.P57793754091666350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (Int.tmod (A026741 n) (A052938 n)).toNat

end

end A025890.P57793754091666350

namespace A025890

/-- `A008682(A026741(n)%A052938(n))` -/
def P57793754091666350.Spec : Prop :=
  ∀ n, P57793754091666350.a n = A025890 n

end A025890

/-! ## A025890.P448941316489628274

`A008682(A109613(n)%A052938(n))`
-/

namespace A025890.P448941316489628274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (Int.tmod (A109613 n) (A052938 n)).toNat

end

end A025890.P448941316489628274

namespace A025890

/-- `A008682(A109613(n)%A052938(n))` -/
def P448941316489628274.Spec : Prop :=
  ∀ n, P448941316489628274.a n = A025890 n

end A025890

/-! ## A025890.P3257677128463218595

`A008682(abs(A008619(n)-A097062(n)))`
-/

namespace A025890.P3257677128463218595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 |A008619 n - A097062 n|.toNat

end

end A025890.P3257677128463218595

namespace A025890

/-- `A008682(abs(A008619(n)-A097062(n)))` -/
def P3257677128463218595.Spec : Prop :=
  ∀ n, P3257677128463218595.a n = A025890 n

end A025890

/-! ## A025890.P12628767617850926612

`Δ[A029057(n)-A029250(n)]`
-/

namespace A025890.P12628767617850926612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 n - A029250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025890.P12628767617850926612

namespace A025890

/-- `Δ[A029057(n)-A029250(n)]` -/
def P12628767617850926612.Spec : Prop :=
  ∀ n, P12628767617850926612.a n = A025890 n

end A025890

/-! ## A025890.P2151643998355657750

`A008682((2*n+1)%A166517(n+1))`
-/

namespace A025890.P2151643998355657750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (Int.tmod (2 * n + 1 : ℤ) (A166517 (n + 1))).toNat

end

end A025890.P2151643998355657750

namespace A025890

/-- `A008682((2*n+1)%A166517(n+1))` -/
def P2151643998355657750.Spec : Prop :=
  ∀ n, P2151643998355657750.a n = A025890 n

end A025890

/-!
# A025891: Expansion of 1/((1-x^5)*(1-x^9)*(1-x^10)).

The programs for A025891, the canonical program `A025891.P3974686796988366480` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025891 has offset 0).

The definition of A025891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^9-x^10+x^14+x^15+x^19-x^24))` (program `A025891.P3974686796988366480`, by `A025891.P3974686796988366480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025891.P3974686796988366480

`ogf(1/(1-x^5-x^9-x^10+x^14+x^15+x^19-x^24))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025891

/-- `ogf(1/(1-x^5-x^9-x^10+x^14+x^15+x^19-x^24))` -/
def P3974686796988366480.Spec : Prop :=
  ∀ n, P3974686796988366480.a n = A025891 n

theorem P3974686796988366480.correct : P3974686796988366480.Spec := by
  intro n
  simp only [A025891]

end A025891

/-! ## A025891.P14055655903813702099

`A025862(n)+A025904(n)-A025865(n)`
-/

namespace A025891.P14055655903813702099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025862 n + (A025904 n - A025865 n)

end

end A025891.P14055655903813702099

namespace A025891

/-- `A025862(n)+A025904(n)-A025865(n)` -/
def P14055655903813702099.Spec : Prop :=
  ∀ n, P14055655903813702099.a n = A025891 n

end A025891

/-! ## A025891.P15388274626307776658

`Δ[∑[A025888(n)]-A029403(n)]`
-/

namespace A025891.P15388274626307776658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025891.P15388274626307776658

namespace A025891

/-- `Δ[∑[A025888(n)]-A029403(n)]` -/
def P15388274626307776658.Spec : Prop :=
  ∀ n, P15388274626307776658.a n = A025891 n

end A025891

/-! ## A025891.P1847062574459138741

`A025888(n+1)-Δ[A029403(n)]`
-/

namespace A025891.P1847062574459138741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025891.P1847062574459138741

namespace A025891

/-- `A025888(n+1)-Δ[A029403(n)]` -/
def P1847062574459138741.Spec : Prop :=
  ∀ n, P1847062574459138741.a n = A025891 n

end A025891

/-! ## A025891.P5298537398716345223

`A025888(n+1)+A025888(n)-A025887(n+1)`
-/

namespace A025891.P5298537398716345223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (n + 1) + (A025888 n - A025887 (n + 1))

end

end A025891.P5298537398716345223

namespace A025891

/-- `A025888(n+1)+A025888(n)-A025887(n+1)` -/
def P5298537398716345223.Spec : Prop :=
  ∀ n, P5298537398716345223.a n = A025891 n

end A025891

/-!
# A025892: Expansion of 1/((1-x^5)*(1-x^9)*(1-x^11)).

The programs for A025892, the canonical program `A025892.P8566478815414130710` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025892 has offset 0).

The definition of A025892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^9-x^11+x^14+x^16+x^20-x^25))` (program `A025892.P8566478815414130710`, by `A025892.P8566478815414130710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025892.P8566478815414130710

`ogf(1/(1-x^5-x^9-x^11+x^14+x^16+x^20-x^25))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025892

/-- `ogf(1/(1-x^5-x^9-x^11+x^14+x^16+x^20-x^25))` -/
def P8566478815414130710.Spec : Prop :=
  ∀ n, P8566478815414130710.a n = A025892 n

theorem P8566478815414130710.correct : P8566478815414130710.Spec := by
  intro n
  simp only [A025892]

end A025892

/-! ## A025892.P15545457076508108819

`A025863(n)+A025913(n)-A025868(n)`
-/

namespace A025892.P15545457076508108819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025863 n + (A025913 n - A025868 n)

end

end A025892.P15545457076508108819

namespace A025892

/-- `A025863(n)+A025913(n)-A025868(n)` -/
def P15545457076508108819.Spec : Prop :=
  ∀ n, P15545457076508108819.a n = A025892 n

end A025892

/-! ## A025892.P18108016657510251270

`A029101(n)+A029342(n)-A029081(n)`
-/

namespace A025892.P18108016657510251270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029101 n + (A029342 n - A029081 n)

end

end A025892.P18108016657510251270

namespace A025892

/-- `A029101(n)+A029342(n)-A029081(n)` -/
def P18108016657510251270.Spec : Prop :=
  ∀ n, P18108016657510251270.a n = A025892 n

end A025892

/-! ## A025892.P12710592241858387248

`Δ[A029081(n)-A029342(n)]`
-/

namespace A025892.P12710592241858387248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029081 n - A029342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025892.P12710592241858387248

namespace A025892

/-- `Δ[A029081(n)-A029342(n)]` -/
def P12710592241858387248.Spec : Prop :=
  ∀ n, P12710592241858387248.a n = A025892 n

end A025892

/-! ## A025892.P17584425155472516259

`Δ[∑[A025891(n)]-A029409(n)]`
-/

namespace A025892.P17584425155472516259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025892.P17584425155472516259

namespace A025892

/-- `Δ[∑[A025891(n)]-A029409(n)]` -/
def P17584425155472516259.Spec : Prop :=
  ∀ n, P17584425155472516259.a n = A025892 n

end A025892

/-! ## A025892.P6552121150944437845

`A025891(n+1)-Δ[A029409(n)]`
-/

namespace A025892.P6552121150944437845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025891 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025892.P6552121150944437845

namespace A025892

/-- `A025891(n+1)-Δ[A029409(n)]` -/
def P6552121150944437845.Spec : Prop :=
  ∀ n, P6552121150944437845.a n = A025892 n

end A025892

/-!
# A025893: Expansion of 1/((1-x^5)*(1-x^9)*(1-x^12)).

The programs for A025893, the canonical program `A025893.P10661404492981031019` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025893 has offset 0).

The definition of A025893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^9-x^12+x^14+x^17+x^21-x^26))` (program `A025893.P10661404492981031019`, by `A025893.P10661404492981031019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025893.P10661404492981031019

`ogf(1/(1-x^5-x^9-x^12+x^14+x^17+x^21-x^26))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025893

/-- `ogf(1/(1-x^5-x^9-x^12+x^14+x^17+x^21-x^26))` -/
def P10661404492981031019.Spec : Prop :=
  ∀ n, P10661404492981031019.a n = A025893 n

theorem P10661404492981031019.correct : P10661404492981031019.Spec := by
  intro n
  simp only [A025893]

end A025893

/-! ## A025893.P12081485160126186746

`A025877(A008596(n)%A008576(n))`
-/

namespace A025893.P12081485160126186746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (Int.tmod (A008596 n) (A008576 n)).toNat

end

end A025893.P12081485160126186746

namespace A025893

/-- `A025877(A008596(n)%A008576(n))` -/
def P12081485160126186746.Spec : Prop :=
  ∀ n, P12081485160126186746.a n = A025893 n

end A025893

/-! ## A025893.P7160373645648698620

`A025924(n)+A029102(n)-A029113(n)`
-/

namespace A025893.P7160373645648698620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 n + (A029102 n - A029113 n)

end

end A025893.P7160373645648698620

namespace A025893

/-- `A025924(n)+A029102(n)-A029113(n)` -/
def P7160373645648698620.Spec : Prop :=
  ∀ n, P7160373645648698620.a n = A025893 n

end A025893

/-! ## A025893.P15531568386362953951

`Δ[A029113(n)-A025924(n)]`
-/

namespace A025893.P15531568386362953951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029113 n - A025924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025893.P15531568386362953951

namespace A025893

/-- `Δ[A029113(n)-A025924(n)]` -/
def P15531568386362953951.Spec : Prop :=
  ∀ n, P15531568386362953951.a n = A025893 n

end A025893

/-! ## A025893.P17818634094668020339

`Δ[∑[A025904(n)]-A025924(n)]`
-/

namespace A025893.P17818634094668020339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A025924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025893.P17818634094668020339

namespace A025893

/-- `Δ[∑[A025904(n)]-A025924(n)]` -/
def P17818634094668020339.Spec : Prop :=
  ∀ n, P17818634094668020339.a n = A025893 n

end A025893

/-! ## A025893.P7159290262669064237

`A025904(n+1)-Δ[A025924(n)]`
-/

namespace A025893.P7159290262669064237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025893.P7159290262669064237

namespace A025893

/-- `A025904(n+1)-Δ[A025924(n)]` -/
def P7159290262669064237.Spec : Prop :=
  ∀ n, P7159290262669064237.a n = A025893 n

end A025893

/-! ## A025893.P9916314414207512940

`A025883(A020710(n))-A025914(A020710(n))`
-/

namespace A025893.P9916314414207512940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 (A020710 n).toNat - A025914 (A020710 n).toNat

end

end A025893.P9916314414207512940

namespace A025893

/-- `A025883(A020710(n))-A025914(A020710(n))` -/
def P9916314414207512940.Spec : Prop :=
  ∀ n, P9916314414207512940.a n = A025893 n

end A025893

/-!
# A025894: Expansion of 1/((1-x^5)*(1-x^10)*(1-x^11)).

The programs for A025894, the canonical program `A025894.P1447063263428745553` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025894 has offset 0).

The definition of A025894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^10-x^11+x^15+x^16+x^21-x^26))` (program `A025894.P1447063263428745553`, by `A025894.P1447063263428745553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025894.P1447063263428745553

`ogf(1/(1-x^5-x^10-x^11+x^15+x^16+x^21-x^26))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025894

/-- `ogf(1/(1-x^5-x^10-x^11+x^15+x^16+x^21-x^26))` -/
def P1447063263428745553.Spec : Prop :=
  ∀ n, P1447063263428745553.a n = A025894 n

theorem P1447063263428745553.correct : P1447063263428745553.Spec := by
  intro n
  simp only [A025894]

end A025894

/-! ## A025894.P11663709307742991150

`A029103(n)+A029409(n)-A029101(n)`
-/

namespace A025894.P11663709307742991150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029103 n + (A029409 n - A029101 n)

end

end A025894.P11663709307742991150

namespace A025894

/-- `A029103(n)+A029409(n)-A029101(n)` -/
def P11663709307742991150.Spec : Prop :=
  ∀ n, P11663709307742991150.a n = A025894 n

end A025894

/-! ## A025894.P5635056613209262610

`Δ[A029083(n)-A029344(n)]`
-/

namespace A025894.P5635056613209262610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029083 n - A029344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025894.P5635056613209262610

namespace A025894

/-- `Δ[A029083(n)-A029344(n)]` -/
def P5635056613209262610.Spec : Prop :=
  ∀ n, P5635056613209262610.a n = A025894 n

end A025894

/-! ## A025894.P7721720411086262728

`Δ[A029101(n)-A029409(n)]`
-/

namespace A025894.P7721720411086262728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029101 n - A029409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025894.P7721720411086262728

namespace A025894

/-- `Δ[A029101(n)-A029409(n)]` -/
def P7721720411086262728.Spec : Prop :=
  ∀ n, P7721720411086262728.a n = A025894 n

end A025894

/-! ## A025894.P1099728466147120936

`A025892(n+1)+A025892(n)-A025891(n+1)`
-/

namespace A025894.P1099728466147120936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025892 (n + 1) + (A025892 n - A025891 (n + 1))

end

end A025894.P1099728466147120936

namespace A025894

/-- `A025892(n+1)+A025892(n)-A025891(n+1)` -/
def P1099728466147120936.Spec : Prop :=
  ∀ n, P1099728466147120936.a n = A025894 n

end A025894

/-! ## A025894.P12754896464425333240

`A029103(n)+A029409(n)+A029101(n)/A057428(n+1)`
-/

namespace A025894.P12754896464425333240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029103 n : ℚ) + ((A029409 n : ℚ) + (A029101 n : ℚ) / (A057428 (n + 1) : ℚ))

end

end A025894.P12754896464425333240

namespace A025894

/-- `A029103(n)+A029409(n)+A029101(n)/A057428(n+1)` -/
def P12754896464425333240.Spec : Prop :=
  ∀ n, P12754896464425333240.a n = (A025894 n : ℚ)

end A025894

/-! ## A025894.P4955228713763290634

`A029101(n+1)-A029409(n+1)+A029409(n)-A029101(n)`
-/

namespace A025894.P4955228713763290634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029101 (n + 1) - A029409 (n + 1) + (A029409 n - A029101 n)

end

end A025894.P4955228713763290634

namespace A025894

/-- `A029101(n+1)-A029409(n+1)+A029409(n)-A029101(n)` -/
def P4955228713763290634.Spec : Prop :=
  ∀ n, P4955228713763290634.a n = A025894 n

end A025894

/-!
# A025895: Expansion of 1/((1-x^5)*(1-x^10)*(1-x^12)).

The programs for A025895, the canonical program `A025895.P11568081359664457230` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025895 has offset 0).

The definition of A025895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^10-x^12+x^15+x^17+x^22-x^27))` (program `A025895.P11568081359664457230`, by `A025895.P11568081359664457230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025895.P11568081359664457230

`ogf(1/(1-x^5-x^10-x^12+x^15+x^17+x^22-x^27))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025895

/-- `ogf(1/(1-x^5-x^10-x^12+x^15+x^17+x^22-x^27))` -/
def P11568081359664457230.Spec : Prop :=
  ∀ n, P11568081359664457230.a n = A025895 n

theorem P11568081359664457230.correct : P11568081359664457230.Spec := by
  intro n
  simp only [A025895]

end A025895

/-! ## A025895.P11003937639297082078

`A025810(n)+A025840(n)-A025801(n)`
-/

namespace A025895.P11003937639297082078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025810 n + (A025840 n - A025801 n)

end

end A025895.P11003937639297082078

namespace A025895

/-- `A025810(n)+A025840(n)-A025801(n)` -/
def P11003937639297082078.Spec : Prop :=
  ∀ n, P11003937639297082078.a n = A025895 n

end A025895

/-! ## A025895.P11959845906673824103

`A025857(n)+A025884(n)-A025849(n)`
-/

namespace A025895.P11959845906673824103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n + (A025884 n - A025849 n)

end

end A025895.P11959845906673824103

namespace A025895

/-- `A025857(n)+A025884(n)-A025849(n)` -/
def P11959845906673824103.Spec : Prop :=
  ∀ n, P11959845906673824103.a n = A025895 n

end A025895

/-! ## A025895.P17721293664543794368

`Δ[∑[A025893(n)]-A029410(n)]`
-/

namespace A025895.P17721293664543794368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025895.P17721293664543794368

namespace A025895

/-- `Δ[∑[A025893(n)]-A029410(n)]` -/
def P17721293664543794368.Spec : Prop :=
  ∀ n, P17721293664543794368.a n = A025895 n

end A025895

/-! ## A025895.P5752593616642009633

`Δ[∑[A025894(n)]-A029412(n)]`
-/

namespace A025895.P5752593616642009633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025894 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025895.P5752593616642009633

namespace A025895

/-- `Δ[∑[A025894(n)]-A029412(n)]` -/
def P5752593616642009633.Spec : Prop :=
  ∀ n, P5752593616642009633.a n = A025895 n

end A025895

/-! ## A025895.P11589328718063473609

`A025893(n+1)-Δ[A029410(n)]`
-/

namespace A025895.P11589328718063473609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025895.P11589328718063473609

namespace A025895

/-- `A025893(n+1)-Δ[A029410(n)]` -/
def P11589328718063473609.Spec : Prop :=
  ∀ n, P11589328718063473609.a n = A025895 n

end A025895

/-! ## A025895.P1108525679368812761

`A025894(n+1)-Δ[A029412(n)]`
-/

namespace A025895.P1108525679368812761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025894 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025895.P1108525679368812761

namespace A025895

/-- `A025894(n+1)-Δ[A029412(n)]` -/
def P1108525679368812761.Spec : Prop :=
  ∀ n, P1108525679368812761.a n = A025895 n

end A025895

/-!
# A025896: Expansion of 1/((1-x^5)*(1-x^11)*(1-x^12)).

The programs for A025896, the canonical program `A025896.P5219450746709301112` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025896 has offset 0).

The definition of A025896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^11-x^12+x^16+x^17+x^23-x^28))` (program `A025896.P5219450746709301112`, by `A025896.P5219450746709301112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025896.P5219450746709301112

`ogf(1/(1-x^5-x^11-x^12+x^16+x^17+x^23-x^28))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025896

/-- `ogf(1/(1-x^5-x^11-x^12+x^16+x^17+x^23-x^28))` -/
def P5219450746709301112.Spec : Prop :=
  ∀ n, P5219450746709301112.a n = A025896 n

theorem P5219450746709301112.correct : P5219450746709301112.Spec := by
  intro n
  simp only [A025896]

end A025896

/-! ## A025896.P9302578031106192194

`A025875(n)+A025885(n)-A025871(n)`
-/

namespace A025896.P9302578031106192194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A025885 n - A025871 n)

end

end A025896.P9302578031106192194

namespace A025896

/-- `A025875(n)+A025885(n)-A025871(n)` -/
def P9302578031106192194.Spec : Prop :=
  ∀ n, P9302578031106192194.a n = A025896 n

end A025896

/-! ## A025896.P3315775648899772553

`Δ[A029115(n)-A025926(n)]`
-/

namespace A025896.P3315775648899772553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 n - A025926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025896.P3315775648899772553

namespace A025896

/-- `Δ[A029115(n)-A025926(n)]` -/
def P3315775648899772553.Spec : Prop :=
  ∀ n, P3315775648899772553.a n = A025896 n

end A025896

/-! ## A025896.P4533116812476557882

`Δ[A029104(n)-A029412(n)]`
-/

namespace A025896.P4533116812476557882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n - A029412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025896.P4533116812476557882

namespace A025896

/-- `Δ[A029104(n)-A029412(n)]` -/
def P4533116812476557882.Spec : Prop :=
  ∀ n, P4533116812476557882.a n = A025896 n

end A025896

/-! ## A025896.P1546632151396581768

`Δ[∑[A025906(n)]-A025926(n)]`
-/

namespace A025896.P1546632151396581768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A025926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025896.P1546632151396581768

namespace A025896

/-- `Δ[∑[A025906(n)]-A025926(n)]` -/
def P1546632151396581768.Spec : Prop :=
  ∀ n, P1546632151396581768.a n = A025896 n

end A025896

/-! ## A025896.P14423446014618427461

`Δ[∑[A025895(n)]-A029412(n)]`
-/

namespace A025896.P14423446014618427461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025896.P14423446014618427461

namespace A025896

/-- `Δ[∑[A025895(n)]-A029412(n)]` -/
def P14423446014618427461.Spec : Prop :=
  ∀ n, P14423446014618427461.a n = A025896 n

end A025896

/-! ## A025896.P6624088191703256244

`A025906(n+1)-Δ[A025926(n)]`
-/

namespace A025896.P6624088191703256244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025896.P6624088191703256244

namespace A025896

/-- `A025906(n+1)-Δ[A025926(n)]` -/
def P6624088191703256244.Spec : Prop :=
  ∀ n, P6624088191703256244.a n = A025896 n

end A025896

/-! ## A025896.P247418423698219072

`A025895(n+1)-Δ[A029412(n)]`
-/

namespace A025896.P247418423698219072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025895 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025896.P247418423698219072

namespace A025896

/-- `A025895(n+1)-Δ[A029412(n)]` -/
def P247418423698219072.Spec : Prop :=
  ∀ n, P247418423698219072.a n = A025896 n

end A025896

/-! ## A025896.P5848188089843447950

`A025895(n+1)+A025895(n)-A025894(n+1)`
-/

namespace A025896.P5848188089843447950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025895 (n + 1) + (A025895 n - A025894 (n + 1))

end

end A025896.P5848188089843447950

namespace A025896

/-- `A025895(n+1)+A025895(n)-A025894(n+1)` -/
def P5848188089843447950.Spec : Prop :=
  ∀ n, P5848188089843447950.a n = A025896 n

end A025896

/-! ## A025896.P8536870262156481856

`A025906(n+1)+A025926(n)-A025926(n+1)`
-/

namespace A025896.P8536870262156481856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 (n + 1) + (A025926 n - A025926 (n + 1))

end

end A025896.P8536870262156481856

namespace A025896

/-- `A025906(n+1)+A025926(n)-A025926(n+1)` -/
def P8536870262156481856.Spec : Prop :=
  ∀ n, P8536870262156481856.a n = A025896 n

end A025896

/-! ## A025896.P9245825018560655171

`A025781(n+5)-A025783(n+5)`
-/

namespace A025896.P9245825018560655171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025781 (n + 5) - A025783 (n + 5)

end

end A025896.P9245825018560655171

namespace A025896

/-- `A025781(n+5)-A025783(n+5)` -/
def P9245825018560655171.Spec : Prop :=
  ∀ n, P9245825018560655171.a n = A025896 n

end A025896

/-!
# A025897: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^8)).

The programs for A025897, the canonical program `A025897.P1677645242868743526` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025897 has offset 0).

The definition of A025897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^8+x^13+x^14+x^15-x^21))` (program `A025897.P1677645242868743526`, by `A025897.P1677645242868743526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025897.P1677645242868743526

`ogf(1/(1-x^6-x^7-x^8+x^13+x^14+x^15-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025897

/-- `ogf(1/(1-x^6-x^7-x^8+x^13+x^14+x^15-x^21))` -/
def P1677645242868743526.Spec : Prop :=
  ∀ n, P1677645242868743526.a n = A025897 n

theorem P1677645242868743526.correct : P1677645242868743526.Spec := by
  intro n
  simp only [A025897]

end A025897

/-! ## A025897.P9039741856143762682

`floor((n²+21*n+686)/672+(n+10)*(-1)^n/96-(3*n²)%7/7)`
-/

namespace A025897.P9039741856143762682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 21 * n + 686 : ℚ) / 672 + ((n + 10 : ℤ) * (-1) ^ n : ℚ) / 96 - ((3 * n ^ 2 % 7 : ℕ) : ℚ) / 7⌋

end

end A025897.P9039741856143762682

namespace A025897

/-- `floor((n²+21*n+686)/672+(n+10)*(-1)^n/96-(3*n²)%7/7)` -/
def P9039741856143762682.Spec : Prop :=
  ∀ n, P9039741856143762682.a n = A025897 n

end A025897

/-! ## A025897.P9134023760240628917

`A025845(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025897.P9134023760240628917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025845 n - a (n - 3)

end

end A025897.P9134023760240628917

namespace A025897

/-- `A025845(n)-a(n-3)` -/
def P9134023760240628917.Spec : Prop :=
  ∀ n, P9134023760240628917.a n = A025897 n

end A025897

/-! ## A025897.P5181186362182053635

`A008622(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A025897.P5181186362182053635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A008622 n - a (n - 4)

end

end A025897.P5181186362182053635

namespace A025897

/-- `A008622(n)-a(n-4)` -/
def P5181186362182053635.Spec : Prop :=
  ∀ n, P5181186362182053635.a n = A025897 n

end A025897

/-! ## A025897.P7731410556954129793

`A025782(n)-A025797(A004442(n))`
-/

namespace A025897.P7731410556954129793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025782 n - A025797 (A004442 n).toNat

end

end A025897.P7731410556954129793

namespace A025897

/-- `A025782(n)-A025797(A004442(n))` -/
def P7731410556954129793.Spec : Prop :=
  ∀ n, P7731410556954129793.a n = A025897 n

end A025897

/-! ## A025897.P14231988380550323421

`A029106(n)+A029378(n)-A029091(n)`
-/

namespace A025897.P14231988380550323421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029106 n + (A029378 n - A029091 n)

end

end A025897.P14231988380550323421

namespace A025897

/-- `A029106(n)+A029378(n)-A029091(n)` -/
def P14231988380550323421.Spec : Prop :=
  ∀ n, P14231988380550323421.a n = A025897 n

end A025897

/-! ## A025897.P7085306690903936216

`A029214(n)+A029347(n)-A029181(n)`
-/

namespace A025897.P7085306690903936216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 n + (A029347 n - A029181 n)

end

end A025897.P7085306690903936216

namespace A025897

/-- `A029214(n)+A029347(n)-A029181(n)` -/
def P7085306690903936216.Spec : Prop :=
  ∀ n, P7085306690903936216.a n = A025897 n

end A025897

/-! ## A025897.P13408820025636433423

`A025845(n)+∑[A008622(n)-A025845(n)]`
-/

namespace A025897.P13408820025636433423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 n - A025845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025897.P13408820025636433423

namespace A025897

/-- `A025845(n)+∑[A008622(n)-A025845(n)]` -/
def P13408820025636433423.Spec : Prop :=
  ∀ n, P13408820025636433423.a n = A025897 n

end A025897

/-! ## A025897.P1022755505061523506

`Δ[A029091(n)-A029378(n)]`
-/

namespace A025897.P1022755505061523506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029091 n - A029378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025897.P1022755505061523506

namespace A025897

/-- `Δ[A029091(n)-A029378(n)]` -/
def P1022755505061523506.Spec : Prop :=
  ∀ n, P1022755505061523506.a n = A025897 n

end A025897

/-! ## A025897.P1683415157253829285

`A025816(n+2)-A008622(n+2)`
-/

namespace A025897.P1683415157253829285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025816 (n + 2) - A008622 (n + 2)

end

end A025897.P1683415157253829285

namespace A025897

/-- `A025816(n+2)-A008622(n+2)` -/
def P1683415157253829285.Spec : Prop :=
  ∀ n, P1683415157253829285.a n = A025897 n

end A025897

/-! ## A025897.P16803434335347814783

`A025914(A168198(n+1)-1)`
-/

namespace A025897.P16803434335347814783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025914 (A168198 (n + 1) - 1).toNat

end

end A025897.P16803434335347814783

namespace A025897

/-- `A025914(A168198(n+1)-1)` -/
def P16803434335347814783.Spec : Prop :=
  ∀ n, P16803434335347814783.a n = A025897 n

end A025897

/-!
# A025898: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^9)).

The programs for A025898, the canonical program `A025898.P10736998543566318293` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025898 has offset 0).

The definition of A025898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^9+x^13+x^15+x^16-x^22))` (program `A025898.P10736998543566318293`, by `A025898.P10736998543566318293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025898.P10736998543566318293

`ogf(1/(1-x^6-x^7-x^9+x^13+x^15+x^16-x^22))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025898

/-- `ogf(1/(1-x^6-x^7-x^9+x^13+x^15+x^16-x^22))` -/
def P10736998543566318293.Spec : Prop :=
  ∀ n, P10736998543566318293.a n = A025898 n

theorem P10736998543566318293.correct : P10736998543566318293.Spec := by
  intro n
  simp only [A025898]

end A025898

/-! ## A025898.P2159537952016596773

`A025846(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025898.P2159537952016596773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025846 n - a (n - 3)

end

end A025898.P2159537952016596773

namespace A025898

/-- `A025846(n)-a(n-3)` -/
def P2159537952016596773.Spec : Prop :=
  ∀ n, P2159537952016596773.a n = A025898 n

end A025898

/-! ## A025898.P9840401782269271190

`A025911(7*A002264(n+2)-n)`
-/

namespace A025898.P9840401782269271190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 (7 * A002264 (n + 2) - (n : ℤ)).toNat

end

end A025898.P9840401782269271190

namespace A025898

/-- `A025911(7*A002264(n+2)-n)` -/
def P9840401782269271190.Spec : Prop :=
  ∀ n, P9840401782269271190.a n = A025898 n

end A025898

/-! ## A025898.P6628524408151362359

`A025911(7-(n-7*A002264(n)))`
-/

namespace A025898.P6628524408151362359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 (7 - ((n : ℤ) - 7 * A002264 n)).toNat

end

end A025898.P6628524408151362359

namespace A025898

/-- `A025911(7-(n-7*A002264(n)))` -/
def P6628524408151362359.Spec : Prop :=
  ∀ n, P6628524408151362359.a n = A025898 n

end A025898

/-! ## A025898.P15001139463899737934

`A029157(n)-A029365(A144396(n+1))`
-/

namespace A025898.P15001139463899737934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029157 n - A029365 (A144396 (n + 1)).toNat

end

end A025898.P15001139463899737934

namespace A025898

/-- `A029157(n)-A029365(A144396(n+1))` -/
def P15001139463899737934.Spec : Prop :=
  ∀ n, P15001139463899737934.a n = A025898 n

end A025898

/-! ## A025898.P1350492693337351000

`A029157(n)-A029365(A163985(n+2))`
-/

namespace A025898.P1350492693337351000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029157 n - A029365 (A163985 (n + 2)).toNat

end

end A025898.P1350492693337351000

namespace A025898

/-- `A029157(n)-A029365(A163985(n+2))` -/
def P1350492693337351000.Spec : Prop :=
  ∀ n, P1350492693337351000.a n = A025898 n

end A025898

/-! ## A025898.P17612292737139683261

`Δ[A029365(2*n+5)]`
-/

namespace A025898.P17612292737139683261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029365 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025898.P17612292737139683261

namespace A025898

/-- `Δ[A029365(2*n+5)]` -/
def P17612292737139683261.Spec : Prop :=
  ∀ n, P17612292737139683261.a n = A025898 n

end A025898

/-!
# A025899: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^10)).

The programs for A025899, the canonical program `A025899.P3962564238194121751` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025899 has offset 0).

The definition of A025899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^10+x^13+x^16+x^17-x^23))` (program `A025899.P3962564238194121751`, by `A025899.P3962564238194121751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025899.P3962564238194121751

`ogf(1/(1-x^6-x^7-x^10+x^13+x^16+x^17-x^23))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025899

/-- `ogf(1/(1-x^6-x^7-x^10+x^13+x^16+x^17-x^23))` -/
def P3962564238194121751.Spec : Prop :=
  ∀ n, P3962564238194121751.a n = A025899 n

theorem P3962564238194121751.correct : P3962564238194121751.Spec := by
  intro n
  simp only [A025899]

end A025899

/-! ## A025899.P3380886057172936043

`A025847(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025899.P3380886057172936043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025847 n - a (n - 3)

end

end A025899.P3380886057172936043

namespace A025899

/-- `A025847(n)-a(n-3)` -/
def P3380886057172936043.Spec : Prop :=
  ∀ n, P3380886057172936043.a n = A025899 n

end A025899

/-! ## A025899.P7701881156687329241

`A025847(n)+A029193(n)-A029158(n)`
-/

namespace A025899.P7701881156687329241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025847 n + (A029193 n - A029158 n)

end

end A025899.P7701881156687329241

namespace A025899

/-- `A025847(n)+A029193(n)-A029158(n)` -/
def P7701881156687329241.Spec : Prop :=
  ∀ n, P7701881156687329241.a n = A025899 n

end A025899

/-! ## A025899.P6421367969654338846

`A029051(n)+A029193(n)-A029022(n)`
-/

namespace A025899.P6421367969654338846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029051 n + (A029193 n - A029022 n)

end

end A025899.P6421367969654338846

namespace A025899

/-- `A029051(n)+A029193(n)-A029022(n)` -/
def P6421367969654338846.Spec : Prop :=
  ∀ n, P6421367969654338846.a n = A025899 n

end A025899

/-! ## A025899.P3388720642856578036

`A029216(n)+A029349(n)-A029183(n)`
-/

namespace A025899.P3388720642856578036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 n + (A029349 n - A029183 n)

end

end A025899.P3388720642856578036

namespace A025899

/-- `A029216(n)+A029349(n)-A029183(n)` -/
def P3388720642856578036.Spec : Prop :=
  ∀ n, P3388720642856578036.a n = A025899 n

end A025899

/-! ## A025899.P1232205181898741949

`A029216(n)-A029216(A300576(n+1)-n)`
-/

namespace A025899.P1232205181898741949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 n - A029216 (A300576 (n + 1) - (n : ℤ)).toNat

end

end A025899.P1232205181898741949

namespace A025899

/-- `A029216(n)-A029216(A300576(n+1)-n)` -/
def P1232205181898741949.Spec : Prop :=
  ∀ n, P1232205181898741949.a n = A025899 n

end A025899

/-! ## A025899.P10844477997446016444

`Δ[A029093(n)-A029380(n)]`
-/

namespace A025899.P10844477997446016444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n - A029380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025899.P10844477997446016444

namespace A025899

/-- `Δ[A029093(n)-A029380(n)]` -/
def P10844477997446016444.Spec : Prop :=
  ∀ n, P10844477997446016444.a n = A025899 n

end A025899

/-! ## A025899.P16288560587871144529

`A029108(n+1)-A029158(n+1)`
-/

namespace A025899.P16288560587871144529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029108 (n + 1) - A029158 (n + 1)

end

end A025899.P16288560587871144529

namespace A025899

/-- `A029108(n+1)-A029158(n+1)` -/
def P16288560587871144529.Spec : Prop :=
  ∀ n, P16288560587871144529.a n = A025899 n

end A025899

