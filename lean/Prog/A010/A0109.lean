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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A010900: Pisot sequence E(4,13): a(n) = floor( a(n-1)^2/a(n-2) + 1/2 ).

The programs for A010900, the canonical program `A010900.P11569226931228387950` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010900 has offset 0).

The definition of A010900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010900.P11569226931228387950`, by `A010900.P11569226931228387950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010900.P11569226931228387950

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=4, a(1)=13`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010900

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P11569226931228387950.Spec : Prop :=
  ∀ n, P11569226931228387950.a n = A010900 n

theorem P11569226931228387950.correct : P11569226931228387950.Spec := by
  intro n
  simp only [A010900]

end A010900

/-! ## A010900.P16664713134700391259

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=13`
-/

namespace A010900.P16664713134700391259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A010900.P16664713134700391259

namespace A010900

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P16664713134700391259.Spec : Prop :=
  ∀ n, P16664713134700391259.a n = A010900 n

end A010900

/-! ## A010900.P5345373536412480142

`round(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=13`
-/

namespace A010900.P5345373536412480142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A010900.P5345373536412480142

namespace A010900

/-- `round(a(n-1)²/a(n-2))` -/
def P5345373536412480142.Spec : Prop :=
  ∀ n, P5345373536412480142.a n = A010900 n

end A010900

/-! ## A010900.P5864451432819562497

`A274952(n)+A274950(C(n, 4))`
-/

namespace A010900.P5864451432819562497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274952 n + A274950 (Nat.choose n 4)

end

end A010900.P5864451432819562497

namespace A010900

/-- `A274952(n)+A274950(C(n, 4))` -/
def P5864451432819562497.Spec : Prop :=
  ∀ n, P5864451432819562497.a n = A010900 n

end A010900

/-! ## A010900.P691486995522323508

`A274952(n)^A317145(A238556(n+3))`
-/

namespace A010900.P691486995522323508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274952 n : ℚ) ^ (A317145 (A238556 (n + 3)).toNat : ℤ)

end

end A010900.P691486995522323508

namespace A010900

/-- `A274952(n)^A317145(A238556(n+3))` -/
def P691486995522323508.Spec : Prop :=
  ∀ n, P691486995522323508.a n = (A010900 n : ℚ)

end A010900

/-!
# A010901: Pisot sequences E(4,7), P(4,7).

The programs for A010901, the canonical program `A010901.P6509186529477825286` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010901 has offset 0).

The definition of A010901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010901.P6509186529477825286

`2*a(n-1)-a(n-2)+a(n-3)` with `a(0)=4, a(1)=7, a(2)=12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010901

/-- `2*a(n-1)-a(n-2)+a(n-3)` -/
def P6509186529477825286.Spec : Prop :=
  ∀ n, P6509186529477825286.a n = A010901 n

theorem P6509186529477825286.correct : P6509186529477825286.Spec := by
  intro n
  simp only [A010901]

end A010901

/-! ## A010901.P15249465666411865237

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=4, a(1)=7`
-/

namespace A010901.P15249465666411865237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 7] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + (1 : ℚ) / 2⌋

end

end A010901.P15249465666411865237

namespace A010901

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P15249465666411865237.Spec : Prop :=
  ∀ n, P15249465666411865237.a n = A010901 n

end A010901

/-! ## A010901.P2266959857369567341

`ogf((4-x+2x^2)/(1-2x+x^2-x^3))`
-/

namespace A010901.P2266959857369567341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1, 2] [1, -2, 1, -1] n

end

end A010901.P2266959857369567341

namespace A010901

/-- `ogf((4-x+2x^2)/(1-2x+x^2-x^3))` -/
def P2266959857369567341.Spec : Prop :=
  ∀ n, P2266959857369567341.a n = A010901 n

end A010901

/-! ## A010901.P12398144732272806282

`record[a(n-2)-a(n-3)]` with `a(0)=4, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A010901.P12398144732272806282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0, 0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010901.P12398144732272806282

namespace A010901

/-- `record[a(n-2)-a(n-3)]` -/
def P12398144732272806282.Spec : Prop :=
  ∀ n, P12398144732272806282.a n = A010901 n

end A010901

/-! ## A010901.P4469236992622620097

`A018918(n)+1`
-/

namespace A010901.P4469236992622620097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018918 n + 1

end

end A010901.P4469236992622620097

namespace A010901

/-- `A018918(n)+1` -/
def P4469236992622620097.Spec : Prop :=
  ∀ n, P4469236992622620097.a n = A010901 n

end A010901

/-! ## A010901.P3986077674062372755

`A020736(n)-1`
-/

namespace A010901.P3986077674062372755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020736 n - 1

end

end A010901.P3986077674062372755

namespace A010901

/-- `A020736(n)-1` -/
def P3986077674062372755.Spec : Prop :=
  ∀ n, P3986077674062372755.a n = A010901 n

end A010901

/-! ## A010901.P14828209564698802138

`A005251(n+5)`
-/

namespace A010901.P14828209564698802138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 5)

end

end A010901.P14828209564698802138

namespace A010901

/-- `A005251(n+5)` -/
def P14828209564698802138.Spec : Prop :=
  ∀ n, P14828209564698802138.a n = A010901 n

end A010901

/-! ## A010901.P12741156835944549957

`A077855(n+1)+1`
-/

namespace A010901.P12741156835944549957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077855 (n + 1) + 1

end

end A010901.P12741156835944549957

namespace A010901

/-- `A077855(n+1)+1` -/
def P12741156835944549957.Spec : Prop :=
  ∀ n, P12741156835944549957.a n = A010901 n

end A010901

/-! ## A010901.P11090532099477259277

`A164001(2*(n+2))`
-/

namespace A010901.P11090532099477259277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * (n + 2))

end

end A010901.P11090532099477259277

namespace A010901

/-- `A164001(2*(n+2))` -/
def P11090532099477259277.Spec : Prop :=
  ∀ n, P11090532099477259277.a n = A010901 n

end A010901

/-! ## A010901.P16291120388977639567

`A164315(2*n)+3`
-/

namespace A010901.P16291120388977639567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (2 * n) + 3

end

end A010901.P16291120388977639567

namespace A010901

/-- `A164315(2*n)+3` -/
def P16291120388977639567.Spec : Prop :=
  ∀ n, P16291120388977639567.a n = A010901 n

end A010901

/-! ## A010901.P10247486825500512812

`A228361(2*(n+3))`
-/

namespace A010901.P10247486825500512812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (2 * (n + 3))

end

end A010901.P10247486825500512812

namespace A010901

/-- `A228361(2*(n+3))` -/
def P10247486825500512812.Spec : Prop :=
  ∀ n, P10247486825500512812.a n = A010901 n

end A010901

/-! ## A010901.P13827920019906769752

`A182097(2*(n+4))`
-/

namespace A010901.P13827920019906769752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * (n + 4))

end

end A010901.P13827920019906769752

namespace A010901

/-- `A182097(2*(n+4))` -/
def P13827920019906769752.Spec : Prop :=
  ∀ n, P13827920019906769752.a n = A010901 n

end A010901

/-! ## A010901.P6562353342845200234

`A127682(4*(n+3))`
-/

namespace A010901.P6562353342845200234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (4 * (n + 3))

end

end A010901.P6562353342845200234

namespace A010901

/-- `A127682(4*(n+3))` -/
def P6562353342845200234.Spec : Prop :=
  ∀ n, P6562353342845200234.a n = A010901 n

end A010901

/-! ## A010901.P1455717380034844222

`A134816(2*n+7)`
-/

namespace A010901.P1455717380034844222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * n + 7)

end

end A010901.P1455717380034844222

namespace A010901

/-- `A134816(2*n+7)` -/
def P1455717380034844222.Spec : Prop :=
  ∀ n, P1455717380034844222.a n = A010901 n

end A010901

/-! ## A010901.P14681083330694895129

`A000931(2*n+11)`
-/

namespace A010901.P14681083330694895129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n + 11)

end

end A010901.P14681083330694895129

namespace A010901

/-- `A000931(2*n+11)` -/
def P14681083330694895129.Spec : Prop :=
  ∀ n, P14681083330694895129.a n = A010901 n

end A010901

/-! ## A010901.P4124405373169647417

`A054405(Δ[n²])+2`
-/

namespace A010901.P4124405373169647417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A010901.P4124405373169647417

namespace A010901

/-- `A054405(Δ[n²])+2` -/
def P4124405373169647417.Spec : Prop :=
  ∀ n, P4124405373169647417.a n = A010901 n

end A010901

/-! ## A010901.P644453517762010860

`∑[A005314(n+2)]+2`
-/

namespace A010901.P644453517762010860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A010901.P644453517762010860

namespace A010901

/-- `∑[A005314(n+2)]+2` -/
def P644453517762010860.Spec : Prop :=
  ∀ n, P644453517762010860.a n = A010901 n

end A010901

/-! ## A010901.P6496499237858581372

`∑[A018908(n)-1]+2`
-/

namespace A010901.P6496499237858581372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018908 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A010901.P6496499237858581372

namespace A010901

/-- `∑[A018908(n)-1]+2` -/
def P6496499237858581372.Spec : Prop :=
  ∀ n, P6496499237858581372.a n = A010901 n

end A010901

/-! ## A010901.P13039733703016866370

`A007383(2*n+5)+1`
-/

namespace A010901.P13039733703016866370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007383 (2 * n + 5) + 1

end

end A010901.P13039733703016866370

namespace A010901

/-- `A007383(2*n+5)+1` -/
def P13039733703016866370.Spec : Prop :=
  ∀ n, P13039733703016866370.a n = A010901 n

end A010901

/-! ## A010901.P13525383315059267357

`∑[A289692(n+2)]+n+3`
-/

namespace A010901.P13525383315059267357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289692 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A010901.P13525383315059267357

namespace A010901

/-- `∑[A289692(n+2)]+n+3` -/
def P13525383315059267357.Spec : Prop :=
  ∀ n, P13525383315059267357.a n = A010901 n

end A010901

/-!
# A010902: Pisot sequence E(14,23), a(n) = floor( a(n-1)^2/a(n-2)+1/2 ).

The programs for A010902, the canonical program `A010902.P4781711516448043957` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010902 has offset 0).

The definition of A010902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010902.P4781711516448043957`, by `A010902.P4781711516448043957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010902.P4781711516448043957

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=14, a(1)=23`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010902

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P4781711516448043957.Spec : Prop :=
  ∀ n, P4781711516448043957.a n = A010902 n

theorem P4781711516448043957.correct : P4781711516448043957.Spec := by
  intro n
  simp only [A010902]

end A010902

/-! ## A010902.P8628133752748741933

`round(a(n-1)²/a(n-2))` with `a(0)=14, a(1)=23`
-/

namespace A010902.P8628133752748741933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 23] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A010902.P8628133752748741933

namespace A010902

/-- `round(a(n-1)²/a(n-2))` -/
def P8628133752748741933.Spec : Prop :=
  ∀ n, P8628133752748741933.a n = A010902 n

end A010902

/-! ## A010902.P2830118942670714158

`A036496(4*A021006(n))`
-/

namespace A010902.P2830118942670714158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 (4 * A021006 n).toNat

end

end A010902.P2830118942670714158

namespace A010902

/-- `A036496(4*A021006(n))` -/
def P2830118942670714158.Spec : Prop :=
  ∀ n, P2830118942670714158.a n = A010902 n

end A010902

/-!
# A010903: Pisot sequence E(3,13): a(n) = floor(a(n-1)^2/a(n-2) + 1/2).

The programs for A010903, the canonical program `A010903.P6320549018173423699` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010903 has offset 0).

The definition of A010903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A010903.P6320549018173423699`, by `A010903.P6320549018173423699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010903.P6466741039202606970

`5*a(n-1)-3*a(n-2)` with `a(0)=3, a(1)=13`
-/

namespace A010903.P6466741039202606970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2)

end

end A010903.P6466741039202606970

namespace A010903

/-- `5*a(n-1)-3*a(n-2)` -/
def P6466741039202606970.Spec : Prop :=
  ∀ n, P6466741039202606970.a n = A010903 n

end A010903

/-! ## A010903.P6320549018173423699

`floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=13`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010903

/-- `floor(a(n-1)²/a(n-2))` -/
def P6320549018173423699.Spec : Prop :=
  ∀ n, P6320549018173423699.a n = A010903 n

theorem P6320549018173423699.correct : P6320549018173423699.Spec := by
  intro n
  simp only [A010903]

end A010903

/-! ## A010903.P4116262960507745335

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=3, a(1)=13`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010903.P4116262960507745335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + (1 : ℚ) / 2⌋

end

end A010903.P4116262960507745335

namespace A010903

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P4116262960507745335.Spec : Prop :=
  ∀ n, P4116262960507745335.a n = A010903 n

end A010903

/-! ## A010903.P8211468306680827827

`ogf((3-2x)/(1-5x+3x^2))`
-/

namespace A010903.P8211468306680827827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -5, 3] n

end

end A010903.P8211468306680827827

namespace A010903

/-- `ogf((3-2x)/(1-5x+3x^2))` -/
def P8211468306680827827.Spec : Prop :=
  ∀ n, P8211468306680827827.a n = A010903 n

end A010903

/-! ## A010903.P11589701069937650264

`A095934(n+1)`
-/

namespace A010903.P11589701069937650264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 (n + 1)

end

end A010903.P11589701069937650264

namespace A010903

/-- `A095934(n+1)` -/
def P11589701069937650264.Spec : Prop :=
  ∀ n, P11589701069937650264.a n = A010903 n

end A010903

/-! ## A010903.P8921407531257812556

`record[A095934(abs(1-n))]`
-/

namespace A010903.P8921407531257812556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010903.P8921407531257812556

namespace A010903

/-- `record[A095934(abs(1-n))]` -/
def P8921407531257812556.Spec : Prop :=
  ∀ n, P8921407531257812556.a n = A010903 n

end A010903

/-! ## A010903.P9498196131196671896

`A095940(n)+4*a(n-1)` with `a(0)=3`
-/

namespace A010903.P9498196131196671896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A095940 n + 4 * a (n - 1)

end

end A010903.P9498196131196671896

namespace A010903

/-- `A095940(n)+4*a(n-1)` -/
def P9498196131196671896.Spec : Prop :=
  ∀ n, P9498196131196671896.a n = A010903 n

end A010903

/-! ## A010903.P10846994870952648246

`A018902(n)+Δ[A081704(n)]`
-/

namespace A010903.P10846994870952648246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n + (f1 (n + 1) - f1 n)

end

end A010903.P10846994870952648246

namespace A010903

/-- `A018902(n)+Δ[A081704(n)]` -/
def P10846994870952648246.Spec : Prop :=
  ∀ n, P10846994870952648246.a n = A010903 n

end A010903

/-! ## A010903.P8121560101610645219

`A095939(n+1)+A018902(n)`
-/

namespace A010903.P8121560101610645219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 (n + 1) + A018902 n

end

end A010903.P8121560101610645219

namespace A010903

/-- `A095939(n+1)+A018902(n)` -/
def P8121560101610645219.Spec : Prop :=
  ∀ n, P8121560101610645219.a n = A010903 n

end A010903

/-! ## A010903.P13572131062080323064

`A109114(n)+A052961(n+1)`
-/

namespace A010903.P13572131062080323064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109114 n + A052961 (n + 1)

end

end A010903.P13572131062080323064

namespace A010903

/-- `A109114(n)+A052961(n+1)` -/
def P13572131062080323064.Spec : Prop :=
  ∀ n, P13572131062080323064.a n = A010903 n

end A010903

/-! ## A010903.P4600601408387168151

`A116415(n)+2*A018902(n)`
-/

namespace A010903.P4600601408387168151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116415 n + 2 * A018902 n

end

end A010903.P4600601408387168151

namespace A010903

/-- `A116415(n)+2*A018902(n)` -/
def P4600601408387168151.Spec : Prop :=
  ∀ n, P4600601408387168151.a n = A010903 n

end A010903

/-! ## A010903.P15231867200920327894

`A081704(n)+2*A116415(n)`
-/

namespace A010903.P15231867200920327894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n + 2 * A116415 n

end

end A010903.P15231867200920327894

namespace A010903

/-- `A081704(n)+2*A116415(n)` -/
def P15231867200920327894.Spec : Prop :=
  ∀ n, P15231867200920327894.a n = A010903 n

end A010903

/-! ## A010903.P7856573682637610287

`A081704(n+1)+∑[A095940(n)]`
-/

namespace A010903.P7856573682637610287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010903.P7856573682637610287

namespace A010903

/-- `A081704(n+1)+∑[A095940(n)]` -/
def P7856573682637610287.Spec : Prop :=
  ∀ n, P7856573682637610287.a n = A010903 n

end A010903

/-! ## A010903.P3653903926586919594

`A081704(n)+Δ[2*A052961(n)]`
-/

namespace A010903.P3653903926586919594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n + (f1 (n + 1) - f1 n)

end

end A010903.P3653903926586919594

namespace A010903

/-- `A081704(n)+Δ[2*A052961(n)]` -/
def P3653903926586919594.Spec : Prop :=
  ∀ n, P3653903926586919594.a n = A010903 n

end A010903

/-! ## A010903.P16893594964180163459

`A095940(n+1)+A095939(n+1)`
-/

namespace A010903.P16893594964180163459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1) + A095939 (n + 1)

end

end A010903.P16893594964180163459

namespace A010903

/-- `A095940(n+1)+A095939(n+1)` -/
def P16893594964180163459.Spec : Prop :=
  ∀ n, P16893594964180163459.a n = A010903 n

end A010903

/-! ## A010903.P13121922285232908773

`A081704(n+1)+A081704(n)-A052961(n)`
-/

namespace A010903.P13121922285232908773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 (n + 1) + (A081704 n - A052961 n)

end

end A010903.P13121922285232908773

namespace A010903

/-- `A081704(n+1)+A081704(n)-A052961(n)` -/
def P13121922285232908773.Spec : Prop :=
  ∀ n, P13121922285232908773.a n = A010903 n

end A010903

/-! ## A010903.P9621607374119453938

`A095940(n+1)+A116415(n)+A095940(n+1)`
-/

namespace A010903.P9621607374119453938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1) + (A116415 n + A095940 (n + 1))

end

end A010903.P9621607374119453938

namespace A010903

/-- `A095940(n+1)+A116415(n)+A095940(n+1)` -/
def P9621607374119453938.Spec : Prop :=
  ∀ n, P9621607374119453938.a n = A010903 n

end A010903

/-! ## A010903.P5391941001535321316

`Δ[A018902(n)]`
-/

namespace A010903.P5391941001535321316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010903.P5391941001535321316

namespace A010903

/-- `Δ[A018902(n)]` -/
def P5391941001535321316.Spec : Prop :=
  ∀ n, P5391941001535321316.a n = A010903 n

end A010903

/-! ## A010903.P16492301900017627647

`Δ[A095940(n+1)]`
-/

namespace A010903.P16492301900017627647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010903.P16492301900017627647

namespace A010903

/-- `Δ[A095940(n+1)]` -/
def P16492301900017627647.Spec : Prop :=
  ∀ n, P16492301900017627647.a n = A010903 n

end A010903

/-! ## A010903.P2101830975154657937

`A095939(n+2)/3`
-/

namespace A010903.P2101830975154657937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095939 (n + 2) : ℚ) / 3

end

end A010903.P2101830975154657937

namespace A010903

/-- `A095939(n+2)/3` -/
def P2101830975154657937.Spec : Prop :=
  ∀ n, P2101830975154657937.a n = (A010903 n : ℚ)

end A010903

/-!
# A010904: Pisot sequence E(4,14): a(n) = floor(a(n-1)^2/a(n-2)+1/2) for n>1, a(0)=4, a(1)=14.

The programs for A010904, the canonical program `A010904.P9979798305772783842` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010904 has offset 0).

The definition of A010904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010904.P9979798305772783842`, by `A010904.P9979798305772783842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010904.P12490175124893573983

`4*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=4, a(1)=14, a(2)=49`
-/

namespace A010904.P12490175124893573983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 14, 49] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A010904.P12490175124893573983

namespace A010904

/-- `4*a(n-1)-2*a(n-2)+a(n-3)` -/
def P12490175124893573983.Spec : Prop :=
  ∀ n, P12490175124893573983.a n = A010904 n

end A010904

/-! ## A010904.P9979798305772783842

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=4, a(1)=14`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010904

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P9979798305772783842.Spec : Prop :=
  ∀ n, P9979798305772783842.a n = A010904 n

theorem P9979798305772783842.correct : P9979798305772783842.Spec := by
  intro n
  simp only [A010904]

end A010904

/-! ## A010904.P17386992888089248667

`ogf((4-2x+x^2)/(1-4x+2x^2-x^3))`
-/

namespace A010904.P17386992888089248667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, 1] [1, -4, 2, -1] n

end

end A010904.P17386992888089248667

namespace A010904

/-- `ogf((4-2x+x^2)/(1-4x+2x^2-x^3))` -/
def P17386992888089248667.Spec : Prop :=
  ∀ n, P17386992888089248667.a n = A010904 n

end A010904

/-! ## A010904.P8547855378448961940

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=14`
-/

namespace A010904.P8547855378448961940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 14] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A010904.P8547855378448961940

namespace A010904

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P8547855378448961940.Spec : Prop :=
  ∀ n, P8547855378448961940.a n = A010904 n

end A010904

/-! ## A010904.P8290019460069151017

`A033453(n+1)-a(n-1)` with `a(0)=4`
-/

namespace A010904.P8290019460069151017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A033453 (n + 1) - a (n - 1)

end

end A010904.P8290019460069151017

namespace A010904

/-- `A033453(n+1)-a(n-1)` -/
def P8290019460069151017.Spec : Prop :=
  ∀ n, P8290019460069151017.a n = A010904 n

end A010904

/-! ## A010904.P16740867515652999855

`A033453(n+1)-Δ[A082679(n+1)]`
-/

namespace A010904.P16740867515652999855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033453 (n + 1) - (f1 (n + 1) - f1 n)

end

end A010904.P16740867515652999855

namespace A010904

/-- `A033453(n+1)-Δ[A082679(n+1)]` -/
def P16740867515652999855.Spec : Prop :=
  ∀ n, P16740867515652999855.a n = A010904 n

end A010904

/-! ## A010904.P3311830726534117397

`Δ[A082679(n+2)]`
-/

namespace A010904.P3311830726534117397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010904.P3311830726534117397

namespace A010904

/-- `Δ[A082679(n+2)]` -/
def P3311830726534117397.Spec : Prop :=
  ∀ n, P3311830726534117397.a n = A010904 n

end A010904

/-! ## A010904.P1280802428059539022

`Δ[record[A082679(gcd(2-n, n-2))]]`
-/

namespace A010904.P1280802428059539022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 (Int.gcd (2 - (n : ℤ)) ((n : ℤ) - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010904.P1280802428059539022

namespace A010904

/-- `Δ[record[A082679(gcd(2-n, n-2))]]` -/
def P1280802428059539022.Spec : Prop :=
  ∀ n, P1280802428059539022.a n = A010904 n

end A010904

/-! ## A010904.P3500596844663423132

`Δ[record[A082679(A084964(n))]]`
-/

namespace A010904.P3500596844663423132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 (A084964 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010904.P3500596844663423132

namespace A010904

/-- `Δ[record[A082679(A084964(n))]]` -/
def P3500596844663423132.Spec : Prop :=
  ∀ n, P3500596844663423132.a n = A010904 n

end A010904

/-! ## A010904.P7674813644288370155

`A082679(n+3)-A082679(n+2)`
-/

namespace A010904.P7674813644288370155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 (n + 3) - A082679 (n + 2)

end

end A010904.P7674813644288370155

namespace A010904

/-- `A082679(n+3)-A082679(n+2)` -/
def P7674813644288370155.Spec : Prop :=
  ∀ n, P7674813644288370155.a n = A010904 n

end A010904

/-! ## A010904.P12074517994533111006

`Δ[A221678(n+2)-Δ[A004526(n+1)]]`
-/

namespace A010904.P12074517994533111006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221678 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010904.P12074517994533111006

namespace A010904

/-- `Δ[A221678(n+2)-Δ[A004526(n+1)]]` -/
def P12074517994533111006.Spec : Prop :=
  ∀ n, P12074517994533111006.a n = A010904 n

end A010904

/-! ## A010904.P9319490216244151719

`Δ[A221678(n+2)-Δ[A008619(n+1)]]`
-/

namespace A010904.P9319490216244151719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221678 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010904.P9319490216244151719

namespace A010904

/-- `Δ[A221678(n+2)-Δ[A008619(n+1)]]` -/
def P9319490216244151719.Spec : Prop :=
  ∀ n, P9319490216244151719.a n = A010904 n

end A010904

/-!
# A010905: Pisot sequence E(4,15): a(n) = floor(a(n-1)^2/a(n-2)+1/2) for n>1, a(0)=4, a(1)=15.

The programs for A010905, the canonical program `A010905.P7188051469185711225` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010905 has offset 0).

The definition of A010905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A010905.P7188051469185711225`, by `A010905.P7188051469185711225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010905.P3184273287008455051

`4*a(n-1)-a(n-2)` with `a(0)=4, a(1)=15`
-/

namespace A010905.P3184273287008455051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 15] fun n a =>
  4 * a (n - 1) - a (n - 2)

end

end A010905.P3184273287008455051

namespace A010905

/-- `4*a(n-1)-a(n-2)` -/
def P3184273287008455051.Spec : Prop :=
  ∀ n, P3184273287008455051.a n = A010905 n

end A010905

/-! ## A010905.P7188051469185711225

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=15`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010905

/-- `floor(a(n-1)²/a(n-2))` -/
def P7188051469185711225.Spec : Prop :=
  ∀ n, P7188051469185711225.a n = A010905 n

theorem P7188051469185711225.correct : P7188051469185711225.Spec := by
  intro n
  simp only [A010905]

end A010905

/-! ## A010905.P16572191484986861734

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=4, a(1)=15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010905.P16572191484986861734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 15] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + (1 : ℚ) / 2⌋

end

end A010905.P16572191484986861734

namespace A010905

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P16572191484986861734.Spec : Prop :=
  ∀ n, P16572191484986861734.a n = A010905 n

end A010905

/-! ## A010905.P7204198212420784062

`ogf((4-x)/(1-4x+x^2))`
-/

namespace A010905.P7204198212420784062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1] [1, -4, 1] n

end

end A010905.P7204198212420784062

namespace A010905

/-- `ogf((4-x)/(1-4x+x^2))` -/
def P7204198212420784062.Spec : Prop :=
  ∀ n, P7204198212420784062.a n = A010905 n

end A010905

/-! ## A010905.P1035466800931521728

`ceil((sqrt(3)+2)*a(n-1))` with `a(0)=4`
-/

namespace A010905.P1035466800931521728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A010905.P1035466800931521728

namespace A010905

/-- `ceil((sqrt(3)+2)*a(n-1))` -/
def P1035466800931521728.Spec : Prop :=
  ∀ n, P1035466800931521728.a n = A010905 n

end A010905

/-! ## A010905.P5717745703440061083

`round((sqrt(3)+2)*a(n-1))` with `a(0)=4`
-/

namespace A010905.P5717745703440061083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A010905.P5717745703440061083

namespace A010905

/-- `round((sqrt(3)+2)*a(n-1))` -/
def P5717745703440061083.Spec : Prop :=
  ∀ n, P5717745703440061083.a n = A010905 n

end A010905

/-! ## A010905.P6824380189098360958

`ceil(a(n-1)/(2-sqrt(3)))` with `a(0)=4`
-/

namespace A010905.P6824380189098360958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.sqrt (3 : ℝ))⌉

end

end A010905.P6824380189098360958

namespace A010905

/-- `ceil(a(n-1)/(2-sqrt(3)))` -/
def P6824380189098360958.Spec : Prop :=
  ∀ n, P6824380189098360958.a n = A010905 n

end A010905

/-! ## A010905.P6599675605876723300

`round(a(n-1)/(2-sqrt(3)))` with `a(0)=4`
-/

namespace A010905.P6599675605876723300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (2 - Real.sqrt (3 : ℝ)))

end

end A010905.P6599675605876723300

namespace A010905

/-- `round(a(n-1)/(2-sqrt(3)))` -/
def P6599675605876723300.Spec : Prop :=
  ∀ n, P6599675605876723300.a n = A010905 n

end A010905

/-! ## A010905.P7860111505939997267

`A001353(n+2)`
-/

namespace A010905.P7860111505939997267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 2)

end

end A010905.P7860111505939997267

namespace A010905

/-- `A001353(n+2)` -/
def P7860111505939997267.Spec : Prop :=
  ∀ n, P7860111505939997267.a n = A010905 n

end A010905

/-! ## A010905.P570156728008126566

`abs(A125905(n+1))`
-/

namespace A010905.P570156728008126566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125905 (n + 1)|

end

end A010905.P570156728008126566

namespace A010905

/-- `abs(A125905(n+1))` -/
def P570156728008126566.Spec : Prop :=
  ∀ n, P570156728008126566.a n = A010905 n

end A010905

/-! ## A010905.P1353664301848024791

`abs(A106707(n+2))`
-/

namespace A010905.P1353664301848024791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106707 (n + 2)|

end

end A010905.P1353664301848024791

namespace A010905

/-- `abs(A106707(n+2))` -/
def P1353664301848024791.Spec : Prop :=
  ∀ n, P1353664301848024791.a n = A010905 n

end A010905

/-! ## A010905.P716468154724088034

`Δ[A061278(n+1)]`
-/

namespace A010905.P716468154724088034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010905.P716468154724088034

namespace A010905

/-- `Δ[A061278(n+1)]` -/
def P716468154724088034.Spec : Prop :=
  ∀ n, P716468154724088034.a n = A010905 n

end A010905

/-! ## A010905.P12131585892383655918

`Δ[A101265(n+2)]`
-/

namespace A010905.P12131585892383655918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010905.P12131585892383655918

namespace A010905

/-- `Δ[A101265(n+2)]` -/
def P12131585892383655918.Spec : Prop :=
  ∀ n, P12131585892383655918.a n = A010905 n

end A010905

/-! ## A010905.P17987019943696257004

`Δ[A101879(n+2)]`
-/

namespace A010905.P17987019943696257004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010905.P17987019943696257004

namespace A010905

/-- `Δ[A101879(n+2)]` -/
def P17987019943696257004.Spec : Prop :=
  ∀ n, P17987019943696257004.a n = A010905 n

end A010905

/-! ## A010905.P5517980358960476467

`A072110(n+2)-1`
-/

namespace A010905.P5517980358960476467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072110 (n + 2) - 1

end

end A010905.P5517980358960476467

namespace A010905

/-- `A072110(n+2)-1` -/
def P5517980358960476467.Spec : Prop :=
  ∀ n, P5517980358960476467.a n = A010905 n

end A010905

/-! ## A010905.P9504556250417527417

`A259592(2*(n+1))`
-/

namespace A010905.P9504556250417527417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (2 * (n + 1))

end

end A010905.P9504556250417527417

namespace A010905

/-- `A259592(2*(n+1))` -/
def P9504556250417527417.Spec : Prop :=
  ∀ n, P9504556250417527417.a n = A010905 n

end A010905

/-! ## A010905.P12532562845907162369

`A002530(2*(n+2))`
-/

namespace A010905.P12532562845907162369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (2 * (n + 2))

end

end A010905.P12532562845907162369

namespace A010905

/-- `A002530(2*(n+2))` -/
def P12532562845907162369.Spec : Prop :=
  ∀ n, P12532562845907162369.a n = A010905 n

end A010905

/-! ## A010905.P18042120017142920828

`A052530(n+2)/2`
-/

namespace A010905.P18042120017142920828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052530 (n + 2) : ℚ) / 2

end

end A010905.P18042120017142920828

namespace A010905

/-- `A052530(n+2)/2` -/
def P18042120017142920828.Spec : Prop :=
  ∀ n, P18042120017142920828.a n = (A010905 n : ℚ)

end A010905

/-! ## A010905.P96960118811617142

`A108412(2*n+3)`
-/

namespace A010905.P96960118811617142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108412 (2 * n + 3)

end

end A010905.P96960118811617142

namespace A010905

/-- `A108412(2*n+3)` -/
def P96960118811617142.Spec : Prop :=
  ∀ n, P96960118811617142.a n = A010905 n

end A010905

/-! ## A010905.P3388052834028608490

`A249578(3*(n+2))`
-/

namespace A010905.P3388052834028608490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (3 * (n + 2))

end

end A010905.P3388052834028608490

namespace A010905

/-- `A249578(3*(n+2))` -/
def P3388052834028608490.Spec : Prop :=
  ∀ n, P3388052834028608490.a n = A010905 n

end A010905

/-!
# A010907: Pisot sequence E(4,19), a(n) = floor( a(n-1)^2/a(n-2)+1/2 ).

The programs for A010907, the canonical program `A010907.P475875316358261310` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010907 has offset 0).

The definition of A010907 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010907.P475875316358261310`, by `A010907.P475875316358261310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010907.P10563742521099213402

`4*a(n-1)+3*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=4, a(1)=19, a(2)=90, a(3)=426`
-/

namespace A010907.P10563742521099213402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 19, 90, 426] fun n a =>
  4 * a (n - 1) + 3 * a (n - 2) + 2 * a (n - 3) + a (n - 4)

end

end A010907.P10563742521099213402

namespace A010907

/-- `4*a(n-1)+3*a(n-2)+2*a(n-3)+a(n-4)` -/
def P10563742521099213402.Spec : Prop :=
  ∀ n, (P10563742521099213402.a n : ℤ) = A010907 n

end A010907

/-! ## A010907.P475875316358261310

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=4, a(1)=19`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010907

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P475875316358261310.Spec : Prop :=
  ∀ n, P475875316358261310.a n = A010907 n

theorem P475875316358261310.correct : P475875316358261310.Spec := by
  intro n
  simp only [A010907]

end A010907

/-! ## A010907.P5737184482097208165

`Δ[ogf(1/(1-5x+x^2+x^3+x^4+x^5))]`
-/

namespace A010907.P5737184482097208165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 1, 1, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010907.P5737184482097208165

namespace A010907

/-- `Δ[ogf(1/(1-5x+x^2+x^3+x^4+x^5))]` -/
def P5737184482097208165.Spec : Prop :=
  ∀ n, P5737184482097208165.a n = A010907 n

end A010907

/-! ## A010907.P2002846434883606045

`ogf((4+3x+2x^2+x^3)/(1-4x-3x^2-2x^3-x^4))`
-/

namespace A010907.P2002846434883606045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, 2, 1] [1, -4, -3, -2, -1] n

end

end A010907.P2002846434883606045

namespace A010907

/-- `ogf((4+3x+2x^2+x^3)/(1-4x-3x^2-2x^3-x^4))` -/
def P2002846434883606045.Spec : Prop :=
  ∀ n, P2002846434883606045.a n = A010907 n

end A010907

/-! ## A010907.P9727435119548009148

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=19`
-/

namespace A010907.P9727435119548009148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 19] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A010907.P9727435119548009148

namespace A010907

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P9727435119548009148.Spec : Prop :=
  ∀ n, P9727435119548009148.a n = A010907 n

end A010907

/-! ## A010907.P15615795519400419612

`round(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=19`
-/

namespace A010907.P15615795519400419612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 19] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A010907.P15615795519400419612

namespace A010907

