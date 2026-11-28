import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C028
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C003
import Seq.B003.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020

/-!
# A042700: Numerators of continued fraction convergents to sqrt(880).

The programs for A042700, the canonical program `A042700.P1212084408002466760` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042700 has offset 0).

The definition of A042700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042700.P1212084408002466760

`ogf((29+30x+59x^2+89x^3+59x^4-30x^5+29x^6-x^7)/(1-178x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042700

/-- `ogf((29+30x+59x^2+89x^3+59x^4-30x^5+29x^6-x^7)/(1-178x^4+x^8))` -/
def P1212084408002466760.Spec : Prop :=
  ∀ n, P1212084408002466760.a n = A042700 n

theorem P1212084408002466760.correct : P1212084408002466760.Spec := by
  intro n
  simp only [A042700]

end A042700

/-!
# A042701: Denominators of continued fraction convergents to sqrt(880).

The programs for A042701, the canonical program `A042701.P15143850389810158012` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042701 has offset 0).

The definition of A042701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042701.P15143850389810158012

`178*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=176, a(5)=179, a(6)=355, a(7)=534`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042701

/-- `178*a(n-4)-a(n-8)` -/
def P15143850389810158012.Spec : Prop :=
  ∀ n, P15143850389810158012.a n = A042701 n

theorem P15143850389810158012.correct : P15143850389810158012.Spec := by
  intro n
  simp only [A042701]

end A042701

/-! ## A042701.P5676462516092650323

`ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-178x^4+x^8))`
-/

namespace A042701.P5676462516092650323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 3, -2, 1, -1] [1, 0, 0, 0, -178, 0, 0, 0, 1] n

end

end A042701.P5676462516092650323

namespace A042701

/-- `ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-178x^4+x^8))` -/
def P5676462516092650323.Spec : Prop :=
  ∀ n, P5676462516092650323.a n = A042701 n

end A042701

/-! ## A042701.P8085876422026297907

`A004277(A041589(n))-A041053(n)`
-/

namespace A042701.P8085876422026297907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041589 n).toNat - A041053 n

end

end A042701.P8085876422026297907

namespace A042701

/-- `A004277(A041589(n))-A041053(n)` -/
def P8085876422026297907.Spec : Prop :=
  ∀ n, P8085876422026297907.a n = A042701 n

end A042701

/-!
# A042703: Denominators of continued fraction convergents to sqrt(881).

The programs for A042703, there is no canonical definition to state claims against.
-/

/-! ## A042703.P14242843215056406131

`A307558(A257969(n+1))`
-/

namespace A042703.P14242843215056406131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (A257969 (n + 1)).toNat

end

end A042703.P14242843215056406131

/-!
# A042705: Denominators of continued fraction convergents to sqrt(882).

The programs for A042705, there is no canonical definition to state claims against.
-/

/-! ## A042705.P6637134242122264101

`(20*a(n-2)-a(n-4))!` with `a(0)=1, a(1)=1, a(2)=3, a(3)=10, a(4)=63, a(5)=199`
-/

namespace A042705.P6637134242122264101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 10, 63, 199] fun n a =>
  Nat.factorial ((20 * a (n - 2) : ℤ) - (a (n - 4) : ℤ)).toNat

end

end A042705.P6637134242122264101

/-!
# A042707: Denominators of continued fraction convergents to sqrt(883).

The programs for A042707, there is no canonical definition to state claims against.
-/

/-! ## A042707.P16690156772987730905

`A099423(2^n)+1`
-/

namespace A042707.P16690156772987730905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099423 (2 ^ n) + 1

end

end A042707.P16690156772987730905

/-!
# A042710: Numerators of continued fraction convergents to sqrt(885).

The programs for A042710, the canonical program `A042710.P14675622694299700257` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042710 has offset 0).

The definition of A042710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042710.P14675622694299700257

`ogf((29+30x+89x^2+119x^3+89x^4-30x^5+29x^6-x^7)/(1-238x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042710

/-- `ogf((29+30x+89x^2+119x^3+89x^4-30x^5+29x^6-x^7)/(1-238x^4+x^8))` -/
def P14675622694299700257.Spec : Prop :=
  ∀ n, P14675622694299700257.a n = A042710 n

theorem P14675622694299700257.correct : P14675622694299700257.Spec := by
  intro n
  simp only [A042710]

end A042710

/-!
# A042711: Denominators of continued fraction convergents to sqrt(885).

The programs for A042711, the canonical program `A042711.P2511236996821012059` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042711 has offset 0).

The definition of A042711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042711.P2511236996821012059

`238*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=235, a(5)=239, a(6)=713, a(7)=952`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042711

/-- `238*a(n-4)-a(n-8)` -/
def P2511236996821012059.Spec : Prop :=
  ∀ n, P2511236996821012059.a n = A042711 n

theorem P2511236996821012059.correct : P2511236996821012059.Spec := by
  intro n
  simp only [A042711]

end A042711

/-! ## A042711.P5214642171705418290

`ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-238x^4+x^8))`
-/

namespace A042711.P5214642171705418290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 4, -3, 1, -1] [1, 0, 0, 0, -238, 0, 0, 0, 1] n

end

end A042711.P5214642171705418290

namespace A042711

/-- `ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-238x^4+x^8))` -/
def P5214642171705418290.Spec : Prop :=
  ∀ n, P5214642171705418290.a n = A042711 n

end A042711

/-! ## A042711.P10013496931105123451

`A042485(n)+A001281(A042485(n)-A042081(n))`
-/

namespace A042711.P10013496931105123451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042485 n + A001281 (A042485 n - A042081 n).toNat

end

end A042711.P10013496931105123451

namespace A042711

/-- `A042485(n)+A001281(A042485(n)-A042081(n))` -/
def P10013496931105123451.Spec : Prop :=
  ∀ n, P10013496931105123451.a n = A042711 n

end A042711

/-!
# A042716: Numerators of continued fraction convergents to sqrt(888).

The programs for A042716, the canonical program `A042716.P9556483871126064077` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042716 has offset 0).

The definition of A042716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042716.P9556483871126064077