/-- `round(a(n-1)²/a(n-2))` -/
def P15615795519400419612.Spec : Prop :=
  ∀ n, P15615795519400419612.a n = A010907 n

end A010907

/-!
# A010908: Pisot sequence E(4,21), a(n) = floor(a(n-1)^2/a(n-2) + 1/2).

The programs for A010908, the canonical program `A010908.P2971340399398682962` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010908 has offset 0).

The definition of A010908 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A010908.P2971340399398682962`, by `A010908.P2971340399398682962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010908.P10146130887176051284

`6*a(n-1)-4*a(n-2)` with `a(0)=4, a(1)=21`
-/

namespace A010908.P10146130887176051284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 21] fun n a =>
  6 * a (n - 1) - 4 * a (n - 2)

end

end A010908.P10146130887176051284

namespace A010908

/-- `6*a(n-1)-4*a(n-2)` -/
def P10146130887176051284.Spec : Prop :=
  ∀ n, P10146130887176051284.a n = A010908 n

end A010908

/-! ## A010908.P4549743366698928687

`2^(n-1)*A000045(2*n+6)`
-/

namespace A010908.P4549743366698928687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 (2 * n + 6) : ℚ)

end

end A010908.P4549743366698928687

namespace A010908

/-- `2^(n-1)*A000045(2*n+6)` -/
def P4549743366698928687.Spec : Prop :=
  ∀ n, P4549743366698928687.a n = (A010908 n : ℚ)

end A010908

/-! ## A010908.P2971340399398682962

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=21`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010908

/-- `floor(a(n-1)²/a(n-2))` -/
def P2971340399398682962.Spec : Prop :=
  ∀ n, P2971340399398682962.a n = A010908 n

theorem P2971340399398682962.correct : P2971340399398682962.Spec := by
  intro n
  simp only [A010908]

end A010908

/-! ## A010908.P17953769650562197578

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=4, a(1)=21`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010908.P17953769650562197578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 21] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + (1 : ℚ) / 2⌋

end

end A010908.P17953769650562197578

namespace A010908

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P17953769650562197578.Spec : Prop :=
  ∀ n, P17953769650562197578.a n = A010908 n

end A010908

/-! ## A010908.P6449217242755655548

`ogf((4-3x)/(1-6x+4x^2))`
-/

namespace A010908.P6449217242755655548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3] [1, -6, 4] n

end

end A010908.P6449217242755655548

namespace A010908

/-- `ogf((4-3x)/(1-6x+4x^2))` -/
def P6449217242755655548.Spec : Prop :=
  ∀ n, P6449217242755655548.a n = A010908 n

end A010908

/-! ## A010908.P6105543071675981027

`ceil((sqrt(5)+3)*a(n-1))` with `a(0)=4`
-/

namespace A010908.P6105543071675981027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈(Real.sqrt (5 : ℝ) + 3) * (a (n - 1) : ℝ)⌉

end

end A010908.P6105543071675981027

namespace A010908

/-- `ceil((sqrt(5)+3)*a(n-1))` -/
def P6105543071675981027.Spec : Prop :=
  ∀ n, P6105543071675981027.a n = A010908 n

end A010908

/-! ## A010908.P14641171888899768316

`round((sqrt(5)+3)*a(n-1))` with `a(0)=4`
-/

namespace A010908.P14641171888899768316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (5 : ℝ) + 3) * (a (n - 1) : ℝ))

end

end A010908.P14641171888899768316

namespace A010908

/-- `round((sqrt(5)+3)*a(n-1))` -/
def P14641171888899768316.Spec : Prop :=
  ∀ n, P14641171888899768316.a n = A010908 n

end A010908

/-! ## A010908.P10836185109674774500

`ceil(2*ϕ²*a(n-1))` with `a(0)=4`
-/

namespace A010908.P10836185109674774500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈2 * (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))⌉

end

end A010908.P10836185109674774500

namespace A010908

/-- `ceil(2*ϕ²*a(n-1))` -/
def P10836185109674774500.Spec : Prop :=
  ∀ n, P10836185109674774500.a n = A010908 n

end A010908

/-! ## A010908.P11082331157657548013

`round(2*ϕ²*a(n-1))` with `a(0)=4`
-/

namespace A010908.P11082331157657548013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway (2 * (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)))

end

end A010908.P11082331157657548013

namespace A010908

/-- `round(2*ϕ²*a(n-1))` -/
def P11082331157657548013.Spec : Prop :=
  ∀ n, P11082331157657548013.a n = A010908 n

end A010908

/-! ## A010908.P17593771525955504433

`Δ[floor(2*ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A010908.P17593771525955504433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊2 * (Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010908.P17593771525955504433

namespace A010908

/-- `Δ[floor(2*ϕ²*a(n-1))]` -/
def P17593771525955504433.Spec : Prop :=
  ∀ n, P17593771525955504433.a n = A010908 n

end A010908

/-! ## A010908.P12097831773631833603

`Δ[A018903(n)]`
-/

namespace A010908.P12097831773631833603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010908.P12097831773631833603

namespace A010908

/-- `Δ[A018903(n)]` -/
def P12097831773631833603.Spec : Prop :=
  ∀ n, P12097831773631833603.a n = A010908 n

end A010908

/-! ## A010908.P6845532157974293879

`2^(n-1)*A001906(n+3)`
-/

namespace A010908.P6845532157974293879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001906 (n + 3) : ℚ)

end

end A010908.P6845532157974293879

namespace A010908

/-- `2^(n-1)*A001906(n+3)` -/
def P6845532157974293879.Spec : Prop :=
  ∀ n, P6845532157974293879.a n = (A010908 n : ℚ)

end A010908

/-! ## A010908.P15188125246393478403

`2^(n-2)*A025169(n+2)`
-/

namespace A010908.P15188125246393478403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A025169 (n + 2) : ℚ)

end

end A010908.P15188125246393478403

namespace A010908

/-- `2^(n-2)*A025169(n+2)` -/
def P15188125246393478403.Spec : Prop :=
  ∀ n, P15188125246393478403.a n = (A010908 n : ℚ)

end A010908

/-! ## A010908.P9146072558169594792

`2^(n-1)*A088305(n+3)`
-/

namespace A010908.P9146072558169594792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A088305 (n + 3) : ℚ)

end

end A010908.P9146072558169594792

namespace A010908

/-- `2^(n-1)*A088305(n+3)` -/
def P9146072558169594792.Spec : Prop :=
  ∀ n, P9146072558169594792.a n = (A010908 n : ℚ)

end A010908

/-! ## A010908.P8170100606974967841

`2^(n-1)*A237268(n+3)`
-/

namespace A010908.P8170100606974967841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A237268 (n + 3) : ℚ)

end

end A010908.P8170100606974967841

namespace A010908

/-- `2^(n-1)*A237268(n+3)` -/
def P8170100606974967841.Spec : Prop :=
  ∀ n, P8170100606974967841.a n = (A010908 n : ℚ)

end A010908

/-! ## A010908.P10338066146696356438

`A020695(n)*A162770(n)`
-/

namespace A010908.P10338066146696356438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A162770 n

end

end A010908.P10338066146696356438

namespace A010908

/-- `A020695(n)*A162770(n)` -/
def P10338066146696356438.Spec : Prop :=
  ∀ n, P10338066146696356438.a n = A010908 n

end A010908

/-! ## A010908.P1260949733171772101

`A069429(n+1)+A018903(n)`
-/

namespace A010908.P1260949733171772101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069429 (n + 1) + A018903 n

end

end A010908.P1260949733171772101

namespace A010908

/-- `A069429(n+1)+A018903(n)` -/
def P1260949733171772101.Spec : Prop :=
  ∀ n, P1260949733171772101.a n = A010908 n

end A010908

/-! ## A010908.P2101142615940642275

`A018903(n+1)-A018903(n)`
-/

namespace A010908.P2101142615940642275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018903 (n + 1) - A018903 n

end

end A010908.P2101142615940642275

namespace A010908

/-- `A018903(n+1)-A018903(n)` -/
def P2101142615940642275.Spec : Prop :=
  ∀ n, P2101142615940642275.a n = A010908 n

end A010908

/-! ## A010908.P4582403722750482009

`Δ[A011782(n)*A071679(2*n+1)]`
-/

namespace A010908.P4582403722750482009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A071679 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010908.P4582403722750482009

namespace A010908

/-- `Δ[A011782(n)*A071679(2*n+1)]` -/
def P4582403722750482009.Spec : Prop :=
  ∀ n, P4582403722750482009.a n = A010908 n

end A010908

/-! ## A010908.P2073365099975734993

`A084326(n+1)+A098648(n+1)+A084326(n)`
-/

namespace A010908.P2073365099975734993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084326 (n + 1) + (A098648 (n + 1) + A084326 n)

end

end A010908.P2073365099975734993

namespace A010908

/-- `A084326(n+1)+A098648(n+1)+A084326(n)` -/
def P2073365099975734993.Spec : Prop :=
  ∀ n, P2073365099975734993.a n = A010908 n

end A010908

/-!
# A010909: Pisot sequence E(4,25): a(n) = floor(a(n-1)^2/a(n-2)+1/2) for n>1, a(0)=4, a(1)=25.

The programs for A010909, the canonical program `A010909.P852111555164924110` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010909 has offset 0).

The definition of A010909 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010909.P852111555164924110`, by `A010909.P852111555164924110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010909.P3709674948655673516

`6*a(n-1)+a(n-2)+3*a(n-3)` with `a(0)=4, a(1)=25, a(2)=156`
-/

namespace A010909.P3709674948655673516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 25, 156] fun n a =>
  6 * a (n - 1) + a (n - 2) + 3 * a (n - 3)

end

end A010909.P3709674948655673516

namespace A010909

/-- `6*a(n-1)+a(n-2)+3*a(n-3)` -/
def P3709674948655673516.Spec : Prop :=
  ∀ n, (P3709674948655673516.a n : ℤ) = A010909 n

end A010909

/-! ## A010909.P852111555164924110

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=4, a(1)=25`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010909

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P852111555164924110.Spec : Prop :=
  ∀ n, P852111555164924110.a n = A010909 n

theorem P852111555164924110.correct : P852111555164924110.Spec := by
  intro n
  simp only [A010909]

end A010909

/-! ## A010909.P11512847762953094799

`ogf((4+x+2x^2)/(1-6x-x^2-3x^3))`
-/

namespace A010909.P11512847762953094799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, 2] [1, -6, -1, -3] n

end

end A010909.P11512847762953094799

namespace A010909

/-- `ogf((4+x+2x^2)/(1-6x-x^2-3x^3))` -/
def P11512847762953094799.Spec : Prop :=
  ∀ n, P11512847762953094799.a n = A010909 n

end A010909

/-! ## A010909.P5649223736469205450

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=25`
-/

namespace A010909.P5649223736469205450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 25] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A010909.P5649223736469205450

namespace A010909

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P5649223736469205450.Spec : Prop :=
  ∀ n, P5649223736469205450.a n = A010909 n

end A010909

/-! ## A010909.P13610616572665047331

`round(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=25`
-/

namespace A010909.P13610616572665047331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 25] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A010909.P13610616572665047331

namespace A010909

/-- `round(a(n-1)²/a(n-2))` -/
def P13610616572665047331.Spec : Prop :=
  ∀ n, P13610616572665047331.a n = A010909 n

end A010909

/-!
# A010910: Pisot sequence E(4,27): a(n) = floor(a(n-1)^2/a(n-2)+1/2) for n>1, a(0)=4, a(1)=27.

The programs for A010910, the canonical program `A010910.P18320402892158201698` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010910 has offset 0).

The definition of A010910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010910.P18320402892158201698`, by `A010910.P18320402892158201698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010910.P13433861499704580106

`6*a(n-1)+5*a(n-2)` with `a(0)=4, a(1)=27`
-/

namespace A010910.P13433861499704580106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 27] fun n a =>
  6 * a (n - 1) + 5 * a (n - 2)

end

end A010910.P13433861499704580106

namespace A010910

/-- `6*a(n-1)+5*a(n-2)` -/
def P13433861499704580106.Spec : Prop :=
  ∀ n, (P13433861499704580106.a n : ℤ) = A010910 n

end A010910

/-! ## A010910.P18320402892158201698

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=4, a(1)=27`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010910

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P18320402892158201698.Spec : Prop :=
  ∀ n, P18320402892158201698.a n = A010910 n

theorem P18320402892158201698.correct : P18320402892158201698.Spec := by
  intro n
  simp only [A010910]

end A010910

/-! ## A010910.P14186634053734160255

`ogf((4+3x)/(1-6x-5x^2))`
-/

namespace A010910.P14186634053734160255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3] [1, -6, -5] n

end

end A010910.P14186634053734160255

namespace A010910

/-- `ogf((4+3x)/(1-6x-5x^2))` -/
def P14186634053734160255.Spec : Prop :=
  ∀ n, P14186634053734160255.a n = A010910 n

end A010910

/-! ## A010910.P14384957016996481992

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=27`
-/

namespace A010910.P14384957016996481992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 27] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A010910.P14384957016996481992

namespace A010910

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P14384957016996481992.Spec : Prop :=
  ∀ n, P14384957016996481992.a n = A010910 n

end A010910

/-! ## A010910.P272676032953040965

`4*A126528(n)-A015551(n)`
-/

namespace A010910.P272676032953040965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A126528 n - A015551 n

end

end A010910.P272676032953040965

namespace A010910

/-- `4*A126528(n)-A015551(n)` -/
def P272676032953040965.Spec : Prop :=
  ∀ n, P272676032953040965.a n = A010910 n

end A010910

/-! ## A010910.P3902284635819401758

`∑[A091928(n)]+3*A126528(n)`
-/

namespace A010910.P3902284635819401758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * A126528 n

end

end A010910.P3902284635819401758

namespace A010910

/-- `∑[A091928(n)]+3*A126528(n)` -/
def P3902284635819401758.Spec : Prop :=
  ∀ n, P3902284635819401758.a n = A010910 n

end A010910

/-! ## A010910.P3963872309838628745

`(A126528(n+1)+A126528(n))/2`
-/

namespace A010910.P3963872309838628745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126528 (n + 1) + A126528 n : ℚ) / 2

end

end A010910.P3963872309838628745

namespace A010910

/-- `(A126528(n+1)+A126528(n))/2` -/
def P3963872309838628745.Spec : Prop :=
  ∀ n, P3963872309838628745.a n = (A010910 n : ℚ)

end A010910

/-! ## A010910.P252212208184332114

`Δ[A126528(n+1)/10]`
-/

namespace A010910.P252212208184332114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126528 (n + 1) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010910.P252212208184332114

namespace A010910

/-- `Δ[A126528(n+1)/10]` -/
def P252212208184332114.Spec : Prop :=
  ∀ n, P252212208184332114.a n = (A010910 n : ℚ)

end A010910

/-!
# A010911: Pisot sequence E(3,11), a(n) = floor(a(n-1)^2/a(n-2) + 1/2).

The programs for A010911, the canonical program `A010911.P14569757969759871819` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010911 has offset 0).

The definition of A010911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010911.P14569757969759871819`, by `A010911.P14569757969759871819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010911.P17416255848869930578

`3*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=3, a(1)=11, a(2)=40`
-/

namespace A010911.P17416255848869930578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 11, 40] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) + a (n - 3)

end

end A010911.P17416255848869930578

namespace A010911

/-- `3*a(n-1)+2*a(n-2)+a(n-3)` -/
def P17416255848869930578.Spec : Prop :=
  ∀ n, (P17416255848869930578.a n : ℤ) = A010911 n

end A010911

/-! ## A010911.P14940784802007280299

`A108153(n+2)`
-/

namespace A010911.P14940784802007280299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108153 (n + 2)

end

end A010911.P14940784802007280299

namespace A010911

/-- `A108153(n+2)` -/
def P14940784802007280299.Spec : Prop :=
  ∀ n, P14940784802007280299.a n = A010911 n

end A010911

/-! ## A010911.P14569757969759871819

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=3, a(1)=11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010911

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P14569757969759871819.Spec : Prop :=
  ∀ n, P14569757969759871819.a n = A010911 n

theorem P14569757969759871819.correct : P14569757969759871819.Spec := by
  intro n
  simp only [A010911]

end A010911

/-! ## A010911.P10199222907336561247

`Δ[ogf(1/(1-4x+x^2+x^3+x^4))]`
-/

namespace A010911.P10199222907336561247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 1, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010911.P10199222907336561247

namespace A010911

/-- `Δ[ogf(1/(1-4x+x^2+x^3+x^4))]` -/
def P10199222907336561247.Spec : Prop :=
  ∀ n, P10199222907336561247.a n = A010911 n

end A010911

/-! ## A010911.P175890183699344426

`ogf((3+2x+x^2)/(1-3x-2x^2-x^3))`
-/

namespace A010911.P175890183699344426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 1] [1, -3, -2, -1] n

end

end A010911.P175890183699344426

namespace A010911

/-- `ogf((3+2x+x^2)/(1-3x-2x^2-x^3))` -/
def P175890183699344426.Spec : Prop :=
  ∀ n, P175890183699344426.a n = A010911 n

end A010911

/-! ## A010911.P3812296163432600363

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=3, a(1)=11`
-/

namespace A010911.P3812296163432600363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 11] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A010911.P3812296163432600363

namespace A010911

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P3812296163432600363.Spec : Prop :=
  ∀ n, P3812296163432600363.a n = A010911 n

end A010911

/-! ## A010911.P10640651606092526480

`record[A108153(abs(2-n))]`
-/

namespace A010911.P10640651606092526480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108153 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010911.P10640651606092526480

namespace A010911

/-- `record[A108153(abs(2-n))]` -/
def P10640651606092526480.Spec : Prop :=
  ∀ n, P10640651606092526480.a n = A010911 n

end A010911

/-! ## A010911.P8255754232582996928

`∑[A100477(n+2)]+1`
-/

namespace A010911.P8255754232582996928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100477 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A010911.P8255754232582996928

namespace A010911

/-- `∑[A100477(n+2)]+1` -/
def P8255754232582996928.Spec : Prop :=
  ∀ n, P8255754232582996928.a n = A010911 n

end A010911

/-! ## A010911.P12540205177808275528

`A100477(n+2)+a(A028310(n)-1)` with `a(0)=3`
-/

namespace A010911.P12540205177808275528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A100477 (n + 2) + a (A028310 n - 1).toNat

end

end A010911.P12540205177808275528

namespace A010911

/-- `A100477(n+2)+a(A028310(n)-1)` -/
def P12540205177808275528.Spec : Prop :=
  ∀ n, P12540205177808275528.a n = A010911 n

end A010911

/-!
# A010912: Pisot sequences E(3,7), P(3,7).

The programs for A010912, the canonical program `A010912.P8694227196274045684` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010912 has offset 0).

The definition of A010912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010912.P8694227196274045684

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=3, a(1)=7, a(2)=16`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010912

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P8694227196274045684.Spec : Prop :=
  ∀ n, P8694227196274045684.a n = A010912 n

theorem P8694227196274045684.correct : P8694227196274045684.Spec := by
  intro n
  simp only [A010912]

end A010912

/-! ## A010912.P13918986606559487180

`Δ[ogf(1/(1-4x+5x^2-3x^3+x^4))]`
-/

namespace A010912.P13918986606559487180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 5, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010912.P13918986606559487180

namespace A010912

/-- `Δ[ogf(1/(1-4x+5x^2-3x^3+x^4))]` -/
def P13918986606559487180.Spec : Prop :=
  ∀ n, P13918986606559487180.a n = A010912 n

end A010912

/-! ## A010912.P11806445723884306225

`ogf((3-2x+x^2)/(1-3x+2x^2-x^3))`
-/

namespace A010912.P11806445723884306225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 1] [1, -3, 2, -1] n

end

end A010912.P11806445723884306225

namespace A010912

/-- `ogf((3-2x+x^2)/(1-3x+2x^2-x^3))` -/
def P11806445723884306225.Spec : Prop :=
  ∀ n, P11806445723884306225.a n = A010912 n

end A010912

/-! ## A010912.P13532094226025745325

`A095263(n+2)`
-/

namespace A010912.P13532094226025745325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 2)

end

end A010912.P13532094226025745325

namespace A010912

/-- `A095263(n+2)` -/
def P13532094226025745325.Spec : Prop :=
  ∀ n, P13532094226025745325.a n = A010912 n

end A010912

/-! ## A010912.P2384940280960560751

`Δ[A137229(n+1)]`
-/

namespace A010912.P2384940280960560751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010912.P2384940280960560751

namespace A010912

/-- `Δ[A137229(n+1)]` -/
def P2384940280960560751.Spec : Prop :=
  ∀ n, P2384940280960560751.a n = A010912 n

end A010912

/-! ## A010912.P2202580310389320111

`Δ[A181984(n+1)]`
-/

namespace A010912.P2202580310389320111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010912.P2202580310389320111

namespace A010912

/-- `Δ[A181984(n+1)]` -/
def P2202580310389320111.Spec : Prop :=
  ∀ n, P2202580310389320111.a n = A010912 n

end A010912

/-! ## A010912.P10236139107813755767

`Δ[A034943(n+3)]`
-/

namespace A010912.P10236139107813755767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010912.P10236139107813755767

namespace A010912

/-- `Δ[A034943(n+3)]` -/
def P10236139107813755767.Spec : Prop :=
  ∀ n, P10236139107813755767.a n = A010912 n

end A010912

/-! ## A010912.P15055196887469364010

`A164001(3*(n+1))`
-/

namespace A010912.P15055196887469364010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (3 * (n + 1))

end

end A010912.P15055196887469364010

namespace A010912

/-- `A164001(3*(n+1))` -/
def P15055196887469364010.Spec : Prop :=
  ∀ n, P15055196887469364010.a n = A010912 n

end A010912

/-! ## A010912.P13533836701978502483

`A054405(3*n)+2`
-/

namespace A010912.P13533836701978502483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (3 * n) + 2

end

end A010912.P13533836701978502483

namespace A010912

/-- `A054405(3*n)+2` -/
def P13533836701978502483.Spec : Prop :=
  ∀ n, P13533836701978502483.a n = A010912 n

end A010912

/-! ## A010912.P13788787942424032981

`A134816(3*(n+2))`
-/

namespace A010912.P13788787942424032981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (3 * (n + 2))

end

end A010912.P13788787942424032981

namespace A010912

/-- `A134816(3*(n+2))` -/
def P13788787942424032981.Spec : Prop :=
  ∀ n, P13788787942424032981.a n = A010912 n

end A010912

/-! ## A010912.P10587417358195036729

`A078027(3*(n+4))`
-/

namespace A010912.P10587417358195036729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (3 * (n + 4))

end

end A010912.P10587417358195036729

namespace A010912

/-- `A078027(3*(n+4))` -/
def P10587417358195036729.Spec : Prop :=
  ∀ n, P10587417358195036729.a n = A010912 n

end A010912

/-! ## A010912.P5013642347758629319

`A000931(3*n+10)`
-/

namespace A010912.P5013642347758629319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (3 * n + 10)

end

end A010912.P5013642347758629319

namespace A010912

/-- `A000931(3*n+10)` -/
def P5013642347758629319.Spec : Prop :=
  ∀ n, P5013642347758629319.a n = A010912 n

end A010912

/-! ## A010912.P1764577213313225224

`A127682(6*n+10)`
-/

namespace A010912.P1764577213313225224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (6 * n + 10)

end

end A010912.P1764577213313225224

namespace A010912

/-- `A127682(6*n+10)` -/
def P1764577213313225224.Spec : Prop :=
  ∀ n, P1764577213313225224.a n = A010912 n

end A010912

/-! ## A010912.P2533794744150887253

`∑[A052921(n+1)]+1`
-/

namespace A010912.P2533794744150887253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A010912.P2533794744150887253

namespace A010912

/-- `∑[A052921(n+1)]+1` -/
def P2533794744150887253.Spec : Prop :=
  ∀ n, P2533794744150887253.a n = A010912 n

end A010912

/-! ## A010912.P15236411865618880939

`Δ[A052954(3*(n+2))]`
-/

namespace A010912.P15236411865618880939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010912.P15236411865618880939

namespace A010912

/-- `Δ[A052954(3*(n+2))]` -/
def P15236411865618880939.Spec : Prop :=
  ∀ n, P15236411865618880939.a n = A010912 n

end A010912

/-! ## A010912.P12935466855286982271

`Δ[A182097(3*(n+2))]`
-/

namespace A010912.P12935466855286982271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010912.P12935466855286982271

namespace A010912

/-- `Δ[A182097(3*(n+2))]` -/
def P12935466855286982271.Spec : Prop :=
  ∀ n, P12935466855286982271.a n = A010912 n

end A010912

/-! ## A010912.P12882289460852369495

`∑[A329244(n+2)]-n`
-/

namespace A010912.P12882289460852369495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A010912.P12882289460852369495

namespace A010912

/-- `∑[A329244(n+2)]-n` -/
def P12882289460852369495.Spec : Prop :=
  ∀ n, P12882289460852369495.a n = A010912 n

end A010912

/-! ## A010912.P3686324468201648459

`A023434(3*(n+1))+1`
-/

namespace A010912.P3686324468201648459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (3 * (n + 1)) + 1

end

end A010912.P3686324468201648459

namespace A010912

/-- `A023434(3*(n+1))+1` -/
def P3686324468201648459.Spec : Prop :=
  ∀ n, P3686324468201648459.a n = A010912 n

end A010912

/-! ## A010912.P13433324791241111146

`A182097(3*(n+2)+1)`
-/

namespace A010912.P13433324791241111146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (3 * (n + 2) + 1)

end

end A010912.P13433324791241111146

namespace A010912

/-- `A182097(3*(n+2)+1)` -/
def P13433324791241111146.Spec : Prop :=
  ∀ n, P13433324791241111146.a n = A010912 n

end A010912

/-! ## A010912.P10132193700381613967

`A228361(3*(n+1)+2)`
-/

namespace A010912.P10132193700381613967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (3 * (n + 1) + 2)

end

end A010912.P10132193700381613967

namespace A010912

/-- `A228361(3*(n+1)+2)` -/
def P10132193700381613967.Spec : Prop :=
  ∀ n, P10132193700381613967.a n = A010912 n

end A010912

/-!
# A010913: Pisot sequence E(3,17), a(n) = floor( a(n-1)^2/a(n-2)+1/2 ).

The programs for A010913, the canonical program `A010913.P7171878859025101115` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010913 has offset 0).

The definition of A010913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A010913.P7171878859025101115`, by `A010913.P7171878859025101115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010913.P16478715542077158219

`6*a(n-1)-2*a(n-2)` with `a(0)=3, a(1)=17`
-/

namespace A010913.P16478715542077158219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 17] fun n a =>
  6 * a (n - 1) - 2 * a (n - 2)

end

end A010913.P16478715542077158219

namespace A010913

/-- `6*a(n-1)-2*a(n-2)` -/
def P16478715542077158219.Spec : Prop :=
  ∀ n, P16478715542077158219.a n = A010913 n

end A010913

/-! ## A010913.P7171878859025101115

`floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010913

/-- `floor(a(n-1)²/a(n-2))` -/
def P7171878859025101115.Spec : Prop :=
  ∀ n, P7171878859025101115.a n = A010913 n

theorem P7171878859025101115.correct : P7171878859025101115.Spec := by
  intro n
  simp only [A010913]

end A010913

/-! ## A010913.P13435253205688252308

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=3, a(1)=17`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010913.P13435253205688252308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 17] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + (1 : ℚ) / 2⌋

end

end A010913.P13435253205688252308

namespace A010913

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P13435253205688252308.Spec : Prop :=
  ∀ n, P13435253205688252308.a n = A010913 n

end A010913

/-! ## A010913.P15797489561008842993

`ogf((3-x)/(1-6x+2x^2))`
-/

namespace A010913.P15797489561008842993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -6, 2] n

end

end A010913.P15797489561008842993

namespace A010913

/-- `ogf((3-x)/(1-6x+2x^2))` -/
def P15797489561008842993.Spec : Prop :=
  ∀ n, P15797489561008842993.a n = A010913 n

end A010913

/-! ## A010913.P17125166336567296034

`2^floor(n/2)*A084069(n+2)`
-/

namespace A010913.P17125166336567296034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A084069 (n + 2) : ℚ)

end

end A010913.P17125166336567296034

namespace A010913

/-- `2^floor(n/2)*A084069(n+2)` -/
def P17125166336567296034.Spec : Prop :=
  ∀ n, P17125166336567296034.a n = (A010913 n : ℚ)

end A010913

/-! ## A010913.P6692749532616467293

`A016116(n)*A259596(2*(n+1))`
-/

namespace A010913.P6692749532616467293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A259596 (2 * (n + 1))

end

end A010913.P6692749532616467293

namespace A010913

/-- `A016116(n)*A259596(2*(n+1))` -/
def P6692749532616467293.Spec : Prop :=
  ∀ n, P6692749532616467293.a n = A010913 n

end A010913

/-! ## A010913.P13699268152373483634

`A154244(n+2)/2`
-/

namespace A010913.P13699268152373483634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154244 (n + 2) : ℚ) / 2

end

end A010913.P13699268152373483634

namespace A010913

/-- `A154244(n+2)/2` -/
def P13699268152373483634.Spec : Prop :=
  ∀ n, P13699268152373483634.a n = (A010913 n : ℚ)

end A010913

/-! ## A010913.P6569190373643369689

`Δ[A180034(n+1)/6]`
-/

namespace A010913.P6569190373643369689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180034 (n + 1) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010913.P6569190373643369689

namespace A010913

/-- `Δ[A180034(n+1)/6]` -/
def P6569190373643369689.Spec : Prop :=
  ∀ n, P6569190373643369689.a n = (A010913 n : ℚ)

end A010913

/-! ## A010913.P909606290314689375

`A249221(2*n+3)/2`
-/

namespace A010913.P909606290314689375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249221 (2 * n + 3) : ℚ) / 2

end

end A010913.P909606290314689375

namespace A010913

/-- `A249221(2*n+3)/2` -/
def P909606290314689375.Spec : Prop :=
  ∀ n, P909606290314689375.a n = (A010913 n : ℚ)

end A010913

/-!
# A010914: Pisot sequence E(5,17), a(n) = floor(a(n-1)^2 / a(n-2) + 1/2).

The programs for A010914, the canonical program `A010914.P14059675285205233024` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010914 has offset 0).

The definition of A010914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010914.P14059675285205233024`, by `A010914.P14059675285205233024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010914.P6871582167213900575

`4*a(n-1)-2*a(n-2)` with `a(0)=5, a(1)=17`
-/

namespace A010914.P6871582167213900575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 17] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2)

end

end A010914.P6871582167213900575

namespace A010914

/-- `4*a(n-1)-2*a(n-2)` -/
def P6871582167213900575.Spec : Prop :=
  ∀ n, P6871582167213900575.a n = A010914 n

end A010914

/-! ## A010914.P8172795662051372341

`A079496(n+3)*A016116(n)`
-/

namespace A010914.P8172795662051372341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (n + 3) * A016116 n

end

end A010914.P8172795662051372341

namespace A010914

/-- `A079496(n+3)*A016116(n)` -/
def P8172795662051372341.Spec : Prop :=
  ∀ n, P8172795662051372341.a n = A010914 n

end A010914

/-! ## A010914.P5538894434017735336

`floor(a(n-1)²/a(n-2)+1)` with `a(0)=5, a(1)=17`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010914.P5538894434017735336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 17] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + 1⌋

end

end A010914.P5538894434017735336

namespace A010914

/-- `floor(a(n-1)²/a(n-2)+1)` -/
def P5538894434017735336.Spec : Prop :=
  ∀ n, P5538894434017735336.a n = A010914 n

end A010914

/-! ## A010914.P14059675285205233024

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=5, a(1)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010914

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P14059675285205233024.Spec : Prop :=
  ∀ n, P14059675285205233024.a n = A010914 n

theorem P14059675285205233024.correct : P14059675285205233024.Spec := by
  intro n
  simp only [A010914]

end A010914

/-! ## A010914.P4842907160644617953

`ogf((5-3x)/(1-4x+2x^2))`
-/

namespace A010914.P4842907160644617953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3] [1, -4, 2] n

end

end A010914.P4842907160644617953

namespace A010914

/-- `ogf((5-3x)/(1-4x+2x^2))` -/
def P4842907160644617953.Spec : Prop :=
  ∀ n, P4842907160644617953.a n = A010914 n

end A010914

/-! ## A010914.P17829348298156904015

`floor((sqrt(2)+2)*a(n-1))` with `a(0)=5`
-/

namespace A010914.P17829348298156904015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A010914.P17829348298156904015

namespace A010914

/-- `floor((sqrt(2)+2)*a(n-1))` -/
def P17829348298156904015.Spec : Prop :=
  ∀ n, P17829348298156904015.a n = A010914 n

end A010914

/-! ## A010914.P14138849064594388896

`round((sqrt(2)+2)*a(n-1))` with `a(0)=5`
-/

namespace A010914.P14138849064594388896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A010914.P14138849064594388896

namespace A010914

/-- `round((sqrt(2)+2)*a(n-1))` -/
def P14138849064594388896.Spec : Prop :=
  ∀ n, P14138849064594388896.a n = A010914 n

end A010914

/-! ## A010914.P14424573288285159422

`floor(2*a(n-1)/(2-sqrt(2)))` with `a(0)=5`
-/

namespace A010914.P14424573288285159422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(2 * a (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋

end

end A010914.P14424573288285159422

namespace A010914

/-- `floor(2*a(n-1)/(2-sqrt(2)))` -/
def P14424573288285159422.Spec : Prop :=
  ∀ n, P14424573288285159422.a n = A010914 n

end A010914

/-! ## A010914.P8085771618547555981

`∑[ceil((sqrt(2)+2)*a(n-1))]` with `a(0)=5, a(1)=12`
-/

namespace A010914.P8085771618547555981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 12] fun n f1 =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010914.P8085771618547555981

namespace A010914

/-- `∑[ceil((sqrt(2)+2)*a(n-1))]` -/
def P8085771618547555981.Spec : Prop :=
  ∀ n, P8085771618547555981.a n = A010914 n

end A010914

/-! ## A010914.P10046400355134919032

`A094821(n+2)+2^n`
-/

namespace A010914.P10046400355134919032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094821 (n + 2) + (2 ^ n : ℤ)

end

end A010914.P10046400355134919032

namespace A010914

/-- `A094821(n+2)+2^n` -/
def P10046400355134919032.Spec : Prop :=
  ∀ n, P10046400355134919032.a n = A010914 n

end A010914

/-! ## A010914.P17512973451465538642

`A094817(n+2)-2^n`
-/

namespace A010914.P17512973451465538642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094817 (n + 2) - (2 ^ n : ℤ)

end

end A010914.P17512973451465538642

namespace A010914

/-- `A094817(n+2)-2^n` -/
def P17512973451465538642.Spec : Prop :=
  ∀ n, P17512973451465538642.a n = A010914 n

end A010914

/-! ## A010914.P14575584588077108926

`A048580(n)+A020727(n)`
-/

namespace A010914.P14575584588077108926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n + A020727 n

end

end A010914.P14575584588077108926

namespace A010914

/-- `A048580(n)+A020727(n)` -/
def P14575584588077108926.Spec : Prop :=
  ∀ n, P14575584588077108926.a n = A010914 n

end A010914

/-! ## A010914.P11406081252846877016

`A020727(n)+Δ[A007070(n)]`
-/

namespace A010914.P11406081252846877016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n + (f1 (n + 1) - f1 n)

end

end A010914.P11406081252846877016

namespace A010914

/-- `A020727(n)+Δ[A007070(n)]` -/
def P11406081252846877016.Spec : Prop :=
  ∀ n, P11406081252846877016.a n = A010914 n

end A010914

/-! ## A010914.P3384730880432486680

`A048580(n)+Δ[A007052(n)]`
-/

namespace A010914.P3384730880432486680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n + (f1 (n + 1) - f1 n)

end

end A010914.P3384730880432486680

namespace A010914

/-- `A048580(n)+Δ[A007052(n)]` -/
def P3384730880432486680.Spec : Prop :=
  ∀ n, P3384730880432486680.a n = A010914 n

end A010914

/-! ## A010914.P3986408852769920481

`A007070(n+1)+A007052(n)`
-/

namespace A010914.P3986408852769920481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 1) + A007052 n

end

end A010914.P3986408852769920481

namespace A010914

/-- `A007070(n+1)+A007052(n)` -/
def P3986408852769920481.Spec : Prop :=
  ∀ n, P3986408852769920481.a n = A010914 n

end A010914

/-! ## A010914.P7496791620351813693

`A020727(n)+A007052(n+1)`
-/

namespace A010914.P7496791620351813693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n + A007052 (n + 1)

end

end A010914.P7496791620351813693

namespace A010914

/-- `A020727(n)+A007052(n+1)` -/
def P7496791620351813693.Spec : Prop :=
  ∀ n, P7496791620351813693.a n = A010914 n

end A010914

/-! ## A010914.P17609953345107006403

`A048580(n)+A003480(n+1)`
-/

namespace A010914.P17609953345107006403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n + A003480 (n + 1)

end

end A010914.P17609953345107006403

namespace A010914

/-- `A048580(n)+A003480(n+1)` -/
def P17609953345107006403.Spec : Prop :=
  ∀ n, P17609953345107006403.a n = A010914 n

end A010914

/-! ## A010914.P2304448684746956269

`A111567(n)+A056236(n+1)`
-/

namespace A010914.P2304448684746956269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111567 n + A056236 (n + 1)

end

end A010914.P2304448684746956269

namespace A010914

/-- `A111567(n)+A056236(n+1)` -/
def P2304448684746956269.Spec : Prop :=
  ∀ n, P2304448684746956269.a n = A010914 n

end A010914

/-! ## A010914.P17905367524536327788

`A204089(n+2)+A007052(n)`
-/

namespace A010914.P17905367524536327788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 2) + A007052 n

end

end A010914.P17905367524536327788

namespace A010914

/-- `A204089(n+2)+A007052(n)` -/
def P17905367524536327788.Spec : Prop :=
  ∀ n, P17905367524536327788.a n = A010914 n

end A010914

/-! ## A010914.P13275805795766202953

`A006012(n+2)-A007052(n)`
-/

namespace A010914.P13275805795766202953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 2) - A007052 n

end

end A010914.P13275805795766202953

namespace A010914

/-- `A006012(n+2)-A007052(n)` -/
def P13275805795766202953.Spec : Prop :=
  ∀ n, P13275805795766202953.a n = A010914 n

end A010914

/-!
# A010915: Pisot sequence E(6,16), a(n) = floor( a(n-1)^2/a(n-2) + 1/2 ).

The programs for A010915, the canonical program `A010915.P17940482722751035020` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010915 has offset 0).

The definition of A010915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010915.P17940482722751035020`, by `A010915.P17940482722751035020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010915.P17940482722751035020

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=6, a(1)=16`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010915

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P17940482722751035020.Spec : Prop :=
  ∀ n, P17940482722751035020.a n = A010915 n

theorem P17940482722751035020.correct : P17940482722751035020.Spec := by
  intro n
  simp only [A010915]

end A010915

/-! ## A010915.P6383780165395154940

`round(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=16`
-/

namespace A010915.P6383780165395154940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 16] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A010915.P6383780165395154940

namespace A010915

/-- `round(a(n-1)²/a(n-2))` -/
def P6383780165395154940.Spec : Prop :=
  ∀ n, P6383780165395154940.a n = A010915 n

end A010915

/-! ## A010915.P3196004823559134314

`A004526(A301726(a(n-1)))` with `a(0)=6`
-/

namespace A010915.P3196004823559134314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A004526 (A301726 (a (n - 1)).toNat).toNat

end

end A010915.P3196004823559134314

namespace A010915

/-- `A004526(A301726(a(n-1)))` -/
def P3196004823559134314.Spec : Prop :=
  ∀ n, P3196004823559134314.a n = A010915 n

end A010915

/-!
# A010916: Pisot sequence E(8,10), a(n) = floor( a(n-1)^2/a(n-2) + 1/2 ).

The programs for A010916, the canonical program `A010916.P7610747988710419416` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010916 has offset 0).

The definition of A010916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010916.P7610747988710419416`, by `A010916.P7610747988710419416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010916.P7610747988710419416

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=8, a(1)=10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010916

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P7610747988710419416.Spec : Prop :=
  ∀ n, P7610747988710419416.a n = A010916 n

theorem P7610747988710419416.correct : P7610747988710419416.Spec := by
  intro n
  simp only [A010916]

end A010916

/-! ## A010916.P1220567768108517047

`round(a(n-1)²/a(n-2))` with `a(0)=8, a(1)=10`
-/

namespace A010916.P1220567768108517047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 10] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A010916.P1220567768108517047

namespace A010916

/-- `round(a(n-1)²/a(n-2))` -/
def P1220567768108517047.Spec : Prop :=
  ∀ n, P1220567768108517047.a n = A010916 n

end A010916

/-! ## A010916.P15336767019180212898

`A275627(n)%Δ[A275644(n)]`
-/

namespace A010916.P15336767019180212898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275627 n) (f1 (n + 1) - f1 n)

end

end A010916.P15336767019180212898

namespace A010916

/-- `A275627(n)%Δ[A275644(n)]` -/
def P15336767019180212898.Spec : Prop :=
  ∀ n, P15336767019180212898.a n = A010916 n

end A010916

/-! ## A010916.P12857994583513022063

`A275627(gcd(n, n*A255126(n)))`
-/

namespace A010916.P12857994583513022063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275627 (Int.gcd (n : ℤ) ((n : ℤ) * A255126 n))

end

end A010916.P12857994583513022063

namespace A010916

/-- `A275627(gcd(n, n*A255126(n)))` -/
def P12857994583513022063.Spec : Prop :=
  ∀ n, P12857994583513022063.a n = A010916 n

end A010916

/-! ## A010916.P3409030296158120332

`filter[A275627(n), A093521(#)]`
-/

namespace A010916.P3409030296158120332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A010916.P3409030296158120332

namespace A010916

/-- `filter[A275627(n), A093521(#)]` -/
def P3409030296158120332.Spec : Prop :=
  ∀ n, P3409030296158120332.a n = A010916 n

end A010916

/-!
# A010917: Pisot sequence E(5,21), a(n) = floor( a(n-1)^2/a(n-2) + 1/2 ).

The programs for A010917, the canonical program `A010917.P12927400649866864069` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010917 has offset 0).

The definition of A010917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010917.P12927400649866864069`, by `A010917.P12927400649866864069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010917.P12927400649866864069

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=5, a(1)=21`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010917

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P12927400649866864069.Spec : Prop :=
  ∀ n, P12927400649866864069.a n = A010917 n

theorem P12927400649866864069.correct : P12927400649866864069.Spec := by
  intro n
  simp only [A010917]

end A010917

/-! ## A010917.P2760235867249041409

`round(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=21`
-/

namespace A010917.P2760235867249041409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 21] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A010917.P2760235867249041409

namespace A010917

/-- `round(a(n-1)²/a(n-2))` -/
def P2760235867249041409.Spec : Prop :=
  ∀ n, P2760235867249041409.a n = A010917 n

end A010917

/-! ## A010917.P7879884541879977195

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=5, a(1)=21`
-/

namespace A010917.P7879884541879977195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 21] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) - (1 : ℚ) / 2⌉

end

end A010917.P7879884541879977195

namespace A010917

/-- `ceil(a(n-1)²/a(n-2)-1/2)` -/
def P7879884541879977195.Spec : Prop :=
  ∀ n, P7879884541879977195.a n = A010917 n

end A010917

/-! ## A010917.P4201003290041529882

`A072263(n+1)+A005843(A072264(n))`
-/

namespace A010917.P4201003290041529882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072263 (n + 1) + A005843 (A072264 n).toNat

end

end A010917.P4201003290041529882

namespace A010917

/-- `A072263(n+1)+A005843(A072264(n))` -/
def P4201003290041529882.Spec : Prop :=
  ∀ n, P4201003290041529882.a n = A010917 n

end A010917

/-!
# A010918: Shallit sequence S(8,55): a(n) = floor(a(n-1)^2/a(n-2) + 1).

The programs for A010918, the canonical program `A010918.P5120366183503055095` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010918 has offset 0).

The definition of A010918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1)` (program `A010918.P5120366183503055095`, by `A010918.P5120366183503055095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010918.P5120366183503055095

`floor(a(n-1)²/a(n-2)+1)` with `a(0)=8, a(1)=55`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010918

/-- `floor(a(n-1)²/a(n-2)+1)` -/
def P5120366183503055095.Spec : Prop :=
  ∀ n, P5120366183503055095.a n = A010918 n

theorem P5120366183503055095.correct : P5120366183503055095.Spec := by
  intro n
  simp only [A010918]

end A010918

/-! ## A010918.P6413885047046936841

`ogf((8+7x-7x^2-7x^3)/(1-6x-7x^2+5x^3+6x^4))`
-/

namespace A010918.P6413885047046936841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 7, -7, -7] [1, -6, -7, 5, 6] n

end

end A010918.P6413885047046936841

namespace A010918

/-- `ogf((8+7x-7x^2-7x^3)/(1-6x-7x^2+5x^3+6x^4))` -/
def P6413885047046936841.Spec : Prop :=
  ∀ n, P6413885047046936841.a n = A010918 n

end A010918

/-! ## A010918.P17478347578574744981

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=8, a(1)=55`
-/

namespace A010918.P17478347578574744981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 55] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉

end

end A010918.P17478347578574744981

namespace A010918

/-- `ceil(a(n-1)/a(n-2)*a(n-1))` -/
def P17478347578574744981.Spec : Prop :=
  ∀ n, P17478347578574744981.a n = A010918 n

end A010918

/-! ## A010918.P14525483932043941307

`ceil(a(n-1)²/a(n-2))` with `a(0)=8, a(1)=55`
-/

namespace A010918.P14525483932043941307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 55] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A010918.P14525483932043941307

namespace A010918

/-- `ceil(a(n-1)²/a(n-2))` -/
def P14525483932043941307.Spec : Prop :=
  ∀ n, P14525483932043941307.a n = A010918 n

end A010918

/-!
# A010919: Pisot sequence T(4,13), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A010919, the canonical program `A010919.P15644522350022739563` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010919 has offset 0).

The definition of A010919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A010919.P15644522350022739563`, by `A010919.P15644522350022739563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010919.P15644522350022739563

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=13`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010919

/-- `floor(a(n-1)²/a(n-2))` -/
def P15644522350022739563.Spec : Prop :=
  ∀ n, P15644522350022739563.a n = A010919 n

theorem P15644522350022739563.correct : P15644522350022739563.Spec := by
  intro n
  simp only [A010919]

end A010919

/-! ## A010919.P14122187939501644990

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=13`
-/

namespace A010919.P14122187939501644990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A010919.P14122187939501644990

namespace A010919

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P14122187939501644990.Spec : Prop :=
  ∀ n, P14122187939501644990.a n = A010919 n

theorem P14122187939501644990.correct : P14122187939501644990.Spec := by
  intro n
  simp only [A010919, Nat.add_sub_cancel, A010919.P14122187939501644990.a, A010919.P15644522350022739563.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A010919

/-! ## A010919.P14514449319728016335

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=4, a(1)=13`
-/

namespace A010919.P14514449319728016335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A010919.P14514449319728016335

namespace A010919

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P14514449319728016335.Spec : Prop :=
  ∀ n, P14514449319728016335.a n = A010919 n

end A010919

/-!
# A010921: Shallit sequence S(3,13), a(n)=[ a(n-1)^2/a(n-2)+1 ].

The programs for A010921, the canonical program `A010921.P7878904711024539947` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010921 has offset 0).

The definition of A010921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010921.P7878904711024539947

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=3, a(1)=13`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010921

/-- `floor(a(n-1)/a(n-2)*a(n-1))+1` -/
def P7878904711024539947.Spec : Prop :=
  ∀ n, P7878904711024539947.a n = A010921 n

theorem P7878904711024539947.correct : P7878904711024539947.Spec := by
  intro n
  simp only [A010921]

end A010921

/-! ## A010921.P7427016478510169098

`ceil(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=13`
-/

namespace A010921.P7427016478510169098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A010921.P7427016478510169098

namespace A010921

/-- `ceil(a(n-1)²/a(n-2))` -/
def P7427016478510169098.Spec : Prop :=
  ∀ n, P7427016478510169098.a n = A010921 n

end A010921

/-! ## A010921.P5845193038631666019

`floor(a(n-1)²/a(n-2))+1` with `a(0)=3, a(1)=13`
-/

namespace A010921.P5845193038631666019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A010921.P5845193038631666019

namespace A010921

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P5845193038631666019.Spec : Prop :=
  ∀ n, P5845193038631666019.a n = A010921 n

theorem P5845193038631666019.correct : P5845193038631666019.Spec := by
  intro n
  simp only [A010921, Nat.add_sub_cancel, A010921.P5845193038631666019.a, A010921.P7878904711024539947.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A010921

/-! ## A010921.P4526554469807172832

`xor(A054908(A051885(n)), A275634(n))`
-/

namespace A010921.P4526554469807172832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054908 (A051885 n).toNat) (A275634 n)

end

end A010921.P4526554469807172832

namespace A010921

/-- `xor(A054908(A051885(n)), A275634(n))` -/
def P4526554469807172832.Spec : Prop :=
  ∀ n, P4526554469807172832.a n = A010921 n

end A010921

/-! ## A010921.P16805608645700308165

`A275634(n)+A014045(A203965(n+1))`
-/

namespace A010921.P16805608645700308165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275634 n + A014045 (A203965 (n + 1)).toNat

end

end A010921.P16805608645700308165

namespace A010921

/-- `A275634(n)+A014045(A203965(n+1))` -/
def P16805608645700308165.Spec : Prop :=
  ∀ n, P16805608645700308165.a n = A010921 n

end A010921

/-!
# A010922: Pisot sequence T(14,23), a(n)=[ a(n-1)^2/a(n-2) ].

The programs for A010922, the canonical program `A010922.P7127524194906420492` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010922 has offset 0).

The definition of A010922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010922.P7127524194906420492

`floor(a(n-1)²/a(n-2))` with `a(0)=14, a(1)=23`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010922

/-- `floor(a(n-1)²/a(n-2))` -/
def P7127524194906420492.Spec : Prop :=
  ∀ n, P7127524194906420492.a n = A010922 n

theorem P7127524194906420492.correct : P7127524194906420492.Spec := by
  intro n
  simp only [A010922]

end A010922

/-! ## A010922.P12490185346432201430

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=14, a(1)=23`
-/

namespace A010922.P12490185346432201430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 23] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A010922.P12490185346432201430

namespace A010922

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P12490185346432201430.Spec : Prop :=
  ∀ n, P12490185346432201430.a n = A010922 n

end A010922

/-! ## A010922.P5589965910924509562

`A001462(8*A159695(n))`
-/

namespace A010922.P5589965910924509562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (8 * A159695 n).toNat

end

end A010922.P5589965910924509562

namespace A010922

/-- `A001462(8*A159695(n))` -/
def P5589965910924509562.Spec : Prop :=
  ∀ n, P5589965910924509562.a n = A010922 n

end A010922

/-!
# A010923: Shallit sequence S(14,23), a(n)=[ a(n-1)^2/a(n-2)+1 ].

The programs for A010923, the canonical program `A010923.P1125633955524649637` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010923 has offset 0).

The definition of A010923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010923.P1125633955524649637

`floor(a(n-1)²/a(n-2))+1` with `a(0)=14, a(1)=23`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010923

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P1125633955524649637.Spec : Prop :=
  ∀ n, P1125633955524649637.a n = A010923 n

theorem P1125633955524649637.correct : P1125633955524649637.Spec := by
  intro n
  simp only [A010923]

end A010923

/-! ## A010923.P422178212691728349

`A104136(A251319(n+2))`
-/

namespace A010923.P422178212691728349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104136 (A251319 (n + 2)).toNat

end

end A010923.P422178212691728349

namespace A010923

/-- `A104136(A251319(n+2))` -/
def P422178212691728349.Spec : Prop :=
  ∀ n, P422178212691728349.a n = A010923 n

end A010923

/-!
# A010924: Pisot sequence E(8,55), a(n) = floor(a(n-1)^2/a(n-2) + 1/2).

The programs for A010924, the canonical program `A010924.P18055915265960116702` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010924 has offset 0).

The definition of A010924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A010924.P18055915265960116702`, by `A010924.P18055915265960116702.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010924.P15397944982737894799

`6*a(n-1)+6*a(n-2)` with `a(0)=8, a(1)=55`
-/

namespace A010924.P15397944982737894799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 55] fun n a =>
  6 * a (n - 1) + 6 * a (n - 2)

end

end A010924.P15397944982737894799

namespace A010924

/-- `6*a(n-1)+6*a(n-2)` -/
def P15397944982737894799.Spec : Prop :=
  ∀ n, (P15397944982737894799.a n : ℤ) = A010924 n

end A010924

/-! ## A010924.P18055915265960116702

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=8, a(1)=55`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010924

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P18055915265960116702.Spec : Prop :=
  ∀ n, P18055915265960116702.a n = A010924 n

theorem P18055915265960116702.correct : P18055915265960116702.Spec := by
  intro n
  simp only [A010924]

end A010924

/-! ## A010924.P13349646673636660116

`ogf((8+7x)/(1-6x-6x^2))`
-/

namespace A010924.P13349646673636660116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 7] [1, -6, -6] n

end

end A010924.P13349646673636660116

namespace A010924

/-- `ogf((8+7x)/(1-6x-6x^2))` -/
def P13349646673636660116.Spec : Prop :=
  ∀ n, P13349646673636660116.a n = A010924 n

end A010924

/-! ## A010924.P14457362988826491986

`6*(a(n-1)+a(n-2))` with `a(0)=8, a(1)=55`
-/

namespace A010924.P14457362988826491986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 55] fun n a =>
  6 * (a (n - 1) + a (n - 2))

end

end A010924.P14457362988826491986

namespace A010924

/-- `6*(a(n-1)+a(n-2))` -/
def P14457362988826491986.Spec : Prop :=
  ∀ n, (P14457362988826491986.a n : ℤ) = A010924 n

end A010924

/-! ## A010924.P6047346042295190336

`A180167(n+1)+A180167(n)`
-/

namespace A010924.P6047346042295190336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180167 (n + 1) + A180167 n

end

end A010924.P6047346042295190336

namespace A010924

/-- `A180167(n+1)+A180167(n)` -/
def P6047346042295190336.Spec : Prop :=
  ∀ n, P6047346042295190336.a n = A010924 n

end A010924

/-! ## A010924.P6073109629497699796

`A180167(n+2)/6`
-/

namespace A010924.P6073109629497699796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180167 (n + 2) : ℚ) / 6

end

end A010924.P6073109629497699796

namespace A010924

/-- `A180167(n+2)/6` -/
def P6073109629497699796.Spec : Prop :=
  ∀ n, P6073109629497699796.a n = (A010924 n : ℚ)

end A010924

/-! ## A010924.P11894772456523366159

`A057089(n+3)/36`
-/

namespace A010924.P11894772456523366159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057089 (n + 3) : ℚ) / 36

end

end A010924.P11894772456523366159

namespace A010924

/-- `A057089(n+3)/36` -/
def P11894772456523366159.Spec : Prop :=
  ∀ n, P11894772456523366159.a n = (A010924 n : ℚ)

end A010924

/-!
# A010925: Pisot sequence T(5,21), a(n) = floor( a(n-1)^2/a(n-2) ).

The programs for A010925, the canonical program `A010925.P11477425300875490213` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010925 has offset 0).

The definition of A010925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A010925.P11477425300875490213`, by `A010925.P11477425300875490213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010925.P11477425300875490213

`floor(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=21`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010925

/-- `floor(a(n-1)²/a(n-2))` -/
def P11477425300875490213.Spec : Prop :=
  ∀ n, P11477425300875490213.a n = A010925 n

theorem P11477425300875490213.correct : P11477425300875490213.Spec := by
  intro n
  simp only [A010925]

end A010925

/-! ## A010925.P4335194592078888957

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=5, a(1)=21`
-/

namespace A010925.P4335194592078888957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 21] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A010925.P4335194592078888957

namespace A010925

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P4335194592078888957.Spec : Prop :=
  ∀ n, P4335194592078888957.a n = A010925 n