`ogf((29+30x+119x^2+149x^3+119x^4-30x^5+29x^6-x^7)/(1-298x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042716

/-- `ogf((29+30x+119x^2+149x^3+119x^4-30x^5+29x^6-x^7)/(1-298x^4+x^8))` -/
def P9556483871126064077.Spec : Prop :=
  ∀ n, P9556483871126064077.a n = A042716 n

theorem P9556483871126064077.correct : P9556483871126064077.Spec := by
  intro n
  simp only [A042716]

end A042716

/-!
# A042717: Denominators of continued fraction convergents to sqrt(888).

The programs for A042717, the canonical program `A042717.P5214942169255389344` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042717 has offset 0).

The definition of A042717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042717.P5214942169255389344

`ogf((1+x+4x^2+5x^3-4x^4+x^5-x^6)/(1-298x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042717

/-- `ogf((1+x+4x^2+5x^3-4x^4+x^5-x^6)/(1-298x^4+x^8))` -/
def P5214942169255389344.Spec : Prop :=
  ∀ n, P5214942169255389344.a n = A042717 n

theorem P5214942169255389344.correct : P5214942169255389344.Spec := by
  intro n
  simp only [A042717]

end A042717

/-!
# A042720: Numerators of continued fraction convergents to sqrt(890).

The programs for A042720, the canonical program `A042720.P11509828905076518481` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042720 has offset 0).

The definition of A042720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042720.P11509828905076518481

`ogf((29+30x+149x^2+179x^3+149x^4-30x^5+29x^6-x^7)/(1-358x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042720

/-- `ogf((29+30x+149x^2+179x^3+149x^4-30x^5+29x^6-x^7)/(1-358x^4+x^8))` -/
def P11509828905076518481.Spec : Prop :=
  ∀ n, P11509828905076518481.a n = A042720 n

theorem P11509828905076518481.correct : P11509828905076518481.Spec := by
  intro n
  simp only [A042720]

end A042720

/-!
# A042721: Denominators of continued fraction convergents to sqrt(890).

The programs for A042721, the canonical program `A042721.P4867043857761167769` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042721 has offset 0).

The definition of A042721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042721.P4867043857761167769

`ogf((1+x+5x^2+6x^3-5x^4+x^5-x^6)/(1-358x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042721

/-- `ogf((1+x+5x^2+6x^3-5x^4+x^5-x^6)/(1-358x^4+x^8))` -/
def P4867043857761167769.Spec : Prop :=
  ∀ n, P4867043857761167769.a n = A042721 n

theorem P4867043857761167769.correct : P4867043857761167769.Spec := by
  intro n
  simp only [A042721]

end A042721

/-! ## A042721.P9668473388109983393

`A004277(A041827(n))-A041257(n)`
-/

namespace A042721.P9668473388109983393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041827 n).toNat - A041257 n

end

end A042721.P9668473388109983393

namespace A042721

/-- `A004277(A041827(n))-A041257(n)` -/
def P9668473388109983393.Spec : Prop :=
  ∀ n, P9668473388109983393.a n = A042721 n

end A042721

/-! ## A042721.P13946911999334166898

`A004277(A042089(n))-A041601(n)`
-/

namespace A042721.P13946911999334166898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042089 n).toNat - A041601 n

end

end A042721.P13946911999334166898

namespace A042721

/-- `A004277(A042089(n))-A041601(n)` -/
def P13946911999334166898.Spec : Prop :=
  ∀ n, P13946911999334166898.a n = A042721 n

end A042721

/-!
# A042723: Denominators of continued fraction convergents to sqrt(891).

The programs for A042723, there is no canonical definition to state claims against.
-/

/-! ## A042723.P18006252586042306794

`A008651(A042722(n)+5)`
-/

namespace A042723.P18006252586042306794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A042722 n + 5).toNat

end

end A042723.P18006252586042306794

/-! ## A042723.P10304621868945672291

`A068962(ceil(A042722(n)/12))`
-/

namespace A042723.P10304621868945672291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 ⌈(A042722 n : ℚ) / 12⌉.toNat

end

end A042723.P10304621868945672291

/-!
# A042725: Denominators of continued fraction convergents to sqrt(892).

The programs for A042725, there is no canonical definition to state claims against.
-/

/-! ## A042725.P966110684894359315

`A300330(A041417(n))`
-/

namespace A042725.P966110684894359315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300330 (A041417 n).toNat

end

end A042725.P966110684894359315

/-!
# A042728: Numerators of continued fraction convergents to sqrt(894).

The programs for A042728, the canonical program `A042728.P13412184490236342631` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042728 has offset 0).

The definition of A042728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042728.P13412184490236342631

`ogf((29+30x+269x^2+299x^3+269x^4-30x^5+29x^6-x^7)/(1-598x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042728

/-- `ogf((29+30x+269x^2+299x^3+269x^4-30x^5+29x^6-x^7)/(1-598x^4+x^8))` -/
def P13412184490236342631.Spec : Prop :=
  ∀ n, P13412184490236342631.a n = A042728 n

theorem P13412184490236342631.correct : P13412184490236342631.Spec := by
  intro n
  simp only [A042728]

end A042728

/-!
# A042729: Denominators of continued fraction convergents to sqrt(894).

The programs for A042729, the canonical program `A042729.P11008414076753163978` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042729 has offset 0).

The definition of A042729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042729.P11008414076753163978

`ogf((1+x+9x^2+10x^3-9x^4+x^5-x^6)/(1-598x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042729

/-- `ogf((1+x+9x^2+10x^3-9x^4+x^5-x^6)/(1-598x^4+x^8))` -/
def P11008414076753163978.Spec : Prop :=
  ∀ n, P11008414076753163978.a n = A042729 n

theorem P11008414076753163978.correct : P11008414076753163978.Spec := by
  intro n
  simp only [A042729]

end A042729

/-! ## A042729.P4489380747731809234

`A222235(A041753(n))`
-/

namespace A042729.P4489380747731809234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A041753 n).toNat

end

end A042729.P4489380747731809234

namespace A042729

/-- `A222235(A041753(n))` -/
def P4489380747731809234.Spec : Prop :=
  ∀ n, P4489380747731809234.a n = A042729 n

end A042729

/-! ## A042729.P4306504250505431665

`A005843(A041753(n))-A041177(n)`
-/

namespace A042729.P4306504250505431665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A041753 n).toNat - A041177 n