theorem P4335194592078888957.correct : P4335194592078888957.Spec := by
  intro n
  simp only [A010925, Nat.add_sub_cancel, A010925.P4335194592078888957.a, A010925.P11477425300875490213.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A010925

/-! ## A010925.P13992604033856814729

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=5, a(1)=21`
-/

namespace A010925.P13992604033856814729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 21] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A010925.P13992604033856814729

namespace A010925

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P13992604033856814729.Spec : Prop :=
  ∀ n, P13992604033856814729.a n = A010925 n

end A010925

/-!
# A010927: Binomial coefficient C(11,n).

The programs for A010927, the canonical program `A010927.P2207076889246807047` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010927 has offset 0).

The definition of A010927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(11, n)` (program `A010927.P2207076889246807047`, by `A010927.P2207076889246807047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010927.P2207076889246807047

`C(11, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010927

/-- `C(11, n)` -/
def P2207076889246807047.Spec : Prop :=
  ∀ n, (P2207076889246807047.a n : ℤ) = A010927 n

theorem P2207076889246807047.correct : P2207076889246807047.Spec := by
  intro n
  simp only [A010927]

end A010927

/-! ## A010927.P5135055745659982591

`(12/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010927.P5135055745659982591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (12 / (n : ℚ) - 1) * a (n - 1)

end

end A010927.P5135055745659982591

namespace A010927

/-- `(12/n-1)*a(n-1)` -/
def P5135055745659982591.Spec : Prop :=
  ∀ n, P5135055745659982591.a n = (A010927 n : ℚ)

end A010927

/-! ## A010927.P975290449263732653

`A261365(n+22)`
-/

namespace A010927.P975290449263732653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261365 (n + 22)

end

end A010927.P975290449263732653

namespace A010927

/-- `A261365(n+22)` -/
def P975290449263732653.Spec : Prop :=
  ∀ n, P975290449263732653.a n = A010927 n

end A010927

/-! ## A010927.P16759845827019375383

`A034871(n+30)`
-/

namespace A010927.P16759845827019375383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034871 (n + 30)

end

end A010927.P16759845827019375383

namespace A010927

/-- `A034871(n+30)` -/
def P16759845827019375383.Spec : Prop :=
  ∀ n, P16759845827019375383.a n = A010927 n

end A010927

/-! ## A010927.P9394834572240563066

`A074909(n+55)`
-/

namespace A010927.P9394834572240563066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 55)

end

end A010927.P9394834572240563066

namespace A010927

/-- `A074909(n+55)` -/
def P9394834572240563066.Spec : Prop :=
  ∀ n, P9394834572240563066.a n = A010927 n

end A010927

/-!
# A010928: Binomial coefficient C(12,n).

The programs for A010928, the canonical program `A010928.P17981460885699009657` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010928 has offset 0).

The definition of A010928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(12, n)` (program `A010928.P17981460885699009657`, by `A010928.P17981460885699009657.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010928.P17981460885699009657

`C(12, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010928

/-- `C(12, n)` -/
def P17981460885699009657.Spec : Prop :=
  ∀ n, (P17981460885699009657.a n : ℤ) = A010928 n

theorem P17981460885699009657.correct : P17981460885699009657.Spec := by
  intro n
  simp only [A010928]

end A010928

/-! ## A010928.P8576881677952997626

`(13/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010928.P8576881677952997626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (13 / (n : ℚ) - 1) * a (n - 1)

end

end A010928.P8576881677952997626

namespace A010928

/-- `(13/n-1)*a(n-1)` -/
def P8576881677952997626.Spec : Prop :=
  ∀ n, P8576881677952997626.a n = (A010928 n : ℚ)

end A010928

/-! ## A010928.P11113374340546515302

`lcm(13, a(n-1))/n-a(n-1)` with `a(0)=1`
-/

namespace A010928.P11113374340546515302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 13 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ) - a (n - 1)

end

end A010928.P11113374340546515302

namespace A010928

/-- `lcm(13, a(n-1))/n-a(n-1)` -/
def P11113374340546515302.Spec : Prop :=
  ∀ n, P11113374340546515302.a n = (A010928 n : ℚ)

end A010928

/-! ## A010928.P12743235817496513569

`A176849(n+8)`
-/

namespace A010928.P12743235817496513569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176849 (n + 8)

end

end A010928.P12743235817496513569

namespace A010928

/-- `A176849(n+8)` -/
def P12743235817496513569.Spec : Prop :=
  ∀ n, P12743235817496513569.a n = A010928 n

end A010928

/-! ## A010928.P1633807788833764872

`A123554(n+12)`
-/

namespace A010928.P1633807788833764872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123554 (n + 12)

end

end A010928.P1633807788833764872

namespace A010928

/-- `A123554(n+12)` -/
def P1633807788833764872.Spec : Prop :=
  ∀ n, P1633807788833764872.a n = A010928 n

end A010928

/-!
# A010929: Binomial coefficient C(13,n).

The programs for A010929, the canonical program `A010929.P8809548726928671790` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010929 has offset 0).

The definition of A010929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(13, n)` (program `A010929.P8809548726928671790`, by `A010929.P8809548726928671790.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010929.P8809548726928671790

`C(13, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010929

/-- `C(13, n)` -/
def P8809548726928671790.Spec : Prop :=
  ∀ n, (P8809548726928671790.a n : ℤ) = A010929 n

theorem P8809548726928671790.correct : P8809548726928671790.Spec := by
  intro n
  simp only [A010929]

end A010929

/-! ## A010929.P8337267540548333011

`(14/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010929.P8337267540548333011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (14 / (n : ℚ) - 1) * a (n - 1)

end

end A010929.P8337267540548333011

namespace A010929

/-- `(14/n-1)*a(n-1)` -/
def P8337267540548333011.Spec : Prop :=
  ∀ n, P8337267540548333011.a n = (A010929 n : ℚ)

end A010929

/-! ## A010929.P7157325658268435026

`A261507(n+27)`
-/

namespace A010929.P7157325658268435026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261507 (n + 27)

end

end A010929.P7157325658268435026

namespace A010929

/-- `A261507(n+27)` -/
def P7157325658268435026.Spec : Prop :=
  ∀ n, P7157325658268435026.a n = A010929 n

end A010929

/-! ## A010929.P17159065018829074596

`A261365(n+34)`
-/

namespace A010929.P17159065018829074596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261365 (n + 34)

end

end A010929.P17159065018829074596

namespace A010929

/-- `A261365(n+34)` -/
def P17159065018829074596.Spec : Prop :=
  ∀ n, P17159065018829074596.a n = A010929 n

end A010929

/-! ## A010929.P5583174275382999796

`A034871(n+42)`
-/

namespace A010929.P5583174275382999796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034871 (n + 42)

end

end A010929.P5583174275382999796

namespace A010929

/-- `A034871(n+42)` -/
def P5583174275382999796.Spec : Prop :=
  ∀ n, P5583174275382999796.a n = A010929 n

end A010929

/-!
# A010930: Binomial coefficient C(14,n).

The programs for A010930, the canonical program `A010930.P5123519055877135526` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010930 has offset 0).

The definition of A010930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(14, n)` (program `A010930.P5123519055877135526`, by `A010930.P5123519055877135526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010930.P5123519055877135526

`C(14, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010930

/-- `C(14, n)` -/
def P5123519055877135526.Spec : Prop :=
  ∀ n, (P5123519055877135526.a n : ℤ) = A010930 n

theorem P5123519055877135526.correct : P5123519055877135526.Spec := by
  intro n
  simp only [A010930]

end A010930

/-! ## A010930.P4615747990383223072

`(15/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010930.P4615747990383223072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (15 / (n : ℚ) - 1) * a (n - 1)

end

end A010930.P4615747990383223072

namespace A010930

/-- `(15/n-1)*a(n-1)` -/
def P4615747990383223072.Spec : Prop :=
  ∀ n, P4615747990383223072.a n = (A010930 n : ℚ)

end A010930

/-! ## A010930.P385252630348413493

`A034870(n+49)`
-/

namespace A010930.P385252630348413493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (n + 49)

end

end A010930.P385252630348413493

namespace A010930

/-- `A034870(n+49)` -/
def P385252630348413493.Spec : Prop :=
  ∀ n, P385252630348413493.a n = A010930 n

end A010930

/-! ## A010930.P11476696236172118305

`A135278(n+90)`
-/

namespace A010930.P11476696236172118305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (n + 90)

end

end A010930.P11476696236172118305

namespace A010930

/-- `A135278(n+90)` -/
def P11476696236172118305.Spec : Prop :=
  ∀ n, P11476696236172118305.a n = A010930 n

end A010930

/-! ## A010930.P17323244277696566292

`A074909(n+91)`
-/

namespace A010930.P17323244277696566292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 91)

end

end A010930.P17323244277696566292

namespace A010930

/-- `A074909(n+91)` -/
def P17323244277696566292.Spec : Prop :=
  ∀ n, P17323244277696566292.a n = A010930 n

end A010930

/-!
# A010931: Binomial coefficient C(15,n).

The programs for A010931, the canonical program `A010931.P448064230999247125` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010931 has offset 0).

The definition of A010931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(15, n)` (program `A010931.P448064230999247125`, by `A010931.P448064230999247125.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010931.P448064230999247125

`C(15, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010931

/-- `C(15, n)` -/
def P448064230999247125.Spec : Prop :=
  ∀ n, (P448064230999247125.a n : ℤ) = A010931 n

theorem P448064230999247125.correct : P448064230999247125.Spec := by
  intro n
  simp only [A010931]

end A010931

/-! ## A010931.P1606529988373163138

`(16/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010931.P1606529988373163138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (16 / (n : ℚ) - 1) * a (n - 1)

end

end A010931.P1606529988373163138

namespace A010931

/-- `(16/n-1)*a(n-1)` -/
def P1606529988373163138.Spec : Prop :=
  ∀ n, P1606529988373163138.a n = (A010931 n : ℚ)

end A010931

/-! ## A010931.P2360468105365822703

`lcm(16-n, a(n-1))/n` with `a(0)=1`
-/

namespace A010931.P2360468105365822703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (16 - (n : ℤ)) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ)

end

end A010931.P2360468105365822703

namespace A010931

/-- `lcm(16-n, a(n-1))/n` -/
def P2360468105365822703.Spec : Prop :=
  ∀ n, P2360468105365822703.a n = (A010931 n : ℚ)

end A010931

/-! ## A010931.P5199648107674825754

`A084546(n+26)`
-/

namespace A010931.P5199648107674825754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 (n + 26)

end

end A010931.P5199648107674825754

namespace A010931

/-- `A084546(n+26)` -/
def P5199648107674825754.Spec : Prop :=
  ∀ n, P5199648107674825754.a n = A010931 n

end A010931

/-! ## A010931.P4620242426505482687

`A119969(n+30)`
-/

namespace A010931.P4620242426505482687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119969 (n + 30)

end

end A010931.P4620242426505482687

namespace A010931

/-- `A119969(n+30)` -/
def P4620242426505482687.Spec : Prop :=
  ∀ n, P4620242426505482687.a n = A010931 n

end A010931

/-!
# A010932: Binomial coefficient C(16,n).

The programs for A010932, the canonical program `A010932.P9142298306390073559` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010932 has offset 0).

The definition of A010932 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(16, n)` (program `A010932.P9142298306390073559`, by `A010932.P9142298306390073559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010932.P9142298306390073559

`C(16, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010932

/-- `C(16, n)` -/
def P9142298306390073559.Spec : Prop :=
  ∀ n, (P9142298306390073559.a n : ℤ) = A010932 n

theorem P9142298306390073559.correct : P9142298306390073559.Spec := by
  intro n
  simp only [A010932]

end A010932

/-! ## A010932.P11364170552362909007

`(17/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010932.P11364170552362909007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (17 / (n : ℚ) - 1) * a (n - 1)

end

end A010932.P11364170552362909007

namespace A010932

/-- `(17/n-1)*a(n-1)` -/
def P11364170552362909007.Spec : Prop :=
  ∀ n, P11364170552362909007.a n = (A010932 n : ℚ)

end A010932

/-! ## A010932.P7670528676688944894

`lcm(17, a(n-1))/n-a(n-1)` with `a(0)=1`
-/

namespace A010932.P7670528676688944894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 17 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ) - a (n - 1)

end

end A010932.P7670528676688944894

namespace A010932

/-- `lcm(17, a(n-1))/n-a(n-1)` -/
def P7670528676688944894.Spec : Prop :=
  ∀ n, P7670528676688944894.a n = (A010932 n : ℚ)

end A010932

/-! ## A010932.P5330156605688006340

`A345135(n+16)`
-/

namespace A010932.P5330156605688006340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 (n + 16)

end

end A010932.P5330156605688006340

namespace A010932

/-- `A345135(n+16)` -/
def P5330156605688006340.Spec : Prop :=
  ∀ n, P5330156605688006340.a n = A010932 n

end A010932

/-! ## A010932.P9963282584425167506

`A217285(n+18)`
-/

namespace A010932.P9963282584425167506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (n + 18)

end

end A010932.P9963282584425167506

namespace A010932

/-- `A217285(n+18)` -/
def P9963282584425167506.Spec : Prop :=
  ∀ n, P9963282584425167506.a n = A010932 n

end A010932

/-!
# A010933: Binomial coefficient C(17,n).

The programs for A010933, the canonical program `A010933.P11328883657262374417` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010933 has offset 0).

The definition of A010933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(17, n)` (program `A010933.P11328883657262374417`, by `A010933.P11328883657262374417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010933.P11328883657262374417

`C(17, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010933

/-- `C(17, n)` -/
def P11328883657262374417.Spec : Prop :=
  ∀ n, (P11328883657262374417.a n : ℤ) = A010933 n

theorem P11328883657262374417.correct : P11328883657262374417.Spec := by
  intro n
  simp only [A010933]

end A010933

/-! ## A010933.P4621840224130881194

`(18/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010933.P4621840224130881194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (18 / (n : ℚ) - 1) * a (n - 1)

end

end A010933.P4621840224130881194

namespace A010933

/-- `(18/n-1)*a(n-1)` -/
def P4621840224130881194.Spec : Prop :=
  ∀ n, P4621840224130881194.a n = (A010933 n : ℚ)

end A010933

/-! ## A010933.P6016040930527825946

`A261365(n+48)`
-/

namespace A010933.P6016040930527825946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261365 (n + 48)

end

end A010933.P6016040930527825946

namespace A010933

/-- `A261365(n+48)` -/
def P6016040930527825946.Spec : Prop :=
  ∀ n, P6016040930527825946.a n = A010933 n

end A010933

/-! ## A010933.P13951662083773209801

`A034871(n+72)`
-/

namespace A010933.P13951662083773209801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034871 (n + 72)

end

end A010933.P13951662083773209801

namespace A010933

/-- `A034871(n+72)` -/
def P13951662083773209801.Spec : Prop :=
  ∀ n, P13951662083773209801.a n = A010933 n

end A010933

/-! ## A010933.P14206806016100881344

`A135278(135+n)`
-/

namespace A010933.P14206806016100881344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (135 + n)

end

end A010933.P14206806016100881344

namespace A010933

/-- `A135278(135+n)` -/
def P14206806016100881344.Spec : Prop :=
  ∀ n, P14206806016100881344.a n = A010933 n

end A010933

/-!
# A010934: Binomial coefficient C(18,n).

The programs for A010934, the canonical program `A010934.P5709709813220762860` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010934 has offset 0).

The definition of A010934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(18, n)` (program `A010934.P5709709813220762860`, by `A010934.P5709709813220762860.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010934.P5709709813220762860

`C(18, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010934

/-- `C(18, n)` -/
def P5709709813220762860.Spec : Prop :=
  ∀ n, (P5709709813220762860.a n : ℤ) = A010934 n

theorem P5709709813220762860.correct : P5709709813220762860.Spec := by
  intro n
  simp only [A010934]

end A010934

/-! ## A010934.P11647926635453944786

`(19/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010934.P11647926635453944786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (19 / (n : ℚ) - 1) * a (n - 1)

end

end A010934.P11647926635453944786

namespace A010934

/-- `(19/n-1)*a(n-1)` -/
def P11647926635453944786.Spec : Prop :=
  ∀ n, P11647926635453944786.a n = (A010934 n : ℚ)

end A010934

/-! ## A010934.P12075733189424380449

`A176849(n+21)`
-/

namespace A010934.P12075733189424380449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176849 (n + 21)

end

end A010934.P12075733189424380449

namespace A010934

/-- `A176849(n+21)` -/
def P12075733189424380449.Spec : Prop :=
  ∀ n, P12075733189424380449.a n = A010934 n

end A010934

/-! ## A010934.P15552609459621158206

`A034870(n+81)`
-/

namespace A010934.P15552609459621158206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (n + 81)

end

end A010934.P15552609459621158206

namespace A010934

/-- `A034870(n+81)` -/
def P15552609459621158206.Spec : Prop :=
  ∀ n, P15552609459621158206.a n = A010934 n

end A010934

/-! ## A010934.P11076529054152978865

`A135278(152+n)`
-/

namespace A010934.P11076529054152978865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (152 + n)

end

end A010934.P11076529054152978865

namespace A010934

/-- `A135278(152+n)` -/
def P11076529054152978865.Spec : Prop :=
  ∀ n, P11076529054152978865.a n = A010934 n

end A010934

/-!
# A010935: Binomial coefficient C(19,n).

The programs for A010935, the canonical program `A010935.P15911118536868165097` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010935 has offset 0).

The definition of A010935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(19, n)` (program `A010935.P15911118536868165097`, by `A010935.P15911118536868165097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010935.P15911118536868165097

`C(19, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010935

/-- `C(19, n)` -/
def P15911118536868165097.Spec : Prop :=
  ∀ n, (P15911118536868165097.a n : ℤ) = A010935 n

theorem P15911118536868165097.correct : P15911118536868165097.Spec := by
  intro n
  simp only [A010935]

end A010935

/-! ## A010935.P14537326285238172224

`(20/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010935.P14537326285238172224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (20 / (n : ℚ) - 1) * a (n - 1)

end

end A010935.P14537326285238172224

namespace A010935

/-- `(20/n-1)*a(n-1)` -/
def P14537326285238172224.Spec : Prop :=
  ∀ n, P14537326285238172224.a n = (A010935 n : ℚ)

end A010935

/-! ## A010935.P8576722821517851628

`A261365(n+66)`
-/

namespace A010935.P8576722821517851628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261365 (n + 66)

end

end A010935.P8576722821517851628

namespace A010935

/-- `A261365(n+66)` -/
def P8576722821517851628.Spec : Prop :=
  ∀ n, P8576722821517851628.a n = A010935 n

end A010935

/-! ## A010935.P14987846879342757736

`A034871(n+90)`
-/

namespace A010935.P14987846879342757736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034871 (n + 90)

end

end A010935.P14987846879342757736

namespace A010935

/-- `A034871(n+90)` -/
def P14987846879342757736.Spec : Prop :=
  ∀ n, P14987846879342757736.a n = A010935 n

end A010935

/-! ## A010935.P1498978323522874174

`A074909(171+n)`
-/

namespace A010935.P1498978323522874174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (171 + n)

end

end A010935.P1498978323522874174

namespace A010935

/-- `A074909(171+n)` -/
def P1498978323522874174.Spec : Prop :=
  ∀ n, P1498978323522874174.a n = A010935 n

end A010935

/-!
# A010936: Binomial coefficient C(20,n).

The programs for A010936, the canonical program `A010936.P18239390935434533426` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010936 has offset 0).

The definition of A010936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(20, n)` (program `A010936.P18239390935434533426`, by `A010936.P18239390935434533426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010936.P18239390935434533426

`C(20, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010936

/-- `C(20, n)` -/
def P18239390935434533426.Spec : Prop :=
  ∀ n, (P18239390935434533426.a n : ℤ) = A010936 n

theorem P18239390935434533426.correct : P18239390935434533426.Spec := by
  intro n
  simp only [A010936]

end A010936

/-! ## A010936.P13738731154068817523

`(21/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010936.P13738731154068817523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (21 / (n : ℚ) - 1) * a (n - 1)

end

end A010936.P13738731154068817523

namespace A010936

/-- `(21/n-1)*a(n-1)` -/
def P13738731154068817523.Spec : Prop :=
  ∀ n, P13738731154068817523.a n = (A010936 n : ℚ)

end A010936

/-! ## A010936.P8878377090867902200

`A123554(n+25)`
-/

namespace A010936.P8878377090867902200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123554 (n + 25)

end

end A010936.P8878377090867902200

namespace A010936

/-- `A123554(n+25)` -/
def P8878377090867902200.Spec : Prop :=
  ∀ n, P8878377090867902200.a n = A010936 n

end A010936

/-! ## A010936.P5117439011918167926

`A135278(189+n)`
-/

namespace A010936.P5117439011918167926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (189 + n)

end

end A010936.P5117439011918167926

namespace A010936

/-- `A135278(189+n)` -/
def P5117439011918167926.Spec : Prop :=
  ∀ n, P5117439011918167926.a n = A010936 n

end A010936

/-! ## A010936.P14475650192576685110

`A074909(190+n)`
-/

namespace A010936.P14475650192576685110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (190 + n)

end

end A010936.P14475650192576685110

namespace A010936

/-- `A074909(190+n)` -/
def P14475650192576685110.Spec : Prop :=
  ∀ n, P14475650192576685110.a n = A010936 n

end A010936

/-!
# A010937: Binomial coefficient C(21,n).

The programs for A010937, the canonical program `A010937.P17271848356721746867` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010937 has offset 0).

The definition of A010937 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(21, n)` (program `A010937.P17271848356721746867`, by `A010937.P17271848356721746867.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010937.P17271848356721746867

`C(21, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010937

/-- `C(21, n)` -/
def P17271848356721746867.Spec : Prop :=
  ∀ n, (P17271848356721746867.a n : ℤ) = A010937 n

theorem P17271848356721746867.correct : P17271848356721746867.Spec := by
  intro n
  simp only [A010937]

end A010937

/-! ## A010937.P9444594659071849263

`(22/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010937.P9444594659071849263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (22 / (n : ℚ) - 1) * a (n - 1)

end

end A010937.P9444594659071849263

namespace A010937

/-- `(22/n-1)*a(n-1)` -/
def P9444594659071849263.Spec : Prop :=
  ∀ n, P9444594659071849263.a n = (A010937 n : ℚ)

end A010937

/-! ## A010937.P11358157616448500756

`A261507(n+41)`
-/

namespace A010937.P11358157616448500756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261507 (n + 41)

end

end A010937.P11358157616448500756

namespace A010937

/-- `A261507(n+41)` -/
def P11358157616448500756.Spec : Prop :=
  ∀ n, P11358157616448500756.a n = A010937 n

end A010937

/-! ## A010937.P13803726720140928075

`A084546(n+42)`
-/

namespace A010937.P13803726720140928075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 (n + 42)

end

end A010937.P13803726720140928075

namespace A010937

/-- `A084546(n+42)` -/
def P13803726720140928075.Spec : Prop :=
  ∀ n, P13803726720140928075.a n = A010937 n

end A010937

/-! ## A010937.P5496103383870614306

`A034871(110+n)`
-/

namespace A010937.P5496103383870614306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034871 (110 + n)

end

end A010937.P5496103383870614306

namespace A010937

/-- `A034871(110+n)` -/
def P5496103383870614306.Spec : Prop :=
  ∀ n, P5496103383870614306.a n = A010937 n

end A010937

/-!
# A010938: Binomial coefficient C(22,n).

The programs for A010938, the canonical program `A010938.P10595152961309943169` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010938 has offset 0).

The definition of A010938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(22, n)` (program `A010938.P10595152961309943169`, by `A010938.P10595152961309943169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010938.P10595152961309943169

`C(22, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010938

/-- `C(22, n)` -/
def P10595152961309943169.Spec : Prop :=
  ∀ n, (P10595152961309943169.a n : ℤ) = A010938 n

theorem P10595152961309943169.correct : P10595152961309943169.Spec := by
  intro n
  simp only [A010938]

end A010938

/-! ## A010938.P5034971311622619584

`(23/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010938.P5034971311622619584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (23 / (n : ℚ) - 1) * a (n - 1)

end

end A010938.P5034971311622619584

namespace A010938

/-- `(23/n-1)*a(n-1)` -/
def P5034971311622619584.Spec : Prop :=
  ∀ n, P5034971311622619584.a n = (A010938 n : ℚ)

end A010938

/-! ## A010938.P2821458519010824714

`A074909(231+n)`
-/

namespace A010938.P2821458519010824714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (231 + n)

end

end A010938.P2821458519010824714

namespace A010938

/-- `A074909(231+n)` -/
def P2821458519010824714.Spec : Prop :=
  ∀ n, P2821458519010824714.a n = A010938 n

end A010938

/-! ## A010938.P748946043213428548

`A007318(253+n)`
-/

namespace A010938.P748946043213428548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (253 + n)

end

end A010938.P748946043213428548

namespace A010938

/-- `A007318(253+n)` -/
def P748946043213428548.Spec : Prop :=
  ∀ n, P748946043213428548.a n = A010938 n

end A010938

/-! ## A010938.P8139063395151805178

`A135225(277+n)`
-/

namespace A010938.P8139063395151805178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (277 + n)

end

end A010938.P8139063395151805178

namespace A010938

/-- `A135225(277+n)` -/
def P8139063395151805178.Spec : Prop :=
  ∀ n, P8139063395151805178.a n = A010938 n

end A010938

/-!
# A010939: Binomial coefficient C(23,n).

The programs for A010939, the canonical program `A010939.P12119698129088955405` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010939 has offset 0).

The definition of A010939 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(23, n)` (program `A010939.P12119698129088955405`, by `A010939.P12119698129088955405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010939.P12119698129088955405

`C(23, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010939

/-- `C(23, n)` -/
def P12119698129088955405.Spec : Prop :=
  ∀ n, (P12119698129088955405.a n : ℤ) = A010939 n

theorem P12119698129088955405.correct : P12119698129088955405.Spec := by
  intro n
  simp only [A010939]

end A010939

/-! ## A010939.P7360403284260668352

`(24/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010939.P7360403284260668352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (24 / (n : ℚ) - 1) * a (n - 1)

end

end A010939.P7360403284260668352

namespace A010939

/-- `(24/n-1)*a(n-1)` -/
def P7360403284260668352.Spec : Prop :=
  ∀ n, P7360403284260668352.a n = (A010939 n : ℚ)

end A010939

/-! ## A010939.P9458727886509695752

`A074909(253+n)`
-/

namespace A010939.P9458727886509695752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (253 + n)

end

end A010939.P9458727886509695752

namespace A010939

/-- `A074909(253+n)` -/
def P9458727886509695752.Spec : Prop :=
  ∀ n, P9458727886509695752.a n = A010939 n

end A010939

/-! ## A010939.P928347414983061884

`A007318(276+n)`
-/

namespace A010939.P928347414983061884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (276 + n)

end

end A010939.P928347414983061884

namespace A010939

/-- `A007318(276+n)` -/
def P928347414983061884.Spec : Prop :=
  ∀ n, P928347414983061884.a n = A010939 n

end A010939

/-! ## A010939.P14719202953487770305

`abs(A130595(276+n))`
-/

namespace A010939.P14719202953487770305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 (276 + n)|

end

end A010939.P14719202953487770305

namespace A010939

/-- `abs(A130595(276+n))` -/
def P14719202953487770305.Spec : Prop :=
  ∀ n, P14719202953487770305.a n = A010939 n

end A010939

/-!
# A010940: Binomial coefficient C(24,n).

The programs for A010940, the canonical program `A010940.P2947001124224425629` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010940 has offset 0).

The definition of A010940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(24, n)` (program `A010940.P2947001124224425629`, by `A010940.P2947001124224425629.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010940.P2947001124224425629

`C(24, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010940

/-- `C(24, n)` -/
def P2947001124224425629.Spec : Prop :=
  ∀ n, (P2947001124224425629.a n : ℤ) = A010940 n

theorem P2947001124224425629.correct : P2947001124224425629.Spec := by
  intro n
  simp only [A010940]

end A010940

/-! ## A010940.P14321957886442791421

`(25/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010940.P14321957886442791421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (25 / (n : ℚ) - 1) * a (n - 1)

end

end A010940.P14321957886442791421

namespace A010940

/-- `(25/n-1)*a(n-1)` -/
def P14321957886442791421.Spec : Prop :=
  ∀ n, P14321957886442791421.a n = (A010940 n : ℚ)

end A010940

/-! ## A010940.P14267488139852171508

`A105291(n+14)`
-/

namespace A010940.P14267488139852171508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105291 (n + 14)

end

end A010940.P14267488139852171508

namespace A010940

/-- `A105291(n+14)` -/
def P14267488139852171508.Spec : Prop :=
  ∀ n, P14267488139852171508.a n = A010940 n

end A010940

/-! ## A010940.P17369078941493253466

`A074909(276+n)`
-/

namespace A010940.P17369078941493253466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (276 + n)

end

end A010940.P17369078941493253466

namespace A010940

/-- `A074909(276+n)` -/
def P17369078941493253466.Spec : Prop :=
  ∀ n, P17369078941493253466.a n = A010940 n

end A010940

/-! ## A010940.P3897492137314986768

`A007318(300+n)`
-/

namespace A010940.P3897492137314986768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (300 + n)

end

end A010940.P3897492137314986768

namespace A010940

/-- `A007318(300+n)` -/
def P3897492137314986768.Spec : Prop :=
  ∀ n, P3897492137314986768.a n = A010940 n

end A010940

/-!
# A010941: Binomial coefficient C(25,n).

The programs for A010941, the canonical program `A010941.P11106731172932815877` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010941 has offset 0).

The definition of A010941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(25, n)` (program `A010941.P11106731172932815877`, by `A010941.P11106731172932815877.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010941.P11106731172932815877

`C(25, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010941

/-- `C(25, n)` -/
def P11106731172932815877.Spec : Prop :=
  ∀ n, (P11106731172932815877.a n : ℤ) = A010941 n

theorem P11106731172932815877.correct : P11106731172932815877.Spec := by
  intro n
  simp only [A010941]

end A010941

/-! ## A010941.P8994102971492163112

`(26/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010941.P8994102971492163112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (26 / (n : ℚ) - 1) * a (n - 1)

end

end A010941.P8994102971492163112

namespace A010941

/-- `(26/n-1)*a(n-1)` -/
def P8994102971492163112.Spec : Prop :=
  ∀ n, P8994102971492163112.a n = (A010941 n : ℚ)

end A010941

/-! ## A010941.P16504317570024163734

`A217285(n+35)`
-/

namespace A010941.P16504317570024163734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (n + 35)

end

end A010941.P16504317570024163734

namespace A010941

/-- `A217285(n+35)` -/
def P16504317570024163734.Spec : Prop :=
  ∀ n, P16504317570024163734.a n = A010941 n

end A010941

/-! ## A010941.P7132496847394285755

`A074909(300+n)`
-/

namespace A010941.P7132496847394285755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (300 + n)

end

end A010941.P7132496847394285755

namespace A010941

/-- `A074909(300+n)` -/
def P7132496847394285755.Spec : Prop :=
  ∀ n, P7132496847394285755.a n = A010941 n

end A010941

/-! ## A010941.P12128209370642369635

`A007318(325+n)`
-/

namespace A010941.P12128209370642369635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (325 + n)

end

end A010941.P12128209370642369635

namespace A010941

/-- `A007318(325+n)` -/
def P12128209370642369635.Spec : Prop :=
  ∀ n, P12128209370642369635.a n = A010941 n

end A010941

/-!
# A010942: Binomial coefficient C(26,n).

The programs for A010942, the canonical program `A010942.P11909002271165491529` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010942 has offset 0).

The definition of A010942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(26, n)` (program `A010942.P11909002271165491529`, by `A010942.P11909002271165491529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010942.P11909002271165491529

`C(26, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010942

/-- `C(26, n)` -/
def P11909002271165491529.Spec : Prop :=
  ∀ n, (P11909002271165491529.a n : ℤ) = A010942 n

theorem P11909002271165491529.correct : P11909002271165491529.Spec := by
  intro n
  simp only [A010942]

end A010942

/-! ## A010942.P14258797986928971280

`(27/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010942.P14258797986928971280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (27 / (n : ℚ) - 1) * a (n - 1)

end

end A010942.P14258797986928971280

namespace A010942

/-- `(27/n-1)*a(n-1)` -/
def P14258797986928971280.Spec : Prop :=
  ∀ n, P14258797986928971280.a n = (A010942 n : ℚ)

end A010942

/-! ## A010942.P13956330012468101282

`lcm(27, a(n-1))/n-a(n-1)` with `a(0)=1`
-/

namespace A010942.P13956330012468101282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 27 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ) - a (n - 1)

end

end A010942.P13956330012468101282

namespace A010942

/-- `lcm(27, a(n-1))/n-a(n-1)` -/
def P13956330012468101282.Spec : Prop :=
  ∀ n, P13956330012468101282.a n = (A010942 n : ℚ)

end A010942

/-! ## A010942.P4163696758863768249

`A291057(n+17)`
-/

namespace A010942.P4163696758863768249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291057 (n + 17)

end

end A010942.P4163696758863768249

namespace A010942

/-- `A291057(n+17)` -/
def P4163696758863768249.Spec : Prop :=
  ∀ n, P4163696758863768249.a n = A010942 n

end A010942

/-! ## A010942.P7252330414275522774

`A135278(324+n)`
-/

namespace A010942.P7252330414275522774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (324 + n)

end

end A010942.P7252330414275522774

namespace A010942

/-- `A135278(324+n)` -/
def P7252330414275522774.Spec : Prop :=
  ∀ n, P7252330414275522774.a n = A010942 n

end A010942

/-!
# A010943: Binomial coefficient C(27,n).

The programs for A010943, the canonical program `A010943.P12631075133493035761` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010943 has offset 0).

The definition of A010943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(27, n)` (program `A010943.P12631075133493035761`, by `A010943.P12631075133493035761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010943.P12631075133493035761

`C(27, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010943

/-- `C(27, n)` -/
def P12631075133493035761.Spec : Prop :=
  ∀ n, (P12631075133493035761.a n : ℤ) = A010943 n

theorem P12631075133493035761.correct : P12631075133493035761.Spec := by
  intro n
  simp only [A010943]

end A010943

/-! ## A010943.P6254072355541367915

`(28/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010943.P6254072355541367915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (28 / (n : ℚ) - 1) * a (n - 1)

end

end A010943.P6254072355541367915

namespace A010943

/-- `(28/n-1)*a(n-1)` -/
def P6254072355541367915.Spec : Prop :=
  ∀ n, P6254072355541367915.a n = (A010943 n : ℚ)

end A010943

/-! ## A010943.P13425353567842710278

`A007318(378+n)`
-/

namespace A010943.P13425353567842710278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (378 + n)

end

end A010943.P13425353567842710278

namespace A010943

/-- `A007318(378+n)` -/
def P13425353567842710278.Spec : Prop :=
  ∀ n, P13425353567842710278.a n = A010943 n

end A010943

/-! ## A010943.P6654849976266322761

`A071919(406+n)`
-/

namespace A010943.P6654849976266322761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (406 + n)

end

end A010943.P6654849976266322761

namespace A010943

/-- `A071919(406+n)` -/
def P6654849976266322761.Spec : Prop :=
  ∀ n, P6654849976266322761.a n = A010943 n

end A010943

/-! ## A010943.P9395108802146502876

`A010944(n)-a(n-1)` with `a(0)=1`
-/

namespace A010943.P9395108802146502876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010944 n - a (n - 1)

end

end A010943.P9395108802146502876

namespace A010943

/-- `A010944(n)-a(n-1)` -/
def P9395108802146502876.Spec : Prop :=
  ∀ n, P9395108802146502876.a n = A010943 n

end A010943

/-!
# A010944: Binomial coefficient C(28,n).

The programs for A010944, the canonical program `A010944.P9867619226094752617` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010944 has offset 0).

The definition of A010944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(28, n)` (program `A010944.P9867619226094752617`, by `A010944.P9867619226094752617.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010944.P9867619226094752617

`C(28, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010944

/-- `C(28, n)` -/
def P9867619226094752617.Spec : Prop :=
  ∀ n, (P9867619226094752617.a n : ℤ) = A010944 n

theorem P9867619226094752617.correct : P9867619226094752617.Spec := by
  intro n
  simp only [A010944]

end A010944

/-! ## A010944.P3648378538443525346

`(29/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010944.P3648378538443525346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (29 / (n : ℚ) - 1) * a (n - 1)

end

end A010944.P3648378538443525346

namespace A010944

/-- `(29/n-1)*a(n-1)` -/
def P3648378538443525346.Spec : Prop :=
  ∀ n, P3648378538443525346.a n = (A010944 n : ℚ)

end A010944

/-! ## A010944.P6346971832306294690

`A084546(n+64)`
-/

namespace A010944.P6346971832306294690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 (n + 64)

end

end A010944.P6346971832306294690

namespace A010944

/-- `A084546(n+64)` -/
def P6346971832306294690.Spec : Prop :=
  ∀ n, P6346971832306294690.a n = A010944 n

end A010944

/-! ## A010944.P11549802296846511625

`A034870(196+n)`
-/

namespace A010944.P11549802296846511625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (196 + n)

end

end A010944.P11549802296846511625

namespace A010944

/-- `A034870(196+n)` -/
def P11549802296846511625.Spec : Prop :=
  ∀ n, P11549802296846511625.a n = A010944 n

end A010944

/-! ## A010944.P2037063998431479773

`A135278(377+n)`
-/

namespace A010944.P2037063998431479773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (377 + n)

end

end A010944.P2037063998431479773

namespace A010944

/-- `A135278(377+n)` -/
def P2037063998431479773.Spec : Prop :=
  ∀ n, P2037063998431479773.a n = A010944 n

end A010944

/-!
# A010945: Binomial coefficient C(29,n).

The programs for A010945, the canonical program `A010945.P8028212887544683623` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010945 has offset 0).

The definition of A010945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(29, n)` (program `A010945.P8028212887544683623`, by `A010945.P8028212887544683623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010945.P8028212887544683623

`C(29, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010945

/-- `C(29, n)` -/
def P8028212887544683623.Spec : Prop :=
  ∀ n, (P8028212887544683623.a n : ℤ) = A010945 n

theorem P8028212887544683623.correct : P8028212887544683623.Spec := by
  intro n
  simp only [A010945]

end A010945

/-! ## A010945.P17594781193337465201

`(30/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010945.P17594781193337465201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (30 / (n : ℚ) - 1) * a (n - 1)

end

end A010945.P17594781193337465201

namespace A010945

/-- `(30/n-1)*a(n-1)` -/
def P17594781193337465201.Spec : Prop :=
  ∀ n, P17594781193337465201.a n = (A010945 n : ℚ)

end A010945

/-! ## A010945.P11030736116776294558

`A074909(406+n)`
-/

namespace A010945.P11030736116776294558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (406 + n)

end

end A010945.P11030736116776294558

namespace A010945

/-- `A074909(406+n)` -/
def P11030736116776294558.Spec : Prop :=
  ∀ n, P11030736116776294558.a n = A010945 n

end A010945

/-! ## A010945.P7631228208623302942

`A007318(435+n)`
-/

namespace A010945.P7631228208623302942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (435 + n)

end

end A010945.P7631228208623302942

namespace A010945

/-- `A007318(435+n)` -/
def P7631228208623302942.Spec : Prop :=
  ∀ n, P7631228208623302942.a n = A010945 n

end A010945

/-! ## A010945.P8850843807617133617

`A071919(465+n)`
-/

namespace A010945.P8850843807617133617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (465 + n)

end

end A010945.P8850843807617133617

namespace A010945

/-- `A071919(465+n)` -/
def P8850843807617133617.Spec : Prop :=
  ∀ n, P8850843807617133617.a n = A010945 n

end A010945

/-!
# A010946: Binomial coefficient C(30,n).

The programs for A010946, the canonical program `A010946.P13253311853059035782` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010946 has offset 0).

The definition of A010946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(30, n)` (program `A010946.P13253311853059035782`, by `A010946.P13253311853059035782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010946.P13253311853059035782

`C(30, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010946

/-- `C(30, n)` -/
def P13253311853059035782.Spec : Prop :=
  ∀ n, (P13253311853059035782.a n : ℤ) = A010946 n

theorem P13253311853059035782.correct : P13253311853059035782.Spec := by
  intro n
  simp only [A010946]

end A010946

/-! ## A010946.P17715573436286965402

`(31/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010946.P17715573436286965402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (31 / (n : ℚ) - 1) * a (n - 1)

end

end A010946.P17715573436286965402

namespace A010946

/-- `(31/n-1)*a(n-1)` -/
def P17715573436286965402.Spec : Prop :=
  ∀ n, P17715573436286965402.a n = (A010946 n : ℚ)

end A010946

/-! ## A010946.P10616724045806692818

`A123554(n+46)`
-/

namespace A010946.P10616724045806692818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123554 (n + 46)

end

end A010946.P10616724045806692818

namespace A010946

/-- `A123554(n+46)` -/
def P10616724045806692818.Spec : Prop :=
  ∀ n, P10616724045806692818.a n = A010946 n

end A010946

/-! ## A010946.P13619915822387750795

`A074909(435+n)`
-/

namespace A010946.P13619915822387750795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (435 + n)

end

end A010946.P13619915822387750795

namespace A010946

/-- `A074909(435+n)` -/
def P13619915822387750795.Spec : Prop :=
  ∀ n, P13619915822387750795.a n = A010946 n

end A010946

/-! ## A010946.P655577839154304274

`A007318(465+n)`
-/

namespace A010946.P655577839154304274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (465 + n)

end

end A010946.P655577839154304274

namespace A010946

/-- `A007318(465+n)` -/
def P655577839154304274.Spec : Prop :=
  ∀ n, P655577839154304274.a n = A010946 n

end A010946

/-!
# A010947: Binomial coefficient C(31,n).

The programs for A010947, the canonical program `A010947.P6973414842288161330` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010947 has offset 0).

The definition of A010947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(31, n)` (program `A010947.P6973414842288161330`, by `A010947.P6973414842288161330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010947.P6973414842288161330

`C(31, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010947

/-- `C(31, n)` -/
def P6973414842288161330.Spec : Prop :=
  ∀ n, (P6973414842288161330.a n : ℤ) = A010947 n

theorem P6973414842288161330.correct : P6973414842288161330.Spec := by
  intro n
  simp only [A010947]

end A010947

/-! ## A010947.P8968194143720451828

`(32/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010947.P8968194143720451828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (32 / (n : ℚ) - 1) * a (n - 1)

end

end A010947.P8968194143720451828

namespace A010947

/-- `(32/n-1)*a(n-1)` -/
def P8968194143720451828.Spec : Prop :=
  ∀ n, P8968194143720451828.a n = (A010947 n : ℚ)

end A010947

/-! ## A010947.P13004177325075734972

`A014421(211+n)`
-/

namespace A010947.P13004177325075734972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 (211 + n)

end

end A010947.P13004177325075734972

namespace A010947

/-- `A014421(211+n)` -/
def P13004177325075734972.Spec : Prop :=
  ∀ n, P13004177325075734972.a n = A010947 n

end A010947

/-! ## A010947.P8713831948570614201

`A135278(464+n)`
-/

namespace A010947.P8713831948570614201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (464 + n)

end

end A010947.P8713831948570614201

namespace A010947

/-- `A135278(464+n)` -/
def P8713831948570614201.Spec : Prop :=
  ∀ n, P8713831948570614201.a n = A010947 n

end A010947

/-! ## A010947.P8733983918181294521

`A074909(465+n)`
-/

namespace A010947.P8733983918181294521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (465 + n)

end

end A010947.P8733983918181294521

namespace A010947

/-- `A074909(465+n)` -/
def P8733983918181294521.Spec : Prop :=
  ∀ n, P8733983918181294521.a n = A010947 n

end A010947

/-!
# A010948: Binomial coefficient C(32,n).

The programs for A010948, the canonical program `A010948.P11591200815294752295` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010948 has offset 0).

The definition of A010948 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(32, n)` (program `A010948.P11591200815294752295`, by `A010948.P11591200815294752295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010948.P11591200815294752295

`C(32, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010948

/-- `C(32, n)` -/
def P11591200815294752295.Spec : Prop :=
  ∀ n, (P11591200815294752295.a n : ℤ) = A010948 n

theorem P11591200815294752295.correct : P11591200815294752295.Spec := by
  intro n
  simp only [A010948]

end A010948

/-! ## A010948.P3739909513012920202

`(33/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010948.P3739909513012920202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (33 / (n : ℚ) - 1) * a (n - 1)

end

end A010948.P3739909513012920202

namespace A010948

/-- `(33/n-1)*a(n-1)` -/
def P3739909513012920202.Spec : Prop :=
  ∀ n, P3739909513012920202.a n = (A010948 n : ℚ)

end A010948

/-! ## A010948.P8341436081107986079

`A345135(n+32)`
-/

namespace A010948.P8341436081107986079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 (n + 32)

end

end A010948.P8341436081107986079

namespace A010948

/-- `A345135(n+32)` -/
def P8341436081107986079.Spec : Prop :=
  ∀ n, P8341436081107986079.a n = A010948 n

end A010948

/-! ## A010948.P16013456168322191237

`A074909(496+n)`
-/

namespace A010948.P16013456168322191237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (496 + n)

end

end A010948.P16013456168322191237

namespace A010948

/-- `A074909(496+n)` -/
def P16013456168322191237.Spec : Prop :=
  ∀ n, P16013456168322191237.a n = A010948 n

end A010948

/-! ## A010948.P10865480236912826801

`A007318(528+n)`
-/

namespace A010948.P10865480236912826801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (528 + n)

end

end A010948.P10865480236912826801

namespace A010948

/-- `A007318(528+n)` -/
def P10865480236912826801.Spec : Prop :=
  ∀ n, P10865480236912826801.a n = A010948 n

end A010948

/-!
# A010949: Binomial coefficient C(33,n).

The programs for A010949, the canonical program `A010949.P5290452386381684418` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010949 has offset 0).

The definition of A010949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(33, n)` (program `A010949.P5290452386381684418`, by `A010949.P5290452386381684418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010949.P5290452386381684418

`C(33, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010949

/-- `C(33, n)` -/
def P5290452386381684418.Spec : Prop :=
  ∀ n, (P5290452386381684418.a n : ℤ) = A010949 n

theorem P5290452386381684418.correct : P5290452386381684418.Spec := by
  intro n
  simp only [A010949]

end A010949

/-! ## A010949.P7763433744855721976

`(34/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010949.P7763433744855721976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (34 / (n : ℚ) - 1) * a (n - 1)

end

end A010949.P7763433744855721976

namespace A010949

/-- `(34/n-1)*a(n-1)` -/
def P7763433744855721976.Spec : Prop :=
  ∀ n, P7763433744855721976.a n = (A010949 n : ℚ)

end A010949

/-! ## A010949.P3097445607000259066

`A074909(528+n)`
-/

namespace A010949.P3097445607000259066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (528 + n)

end

end A010949.P3097445607000259066

namespace A010949

/-- `A074909(528+n)` -/
def P3097445607000259066.Spec : Prop :=
  ∀ n, P3097445607000259066.a n = A010949 n

end A010949

/-! ## A010949.P3735483680475298607

`A007318(561+n)`
-/

namespace A010949.P3735483680475298607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (561 + n)

end

end A010949.P3735483680475298607

namespace A010949

/-- `A007318(561+n)` -/
def P3735483680475298607.Spec : Prop :=
  ∀ n, P3735483680475298607.a n = A010949 n

end A010949

/-! ## A010949.P16085326163178282857

`Δ[A102363(561+n)]`
-/

namespace A010949.P16085326163178282857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (561 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010949.P16085326163178282857

namespace A010949

/-- `Δ[A102363(561+n)]` -/
def P16085326163178282857.Spec : Prop :=
  ∀ n, P16085326163178282857.a n = A010949 n

end A010949

/-!
# A010950: Binomial coefficient C(34,n).

The programs for A010950, the canonical program `A010950.P15251453214523585965` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010950 has offset 0).

The definition of A010950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(34, n)` (program `A010950.P15251453214523585965`, by `A010950.P15251453214523585965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010950.P15251453214523585965

`C(34, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010950

/-- `C(34, n)` -/
def P15251453214523585965.Spec : Prop :=
  ∀ n, (P15251453214523585965.a n : ℤ) = A010950 n

theorem P15251453214523585965.correct : P15251453214523585965.Spec := by
  intro n
  simp only [A010950]

end A010950

/-! ## A010950.P16915947057886795263

`(35/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010950.P16915947057886795263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (35 / (n : ℚ) - 1) * a (n - 1)

end

end A010950.P16915947057886795263

namespace A010950

/-- `(35/n-1)*a(n-1)` -/
def P16915947057886795263.Spec : Prop :=
  ∀ n, P16915947057886795263.a n = (A010950 n : ℚ)

end A010950

/-! ## A010950.P13950869111017690032

`A261507(n+63)`
-/

namespace A010950.P13950869111017690032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261507 (n + 63)

end

end A010950.P13950869111017690032

namespace A010950

/-- `A261507(n+63)` -/
def P13950869111017690032.Spec : Prop :=
  ∀ n, P13950869111017690032.a n = A010950 n

end A010950

/-! ## A010950.P4127034135889134498

`A135278(560+n)`
-/

namespace A010950.P4127034135889134498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (560 + n)

end

end A010950.P4127034135889134498

namespace A010950

/-- `A135278(560+n)` -/
def P4127034135889134498.Spec : Prop :=
  ∀ n, P4127034135889134498.a n = A010950 n

end A010950

/-! ## A010950.P12601709661108762618

`A074909(561+n)`
-/

namespace A010950.P12601709661108762618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (561 + n)

end

end A010950.P12601709661108762618

namespace A010950

/-- `A074909(561+n)` -/
def P12601709661108762618.Spec : Prop :=
  ∀ n, P12601709661108762618.a n = A010950 n

end A010950

/-!
# A010951: Binomial coefficient C(35,n).

The programs for A010951, the canonical program `A010951.P6496847710597186459` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010951 has offset 0).

The definition of A010951 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(35, n)` (program `A010951.P6496847710597186459`, by `A010951.P6496847710597186459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010951.P6496847710597186459

`C(35, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010951

/-- `C(35, n)` -/
def P6496847710597186459.Spec : Prop :=
  ∀ n, (P6496847710597186459.a n : ℤ) = A010951 n

theorem P6496847710597186459.correct : P6496847710597186459.Spec := by
  intro n
  simp only [A010951]

end A010951

/-! ## A010951.P11875776793331492969

`(36/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010951.P11875776793331492969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (36 / (n : ℚ) - 1) * a (n - 1)

end

end A010951.P11875776793331492969

namespace A010951

/-- `(36/n-1)*a(n-1)` -/
def P11875776793331492969.Spec : Prop :=
  ∀ n, P11875776793331492969.a n = (A010951 n : ℚ)

end A010951

/-! ## A010951.P18028300351816580628

`A074909(595+n)`
-/

namespace A010951.P18028300351816580628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (595 + n)

end

end A010951.P18028300351816580628

namespace A010951

/-- `A074909(595+n)` -/
def P18028300351816580628.Spec : Prop :=
  ∀ n, P18028300351816580628.a n = A010951 n

end A010951

/-! ## A010951.P14155341235810338898

`A007318(630+n)`
-/

namespace A010951.P14155341235810338898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (630 + n)

end

end A010951.P14155341235810338898

namespace A010951

/-- `A007318(630+n)` -/
def P14155341235810338898.Spec : Prop :=
  ∀ n, P14155341235810338898.a n = A010951 n

end A010951

/-! ## A010951.P8456625013285437900

`A071919(666+n)`
-/

namespace A010951.P8456625013285437900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (666 + n)

end

end A010951.P8456625013285437900

namespace A010951

/-- `A071919(666+n)` -/
def P8456625013285437900.Spec : Prop :=
  ∀ n, P8456625013285437900.a n = A010951 n

end A010951

/-!
# A010952: Binomial coefficient C(36,n).

The programs for A010952, the canonical program `A010952.P17405667349299627284` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010952 has offset 0).

The definition of A010952 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(36, n)` (program `A010952.P17405667349299627284`, by `A010952.P17405667349299627284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010952.P17405667349299627284

`C(36, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010952

/-- `C(36, n)` -/
def P17405667349299627284.Spec : Prop :=
  ∀ n, (P17405667349299627284.a n : ℤ) = A010952 n

theorem P17405667349299627284.correct : P17405667349299627284.Spec := by
  intro n
  simp only [A010952]

end A010952

/-! ## A010952.P14529265738351926628

`(37/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010952.P14529265738351926628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (37 / (n : ℚ) - 1) * a (n - 1)

end

end A010952.P14529265738351926628

namespace A010952

/-- `(37/n-1)*a(n-1)` -/
def P14529265738351926628.Spec : Prop :=
  ∀ n, P14529265738351926628.a n = (A010952 n : ℚ)

end A010952

/-! ## A010952.P6086472253068092053

`lcm(37, a(n-1))/n-a(n-1)` with `a(0)=1`
-/

namespace A010952.P6086472253068092053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 37 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ) - a (n - 1)

end

end A010952.P6086472253068092053

namespace A010952

/-- `lcm(37, a(n-1))/n-a(n-1)` -/
def P6086472253068092053.Spec : Prop :=
  ∀ n, P6086472253068092053.a n = (A010952 n : ℚ)

end A010952

/-! ## A010952.P12020284520337529934

`A217285(n+61)`
-/

namespace A010952.P12020284520337529934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (n + 61)

end

end A010952.P12020284520337529934

namespace A010952

/-- `A217285(n+61)` -/
def P12020284520337529934.Spec : Prop :=
  ∀ n, P12020284520337529934.a n = A010952 n

end A010952

/-! ## A010952.P5642379260428819030

`A084546(n+93)`
-/

namespace A010952.P5642379260428819030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 (n + 93)

end

end A010952.P5642379260428819030

namespace A010952

/-- `A084546(n+93)` -/
def P5642379260428819030.Spec : Prop :=
  ∀ n, P5642379260428819030.a n = A010952 n

end A010952

/-!
# A010953: Binomial coefficient C(37,n).

The programs for A010953, the canonical program `A010953.P8289816098363635701` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010953 has offset 0).

The definition of A010953 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(37, n)` (program `A010953.P8289816098363635701`, by `A010953.P8289816098363635701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010953.P8289816098363635701

`C(37, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010953

/-- `C(37, n)` -/
def P8289816098363635701.Spec : Prop :=
  ∀ n, (P8289816098363635701.a n : ℤ) = A010953 n

theorem P8289816098363635701.correct : P8289816098363635701.Spec := by
  intro n
  simp only [A010953]

end A010953

/-! ## A010953.P3077352976371917587

`(38/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010953.P3077352976371917587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (38 / (n : ℚ) - 1) * a (n - 1)

end

end A010953.P3077352976371917587

namespace A010953

/-- `(38/n-1)*a(n-1)` -/
def P3077352976371917587.Spec : Prop :=
  ∀ n, P3077352976371917587.a n = (A010953 n : ℚ)

end A010953

/-! ## A010953.P8220607188118293647

`A135278(665+n)`
-/

namespace A010953.P8220607188118293647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (665 + n)

end

end A010953.P8220607188118293647

namespace A010953

/-- `A135278(665+n)` -/
def P8220607188118293647.Spec : Prop :=
  ∀ n, P8220607188118293647.a n = A010953 n

end A010953

/-! ## A010953.P11129377941634207921

`A007318(703+n)`
-/

namespace A010953.P11129377941634207921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (703 + n)

end

end A010953.P11129377941634207921

namespace A010953

/-- `A007318(703+n)` -/
def P11129377941634207921.Spec : Prop :=
  ∀ n, P11129377941634207921.a n = A010953 n

end A010953

/-! ## A010953.P18256946712577467801

`A010954(n)-a(n-1)` with `a(0)=1`
-/

namespace A010953.P18256946712577467801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010954 n - a (n - 1)

end

end A010953.P18256946712577467801

namespace A010953

/-- `A010954(n)-a(n-1)` -/
def P18256946712577467801.Spec : Prop :=
  ∀ n, P18256946712577467801.a n = A010953 n

end A010953

/-!
# A010954: Binomial coefficient C(38,n).

The programs for A010954, the canonical program `A010954.P11286128166770041015` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010954 has offset 0).

The definition of A010954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(38, n)` (program `A010954.P11286128166770041015`, by `A010954.P11286128166770041015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010954.P11286128166770041015

`C(38, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010954

/-- `C(38, n)` -/
def P11286128166770041015.Spec : Prop :=
  ∀ n, (P11286128166770041015.a n : ℤ) = A010954 n

theorem P11286128166770041015.correct : P11286128166770041015.Spec := by
  intro n
  simp only [A010954]

end A010954

/-! ## A010954.P10759486207549010487

`(39/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010954.P10759486207549010487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (39 / (n : ℚ) - 1) * a (n - 1)

end

end A010954.P10759486207549010487

namespace A010954

/-- `(39/n-1)*a(n-1)` -/
def P10759486207549010487.Spec : Prop :=
  ∀ n, P10759486207549010487.a n = (A010954 n : ℚ)

end A010954

/-! ## A010954.P4057648876922674846

`A074909(703+n)`
-/

namespace A010954.P4057648876922674846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (703 + n)

end

end A010954.P4057648876922674846

namespace A010954

/-- `A074909(703+n)` -/
def P4057648876922674846.Spec : Prop :=
  ∀ n, P4057648876922674846.a n = A010954 n

end A010954

/-! ## A010954.P9961206068493167911

`A007318(741+n)`
-/

namespace A010954.P9961206068493167911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (741 + n)

end

end A010954.P9961206068493167911

namespace A010954

/-- `A007318(741+n)` -/
def P9961206068493167911.Spec : Prop :=
  ∀ n, P9961206068493167911.a n = A010954 n

end A010954

/-! ## A010954.P7641447161684499746

`A010955(n)-a(n-1)` with `a(0)=1`
-/

namespace A010954.P7641447161684499746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010955 n - a (n - 1)

end

end A010954.P7641447161684499746

namespace A010954

/-- `A010955(n)-a(n-1)` -/
def P7641447161684499746.Spec : Prop :=
  ∀ n, P7641447161684499746.a n = A010954 n

end A010954

/-!
# A010955: Binomial coefficient C(39,n).

The programs for A010955, the canonical program `A010955.P18280591247412842586` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010955 has offset 0).

The definition of A010955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(39, n)` (program `A010955.P18280591247412842586`, by `A010955.P18280591247412842586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010955.P18280591247412842586

`C(39, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010955

/-- `C(39, n)` -/
def P18280591247412842586.Spec : Prop :=
  ∀ n, (P18280591247412842586.a n : ℤ) = A010955 n

theorem P18280591247412842586.correct : P18280591247412842586.Spec := by
  intro n
  simp only [A010955]

end A010955

/-! ## A010955.P3560969137826460879

`(40/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010955.P3560969137826460879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (40 / (n : ℚ) - 1) * a (n - 1)

end

end A010955.P3560969137826460879

namespace A010955

/-- `(40/n-1)*a(n-1)` -/
def P3560969137826460879.Spec : Prop :=
  ∀ n, P3560969137826460879.a n = (A010955 n : ℚ)

end A010955

/-! ## A010955.P16412964156872111176

`A074909(741+n)`
-/

namespace A010955.P16412964156872111176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (741 + n)

end

end A010955.P16412964156872111176

namespace A010955

/-- `A074909(741+n)` -/
def P16412964156872111176.Spec : Prop :=
  ∀ n, P16412964156872111176.a n = A010955 n

end A010955

/-! ## A010955.P3688470562082206184

`A007318(780+n)`
-/

namespace A010955.P3688470562082206184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (780 + n)

end

end A010955.P3688470562082206184

namespace A010955

/-- `A007318(780+n)` -/
def P3688470562082206184.Spec : Prop :=
  ∀ n, P3688470562082206184.a n = A010955 n

end A010955

/-! ## A010955.P121252345048785091

`A071919(820+n)`
-/

namespace A010955.P121252345048785091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (820 + n)

end

end A010955.P121252345048785091

namespace A010955

/-- `A071919(820+n)` -/
def P121252345048785091.Spec : Prop :=
  ∀ n, P121252345048785091.a n = A010955 n

end A010955

/-!
# A010956: Binomial coefficient C(40,n).

The programs for A010956, the canonical program `A010956.P12504629725102922520` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010956 has offset 0).

The definition of A010956 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(40, n)` (program `A010956.P12504629725102922520`, by `A010956.P12504629725102922520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010956.P12504629725102922520

`C(40, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010956

/-- `C(40, n)` -/
def P12504629725102922520.Spec : Prop :=
  ∀ n, (P12504629725102922520.a n : ℤ) = A010956 n

theorem P12504629725102922520.correct : P12504629725102922520.Spec := by
  intro n
  simp only [A010956]

end A010956

/-! ## A010956.P7452734131455928219

`(41/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010956.P7452734131455928219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (41 / (n : ℚ) - 1) * a (n - 1)

end

end A010956.P7452734131455928219

namespace A010956

/-- `(41/n-1)*a(n-1)` -/
def P7452734131455928219.Spec : Prop :=
  ∀ n, P7452734131455928219.a n = (A010956 n : ℚ)

end A010956

/-! ## A010956.P15956172889823344169

`A007318(820+n)`
-/

namespace A010956.P15956172889823344169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (820 + n)

end

end A010956.P15956172889823344169

namespace A010956

/-- `A007318(820+n)` -/
def P15956172889823344169.Spec : Prop :=
  ∀ n, P15956172889823344169.a n = A010956 n

end A010956

/-! ## A010956.P5024525069766337634

`A071919(861+n)`
-/

namespace A010956.P5024525069766337634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (861 + n)

end

end A010956.P5024525069766337634

namespace A010956

/-- `A071919(861+n)` -/
def P5024525069766337634.Spec : Prop :=
  ∀ n, P5024525069766337634.a n = A010956 n

end A010956

/-! ## A010956.P8509697210467373127

`A010957(n)-a(n-1)` with `a(0)=1`
-/

namespace A010956.P8509697210467373127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010957 n - a (n - 1)

end

end A010956.P8509697210467373127

namespace A010956

/-- `A010957(n)-a(n-1)` -/
def P8509697210467373127.Spec : Prop :=
  ∀ n, P8509697210467373127.a n = A010956 n

end A010956

/-!
# A010957: Binomial coefficient C(41,n).

The programs for A010957, the canonical program `A010957.P11477022342966868301` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010957 has offset 0).

The definition of A010957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(41, n)` (program `A010957.P11477022342966868301`, by `A010957.P11477022342966868301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010957.P11477022342966868301

`C(41, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010957

/-- `C(41, n)` -/
def P11477022342966868301.Spec : Prop :=
  ∀ n, (P11477022342966868301.a n : ℤ) = A010957 n

theorem P11477022342966868301.correct : P11477022342966868301.Spec := by
  intro n
  simp only [A010957]

end A010957

/-! ## A010957.P1651654201059568911

`(42/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010957.P1651654201059568911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (42 / (n : ℚ) - 1) * a (n - 1)

end

end A010957.P1651654201059568911

namespace A010957

/-- `(42/n-1)*a(n-1)` -/
def P1651654201059568911.Spec : Prop :=
  ∀ n, P1651654201059568911.a n = (A010957 n : ℚ)

end A010957

/-! ## A010957.P8975403881182123384

`A074909(820+n)`
-/

namespace A010957.P8975403881182123384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (820 + n)

end

end A010957.P8975403881182123384

namespace A010957

/-- `A074909(820+n)` -/
def P8975403881182123384.Spec : Prop :=
  ∀ n, P8975403881182123384.a n = A010957 n

end A010957

/-! ## A010957.P12424501708838231975

`A007318(861+n)`
-/

namespace A010957.P12424501708838231975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (861 + n)

end

end A010957.P12424501708838231975

namespace A010957

/-- `A007318(861+n)` -/
def P12424501708838231975.Spec : Prop :=
  ∀ n, P12424501708838231975.a n = A010957 n

end A010957

/-! ## A010957.P3767826777975629200

`A071919(903+n)`
-/

namespace A010957.P3767826777975629200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (903 + n)

end

end A010957.P3767826777975629200

namespace A010957

/-- `A071919(903+n)` -/
def P3767826777975629200.Spec : Prop :=
  ∀ n, P3767826777975629200.a n = A010957 n

end A010957

/-!
# A010958: Binomial coefficient C(42,n).

The programs for A010958, the canonical program `A010958.P8426901152396036565` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010958 has offset 0).

The definition of A010958 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(42, n)` (program `A010958.P8426901152396036565`, by `A010958.P8426901152396036565.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010958.P8426901152396036565

`C(42, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010958

/-- `C(42, n)` -/
def P8426901152396036565.Spec : Prop :=
  ∀ n, (P8426901152396036565.a n : ℤ) = A010958 n

theorem P8426901152396036565.correct : P8426901152396036565.Spec := by
  intro n
  simp only [A010958]

end A010958

/-! ## A010958.P620426872079830867

`(43/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010958.P620426872079830867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (43 / (n : ℚ) - 1) * a (n - 1)

end

end A010958.P620426872079830867

namespace A010958

/-- `(43/n-1)*a(n-1)` -/
def P620426872079830867.Spec : Prop :=
  ∀ n, P620426872079830867.a n = (A010958 n : ℚ)

end A010958

/-! ## A010958.P2699870830703709169

`A123554(n+77)`
-/

namespace A010958.P2699870830703709169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123554 (n + 77)

end

end A010958.P2699870830703709169

namespace A010958

/-- `A123554(n+77)` -/
def P2699870830703709169.Spec : Prop :=
  ∀ n, P2699870830703709169.a n = A010958 n

end A010958

/-! ## A010958.P17315083614541204937

`A135278(860+n)`
-/

namespace A010958.P17315083614541204937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (860 + n)

end

end A010958.P17315083614541204937

namespace A010958

/-- `A135278(860+n)` -/
def P17315083614541204937.Spec : Prop :=
  ∀ n, P17315083614541204937.a n = A010958 n

end A010958

/-! ## A010958.P3533959064914576243

`A074909(861+n)`
-/

namespace A010958.P3533959064914576243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (861 + n)

end

end A010958.P3533959064914576243

namespace A010958

/-- `A074909(861+n)` -/
def P3533959064914576243.Spec : Prop :=
  ∀ n, P3533959064914576243.a n = A010958 n

end A010958

/-!
# A010959: Binomial coefficient C(43,n).

The programs for A010959, the canonical program `A010959.P11062622800433269039` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010959 has offset 0).

The definition of A010959 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(43, n)` (program `A010959.P11062622800433269039`, by `A010959.P11062622800433269039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010959.P11062622800433269039

`C(43, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010959

/-- `C(43, n)` -/
def P11062622800433269039.Spec : Prop :=
  ∀ n, (P11062622800433269039.a n : ℤ) = A010959 n

theorem P11062622800433269039.correct : P11062622800433269039.Spec := by
  intro n
  simp only [A010959]

end A010959

/-! ## A010959.P12036703254452724145

`(44/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010959.P12036703254452724145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (44 / (n : ℚ) - 1) * a (n - 1)

end

end A010959.P12036703254452724145

namespace A010959

/-- `(44/n-1)*a(n-1)` -/
def P12036703254452724145.Spec : Prop :=
  ∀ n, P12036703254452724145.a n = (A010959 n : ℚ)

end A010959

/-! ## A010959.P17969587768392498852

`A074909(903+n)`
-/

namespace A010959.P17969587768392498852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (903 + n)

end

end A010959.P17969587768392498852

namespace A010959

/-- `A074909(903+n)` -/
def P17969587768392498852.Spec : Prop :=
  ∀ n, P17969587768392498852.a n = A010959 n

end A010959

/-! ## A010959.P4967272028032925815

`A007318(946+n)`
-/

namespace A010959.P4967272028032925815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (946 + n)

end

end A010959.P4967272028032925815

namespace A010959

/-- `A007318(946+n)` -/
def P4967272028032925815.Spec : Prop :=
  ∀ n, P4967272028032925815.a n = A010959 n

end A010959

/-! ## A010959.P4866655772290033328

`A028326(946+n)/2`
-/

namespace A010959.P4866655772290033328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (946 + n) : ℚ) / 2

end

end A010959.P4866655772290033328

namespace A010959

/-- `A028326(946+n)/2` -/
def P4866655772290033328.Spec : Prop :=
  ∀ n, P4866655772290033328.a n = (A010959 n : ℚ)

end A010959

/-!
# A010960: Binomial coefficient C(44,n).

The programs for A010960, the canonical program `A010960.P14835718166579446001` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010960 has offset 0).

The definition of A010960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(44, n)` (program `A010960.P14835718166579446001`, by `A010960.P14835718166579446001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010960.P14835718166579446001

`C(44, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010960

/-- `C(44, n)` -/
def P14835718166579446001.Spec : Prop :=
  ∀ n, (P14835718166579446001.a n : ℤ) = A010960 n

theorem P14835718166579446001.correct : P14835718166579446001.Spec := by
  intro n
  simp only [A010960]

end A010960

/-! ## A010960.P13568682700035086489

`(45/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010960.P13568682700035086489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (45 / (n : ℚ) - 1) * a (n - 1)

end

end A010960.P13568682700035086489

namespace A010960

/-- `(45/n-1)*a(n-1)` -/
def P13568682700035086489.Spec : Prop :=
  ∀ n, P13568682700035086489.a n = (A010960 n : ℚ)

end A010960

/-! ## A010960.P13431456088344019882

`A135278(945+n)`
-/

namespace A010960.P13431456088344019882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (945 + n)

end

end A010960.P13431456088344019882

namespace A010960

/-- `A135278(945+n)` -/
def P13431456088344019882.Spec : Prop :=
  ∀ n, P13431456088344019882.a n = A010960 n

end A010960

/-! ## A010960.P18360817271396578192

`A007318(990+n)`
-/

namespace A010960.P18360817271396578192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (990 + n)

end

end A010960.P18360817271396578192

namespace A010960

/-- `A007318(990+n)` -/
def P18360817271396578192.Spec : Prop :=
  ∀ n, P18360817271396578192.a n = A010960 n

end A010960

/-! ## A010960.P10639688687456213838

`abs(A108086(990+n))`
-/

namespace A010960.P10639688687456213838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 (990 + n)|

end

end A010960.P10639688687456213838

namespace A010960

/-- `abs(A108086(990+n))` -/
def P10639688687456213838.Spec : Prop :=
  ∀ n, P10639688687456213838.a n = A010960 n

end A010960

/-!
# A010961: Binomial coefficient C(45,n).

The programs for A010961, the canonical program `A010961.P10451175017338262905` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010961 has offset 0).

The definition of A010961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(45, n)` (program `A010961.P10451175017338262905`, by `A010961.P10451175017338262905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010961.P10451175017338262905

`C(45, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010961

/-- `C(45, n)` -/
def P10451175017338262905.Spec : Prop :=
  ∀ n, (P10451175017338262905.a n : ℤ) = A010961 n

theorem P10451175017338262905.correct : P10451175017338262905.Spec := by
  intro n
  simp only [A010961]

end A010961

/-! ## A010961.P2626452468099631212

`(46/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010961.P2626452468099631212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (46 / (n : ℚ) - 1) * a (n - 1)

end

end A010961.P2626452468099631212

namespace A010961

/-- `(46/n-1)*a(n-1)` -/
def P2626452468099631212.Spec : Prop :=
  ∀ n, P2626452468099631212.a n = (A010961 n : ℚ)

end A010961

/-! ## A010961.P1645943627799087257

`A135278(989+n)`
-/

namespace A010961.P1645943627799087257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (989 + n)

end

end A010961.P1645943627799087257

namespace A010961

/-- `A135278(989+n)` -/
def P1645943627799087257.Spec : Prop :=
  ∀ n, P1645943627799087257.a n = A010961 n

end A010961

/-! ## A010961.P16966946108593294865

`A074909(990+n)`
-/

namespace A010961.P16966946108593294865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (990 + n)

end

end A010961.P16966946108593294865

namespace A010961

/-- `A074909(990+n)` -/
def P16966946108593294865.Spec : Prop :=
  ∀ n, P16966946108593294865.a n = A010961 n

end A010961

/-! ## A010961.P3553372148891251145

`A010962(n)-a(n-1)` with `a(0)=1`
-/

namespace A010961.P3553372148891251145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010962 n - a (n - 1)

end

end A010961.P3553372148891251145

namespace A010961

/-- `A010962(n)-a(n-1)` -/
def P3553372148891251145.Spec : Prop :=
  ∀ n, P3553372148891251145.a n = A010961 n

end A010961

/-!
# A010962: Binomial coefficient C(46,n).

The programs for A010962, the canonical program `A010962.P6959669895407956433` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010962 has offset 0).

The definition of A010962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(46, n)` (program `A010962.P6959669895407956433`, by `A010962.P6959669895407956433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010962.P6959669895407956433

`C(46, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010962

/-- `C(46, n)` -/
def P6959669895407956433.Spec : Prop :=
  ∀ n, (P6959669895407956433.a n : ℤ) = A010962 n

theorem P6959669895407956433.correct : P6959669895407956433.Spec := by
  intro n
  simp only [A010962]

end A010962

/-! ## A010962.P18052396810475912722

`(47/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010962.P18052396810475912722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (47 / (n : ℚ) - 1) * a (n - 1)

end

end A010962.P18052396810475912722

namespace A010962

/-- `(47/n-1)*a(n-1)` -/
def P18052396810475912722.Spec : Prop :=
  ∀ n, P18052396810475912722.a n = (A010962 n : ℚ)

end A010962

/-! ## A010962.P439144936772181131

`A034870((69/3)²+n)`
-/

namespace A010962.P439144936772181131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (SequenceMachineLib.roundAway (((69 : ℚ) / 3) ^ 2 + (n : ℚ))).toNat

end

end A010962.P439144936772181131

namespace A010962

/-- `A034870((69/3)²+n)` -/
def P439144936772181131.Spec : Prop :=
  ∀ n, P439144936772181131.a n = A010962 n

end A010962

/-! ## A010962.P2848642482567240772

`A074909(359+abs(722-n))`
-/

namespace A010962.P2848642482567240772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (359 + |722 - (n : ℤ)|).toNat

end

end A010962.P2848642482567240772

namespace A010962

/-- `A074909(359+abs(722-n))` -/
def P2848642482567240772.Spec : Prop :=
  ∀ n, P2848642482567240772.a n = A010962 n

end A010962

/-! ## A010962.P711084178865796436

`A010963(n)-a(n-1)` with `a(0)=1`
-/

namespace A010962.P711084178865796436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010963 n - a (n - 1)

end

end A010962.P711084178865796436

namespace A010962

/-- `A010963(n)-a(n-1)` -/
def P711084178865796436.Spec : Prop :=
  ∀ n, P711084178865796436.a n = A010962 n

end A010962

/-!
# A010963: Binomial coefficient C(47,n).

The programs for A010963, the canonical program `A010963.P16086303613479236337` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010963 has offset 0).

The definition of A010963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(47, n)` (program `A010963.P16086303613479236337`, by `A010963.P16086303613479236337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010963.P16086303613479236337

`C(47, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010963

/-- `C(47, n)` -/
def P16086303613479236337.Spec : Prop :=
  ∀ n, (P16086303613479236337.a n : ℤ) = A010963 n

theorem P16086303613479236337.correct : P16086303613479236337.Spec := by
  intro n
  simp only [A010963]

end A010963

/-! ## A010963.P12764956861793563075

`(48/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010963.P12764956861793563075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (48 / (n : ℚ) - 1) * a (n - 1)

end

end A010963.P12764956861793563075

namespace A010963

/-- `(48/n-1)*a(n-1)` -/
def P12764956861793563075.Spec : Prop :=
  ∀ n, P12764956861793563075.a n = (A010963 n : ℚ)

end A010963

/-! ## A010963.P14041325591303076564

`A074909(159+abs(969-n))`
-/

namespace A010963.P14041325591303076564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (159 + |969 - (n : ℤ)|).toNat

end

end A010963.P14041325591303076564

namespace A010963

/-- `A074909(159+abs(969-n))` -/
def P14041325591303076564.Spec : Prop :=
  ∀ n, P14041325591303076564.a n = A010963 n

end A010963

/-! ## A010963.P13064162390052802834

`A010964(n)-a(n-1)` with `a(0)=1`
-/

namespace A010963.P13064162390052802834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010964 n - a (n - 1)

end

end A010963.P13064162390052802834

namespace A010963

/-- `A010964(n)-a(n-1)` -/
def P13064162390052802834.Spec : Prop :=
  ∀ n, P13064162390052802834.a n = A010963 n

end A010963

/-! ## A010963.P15242414700652321367

`A026729(eq[47, A002262(n)])`
-/

namespace A010963.P15242414700652321367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010963.P15242414700652321367

namespace A010963

/-- `A026729(eq[47, A002262(n)])` -/
def P15242414700652321367.Spec : Prop :=
  ∀ n, P15242414700652321367.a n = A010963 n

end A010963

/-!
# A010964: Binomial coefficient C(48,n).

The programs for A010964, the canonical program `A010964.P10685631842773053232` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010964 has offset 0).

The definition of A010964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(48, n)` (program `A010964.P10685631842773053232`, by `A010964.P10685631842773053232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010964.P10685631842773053232

`C(48, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010964

/-- `C(48, n)` -/
def P10685631842773053232.Spec : Prop :=
  ∀ n, (P10685631842773053232.a n : ℤ) = A010964 n

theorem P10685631842773053232.correct : P10685631842773053232.Spec := by
  intro n
  simp only [A010964]

end A010964

/-! ## A010964.P13906761470376307364

`(49/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A010964.P13906761470376307364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (49 / (n : ℚ) - 1) * a (n - 1)

end

end A010964.P13906761470376307364

namespace A010964

/-- `(49/n-1)*a(n-1)` -/
def P13906761470376307364.Spec : Prop :=
  ∀ n, P13906761470376307364.a n = (A010964 n : ℚ)

end A010964

/-! ## A010964.P15921537178241042406

`A074909(320+abs(856-n))`
-/

namespace A010964.P15921537178241042406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (320 + |856 - (n : ℤ)|).toNat

end

end A010964.P15921537178241042406

namespace A010964

/-- `A074909(320+abs(856-n))` -/
def P15921537178241042406.Spec : Prop :=
  ∀ n, P15921537178241042406.a n = A010964 n

end A010964

/-! ## A010964.P6291212478257748128

`A017765(n)-a(n-1)` with `a(0)=1`
-/

namespace A010964.P6291212478257748128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017765 n - a (n - 1)

end

end A010964.P6291212478257748128

namespace A010964

/-- `A017765(n)-a(n-1)` -/
def P6291212478257748128.Spec : Prop :=
  ∀ n, P6291212478257748128.a n = A010964 n

end A010964

/-! ## A010964.P8004258476394880801

`A217285(n+98)-a(n-1)` with `a(0)=1`
-/

namespace A010964.P8004258476394880801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A217285 (n + 98) - a (n - 1)

end

end A010964.P8004258476394880801

namespace A010964

/-- `A217285(n+98)-a(n-1)` -/
def P8004258476394880801.Spec : Prop :=
  ∀ n, P8004258476394880801.a n = A010964 n

end A010964

/-!
# A010965: a(n) = binomial(n,12).

The programs for A010965, the canonical program `A010965.P16782985268859376296` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010965 has offset 12).

The definition of A010965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+12, 12)` (program `A010965.P16782985268859376296`, by `A010965.P16782985268859376296.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010965.P16782985268859376296

`C(n+12, 12)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010965

/-- `C(n+12, 12)` -/
def P16782985268859376296.Spec : Prop :=
  ∀ n, (P16782985268859376296.a n : ℤ) = A010965 (n + 12)

theorem P16782985268859376296.correct : P16782985268859376296.Spec := by
  intro n
  simp only [A010965, Nat.add_sub_cancel]

end A010965

/-! ## A010965.P6663350156421478142

`(12/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010965.P6663350156421478142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (12 / (n : ℚ) + 1) * a (n - 1)

end

end A010965.P6663350156421478142

namespace A010965

/-- `(12/n+1)*a(n-1)` -/
def P6663350156421478142.Spec : Prop :=
  ∀ n, P6663350156421478142.a n = (A010965 (n + 12) : ℚ)

end A010965

/-! ## A010965.P13433447123403091587

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]`
-/

namespace A010965.P13433447123403091587
noncomputable section

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010965.P13433447123403091587

namespace A010965

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]` -/
def P13433447123403091587.Spec : Prop :=
  ∀ n, (P13433447123403091587.a n : ℤ) = A010965 (n + 12)

end A010965

/-! ## A010965.P12197159550210909372

`2*∑[A001288(n)/2]`
-/

namespace A010965.P12197159550210909372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001288 (n + 11) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010965.P12197159550210909372

namespace A010965

/-- `2*∑[A001288(n)/2]` -/
def P12197159550210909372.Spec : Prop :=
  ∀ n, P12197159550210909372.a n = (A010965 (n + 12) : ℚ)

end A010965

/-! ## A010965.P15982633308865641042

`A266561(n)-a(n-1)` with `a(0)=1`
-/

namespace A010965.P15982633308865641042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266561 n - a (n - 1)

end

end A010965.P15982633308865641042

namespace A010965

/-- `A266561(n)-a(n-1)` -/
def P15982633308865641042.Spec : Prop :=
  ∀ n, P15982633308865641042.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P10167857318183125361

`A057788(n)+a(n-2)` with `a(0)=1, a(1)=13`
-/

namespace A010965.P10167857318183125361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13] fun n a =>
  A057788 n + a (n - 2)

end

end A010965.P10167857318183125361

namespace A010965

/-- `A057788(n)+a(n-2)` -/
def P10167857318183125361.Spec : Prop :=
  ∀ n, P10167857318183125361.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P3885904776905405771

`∑[2*A001808(n)]-A001808(n)`
-/

namespace A010965.P3885904776905405771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001808 n

end

end A010965.P3885904776905405771

namespace A010965

/-- `∑[2*A001808(n)]-A001808(n)` -/
def P3885904776905405771.Spec : Prop :=
  ∀ n, P3885904776905405771.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P14840799505300981756

`A027771(n)-∑[A027770(n+9)]`
-/

namespace A010965.P14840799505300981756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027770 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027771 (n + 10) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010965.P14840799505300981756

namespace A010965

/-- `A027771(n)-∑[A027770(n+9)]` -/
def P14840799505300981756.Spec : Prop :=
  ∀ n, P14840799505300981756.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P14201107012509865124

`A225013(n+1)-A225012(n+1)`
-/

namespace A010965.P14201107012509865124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225013 (n + 1) - A225012 (n + 1)

end

end A010965.P14201107012509865124

namespace A010965

/-- `A225013(n+1)-A225012(n+1)` -/
def P14201107012509865124.Spec : Prop :=
  ∀ n, P14201107012509865124.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P8983174005101416602

`A010966(n+1)-(A010966(n)+A001288(n+1))`
-/

namespace A010965.P8983174005101416602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010966 (n + 1 + 13) - (A010966 (n + 13) + A001288 (n + 1 + 11))

end

end A010965.P8983174005101416602

namespace A010965

/-- `A010966(n+1)-(A010966(n)+A001288(n+1))` -/
def P8983174005101416602.Spec : Prop :=
  ∀ n, P8983174005101416602.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P8143817313148146222

`A109960(A167614(n+2))`
-/

namespace A010965.P8143817313148146222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109960 (A167614 (n + 2)).toNat

end

end A010965.P8143817313148146222

namespace A010965

/-- `A109960(A167614(n+2))` -/
def P8143817313148146222.Spec : Prop :=
  ∀ n, P8143817313148146222.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P12142821287521759209

`A193636(A000217(n+5)-5)`
-/

namespace A010965.P12142821287521759209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A000217 (n + 5) - 5).toNat

end

end A010965.P12142821287521759209

namespace A010965

/-- `A193636(A000217(n+5)-5)` -/
def P12142821287521759209.Spec : Prop :=
  ∀ n, P12142821287521759209.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P9533061124800586548

`A074909(eq[11, A025581(n)])`
-/

namespace A010965.P9533061124800586548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010965.P9533061124800586548

namespace A010965

/-- `A074909(eq[11, A025581(n)])` -/
def P9533061124800586548.Spec : Prop :=
  ∀ n, P9533061124800586548.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P10361175361506590736

`A209518(eq[11, A004736(n+1)])`
-/

namespace A010965.P10361175361506590736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010965.P10361175361506590736

namespace A010965

/-- `A209518(eq[11, A004736(n+1)])` -/
def P10361175361506590736.Spec : Prop :=
  ∀ n, P10361175361506590736.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P10617557180557430885

`A074909(eq[12, A004736(n+1)])`
-/

namespace A010965.P10617557180557430885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010965.P10617557180557430885

namespace A010965

/-- `A074909(eq[12, A004736(n+1)])` -/
def P10617557180557430885.Spec : Prop :=
  ∀ n, P10617557180557430885.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P3667797808514465547

`A007318(eq[13, A002260(n+1)])`
-/

namespace A010965.P3667797808514465547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010965.P3667797808514465547

namespace A010965

/-- `A007318(eq[13, A002260(n+1)])` -/
def P3667797808514465547.Spec : Prop :=
  ∀ n, P3667797808514465547.a n = A010965 (n + 12)

end A010965

/-! ## A010965.P15303525117250785462

`A007318(eq[12, A002262(n)])`
-/

namespace A010965.P15303525117250785462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010965.P15303525117250785462

namespace A010965

/-- `A007318(eq[12, A002262(n)])` -/
def P15303525117250785462.Spec : Prop :=
  ∀ n, P15303525117250785462.a n = A010965 (n + 12)

end A010965

/-!
# A010966: a(n) = binomial(n,13).

The programs for A010966, the canonical program `A010966.P6804074157487264559` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010966 has offset 13).

The definition of A010966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+13, 13)` (program `A010966.P6804074157487264559`, by `A010966.P6804074157487264559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010966.P6804074157487264559

`C(n+13, 13)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010966

/-- `C(n+13, 13)` -/
def P6804074157487264559.Spec : Prop :=
  ∀ n, (P6804074157487264559.a n : ℤ) = A010966 (n + 13)

theorem P6804074157487264559.correct : P6804074157487264559.Spec := by
  intro n
  simp only [A010966, Nat.add_sub_cancel]

end A010966

/-! ## A010966.P9143667832576606124

`(n+13)/n*a(n-1)` with `a(0)=1`
-/

namespace A010966.P9143667832576606124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 13 : ℚ) / (n : ℚ) * a (n - 1)

end

end A010966.P9143667832576606124

namespace A010966

/-- `(n+13)/n*a(n-1)` -/
def P9143667832576606124.Spec : Prop :=
  ∀ n, P9143667832576606124.a n = (A010966 (n + 13) : ℚ)

end A010966

/-! ## A010966.P12307863869393847310

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]`
-/

namespace A010966.P12307863869393847310
noncomputable section

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010966.P12307863869393847310

namespace A010966

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]` -/
def P12307863869393847310.Spec : Prop :=
  ∀ n, (P12307863869393847310.a n : ℤ) = A010966 (n + 13)

end A010966

/-! ## A010966.P1443297386189283483

`A266561(n)+a(n-2)` with `a(0)=1, a(1)=14`
-/

namespace A010966.P1443297386189283483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n a =>
  A266561 n + a (n - 2)

end

end A010966.P1443297386189283483

namespace A010966

/-- `A266561(n)+a(n-2)` -/
def P1443297386189283483.Spec : Prop :=
  ∀ n, P1443297386189283483.a n = A010966 (n + 13)

end A010966

/-! ## A010966.P652076081489043121

`A027772(n)-∑[A027771(n)]`
-/

namespace A010966.P652076081489043121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027771 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027772 (n + 11) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010966.P652076081489043121

namespace A010966

/-- `A027772(n)-∑[A027771(n)]` -/
def P652076081489043121.Spec : Prop :=
  ∀ n, P652076081489043121.a n = A010966 (n + 13)

end A010966

/-! ## A010966.P5520900526887978319

`Δ[A010967(n)]-A010965(n+1)`
-/

namespace A010966.P5520900526887978319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010967 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010965 (n + 1 + 12)

end

end A010966.P5520900526887978319

namespace A010966

/-- `Δ[A010967(n)]-A010965(n+1)` -/
def P5520900526887978319.Spec : Prop :=
  ∀ n, P5520900526887978319.a n = A010966 (n + 13)

end A010966

/-! ## A010966.P7383398041887790248

`Δ[A010967(n)-A010965(n)]-A010965(n)`
-/

namespace A010966.P7383398041887790248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010967 (n + 14) - A010965 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010965 (n + 12)

end

end A010966.P7383398041887790248

namespace A010966

/-- `Δ[A010967(n)-A010965(n)]-A010965(n)` -/
def P7383398041887790248.Spec : Prop :=
  ∀ n, P7383398041887790248.a n = A010966 (n + 13)

end A010966

/-! ## A010966.P7098885607839798698

`A010967(n+1)-(A010967(n)+A010965(n+1))`
-/

namespace A010966.P7098885607839798698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010967 (n + 1 + 14) - (A010967 (n + 14) + A010965 (n + 1 + 12))

end

end A010966.P7098885607839798698

namespace A010966

/-- `A010967(n+1)-(A010967(n)+A010965(n+1))` -/
def P7098885607839798698.Spec : Prop :=
  ∀ n, P7098885607839798698.a n = A010966 (n + 13)

end A010966

/-! ## A010966.P12399480742381027666

`A010968(n+1)-(A188225(n)+A010965(n+1))`
-/

namespace A010966.P12399480742381027666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010968 (n + 1 + 15) - (A188225 (n + 30) + A010965 (n + 1 + 12))

end

end A010966.P12399480742381027666

namespace A010966

/-- `A010968(n+1)-(A188225(n)+A010965(n+1))` -/
def P12399480742381027666.Spec : Prop :=
  ∀ n, P12399480742381027666.a n = A010966 (n + 13)

end A010966

/-! ## A010966.P8895027814771037725

`A007318(eq[14, A002260(n+1)])`
-/

namespace A010966.P8895027814771037725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010966.P8895027814771037725

namespace A010966

/-- `A007318(eq[14, A002260(n+1)])` -/
def P8895027814771037725.Spec : Prop :=
  ∀ n, P8895027814771037725.a n = A010966 (n + 13)

end A010966

/-! ## A010966.P14548912317426690542

`a(n-1)+A007318(eq[12, A002262(n)])` with `a(0)=1`
-/

namespace A010966.P14548912317426690542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010966.P14548912317426690542

namespace A010966

/-- `a(n-1)+A007318(eq[12, A002262(n)])` -/
def P14548912317426690542.Spec : Prop :=
  ∀ n, P14548912317426690542.a n = A010966 (n + 13)

end A010966

/-! ## A010966.P17157107848571529544

`A007318(eq[13, A002262(n)])`
-/

namespace A010966.P17157107848571529544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010966.P17157107848571529544

namespace A010966

/-- `A007318(eq[13, A002262(n)])` -/
def P17157107848571529544.Spec : Prop :=
  ∀ n, P17157107848571529544.a n = A010966 (n + 13)

end A010966

/-! ## A010966.P734568084107987163

`A007318(eq[13, A025581(n)])`
-/

namespace A010966.P734568084107987163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010966.P734568084107987163

namespace A010966

/-- `A007318(eq[13, A025581(n)])` -/
def P734568084107987163.Spec : Prop :=
  ∀ n, P734568084107987163.a n = A010966 (n + 13)

end A010966

/-! ## A010966.P8259547011435757777

`A007318(eq[14, A004736(n+1)])`
-/

namespace A010966.P8259547011435757777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010966.P8259547011435757777

namespace A010966

/-- `A007318(eq[14, A004736(n+1)])` -/
def P8259547011435757777.Spec : Prop :=
  ∀ n, P8259547011435757777.a n = A010966 (n + 13)

end A010966

/-!
# A010967: a(n) = binomial coefficient C(n,14).

The programs for A010967, the canonical program `A010967.P14715086835322661682` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010967 has offset 14).

The definition of A010967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+14, 14)` (program `A010967.P14715086835322661682`, by `A010967.P14715086835322661682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010967.P14715086835322661682

`C(n+14, 14)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010967

/-- `C(n+14, 14)` -/
def P14715086835322661682.Spec : Prop :=
  ∀ n, (P14715086835322661682.a n : ℤ) = A010967 (n + 14)

theorem P14715086835322661682.correct : P14715086835322661682.Spec := by
  intro n
  simp only [A010967, Nat.add_sub_cancel]

end A010967

/-! ## A010967.P15812408912643437200

`(14/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010967.P15812408912643437200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (14 / (n : ℚ) + 1) * a (n - 1)

end

end A010967.P15812408912643437200

namespace A010967

/-- `(14/n+1)*a(n-1)` -/
def P15812408912643437200.Spec : Prop :=
  ∀ n, P15812408912643437200.a n = (A010967 (n + 14) : ℚ)

end A010967

/-! ## A010967.P1663701091630606675

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]`
-/

namespace A010967.P1663701091630606675
noncomputable section

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010967.P1663701091630606675

namespace A010967

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]` -/
def P1663701091630606675.Spec : Prop :=
  ∀ n, (P1663701091630606675.a n : ℤ) = A010967 (n + 14)

end A010967

/-! ## A010967.P15201985281929019977

`A188225(n)-A010968(n)`
-/

namespace A010967.P15201985281929019977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188225 (n + 30) - A010968 (n + 15)

end

end A010967.P15201985281929019977

namespace A010967

/-- `A188225(n)-A010968(n)` -/
def P15201985281929019977.Spec : Prop :=
  ∀ n, P15201985281929019977.a n = A010967 (n + 14)

end A010967

/-! ## A010967.P3019787468121767112

`A027773(n)-∑[A027772(n)]`
-/

namespace A010967.P3019787468121767112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027772 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027773 (n + 12) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010967.P3019787468121767112

namespace A010967

/-- `A027773(n)-∑[A027772(n)]` -/
def P3019787468121767112.Spec : Prop :=
  ∀ n, P3019787468121767112.a n = A010967 (n + 14)

end A010967

/-! ## A010967.P8836833081684391841

`A225014(n+1)-A225013(n+1)`
-/

namespace A010967.P8836833081684391841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225014 (n + 1) - A225013 (n + 1)

end

end A010967.P8836833081684391841

namespace A010967

/-- `A225014(n+1)-A225013(n+1)` -/
def P8836833081684391841.Spec : Prop :=
  ∀ n, P8836833081684391841.a n = A010967 (n + 14)

end A010967

/-! ## A010967.P1989160104938276939

`A338995(A167614(n+2))`
-/

namespace A010967.P1989160104938276939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338995 (A167614 (n + 2)).toNat

end

end A010967.P1989160104938276939

namespace A010967

/-- `A338995(A167614(n+2))` -/
def P1989160104938276939.Spec : Prop :=
  ∀ n, P1989160104938276939.a n = A010967 (n + 14)

end A010967

/-! ## A010967.P10229220037008147581

`A007318(eq[14, A002262(n)])`
-/

namespace A010967.P10229220037008147581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010967.P10229220037008147581

namespace A010967

/-- `A007318(eq[14, A002262(n)])` -/
def P10229220037008147581.Spec : Prop :=
  ∀ n, P10229220037008147581.a n = A010967 (n + 14)

end A010967

/-! ## A010967.P5739079334899793356

`A109221(A187989(n+1)+1)`
-/

namespace A010967.P5739079334899793356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (A187989 (n + 1) + 1).toNat

end

end A010967.P5739079334899793356

namespace A010967

/-- `A109221(A187989(n+1)+1)` -/
def P5739079334899793356.Spec : Prop :=
  ∀ n, P5739079334899793356.a n = A010967 (n + 14)

end A010967

/-!
# A010968: a(n) = binomial(n,15).

The programs for A010968, the canonical program `A010968.P5209304560745506790` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010968 has offset 15).

The definition of A010968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+15, 15)` (program `A010968.P5209304560745506790`, by `A010968.P5209304560745506790.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010968.P5209304560745506790

`C(n+15, 15)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010968

/-- `C(n+15, 15)` -/
def P5209304560745506790.Spec : Prop :=
  ∀ n, (P5209304560745506790.a n : ℤ) = A010968 (n + 15)

theorem P5209304560745506790.correct : P5209304560745506790.Spec := by
  intro n
  simp only [A010968, Nat.add_sub_cancel]

end A010968

/-! ## A010968.P6607786728406243402

`(n+15)/n*a(n-1)` with `a(0)=1`
-/

namespace A010968.P6607786728406243402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 15 : ℚ) / (n : ℚ) * a (n - 1)

end

end A010968.P6607786728406243402

namespace A010968

/-- `(n+15)/n*a(n-1)` -/
def P6607786728406243402.Spec : Prop :=
  ∀ n, P6607786728406243402.a n = (A010968 (n + 15) : ℚ)

end A010968

/-! ## A010968.P783202095884293194

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]`
-/

namespace A010968.P783202095884293194
noncomputable section

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010968.P783202095884293194

namespace A010968

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]` -/
def P783202095884293194.Spec : Prop :=
  ∀ n, (P783202095884293194.a n : ℤ) = A010968 (n + 15)

end A010968

/-! ## A010968.P10520932888313447356

`A188225(n)-A010967(n)`
-/

namespace A010968.P10520932888313447356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188225 (n + 30) - A010967 (n + 14)

end

end A010968.P10520932888313447356

namespace A010968

/-- `A188225(n)-A010967(n)` -/
def P10520932888313447356.Spec : Prop :=
  ∀ n, P10520932888313447356.a n = A010968 (n + 15)

end A010968

/-! ## A010968.P13214592942075465755

`Δ[A010969(n)]-A010967(n+1)`
-/

namespace A010968.P13214592942075465755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010969 (n + 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010967 (n + 1 + 14)

end

end A010968.P13214592942075465755

namespace A010968

/-- `Δ[A010969(n)]-A010967(n+1)` -/
def P13214592942075465755.Spec : Prop :=
  ∀ n, P13214592942075465755.a n = A010968 (n + 15)

end A010968

/-! ## A010968.P15951871988308037063

`Δ[A010969(n)-A010967(n)]-A010967(n)`
-/

namespace A010968.P15951871988308037063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010969 (n + 16) - A010967 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010967 (n + 14)

end

end A010968.P15951871988308037063

namespace A010968

/-- `Δ[A010969(n)-A010967(n)]-A010967(n)` -/
def P15951871988308037063.Spec : Prop :=
  ∀ n, P15951871988308037063.a n = A010968 (n + 15)

end A010968

/-!
# A010969: a(n) = binomial(n,16).

The programs for A010969, the canonical program `A010969.P14382318108978038704` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010969 has offset 16).

The definition of A010969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+16, 16)` (program `A010969.P14382318108978038704`, by `A010969.P14382318108978038704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010969.P14382318108978038704

`C(n+16, 16)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010969

/-- `C(n+16, 16)` -/
def P14382318108978038704.Spec : Prop :=
  ∀ n, (P14382318108978038704.a n : ℤ) = A010969 (n + 16)

theorem P14382318108978038704.correct : P14382318108978038704.Spec := by
  intro n
  simp only [A010969, Nat.add_sub_cancel]

end A010969

/-! ## A010969.P9035927580589611255

`(16/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010969.P9035927580589611255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (16 / (n : ℚ) + 1) * a (n - 1)

end

end A010969.P9035927580589611255

namespace A010969

/-- `(16/n+1)*a(n-1)` -/
def P9035927580589611255.Spec : Prop :=
  ∀ n, P9035927580589611255.a n = (A010969 (n + 16) : ℚ)

end A010969

/-! ## A010969.P1408933847590755002

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]`
-/

namespace A010969.P1408933847590755002
noncomputable section

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010969.P1408933847590755002

namespace A010969

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]` -/
def P1408933847590755002.Spec : Prop :=
  ∀ n, (P1408933847590755002.a n : ℤ) = A010969 (n + 16)

end A010969

/-! ## A010969.P8692346747507416083

`A010968(n)+a(n-1)` with `a(0)=1`
-/

namespace A010969.P8692346747507416083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010968 (n + 15) + a (n - 1)

end

end A010969.P8692346747507416083

namespace A010969

/-- `A010968(n)+a(n-1)` -/
def P8692346747507416083.Spec : Prop :=
  ∀ n, P8692346747507416083.a n = A010969 (n + 16)

end A010969

/-! ## A010969.P3989703721860397736

`record[C(n, A170836(n))]`
-/

namespace A010969.P3989703721860397736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A170836 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010969.P3989703721860397736

namespace A010969

/-- `record[C(n, A170836(n))]` -/
def P3989703721860397736.Spec : Prop :=
  ∀ n, (P3989703721860397736.a n : ℤ) = A010969 (n + 16)

end A010969

/-! ## A010969.P2873245975501716682

`A007318(eq[17, A002260(n+1)])`
-/

namespace A010969.P2873245975501716682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010969.P2873245975501716682

namespace A010969

/-- `A007318(eq[17, A002260(n+1)])` -/
def P2873245975501716682.Spec : Prop :=
  ∀ n, P2873245975501716682.a n = A010969 (n + 16)

end A010969

/-! ## A010969.P12400909492591635985

`A007318(eq[16, A002262(n)])`
-/

namespace A010969.P12400909492591635985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010969.P12400909492591635985

namespace A010969

/-- `A007318(eq[16, A002262(n)])` -/
def P12400909492591635985.Spec : Prop :=
  ∀ n, P12400909492591635985.a n = A010969 (n + 16)

end A010969

/-! ## A010969.P11662268448655011604

`A007318(eq[16, A025581(n)])`
-/

namespace A010969.P11662268448655011604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010969.P11662268448655011604

namespace A010969

/-- `A007318(eq[16, A025581(n)])` -/
def P11662268448655011604.Spec : Prop :=
  ∀ n, P11662268448655011604.a n = A010969 (n + 16)

end A010969

/-! ## A010969.P10982676334555242634

`A007318(eq[17, A004736(n+1)])`
-/

namespace A010969.P10982676334555242634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010969.P10982676334555242634

namespace A010969

/-- `A007318(eq[17, A004736(n+1)])` -/
def P10982676334555242634.Spec : Prop :=
  ∀ n, P10982676334555242634.a n = A010969 (n + 16)

end A010969

/-! ## A010969.P12760809307982001919

`A109221(A187989(n+1))`
-/

namespace A010969.P12760809307982001919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (A187989 (n + 1)).toNat

end

end A010969.P12760809307982001919

namespace A010969

/-- `A109221(A187989(n+1))` -/
def P12760809307982001919.Spec : Prop :=
  ∀ n, P12760809307982001919.a n = A010969 (n + 16)

end A010969

/-!
# A010970: a(n) = binomial(n,17).

The programs for A010970, the canonical program `A010970.P4923139417183711302` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010970 has offset 17).

The definition of A010970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+17, 17)` (program `A010970.P4923139417183711302`, by `A010970.P4923139417183711302.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010970.P4923139417183711302

`C(n+17, 17)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010970

/-- `C(n+17, 17)` -/
def P4923139417183711302.Spec : Prop :=
  ∀ n, (P4923139417183711302.a n : ℤ) = A010970 (n + 17)

theorem P4923139417183711302.correct : P4923139417183711302.Spec := by
  intro n
  simp only [A010970, Nat.add_sub_cancel]

end A010970

/-! ## A010970.P10789579606128032698

`record[C(n-a(2%n), 17)]` with `a(0)=1`
-/

namespace A010970.P10789579606128032698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose ((n : ℤ) - (f1 (2 % n) : ℤ)).toNat 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010970.P10789579606128032698

namespace A010970

/-- `record[C(n-a(2%n), 17)]` -/
def P10789579606128032698.Spec : Prop :=
  ∀ n, (P10789579606128032698.a n : ℤ) = A010970 (n + 17)

end A010970

/-! ## A010970.P11293997750306947085

`(n+17)*a(n-1)/n` with `a(0)=1`
-/

namespace A010970.P11293997750306947085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 17 : ℚ) * (a (n - 1) / (n : ℚ))

end

end A010970.P11293997750306947085

namespace A010970

/-- `(n+17)*a(n-1)/n` -/
def P11293997750306947085.Spec : Prop :=
  ∀ n, P11293997750306947085.a n = (A010970 (n + 17) : ℚ)

end A010970

/-! ## A010970.P8630410701766690268

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]`
-/

namespace A010970.P8630410701766690268
noncomputable section

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010970.P8630410701766690268

namespace A010970

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]` -/
def P8630410701766690268.Spec : Prop :=
  ∀ n, (P8630410701766690268.a n : ℤ) = A010970 (n + 17)

end A010970

/-! ## A010970.P5393378425948123226

`A010969(n)+a(n-1)` with `a(0)=1`
-/

namespace A010970.P5393378425948123226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010969 (n + 16) + a (n - 1)

end

end A010970.P5393378425948123226

namespace A010970

/-- `A010969(n)+a(n-1)` -/
def P5393378425948123226.Spec : Prop :=
  ∀ n, P5393378425948123226.a n = A010970 (n + 17)

end A010970

/-! ## A010970.P15722557703349999984

`A074909(eq[4, A025581(n)/4])`
-/

namespace A010970.P15722557703349999984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A010970.P15722557703349999984

namespace A010970

/-- `A074909(eq[4, A025581(n)/4])` -/
def P15722557703349999984.Spec : Prop :=
  ∀ n, P15722557703349999984.a n = A010970 (n + 17)

end A010970

/-! ## A010970.P4465980350290003341

`A007318(eq[17, A002262(n)])`
-/

namespace A010970.P4465980350290003341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010970.P4465980350290003341

namespace A010970

/-- `A007318(eq[17, A002262(n)])` -/
def P4465980350290003341.Spec : Prop :=
  ∀ n, P4465980350290003341.a n = A010970 (n + 17)

end A010970

/-! ## A010970.P2649514362411575016

`A007318(eq[17, A025581(n)])`
-/

namespace A010970.P2649514362411575016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010970.P2649514362411575016

namespace A010970

/-- `A007318(eq[17, A025581(n)])` -/
def P2649514362411575016.Spec : Prop :=
  ∀ n, P2649514362411575016.a n = A010970 (n + 17)

end A010970

/-! ## A010970.P17360874401893660848

`A007318(eq[18, A193739(n)])`
-/

namespace A010970.P17360874401893660848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010970.P17360874401893660848

namespace A010970

/-- `A007318(eq[18, A193739(n)])` -/
def P17360874401893660848.Spec : Prop :=
  ∀ n, P17360874401893660848.a n = A010970 (n + 17)

end A010970

/-!
# A010971: a(n) = binomial(n,18).

The programs for A010971, the canonical program `A010971.P5891880047550183693` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010971 has offset 18).

The definition of A010971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+18, 18)` (program `A010971.P5891880047550183693`, by `A010971.P5891880047550183693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010971.P5891880047550183693

`C(n+18, 18)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010971

/-- `C(n+18, 18)` -/
def P5891880047550183693.Spec : Prop :=
  ∀ n, (P5891880047550183693.a n : ℤ) = A010971 (n + 18)

theorem P5891880047550183693.correct : P5891880047550183693.Spec := by
  intro n
  simp only [A010971, Nat.add_sub_cancel]

end A010971

/-! ## A010971.P12824013458083441515

`(18/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010971.P12824013458083441515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (18 / (n : ℚ) + 1) * a (n - 1)

end

end A010971.P12824013458083441515

namespace A010971

/-- `(18/n+1)*a(n-1)` -/
def P12824013458083441515.Spec : Prop :=
  ∀ n, P12824013458083441515.a n = (A010971 (n + 18) : ℚ)

end A010971

/-! ## A010971.P12080260769519721228

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]`
-/

namespace A010971.P12080260769519721228
noncomputable section

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010971.P12080260769519721228

namespace A010971

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]` -/
def P12080260769519721228.Spec : Prop :=
  ∀ n, (P12080260769519721228.a n : ℤ) = A010971 (n + 18)

end A010971

/-! ## A010971.P8956404187796779105

`A010972(n+1)-(A010972(n)+A010970(n+1))`
-/

namespace A010971.P8956404187796779105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010972 (n + 1 + 19) - (A010972 (n + 19) + A010970 (n + 1 + 17))

end

end A010971.P8956404187796779105

namespace A010971

/-- `A010972(n+1)-(A010972(n)+A010970(n+1))` -/
def P8956404187796779105.Spec : Prop :=
  ∀ n, P8956404187796779105.a n = A010971 (n + 18)

end A010971

/-! ## A010971.P8583087180534205893

`∑[A010970(n)]%A010970(2*n+3)`
-/

namespace A010971.P8583087180534205893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010970 (n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A010970 (2 * n + 3 + 17))

end

end A010971.P8583087180534205893

namespace A010971

/-- `∑[A010970(n)]%A010970(2*n+3)` -/
def P8583087180534205893.Spec : Prop :=
  ∀ n, P8583087180534205893.a n = A010971 (n + 18)

end A010971

/-! ## A010971.P12838818789398653102

`A109221(A187989(n+2)-1)`
-/

namespace A010971.P12838818789398653102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (A187989 (n + 2) - 1).toNat

end

end A010971.P12838818789398653102

namespace A010971

/-- `A109221(A187989(n+2)-1)` -/
def P12838818789398653102.Spec : Prop :=
  ∀ n, P12838818789398653102.a n = A010971 (n + 18)

end A010971

/-!
# A010972: a(n) = binomial(n,19).

The programs for A010972, the canonical program `A010972.P11329558619130084726` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010972 has offset 19).

The definition of A010972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+19, 19)` (program `A010972.P11329558619130084726`, by `A010972.P11329558619130084726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010972.P11329558619130084726

`C(n+19, 19)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010972

/-- `C(n+19, 19)` -/
def P11329558619130084726.Spec : Prop :=
  ∀ n, (P11329558619130084726.a n : ℤ) = A010972 (n + 19)

theorem P11329558619130084726.correct : P11329558619130084726.Spec := by
  intro n
  simp only [A010972, Nat.add_sub_cancel]

end A010972

/-! ## A010972.P13249416016039961590

`(n+19)/n*a(n-1)` with `a(0)=1`
-/

namespace A010972.P13249416016039961590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 19 : ℚ) / (n : ℚ) * a (n - 1)

end

end A010972.P13249416016039961590

namespace A010972

/-- `(n+19)/n*a(n-1)` -/
def P13249416016039961590.Spec : Prop :=
  ∀ n, P13249416016039961590.a n = (A010972 (n + 19) : ℚ)

end A010972

/-! ## A010972.P3434101925502045306

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]`
-/

namespace A010972.P3434101925502045306
noncomputable section

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010972.P3434101925502045306

namespace A010972

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]` -/
def P3434101925502045306.Spec : Prop :=
  ∀ n, (P3434101925502045306.a n : ℤ) = A010972 (n + 19)

end A010972

/-! ## A010972.P16108194061909469006

`and(∑[A010971(n)], -1)`
-/

namespace A010972.P16108194061909469006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010971 (n + 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A010972.P16108194061909469006

namespace A010972

/-- `and(∑[A010971(n)], -1)` -/
def P16108194061909469006.Spec : Prop :=
  ∀ n, P16108194061909469006.a n = A010972 (n + 19)

end A010972

/-! ## A010972.P9017113152206255882

`∑[∑[2*A010970(n)]]/2`
-/

namespace A010972.P9017113152206255882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010970 (n + 17)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A010972.P9017113152206255882

namespace A010972

/-- `∑[∑[2*A010970(n)]]/2` -/
def P9017113152206255882.Spec : Prop :=
  ∀ n, P9017113152206255882.a n = (A010972 (n + 19) : ℚ)

end A010972

/-! ## A010972.P15745550048545725961

`or(∑[A010971(n)], A185014(n))`
-/

namespace A010972.P15745550048545725961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010971 (n + 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A185014 n)

end

end A010972.P15745550048545725961

namespace A010972

/-- `or(∑[A010971(n)], A185014(n))` -/
def P15745550048545725961.Spec : Prop :=
  ∀ n, P15745550048545725961.a n = A010972 (n + 19)

end A010972

/-! ## A010972.P6037812754575016092

`A007318(A000217(n+19)+n)`
-/

namespace A010972.P6037812754575016092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 19) + (n : ℤ)).toNat

end

end A010972.P6037812754575016092

namespace A010972

/-- `A007318(A000217(n+19)+n)` -/
def P6037812754575016092.Spec : Prop :=
  ∀ n, P6037812754575016092.a n = A010972 (n + 19)

end A010972

/-!
# A010973: a(n) = binomial(n,20).

The programs for A010973, the canonical program `A010973.P14341657902432357468` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010973 has offset 20).

The definition of A010973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+20, 20)` (program `A010973.P14341657902432357468`, by `A010973.P14341657902432357468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010973.P14341657902432357468

`C(n+20, 20)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010973

/-- `C(n+20, 20)` -/
def P14341657902432357468.Spec : Prop :=
  ∀ n, (P14341657902432357468.a n : ℤ) = A010973 (n + 20)

theorem P14341657902432357468.correct : P14341657902432357468.Spec := by
  intro n
  simp only [A010973, Nat.add_sub_cancel]

end A010973

/-! ## A010973.P4278635037077660931

`(n+20)*a(n-1)/n` with `a(0)=1`
-/

namespace A010973.P4278635037077660931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 20 : ℚ) * a (n - 1) / (n : ℚ)

end

end A010973.P4278635037077660931

namespace A010973

/-- `(n+20)*a(n-1)/n` -/
def P4278635037077660931.Spec : Prop :=
  ∀ n, P4278635037077660931.a n = (A010973 (n + 20) : ℚ)

end A010973

/-! ## A010973.P12712628279168139462

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]`
-/

namespace A010973.P12712628279168139462
noncomputable section

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010973.P12712628279168139462

namespace A010973

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]` -/
def P12712628279168139462.Spec : Prop :=
  ∀ n, (P12712628279168139462.a n : ℤ) = A010973 (n + 20)

end A010973

/-! ## A010973.P13876004608656478504

`A007318(A000217(n+21)-(n+1))`
-/

namespace A010973.P13876004608656478504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 21) - (n + 1 : ℤ)).toNat

end

end A010973.P13876004608656478504

namespace A010973

/-- `A007318(A000217(n+21)-(n+1))` -/
def P13876004608656478504.Spec : Prop :=
  ∀ n, P13876004608656478504.a n = A010973 (n + 20)

end A010973

/-! ## A010973.P3113149597563968184

`A109221(A187989(n+2)-2)`
-/

namespace A010973.P3113149597563968184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (A187989 (n + 2) - 2).toNat

end

end A010973.P3113149597563968184

namespace A010973

/-- `A109221(A187989(n+2)-2)` -/
def P3113149597563968184.Spec : Prop :=
  ∀ n, P3113149597563968184.a n = A010973 (n + 20)

end A010973

/-!
# A010974: a(n) = binomial(n,21).

The programs for A010974, the canonical program `A010974.P14672983112006318754` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010974 has offset 21).

The definition of A010974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+21, 21)` (program `A010974.P14672983112006318754`, by `A010974.P14672983112006318754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010974.P14672983112006318754

`C(n+21, 21)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010974

/-- `C(n+21, 21)` -/
def P14672983112006318754.Spec : Prop :=
  ∀ n, (P14672983112006318754.a n : ℤ) = A010974 (n + 21)

theorem P14672983112006318754.correct : P14672983112006318754.Spec := by
  intro n
  simp only [A010974, Nat.add_sub_cancel]

end A010974

/-! ## A010974.P6201026644812613301

`(n+21)*a(n-1)/n` with `a(0)=1`
-/

namespace A010974.P6201026644812613301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 21 : ℚ) * a (n - 1) / (n : ℚ)

end

end A010974.P6201026644812613301

namespace A010974

/-- `(n+21)*a(n-1)/n` -/
def P6201026644812613301.Spec : Prop :=
  ∀ n, P6201026644812613301.a n = (A010974 (n + 21) : ℚ)

end A010974

/-! ## A010974.P12639599866387130968

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]`
-/

namespace A010974.P12639599866387130968
noncomputable section

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010974.P12639599866387130968

namespace A010974

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]` -/
def P12639599866387130968.Spec : Prop :=
  ∀ n, (P12639599866387130968.a n : ℤ) = A010974 (n + 21)

end A010974

/-! ## A010974.P3246462694930797924

`A010973(n)+a(n-1)` with `a(0)=1`
-/

namespace A010974.P3246462694930797924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010973 (n + 20) + a (n - 1)

end

end A010974.P3246462694930797924

namespace A010974

/-- `A010973(n)+a(n-1)` -/
def P3246462694930797924.Spec : Prop :=
  ∀ n, P3246462694930797924.a n = A010974 (n + 21)

end A010974

/-! ## A010974.P541566363019661814

`A035640(2*n+3)+∑[∑[A010972(n)]]`
-/

namespace A010974.P541566363019661814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010972 (n + 19)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035640 (2 * n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010974.P541566363019661814

namespace A010974

/-- `A035640(2*n+3)+∑[∑[A010972(n)]]` -/
def P541566363019661814.Spec : Prop :=
  ∀ n, P541566363019661814.a n = A010974 (n + 21)

end A010974

/-!
# A010975: a(n) = binomial(n,22).

The programs for A010975, the canonical program `A010975.P18170828849761978586` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010975 has offset 22).

The definition of A010975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+22, 22)` (program `A010975.P18170828849761978586`, by `A010975.P18170828849761978586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010975.P18170828849761978586

`C(n+22, 22)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010975

/-- `C(n+22, 22)` -/
def P18170828849761978586.Spec : Prop :=
  ∀ n, (P18170828849761978586.a n : ℤ) = A010975 (n + 22)

theorem P18170828849761978586.correct : P18170828849761978586.Spec := by
  intro n
  simp only [A010975, Nat.add_sub_cancel]

end A010975

/-! ## A010975.P17820732556092452262

`(n+22)*a(n-1)/n` with `a(0)=1`
-/

namespace A010975.P17820732556092452262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 22 : ℚ) * a (n - 1) / (n : ℚ)

end

end A010975.P17820732556092452262

namespace A010975

/-- `(n+22)*a(n-1)/n` -/
def P17820732556092452262.Spec : Prop :=
  ∀ n, P17820732556092452262.a n = (A010975 (n + 22) : ℚ)

end A010975

/-! ## A010975.P9019838054887228353

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]`
-/

namespace A010975.P9019838054887228353
noncomputable section

def f21 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f21 j

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010975.P9019838054887228353

namespace A010975

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]` -/
def P9019838054887228353.Spec : Prop :=
  ∀ n, (P9019838054887228353.a n : ℤ) = A010975 (n + 22)

end A010975

/-! ## A010975.P5696456954998160508

`A000038(3*(n+1))+∑[A010974(n)]`
-/

namespace A010975.P5696456954998160508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010974 (n + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (3 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010975.P5696456954998160508

namespace A010975

/-- `A000038(3*(n+1))+∑[A010974(n)]` -/
def P5696456954998160508.Spec : Prop :=
  ∀ n, P5696456954998160508.a n = A010975 (n + 22)

end A010975

/-! ## A010975.P17819017783383038652

`A085478(eq[23, A158405(n+1)])`
-/

namespace A010975.P17819017783383038652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010975.P17819017783383038652

namespace A010975

/-- `A085478(eq[23, A158405(n+1)])` -/
def P17819017783383038652.Spec : Prop :=
  ∀ n, P17819017783383038652.a n = A010975 (n + 22)

end A010975

/-!
# A010976: Binomial coefficient C(n,23).

The programs for A010976, the canonical program `A010976.P12132888275687936653` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010976 has offset 23).

The definition of A010976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+23, 23)` (program `A010976.P12132888275687936653`, by `A010976.P12132888275687936653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010976.P12132888275687936653

`C(n+23, 23)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010976

/-- `C(n+23, 23)` -/
def P12132888275687936653.Spec : Prop :=
  ∀ n, (P12132888275687936653.a n : ℤ) = A010976 (n + 23)

theorem P12132888275687936653.correct : P12132888275687936653.Spec := by
  intro n
  simp only [A010976, Nat.add_sub_cancel]

end A010976

/-! ## A010976.P4060358726298592687

`(n+23)*a(n-1)/n` with `a(0)=1`
-/

namespace A010976.P4060358726298592687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 23 : ℚ) * (a (n - 1) / (n : ℚ))

end

end A010976.P4060358726298592687

namespace A010976

/-- `(n+23)*a(n-1)/n` -/
def P4060358726298592687.Spec : Prop :=
  ∀ n, P4060358726298592687.a n = (A010976 (n + 23) : ℚ)

end A010976

/-! ## A010976.P12624963467756293203

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]`
-/

namespace A010976.P12624963467756293203
noncomputable section

def f22 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f21 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f22 j

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f21 j

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010976.P12624963467756293203

namespace A010976

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]` -/
def P12624963467756293203.Spec : Prop :=
  ∀ n, (P12624963467756293203.a n : ℤ) = A010976 (n + 23)

end A010976

/-! ## A010976.P6109931137196244321

`A010975(n)+a(n-1)` with `a(0)=1`
-/

namespace A010976.P6109931137196244321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010975 (n + 22) + a (n - 1)

end

end A010976.P6109931137196244321

namespace A010976

/-- `A010975(n)+a(n-1)` -/
def P6109931137196244321.Spec : Prop :=
  ∀ n, P6109931137196244321.a n = A010976 (n + 23)

end A010976

/-! ## A010976.P2257842406034463065

`A198954(3*n+2)+∑[A010975(n)]`
-/

namespace A010976.P2257842406034463065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010975 (n + 22)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010976.P2257842406034463065

namespace A010976

/-- `A198954(3*n+2)+∑[A010975(n)]` -/
def P2257842406034463065.Spec : Prop :=
  ∀ n, P2257842406034463065.a n = A010976 (n + 23)

end A010976

/-! ## A010976.P17724447803293161808

`∑[A010975(n)]%A050151(n+3)`
-/

namespace A010976.P17724447803293161808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010975 (n + 22)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A050151 (n + 3))

end

end A010976.P17724447803293161808

namespace A010976

/-- `∑[A010975(n)]%A050151(n+3)` -/
def P17724447803293161808.Spec : Prop :=
  ∀ n, P17724447803293161808.a n = A010976 (n + 23)

end A010976

/-! ## A010976.P17960269853823465341

`A007318(A000217(n+24)-(n+1))`
-/

namespace A010976.P17960269853823465341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 24) - (n + 1 : ℤ)).toNat

end

end A010976.P17960269853823465341

namespace A010976

/-- `A007318(A000217(n+24)-(n+1))` -/
def P17960269853823465341.Spec : Prop :=
  ∀ n, P17960269853823465341.a n = A010976 (n + 23)

end A010976

/-!
# A010977: a(n) = binomial coefficient C(n,24).

The programs for A010977, the canonical program `A010977.P2788023190348073348` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010977 has offset 24).

The definition of A010977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+24, 24)` (program `A010977.P2788023190348073348`, by `A010977.P2788023190348073348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010977.P2788023190348073348

`C(n+24, 24)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010977

/-- `C(n+24, 24)` -/
def P2788023190348073348.Spec : Prop :=
  ∀ n, (P2788023190348073348.a n : ℤ) = A010977 (n + 24)

theorem P2788023190348073348.correct : P2788023190348073348.Spec := by
  intro n
  simp only [A010977, Nat.add_sub_cancel]

end A010977

/-! ## A010977.P8583648954161125748

`(n+24)*a(n-1)/n` with `a(0)=1`
-/

namespace A010977.P8583648954161125748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 24 : ℚ) * a (n - 1) / (n : ℚ)

end

end A010977.P8583648954161125748

namespace A010977

/-- `(n+24)*a(n-1)/n` -/
def P8583648954161125748.Spec : Prop :=
  ∀ n, P8583648954161125748.a n = (A010977 (n + 24) : ℚ)

end A010977

/-! ## A010977.P4761908172020584677

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]`
-/

namespace A010977.P4761908172020584677
noncomputable section

def f23 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f22 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f23 j

def f21 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f22 j

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f21 j

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010977.P4761908172020584677

namespace A010977

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]` -/
def P4761908172020584677.Spec : Prop :=
  ∀ n, (P4761908172020584677.a n : ℤ) = A010977 (n + 24)

end A010977

/-! ## A010977.P14381697557326681697

`A010978(n+1)-(A010978(n)+A010976(n+1))`
-/

namespace A010977.P14381697557326681697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010978 (n + 1 + 25) - (A010978 (n + 25) + A010976 (n + 1 + 23))

end

end A010977.P14381697557326681697

namespace A010977

/-- `A010978(n+1)-(A010978(n)+A010976(n+1))` -/
def P14381697557326681697.Spec : Prop :=
  ∀ n, P14381697557326681697.a n = A010977 (n + 24)

end A010977

/-! ## A010977.P14288720750225250422

`A007318(A000217(n+24)+24)`
-/

namespace A010977.P14288720750225250422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 24) + 24).toNat

end

end A010977.P14288720750225250422

namespace A010977

/-- `A007318(A000217(n+24)+24)` -/
def P14288720750225250422.Spec : Prop :=
  ∀ n, P14288720750225250422.a n = A010977 (n + 24)

end A010977

/-!
# A010978: a(n) = binomial(n,25).

The programs for A010978, the canonical program `A010978.P14084293859246539517` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010978 has offset 25).

The definition of A010978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+25, 25)` (program `A010978.P14084293859246539517`, by `A010978.P14084293859246539517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010978.P14084293859246539517

`C(n+25, 25)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010978

/-- `C(n+25, 25)` -/
def P14084293859246539517.Spec : Prop :=
  ∀ n, (P14084293859246539517.a n : ℤ) = A010978 (n + 25)

theorem P14084293859246539517.correct : P14084293859246539517.Spec := by
  intro n
  simp only [A010978, Nat.add_sub_cancel]

end A010978

/-! ## A010978.P9591132153176783284

`(25/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010978.P9591132153176783284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (25 / (n : ℚ) + 1) * a (n - 1)

end

end A010978.P9591132153176783284

namespace A010978

/-- `(25/n+1)*a(n-1)` -/
def P9591132153176783284.Spec : Prop :=
  ∀ n, P9591132153176783284.a n = (A010978 (n + 25) : ℚ)

end A010978

/-! ## A010978.P17817832347701997954

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]`
-/

namespace A010978.P17817832347701997954
noncomputable section

def f24 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f23 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f24 j

def f22 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f23 j

def f21 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f22 j

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f21 j

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010978.P17817832347701997954

namespace A010978

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]` -/
def P17817832347701997954.Spec : Prop :=
  ∀ n, (P17817832347701997954.a n : ℤ) = A010978 (n + 25)

end A010978

/-! ## A010978.P166622070189369314

`A010979(n+1)-(A010979(n)+A010977(n+1))`
-/

namespace A010978.P166622070189369314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010979 (n + 1 + 26) - (A010979 (n + 26) + A010977 (n + 1 + 24))

end

end A010978.P166622070189369314

namespace A010978

/-- `A010979(n+1)-(A010979(n)+A010977(n+1))` -/
def P166622070189369314.Spec : Prop :=
  ∀ n, P166622070189369314.a n = A010978 (n + 25)

end A010978

/-! ## A010978.P16938998077103823436

`A007318(A000217(n+26)-26)`
-/

namespace A010978.P16938998077103823436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 26) - 26).toNat

end

end A010978.P16938998077103823436

namespace A010978

/-- `A007318(A000217(n+26)-26)` -/
def P16938998077103823436.Spec : Prop :=
  ∀ n, P16938998077103823436.a n = A010978 (n + 25)

end A010978

/-!
# A010979: Binomial coefficient C(n,26).

The programs for A010979, the canonical program `A010979.P16339321406028632337` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010979 has offset 26).

The definition of A010979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+26, 26)` (program `A010979.P16339321406028632337`, by `A010979.P16339321406028632337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010979.P16339321406028632337

`C(n+26, 26)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010979

/-- `C(n+26, 26)` -/
def P16339321406028632337.Spec : Prop :=
  ∀ n, (P16339321406028632337.a n : ℤ) = A010979 (n + 26)

theorem P16339321406028632337.correct : P16339321406028632337.Spec := by
  intro n
  simp only [A010979, Nat.add_sub_cancel]

end A010979

/-! ## A010979.P17514354143989988162

`(26/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010979.P17514354143989988162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (26 / (n : ℚ) + 1) * a (n - 1)

end

end A010979.P17514354143989988162

namespace A010979

/-- `(26/n+1)*a(n-1)` -/
def P17514354143989988162.Spec : Prop :=
  ∀ n, P17514354143989988162.a n = (A010979 (n + 26) : ℚ)

end A010979

/-! ## A010979.P11740998047438603439

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]]`
-/

namespace A010979.P11740998047438603439
noncomputable section

def f25 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f24 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f25 j

def f23 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f24 j

def f22 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f23 j

def f21 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f22 j

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f21 j

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010979.P11740998047438603439

namespace A010979

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]]` -/
def P11740998047438603439.Spec : Prop :=
  ∀ n, (P11740998047438603439.a n : ℤ) = A010979 (n + 26)

end A010979

/-! ## A010979.P6205492397347378764

`A010980(n+1)-(A010980(n)+A010978(n+1))`
-/

namespace A010979.P6205492397347378764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010980 (n + 1 + 27) - (A010980 (n + 27) + A010978 (n + 1 + 25))

end

end A010979.P6205492397347378764

namespace A010979

/-- `A010980(n+1)-(A010980(n)+A010978(n+1))` -/
def P6205492397347378764.Spec : Prop :=
  ∀ n, P6205492397347378764.a n = A010979 (n + 26)

end A010979

/-! ## A010979.P12614271642489061965

`A007318(A000217(n+26)+26)`
-/

namespace A010979.P12614271642489061965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 26) + 26).toNat

end

end A010979.P12614271642489061965

namespace A010979

/-- `A007318(A000217(n+26)+26)` -/
def P12614271642489061965.Spec : Prop :=
  ∀ n, P12614271642489061965.a n = A010979 (n + 26)

end A010979

/-!
# A010980: a(n) = binomial(n,27).

The programs for A010980, the canonical program `A010980.P13340569172765789348` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010980 has offset 27).

The definition of A010980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+27, 27)` (program `A010980.P13340569172765789348`, by `A010980.P13340569172765789348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010980.P13340569172765789348

`C(n+27, 27)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010980

/-- `C(n+27, 27)` -/
def P13340569172765789348.Spec : Prop :=
  ∀ n, (P13340569172765789348.a n : ℤ) = A010980 (n + 27)

theorem P13340569172765789348.correct : P13340569172765789348.Spec := by
  intro n
  simp only [A010980, Nat.add_sub_cancel]

end A010980

/-! ## A010980.P2481007499688796228

`(27/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010980.P2481007499688796228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (27 / (n : ℚ) + 1) * a (n - 1)

end

end A010980.P2481007499688796228

namespace A010980

/-- `(27/n+1)*a(n-1)` -/
def P2481007499688796228.Spec : Prop :=
  ∀ n, P2481007499688796228.a n = (A010980 (n + 27) : ℚ)

end A010980

/-! ## A010980.P1052963834554450590

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]]]`
-/

namespace A010980.P1052963834554450590
noncomputable section

def f26 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f25 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f26 j

def f24 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f25 j

def f23 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f24 j

def f22 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f23 j

def f21 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f22 j

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f21 j

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010980.P1052963834554450590

namespace A010980

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]]]` -/
def P1052963834554450590.Spec : Prop :=
  ∀ n, (P1052963834554450590.a n : ℤ) = A010980 (n + 27)

end A010980

/-! ## A010980.P1473541653138074284

`A010979(n)+a(n-1)` with `a(0)=1`
-/

namespace A010980.P1473541653138074284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010979 (n + 26) + a (n - 1)

end

end A010980.P1473541653138074284

namespace A010980

/-- `A010979(n)+a(n-1)` -/
def P1473541653138074284.Spec : Prop :=
  ∀ n, P1473541653138074284.a n = A010980 (n + 27)

end A010980

/-! ## A010980.P9206453919221025736

`A007318(A000217(n+27)+27)`
-/

namespace A010980.P9206453919221025736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 27) + 27).toNat

end

end A010980.P9206453919221025736

namespace A010980

/-- `A007318(A000217(n+27)+27)` -/
def P9206453919221025736.Spec : Prop :=
  ∀ n, P9206453919221025736.a n = A010980 (n + 27)

end A010980

/-!
# A010981: Binomial coefficient C(n,28).

The programs for A010981, the canonical program `A010981.P3027905420072761919` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010981 has offset 28).

The definition of A010981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+28, 28)` (program `A010981.P3027905420072761919`, by `A010981.P3027905420072761919.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010981.P3027905420072761919

`C(n+28, 28)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010981

/-- `C(n+28, 28)` -/
def P3027905420072761919.Spec : Prop :=
  ∀ n, (P3027905420072761919.a n : ℤ) = A010981 (n + 28)

theorem P3027905420072761919.correct : P3027905420072761919.Spec := by
  intro n
  simp only [A010981, Nat.add_sub_cancel]

end A010981

/-! ## A010981.P13586888270575097943

`(28/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010981.P13586888270575097943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (28 / (n : ℚ) + 1) * a (n - 1)

end

end A010981.P13586888270575097943

namespace A010981

/-- `(28/n+1)*a(n-1)` -/
def P13586888270575097943.Spec : Prop :=
  ∀ n, P13586888270575097943.a n = (A010981 (n + 28) : ℚ)

end A010981

/-! ## A010981.P7420768867379800292

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]]]]`
-/

namespace A010981.P7420768867379800292
noncomputable section

def f27 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f26 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f27 j

def f25 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f26 j

def f24 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f25 j

def f23 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f24 j

def f22 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f23 j

def f21 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f22 j

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f21 j

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010981.P7420768867379800292

namespace A010981

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]]]]` -/
def P7420768867379800292.Spec : Prop :=
  ∀ n, (P7420768867379800292.a n : ℤ) = A010981 (n + 28)

end A010981

/-! ## A010981.P18113078391544187796

`A010980(n)+a(n-1)` with `a(0)=1`
-/

namespace A010981.P18113078391544187796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010980 (n + 27) + a (n - 1)

end

end A010981.P18113078391544187796

namespace A010981

/-- `A010980(n)+a(n-1)` -/
def P18113078391544187796.Spec : Prop :=
  ∀ n, P18113078391544187796.a n = A010981 (n + 28)

end A010981

/-! ## A010981.P8509330969334350000

`A010982(n+1)-(A010982(n)+A010980(n+1))`
-/

namespace A010981.P8509330969334350000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010982 (n + 1 + 29) - (A010982 (n + 29) + A010980 (n + 1 + 27))

end

end A010981.P8509330969334350000

namespace A010981

/-- `A010982(n+1)-(A010982(n)+A010980(n+1))` -/
def P8509330969334350000.Spec : Prop :=
  ∀ n, P8509330969334350000.a n = A010981 (n + 28)

end A010981

/-! ## A010981.P8162281226314565742

`A109960(A000217(n+7)+7)`
-/

namespace A010981.P8162281226314565742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109960 (A000217 (n + 7) + 7).toNat

end

end A010981.P8162281226314565742

namespace A010981

/-- `A109960(A000217(n+7)+7)` -/
def P8162281226314565742.Spec : Prop :=
  ∀ n, P8162281226314565742.a n = A010981 (n + 28)

end A010981

/-!
# A010982: Binomial coefficient C(n,29).

The programs for A010982, the canonical program `A010982.P4058460017958705333` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010982 has offset 29).

The definition of A010982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+29, 29)` (program `A010982.P4058460017958705333`, by `A010982.P4058460017958705333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010982.P4058460017958705333

`C(n+29, 29)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010982

/-- `C(n+29, 29)` -/
def P4058460017958705333.Spec : Prop :=
  ∀ n, (P4058460017958705333.a n : ℤ) = A010982 (n + 29)

theorem P4058460017958705333.correct : P4058460017958705333.Spec := by
  intro n
  simp only [A010982, Nat.add_sub_cancel]

end A010982

/-! ## A010982.P12282408177221028808

`(29/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010982.P12282408177221028808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (29 / (n : ℚ) + 1) * a (n - 1)

end

end A010982.P12282408177221028808

namespace A010982

/-- `(29/n+1)*a(n-1)` -/
def P12282408177221028808.Spec : Prop :=
  ∀ n, P12282408177221028808.a n = (A010982 (n + 29) : ℚ)

end A010982

/-! ## A010982.P12100215263054709753

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]]]]]`
-/

namespace A010982.P12100215263054709753
noncomputable section

def f28 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f27 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f28 j

def f26 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f27 j

def f25 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f26 j

def f24 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f25 j

def f23 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f24 j

def f22 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f23 j

def f21 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f22 j

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f21 j

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010982.P12100215263054709753

namespace A010982

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]]]]]` -/
def P12100215263054709753.Spec : Prop :=
  ∀ n, (P12100215263054709753.a n : ℤ) = A010982 (n + 29)

end A010982

/-! ## A010982.P15388421744727639102

`A010981(n)+a(n-1)` with `a(0)=1`
-/

namespace A010982.P15388421744727639102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010981 (n + 28) + a (n - 1)

end

end A010982.P15388421744727639102

namespace A010982

/-- `A010981(n)+a(n-1)` -/
def P15388421744727639102.Spec : Prop :=
  ∀ n, P15388421744727639102.a n = A010982 (n + 29)

end A010982

/-! ## A010982.P17801445162835281853

`A007318(A000217(n+30)-30)`
-/

namespace A010982.P17801445162835281853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 30) - 30).toNat

end

end A010982.P17801445162835281853

namespace A010982

/-- `A007318(A000217(n+30)-30)` -/
def P17801445162835281853.Spec : Prop :=
  ∀ n, P17801445162835281853.a n = A010982 (n + 29)

end A010982

/-! ## A010982.P4653833389186519695

`∑[A010981(n)]%A274203(2*n+3)`
-/

namespace A010982.P4653833389186519695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010981 (n + 28)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A274203 (2 * n + 3))

end

end A010982.P4653833389186519695

namespace A010982

/-- `∑[A010981(n)]%A274203(2*n+3)` -/
def P4653833389186519695.Spec : Prop :=
  ∀ n, P4653833389186519695.a n = A010982 (n + 29)

end A010982

/-!
# A010983: Binomial coefficient C(n,30).

The programs for A010983, the canonical program `A010983.P6761486620382957533` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010983 has offset 30).

The definition of A010983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+30, 30)` (program `A010983.P6761486620382957533`, by `A010983.P6761486620382957533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010983.P6761486620382957533

`C(n+30, 30)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010983

/-- `C(n+30, 30)` -/
def P6761486620382957533.Spec : Prop :=
  ∀ n, (P6761486620382957533.a n : ℤ) = A010983 (n + 30)

theorem P6761486620382957533.correct : P6761486620382957533.Spec := by
  intro n
  simp only [A010983, Nat.add_sub_cancel]

end A010983

/-! ## A010983.P9407657401760237906

`(30/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010983.P9407657401760237906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (30 / (n : ℚ) + 1) * a (n - 1)

end

end A010983.P9407657401760237906

namespace A010983

/-- `(30/n+1)*a(n-1)` -/
def P9407657401760237906.Spec : Prop :=
  ∀ n, P9407657401760237906.a n = (A010983 (n + 30) : ℚ)

end A010983

/-! ## A010983.P2137926620681490222

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]]]]]]`
-/

namespace A010983.P2137926620681490222
noncomputable section

def f29 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f28 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f29 j

def f27 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f28 j

def f26 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f27 j

def f25 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f26 j

def f24 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f25 j

def f23 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f24 j

def f22 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f23 j

def f21 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f22 j

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f21 j

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f18 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f15 j

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010983.P2137926620681490222

namespace A010983

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]]]]]]]]]]]]]]]]]]]]` -/
def P2137926620681490222.Spec : Prop :=
  ∀ n, (P2137926620681490222.a n : ℤ) = A010983 (n + 30)

end A010983

/-! ## A010983.P7151460234506592070

`A010984(n+1)-(A010984(n)+A010982(n+1))`
-/

namespace A010983.P7151460234506592070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010984 (n + 1 + 31) - (A010984 (n + 31) + A010982 (n + 1 + 29))

end

end A010983.P7151460234506592070

namespace A010983

/-- `A010984(n+1)-(A010984(n)+A010982(n+1))` -/
def P7151460234506592070.Spec : Prop :=
  ∀ n, P7151460234506592070.a n = A010983 (n + 30)

end A010983

/-! ## A010983.P5253357875791096295

`A007318(A000217(n+30)+30)`
-/

namespace A010983.P5253357875791096295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 30) + 30).toNat

end

end A010983.P5253357875791096295

namespace A010983

/-- `A007318(A000217(n+30)+30)` -/
def P5253357875791096295.Spec : Prop :=
  ∀ n, P5253357875791096295.a n = A010983 (n + 30)

end A010983

/-!
# A010984: Binomial coefficient C(n,31).

The programs for A010984, the canonical program `A010984.P9508470706990318026` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010984 has offset 31).

The definition of A010984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+31, 31)` (program `A010984.P9508470706990318026`, by `A010984.P9508470706990318026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010984.P9508470706990318026

`C(n+31, 31)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010984

/-- `C(n+31, 31)` -/
def P9508470706990318026.Spec : Prop :=
  ∀ n, (P9508470706990318026.a n : ℤ) = A010984 (n + 31)

theorem P9508470706990318026.correct : P9508470706990318026.Spec := by
  intro n
  simp only [A010984, Nat.add_sub_cancel]

end A010984

/-! ## A010984.P10705808533123367258

`(31/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010984.P10705808533123367258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (31 / (n : ℚ) + 1) * a (n - 1)

end

end A010984.P10705808533123367258

namespace A010984

/-- `(31/n+1)*a(n-1)` -/
def P10705808533123367258.Spec : Prop :=
  ∀ n, P10705808533123367258.a n = (A010984 (n + 31) : ℚ)

end A010984

/-! ## A010984.P10781954408141088026

`∑[A010983(n)]`
-/

namespace A010984.P10781954408141088026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010983 (n + 30)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010984.P10781954408141088026

namespace A010984

/-- `∑[A010983(n)]` -/
def P10781954408141088026.Spec : Prop :=
  ∀ n, P10781954408141088026.a n = A010984 (n + 31)

end A010984

/-! ## A010984.P13442778637315771751

`∑[∑[A010982(n)]]`
-/

namespace A010984.P13442778637315771751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010982 (n + 29)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010984.P13442778637315771751

namespace A010984

/-- `∑[∑[A010982(n)]]` -/
def P13442778637315771751.Spec : Prop :=
  ∀ n, P13442778637315771751.a n = A010984 (n + 31)

end A010984

/-! ## A010984.P14766413623774576977

`∑[∑[∑[A010981(n)]]]`
-/

namespace A010984.P14766413623774576977
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010981 (n + 28)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010984.P14766413623774576977

namespace A010984

/-- `∑[∑[∑[A010981(n)]]]` -/
def P14766413623774576977.Spec : Prop :=
  ∀ n, P14766413623774576977.a n = A010984 (n + 31)

end A010984

/-! ## A010984.P6279149728385759563

`∑[A007318(A000217(n+31)-31)]`
-/

namespace A010984.P6279149728385759563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 31) - 31).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010984.P6279149728385759563

namespace A010984

/-- `∑[A007318(A000217(n+31)-31)]` -/
def P6279149728385759563.Spec : Prop :=
  ∀ n, P6279149728385759563.a n = A010984 (n + 31)

end A010984

/-!
# A010985: Binomial coefficient C(n,32).

The programs for A010985, the canonical program `A010985.P3624749681184008687` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010985 has offset 32).

The definition of A010985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+32, 32)` (program `A010985.P3624749681184008687`, by `A010985.P3624749681184008687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010985.P3624749681184008687

`C(n+32, 32)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010985

/-- `C(n+32, 32)` -/
def P3624749681184008687.Spec : Prop :=
  ∀ n, (P3624749681184008687.a n : ℤ) = A010985 (n + 32)

theorem P3624749681184008687.correct : P3624749681184008687.Spec := by
  intro n
  simp only [A010985, Nat.add_sub_cancel]

end A010985

/-! ## A010985.P4386844238004221540

`(32/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010985.P4386844238004221540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (32 / (n : ℚ) + 1) * a (n - 1)

end

end A010985.P4386844238004221540

namespace A010985

/-- `(32/n+1)*a(n-1)` -/
def P4386844238004221540.Spec : Prop :=
  ∀ n, P4386844238004221540.a n = (A010985 (n + 32) : ℚ)

end A010985

/-! ## A010985.P11260849646256949061

`∑[A010984(n)]`
-/

namespace A010985.P11260849646256949061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010984 (n + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010985.P11260849646256949061

namespace A010985

/-- `∑[A010984(n)]` -/
def P11260849646256949061.Spec : Prop :=
  ∀ n, P11260849646256949061.a n = A010985 (n + 32)

end A010985

/-! ## A010985.P2462948552784102005

`∑[∑[A010983(n)]]`
-/

namespace A010985.P2462948552784102005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010983 (n + 30)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010985.P2462948552784102005

namespace A010985

/-- `∑[∑[A010983(n)]]` -/
def P2462948552784102005.Spec : Prop :=
  ∀ n, P2462948552784102005.a n = A010985 (n + 32)

end A010985

/-! ## A010985.P12897171676094495693

`∑[∑[∑[A010982(n)]]]`
-/

namespace A010985.P12897171676094495693
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010982 (n + 29)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010985.P12897171676094495693

namespace A010985

/-- `∑[∑[∑[A010982(n)]]]` -/
def P12897171676094495693.Spec : Prop :=
  ∀ n, P12897171676094495693.a n = A010985 (n + 32)

end A010985

/-! ## A010985.P3925243151590741042

`A010986(n+1)-(A010986(n)+A010984(n+1))`
-/

namespace A010985.P3925243151590741042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010986 (n + 1 + 33) - (A010986 (n + 33) + A010984 (n + 1 + 31))

end

end A010985.P3925243151590741042

namespace A010985

/-- `A010986(n+1)-(A010986(n)+A010984(n+1))` -/
def P3925243151590741042.Spec : Prop :=
  ∀ n, P3925243151590741042.a n = A010985 (n + 32)

end A010985

/-! ## A010985.P1559475920974095235

`record[C(n, 2*A170836(n))]`
-/

namespace A010985.P1559475920974095235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 * A170836 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010985.P1559475920974095235

namespace A010985

/-- `record[C(n, 2*A170836(n))]` -/
def P1559475920974095235.Spec : Prop :=
  ∀ n, (P1559475920974095235.a n : ℤ) = A010985 (n + 32)

end A010985

/-! ## A010985.P3922550478601819300

`∑[A007318(A000217(n+31)+31)]`
-/

namespace A010985.P3922550478601819300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 31) + 31).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010985.P3922550478601819300

namespace A010985

/-- `∑[A007318(A000217(n+31)+31)]` -/
def P3922550478601819300.Spec : Prop :=
  ∀ n, P3922550478601819300.a n = A010985 (n + 32)

end A010985

/-!
# A010986: Binomial coefficient C(n,33).

The programs for A010986, the canonical program `A010986.P1736897933841586690` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010986 has offset 33).

The definition of A010986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+33, 33)` (program `A010986.P1736897933841586690`, by `A010986.P1736897933841586690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010986.P1736897933841586690

`C(n+33, 33)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010986

/-- `C(n+33, 33)` -/
def P1736897933841586690.Spec : Prop :=
  ∀ n, (P1736897933841586690.a n : ℤ) = A010986 (n + 33)

theorem P1736897933841586690.correct : P1736897933841586690.Spec := by
  intro n
  simp only [A010986, Nat.add_sub_cancel]

end A010986

/-! ## A010986.P6078879820231081430

`(33/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010986.P6078879820231081430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (33 / (n : ℚ) + 1) * a (n - 1)

end

end A010986.P6078879820231081430

namespace A010986

/-- `(33/n+1)*a(n-1)` -/
def P6078879820231081430.Spec : Prop :=
  ∀ n, P6078879820231081430.a n = (A010986 (n + 33) : ℚ)

end A010986

/-! ## A010986.P12022550213078126277

`∑[A010985(n)]`
-/

namespace A010986.P12022550213078126277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010985 (n + 32)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010986.P12022550213078126277

namespace A010986

/-- `∑[A010985(n)]` -/
def P12022550213078126277.Spec : Prop :=
  ∀ n, P12022550213078126277.a n = A010986 (n + 33)

end A010986

/-! ## A010986.P1991195730978470123

`∑[∑[A010984(n)]]`
-/

namespace A010986.P1991195730978470123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010984 (n + 31)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010986.P1991195730978470123

namespace A010986

/-- `∑[∑[A010984(n)]]` -/
def P1991195730978470123.Spec : Prop :=
  ∀ n, P1991195730978470123.a n = A010986 (n + 33)

end A010986

/-! ## A010986.P9877969032706726315

`∑[∑[∑[A010983(n)]]]`
-/

namespace A010986.P9877969032706726315
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010983 (n + 30)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010986.P9877969032706726315

namespace A010986

/-- `∑[∑[∑[A010983(n)]]]` -/
def P9877969032706726315.Spec : Prop :=
  ∀ n, P9877969032706726315.a n = A010986 (n + 33)

end A010986

/-! ## A010986.P13014870440414001274

`A010987(n+1)-(A010987(n)+A010985(n+1))`
-/

namespace A010986.P13014870440414001274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010987 (n + 1 + 34) - (A010987 (n + 34) + A010985 (n + 1 + 32))

end

end A010986.P13014870440414001274

namespace A010986

/-- `A010987(n+1)-(A010987(n)+A010985(n+1))` -/
def P13014870440414001274.Spec : Prop :=
  ∀ n, P13014870440414001274.a n = A010986 (n + 33)

end A010986

/-! ## A010986.P13296554951554728635

`A193636(A000217(n+12)-12)`
-/

namespace A010986.P13296554951554728635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A000217 (n + 12) - 12).toNat

end

end A010986.P13296554951554728635

namespace A010986

/-- `A193636(A000217(n+12)-12)` -/
def P13296554951554728635.Spec : Prop :=
  ∀ n, P13296554951554728635.a n = A010986 (n + 33)

end A010986

/-! ## A010986.P18401123398284670802

`A007318(A000217(n+33)+n)`
-/

namespace A010986.P18401123398284670802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 33) + (n : ℤ)).toNat

end

end A010986.P18401123398284670802

namespace A010986

/-- `A007318(A000217(n+33)+n)` -/
def P18401123398284670802.Spec : Prop :=
  ∀ n, P18401123398284670802.a n = A010986 (n + 33)

end A010986

/-!
# A010987: Binomial coefficient C(n,34).

The programs for A010987, the canonical program `A010987.P17589126804588901427` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010987 has offset 34).

The definition of A010987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+34, 34)` (program `A010987.P17589126804588901427`, by `A010987.P17589126804588901427.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010987.P17589126804588901427

`C(n+34, 34)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010987

/-- `C(n+34, 34)` -/
def P17589126804588901427.Spec : Prop :=
  ∀ n, (P17589126804588901427.a n : ℤ) = A010987 (n + 34)

theorem P17589126804588901427.correct : P17589126804588901427.Spec := by
  intro n
  simp only [A010987, Nat.add_sub_cancel]

end A010987

/-! ## A010987.P17509008437934788994

`(34/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010987.P17509008437934788994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (34 / (n : ℚ) + 1) * a (n - 1)

end

end A010987.P17509008437934788994

namespace A010987

/-- `(34/n+1)*a(n-1)` -/
def P17509008437934788994.Spec : Prop :=
  ∀ n, P17509008437934788994.a n = (A010987 (n + 34) : ℚ)

end A010987

/-! ## A010987.P17071624095317350957

`∑[A010986(n)]`
-/

namespace A010987.P17071624095317350957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010986 (n + 33)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010987.P17071624095317350957

namespace A010987

/-- `∑[A010986(n)]` -/
def P17071624095317350957.Spec : Prop :=
  ∀ n, P17071624095317350957.a n = A010987 (n + 34)

end A010987

/-! ## A010987.P12480892735616591672

`∑[∑[A010985(n)]]`
-/

namespace A010987.P12480892735616591672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010985 (n + 32)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010987.P12480892735616591672

namespace A010987

/-- `∑[∑[A010985(n)]]` -/
def P12480892735616591672.Spec : Prop :=
  ∀ n, P12480892735616591672.a n = A010987 (n + 34)

end A010987

/-! ## A010987.P14791250452026439982

`∑[∑[∑[A010984(n)]]]`
-/

namespace A010987.P14791250452026439982
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010984 (n + 31)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010987.P14791250452026439982

namespace A010987

/-- `∑[∑[∑[A010984(n)]]]` -/
def P14791250452026439982.Spec : Prop :=
  ∀ n, P14791250452026439982.a n = A010987 (n + 34)

end A010987

/-! ## A010987.P1300561718388621697

`A010988(n+1)-(A010988(n)+A010986(n+1))`
-/

namespace A010987.P1300561718388621697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010988 (n + 1 + 35) - (A010988 (n + 35) + A010986 (n + 1 + 33))

end

end A010987.P1300561718388621697

namespace A010987

/-- `A010988(n+1)-(A010988(n)+A010986(n+1))` -/
def P1300561718388621697.Spec : Prop :=
  ∀ n, P1300561718388621697.a n = A010987 (n + 34)

end A010987

/-! ## A010987.P15996135016602325102

`A007318(A000217(n+34)+34)`
-/

namespace A010987.P15996135016602325102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 34) + 34).toNat

end

end A010987.P15996135016602325102

namespace A010987

/-- `A007318(A000217(n+34)+34)` -/
def P15996135016602325102.Spec : Prop :=
  ∀ n, P15996135016602325102.a n = A010987 (n + 34)

end A010987

/-!
# A010988: Binomial coefficient C(n,35).

The programs for A010988, the canonical program `A010988.P2750479217050629914` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010988 has offset 35).

The definition of A010988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+35, 35)` (program `A010988.P2750479217050629914`, by `A010988.P2750479217050629914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010988.P2750479217050629914

`C(n+35, 35)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010988

/-- `C(n+35, 35)` -/
def P2750479217050629914.Spec : Prop :=
  ∀ n, (P2750479217050629914.a n : ℤ) = A010988 (n + 35)

theorem P2750479217050629914.correct : P2750479217050629914.Spec := by
  intro n
  simp only [A010988, Nat.add_sub_cancel]

end A010988

/-! ## A010988.P16602953760839029160

`(35/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010988.P16602953760839029160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (35 / (n : ℚ) + 1) * a (n - 1)

end

end A010988.P16602953760839029160

namespace A010988

/-- `(35/n+1)*a(n-1)` -/
def P16602953760839029160.Spec : Prop :=
  ∀ n, P16602953760839029160.a n = (A010988 (n + 35) : ℚ)

end A010988

/-! ## A010988.P5475580922479550818

`∑[A010987(n)]`
-/

namespace A010988.P5475580922479550818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010987 (n + 34)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010988.P5475580922479550818

namespace A010988

/-- `∑[A010987(n)]` -/
def P5475580922479550818.Spec : Prop :=
  ∀ n, P5475580922479550818.a n = A010988 (n + 35)

end A010988

/-! ## A010988.P17672887978993384964

`∑[∑[A010986(n)]]`
-/

namespace A010988.P17672887978993384964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010986 (n + 33)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010988.P17672887978993384964

namespace A010988

/-- `∑[∑[A010986(n)]]` -/
def P17672887978993384964.Spec : Prop :=
  ∀ n, P17672887978993384964.a n = A010988 (n + 35)

end A010988

/-! ## A010988.P15872732356648058802

`∑[∑[∑[A010985(n)]]]`
-/

namespace A010988.P15872732356648058802
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010985 (n + 32)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010988.P15872732356648058802

namespace A010988

/-- `∑[∑[∑[A010985(n)]]]` -/
def P15872732356648058802.Spec : Prop :=
  ∀ n, P15872732356648058802.a n = A010988 (n + 35)

end A010988

/-! ## A010988.P12155667713530506800

`Δ[A010989(n)]-A010987(n+1)`
-/

namespace A010988.P12155667713530506800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010989 (n + 36)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010987 (n + 1 + 34)

end

end A010988.P12155667713530506800

namespace A010988

/-- `Δ[A010989(n)]-A010987(n+1)` -/
def P12155667713530506800.Spec : Prop :=
  ∀ n, P12155667713530506800.a n = A010988 (n + 35)

end A010988

/-! ## A010988.P18302776909758742980

`Δ[A010989(n)-A010987(n)]-A010987(n)`
-/

namespace A010988.P18302776909758742980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010989 (n + 36) - A010987 (n + 34)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010987 (n + 34)

end

end A010988.P18302776909758742980

namespace A010988

/-- `Δ[A010989(n)-A010987(n)]-A010987(n)` -/
def P18302776909758742980.Spec : Prop :=
  ∀ n, P18302776909758742980.a n = A010988 (n + 35)

end A010988

/-! ## A010988.P10378094614028564015

`A010989(n+1)-(A010989(n)+A010987(n+1))`
-/

namespace A010988.P10378094614028564015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010989 (n + 1 + 36) - (A010989 (n + 36) + A010987 (n + 1 + 34))

end

end A010988.P10378094614028564015

namespace A010988

/-- `A010989(n+1)-(A010989(n)+A010987(n+1))` -/
def P10378094614028564015.Spec : Prop :=
  ∀ n, P10378094614028564015.a n = A010988 (n + 35)

end A010988

/-! ## A010988.P17256601588563606307

`A007318(A000217(n+35)+35)`
-/

namespace A010988.P17256601588563606307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 35) + 35).toNat

end

end A010988.P17256601588563606307

namespace A010988

/-- `A007318(A000217(n+35)+35)` -/
def P17256601588563606307.Spec : Prop :=
  ∀ n, P17256601588563606307.a n = A010988 (n + 35)

end A010988

/-!
# A010989: Binomial coefficient C(n,36).

The programs for A010989, the canonical program `A010989.P18420297821966193297` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010989 has offset 36).

The definition of A010989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+36, 36)` (program `A010989.P18420297821966193297`, by `A010989.P18420297821966193297.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010989.P18420297821966193297

`C(n+36, 36)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010989

/-- `C(n+36, 36)` -/
def P18420297821966193297.Spec : Prop :=
  ∀ n, (P18420297821966193297.a n : ℤ) = A010989 (n + 36)

theorem P18420297821966193297.correct : P18420297821966193297.Spec := by
  intro n
  simp only [A010989, Nat.add_sub_cancel]

end A010989

/-! ## A010989.P10725957952016995999

`(36/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010989.P10725957952016995999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (36 / (n : ℚ) + 1) * a (n - 1)

end

end A010989.P10725957952016995999

namespace A010989

/-- `(36/n+1)*a(n-1)` -/
def P10725957952016995999.Spec : Prop :=
  ∀ n, P10725957952016995999.a n = (A010989 (n + 36) : ℚ)

end A010989

/-! ## A010989.P17626963682699689199

`∑[A010988(n)]`
-/

namespace A010989.P17626963682699689199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010988 (n + 35)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010989.P17626963682699689199

namespace A010989

/-- `∑[A010988(n)]` -/
def P17626963682699689199.Spec : Prop :=
  ∀ n, P17626963682699689199.a n = A010989 (n + 36)

end A010989

/-! ## A010989.P2919743874798168925

`∑[∑[A010987(n)]]`
-/

namespace A010989.P2919743874798168925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010987 (n + 34)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010989.P2919743874798168925

namespace A010989

/-- `∑[∑[A010987(n)]]` -/
def P2919743874798168925.Spec : Prop :=
  ∀ n, P2919743874798168925.a n = A010989 (n + 36)

end A010989

/-! ## A010989.P7294287216195670658

`∑[∑[∑[A010986(n)]]]`
-/

namespace A010989.P7294287216195670658
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010986 (n + 33)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010989.P7294287216195670658

namespace A010989

/-- `∑[∑[∑[A010986(n)]]]` -/
def P7294287216195670658.Spec : Prop :=
  ∀ n, P7294287216195670658.a n = A010989 (n + 36)

end A010989

/-! ## A010989.P4802514929091147345

`A010990(n+1)-(A010990(n)+A010988(n+1))`
-/

namespace A010989.P4802514929091147345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010990 (n + 1 + 37) - (A010990 (n + 37) + A010988 (n + 1 + 35))

end

end A010989.P4802514929091147345

namespace A010989

/-- `A010990(n+1)-(A010990(n)+A010988(n+1))` -/
def P4802514929091147345.Spec : Prop :=
  ∀ n, P4802514929091147345.a n = A010989 (n + 36)

end A010989

/-! ## A010989.P14513572994859526531

`A007318(Δ[A000292(n+36)]-(n+1))`
-/

namespace A010989.P14513572994859526531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 36)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n - (n + 1 : ℤ)).toNat