end

end A042729.P4306504250505431665

namespace A042729

/-- `A005843(A041753(n))-A041177(n)` -/
def P4306504250505431665.Spec : Prop :=
  ∀ n, P4306504250505431665.a n = A042729 n

end A042729

/-!
# A042730: Numerators of continued fraction convergents to sqrt(895).

The programs for A042730, the canonical program `A042730.P17451839292188764674` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042730 has offset 0).

The definition of A042730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042730.P17451839292188764674

`ogf((29+30x+329x^2+359x^3+329x^4-30x^5+29x^6-x^7)/(1-718x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042730

/-- `ogf((29+30x+329x^2+359x^3+329x^4-30x^5+29x^6-x^7)/(1-718x^4+x^8))` -/
def P17451839292188764674.Spec : Prop :=
  ∀ n, P17451839292188764674.a n = A042730 n

theorem P17451839292188764674.correct : P17451839292188764674.Spec := by
  intro n
  simp only [A042730]

end A042730

/-!
# A042731: Denominators of continued fraction convergents to sqrt(895).

The programs for A042731, the canonical program `A042731.P6667880933139506347` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042731 has offset 0).

The definition of A042731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042731.P6667880933139506347

`ogf((1+x+11x^2+12x^3-11x^4+x^5-x^6)/(1-718x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042731

/-- `ogf((1+x+11x^2+12x^3-11x^4+x^5-x^6)/(1-718x^4+x^8))` -/
def P6667880933139506347.Spec : Prop :=
  ∀ n, P6667880933139506347.a n = A042731 n

theorem P6667880933139506347.correct : P6667880933139506347.Spec := by
  intro n
  simp only [A042731]

end A042731

/-!
# A042732: Numerators of continued fraction convergents to sqrt(896).

The programs for A042732, the canonical program `A042732.P15455408135030896095` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042732 has offset 0).

The definition of A042732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042732.P15455408135030896095

`ogf((29+30x+419x^2+449x^3+419x^4-30x^5+29x^6-x^7)/(1-898x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042732

/-- `ogf((29+30x+419x^2+449x^3+419x^4-30x^5+29x^6-x^7)/(1-898x^4+x^8))` -/
def P15455408135030896095.Spec : Prop :=
  ∀ n, P15455408135030896095.a n = A042732 n

theorem P15455408135030896095.correct : P15455408135030896095.Spec := by
  intro n
  simp only [A042732]

end A042732

/-!
# A042733: Denominators of continued fraction convergents to sqrt(896).

The programs for A042733, the canonical program `A042733.P1833611758091391076` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042733 has offset 0).

The definition of A042733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042733.P1833611758091391076

`ogf((1+x+14x^2+15x^3-14x^4+x^5-x^6)/(1-898x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042733

/-- `ogf((1+x+14x^2+15x^3-14x^4+x^5-x^6)/(1-898x^4+x^8))` -/
def P1833611758091391076.Spec : Prop :=
  ∀ n, P1833611758091391076.a n = A042733 n

theorem P1833611758091391076.correct : P1833611758091391076.Spec := by
  intro n
  simp only [A042733]

end A042733

/-!
# A042735: Denominators of continued fraction convergents to sqrt(897).

The programs for A042735, there is no canonical definition to state claims against.
-/

/-! ## A042735.P9993398678695147308

`A004396(A042737(n))`
-/

namespace A042735.P9993398678695147308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A042737 n).toNat

end

end A042735.P9993398678695147308

/-!
# A042737: Denominators of continued fraction convergents to sqrt(898).

The programs for A042737, there is no canonical definition to state claims against.
-/

/-! ## A042737.P11403960367472033389

`A004525(A042739(n))`
-/

namespace A042737.P11403960367472033389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042739 n).toNat

end

end A042737.P11403960367472033389

/-!
# A042738: Numerators of continued fraction convergents to sqrt(899).

The programs for A042738, the canonical program `A042738.P10383103021329501600` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042738 has offset 0).

The definition of A042738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042738.P10383103021329501600

`ogf((29+30x+29x^2-x^3)/(1-60x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042738

/-- `ogf((29+30x+29x^2-x^3)/(1-60x^2+x^4))` -/
def P10383103021329501600.Spec : Prop :=
  ∀ n, P10383103021329501600.a n = A042738 n

theorem P10383103021329501600.correct : P10383103021329501600.Spec := by
  intro n
  simp only [A042738]

end A042738

/-!
# A042739: Denominators of continued fraction convergents to sqrt(899).

The programs for A042739, the canonical program `A042739.P4935654189443537217` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042739 has offset 0).

The definition of A042739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042739.P4935654189443537217

`ogf((1+x-x^2)/(1-60x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042739

/-- `ogf((1+x-x^2)/(1-60x^2+x^4))` -/
def P4935654189443537217.Spec : Prop :=
  ∀ n, P4935654189443537217.a n = A042739 n

theorem P4935654189443537217.correct : P4935654189443537217.Spec := by
  intro n
  simp only [A042739]

end A042739

/-!
# A042740: Numerators of continued fraction convergents to sqrt(901).

The programs for A042740, the canonical program `A042740.P3647076959976868880` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042740 has offset 0).

The definition of A042740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042740.P3647076959976868880

`ogf((30+x)/(1-60x-x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042740

/-- `ogf((30+x)/(1-60x-x^2))` -/
def P3647076959976868880.Spec : Prop :=
  ∀ n, P3647076959976868880.a n = A042740 n

theorem P3647076959976868880.correct : P3647076959976868880.Spec := by
  intro n
  simp only [A042740]

end A042740

/-!
# A042741: Denominators of continued fraction convergents to sqrt(901).

The programs for A042741, the canonical program `A042741.P12330609725824249185` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042741 has offset 0).

The definition of A042741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042741.P9828959934656910079

`ogf(1/(1-60x-x^2))`
-/

namespace A042741.P9828959934656910079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -60, -1] n

end

end A042741.P9828959934656910079

namespace A042741

/-- `ogf(1/(1-60x-x^2))` -/
def P9828959934656910079.Spec : Prop :=
  ∀ n, P9828959934656910079.a n = A042741 n

end A042741

/-! ## A042741.P12330609725824249185

`60*a(n-1)+a(n-2)` with `a(0)=1, a(1)=60`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042741

/-- `60*a(n-1)+a(n-2)` -/
def P12330609725824249185.Spec : Prop :=
  ∀ n, (P12330609725824249185.a n : ℤ) = A042741 n

theorem P12330609725824249185.correct : P12330609725824249185.Spec := by
  intro n
  simp only [A042741]

end A042741

/-! ## A042741.P9773453927506819268

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=60`
-/

namespace A042741.P9773453927506819268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 60] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042741.P9773453927506819268