end

end A010989.P14513572994859526531

namespace A010989

/-- `A007318(Δ[A000292(n+36)]-(n+1))` -/
def P14513572994859526531.Spec : Prop :=
  ∀ n, P14513572994859526531.a n = A010989 (n + 36)

end A010989

/-!
# A010990: Binomial coefficient C(n,37).

The programs for A010990, the canonical program `A010990.P11235886402597003871` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010990 has offset 37).

The definition of A010990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+37, 37)` (program `A010990.P11235886402597003871`, by `A010990.P11235886402597003871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010990.P11235886402597003871

`C(n+37, 37)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010990

/-- `C(n+37, 37)` -/
def P11235886402597003871.Spec : Prop :=
  ∀ n, (P11235886402597003871.a n : ℤ) = A010990 (n + 37)

theorem P11235886402597003871.correct : P11235886402597003871.Spec := by
  intro n
  simp only [A010990, Nat.add_sub_cancel]

end A010990

/-! ## A010990.P9135869690348826819

`(37/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010990.P9135869690348826819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (37 / (n : ℚ) + 1) * a (n - 1)

end

end A010990.P9135869690348826819

namespace A010990

/-- `(37/n+1)*a(n-1)` -/
def P9135869690348826819.Spec : Prop :=
  ∀ n, P9135869690348826819.a n = (A010990 (n + 37) : ℚ)

end A010990

/-! ## A010990.P17304077008684416413

`∑[A010989(n)]`
-/

namespace A010990.P17304077008684416413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010989 (n + 36)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010990.P17304077008684416413

namespace A010990

/-- `∑[A010989(n)]` -/
def P17304077008684416413.Spec : Prop :=
  ∀ n, P17304077008684416413.a n = A010990 (n + 37)

end A010990

/-! ## A010990.P14894429446712942908

`∑[∑[A010988(n)]]`
-/

namespace A010990.P14894429446712942908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010988 (n + 35)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010990.P14894429446712942908

namespace A010990

/-- `∑[∑[A010988(n)]]` -/
def P14894429446712942908.Spec : Prop :=
  ∀ n, P14894429446712942908.a n = A010990 (n + 37)

end A010990

/-! ## A010990.P2118265437040173033

`∑[∑[∑[A010987(n)]]]`
-/

namespace A010990.P2118265437040173033
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010987 (n + 34)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010990.P2118265437040173033

namespace A010990

/-- `∑[∑[∑[A010987(n)]]]` -/
def P2118265437040173033.Spec : Prop :=
  ∀ n, P2118265437040173033.a n = A010990 (n + 37)

end A010990

/-! ## A010990.P5507630418257610703

`A010991(n+1)-(A010991(n)+A010989(n+1))`
-/

namespace A010990.P5507630418257610703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010991 (n + 1 + 38) - (A010991 (n + 38) + A010989 (n + 1 + 36))

end

end A010990.P5507630418257610703

namespace A010990

/-- `A010991(n+1)-(A010991(n)+A010989(n+1))` -/
def P5507630418257610703.Spec : Prop :=
  ∀ n, P5507630418257610703.a n = A010990 (n + 37)

end A010990

/-! ## A010990.P5965926188201275189

`A007318(Δ[A000292(n+36)]+n)`
-/

namespace A010990.P5965926188201275189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 36)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A010990.P5965926188201275189