namespace A042741

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P9773453927506819268.Spec : Prop :=
  ∀ n, P9773453927506819268.a n = (A042741 n : ℚ)

end A042741

/-! ## A042741.P12753010939910969410

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=60`
-/

namespace A042741.P12753010939910969410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 60] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042741.P12753010939910969410

namespace A042741

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P12753010939910969410.Spec : Prop :=
  ∀ n, P12753010939910969410.a n = A042741 n

end A042741

/-!
# A042746: Numerators of continued fraction convergents to sqrt(904).

The programs for A042746, the canonical program `A042746.P2168561501877356535` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042746 has offset 0).

The definition of A042746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042746.P2168561501877356535

`ogf((30+451x+30x^2-x^3)/(1-902x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042746

/-- `ogf((30+451x+30x^2-x^3)/(1-902x^2+x^4))` -/
def P2168561501877356535.Spec : Prop :=
  ∀ n, P2168561501877356535.a n = A042746 n

theorem P2168561501877356535.correct : P2168561501877356535.Spec := by
  intro n
  simp only [A042746]

end A042746

/-! ## A042746.P2894549392636492941

`gcd(2, n)*A041420(n)`
-/

namespace A042746.P2894549392636492941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041420 n

end

end A042746.P2894549392636492941

namespace A042746

/-- `gcd(2, n)*A041420(n)` -/
def P2894549392636492941.Spec : Prop :=
  ∀ n, P2894549392636492941.a n = A042746 n

end A042746

/-! ## A042746.P14724839727230676078

`A000034(n+1)*A041420(n)`
-/

namespace A042746.P14724839727230676078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041420 n

end

end A042746.P14724839727230676078

namespace A042746

/-- `A000034(n+1)*A041420(n)` -/
def P14724839727230676078.Spec : Prop :=
  ∀ n, P14724839727230676078.a n = A042746 n

end A042746

/-! ## A042746.P5945546303884128846

`(A176059(n)-1)*A041420(n)`
-/

namespace A042746.P5945546303884128846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176059 n - 1) * A041420 n

end

end A042746.P5945546303884128846

namespace A042746

/-- `(A176059(n)-1)*A041420(n)` -/
def P5945546303884128846.Spec : Prop :=
  ∀ n, P5945546303884128846.a n = A042746 n

end A042746

/-! ## A042746.P15906389637619876451

`2/A000034(n)*A041420(n)`
-/

namespace A042746.P15906389637619876451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041420 n : ℚ)

end

end A042746.P15906389637619876451

namespace A042746

/-- `2/A000034(n)*A041420(n)` -/
def P15906389637619876451.Spec : Prop :=
  ∀ n, P15906389637619876451.a n = (A042746 n : ℚ)

end A042746

/-! ## A042746.P10410105735015103743

`lcm(A000034(n+3), A041420(n))`
-/

namespace A042746.P10410105735015103743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (n + 3)) (A041420 n)

end

end A042746.P10410105735015103743

namespace A042746

/-- `lcm(A000034(n+3), A041420(n))` -/
def P10410105735015103743.Spec : Prop :=
  ∀ n, (P10410105735015103743.a n : ℤ) = A042746 n

end A042746

/-! ## A042746.P2764710788704555246

`A027642(A296306(n+1))*A041420(n)`
-/

namespace A042746.P2764710788704555246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A296306 (n + 1)).toNat * A041420 n

end

end A042746.P2764710788704555246

namespace A042746

/-- `A027642(A296306(n+1))*A041420(n)` -/
def P2764710788704555246.Spec : Prop :=
  ∀ n, P2764710788704555246.a n = A042746 n

end A042746

/-!
# A042747: Denominators of continued fraction convergents to sqrt(904).

The programs for A042747, the canonical program `A042747.P18291991228973405176` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042747 has offset 0).

The definition of A042747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042747.P18291991228973405176

`ogf((1+15x-x^2)/(1-902x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042747

/-- `ogf((1+15x-x^2)/(1-902x^2+x^4))` -/
def P18291991228973405176.Spec : Prop :=
  ∀ n, P18291991228973405176.a n = A042747 n

theorem P18291991228973405176.correct : P18291991228973405176.Spec := by
  intro n
  simp only [A042747]

end A042747

/-! ## A042747.P17575600948150992357

`A041421(n)/gcd(2, n+1)`
-/

namespace A042747.P17575600948150992357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A042747.P17575600948150992357

namespace A042747

/-- `A041421(n)/gcd(2, n+1)` -/
def P17575600948150992357.Spec : Prop :=
  ∀ n, P17575600948150992357.a n = (A042747 n : ℚ)

end A042747

/-! ## A042747.P4643592763146001661

`A041421(n)/A000034(n)`
-/

namespace A042747.P4643592763146001661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (A000034 n : ℚ)

end

end A042747.P4643592763146001661

namespace A042747

/-- `A041421(n)/A000034(n)` -/
def P4643592763146001661.Spec : Prop :=
  ∀ n, P4643592763146001661.a n = (A042747 n : ℚ)

end A042747

/-! ## A042747.P4260922188398077220

`A041421(n)/A010673(n)!`
-/

namespace A042747.P4260922188398077220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A042747.P4260922188398077220

namespace A042747

/-- `A041421(n)/A010673(n)!` -/
def P4260922188398077220.Spec : Prop :=
  ∀ n, P4260922188398077220.a n = (A042747 n : ℚ)

end A042747

/-! ## A042747.P11590986540618905245

`A041421(n)/A000079(n)%3`
-/

namespace A042747.P11590986540618905245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (Int.tmod (A000079 n) 3 : ℚ)

end

end A042747.P11590986540618905245

namespace A042747

/-- `A041421(n)/A000079(n)%3` -/
def P11590986540618905245.Spec : Prop :=
  ∀ n, P11590986540618905245.a n = (A042747 n : ℚ)

end A042747

/-! ## A042747.P15145567753553576216

`A041421(n)/A006519(n²+1)`
-/

namespace A042747.P15145567753553576216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A042747.P15145567753553576216

namespace A042747

/-- `A041421(n)/A006519(n²+1)` -/
def P15145567753553576216.Spec : Prop :=
  ∀ n, P15145567753553576216.a n = (A042747 n : ℚ)

end A042747

/-! ## A042747.P4816477685879236934

`A041421(n)/A002186(A016921(n))`
-/

namespace A042747.P4816477685879236934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (A002186 (A016921 n).toNat : ℚ)

end

end A042747.P4816477685879236934

namespace A042747

/-- `A041421(n)/A002186(A016921(n))` -/
def P4816477685879236934.Spec : Prop :=
  ∀ n, P4816477685879236934.a n = (A042747 n : ℚ)

end A042747

/-! ## A042747.P2953414350071120246

`A041421(n)/A020639(A006519(n+1))`
-/

namespace A042747.P2953414350071120246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (A020639 (A006519 (n + 1)).toNat : ℚ)

end

end A042747.P2953414350071120246

namespace A042747

/-- `A041421(n)/A020639(A006519(n+1))` -/
def P2953414350071120246.Spec : Prop :=
  ∀ n, P2953414350071120246.a n = (A042747 n : ℚ)

end A042747

/-!
# A042748: Numerators of continued fraction convergents to sqrt(905).

The programs for A042748, the canonical program `A042748.P2272936892944379568` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042748 has offset 0).

The definition of A042748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042748.P2272936892944379568

`ogf((30+361x+30x^2-x^3)/(1-722x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042748

/-- `ogf((30+361x+30x^2-x^3)/(1-722x^2+x^4))` -/
def P2272936892944379568.Spec : Prop :=
  ∀ n, P2272936892944379568.a n = A042748 n

theorem P2272936892944379568.correct : P2272936892944379568.Spec := by
  intro n
  simp only [A042748]

end A042748

/-!
# A042749: Denominators of continued fraction convergents to sqrt(905).

The programs for A042749, the canonical program `A042749.P11869466294600339281` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042749 has offset 0).

The definition of A042749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042749.P11869466294600339281

`ogf((1+12x-x^2)/(1-722x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042749

/-- `ogf((1+12x-x^2)/(1-722x^2+x^4))` -/
def P11869466294600339281.Spec : Prop :=
  ∀ n, P11869466294600339281.a n = A042749 n

theorem P11869466294600339281.correct : P11869466294600339281.Spec := by
  intro n
  simp only [A042749]

end A042749

/-!
# A042750: Numerators of continued fraction convergents to sqrt(906).

The programs for A042750, the canonical program `A042750.P2362557033920343942` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042750 has offset 0).

The definition of A042750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042750.P2362557033920343942

`ogf((30+301x+30x^2-x^3)/(1-602x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042750

/-- `ogf((30+301x+30x^2-x^3)/(1-602x^2+x^4))` -/
def P2362557033920343942.Spec : Prop :=
  ∀ n, P2362557033920343942.a n = A042750 n

theorem P2362557033920343942.correct : P2362557033920343942.Spec := by
  intro n
  simp only [A042750]

end A042750

/-!
# A042751: Denominators of continued fraction convergents to sqrt(906).

The programs for A042751, the canonical program `A042751.P14401845762378358627` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042751 has offset 0).

The definition of A042751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042751.P14401845762378358627

`ogf((1+10x-x^2)/(1-602x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042751

/-- `ogf((1+10x-x^2)/(1-602x^2+x^4))` -/
def P14401845762378358627.Spec : Prop :=
  ∀ n, P14401845762378358627.a n = A042751 n

theorem P14401845762378358627.correct : P14401845762378358627.Spec := by
  intro n
  simp only [A042751]

end A042751

/-!
# A042753: Denominators of continued fraction convergents to sqrt(907).

The programs for A042753, there is no canonical definition to state claims against.
-/

/-! ## A042753.P15331904504068906508

`A004736(A147654(n+1)+A002063(n))`
-/

namespace A042753.P15331904504068906508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A147654 (n + 1) + A002063 n).toNat

end

end A042753.P15331904504068906508

/-!
# A042758: Numerators of continued fraction convergents to sqrt(910).

The programs for A042758, the canonical program `A042758.P4011915133367847243` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042758 has offset 0).

The definition of A042758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042758.P4011915133367847243

`ogf((30+181x+30x^2-x^3)/(1-362x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042758

/-- `ogf((30+181x+30x^2-x^3)/(1-362x^2+x^4))` -/
def P4011915133367847243.Spec : Prop :=
  ∀ n, P4011915133367847243.a n = A042758 n

theorem P4011915133367847243.correct : P4011915133367847243.Spec := by
  intro n
  simp only [A042758]

end A042758

/-!
# A042759: Denominators of continued fraction convergents to sqrt(910).

The programs for A042759, the canonical program `A042759.P1432575024351135862` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042759 has offset 0).

The definition of A042759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042759.P1432575024351135862

`ogf((1+6x-x^2)/(1-362x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042759

/-- `ogf((1+6x-x^2)/(1-362x^2+x^4))` -/
def P1432575024351135862.Spec : Prop :=
  ∀ n, P1432575024351135862.a n = A042759 n

theorem P1432575024351135862.correct : P1432575024351135862.Spec := by
  intro n
  simp only [A042759]

end A042759

/-!
# A042762: Numerators of continued fraction convergents to sqrt(912).

The programs for A042762, the canonical program `A042762.P4576092505031740076` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042762 has offset 0).

The definition of A042762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042762.P4576092505031740076

`ogf((30+151x+30x^2-x^3)/(1-302x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042762

/-- `ogf((30+151x+30x^2-x^3)/(1-302x^2+x^4))` -/
def P4576092505031740076.Spec : Prop :=
  ∀ n, P4576092505031740076.a n = A042762 n

theorem P4576092505031740076.correct : P4576092505031740076.Spec := by
  intro n
  simp only [A042762]

end A042762

/-! ## A042762.P5788275092567790436

`gcd(2, n)*A041424(n)`
-/

namespace A042762.P5788275092567790436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041424 n

end

end A042762.P5788275092567790436

namespace A042762

/-- `gcd(2, n)*A041424(n)` -/
def P5788275092567790436.Spec : Prop :=
  ∀ n, P5788275092567790436.a n = A042762 n

end A042762

/-! ## A042762.P9587069452980465549

`Δ[A007494(n)]*A041424(n)`
-/

namespace A042762.P9587069452980465549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041424 n

end

end A042762.P9587069452980465549

namespace A042762

/-- `Δ[A007494(n)]*A041424(n)` -/
def P9587069452980465549.Spec : Prop :=
  ∀ n, P9587069452980465549.a n = A042762 n

end A042762

/-! ## A042762.P9032084987019406029

`lcm(Δ[A080412(n)], A041424(n))`
-/

namespace A042762.P9032084987019406029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A041424 n)

end

end A042762.P9032084987019406029

namespace A042762

/-- `lcm(Δ[A080412(n)], A041424(n))` -/
def P9032084987019406029.Spec : Prop :=
  ∀ n, (P9032084987019406029.a n : ℤ) = A042762 n

end A042762

/-! ## A042762.P10396968223280714923

`A000034(n+1)*A041424(n)`
-/

namespace A042762.P10396968223280714923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041424 n

end

end A042762.P10396968223280714923

namespace A042762

/-- `A000034(n+1)*A041424(n)` -/
def P10396968223280714923.Spec : Prop :=
  ∀ n, P10396968223280714923.a n = A042762 n

end A042762

/-! ## A042762.P10134045520198277588

`2/A000034(n)*A041424(n)`
-/

namespace A042762.P10134045520198277588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041424 n : ℚ)

end

end A042762.P10134045520198277588

namespace A042762

/-- `2/A000034(n)*A041424(n)` -/
def P10134045520198277588.Spec : Prop :=
  ∀ n, P10134045520198277588.a n = (A042762 n : ℚ)

end A042762

/-!
# A042763: Denominators of continued fraction convergents to sqrt(912).

The programs for A042763, the canonical program `A042763.P6196014884314095808` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042763 has offset 0).

The definition of A042763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042763.P6196014884314095808

`ogf((1+5x-x^2)/(1-302x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042763

/-- `ogf((1+5x-x^2)/(1-302x^2+x^4))` -/
def P6196014884314095808.Spec : Prop :=
  ∀ n, P6196014884314095808.a n = A042763 n

theorem P6196014884314095808.correct : P6196014884314095808.Spec := by
  intro n
  simp only [A042763]

end A042763

/-! ## A042763.P3578576215320482978

`A041425(n)/(1+n%2)`
-/

namespace A042763.P3578576215320482978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / ((1 + n % 2 : ℕ) : ℚ)

end

end A042763.P3578576215320482978

namespace A042763

/-- `A041425(n)/(1+n%2)` -/
def P3578576215320482978.Spec : Prop :=
  ∀ n, P3578576215320482978.a n = (A042763 n : ℚ)

end A042763

/-! ## A042763.P4962426154026081105

`A041425(n)/A000034(n)`
-/

namespace A042763.P4962426154026081105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (A000034 n : ℚ)

end

end A042763.P4962426154026081105

namespace A042763

/-- `A041425(n)/A000034(n)` -/
def P4962426154026081105.Spec : Prop :=
  ∀ n, P4962426154026081105.a n = (A042763 n : ℚ)

end A042763

/-! ## A042763.P3730291586988353631

`A041425(n)/A010673(n)!`
-/

namespace A042763.P3730291586988353631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A042763.P3730291586988353631

namespace A042763

/-- `A041425(n)/A010673(n)!` -/
def P3730291586988353631.Spec : Prop :=
  ∀ n, P3730291586988353631.a n = (A042763 n : ℚ)

end A042763

/-! ## A042763.P1504088863238426317

`A041425(n)/(A000035(n)+1)`
-/

namespace A042763.P1504088863238426317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A042763.P1504088863238426317

namespace A042763

/-- `A041425(n)/(A000035(n)+1)` -/
def P1504088863238426317.Spec : Prop :=
  ∀ n, P1504088863238426317.a n = (A042763 n : ℚ)

end A042763

/-! ## A042763.P4551768217575317494

`A041425(n)/A040001(n+1)`
-/

namespace A042763.P4551768217575317494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A042763.P4551768217575317494

namespace A042763

/-- `A041425(n)/A040001(n+1)` -/
def P4551768217575317494.Spec : Prop :=
  ∀ n, P4551768217575317494.a n = (A042763 n : ℚ)

end A042763

/-! ## A042763.P6280069485731904746

`A041425(n)/A134451(n+1)`
-/

namespace A042763.P6280069485731904746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (A134451 (n + 1) : ℚ)

end

end A042763.P6280069485731904746

namespace A042763

/-- `A041425(n)/A134451(n+1)` -/
def P6280069485731904746.Spec : Prop :=
  ∀ n, P6280069485731904746.a n = (A042763 n : ℚ)

end A042763

/-! ## A042763.P12349060551567500992

`A041425(n)/gcd(2, A016777(n))`
-/

namespace A042763.P12349060551567500992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (Int.gcd 2 (A016777 n) : ℚ)

end

end A042763.P12349060551567500992

namespace A042763

/-- `A041425(n)/gcd(2, A016777(n))` -/
def P12349060551567500992.Spec : Prop :=
  ∀ n, P12349060551567500992.a n = (A042763 n : ℚ)

end A042763

/-! ## A042763.P17953578584238635899

`A041425(n)/(Δ[A008619(n)]+1)`
-/

namespace A042763.P17953578584238635899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A042763.P17953578584238635899

namespace A042763

/-- `A041425(n)/(Δ[A008619(n)]+1)` -/
def P17953578584238635899.Spec : Prop :=
  ∀ n, P17953578584238635899.a n = (A042763 n : ℚ)

end A042763

/-! ## A042763.P10418695588930221740

`A041425(n)/Δ[A008619(A016789(n))]`
-/

namespace A042763.P10418695588930221740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016789 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042763.P10418695588930221740

namespace A042763

/-- `A041425(n)/Δ[A008619(A016789(n))]` -/
def P10418695588930221740.Spec : Prop :=
  ∀ n, P10418695588930221740.a n = (A042763 n : ℚ)

end A042763

/-!
# A042768: Numerators of continued fraction convergents to sqrt(915).

The programs for A042768, the canonical program `A042768.P256653409812364680` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042768 has offset 0).

The definition of A042768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042768.P256653409812364680

`ogf((30+121x+30x^2-x^3)/(1-242x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042768

/-- `ogf((30+121x+30x^2-x^3)/(1-242x^2+x^4))` -/
def P256653409812364680.Spec : Prop :=
  ∀ n, P256653409812364680.a n = A042768 n

theorem P256653409812364680.correct : P256653409812364680.Spec := by
  intro n
  simp only [A042768]

end A042768

/-!
# A042769: Denominators of continued fraction convergents to sqrt(915).

The programs for A042769, the canonical program `A042769.P13970930107702555678` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042769 has offset 0).

The definition of A042769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042769.P13970930107702555678

`ogf((1+4x-x^2)/(1-242x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042769

/-- `ogf((1+4x-x^2)/(1-242x^2+x^4))` -/
def P13970930107702555678.Spec : Prop :=
  ∀ n, P13970930107702555678.a n = A042769 n

theorem P13970930107702555678.correct : P13970930107702555678.Spec := by
  intro n
  simp only [A042769]

end A042769

/-!
# A042771: Denominators of continued fraction convergents to sqrt(916).

The programs for A042771, there is no canonical definition to state claims against.
-/

/-! ## A042771.P5584075737978799470

`A033182(A042770(n)-(n+1)²)`
-/

namespace A042771.P5584075737978799470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A042770 n - ((n + 1) ^ 2 : ℤ)).toNat

end

end A042771.P5584075737978799470

/-!
# A042778: Numerators of continued fraction convergents to sqrt(920).

The programs for A042778, the canonical program `A042778.P7223454161836059764` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042778 has offset 0).

The definition of A042778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042778.P7223454161836059764

`ogf((30+91x+30x^2-x^3)/(1-182x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042778

/-- `ogf((30+91x+30x^2-x^3)/(1-182x^2+x^4))` -/
def P7223454161836059764.Spec : Prop :=
  ∀ n, P7223454161836059764.a n = A042778 n

theorem P7223454161836059764.correct : P7223454161836059764.Spec := by
  intro n
  simp only [A042778]

end A042778

/-! ## A042778.P2994139526220645354

`gcd(2, n)*A041428(n)`
-/

namespace A042778.P2994139526220645354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041428 n

end

end A042778.P2994139526220645354

namespace A042778

/-- `gcd(2, n)*A041428(n)` -/
def P2994139526220645354.Spec : Prop :=
  ∀ n, P2994139526220645354.a n = A042778 n

end A042778

/-! ## A042778.P13651439039713192574

`Δ[A007494(n)]*A041428(n)`
-/

namespace A042778.P13651439039713192574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041428 n

end

end A042778.P13651439039713192574

namespace A042778

/-- `Δ[A007494(n)]*A041428(n)` -/
def P13651439039713192574.Spec : Prop :=
  ∀ n, P13651439039713192574.a n = A042778 n

end A042778

/-! ## A042778.P10112542265061511563

`runs[A343229(n)]*A041428(n)`
-/

namespace A042778.P10112542265061511563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) * A041428 n

end

end A042778.P10112542265061511563

namespace A042778

/-- `runs[A343229(n)]*A041428(n)` -/
def P10112542265061511563.Spec : Prop :=
  ∀ n, P10112542265061511563.a n = A042778 n

end A042778

/-! ## A042778.P14696280444502341795

`A000034(n+1)*A041428(n)`
-/

namespace A042778.P14696280444502341795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041428 n

end

end A042778.P14696280444502341795

namespace A042778

/-- `A000034(n+1)*A041428(n)` -/
def P14696280444502341795.Spec : Prop :=
  ∀ n, P14696280444502341795.a n = A042778 n

end A042778

/-! ## A042778.P7997949754010724482

`2/A000034(n)*A041428(n)`
-/

namespace A042778.P7997949754010724482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041428 n : ℚ)

end

end A042778.P7997949754010724482

namespace A042778

/-- `2/A000034(n)*A041428(n)` -/
def P7997949754010724482.Spec : Prop :=
  ∀ n, P7997949754010724482.a n = (A042778 n : ℚ)

end A042778

/-! ## A042778.P12752588816377826791

`A006519(n²+2)*A041428(n)`
-/

namespace A042778.P12752588816377826791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 2) * A041428 n

end

end A042778.P12752588816377826791

namespace A042778

/-- `A006519(n²+2)*A041428(n)` -/
def P12752588816377826791.Spec : Prop :=
  ∀ n, P12752588816377826791.a n = A042778 n

end A042778

/-!
# A042779: Denominators of continued fraction convergents to sqrt(920).

The programs for A042779, the canonical program `A042779.P12234492336992913476` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042779 has offset 0).

The definition of A042779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042779.P14118023975728742875

`ogf((1+3x-x^2)/(1-182x^2+x^4))`
-/

namespace A042779.P14118023975728742875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, 0, -182, 0, 1] n