namespace A010990

/-- `A007318(Δ[A000292(n+36)]+n)` -/
def P5965926188201275189.Spec : Prop :=
  ∀ n, P5965926188201275189.a n = A010990 (n + 37)

end A010990

/-!
# A010991: Binomial coefficient C(n,38).

The programs for A010991, the canonical program `A010991.P3754655415616518392` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010991 has offset 38).

The definition of A010991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+38, 38)` (program `A010991.P3754655415616518392`, by `A010991.P3754655415616518392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010991.P3754655415616518392

`C(n+38, 38)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010991

/-- `C(n+38, 38)` -/
def P3754655415616518392.Spec : Prop :=
  ∀ n, (P3754655415616518392.a n : ℤ) = A010991 (n + 38)

theorem P3754655415616518392.correct : P3754655415616518392.Spec := by
  intro n
  simp only [A010991, Nat.add_sub_cancel]

end A010991

/-! ## A010991.P12624364205751818203

`(38/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010991.P12624364205751818203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (38 / (n : ℚ) + 1) * a (n - 1)

end

end A010991.P12624364205751818203

namespace A010991

/-- `(38/n+1)*a(n-1)` -/
def P12624364205751818203.Spec : Prop :=
  ∀ n, P12624364205751818203.a n = (A010991 (n + 38) : ℚ)

end A010991

/-! ## A010991.P8119574528369584596

`∑[A010990(n)]`
-/

namespace A010991.P8119574528369584596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010990 (n + 37)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010991.P8119574528369584596

namespace A010991

/-- `∑[A010990(n)]` -/
def P8119574528369584596.Spec : Prop :=
  ∀ n, P8119574528369584596.a n = A010991 (n + 38)

end A010991

/-! ## A010991.P4966066226526102443

`∑[∑[A010989(n)]]`
-/

namespace A010991.P4966066226526102443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010989 (n + 36)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010991.P4966066226526102443

namespace A010991

/-- `∑[∑[A010989(n)]]` -/
def P4966066226526102443.Spec : Prop :=
  ∀ n, P4966066226526102443.a n = A010991 (n + 38)

end A010991

/-! ## A010991.P11254171655804022822

`∑[∑[∑[A010988(n)]]]`
-/

namespace A010991.P11254171655804022822
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010988 (n + 35)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010991.P11254171655804022822

namespace A010991

/-- `∑[∑[∑[A010988(n)]]]` -/
def P11254171655804022822.Spec : Prop :=
  ∀ n, P11254171655804022822.a n = A010991 (n + 38)

end A010991

/-! ## A010991.P8629366123679965725

`Δ[A010992(n)]-A010990(n+1)`
-/

namespace A010991.P8629366123679965725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010992 (n + 39)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010990 (n + 1 + 37)

end

end A010991.P8629366123679965725

namespace A010991

/-- `Δ[A010992(n)]-A010990(n+1)` -/
def P8629366123679965725.Spec : Prop :=
  ∀ n, P8629366123679965725.a n = A010991 (n + 38)

end A010991

/-! ## A010991.P16965153151111730906

`Δ[A010992(n)-A010990(n)]-A010990(n)`
-/

namespace A010991.P16965153151111730906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010992 (n + 39) - A010990 (n + 37)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010990 (n + 37)

end

end A010991.P16965153151111730906

namespace A010991

/-- `Δ[A010992(n)-A010990(n)]-A010990(n)` -/
def P16965153151111730906.Spec : Prop :=
  ∀ n, P16965153151111730906.a n = A010991 (n + 38)

end A010991

/-! ## A010991.P5802040895567231334

`A010992(n+1)-(A010992(n)+A010990(n+1))`
-/

namespace A010991.P5802040895567231334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010992 (n + 1 + 39) - (A010992 (n + 39) + A010990 (n + 1 + 37))

end

end A010991.P5802040895567231334

namespace A010991

/-- `A010992(n+1)-(A010992(n)+A010990(n+1))` -/
def P5802040895567231334.Spec : Prop :=
  ∀ n, P5802040895567231334.a n = A010991 (n + 38)

end A010991

/-! ## A010991.P17287569509365418709

`A127893(A055998(n+12)-A004277(n+6))`
-/

namespace A010991.P17287569509365418709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127893 (A055998 (n + 12) - A004277 (n + 6)).toNat

end

end A010991.P17287569509365418709

namespace A010991

/-- `A127893(A055998(n+12)-A004277(n+6))` -/
def P17287569509365418709.Spec : Prop :=
  ∀ n, P17287569509365418709.a n = A010991 (n + 38)

end A010991

/-!
# A010992: Binomial coefficient C(n,39).

The programs for A010992, the canonical program `A010992.P10981612207949597645` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010992 has offset 39).

The definition of A010992 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+39, 39)` (program `A010992.P10981612207949597645`, by `A010992.P10981612207949597645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010992.P10981612207949597645

`C(n+39, 39)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010992

/-- `C(n+39, 39)` -/
def P10981612207949597645.Spec : Prop :=
  ∀ n, (P10981612207949597645.a n : ℤ) = A010992 (n + 39)

theorem P10981612207949597645.correct : P10981612207949597645.Spec := by
  intro n
  simp only [A010992, Nat.add_sub_cancel]

end A010992

/-! ## A010992.P6674970693651699294

`(39/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010992.P6674970693651699294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (39 / (n : ℚ) + 1) * a (n - 1)

end

end A010992.P6674970693651699294

namespace A010992

/-- `(39/n+1)*a(n-1)` -/
def P6674970693651699294.Spec : Prop :=
  ∀ n, P6674970693651699294.a n = (A010992 (n + 39) : ℚ)

end A010992

/-! ## A010992.P13125257527859976178

`∑[A010991(n)]`
-/

namespace A010992.P13125257527859976178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010991 (n + 38)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010992.P13125257527859976178

namespace A010992

/-- `∑[A010991(n)]` -/
def P13125257527859976178.Spec : Prop :=
  ∀ n, P13125257527859976178.a n = A010992 (n + 39)

end A010992

/-! ## A010992.P7278696747526895674

`∑[∑[A010990(n)]]`
-/

namespace A010992.P7278696747526895674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010990 (n + 37)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010992.P7278696747526895674

namespace A010992

/-- `∑[∑[A010990(n)]]` -/
def P7278696747526895674.Spec : Prop :=
  ∀ n, P7278696747526895674.a n = A010992 (n + 39)

end A010992

/-! ## A010992.P6484415853697556866

`∑[∑[∑[A010989(n)]]]`
-/

namespace A010992.P6484415853697556866
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010989 (n + 36)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010992.P6484415853697556866

namespace A010992

/-- `∑[∑[∑[A010989(n)]]]` -/
def P6484415853697556866.Spec : Prop :=
  ∀ n, P6484415853697556866.a n = A010992 (n + 39)

end A010992

/-!
# A010993: Binomial coefficient C(n,40).

The programs for A010993, the canonical program `A010993.P9211352264139132420` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010993 has offset 40).

The definition of A010993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+40, 40)` (program `A010993.P9211352264139132420`, by `A010993.P9211352264139132420.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010993.P9211352264139132420

`C(n+40, 40)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010993

/-- `C(n+40, 40)` -/
def P9211352264139132420.Spec : Prop :=
  ∀ n, (P9211352264139132420.a n : ℤ) = A010993 (n + 40)

theorem P9211352264139132420.correct : P9211352264139132420.Spec := by
  intro n
  simp only [A010993, Nat.add_sub_cancel]

end A010993

/-! ## A010993.P16782406275381764433

`(40/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010993.P16782406275381764433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (40 / (n : ℚ) + 1) * a (n - 1)

end

end A010993.P16782406275381764433

namespace A010993

/-- `(40/n+1)*a(n-1)` -/
def P16782406275381764433.Spec : Prop :=
  ∀ n, P16782406275381764433.a n = (A010993 (n + 40) : ℚ)

end A010993

/-! ## A010993.P9349430955877140738

`∑[A010992(n)]`
-/

namespace A010993.P9349430955877140738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010992 (n + 39)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010993.P9349430955877140738

namespace A010993

/-- `∑[A010992(n)]` -/
def P9349430955877140738.Spec : Prop :=
  ∀ n, P9349430955877140738.a n = A010993 (n + 40)

end A010993

/-! ## A010993.P4958264235044111851

`∑[∑[A010991(n)]]`
-/

namespace A010993.P4958264235044111851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010991 (n + 38)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010993.P4958264235044111851

namespace A010993

/-- `∑[∑[A010991(n)]]` -/
def P4958264235044111851.Spec : Prop :=
  ∀ n, P4958264235044111851.a n = A010993 (n + 40)

end A010993

/-! ## A010993.P12997437715931217770

`∑[∑[∑[A010990(n)]]]`
-/

namespace A010993.P12997437715931217770
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010990 (n + 37)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010993.P12997437715931217770

namespace A010993

/-- `∑[∑[∑[A010990(n)]]]` -/
def P12997437715931217770.Spec : Prop :=
  ∀ n, P12997437715931217770.a n = A010993 (n + 40)

end A010993

/-! ## A010993.P5631852138055650203

`A010994(n+1)-(A010994(n)+A010992(n+1))`
-/

namespace A010993.P5631852138055650203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010994 (n + 1 + 41) - (A010994 (n + 41) + A010992 (n + 1 + 39))

end

end A010993.P5631852138055650203

namespace A010993

/-- `A010994(n+1)-(A010994(n)+A010992(n+1))` -/
def P5631852138055650203.Spec : Prop :=
  ∀ n, P5631852138055650203.a n = A010993 (n + 40)

end A010993

/-!
# A010994: a(n) = binomial coefficient C(n,41).

The programs for A010994, the canonical program `A010994.P12640411504753133865` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010994 has offset 41).

The definition of A010994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+41, 41)` (program `A010994.P12640411504753133865`, by `A010994.P12640411504753133865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010994.P12640411504753133865

`C(n+41, 41)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010994

/-- `C(n+41, 41)` -/
def P12640411504753133865.Spec : Prop :=
  ∀ n, (P12640411504753133865.a n : ℤ) = A010994 (n + 41)

theorem P12640411504753133865.correct : P12640411504753133865.Spec := by
  intro n
  simp only [A010994, Nat.add_sub_cancel]

end A010994

/-! ## A010994.P7854902965107914747

`(41/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010994.P7854902965107914747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (41 / (n : ℚ) + 1) * a (n - 1)

end

end A010994.P7854902965107914747

namespace A010994

/-- `(41/n+1)*a(n-1)` -/
def P7854902965107914747.Spec : Prop :=
  ∀ n, P7854902965107914747.a n = (A010994 (n + 41) : ℚ)

end A010994

/-! ## A010994.P7395743998519894559

`∑[A010993(n)]`
-/

namespace A010994.P7395743998519894559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010993 (n + 40)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010994.P7395743998519894559

namespace A010994

/-- `∑[A010993(n)]` -/
def P7395743998519894559.Spec : Prop :=
  ∀ n, P7395743998519894559.a n = A010994 (n + 41)

end A010994

/-! ## A010994.P5312655777687201088

`∑[∑[A010992(n)]]`
-/

namespace A010994.P5312655777687201088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010992 (n + 39)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010994.P5312655777687201088

namespace A010994

/-- `∑[∑[A010992(n)]]` -/
def P5312655777687201088.Spec : Prop :=
  ∀ n, P5312655777687201088.a n = A010994 (n + 41)

end A010994

/-! ## A010994.P5407432987498061308

`∑[∑[∑[A010991(n)]]]`
-/

namespace A010994.P5407432987498061308
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010991 (n + 38)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010994.P5407432987498061308

namespace A010994

/-- `∑[∑[∑[A010991(n)]]]` -/
def P5407432987498061308.Spec : Prop :=
  ∀ n, P5407432987498061308.a n = A010994 (n + 41)

end A010994

/-!
# A010995: Binomial coefficient C(n,42).

The programs for A010995, the canonical program `A010995.P17503103080668808678` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010995 has offset 42).

The definition of A010995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+42, 42)` (program `A010995.P17503103080668808678`, by `A010995.P17503103080668808678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010995.P17503103080668808678

`C(n+42, 42)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010995

/-- `C(n+42, 42)` -/
def P17503103080668808678.Spec : Prop :=
  ∀ n, (P17503103080668808678.a n : ℤ) = A010995 (n + 42)

theorem P17503103080668808678.correct : P17503103080668808678.Spec := by
  intro n
  simp only [A010995, Nat.add_sub_cancel]

end A010995

/-! ## A010995.P14144809158857468075

`(42/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010995.P14144809158857468075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (42 / (n : ℚ) + 1) * a (n - 1)

end

end A010995.P14144809158857468075

namespace A010995

/-- `(42/n+1)*a(n-1)` -/
def P14144809158857468075.Spec : Prop :=
  ∀ n, P14144809158857468075.a n = (A010995 (n + 42) : ℚ)

end A010995

/-! ## A010995.P9596412038744605423

`∑[A010994(n)]`
-/

namespace A010995.P9596412038744605423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010994 (n + 41)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010995.P9596412038744605423

namespace A010995

/-- `∑[A010994(n)]` -/
def P9596412038744605423.Spec : Prop :=
  ∀ n, P9596412038744605423.a n = A010995 (n + 42)

end A010995

/-! ## A010995.P6657967331313598204

`∑[∑[A010993(n)]]`
-/

namespace A010995.P6657967331313598204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010993 (n + 40)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010995.P6657967331313598204

namespace A010995

/-- `∑[∑[A010993(n)]]` -/
def P6657967331313598204.Spec : Prop :=
  ∀ n, P6657967331313598204.a n = A010995 (n + 42)

end A010995

/-! ## A010995.P9640379058887148074

`∑[∑[∑[A010992(n)]]]`
-/

namespace A010995.P9640379058887148074
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010992 (n + 39)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010995.P9640379058887148074

namespace A010995

/-- `∑[∑[∑[A010992(n)]]]` -/
def P9640379058887148074.Spec : Prop :=
  ∀ n, P9640379058887148074.a n = A010995 (n + 42)

end A010995

/-! ## A010995.P8820606907446569560

`A010996(n+1)-(A010996(n)+A010994(n+1))`
-/

namespace A010995.P8820606907446569560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010996 (n + 1 + 43) - (A010996 (n + 43) + A010994 (n + 1 + 41))

end

end A010995.P8820606907446569560

namespace A010995

/-- `A010996(n+1)-(A010996(n)+A010994(n+1))` -/
def P8820606907446569560.Spec : Prop :=
  ∀ n, P8820606907446569560.a n = A010995 (n + 42)

end A010995

/-!
# A010996: Binomial coefficient C(n,43).

The programs for A010996, the canonical program `A010996.P6772677383108348559` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010996 has offset 43).

The definition of A010996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+43, 43)` (program `A010996.P6772677383108348559`, by `A010996.P6772677383108348559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010996.P6772677383108348559

`C(n+43, 43)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010996

/-- `C(n+43, 43)` -/
def P6772677383108348559.Spec : Prop :=
  ∀ n, (P6772677383108348559.a n : ℤ) = A010996 (n + 43)

theorem P6772677383108348559.correct : P6772677383108348559.Spec := by
  intro n
  simp only [A010996, Nat.add_sub_cancel]

end A010996

/-! ## A010996.P2290855588376014895

`(43/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010996.P2290855588376014895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (43 / (n : ℚ) + 1) * a (n - 1)

end

end A010996.P2290855588376014895

namespace A010996

/-- `(43/n+1)*a(n-1)` -/
def P2290855588376014895.Spec : Prop :=
  ∀ n, P2290855588376014895.a n = (A010996 (n + 43) : ℚ)

end A010996

/-! ## A010996.P13804346916523162447

`∑[A010995(n)]`
-/

namespace A010996.P13804346916523162447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010995 (n + 42)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010996.P13804346916523162447

namespace A010996

/-- `∑[A010995(n)]` -/
def P13804346916523162447.Spec : Prop :=
  ∀ n, P13804346916523162447.a n = A010996 (n + 43)

end A010996

/-! ## A010996.P14536155470092885831

`∑[∑[A010994(n)]]`
-/

namespace A010996.P14536155470092885831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010994 (n + 41)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010996.P14536155470092885831

namespace A010996

/-- `∑[∑[A010994(n)]]` -/
def P14536155470092885831.Spec : Prop :=
  ∀ n, P14536155470092885831.a n = A010996 (n + 43)

end A010996

/-! ## A010996.P6867607770741109800

`∑[∑[∑[A010993(n)]]]`
-/

namespace A010996.P6867607770741109800
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010993 (n + 40)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010996.P6867607770741109800

namespace A010996

/-- `∑[∑[∑[A010993(n)]]]` -/
def P6867607770741109800.Spec : Prop :=
  ∀ n, P6867607770741109800.a n = A010996 (n + 43)

end A010996

/-! ## A010996.P11180335365047888553

`A010997(n+1)-(A010997(n)+A010995(n+1))`
-/

namespace A010996.P11180335365047888553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010997 (n + 1 + 44) - (A010997 (n + 44) + A010995 (n + 1 + 42))

end

end A010996.P11180335365047888553

namespace A010996

/-- `A010997(n+1)-(A010997(n)+A010995(n+1))` -/
def P11180335365047888553.Spec : Prop :=
  ∀ n, P11180335365047888553.a n = A010996 (n + 43)

end A010996

/-!
# A010997: a(n) = binomial coefficient C(n,44).

The programs for A010997, the canonical program `A010997.P13332682788311633725` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010997 has offset 44).

The definition of A010997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+44, 44)` (program `A010997.P13332682788311633725`, by `A010997.P13332682788311633725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010997.P13332682788311633725

`C(n+44, 44)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010997

/-- `C(n+44, 44)` -/
def P13332682788311633725.Spec : Prop :=
  ∀ n, (P13332682788311633725.a n : ℤ) = A010997 (n + 44)

theorem P13332682788311633725.correct : P13332682788311633725.Spec := by
  intro n
  simp only [A010997, Nat.add_sub_cancel]

end A010997

/-! ## A010997.P3737332420104258955

`(44/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010997.P3737332420104258955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (44 / (n : ℚ) + 1) * a (n - 1)

end

end A010997.P3737332420104258955

namespace A010997

/-- `(44/n+1)*a(n-1)` -/
def P3737332420104258955.Spec : Prop :=
  ∀ n, P3737332420104258955.a n = (A010997 (n + 44) : ℚ)

end A010997

/-! ## A010997.P5513141313479370240

`∑[A010996(n)]`
-/

namespace A010997.P5513141313479370240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010996 (n + 43)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010997.P5513141313479370240

namespace A010997

/-- `∑[A010996(n)]` -/
def P5513141313479370240.Spec : Prop :=
  ∀ n, P5513141313479370240.a n = A010997 (n + 44)

end A010997

/-! ## A010997.P125250556865884116

`∑[∑[A010995(n)]]`
-/

namespace A010997.P125250556865884116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010995 (n + 42)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010997.P125250556865884116

namespace A010997

/-- `∑[∑[A010995(n)]]` -/
def P125250556865884116.Spec : Prop :=
  ∀ n, P125250556865884116.a n = A010997 (n + 44)

end A010997

/-! ## A010997.P13298889415290893178

`∑[∑[∑[A010994(n)]]]`
-/

namespace A010997.P13298889415290893178
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010994 (n + 41)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010997.P13298889415290893178

namespace A010997

/-- `∑[∑[∑[A010994(n)]]]` -/
def P13298889415290893178.Spec : Prop :=
  ∀ n, P13298889415290893178.a n = A010997 (n + 44)

end A010997

/-! ## A010997.P8585715957590100916

`A010998(n+1)-(A010998(n)+A010996(n+1))`
-/

namespace A010997.P8585715957590100916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010998 (n + 1 + 45) - (A010998 (n + 45) + A010996 (n + 1 + 43))

end

end A010997.P8585715957590100916

namespace A010997

/-- `A010998(n+1)-(A010998(n)+A010996(n+1))` -/
def P8585715957590100916.Spec : Prop :=
  ∀ n, P8585715957590100916.a n = A010997 (n + 44)

end A010997

/-!
# A010998: a(n) = binomial coefficient C(n,45).

The programs for A010998, the canonical program `A010998.P12852905030502753028` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010998 has offset 45).

The definition of A010998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+45, 45)` (program `A010998.P12852905030502753028`, by `A010998.P12852905030502753028.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010998.P12852905030502753028

`C(n+45, 45)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010998

/-- `C(n+45, 45)` -/
def P12852905030502753028.Spec : Prop :=
  ∀ n, (P12852905030502753028.a n : ℤ) = A010998 (n + 45)

theorem P12852905030502753028.correct : P12852905030502753028.Spec := by
  intro n
  simp only [A010998, Nat.add_sub_cancel]

end A010998

/-! ## A010998.P8301224739742148897

`(45/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010998.P8301224739742148897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (45 / (n : ℚ) + 1) * a (n - 1)

end

end A010998.P8301224739742148897

namespace A010998

/-- `(45/n+1)*a(n-1)` -/
def P8301224739742148897.Spec : Prop :=
  ∀ n, P8301224739742148897.a n = (A010998 (n + 45) : ℚ)

end A010998

/-! ## A010998.P15070339935081105701

`∑[A010997(n)]`
-/

namespace A010998.P15070339935081105701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010997 (n + 44)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010998.P15070339935081105701

namespace A010998

/-- `∑[A010997(n)]` -/
def P15070339935081105701.Spec : Prop :=
  ∀ n, P15070339935081105701.a n = A010998 (n + 45)

end A010998

/-! ## A010998.P2208948320837815710

`∑[∑[A010996(n)]]`
-/

namespace A010998.P2208948320837815710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010996 (n + 43)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010998.P2208948320837815710

namespace A010998

/-- `∑[∑[A010996(n)]]` -/
def P2208948320837815710.Spec : Prop :=
  ∀ n, P2208948320837815710.a n = A010998 (n + 45)

end A010998

/-! ## A010998.P10649202057117755374

`∑[∑[∑[A010995(n)]]]`
-/

namespace A010998.P10649202057117755374
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010995 (n + 42)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010998.P10649202057117755374

namespace A010998

/-- `∑[∑[∑[A010995(n)]]]` -/
def P10649202057117755374.Spec : Prop :=
  ∀ n, P10649202057117755374.a n = A010998 (n + 45)

end A010998

/-! ## A010998.P10256370158540293217

`A010999(n+1)-(A010999(n)+A010997(n+1))`
-/

namespace A010998.P10256370158540293217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010999 (n + 1 + 46) - (A010999 (n + 46) + A010997 (n + 1 + 44))

end

end A010998.P10256370158540293217

namespace A010998

/-- `A010999(n+1)-(A010999(n)+A010997(n+1))` -/
def P10256370158540293217.Spec : Prop :=
  ∀ n, P10256370158540293217.a n = A010998 (n + 45)

end A010998

/-! ## A010998.P14716456111864516744

`A193636(A000217(n+15)+n)`
-/

namespace A010998.P14716456111864516744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A000217 (n + 15) + (n : ℤ)).toNat

end

end A010998.P14716456111864516744

namespace A010998

/-- `A193636(A000217(n+15)+n)` -/
def P14716456111864516744.Spec : Prop :=
  ∀ n, P14716456111864516744.a n = A010998 (n + 45)

end A010998

/-! ## A010998.P11557515755460195369

`A193636(A167499(n+9)+A008458(n+10))`
-/

namespace A010998.P11557515755460195369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A167499 (n + 9) + A008458 (n + 10)).toNat

end

end A010998.P11557515755460195369

namespace A010998

/-- `A193636(A167499(n+9)+A008458(n+10))` -/
def P11557515755460195369.Spec : Prop :=
  ∀ n, P11557515755460195369.a n = A010998 (n + 45)

end A010998

/-!
# A010999: a(n) = binomial coefficient C(n,46).

The programs for A010999, the canonical program `A010999.P8994891719768339841` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010999 has offset 46).

The definition of A010999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+46, 46)` (program `A010999.P8994891719768339841`, by `A010999.P8994891719768339841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010999.P8994891719768339841

`C(n+46, 46)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010999

/-- `C(n+46, 46)` -/
def P8994891719768339841.Spec : Prop :=
  ∀ n, (P8994891719768339841.a n : ℤ) = A010999 (n + 46)

theorem P8994891719768339841.correct : P8994891719768339841.Spec := by
  intro n
  simp only [A010999, Nat.add_sub_cancel]

end A010999

/-! ## A010999.P8184373748707317429

`(46/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010999.P8184373748707317429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (46 / (n : ℚ) + 1) * a (n - 1)

end

end A010999.P8184373748707317429

namespace A010999

/-- `(46/n+1)*a(n-1)` -/
def P8184373748707317429.Spec : Prop :=
  ∀ n, P8184373748707317429.a n = (A010999 (n + 46) : ℚ)

end A010999

/-! ## A010999.P16458769012881185746

`∑[A010998(n)]`
-/

namespace A010999.P16458769012881185746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010998 (n + 45)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010999.P16458769012881185746

namespace A010999

/-- `∑[A010998(n)]` -/
def P16458769012881185746.Spec : Prop :=
  ∀ n, P16458769012881185746.a n = A010999 (n + 46)

end A010999

/-! ## A010999.P2319714501825155762

`∑[∑[A010997(n)]]`
-/

namespace A010999.P2319714501825155762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010997 (n + 44)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010999.P2319714501825155762

namespace A010999

/-- `∑[∑[A010997(n)]]` -/
def P2319714501825155762.Spec : Prop :=
  ∀ n, P2319714501825155762.a n = A010999 (n + 46)

end A010999

/-! ## A010999.P6333993362289117534

`∑[∑[∑[A010996(n)]]]`
-/

namespace A010999.P6333993362289117534
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010996 (n + 43)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010999.P6333993362289117534

namespace A010999

/-- `∑[∑[∑[A010996(n)]]]` -/
def P6333993362289117534.Spec : Prop :=
  ∀ n, P6333993362289117534.a n = A010999 (n + 46)

end A010999

/-! ## A010999.P13307055614209541873

`A011000(n+1)-(A011000(n)+A010998(n+1))`
-/

namespace A010999.P13307055614209541873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011000 (n + 1 + 47) - (A011000 (n + 47) + A010998 (n + 1 + 45))

end

end A010999.P13307055614209541873

namespace A010999

/-- `A011000(n+1)-(A011000(n)+A010998(n+1))` -/
def P13307055614209541873.Spec : Prop :=
  ∀ n, P13307055614209541873.a n = A010999 (n + 46)

end A010999