end

end A042779.P14118023975728742875

namespace A042779

/-- `ogf((1+3x-x^2)/(1-182x^2+x^4))` -/
def P14118023975728742875.Spec : Prop :=
  ∀ n, P14118023975728742875.a n = A042779 n

end A042779

/-! ## A042779.P12234492336992913476

`182*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=181, a(3)=546`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042779

/-- `182*a(n-2)-a(n-4)` -/
def P12234492336992913476.Spec : Prop :=
  ∀ n, P12234492336992913476.a n = A042779 n

theorem P12234492336992913476.correct : P12234492336992913476.Spec := by
  intro n
  simp only [A042779]

end A042779

/-! ## A042779.P12226534694118818005

`A041429(n)/A000034(n)`
-/

namespace A042779.P12226534694118818005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041429 n : ℚ) / (A000034 n : ℚ)

end

end A042779.P12226534694118818005

namespace A042779

/-- `A041429(n)/A000034(n)` -/
def P12226534694118818005.Spec : Prop :=
  ∀ n, P12226534694118818005.a n = (A042779 n : ℚ)

end A042779

/-! ## A042779.P531532904076770438

`A041429(n)/∑[A165326(n)]`
-/

namespace A042779.P531532904076770438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041429 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A042779.P531532904076770438

namespace A042779

/-- `A041429(n)/∑[A165326(n)]` -/
def P531532904076770438.Spec : Prop :=
  ∀ n, P531532904076770438.a n = (A042779 n : ℚ)

end A042779

/-! ## A042779.P17751636669734450176

`A041429(n)/Δ[A032766(n)]`
-/

namespace A042779.P17751636669734450176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041429 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042779.P17751636669734450176

namespace A042779

/-- `A041429(n)/Δ[A032766(n)]` -/
def P17751636669734450176.Spec : Prop :=
  ∀ n, P17751636669734450176.a n = (A042779 n : ℚ)

end A042779

/-! ## A042779.P10084088391726071550

`A041429(n)/A084642(n+2)`
-/

namespace A042779.P10084088391726071550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041429 n : ℚ) / (A084642 (n + 2) : ℚ)

end

end A042779.P10084088391726071550

namespace A042779

/-- `A041429(n)/A084642(n+2)` -/
def P10084088391726071550.Spec : Prop :=
  ∀ n, P10084088391726071550.a n = (A042779 n : ℚ)

end A042779

/-! ## A042779.P5984662530888381499

`A041429(n)/A286520(or(62, n))`
-/

namespace A042779.P5984662530888381499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041429 n : ℚ) / (A286520 (Nat.lor 62 n) : ℚ)

end

end A042779.P5984662530888381499

namespace A042779

/-- `A041429(n)/A286520(or(62, n))` -/
def P5984662530888381499.Spec : Prop :=
  ∀ n, P5984662530888381499.a n = (A042779 n : ℚ)

end A042779

/-!
# A042781: Denominators of continued fraction convergents to sqrt(921).

The programs for A042781, there is no canonical definition to state claims against.
-/

/-! ## A042781.P922132619330685380

`A333610(n)+A323376(A191802(n))`
-/

namespace A042781.P922132619330685380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333610 n + A323376 (A191802 n).toNat

end

end A042781.P922132619330685380

/-!
# A042783: Denominators of continued fraction convergents to sqrt(922).

The programs for A042783, there is no canonical definition to state claims against.
-/

/-! ## A042783.P17744360962755095759

`A193917(2^n)+floor((n+1)/ϕ)`
-/

namespace A042783.P17744360962755095759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193917 (2 ^ n) + ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

end

end A042783.P17744360962755095759

/-!
# A042789: Denominators of continued fraction convergents to sqrt(925).

The programs for A042789, there is no canonical definition to state claims against.
-/

/-! ## A042789.P581668638811267131

`lcm(A132807(n), A140356(A132807(n)))`
-/

namespace A042789.P581668638811267131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132807 n) (A140356 (A132807 n).toNat)

end

end A042789.P581668638811267131

/-!
# A042791: Denominators of continued fraction convergents to sqrt(926).

The programs for A042791, there is no canonical definition to state claims against.
-/

/-! ## A042791.P1368619066192685354

`A302545(A248780(2*n+3))+A037861(A049385(n+5)+n)`
-/

namespace A042791.P1368619066192685354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302545 (A248780 (2 * n + 3)).toNat + A037861 (A049385 (n + 5) + (n : ℤ)).toNat

end

end A042791.P1368619066192685354

/-!
# A042793: Denominators of continued fraction convergents to sqrt(927).

The programs for A042793, there is no canonical definition to state claims against.
-/

/-! ## A042793.P4832307110044845906

`A256189(A256181(n+1))-A241840(n+1)`
-/

namespace A042793.P4832307110044845906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256189 (A256181 (n + 1)).toNat - A241840 (n + 1)

end

end A042793.P4832307110044845906

/-!
# A042797: Denominators of continued fraction convergents to sqrt(929).

The programs for A042797, there is no canonical definition to state claims against.
-/

/-! ## A042797.P6466450657124298950

`xor(A004086(A335786(n+1)), A221838(n+1))`
-/

namespace A042797.P6466450657124298950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004086 (A335786 (n + 1)).toNat) (A221838 (n + 1))

end

end A042797.P6466450657124298950

/-!
# A042798: Numerators of continued fraction convergents to sqrt(930).

The programs for A042798, the canonical program `A042798.P18255868882895103203` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042798 has offset 0).

The definition of A042798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042798.P18255868882895103203

`ogf((30+61x+30x^2-x^3)/(1-122x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042798

/-- `ogf((30+61x+30x^2-x^3)/(1-122x^2+x^4))` -/
def P18255868882895103203.Spec : Prop :=
  ∀ n, P18255868882895103203.a n = A042798 n

theorem P18255868882895103203.correct : P18255868882895103203.Spec := by
  intro n
  simp only [A042798]

end A042798

/-!
# A042799: Denominators of continued fraction convergents to sqrt(930).

The programs for A042799, the canonical program `A042799.P10197429628805452537` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042799 has offset 0).

The definition of A042799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042799.P5819494638975686944

`ogf((1+2x-x^2)/(1-122x^2+x^4))`
-/

namespace A042799.P5819494638975686944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -122, 0, 1] n

end

end A042799.P5819494638975686944

namespace A042799

/-- `ogf((1+2x-x^2)/(1-122x^2+x^4))` -/
def P5819494638975686944.Spec : Prop :=
  ∀ n, P5819494638975686944.a n = A042799 n

end A042799

/-! ## A042799.P10197429628805452537

`122*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=121, a(3)=244`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042799

/-- `122*a(n-2)-a(n-4)` -/
def P10197429628805452537.Spec : Prop :=
  ∀ n, P10197429628805452537.a n = A042799 n

theorem P10197429628805452537.correct : P10197429628805452537.Spec := by
  intro n
  simp only [A042799]

end A042799

