import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A045500: Fifth-from-right diagonal of triangle A121207.

The programs for A045500, there is no canonical definition to state claims against.
-/

/-! ## A045500.P4732563127982713154

`A121207(A052905(n+2))`
-/

namespace A045500.P4732563127982713154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A052905 (n + 2)).toNat

end

end A045500.P4732563127982713154

/-! ## A045500.P3831056365122363030

`A121207(eq[4, A025581(n)])`
-/

namespace A045500.P3831056365122363030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045500.P3831056365122363030

/-! ## A045500.P3261039563127177261

`A121207(A000096(n+4)-4)`
-/

namespace A045500.P3261039563127177261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A000096 (n + 4) - 4).toNat

end

end A045500.P3261039563127177261

/-! ## A045500.P10741189177476222084

`A121207(A000217(n+5)-5)`
-/

namespace A045500.P10741189177476222084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A000217 (n + 5) - 5).toNat

end

end A045500.P10741189177476222084

/-! ## A045500.P14533467823806928013

`A121207(Δ[A023545(n+1)]-1)`
-/

namespace A045500.P14533467823806928013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (f1 (n + 1) - f1 n - 1).toNat

end

end A045500.P14533467823806928013

/-! ## A045500.P2575378450265822899

`A121207(A002522(n+3)-∑[n])`
-/

namespace A045500.P2575378450265822899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A002522 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A045500.P2575378450265822899

/-! ## A045500.P8409791693432546917

`A186020(A155212(n)+12)`
-/

namespace A045500.P8409791693432546917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A155212 n + 12).toNat

end

end A045500.P8409791693432546917

/-! ## A045500.P5642360329058234797

`A186020(A167499(n+3)-1)`
-/

namespace A045500.P5642360329058234797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A167499 (n + 3) - 1).toNat

end

end A045500.P5642360329058234797

/-! ## A045500.P2045060085735039527

`A186020(A000217(n+5)-(n+1))`
-/

namespace A045500.P2045060085735039527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A045500.P2045060085735039527

/-! ## A045500.P2150956019242163643

`A186020(A020705(A000217(n+4)))`
-/

namespace A045500.P2150956019242163643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A020705 (A000217 (n + 4)).toNat).toNat

end

end A045500.P2150956019242163643

/-!
# A045501: Third-from-right diagonal of triangle A121207.

The programs for A045501, there is no canonical definition to state claims against.
-/

/-! ## A045501.P4404240317068380568

`A121207(∑[n+3])`
-/

namespace A045501.P4404240317068380568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045501.P4404240317068380568

/-! ## A045501.P17327059275413724195

`A124496(∑[n+1]+2)`
-/

namespace A045501.P17327059275413724195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124496 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A045501.P17327059275413724195

/-! ## A045501.P4738143663067980919

`A186020(∑[n+2]+3)`
-/

namespace A045501.P4738143663067980919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A045501.P4738143663067980919

/-! ## A045501.P479517974664710983

`A212431(∑[n+2]+3)/2`
-/

namespace A045501.P479517974664710983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212431 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℚ) / 2

end

end A045501.P479517974664710983

/-! ## A045501.P2851352933230270619

`A186020(A340266(n+1))^A178334(n)`
-/

namespace A045501.P2851352933230270619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186020 (A340266 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A045501.P2851352933230270619

/-! ## A045501.P16496578453791878487

`or(A000007(n), A186020(A340266(n+1)))`
-/

namespace A045501.P16496578453791878487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A186020 (A340266 (n + 1)).toNat)

end

end A045501.P16496578453791878487

/-! ## A045501.P10661625584032450580

`A121207(A055998(n+1))%A081545(n)`
-/

namespace A045501.P10661625584032450580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121207 (A055998 (n + 1)).toNat) (A081545 n)

end

end A045501.P10661625584032450580

/-!
# A045502: Numbers k such that 2*k+1 and 3*k+1 are squares.

The programs for A045502, the canonical program `A045502.P18302738244362755206` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045502 has offset 0).

The definition of A045502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045502.P18302738244362755206

`40*A278620(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045502

/-- `40*A278620(n)` -/
def P18302738244362755206.Spec : Prop :=
  ∀ n, P18302738244362755206.a n = A045502 n

theorem P18302738244362755206.correct : P18302738244362755206.Spec := by
  intro n
  simp only [A045502]

end A045502

/-! ## A045502.P11961094203938361145

`4*A200993(n)`
-/

namespace A045502.P11961094203938361145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A200993 n

end

end A045502.P11961094203938361145

namespace A045502

/-- `4*A200993(n)` -/
def P11961094203938361145.Spec : Prop :=
  ∀ n, P11961094203938361145.a n = A045502 n

end A045502

/-! ## A045502.P10700321518824137901

`8*A352181(n)`
-/

namespace A045502.P10700321518824137901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A352181 n

end

end A045502.P10700321518824137901

namespace A045502

/-- `8*A352181(n)` -/
def P10700321518824137901.Spec : Prop :=
  ∀ n, P10700321518824137901.a n = A045502 n

end A045502

/-! ## A045502.P11434421855169174330

`floor(A269552(n)/5)`
-/

namespace A045502.P11434421855169174330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269552 n : ℚ) / 5⌋

end

end A045502.P11434421855169174330

namespace A045502

/-- `floor(A269552(n)/5)` -/
def P11434421855169174330.Spec : Prop :=
  ∀ n, P11434421855169174330.a n = A045502 n

end A045502

/-! ## A045502.P2155588669070539754

`∑[2*A072818(n)]`
-/

namespace A045502.P2155588669070539754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045502.P2155588669070539754

namespace A045502

/-- `∑[2*A072818(n)]` -/
def P2155588669070539754.Spec : Prop :=
  ∀ n, P2155588669070539754.a n = A045502 n

end A045502

/-! ## A045502.P16124378934012605369

`∑[A122652(2*n)]`
-/

namespace A045502.P16124378934012605369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122652 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045502.P16124378934012605369

namespace A045502

/-- `∑[A122652(2*n)]` -/
def P16124378934012605369.Spec : Prop :=
  ∀ n, P16124378934012605369.a n = A045502 n

end A045502

/-! ## A045502.P16503846348066805425

`(1-A269549(n))/5`
-/

namespace A045502.P16503846348066805425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A269549 n : ℚ) / 5

end

end A045502.P16503846348066805425

namespace A045502

/-- `(1-A269549(n))/5` -/
def P16503846348066805425.Spec : Prop :=
  ∀ n, P16503846348066805425.a n = (A045502 n : ℚ)

end A045502

/-! ## A045502.P14476010534452778941

`4/3*A352182(n)`
-/

namespace A045502.P14476010534452778941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A352182 n : ℚ)

end

end A045502.P14476010534452778941

namespace A045502

/-- `4/3*A352182(n)` -/
def P14476010534452778941.Spec : Prop :=
  ∀ n, P14476010534452778941.a n = (A045502 n : ℚ)

end A045502

/-! ## A045502.P11902119975500054826

`floor(A138288(n)²/2)`
-/

namespace A045502.P11902119975500054826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138288 n ^ 2 : ℚ) / 2⌋

end

end A045502.P11902119975500054826

namespace A045502

/-- `floor(A138288(n)²/2)` -/
def P11902119975500054826.Spec : Prop :=
  ∀ n, P11902119975500054826.a n = A045502 n

end A045502

/-! ## A045502.P11470430484699333386

`(A054320(n)²-1)/3`
-/

namespace A045502.P11470430484699333386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054320 n ^ 2 - 1 : ℚ) / 3

end

end A045502.P11470430484699333386

namespace A045502

/-- `(A054320(n)²-1)/3` -/
def P11470430484699333386.Spec : Prop :=
  ∀ n, P11470430484699333386.a n = (A045502 n : ℚ)

end A045502

/-!
# A045503: If decimal expansion of n is ab...d, a(n) = a^a + b^b +...+ d^d.

The programs for A045503, the canonical program `A045503.P14409621436097541674` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045503 has offset 0).

The definition of A045503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045503.P14409621436097541674

`∑{digits}[n, #^#]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045503

/-- `∑{digits}[n, #^#]` -/
def P14409621436097541674.Spec : Prop :=
  ∀ n, (P14409621436097541674.a n : ℤ) = A045503 n

theorem P14409621436097541674.correct : P14409621436097541674.Spec := by
  intro n
  simp only [A045503]

end A045503

/-! ## A045503.P18025403758967585170

`A055641(n)+A045512(n)`
-/

namespace A045503.P18025403758967585170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n + A045512 n

end

end A045503.P18025403758967585170

namespace A045503

/-- `A055641(n)+A045512(n)` -/
def P18025403758967585170.Spec : Prop :=
  ∀ n, P18025403758967585170.a n = A045503 n

end A045503

/-! ## A045503.P11435936701056188002

`A064692(A064770(n))+A045512(n)`
-/

namespace A045503.P11435936701056188002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A064770 n).toNat + A045512 n

end

end A045503.P11435936701056188002

namespace A045503

/-- `A064692(A064770(n))+A045512(n)` -/
def P11435936701056188002.Spec : Prop :=
  ∀ n, P11435936701056188002.a n = A045503 n

end A045503

/-! ## A045503.P13078576633107378693

`A102683(A061601(n))+A045512(n)`
-/

namespace A045503.P13078576633107378693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A061601 n).toNat + A045512 n

end

end A045503.P13078576633107378693

namespace A045503

/-- `A102683(A061601(n))+A045512(n)` -/
def P13078576633107378693.Spec : Prop :=
  ∀ n, P13078576633107378693.a n = A045503 n

end A045503

/-! ## A045503.P12066617106415473764

`A102683(A267193(n))+A045512(n)`
-/

namespace A045503.P12066617106415473764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A267193 n).toNat + A045512 n

end

end A045503.P12066617106415473764

namespace A045503

/-- `A102683(A267193(n))+A045512(n)` -/
def P12066617106415473764.Spec : Prop :=
  ∀ n, P12066617106415473764.a n = A045503 n

end A045503

/-! ## A045503.P12564794883220959240

`A045512(A014029(n²)+n)`
-/

namespace A045503.P12564794883220959240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A014029 (n ^ 2) + (n : ℤ)).toNat

end

end A045503.P12564794883220959240

namespace A045503

/-- `A045512(A014029(n²)+n)` -/
def P12564794883220959240.Spec : Prop :=
  ∀ n, P12564794883220959240.a n = A045503 n

end A045503

/-! ## A045503.P17343046209040522649

`A045512(n)+A000007(A050782(n))`
-/

namespace A045503.P17343046209040522649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n + A000007 (A050782 n).toNat

end

end A045503.P17343046209040522649

namespace A045503

/-- `A045512(n)+A000007(A050782(n))` -/
def P17343046209040522649.Spec : Prop :=
  ∀ n, P17343046209040522649.a n = A045503 n

end A045503

/-!
# A045505: Convolution of A000108 (Catalan numbers) with A040075.

The programs for A045505, the canonical program `A045505.P5522859928649509268` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045505 has offset 0).

The definition of A045505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045505.P5522859928649509268

`C(n+5, 4)*(2^(2*n+1)-C(2*n+10, n+5)/140)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045505

/-- `C(n+5, 4)*(2^(2*n+1)-C(2*n+10, n+5)/140)` -/
def P5522859928649509268.Spec : Prop :=
  ∀ n, P5522859928649509268.a n = (A045505 n : ℚ)

end A045505

/-! ## A045505.P16053115286070541600

`2*A040075(n)-A045492(n)`
-/

namespace A045505.P16053115286070541600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040075 n - A045492 n

end

end A045505.P16053115286070541600

namespace A045505

/-- `2*A040075(n)-A045492(n)` -/
def P16053115286070541600.Spec : Prop :=
  ∀ n, P16053115286070541600.a n = A045505 n

end A045505

/-! ## A045505.P5696519264458011100

`2*A020922(n)-A045530(n)`
-/

namespace A045505.P5696519264458011100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020922 n - A045530 n

end

end A045505.P5696519264458011100

namespace A045505

/-- `2*A020922(n)-A045530(n)` -/
def P5696519264458011100.Spec : Prop :=
  ∀ n, P5696519264458011100.a n = A045505 n

end A045505

/-! ## A045505.P6591513440694088260

`(A040075(n+1)-A020920(n+1))/2`
-/

namespace A045505.P6591513440694088260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040075 (n + 1) - A020920 (n + 1) : ℚ) / 2

end

end A045505.P6591513440694088260

namespace A045505

/-- `(A040075(n+1)-A020920(n+1))/2` -/
def P6591513440694088260.Spec : Prop :=
  ∀ n, P6591513440694088260.a n = (A045505 n : ℚ)

end A045505

/-! ## A045505.P3168284993086651527

`A046527(A167499(n+4))`
-/

namespace A045505.P3168284993086651527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (A167499 (n + 4)).toNat

end

end A045505.P3168284993086651527

namespace A045505

/-- `A046527(A167499(n+4))` -/
def P3168284993086651527.Spec : Prop :=
  ∀ n, P3168284993086651527.a n = A045505 n

end A045505

/-! ## A045505.P2242205993116328612

`A046527(A166136(n+4)-1)`
-/

namespace A045505.P2242205993116328612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (A166136 (n + 4) - 1).toNat

end

end A045505.P2242205993116328612

namespace A045505

/-- `A046527(A166136(n+4)-1)` -/
def P2242205993116328612.Spec : Prop :=
  ∀ n, P2242205993116328612.a n = A045505 n

end A045505

/-! ## A045505.P3675773759168039319

`A046527(A000096(n+4)+6)`
-/

namespace A045505.P3675773759168039319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (A000096 (n + 4) + 6).toNat

end

end A045505.P3675773759168039319

namespace A045505

/-- `A046527(A000096(n+4)+6)` -/
def P3675773759168039319.Spec : Prop :=
  ∀ n, P3675773759168039319.a n = A045505 n

end A045505

/-! ## A045505.P8810418707832293085

`A046527(A046691(n+3)+9)`
-/

namespace A045505.P8810418707832293085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (A046691 (n + 3) + 9).toNat

end

end A045505.P8810418707832293085

namespace A045505

/-- `A046527(A046691(n+3)+9)` -/
def P8810418707832293085.Spec : Prop :=
  ∀ n, P8810418707832293085.a n = A045505 n

end A045505

/-! ## A045505.P11437037232831124290

`A046527(A056000(n+1)+15)`
-/

namespace A045505.P11437037232831124290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (A056000 (n + 1) + 15).toNat

end

end A045505.P11437037232831124290

namespace A045505

/-- `A046527(A056000(n+1)+15)` -/
def P11437037232831124290.Spec : Prop :=
  ∀ n, P11437037232831124290.a n = A045505 n

end A045505

/-! ## A045505.P4118245899523112211

`A046527(A000217(n+6)-(n+1))`
-/

namespace A045505.P4118245899523112211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A045505.P4118245899523112211

namespace A045505

/-- `A046527(A000217(n+6)-(n+1))` -/
def P4118245899523112211.Spec : Prop :=
  ∀ n, P4118245899523112211.a n = A045505 n

end A045505

/-!
# A045506: Inscribe 2 spheres of curvature 2 inside sphere of curvature -1, continue to inscribe spheres where possible; sequence gives list of curvatures.

The programs for A045506, there is no canonical definition to state claims against.
-/

/-! ## A045506.P16426633010575351414

`record[2-gcd(3, n)+n]`
-/

namespace A045506.P16426633010575351414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 3 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045506.P16426633010575351414

/-! ## A045506.P2630778222188677963

`∑[ceil(ratio[or(1, n)])]-2`
-/

namespace A045506.P2630778222188677963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A045506.P2630778222188677963

/-! ## A045506.P13914387186267051461

`comp[abs(1-3*n)]-1`
-/

namespace A045506.P13914387186267051461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)|

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A045506.P13914387186267051461

/-! ## A045506.P4264011562928389362

`round(n-or(1, -n)/2)`
-/

namespace A045506.P4264011562928389362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (Int.lor 1 (-(n : ℤ)) : ℚ) / 2)

end

end A045506.P4264011562928389362

/-! ## A045506.P1776590122617962489

`round(n-xor(1, -n)/2)`
-/

namespace A045506.P1776590122617962489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (Int.xor 1 (-(n : ℤ)) : ℚ) / 2)

end

end A045506.P1776590122617962489

/-! ## A045506.P4404809310904202456

`round(or(1, 3*n-1)/2)`
-/

namespace A045506.P4404809310904202456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 1 ((3 * n : ℤ) - 1) : ℚ) / 2)

end

end A045506.P4404809310904202456

/-! ## A045506.P4253079071192852923

`record[lcm(3, n+3)/3-2]`
-/

namespace A045506.P4253079071192852923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 3) : ℚ) / 3 - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045506.P4253079071192852923

/-! ## A045506.P3829911409784457066

`round(or(1, n-1)/2+n)`
-/

namespace A045506.P3829911409784457066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 1 ((n : ℤ) - 1) : ℚ) / 2 + (n : ℚ))

end

end A045506.P3829911409784457066

/-! ## A045506.P9391883673257888112

`∑[3-a(n-1)]` with `a(0)=-1, a(1)=3, a(2)=1`
-/

namespace A045506.P9391883673257888112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 3, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045506.P9391883673257888112

/-! ## A045506.P4443029918508108501

`∑[∑[ogf((-1+3x+2x^2-x^3)/(1+x))]]`
-/

namespace A045506.P4443029918508108501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, 2, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045506.P4443029918508108501

/-!
# A045507: Concatenate powers of 2.

The programs for A045507, there is no canonical definition to state claims against.
-/

/-! ## A045507.P13107443150350626557

`A000079(n)*A077352(n)`
-/

namespace A045507.P13107443150350626557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A077352 n

end

end A045507.P13107443150350626557

/-! ## A045507.P5669993640464170022

`Δ[A000051(n)]*A077352(n)`
-/

namespace A045507.P5669993640464170022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A077352 n

end

end A045507.P5669993640464170022

/-! ## A045507.P3232533800253107099

`record[A059268(n)]*A077352(n)`
-/

namespace A045507.P3232533800253107099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A077352 n

end

end A045507.P3232533800253107099

/-! ## A045507.P18115035235957384153

`A059268(n)*A077352(n)*A245235(n)`
-/

namespace A045507.P18115035235957384153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A077352 n * A245235 n

end

end A045507.P18115035235957384153

/-! ## A045507.P9308098760356083722

`A037278(2^n)`
-/

namespace A045507.P9308098760356083722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (2 ^ n)

end

end A045507.P9308098760356083722

/-!
# A045509: 

The programs for A045509, there is no canonical definition to state claims against.
-/

/-! ## A045509.P5624716355740670244

`A045520(n+2)!`
-/

namespace A045509.P5624716355740670244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A045520 (n + 2)).toNat

end

end A045509.P5624716355740670244

/-!
# A045510: 

The programs for A045510, there is no canonical definition to state claims against.
-/

/-! ## A045510.P16362939653693196803

`A045521(n+1)!`
-/

namespace A045510.P16362939653693196803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A045521 (n + 1)).toNat

end

end A045510.P16362939653693196803

/-! ## A045510.P6602318568760370291

`eq[2, A008905(n)]!`
-/

namespace A045510.P6602318568760370291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045510.P6602318568760370291

/-! ## A045510.P10304353869745618824

`A000142(eq[3, A008905(n)+1])`
-/

namespace A045510.P10304353869745618824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045510.P10304353869745618824

/-!
# A045511: 

The programs for A045511, there is no canonical definition to state claims against.
-/

/-! ## A045511.P9366966037471817457

`A045522(n+1)!`
-/

namespace A045511.P9366966037471817457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A045522 (n + 1)).toNat

end

end A045511.P9366966037471817457

/-! ## A045511.P10509159740973892402

`eq[3, A008905(n)]!`
-/

namespace A045511.P10509159740973892402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045511.P10509159740973892402

/-! ## A045511.P16170999817400966699

`A000142(A085860(n)+A045522(n+1))`
-/

namespace A045511.P16170999817400966699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A085860 n + A045522 (n + 1)).toNat

end

end A045511.P16170999817400966699

/-!
# A045512: If decimal expansion of n is ab...d, a(n) = a^a + b^b + ... + d^d (ignoring any 0's).

The programs for A045512, the canonical program `A045512.P17427880865680227867` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045512 has offset 0).

The definition of A045512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045512.P17427880865680227867

`∑{digits}[n, lcm(#, (-#)^#)]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045512

/-- `∑{digits}[n, lcm(#, (-#)^#)]` -/
def P17427880865680227867.Spec : Prop :=
  ∀ n, (P17427880865680227867.a n : ℤ) = A045512 n

theorem P17427880865680227867.correct : P17427880865680227867.Spec := by
  intro n
  simp only [A045512]

end A045512

/-! ## A045512.P11634399354257341038

`∑{digits}[n, #^A118541(#)]`
-/

namespace A045512.P11634399354257341038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) ^ (A118541 x : ℤ)).sum

end

end A045512.P11634399354257341038

namespace A045512

/-- `∑{digits}[n, #^A118541(#)]` -/
def P11634399354257341038.Spec : Prop :=
  ∀ n, P11634399354257341038.a n = (A045512 n : ℚ)

end A045512

/-! ## A045512.P8277532918689884973

`∑{digits}[n, #^#]-A055641(n)`
-/

namespace A045512.P8277532918689884973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ x).sum : ℕ) : ℤ) - A055641 n

end

end A045512.P8277532918689884973

namespace A045512

/-- `∑{digits}[n, #^#]-A055641(n)` -/
def P8277532918689884973.Spec : Prop :=
  ∀ n, P8277532918689884973.a n = A045512 n

end A045512

/-! ## A045512.P15239031379999295215

`A045503(n)-A055641(n)`
-/

namespace A045512.P15239031379999295215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n - A055641 n

end

end A045512.P15239031379999295215

namespace A045512

/-- `A045503(n)-A055641(n)` -/
def P15239031379999295215.Spec : Prop :=
  ∀ n, P15239031379999295215.a n = A045512 n

end A045512

/-! ## A045512.P1777657482031114407

`∑{digits}[n, #^gcd(#, n!)]`
-/

namespace A045512.P1777657482031114407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ Nat.gcd x (Nat.factorial n)).sum

end

end A045512.P1777657482031114407

namespace A045512

/-- `∑{digits}[n, #^gcd(#, n!)]` -/
def P1777657482031114407.Spec : Prop :=
  ∀ n, (P1777657482031114407.a n : ℤ) = A045512 n

end A045512

/-! ## A045512.P3267901851950975792

`∑{e}[A061509(n), A061510(#)]`
-/

namespace A045512.P3267901851950975792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061510 (Nat.factorization (f1 n).natAbs p)

end

end A045512.P3267901851950975792

namespace A045512

/-- `∑{e}[A061509(n), A061510(#)]` -/
def P3267901851950975792.Spec : Prop :=
  ∀ n, P3267901851950975792.a n = A045512 n

end A045512

/-!
# A045513: Expansion of 1/((1-x)*(1-x^2)^2*(1-x^3)^2*(1-x^4)^2*(1-x^5)*(1-x^6)).

The programs for A045513, there is no canonical definition to state claims against.
-/

/-! ## A045513.P10193610341634178553

`∑{d}[A028310(n), A045514(#)]`
-/

namespace A045513.P10193610341634178553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045514 d

end

end A045513.P10193610341634178553

/-! ## A045513.P16088142454999049488

`A000007(n)+∑{d}[n, A045514(#)]`
-/

namespace A045513.P16088142454999049488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A045514 d

end

end A045513.P16088142454999049488

/-! ## A045513.P9871122842734884826

`∑{d}[gcd(n, A008706(n)), A045514(#)]`
-/

namespace A045513.P9871122842734884826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A008706 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045514 d

end

end A045513.P9871122842734884826

/-! ## A045513.P13012066016881850077

`∑{d}[A065033(2*n), A045514(#)]`
-/

namespace A045513.P13012066016881850077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045514 d

end

end A045513.P13012066016881850077

/-! ## A045513.P6472053830356301570

`∑{d}[A123108(2*n), A045514(#)]`
-/

namespace A045513.P6472053830356301570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045514 d

end

end A045513.P6472053830356301570

/-! ## A045513.P16412112244286837786

`∑{d}[A007318(A000124(n)), A045514(#)]`
-/

namespace A045513.P16412112244286837786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045514 d

end

end A045513.P16412112244286837786

/-!
# A045514: Number of conjugacy classes of elements of order n in E_8(C).

The programs for A045514, there is no canonical definition to state claims against.
-/

/-! ## A045514.P8082522664836530179

`A007865(n)-A007875(A007911(n+4))`
-/

namespace A045514.P8082522664836530179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n - A007875 (A007911 (n + 4)).toNat

end

end A045514.P8082522664836530179

/-! ## A045514.P8141341154712875882

`eq[A001221(A086963(n+1)), A030308(3*n+1)]`
-/

namespace A045514.P8141341154712875882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A086963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045514.P8141341154712875882

/-!
# A045516: 

The programs for A045516, there is no canonical definition to state claims against.
-/

/-! ## A045516.P4703307134919544848

`A045523(n+1)!`
-/

namespace A045516.P4703307134919544848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A045523 (n + 1)).toNat

end

end A045516.P4703307134919544848

/-!
# A045517: 

The programs for A045517, there is no canonical definition to state claims against.
-/

/-! ## A045517.P7625117860517497527

`eq[5, A008905(n)]!`
-/

namespace A045517.P7625117860517497527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045517.P7625117860517497527

/-!
# A045518: 

The programs for A045518, there is no canonical definition to state claims against.
-/

/-! ## A045518.P4631345106182156544

`A045525(n+1)!`
-/

namespace A045518.P4631345106182156544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A045525 (n + 1)).toNat

end

end A045518.P4631345106182156544

/-!
# A045520: Numbers k such that k! has initial digit '1'.

The programs for A045520, there is no canonical definition to state claims against.
-/

/-! ## A045520.P13779670751686621118

`eq[1, A008905(n)]`
-/

namespace A045520.P13779670751686621118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045520.P13779670751686621118

/-! ## A045520.P3101700236103857230

`lt[A008905(n), log(A249032(n))]`
-/

namespace A045520.P3101700236103857230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A249032 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045520.P3101700236103857230

/-! ## A045520.P4873613236431764548

`lt[A008905(n), atan(A004767(n))]`
-/

namespace A045520.P4873613236431764548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A004767 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045520.P4873613236431764548

/-! ## A045520.P7178733041051466543

`lt[A008905(n), cosh(A020985(n))]`
-/

namespace A045520.P7178733041051466543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A020985 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045520.P7178733041051466543

/-! ## A045520.P8636554222552247927

`lt[A008905(n), atan(A031813(n+1))]`
-/

namespace A045520.P8636554222552247927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031813 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045520.P8636554222552247927

/-! ## A045520.P3615565188854036252

`lt[A008905(n), root(2, A034957(n+1))]`
-/

namespace A045520.P3615565188854036252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 / (A034957 (n + 1) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045520.P3615565188854036252

/-! ## A045520.P5918513668027898934

`lt[log2(A008905(n))*A008905(n+1), 1]`
-/

namespace A045520.P5918513668027898934
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A008905 n : ℝ) * (A008905 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A045520.P5918513668027898934

/-! ## A045520.P14277185196531434533

`lt[A008905(n), A161189(A078772(n+1))]`
-/

namespace A045520.P14277185196531434533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A078772 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045520.P14277185196531434533

/-! ## A045520.P17804246305714934067

`lt[A008905(n), atan(A262283(n+1))]`
-/

namespace A045520.P17804246305714934067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A262283 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045520.P17804246305714934067

/-!
# A045521: Numbers k such that k! has initial digit '2'.

The programs for A045521, there is no canonical definition to state claims against.
-/

/-! ## A045521.P10348591644610395196

`eq[2, A008905(n)]`
-/

namespace A045521.P10348591644610395196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045521.P10348591644610395196

/-! ## A045521.P443785626179633702

`lt[lcm(9, 2-A008905(n))/2, A141044(n)]`
-/

namespace A045521.P443785626179633702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 9 (2 - A008905 n) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A045521.P443785626179633702

/-! ## A045521.P14195056688376429874

`lt[A132648(n+4), record[A017666(n+4)]]`
-/

namespace A045521.P14195056688376429874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132648 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045521.P14195056688376429874

/-! ## A045521.P13639331997066366356

`lt[A132648(n+4), A003961(A073846(n+1))]`
-/

namespace A045521.P13639331997066366356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132648 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A073846 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045521.P13639331997066366356

/-! ## A045521.P8158110980114806059

`lt[A006995(A132648(n+4)), A020492(n+3)]`
-/

namespace A045521.P8158110980114806059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A132648 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045521.P8158110980114806059

/-!
# A045522: Numbers k such that k! has initial digit '3'.

The programs for A045522, there is no canonical definition to state claims against.
-/

/-! ## A045522.P10750383040345992925

`eq[3, A008905(n)]`
-/

namespace A045522.P10750383040345992925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045522.P10750383040345992925

/-! ## A045522.P3339526646023827588

`lt[lcm(9, 3-A008905(n))/2, A141044(n)]`
-/

namespace A045522.P3339526646023827588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 9 (3 - A008905 n) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A045522.P3339526646023827588

/-!
# A045523: Numbers k such that k! has initial digit '4'.

The programs for A045523, there is no canonical definition to state claims against.
-/

/-! ## A045523.P3982230144373331333

`eq[4, A008905(n)]`
-/

namespace A045523.P3982230144373331333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045523.P3982230144373331333

/-!
# A045524: Numbers k such that k! has initial digit '5'.

The programs for A045524, there is no canonical definition to state claims against.
-/

/-! ## A045524.P3462366843146183782

`eq[5, A008905(n)]`
-/

namespace A045524.P3462366843146183782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045524.P3462366843146183782

/-! ## A045524.P3702386092906371078

`lt[A136754(n), gcd(5, A008905(n))]`
-/

namespace A045524.P3702386092906371078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136754 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A008905 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A045524.P3702386092906371078

/-!
# A045525: Numbers k such that k! has initial digit '6'.

The programs for A045525, there is no canonical definition to state claims against.
-/

/-! ## A045525.P7622013018698663500

`eq[6, A008905(n)]`
-/

namespace A045525.P7622013018698663500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045525.P7622013018698663500

/-!
# A045526: Numbers k such that k! has initial digit '7'.

The programs for A045526, there is no canonical definition to state claims against.
-/

/-! ## A045526.P5119631752725010726

`eq[7, A008905(n)]`
-/

namespace A045526.P5119631752725010726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045526.P5119631752725010726

/-! ## A045526.P17442109076157878862

`lt[A136757(n), gcd(7, A008905(n))]`
-/

namespace A045526.P17442109076157878862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136757 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A008905 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A045526.P17442109076157878862

/-!
# A045527: Numbers k such that k! has initial digit '8'.

The programs for A045527, there is no canonical definition to state claims against.
-/

/-! ## A045527.P7539726902682280686

`eq[8, A008905(n)]`
-/

namespace A045527.P7539726902682280686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045527.P7539726902682280686

/-! ## A045527.P1582211614902235711

`lt[or(7, A325272(n+1)), A008905(n)]`
-/

namespace A045527.P1582211614902235711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A325272 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045527.P1582211614902235711

/-! ## A045527.P13484829916928582844

`lt[A008900(A288022(n+1)), A008905(n)]`
-/

namespace A045527.P13484829916928582844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008900 (A288022 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045527.P13484829916928582844

/-! ## A045527.P13018602178415795081

`lt[A010877(A007665(3*n+5)), A008905(n)]`
-/

namespace A045527.P13018602178415795081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A007665 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045527.P13018602178415795081

/-!
# A045528: Numbers k such that k! has initial digit '9'.

The programs for A045528, there is no canonical definition to state claims against.
-/

/-! ## A045528.P12644698308472764023

`lt[8, A008905(n)]`
-/

namespace A045528.P12644698308472764023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045528.P12644698308472764023

/-! ## A045528.P17480707414595771976

`A028310(eq[9, A008905(n)])`
-/

namespace A045528.P17480707414595771976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045528.P17480707414595771976

/-! ## A045528.P964761928613611019

`eq[A008905(n), A168094(n)]`
-/

namespace A045528.P964761928613611019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045528.P964761928613611019

/-! ## A045528.P10251766808053026247

`eq[A008905(n), A180599(n)]`
-/

namespace A045528.P10251766808053026247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045528.P10251766808053026247

/-! ## A045528.P6079698391431022809

`eq[A174971(n)², A008905(n)]`
-/

namespace A045528.P6079698391431022809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045528.P6079698391431022809

/-! ## A045528.P1343649550264407191

`eq[A008905(n), A066586(n+1)]`
-/

namespace A045528.P1343649550264407191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045528.P1343649550264407191

/-! ## A045528.P3567496343840372668

`eq[A008905(n), A094327(n+1)]`
-/

namespace A045528.P3567496343840372668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045528.P3567496343840372668

/-!
# A045529: 

The programs for A045529, there is no canonical definition to state claims against.
-/

/-! ## A045529.P3176223405386617804

`A000045(3^n)`
-/

namespace A045529.P3176223405386617804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 ^ n)

end

end A045529.P3176223405386617804

/-!
# A045530: Convolution of A000108 (Catalan numbers) with A020922.

The programs for A045530, the canonical program `A045530.P17029138342740245618` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045530 has offset 0).

The definition of A045530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045530.P17029138342740245618

`2*A020922(n)-A045505(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045530

/-- `2*A020922(n)-A045505(n)` -/
def P17029138342740245618.Spec : Prop :=
  ∀ n, P17029138342740245618.a n = A045530 n

theorem P17029138342740245618.correct : P17029138342740245618.Spec := by
  intro n
  simp only [A045530]

end A045530

/-! ## A045530.P8457597563823159487

`(A020922(n+1)-A040075(n+1))/2`
-/

namespace A045530.P8457597563823159487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020922 (n + 1) - A040075 (n + 1) : ℚ) / 2

end

end A045530.P8457597563823159487

namespace A045530

/-- `(A020922(n+1)-A040075(n+1))/2` -/
def P8457597563823159487.Spec : Prop :=
  ∀ n, P8457597563823159487.a n = (A045530 n : ℚ)

end A045530

/-! ## A045530.P7344855841871039862

`A046658(A133263(n+5)+4)`
-/

namespace A045530.P7344855841871039862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (A133263 (n + 5) + 4).toNat

end

end A045530.P7344855841871039862

namespace A045530

/-- `A046658(A133263(n+5)+4)` -/
def P7344855841871039862.Spec : Prop :=
  ∀ n, P7344855841871039862.a n = A045530 n

end A045530

/-! ## A045530.P13803339518418220396

`A046658(A000124(n+5)+5)`
-/

namespace A045530.P13803339518418220396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (A000124 (n + 5) + 5).toNat

end

end A045530.P13803339518418220396

namespace A045530

/-- `A046658(A000124(n+5)+5)` -/
def P13803339518418220396.Spec : Prop :=
  ∀ n, P13803339518418220396.a n = A045530 n

end A045530

/-! ## A045530.P15810504377221455629

`A046658(A000096(n+5)-(n-1))`
-/

namespace A045530.P15810504377221455629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A045530.P15810504377221455629

namespace A045530

/-- `A046658(A000096(n+5)-(n-1))` -/
def P15810504377221455629.Spec : Prop :=
  ∀ n, P15810504377221455629.a n = A045530 n

end A045530

/-! ## A045530.P6846193959908546964

`A046658(A000217(n+5)+7-A007318(∑[n]))`
-/

namespace A045530.P6846193959908546964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (A000217 (n + 5) + 7 - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A045530.P6846193959908546964

namespace A045530

/-- `A046658(A000217(n+5)+7-A007318(∑[n]))` -/
def P6846193959908546964.Spec : Prop :=
  ∀ n, P6846193959908546964.a n = A045530 n

end A045530

/-!
# A045531: Number of sticky functions: endofunctions of [n] having a fixed point.

The programs for A045531, the canonical program `A045531.P981671504222336034` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045531 has offset 1).

The definition of A045531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045531.P981671504222336034

`(n+1)^(n+1)-n^(n+1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045531

/-- `(n+1)^(n+1)-n^(n+1)` -/
def P981671504222336034.Spec : Prop :=
  ∀ n, P981671504222336034.a n = A045531 (n + 1)

theorem P981671504222336034.correct : P981671504222336034.Spec := by
  intro n
  simp only [A045531, Nat.add_sub_cancel]

end A045531

/-! ## A045531.P5658371368373966836

`record[A246049(n)]`
-/

namespace A045531.P5658371368373966836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045531.P5658371368373966836

namespace A045531

/-- `record[A246049(n)]` -/
def P5658371368373966836.Spec : Prop :=
  ∀ n, P5658371368373966836.a n = A045531 (n + 1)

end A045531

/-! ## A045531.P7937450528512469795

`A199656(∑[n+1])`
-/

namespace A045531.P7937450528512469795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199656 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045531.P7937450528512469795

namespace A045531

/-- `A199656(∑[n+1])` -/
def P7937450528512469795.Spec : Prop :=
  ∀ n, P7937450528512469795.a n = A045531 (n + 1)

end A045531

/-! ## A045531.P14748241385941359121

`A246049(∑[n+1]+1)`
-/

namespace A045531.P14748241385941359121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A045531.P14748241385941359121

namespace A045531

/-- `A246049(∑[n+1]+1)` -/
def P14748241385941359121.Spec : Prop :=
  ∀ n, P14748241385941359121.a n = A045531 (n + 1)

end A045531

/-! ## A045531.P13055416963359330406

`A397331(∑[n+1]+1)`
-/

namespace A045531.P13055416963359330406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397331 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A045531.P13055416963359330406

namespace A045531

/-- `A397331(∑[n+1]+1)` -/
def P13055416963359330406.Spec : Prop :=
  ∀ n, P13055416963359330406.a n = A045531 (n + 1)

end A045531

/-! ## A045531.P14678445527000404607

`A091884(∑[n+1]+1)`
-/

namespace A045531.P14678445527000404607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091884 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A045531.P14678445527000404607

namespace A045531

/-- `A091884(∑[n+1]+1)` -/
def P14678445527000404607.Spec : Prop :=
  ∀ n, P14678445527000404607.a n = A045531 (n + 1)

end A045531

/-! ## A045531.P9751979250754432365

`A174551(∑[n+1]+1)`
-/

namespace A045531.P9751979250754432365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A045531.P9751979250754432365

namespace A045531

/-- `A174551(∑[n+1]+1)` -/
def P9751979250754432365.Spec : Prop :=
  ∀ n, P9751979250754432365.a n = A045531 (n + 1)

end A045531

/-! ## A045531.P9137617020262043168

`A152170(n+1)/(n+1)`
-/

namespace A045531.P9137617020262043168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152170 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A045531.P9137617020262043168

namespace A045531

/-- `A152170(n+1)/(n+1)` -/
def P9137617020262043168.Spec : Prop :=
  ∀ n, P9137617020262043168.a n = (A045531 (n + 1) : ℚ)

end A045531

/-!
# A045532: Concatenate n with n-th prime.

The programs for A045532, the canonical program `A045532.P6946035463198391959` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045532 has offset 1).

The definition of A045532 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A004216, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045532.P6946035463198391959

`(n+1)*10^(A004216(A000040(n+1))+1)+A000040(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045532

/-- `(n+1)*10^(A004216(A000040(n+1))+1)+A000040(n+1)` -/
def P6946035463198391959.Spec : Prop :=
  ∀ n, P6946035463198391959.a n = (A045532 (n + 1) : ℚ)

end A045532

/-! ## A045532.P13494212294797665860

`(n+1)*A039790(n+1)-A117495(n+1)`
-/

namespace A045532.P13494212294797665860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A039790 (n + 1) - A117495 (n + 1)

end

end A045532.P13494212294797665860

namespace A045532

/-- `(n+1)*A039790(n+1)-A117495(n+1)` -/
def P13494212294797665860.Spec : Prop :=
  ∀ n, P13494212294797665860.a n = A045532 (n + 1)

end A045532

/-! ## A045532.P14405497273932247750

`A084855(A072205(n+1)+n)`
-/

namespace A045532.P14405497273932247750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A072205 (n + 1) + (n : ℤ)).toNat

end

end A045532.P14405497273932247750

namespace A045532

/-- `A084855(A072205(n+1)+n)` -/
def P14405497273932247750.Spec : Prop :=
  ∀ n, P14405497273932247750.a n = A045532 (n + 1)

end A045532

/-! ## A045532.P629507059613428052

`A084855(A008837(n+1)+1+n)`
-/

namespace A045532.P629507059613428052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A008837 (n + 1) + 1 + (n : ℤ)).toNat

end

end A045532.P629507059613428052

namespace A045532

/-- `A084855(A008837(n+1)+1+n)` -/
def P629507059613428052.Spec : Prop :=
  ∀ n, P629507059613428052.a n = A045532 (n + 1)

end A045532

/-! ## A045532.P1480289334859642656

`A084855(A034953(n+1)+1+n)-1`
-/

namespace A045532.P1480289334859642656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A034953 (n + 1) + 1 + (n : ℤ)).toNat - 1

end

end A045532.P1480289334859642656

namespace A045532

/-- `A084855(A034953(n+1)+1+n)-1` -/
def P1480289334859642656.Spec : Prop :=
  ∀ n, P1480289334859642656.a n = A045532 (n + 1)

end A045532

/-!
# A045533: Concatenate the n-th and (n+1)st prime.

The programs for A045533, there is no canonical definition to state claims against.
-/

/-! ## A045533.P8459426887425663261

`A049852(A000040(n+1))`
-/

namespace A045533.P8459426887425663261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A000040 (n + 1)).toNat

end

end A045533.P8459426887425663261

/-! ## A045533.P16725919919992726447

`A049852(A008578(n+2))`
-/

namespace A045533.P16725919919992726447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A008578 (n + 2)).toNat

end

end A045533.P16725919919992726447

/-! ## A045533.P2000076706983170151

`A049852(A182986(n+2))`
-/

namespace A045533.P2000076706983170151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A182986 (n + 2)).toNat

end

end A045533.P2000076706983170151

/-! ## A045533.P13871594213646469821

`A049852(eq[1, A003415(n)])`
-/

namespace A045533.P13871594213646469821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045533.P13871594213646469821

/-! ## A045533.P16023277493108636773

`A049852(record[p?[A291769(n)]])`
-/

namespace A045533.P16023277493108636773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045533.P16023277493108636773

/-! ## A045533.P11268108017546360201

`A049852(record[p?[A292266(n)]])`
-/

namespace A045533.P11268108017546360201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045533.P11268108017546360201

/-! ## A045533.P3557539046210592460

`A049852(record[p?[A331303(n)]])`
-/

namespace A045533.P3557539046210592460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045533.P3557539046210592460

/-! ## A045533.P4833288659608076435

`A049852(record[A006530(n+2)])`
-/

namespace A045533.P4833288659608076435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045533.P4833288659608076435

/-! ## A045533.P11187030070089194893

`A049852(record[A014963(n+2)])`
-/

namespace A045533.P11187030070089194893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045533.P11187030070089194893

/-! ## A045533.P16821543641677695825

`A049852(record[A020639(n+2)])`
-/

namespace A045533.P16821543641677695825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045533.P16821543641677695825

/-! ## A045533.P15940742558109068979

`A049852(A006093(n+1)+1)`
-/

namespace A045533.P15940742558109068979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A006093 (n + 1) + 1).toNat

end

end A045533.P15940742558109068979

/-! ## A045533.P9023974393072784153

`record[A010051(n+2)*A049852(n+2)]`
-/

namespace A045533.P9023974393072784153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) * A049852 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045533.P9023974393072784153

/-! ## A045533.P342481024438357682

`record[A049852(n+2)/A001222(n+2)]`
-/

namespace A045533.P342481024438357682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049852 (n + 2) : ℚ) / (A001222 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045533.P342481024438357682

/-! ## A045533.P8144507620966719035

`A049852(A266620(A006093(n+1)))`
-/

namespace A045533.P8144507620966719035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A266620 (A006093 (n + 1)).toNat).toNat

end

end A045533.P8144507620966719035

/-! ## A045533.P10321558587195168779

`A049851(p?[Δ[n²]])`
-/

namespace A045533.P10321558587195168779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045533.P10321558587195168779

/-! ## A045533.P5153819924338808278

`A049851(A065091(n+1))`
-/

namespace A045533.P5153819924338808278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A065091 (n + 1)).toNat

end

end A045533.P5153819924338808278

/-! ## A045533.P1612304422450262472

`A049851(A000040(n+2))`
-/

namespace A045533.P1612304422450262472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A000040 (n + 2)).toNat

end

end A045533.P1612304422450262472

/-! ## A045533.P4437529908405620309

`A049851(A006005(n+2))`
-/

namespace A045533.P4437529908405620309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A006005 (n + 2)).toNat

end

end A045533.P4437529908405620309

/-! ## A045533.P4825911216990217063

`A049851(record[A006530(n+3)])`
-/

namespace A045533.P4825911216990217063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045533.P4825911216990217063

/-! ## A045533.P13146432189261835685

`A049851(record[A014963(n+3)])`
-/

namespace A045533.P13146432189261835685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045533.P13146432189261835685

/-!
# A045534: Number of squarefree self-avoiding walks in 2 dimensions.

The programs for A045534, the canonical program `A045534.P6417877156370328133` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045534 has offset 0).

The definition of A045534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045534.P6417877156370328133

`floor(7/n)*a(n-1)` with `a(0)=1, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045534

/-- `floor(7/n)*a(n-1)` -/
def P6417877156370328133.Spec : Prop :=
  ∀ n, P6417877156370328133.a n = A045534 n

theorem P6417877156370328133.correct : P6417877156370328133.Spec := by
  intro n
  simp only [A045534]

end A045534

/-!
# A045535: Least negative pseudosquare modulo the first n odd primes.

The programs for A045535, there is no canonical definition to state claims against.
-/

/-! ## A045535.P14207287357707088201

`A062241(n+1)`
-/

namespace A045535.P14207287357707088201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062241 (n + 1)

end

end A045535.P14207287357707088201

/-! ## A045535.P12564373462193606008

`abs(Δ[-∑[A062241(n)]])`
-/

namespace A045535.P12564373462193606008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062241 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A045535.P12564373462193606008

/-! ## A045535.P9660057229182926502

`or(1, A062241(Δ[n²]-n))`
-/

namespace A045535.P9660057229182926502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062241 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A045535.P9660057229182926502

/-! ## A045535.P11208702811430329466

`Δ[∑[A062241(n)]-A011744(n)]`
-/

namespace A045535.P11208702811430329466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062241 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A011744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045535.P11208702811430329466

/-! ## A045535.P10271768644365035584

`Δ[∑[A062241(n)]-((-1)^A007318(n))²]`
-/

namespace A045535.P10271768644365035584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062241 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) - ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045535.P10271768644365035584

/-!
# A045536: Primes p such that p+2 and 2p+1 are also prime.

The programs for A045536, the canonical program `A045536.P9504402111197072869` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045536 has offset 1).

The definition of A045536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6975 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045536.P5969000066631232665

`floor(A118072(n+1)/2)`
-/

namespace A045536.P5969000066631232665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118072 (n + 1) : ℚ) / 2⌋

end

end A045536.P5969000066631232665

namespace A045536

/-- `floor(A118072(n+1)/2)` -/
def P5969000066631232665.Spec : Prop :=
  ∀ n, P5969000066631232665.a n = A045536 (n + 1)

end A045536

/-! ## A045536.P9504402111197072869

`∩[A001359(n+1), A005384(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A045536

/-- `∩[A001359(n+1), A005384(n+1)]` -/
def P9504402111197072869.Spec : Prop :=
  ∀ n, (P9504402111197072869.a n : ℤ) = A045536 (n + 1)

theorem P9504402111197072869.correct : P9504402111197072869.Spec := by
  intro n
  simp only [A045536, Nat.add_sub_cancel]

end A045536

/-! ## A045536.P14712367702862866968

`∩[A001359(n+1), A348511(n+1)]`
-/

namespace A045536.P14712367702862866968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P14712367702862866968

namespace A045536

/-- `∩[A001359(n+1), A348511(n+1)]` -/
def P14712367702862866968.Spec : Prop :=
  ∀ n, (P14712367702862866968.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P4709381528376657272

`∩[A001359(n+1), A364926(n+1)]`
-/

namespace A045536.P4709381528376657272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P4709381528376657272

namespace A045536

/-- `∩[A001359(n+1), A364926(n+1)]` -/
def P4709381528376657272.Spec : Prop :=
  ∀ n, (P4709381528376657272.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P10662597576207569637

`∩[A246857(n+1), A001359(n+1)]`
-/

namespace A045536.P10662597576207569637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P10662597576207569637

namespace A045536

/-- `∩[A246857(n+1), A001359(n+1)]` -/
def P10662597576207569637.Spec : Prop :=
  ∀ n, (P10662597576207569637.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P17504551393079584539

`∩[A014574(n+1)-1, A348511(n+1)]`
-/

namespace A045536.P17504551393079584539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P17504551393079584539

namespace A045536

/-- `∩[A014574(n+1)-1, A348511(n+1)]` -/
def P17504551393079584539.Spec : Prop :=
  ∀ n, (P17504551393079584539.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P18367719846756295545

`or(1, ∩[A111166(n+1), A348511(n+1)])`
-/

namespace A045536.P18367719846756295545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045536.P18367719846756295545

namespace A045536

/-- `or(1, ∩[A111166(n+1), A348511(n+1)])` -/
def P18367719846756295545.Spec : Prop :=
  ∀ n, (P18367719846756295545.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P11306071374949722041

`∩[A014574(n+1)-1, A074259(n)+a(n-1)]` with `a(0)=2`
-/

namespace A045536.P11306071374949722041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A074259 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P11306071374949722041

namespace A045536

/-- `∩[A014574(n+1)-1, A074259(n)+a(n-1)]` -/
def P11306071374949722041.Spec : Prop :=
  ∀ n, (P11306071374949722041.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P3727497045229269030

`∩[A005384(n+1), A054799(n+1)]`
-/

namespace A045536.P3727497045229269030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P3727497045229269030

namespace A045536

/-- `∩[A005384(n+1), A054799(n+1)]` -/
def P3727497045229269030.Spec : Prop :=
  ∀ n, (P3727497045229269030.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P6684966341421186777

`∩[A005384(n+1), A063700(n+1)]`
-/

namespace A045536.P6684966341421186777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P6684966341421186777

namespace A045536

/-- `∩[A005384(n+1), A063700(n+1)]` -/
def P6684966341421186777.Spec : Prop :=
  ∀ n, (P6684966341421186777.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P2720867078184936116

`∩[A005384(n+1), A181747(n+1)]`
-/

namespace A045536.P2720867078184936116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P2720867078184936116

namespace A045536

/-- `∩[A005384(n+1), A181747(n+1)]` -/
def P2720867078184936116.Spec : Prop :=
  ∀ n, (P2720867078184936116.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P2788756522030035790

`∩[A063700(n+1), A348511(n+1)]`
-/

namespace A045536.P2788756522030035790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P2788756522030035790

namespace A045536

/-- `∩[A063700(n+1), A348511(n+1)]` -/
def P2788756522030035790.Spec : Prop :=
  ∀ n, (P2788756522030035790.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P419349137769652649

`∩[A005384(n+1), A063693(n+1)]`
-/

namespace A045536.P419349137769652649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P419349137769652649

namespace A045536

/-- `∩[A005384(n+1), A063693(n+1)]` -/
def P419349137769652649.Spec : Prop :=
  ∀ n, (P419349137769652649.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P16460527187840639961

`∩[A063693(n+1), A348511(n+1)]`
-/

namespace A045536.P16460527187840639961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P16460527187840639961

namespace A045536

/-- `∩[A063693(n+1), A348511(n+1)]` -/
def P16460527187840639961.Spec : Prop :=
  ∀ n, (P16460527187840639961.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P7154330856346250545

`∩[A005384(n+1), A280590(n+1)]`
-/

namespace A045536.P7154330856346250545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045536.P7154330856346250545

namespace A045536

/-- `∩[A005384(n+1), A280590(n+1)]` -/
def P7154330856346250545.Spec : Prop :=
  ∀ n, (P7154330856346250545.a n : ℤ) = A045536 (n + 1)

end A045536

/-! ## A045536.P6106507120137890783

`p?[A176045(n+1)+1]-2`
-/

namespace A045536.P6106507120137890783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A045536.P6106507120137890783

namespace A045536

/-- `p?[A176045(n+1)+1]-2` -/
def P6106507120137890783.Spec : Prop :=
  ∀ n, P6106507120137890783.a n = A045536 (n + 1)

end A045536

/-!
# A045538: Smallest number k such that kn contains two consecutive digits which are the same.

The programs for A045538, there is no canonical definition to state claims against.
-/

/-! ## A045538.P10123770211566794275

`A337241(n+1)+A028928(A245099(3*n+4))`
-/

namespace A045538.P10123770211566794275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337241 (n + 1) + A028928 (A245099 (3 * n + 4)).toNat

end

end A045538.P10123770211566794275

/-! ## A045538.P10981066649702542350

`A337241(n+1)%Δ[A034314(n)]`
-/

namespace A045538.P10981066649702542350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337241 (n + 1)) (f1 (n + 1) - f1 n)

end

end A045538.P10981066649702542350

/-! ## A045538.P9267848639868816007

`A337241((n+1)^(A243831(n)+1))`
-/

namespace A045538.P9267848639868816007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337241 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A243831 n + 1 : ℤ))).toNat

end

end A045538.P9267848639868816007

/-! ## A045538.P12893004349038465012

`A337241(C(A326872(n+1)+1, n))`
-/

namespace A045538.P12893004349038465012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337241 (Nat.choose (A326872 (n + 1) + 1).toNat n)

end

end A045538.P12893004349038465012

/-! ## A045538.P17803959599489241793

`A337241(n+1)/gcd(2, A173865(3*n+1))`
-/

namespace A045538.P17803959599489241793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337241 (n + 1) : ℚ) / (Int.gcd 2 (A173865 (3 * n + 1)) : ℚ)

end

end A045538.P17803959599489241793

/-!
# A045539: Multiply by 5 and reverse.

The programs for A045539, there is no canonical definition to state claims against.
-/

/-! ## A045539.P44287934237325197

`A004086(5*a(n-1))` with `a(0)=1`
-/

namespace A045539.P44287934237325197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (5 * a (n - 1)).toNat

end

end A045539.P44287934237325197

/-! ## A045539.P4948817234638791568

`A004086(a(n-1)/(1-4/5))` with `a(0)=1`
-/

namespace A045539.P4948817234638791568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (4 : ℚ) / 5))).toNat

end

end A045539.P4948817234638791568

/-! ## A045539.P6596731477017212575

`A004086(A008587(a(n-1)))` with `a(0)=1`
-/

namespace A045539.P6596731477017212575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (A008587 (a (n - 1)).toNat).toNat

end

end A045539.P6596731477017212575

/-! ## A045539.P5477372816921460898

`A004086(A008706(a(n-1)))` with `a(0)=1`
-/

namespace A045539.P5477372816921460898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (A008706 (a (n - 1)).toNat).toNat

end

end A045539.P5477372816921460898

/-! ## A045539.P2631776827478006673

`A004086(floor(5*a(A023443(n))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A045539.P2631776827478006673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (5 * a (A023443 n).toNat).toNat

end

end A045539.P2631776827478006673

/-!
# A045540: Numbers whose square contains an equal number of each digit that it contains.

The programs for A045540, there is no canonical definition to state claims against.
-/

/-! ## A045540.P11809221808917380717

`sqrt(A052046(n+2))`
-/

namespace A045540.P11809221808917380717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052046 (n + 2) : ℝ)

end

end A045540.P11809221808917380717

/-! ## A045540.P3661054985708981772

`root(Δ[A052046(n+1)+a(n-1)], 2)` with `a(0)=2`
-/

namespace A045540.P3661054985708981772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A052046 (n + 1) + f1 (n - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) ^ (1 / (2 : ℝ))

end

end A045540.P3661054985708981772

/-! ## A045540.P7626591856386317677

`root(A052046(n+2), p?[A006464(n)])`
-/

namespace A045540.P7626591856386317677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052046 (n + 2) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A045540.P7626591856386317677

/-! ## A045540.P11165387788798488785

`A000027(root(A052046(n+2), 2))`
-/

namespace A045540.P11165387788798488785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A052046 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A045540.P11165387788798488785

/-! ## A045540.P7740185616946338593

`A056926(∩[A052046(n+2), n²])`
-/

namespace A045540.P7740185616946338593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052046 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A045540.P7740185616946338593

/-! ## A045540.P15324250124301840485

`A056926(A052046(n+1)+Δ[A052046(n+1)])`
-/

namespace A045540.P15324250124301840485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A052046 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A045540.P15324250124301840485

/-! ## A045540.P10274354365602167203

`A018851(A052046(n+1)+Δ[A052046(n+1)])`
-/

namespace A045540.P10274354365602167203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A052046 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A045540.P10274354365602167203

/-! ## A045540.P3307264605362264824

`A162401(A052046(n+2)+A000038(n))`
-/

namespace A045540.P3307264605362264824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (A052046 (n + 2) + A000038 n).toNat

end

end A045540.P3307264605362264824

/-! ## A045540.P15759417843865740071

`A000196(A052046(n+2)+1)`
-/

namespace A045540.P15759417843865740071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A052046 (n + 2) + 1).toNat

end

end A045540.P15759417843865740071

/-!
# A045541: Square previous term and then delete digits of previous term.

The programs for A045541, there is no canonical definition to state claims against.
-/

/-! ## A045541.P5012471128426734658

`A258682(a(n-1))` with `a(0)=2`
-/

namespace A045541.P5012471128426734658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A258682 (a (n - 1)).toNat

end

end A045541.P5012471128426734658

/-!
# A045542: Sub-perfect powers: perfect powers (squares, cubes etc., not including 1) minus 1.

The programs for A045542, there is no canonical definition to state claims against.
-/

/-! ## A045542.P5767707767725277048

`A216765(n+1)-2`
-/

namespace A045542.P5767707767725277048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1) - 2

end

end A045542.P5767707767725277048

/-! ## A045542.P2870960344466381127

`A001597(n+2)-1`
-/

namespace A045542.P2870960344466381127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2) - 1

end

end A045542.P2870960344466381127

/-! ## A045542.P13438835105745261937

`∑[A053289(n+1)]`
-/

namespace A045542.P13438835105745261937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045542.P13438835105745261937

/-! ## A045542.P17020627040098109884

`∑[A076412(n+1)]`
-/

namespace A045542.P17020627040098109884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045542.P17020627040098109884

/-! ## A045542.P3225994942296598852

`abs(A157985(n+2))-1`
-/

namespace A045542.P3225994942296598852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 2)| - 1

end

end A045542.P3225994942296598852

/-! ## A045542.P15454560880564334199

`sqrt(A340588(n+2))-1`
-/

namespace A045542.P15454560880564334199
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340588 (n + 2) : ℝ) - 1

end

end A045542.P15454560880564334199

/-! ## A045542.P1076254766563683716

`Δ[A076408(n+1)]-1`
-/

namespace A045542.P1076254766563683716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A045542.P1076254766563683716

/-! ## A045542.P1388153633491507628

`∑[abs(Δ[A001597(n+1)])]`
-/

namespace A045542.P1388153633491507628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045542.P1388153633491507628

/-! ## A045542.P3876528419611561299

`A000040(n+2)+A075146(n+2)-1`
-/

namespace A045542.P3876528419611561299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A075146 (n + 2) - 1)

end

end A045542.P3876528419611561299

/-! ## A045542.P7221814068011991188

`A076405(n+2)/A025478(n+2)-1`
-/

namespace A045542.P7221814068011991188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076405 (n + 2) : ℚ) / (A025478 (n + 2) : ℚ) - 1

end

end A045542.P7221814068011991188

/-! ## A045542.P15028728034909329899

`gcd(A000038(n+1), A157985(n+2))-1`
-/

namespace A045542.P15028728034909329899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 (n + 1)) (A157985 (n + 2)) : ℤ) - 1

end

end A045542.P15028728034909329899

/-! ## A045542.P4031336653156748166

`lcm(A020985(n+1), A157985(n+2))-1`
-/

namespace A045542.P4031336653156748166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 (n + 1)) (A157985 (n + 2)) : ℤ) - 1

end

end A045542.P4031336653156748166

/-! ## A045542.P6275540868045607607

`A033999(2*n+1)+A001597(n+2)`
-/

namespace A045542.P6275540868045607607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A001597 (n + 2)

end

end A045542.P6275540868045607607

/-! ## A045542.P11499634665831159077

`record[A072103(A304088(n))-1]`
-/

namespace A045542.P11499634665831159077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072103 (A304088 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045542.P11499634665831159077

/-! ## A045542.P13865422998218607671

`eq[0, A175083(n+1)]`
-/

namespace A045542.P13865422998218607671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175083 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045542.P13865422998218607671

/-! ## A045542.P15198745720155751562

`lt[0, A175070(n+1)]`
-/

namespace A045542.P15198745720155751562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045542.P15198745720155751562

/-! ## A045542.P12800106549600634171

`lt[1, A052409(n+1)]`
-/

namespace A045542.P12800106549600634171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045542.P12800106549600634171

/-! ## A045542.P16312431359931589544

`lt[1, A295924(n+1)]`
-/

namespace A045542.P16312431359931589544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045542.P16312431359931589544

/-! ## A045542.P675675980880811557

`comp[A052410(n+1)-1]`
-/

namespace A045542.P675675980880811557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045542.P675675980880811557

/-! ## A045542.P12607787949765125230

`eq[0, A132350(n+1)]`
-/

namespace A045542.P12607787949765125230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045542.P12607787949765125230

/-!
# A045543: 6-fold convolution of A000302 (powers of 4); expansion of 1/(1-4*x)^6.

The programs for A045543, the canonical program `A045543.P14061756675038654160` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045543 has offset 0).

The definition of A045543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045543.P14061756675038654160

`4^n*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045543

/-- `4^n*C(n+5, 5)` -/
def P14061756675038654160.Spec : Prop :=
  ∀ n, (P14061756675038654160.a n : ℤ) = A045543 n

theorem P14061756675038654160.correct : P14061756675038654160.Spec := by
  intro n
  simp only [A045543]

end A045543

/-! ## A045543.P17894623859804344717

`(20/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A045543.P17894623859804344717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (20 / (n : ℚ) + 4) * a (n - 1)

end

end A045543.P17894623859804344717

namespace A045543

/-- `(20/n+4)*a(n-1)` -/
def P17894623859804344717.Spec : Prop :=
  ∀ n, P17894623859804344717.a n = (A045543 n : ℚ)

end A045543

/-! ## A045543.P9429587399325489140

`4^n*∑[∑[∑[∑[n+1]]]]`
-/

namespace A045543.P9429587399325489140
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045543.P9429587399325489140

namespace A045543

/-- `4^n*∑[∑[∑[∑[n+1]]]]` -/
def P9429587399325489140.Spec : Prop :=
  ∀ n, (P9429587399325489140.a n : ℤ) = A045543 n

end A045543

/-! ## A045543.P13662274502864291116

`(A045622(n+1)+A045530(n))/2`
-/

namespace A045543.P13662274502864291116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045622 (n + 1) + A045530 n : ℚ) / 2

end

end A045543.P13662274502864291116

namespace A045543

/-- `(A045622(n+1)+A045530(n))/2` -/
def P13662274502864291116.Spec : Prop :=
  ∀ n, P13662274502864291116.a n = (A045543 n : ℚ)

end A045543

/-! ## A045543.P16316843693962306862

`A038231(A167499(n+4))`
-/

namespace A045543.P16316843693962306862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 (A167499 (n + 4)).toNat

end

end A045543.P16316843693962306862

namespace A045543

/-- `A038231(A167499(n+4))` -/
def P16316843693962306862.Spec : Prop :=
  ∀ n, P16316843693962306862.a n = A045543 n

end A045543

/-! ## A045543.P2131237465150771183

`A038231(eq[5, A002262(n)])`
-/

namespace A045543.P2131237465150771183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045543.P2131237465150771183

namespace A045543

/-- `A038231(eq[5, A002262(n)])` -/
def P2131237465150771183.Spec : Prop :=
  ∀ n, P2131237465150771183.a n = A045543 n

end A045543

/-! ## A045543.P1372419583197674174

`A013611(Δ[A023551(n+1)])`
-/

namespace A045543.P1372419583197674174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (f1 (n + 1) - f1 n).toNat

end

end A045543.P1372419583197674174

namespace A045543

/-- `A013611(Δ[A023551(n+1)])` -/
def P1372419583197674174.Spec : Prop :=
  ∀ n, P1372419583197674174.a n = A045543 n

end A045543

/-! ## A045543.P5326003415711920370

`A013611(A000124(n+6)-7)`
-/

namespace A045543.P5326003415711920370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (A000124 (n + 6) - 7).toNat

end

end A045543.P5326003415711920370

namespace A045543

/-- `A013611(A000124(n+6)-7)` -/
def P5326003415711920370.Spec : Prop :=
  ∀ n, P5326003415711920370.a n = A045543 n

end A045543

/-! ## A045543.P11254495353592176297

`A013611(A005843(n)+A155212(n)+13)`
-/

namespace A045543.P11254495353592176297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (A005843 n + (A155212 n + 13)).toNat

end

end A045543.P11254495353592176297

namespace A045543

/-- `A013611(A005843(n)+A155212(n)+13)` -/
def P11254495353592176297.Spec : Prop :=
  ∀ n, P11254495353592176297.a n = A045543 n

end A045543

/-! ## A045543.P15157454103115745768

`A173155(n)/2^n`
-/

namespace A045543.P15157454103115745768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173155 n : ℚ) / (2 ^ n : ℚ)

end

end A045543.P15157454103115745768

namespace A045543

/-- `A173155(n)/2^n` -/
def P15157454103115745768.Spec : Prop :=
  ∀ n, P15157454103115745768.a n = (A045543 n : ℚ)

end A045543

/-!
# A045544: Odd values of n for which a regular n-gon can be constructed by compass and straightedge.

The programs for A045544, there is no canonical definition to state claims against.
-/

/-! ## A045544.P11575024296114591816

`xor(2*a(n-1), a(n-1))` with `a(0)=3`
-/

namespace A045544.P11575024296114591816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor (2 * a (n - 1)) (a (n - 1))

end

end A045544.P11575024296114591816

/-! ## A045544.P17329940217206584486

`xor(lcm(2, a(n-1)), a(n-1))` with `a(0)=3`
-/

namespace A045544.P17329940217206584486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor (Nat.lcm 2 (a (n - 1))) (a (n - 1))

end

end A045544.P17329940217206584486

/-! ## A045544.P10894154703603069875

`xor(a(n-1)/sqrt(1/4), a(n-1))` with `a(0)=3`
-/

namespace A045544.P10894154703603069875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ))) (a (n - 1))

end

end A045544.P10894154703603069875

/-! ## A045544.P4341502666457557588

`xor(a(n-1)+a(n-1), a(n-1))` with `a(0)=3`
-/

namespace A045544.P4341502666457557588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor (a (n - 1) + a (n - 1)) (a (n - 1))

end

end A045544.P4341502666457557588

/-! ## A045544.P18006627949430048023

`A001317(n+1)`
-/

namespace A045544.P18006627949430048023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (n + 1)

end

end A045544.P18006627949430048023

/-!
# A045545: a(0) = 1; a(n) = Sum_{0 <= k < n and gcd(k,n) = 1} a(k).

The programs for A045545, there is no canonical definition to state claims against.
-/

/-! ## A045545.P15076897797509470657

`A143656(record[abs(1-C(n, 2))])`
-/

namespace A045545.P15076897797509470657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose n 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143656 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045545.P15076897797509470657

/-! ## A045545.P8056239180852196208

`A143656(∑[n]+round(1/acot(n)))`
-/

namespace A045545.P8056239180852196208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143656 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))).toNat

end

end A045545.P8056239180852196208

/-! ## A045545.P5556387945501900221

`A143656(C(n+1, abs(1-n))+n)`
-/

namespace A045545.P5556387945501900221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143656 (Nat.choose (n + 1) |1 - (n : ℤ)|.toNat + n)

end

end A045545.P5556387945501900221

/-! ## A045545.P3106902798319743163

`A143656(ceil(abs(e-∑[n+2]))-n)`
-/

namespace A045545.P3106902798319743163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143656 (⌈|Real.exp 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)|⌉ - (n : ℤ)).toNat

end

end A045545.P3106902798319743163

/-! ## A045545.P1896052829657359039

`A242359(A148171(n))`
-/

namespace A045545.P1896052829657359039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242359 (A148171 n).toNat

end

end A045545.P1896052829657359039

/-!
# A045546: Numbers k such that k^2 + k - 1 is prime.

The programs for A045546, there is no canonical definition to state claims against.
-/

/-! ## A045546.P11728601431722160982

`A094210(n+1)+1`
-/

namespace A045546.P11728601431722160982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 1

end

end A045546.P11728601431722160982

/-! ## A045546.P15520863922604254388

`A002328(n+1)-1`
-/

namespace A045546.P15520863922604254388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 1

end

end A045546.P15520863922604254388

/-! ## A045546.P7573971529284897320

`A076597(n+1)-2`
-/

namespace A045546.P7573971529284897320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1) - 2

end

end A045546.P7573971529284897320

/-! ## A045546.P16936521937872975873

`A089362(n+1)-3`
-/

namespace A045546.P16936521937872975873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 3

end

end A045546.P16936521937872975873

/-! ## A045546.P14044578122007825558

`floor(sqrt(A002327(n+1)))`
-/

namespace A045546.P14044578122007825558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002327 (n + 1))

end

end A045546.P14044578122007825558

/-! ## A045546.P2093314387662914426

`floor(A088502(n+1)/2)`
-/

namespace A045546.P2093314387662914426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088502 (n + 1) : ℚ) / 2⌋

end

end A045546.P2093314387662914426

/-! ## A045546.P16699484334180245877

`(sqrt(A110013(n+1))-1)/2`
-/

namespace A045546.P16699484334180245877
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A110013 (n + 1) : ℝ) - 1) / 2

end

end A045546.P16699484334180245877

/-! ## A045546.P9095885358340603095

`A002327(n+1)%A002328(n+1)`
-/

namespace A045546.P9095885358340603095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002327 (n + 1)) (A002328 (n + 1))

end

end A045546.P9095885358340603095

/-! ## A045546.P9985914688772333250

`A088502(n+1)%A002328(n+1)`
-/

namespace A045546.P9985914688772333250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088502 (n + 1)) (A002328 (n + 1))

end

end A045546.P9985914688772333250

/-! ## A045546.P15551080368537635197

`A014682(A088502(n+1)-1)`
-/

namespace A045546.P15551080368537635197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A088502 (n + 1) - 1).toNat

end

end A045546.P15551080368537635197

/-! ## A045546.P5748494134883770304

`lt[0, A108151(n+1)]+2`
-/

namespace A045546.P5748494134883770304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A045546.P5748494134883770304

/-! ## A045546.P5898105825647661759

`A020725(A094210(n+1))`
-/

namespace A045546.P5898105825647661759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A094210 (n + 1)).toNat

end

end A045546.P5898105825647661759

/-! ## A045546.P13696634725228300553

`eq[2, A278247(n)]+1`
-/

namespace A045546.P13696634725228300553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045546.P13696634725228300553

/-! ## A045546.P9592973834906305813

`eq[1, A289357(n+1)]+1`
-/

namespace A045546.P9592973834906305813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045546.P9592973834906305813

/-! ## A045546.P3986607013956675543

`lt[A272903(n+2), 2]+1`
-/

namespace A045546.P3986607013956675543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272903 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A045546.P3986607013956675543

/-! ## A045546.P3037828403674466485

`A023443(A002328(n+1))`
-/

namespace A045546.P3037828403674466485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A002328 (n + 1)).toNat

end

end A045546.P3037828403674466485

/-! ## A045546.P8244200886398878532

`A023444(A076597(n+1))`
-/

namespace A045546.P8244200886398878532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A076597 (n + 1)).toNat

end

end A045546.P8244200886398878532

/-! ## A045546.P15491478345173343219

`A023445(A089362(n+1))`
-/

namespace A045546.P15491478345173343219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A089362 (n + 1)).toNat

end

end A045546.P15491478345173343219

/-! ## A045546.P2698924792098451923

`A023444(A002328(n+1)+1)`
-/

namespace A045546.P2698924792098451923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A002328 (n + 1) + 1).toNat

end

end A045546.P2698924792098451923

/-! ## A045546.P3087989070999590225

`A023445(A076597(n+1)+1)`
-/

namespace A045546.P3087989070999590225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A076597 (n + 1) + 1).toNat

end

end A045546.P3087989070999590225

/-!
# A045547: Numbers whose factorial has '2' as its final nonzero digit.

The programs for A045547, the canonical program `A045547.P2896272397358188517` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045547 has offset 1).

The definition of A045547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045547.P18410337322149005154

`eq[2, A374015(n)]`
-/

namespace A045547.P18410337322149005154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045547.P18410337322149005154

namespace A045547

/-- `eq[2, A374015(n)]` -/
def P18410337322149005154.Spec : Prop :=
  ∀ n, (P18410337322149005154.a n : ℤ) = A045547 (n + 1)

end A045547

/-! ## A045547.P2896272397358188517

`eq[2, A008904(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A045547

/-- `eq[2, A008904(n)]` -/
def P2896272397358188517.Spec : Prop :=
  ∀ n, (P2896272397358188517.a n : ℤ) = A045547 (n + 1)

theorem P2896272397358188517.correct : P2896272397358188517.Spec := by
  intro n
  simp only [A045547, Nat.add_sub_cancel]

end A045547

/-! ## A045547.P3224726719087583450

`lt[A008904(n+2), 3]+2`
-/

namespace A045547.P3224726719087583450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A045547.P3224726719087583450

namespace A045547

/-- `lt[A008904(n+2), 3]+2` -/
def P3224726719087583450.Spec : Prop :=
  ∀ n, (P3224726719087583450.a n : ℤ) = A045547 (n + 1)

end A045547

/-! ## A045547.P16989901609723947787

`record[(n+1)*(3-A008904(n+1))]`
-/

namespace A045547.P16989901609723947787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A008904 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045547.P16989901609723947787

namespace A045547

/-- `record[(n+1)*(3-A008904(n+1))]` -/
def P16989901609723947787.Spec : Prop :=
  ∀ n, P16989901609723947787.a n = A045547 (n + 1)

end A045547

/-! ## A045547.P5263696056546614301

`lt[xor(2, A008904(n)), A054977(n)]`
-/

namespace A045547.P5263696056546614301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A008904 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045547.P5263696056546614301

namespace A045547

/-- `lt[xor(2, A008904(n)), A054977(n)]` -/
def P5263696056546614301.Spec : Prop :=
  ∀ n, (P5263696056546614301.a n : ℤ) = A045547 (n + 1)

end A045547

/-! ## A045547.P6605419674196405461

`lt[xor(2, A008904(n)), A055642(n)]`
-/

namespace A045547.P6605419674196405461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A008904 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045547.P6605419674196405461

namespace A045547

/-- `lt[xor(2, A008904(n)), A055642(n)]` -/
def P6605419674196405461.Spec : Prop :=
  ∀ n, (P6605419674196405461.a n : ℤ) = A045547 (n + 1)

end A045547

/-! ## A045547.P16409225029216679850

`lt[xor(2, A008904(n)), A136690(n)]`
-/

namespace A045547.P16409225029216679850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A008904 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045547.P16409225029216679850

namespace A045547

/-- `lt[xor(2, A008904(n)), A136690(n)]` -/
def P16409225029216679850.Spec : Prop :=
  ∀ n, (P16409225029216679850.a n : ℤ) = A045547 (n + 1)

end A045547

/-! ## A045547.P8788528345415018386

`lt[xor(2, A008904(n)), A136691(n)]`
-/

namespace A045547.P8788528345415018386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A008904 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045547.P8788528345415018386

namespace A045547

/-- `lt[xor(2, A008904(n)), A136691(n)]` -/
def P8788528345415018386.Spec : Prop :=
  ∀ n, (P8788528345415018386.a n : ℤ) = A045547 (n + 1)

end A045547

/-! ## A045547.P5710718273930071867

`record[val(A000079(n+2), A008904(n+2))]`
-/

namespace A045547.P5710718273930071867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (n + 2)).toNat (A008904 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045547.P5710718273930071867

namespace A045547

/-- `record[val(A000079(n+2), A008904(n+2))]` -/
def P5710718273930071867.Spec : Prop :=
  ∀ n, (P5710718273930071867.a n : ℤ) = A045547 (n + 1)

end A045547

/-!
# A045548: Numbers whose factorial has '4' as its final nonzero digit.

The programs for A045548, the canonical program `A045548.P12713011086801001099` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045548 has offset 1).

The definition of A045548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045548.P12713011086801001099

`eq[4, A374015(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A045548

/-- `eq[4, A374015(n)]` -/
def P12713011086801001099.Spec : Prop :=
  ∀ n, (P12713011086801001099.a n : ℤ) = A045548 (n + 1)

theorem P12713011086801001099.correct : P12713011086801001099.Spec := by
  intro n
  simp only [A045548, Nat.add_sub_cancel]

end A045548

/-! ## A045548.P12424407304891261715

`eq[4, A008904(n)]`
-/

namespace A045548.P12424407304891261715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045548.P12424407304891261715

namespace A045548

/-- `eq[4, A008904(n)]` -/
def P12424407304891261715.Spec : Prop :=
  ∀ n, (P12424407304891261715.a n : ℤ) = A045548 (n + 1)

end A045548

/-! ## A045548.P5981516473703976835

`lt[xor(4, A008904(n)), A054977(n)]`
-/

namespace A045548.P5981516473703976835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A008904 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045548.P5981516473703976835

namespace A045548

/-- `lt[xor(4, A008904(n)), A054977(n)]` -/
def P5981516473703976835.Spec : Prop :=
  ∀ n, (P5981516473703976835.a n : ℤ) = A045548 (n + 1)

end A045548

/-! ## A045548.P1775888509391482571

`lt[xor(4, A008904(n)), A136690(n)]`
-/

namespace A045548.P1775888509391482571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A008904 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045548.P1775888509391482571

namespace A045548

/-- `lt[xor(4, A008904(n)), A136690(n)]` -/
def P1775888509391482571.Spec : Prop :=
  ∀ n, (P1775888509391482571.a n : ℤ) = A045548 (n + 1)

end A045548

/-! ## A045548.P5248760195345059974

`lt[A136694(n), n*cot(A008904(n))]`
-/

namespace A045548.P5248760195345059974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136694 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.cot (A008904 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045548.P5248760195345059974

namespace A045548

/-- `lt[A136694(n), n*cot(A008904(n))]` -/
def P5248760195345059974.Spec : Prop :=
  ∀ n, (P5248760195345059974.a n : ℤ) = A045548 (n + 1)

end A045548

/-! ## A045548.P13205575283051749127

`lt[A136697(n), n*cot(A008904(n))]`
-/

namespace A045548.P13205575283051749127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136697 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.cot (A008904 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045548.P13205575283051749127

namespace A045548

/-- `lt[A136697(n), n*cot(A008904(n))]` -/
def P13205575283051749127.Spec : Prop :=
  ∀ n, (P13205575283051749127.a n : ℤ) = A045548 (n + 1)

end A045548

/-! ## A045548.P4812973471946276986

`lt[(xor(4, A008904(n))*A047667(n+1))², n]`
-/

namespace A045548.P4812973471946276986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 4 (A008904 n) * A047667 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A045548.P4812973471946276986

namespace A045548

/-- `lt[(xor(4, A008904(n))*A047667(n+1))², n]` -/
def P4812973471946276986.Spec : Prop :=
  ∀ n, (P4812973471946276986.a n : ℤ) = A045548 (n + 1)

end A045548

/-! ## A045548.P4300585831603470462

`lt[A136691(n), cot(A008904(n)²)]`
-/

namespace A045548.P4300585831603470462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136691 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (A008904 n ^ 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045548.P4300585831603470462

namespace A045548

/-- `lt[A136691(n), cot(A008904(n)²)]` -/
def P4300585831603470462.Spec : Prop :=
  ∀ n, (P4300585831603470462.a n : ℤ) = A045548 (n + 1)

end A045548

/-! ## A045548.P8174162741429404948

`lt[A136690(3*(n+1)), cot(A008904(n)²)]`
-/

namespace A045548.P8174162741429404948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 (3 * (n + 1))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (A008904 n ^ 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045548.P8174162741429404948

namespace A045548

/-- `lt[A136690(3*(n+1)), cot(A008904(n)²)]` -/
def P8174162741429404948.Spec : Prop :=
  ∀ n, (P8174162741429404948.a n : ℤ) = A045548 (n + 1)

end A045548

/-!
# A045549: Numbers whose factorial has '6' as its final nonzero digit.

The programs for A045549, the canonical program `A045549.P13883420047111945995` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045549 has offset 1).

The definition of A045549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045549.P13883420047111945995

`eq[6, A008904(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A045549

/-- `eq[6, A008904(n)]` -/
def P13883420047111945995.Spec : Prop :=
  ∀ n, (P13883420047111945995.a n : ℤ) = A045549 (n + 1)

theorem P13883420047111945995.correct : P13883420047111945995.Spec := by
  intro n
  simp only [A045549, Nat.add_sub_cancel]

end A045549

/-! ## A045549.P1951584419280476968

`eq[A141044(n), A374015(n)]`
-/

namespace A045549.P1951584419280476968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045549.P1951584419280476968

namespace A045549

/-- `eq[A141044(n), A374015(n)]` -/
def P1951584419280476968.Spec : Prop :=
  ∀ n, (P1951584419280476968.a n : ℤ) = A045549 (n + 1)

end A045549

/-! ## A045549.P4653370451087256187

`eq[A157928(n), A374015(n)]`
-/

namespace A045549.P4653370451087256187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045549.P4653370451087256187

namespace A045549

/-- `eq[A157928(n), A374015(n)]` -/
def P4653370451087256187.Spec : Prop :=
  ∀ n, (P4653370451087256187.a n : ℤ) = A045549 (n + 1)

end A045549

/-! ## A045549.P2876938507527572412

`lt[A136690(n), gcd(3, A008904(n))]`
-/

namespace A045549.P2876938507527572412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A008904 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A045549.P2876938507527572412

namespace A045549

/-- `lt[A136690(n), gcd(3, A008904(n))]` -/
def P2876938507527572412.Spec : Prop :=
  ∀ n, (P2876938507527572412.a n : ℤ) = A045549 (n + 1)

end A045549

/-! ## A045549.P9400150264135096558

`lt[A136694(n), cot(A008904(n))²]`
-/

namespace A045549.P9400150264135096558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136694 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (A008904 n : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045549.P9400150264135096558

namespace A045549

/-- `lt[A136694(n), cot(A008904(n))²]` -/
def P9400150264135096558.Spec : Prop :=
  ∀ n, (P9400150264135096558.a n : ℤ) = A045549 (n + 1)

end A045549

/-! ## A045549.P3009395586068589943

`lt[A136697(n), cot(A008904(n))²]`
-/

namespace A045549.P3009395586068589943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136697 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (A008904 n : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045549.P3009395586068589943

namespace A045549

/-- `lt[A136697(n), cot(A008904(n))²]` -/
def P3009395586068589943.Spec : Prop :=
  ∀ n, (P3009395586068589943.a n : ℤ) = A045549 (n + 1)

end A045549

/-! ## A045549.P3700742559637898723

`lt[A081827(A008904(n)/((-1)^n/2)²), 0]`
-/

namespace A045549.P3700742559637898723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (SequenceMachineLib.roundAway ((A008904 n : ℚ) / (((-1) ^ n : ℚ) / 2) ^ 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A045549.P3700742559637898723

namespace A045549

/-- `lt[A081827(A008904(n)/((-1)^n/2)²), 0]` -/
def P3700742559637898723.Spec : Prop :=
  ∀ n, (P3700742559637898723.a n : ℤ) = A045549 (n + 1)

end A045549

/-! ## A045549.P16880969721926289322

`lt[A136696(n), cot(A008904(n))²]`
-/

namespace A045549.P16880969721926289322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136696 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (A008904 n : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045549.P16880969721926289322

namespace A045549

/-- `lt[A136696(n), cot(A008904(n))²]` -/
def P16880969721926289322.Spec : Prop :=
  ∀ n, (P16880969721926289322.a n : ℤ) = A045549 (n + 1)

end A045549

/-! ## A045549.P1178373180545638780

`lt[A136691(n), cot(A008904(n))²]`
-/

namespace A045549.P1178373180545638780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136691 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (A008904 n : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A045549.P1178373180545638780

namespace A045549

/-- `lt[A136691(n), cot(A008904(n))²]` -/
def P1178373180545638780.Spec : Prop :=
  ∀ n, (P1178373180545638780.a n : ℤ) = A045549 (n + 1)

end A045549

/-!
# A045550: Numbers whose factorial has '8' as its final nonzero digit.

The programs for A045550, the canonical program `A045550.P10362698429326084456` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045550 has offset 1).

The definition of A045550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2510 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045550.P17643152574101400541

`eq[3, A374015(n)]`
-/

namespace A045550.P17643152574101400541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045550.P17643152574101400541

namespace A045550

/-- `eq[3, A374015(n)]` -/
def P17643152574101400541.Spec : Prop :=
  ∀ n, (P17643152574101400541.a n : ℤ) = A045550 (n + 1)

end A045550

/-! ## A045550.P10362698429326084456

`lt[6, A008904(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A045550

/-- `lt[6, A008904(n)]` -/
def P10362698429326084456.Spec : Prop :=
  ∀ n, (P10362698429326084456.a n : ℤ) = A045550 (n + 1)

theorem P10362698429326084456.correct : P10362698429326084456.Spec := by
  intro n
  simp only [A045550, Nat.add_sub_cancel]

end A045550

/-! ## A045550.P7420279738285626578

`eq[8, A008904(round(acot(n)+n))]`
-/

namespace A045550.P7420279738285626578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045550.P7420279738285626578

namespace A045550

/-- `eq[8, A008904(round(acot(n)+n))]` -/
def P7420279738285626578.Spec : Prop :=
  ∀ n, (P7420279738285626578.a n : ℤ) = A045550 (n + 1)

end A045550

/-! ## A045550.P14590601133490579486

`A000027(eq[8, A008904(n)])`
-/

namespace A045550.P14590601133490579486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045550.P14590601133490579486

namespace A045550

/-- `A000027(eq[8, A008904(n)])` -/
def P14590601133490579486.Spec : Prop :=
  ∀ n, P14590601133490579486.a n = A045550 (n + 1)

end A045550

/-! ## A045550.P3626051854056859907

`A028310(eq[8, A008904(n)])`
-/

namespace A045550.P3626051854056859907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045550.P3626051854056859907

namespace A045550

/-- `A028310(eq[8, A008904(n)])` -/
def P3626051854056859907.Spec : Prop :=
  ∀ n, P3626051854056859907.a n = A045550 (n + 1)

end A045550

/-! ## A045550.P10616763709438809054

`A184985(eq[8, A008904(n)])`
-/

namespace A045550.P10616763709438809054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045550.P10616763709438809054

namespace A045550

/-- `A184985(eq[8, A008904(n)])` -/
def P10616763709438809054.Spec : Prop :=
  ∀ n, P10616763709438809054.a n = A045550 (n + 1)

end A045550

/-! ## A045550.P6085381901391249488

`eq[A008904(n), A040012(n)]`
-/

namespace A045550.P6085381901391249488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045550.P6085381901391249488

namespace A045550

/-- `eq[A008904(n), A040012(n)]` -/
def P6085381901391249488.Spec : Prop :=
  ∀ n, (P6085381901391249488.a n : ℤ) = A045550 (n + 1)

end A045550

/-! ## A045550.P2827059482666066487

`eq[A008904(n), A040013(2*n)]`
-/

namespace A045550.P2827059482666066487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040013 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045550.P2827059482666066487

namespace A045550

/-- `eq[A008904(n), A040013(2*n)]` -/
def P2827059482666066487.Spec : Prop :=
  ∀ n, (P2827059482666066487.a n : ℤ) = A045550 (n + 1)

end A045550

/-! ## A045550.P15426335853377507969

`eq[1, A040013(A005843(n))/A008904(n)]`
-/

namespace A045550.P15426335853377507969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040013 (A005843 n).toNat : ℚ) / (A008904 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045550.P15426335853377507969

namespace A045550

/-- `eq[1, A040013(A005843(n))/A008904(n)]` -/
def P15426335853377507969.Spec : Prop :=
  ∀ n, (P15426335853377507969.a n : ℤ) = A045550 (n + 1)

end A045550

/-! ## A045550.P8471044055143425056

`A254667(eq[8, A008904(n)])`
-/

namespace A045550.P8471044055143425056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045550.P8471044055143425056

namespace A045550

/-- `A254667(eq[8, A008904(n)])` -/
def P8471044055143425056.Spec : Prop :=
  ∀ n, P8471044055143425056.a n = A045550 (n + 1)

end A045550

/-! ## A045550.P930453559510842452

`eq[A008904(n), A094326(n+1)]`
-/

namespace A045550.P930453559510842452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045550.P930453559510842452

namespace A045550

/-- `eq[A008904(n), A094326(n+1)]` -/
def P930453559510842452.Spec : Prop :=
  ∀ n, (P930453559510842452.a n : ℤ) = A045550 (n + 1)

end A045550

/-! ## A045550.P15567138035313243527

`eq[A008904(n), A260023(n+1)]`
-/

namespace A045550.P15567138035313243527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045550.P15567138035313243527

namespace A045550

/-- `eq[A008904(n), A260023(n+1)]` -/
def P15567138035313243527.Spec : Prop :=
  ∀ n, (P15567138035313243527.a n : ℤ) = A045550 (n + 1)

end A045550

/-! ## A045550.P12621499460300309939

`eq[A008904(n), A072990(n+2)]`
-/

namespace A045550.P12621499460300309939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072990 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045550.P12621499460300309939

namespace A045550

/-- `eq[A008904(n), A072990(n+2)]` -/
def P12621499460300309939.Spec : Prop :=
  ∀ n, (P12621499460300309939.a n : ℤ) = A045550 (n + 1)

end A045550

/-! ## A045550.P3474058331081617659

`eq[A008904(n), A154041(n+4)]`
-/

namespace A045550.P3474058331081617659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154041 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045550.P3474058331081617659

namespace A045550

/-- `eq[A008904(n), A154041(n+4)]` -/
def P3474058331081617659.Spec : Prop :=
  ∀ n, (P3474058331081617659.a n : ℤ) = A045550 (n + 1)

end A045550

/-! ## A045550.P4001092105524710926

`eq[log2(A008904(n)), A157532(n+1)]`
-/

namespace A045550.P4001092105524710926
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A008904 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045550.P4001092105524710926

namespace A045550

/-- `eq[log2(A008904(n)), A157532(n+1)]` -/
def P4001092105524710926.Spec : Prop :=
  ∀ n, (P4001092105524710926.a n : ℤ) = A045550 (n + 1)

end A045550

/-!
# A045551: Numbers whose factorial has '04' as its final two digits before the trailing zeros.

The programs for A045551, there is no canonical definition to state claims against.
-/

/-! ## A045551.P14211939300318984182

`A237599(A109017(n)+A062572(n+1))`
-/

namespace A045551.P14211939300318984182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237599 (A109017 n + A062572 (n + 1)).toNat

end

end A045551.P14211939300318984182

/-!
# A045556: Numbers whose factorial has '28' as its final two digits before the trailing zeros.

The programs for A045556, there is no canonical definition to state claims against.
-/

/-! ## A045556.P15218104308259540645

`A259934(2*(n+2))+A065775(A105784(n+1))`
-/

namespace A045556.P15218104308259540645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (2 * (n + 2)) + A065775 (A105784 (n + 1)).toNat

end

end A045556.P15218104308259540645

/-! ## A045556.P14125649700364439961

`A255554(A255544(n+1))+A194701(2*(n+2))`
-/

namespace A045556.P14125649700364439961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255554 (A255544 (n + 1)).toNat + A194701 (2 * (n + 2))

end

end A045556.P14125649700364439961

/-!
# A045569: Numbers whose factorial has '92' as its final two digits before the trailing zeros.

The programs for A045569, there is no canonical definition to state claims against.
-/

/-! ## A045569.P8806522933941573555

`A193330(A138288(n))+A051099(n+5)`
-/

namespace A045569.P8806522933941573555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A138288 n).toNat + A051099 (n + 5)

end

end A045569.P8806522933941573555

/-!
# A045570: Numbers whose factorial has '96' as its final two digits before the trailing zeros.

The programs for A045570, there is no canonical definition to state claims against.
-/

/-! ## A045570.P2687521450338497528

`A336751(A104902(n+1)+A000040(n+1))`
-/

namespace A045570.P2687521450338497528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336751 (A104902 (n + 1) + A000040 (n + 1)).toNat

end

end A045570.P2687521450338497528

/-!
# A045571: Numbers that are palindromic, divisible by 11 and have an odd number of digits.

The programs for A045571, there is no canonical definition to state claims against.
-/

/-! ## A045571.P10197102714196710108

`∩[A056525(n+1), A083852(n+1)]`
-/

namespace A045571.P10197102714196710108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045571.P10197102714196710108

/-! ## A045571.P2356596484924548374

`∩[11*n, A056525(n+3)]`
-/

namespace A045571.P2356596484924548374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045571.P2356596484924548374

/-! ## A045571.P282871420454499224

`∩[A056525(n+1), A008593(n)]`
-/

namespace A045571.P282871420454499224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045571.P282871420454499224

/-! ## A045571.P9035152309790172380

`∩[A056525(n+1), A168104(n)]`
-/

namespace A045571.P9035152309790172380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168104 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045571.P9035152309790172380

/-! ## A045571.P2735761505940842215

`∩[A083852(n+1), A282115(n+1)]`
-/

namespace A045571.P2735761505940842215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045571.P2735761505940842215

/-!
# A045572: Numbers that are odd but not divisible by 5.

The programs for A045572, the canonical program `A045572.P10630945542480370183` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045572 has offset 1).

The definition of A045572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045572.P10630945542480370183

`2*(n+1)+2*floor((n-2)/4)+1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045572

/-- `2*(n+1)+2*floor((n-2)/4)+1` -/
def P10630945542480370183.Spec : Prop :=
  ∀ n, P10630945542480370183.a n = A045572 (n + 1)

theorem P10630945542480370183.correct : P10630945542480370183.Spec := by
  intro n
  simp only [A045572, Nat.add_sub_cancel]

end A045572

/-! ## A045572.P14631343645430888334

`lt[5*n, lcm(10, n)]`
-/

namespace A045572.P14631343645430888334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045572.P14631343645430888334

namespace A045572

/-- `lt[5*n, lcm(10, n)]` -/
def P14631343645430888334.Spec : Prop :=
  ∀ n, (P14631343645430888334.a n : ℤ) = A045572 (n + 1)

end A045572

/-! ## A045572.P6320632597239238886

`record[lcm(50, n+5)/50]`
-/

namespace A045572.P6320632597239238886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 50 (n + 5) : ℚ) / 50

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045572.P6320632597239238886

namespace A045572

/-- `record[lcm(50, n+5)/50]` -/
def P6320632597239238886.Spec : Prop :=
  ∀ n, P6320632597239238886.a n = (A045572 (n + 1) : ℚ)

end A045572

/-! ## A045572.P3909245020551971082

`or(1, comp[3*n]+n)`
-/

namespace A045572.P3909245020551971082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A045572.P3909245020551971082

namespace A045572

/-- `or(1, comp[3*n]+n)` -/
def P3909245020551971082.Spec : Prop :=
  ∀ n, (P3909245020551971082.a n : ℤ) = A045572 (n + 1)

end A045572

/-! ## A045572.P11042851067593814280

`comp[n*5^(n%2)]`
-/

namespace A045572.P11042851067593814280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ (n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A045572.P11042851067593814280

namespace A045572

/-- `comp[n*5^(n%2)]` -/
def P11042851067593814280.Spec : Prop :=
  ∀ n, (P11042851067593814280.a n : ℤ) = A045572 (n + 1)

end A045572

/-! ## A045572.P14530070851209661487

`comp[∪[2*n, 5*n]]`
-/

namespace A045572.P14530070851209661487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A045572.P14530070851209661487

namespace A045572

/-- `comp[∪[2*n, 5*n]]` -/
def P14530070851209661487.Spec : Prop :=
  ∀ n, (P14530070851209661487.a n : ℤ) = A045572 (n + 1)

end A045572

/-! ## A045572.P12634700363079290003

`eq[gcd(10, n)+n, n+1]`
-/

namespace A045572.P12634700363079290003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045572.P12634700363079290003

namespace A045572

/-- `eq[gcd(10, n)+n, n+1]` -/
def P12634700363079290003.Spec : Prop :=
  ∀ n, (P12634700363079290003.a n : ℤ) = A045572 (n + 1)

end A045572

/-! ## A045572.P10932966147763174439

`lt[gcd(10*n, n²), 2*n]`
-/

namespace A045572.P10932966147763174439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (10 * n) (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045572.P10932966147763174439

namespace A045572

/-- `lt[gcd(10*n, n²), 2*n]` -/
def P10932966147763174439.Spec : Prop :=
  ∀ n, (P10932966147763174439.a n : ℤ) = A045572 (n + 1)

end A045572

/-! ## A045572.P1368927204584749470

`∑[2*a(∑[n]²%n)]` with `a(0)=1`
-/

namespace A045572.P1368927204584749470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 % n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045572.P1368927204584749470

namespace A045572

/-- `∑[2*a(∑[n]²%n)]` -/
def P1368927204584749470.Spec : Prop :=
  ∀ n, (P1368927204584749470.a n : ℤ) = A045572 (n + 1)

end A045572

/-! ## A045572.P17964410093265337641

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A045572.P17964410093265337641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045572.P17964410093265337641

namespace A045572

/-- `∑[floor(a(n-4))]` -/
def P17964410093265337641.Spec : Prop :=
  ∀ n, (P17964410093265337641.a n : ℤ) = A045572 (n + 1)

end A045572

/-! ## A045572.P9960581288467990210

`∑[a(n-4)%5]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=2, a(4)=2`
-/

namespace A045572.P9960581288467990210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 2, 2] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045572.P9960581288467990210

namespace A045572

/-- `∑[a(n-4)%5]` -/
def P9960581288467990210.Spec : Prop :=
  ∀ n, (P9960581288467990210.a n : ℤ) = A045572 (n + 1)

end A045572

/-! ## A045572.P13412118773143761223

`record[2*(n+1)-gcd(5, 2-n)]`
-/

namespace A045572.P13412118773143761223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (Int.gcd 5 (2 - (n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045572.P13412118773143761223

namespace A045572

/-- `record[2*(n+1)-gcd(5, 2-n)]` -/
def P13412118773143761223.Spec : Prop :=
  ∀ n, P13412118773143761223.a n = A045572 (n + 1)

end A045572

/-! ## A045572.P5790359823331781844

`record[gcd(2*n+1, val(n+3, 5))]`
-/

namespace A045572.P5790359823331781844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n + 1) (SequenceMachineLib.valuation (n + 3) 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045572.P5790359823331781844

namespace A045572

/-- `record[gcd(2*n+1, val(n+3, 5))]` -/
def P5790359823331781844.Spec : Prop :=
  ∀ n, (P5790359823331781844.a n : ℤ) = A045572 (n + 1)

end A045572

/-! ## A045572.P5133104057755789628

`record[2*n+1-val((n+3)², 5)]`
-/

namespace A045572.P5133104057755789628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.valuation ((n + 3) ^ 2) 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045572.P5133104057755789628

namespace A045572

/-- `record[2*n+1-val((n+3)², 5)]` -/
def P5133104057755789628.Spec : Prop :=
  ∀ n, P5133104057755789628.a n = A045572 (n + 1)

end A045572

/-! ## A045572.P17156761476429884157

`∑[ogf((1+2x+4x^2+2x^3+x^4)/(1-x^4))]`
-/

namespace A045572.P17156761476429884157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4, 2, 1] [1, 0, 0, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045572.P17156761476429884157

namespace A045572

/-- `∑[ogf((1+2x+4x^2+2x^3+x^4)/(1-x^4))]` -/
def P17156761476429884157.Spec : Prop :=
  ∀ n, P17156761476429884157.a n = A045572 (n + 1)

end A045572

/-! ## A045572.P5098701836672565931

`ceil(or(3, n-2)/2+2*n+1)`
-/

namespace A045572.P5098701836672565931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 3 ((n : ℤ) - 2) : ℚ) / 2 + (2 * n + 1 : ℚ)⌉

end

end A045572.P5098701836672565931

namespace A045572

/-- `ceil(or(3, n-2)/2+2*n+1)` -/
def P5098701836672565931.Spec : Prop :=
  ∀ n, P5098701836672565931.a n = A045572 (n + 1)

end A045572

/-! ## A045572.P1290494941936208323

`record[(2*n+1)*(1-val(n+3, 5))]`
-/

namespace A045572.P1290494941936208323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (1 - (SequenceMachineLib.valuation (n + 3) 5 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045572.P1290494941936208323

namespace A045572

/-- `record[(2*n+1)*(1-val(n+3, 5))]` -/
def P1290494941936208323.Spec : Prop :=
  ∀ n, P1290494941936208323.a n = A045572 (n + 1)

end A045572

/-! ## A045572.P17349577974282703365

`record[(2*n+1)/(val(n+3, 5)+1)]`
-/

namespace A045572.P17349577974282703365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (SequenceMachineLib.valuation (n + 3) 5 + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045572.P17349577974282703365

namespace A045572

/-- `record[(2*n+1)/(val(n+3, 5)+1)]` -/
def P17349577974282703365.Spec : Prop :=
  ∀ n, P17349577974282703365.a n = (A045572 (n + 1) : ℚ)

end A045572

/-! ## A045572.P6396975907915967323

`(5*(n+1)+(3*(n+1)+2)%4-4)/2`
-/

namespace A045572.P6396975907915967323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((5 * (n + 1) + (3 * (n + 1) + 2) % 4 : ℕ) : ℤ) - 4 : ℚ) / 2

end

end A045572.P6396975907915967323

namespace A045572

/-- `(5*(n+1)+(3*(n+1)+2)%4-4)/2` -/
def P6396975907915967323.Spec : Prop :=
  ∀ n, P6396975907915967323.a n = (A045572 (n + 1) : ℚ)

end A045572

/-!
# A045573: Still numbers when turned upside down (only uses digits 0125689, with no final 0's).

The programs for A045573, there is no canonical definition to state claims against.
-/

/-! ## A045573.P5535713349789180647

`eq[A118759(n), A222242(A222212(n))]`
-/

namespace A045573.P5535713349789180647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045573.P5535713349789180647

/-! ## A045573.P1165477931930808228

`eq[A118759(n), A222234(A222216(n))]`
-/

namespace A045573.P1165477931930808228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045573.P1165477931930808228

/-! ## A045573.P2645946482265158515

`eq[A222216(n), A292579(A222234(n))]`
-/

namespace A045573.P2645946482265158515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045573.P2645946482265158515

/-! ## A045573.P11408866577425648732

`eq[n, A222242(A222212(n))]%A215800(2*(n+1))`
-/

namespace A045573.P11408866577425648732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A215800 (2 * (n + 1)))

end

end A045573.P11408866577425648732

/-! ## A045573.P9793772053929650462

`A263104(A248474(n+1))`
-/

namespace A045573.P9793772053929650462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263104 (A248474 (n + 1)).toNat

end

end A045573.P9793772053929650462

/-!
# A045574: Numbers that are still numbers when turned upside down (uses only digits 0, 1, 6, 8, 9 with no final 0's).

The programs for A045574, the canonical program `A045574.P18400524519974954139` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045574 has offset 1).

The definition of A045574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045574.P14282558833648250735

`∪[A000787(n+1), A272264(n+1)]`
-/

namespace A045574.P14282558833648250735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045574.P14282558833648250735

namespace A045574

/-- `∪[A000787(n+1), A272264(n+1)]` -/
def P14282558833648250735.Spec : Prop :=
  ∀ n, (P14282558833648250735.a n : ℤ) = A045574 (n + 1)

end A045574

/-! ## A045574.P18400524519974954139

`A054047(record[n*A011558(n)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A045574

/-- `A054047(record[n*A011558(n)])` -/
def P18400524519974954139.Spec : Prop :=
  ∀ n, P18400524519974954139.a n = A045574 (n + 1)

theorem P18400524519974954139.correct : P18400524519974954139.Spec := by
  intro n
  simp only [A045574, Nat.add_sub_cancel]

end A045574

/-! ## A045574.P12633747065673664073

`A054047(record[n/A010122(n)])`
-/

namespace A045574.P12633747065673664073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A010122 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A045574.P12633747065673664073

namespace A045574

/-- `A054047(record[n/A010122(n)])` -/
def P12633747065673664073.Spec : Prop :=
  ∀ n, P12633747065673664073.a n = A045574 (n + 1)

end A045574

/-! ## A045574.P3563598071772684931

`∩[A342851(n+1), A054047(n)]`
-/

namespace A045574.P3563598071772684931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045574.P3563598071772684931

namespace A045574

/-- `∩[A342851(n+1), A054047(n)]` -/
def P3563598071772684931.Spec : Prop :=
  ∀ n, (P3563598071772684931.a n : ℤ) = A045574 (n + 1)

end A045574

/-! ## A045574.P12629017538180162725

`record[A222250(A222232(n*A011558(n)))]`
-/

namespace A045574.P12629017538180162725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222232 ((n : ℤ) * A011558 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045574.P12629017538180162725

namespace A045574

/-- `record[A222250(A222232(n*A011558(n)))]` -/
def P12629017538180162725.Spec : Prop :=
  ∀ n, P12629017538180162725.a n = A045574 (n + 1)

end A045574

/-! ## A045574.P8634121914962080862

`record[A004179(A084984(n+1)*A097325(n))]`
-/

namespace A045574.P8634121914962080862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A084984 (n + 1) * A097325 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045574.P8634121914962080862

namespace A045574

/-- `record[A004179(A084984(n+1)*A097325(n))]` -/
def P8634121914962080862.Spec : Prop :=
  ∀ n, P8634121914962080862.a n = A045574 (n + 1)

end A045574

/-! ## A045574.P17606660875422036253

`A222221(record[A001744(n+1)*A011558(n)])`
-/

namespace A045574.P17606660875422036253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1) * A011558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045574.P17606660875422036253

namespace A045574

/-- `A222221(record[A001744(n+1)*A011558(n)])` -/
def P17606660875422036253.Spec : Prop :=
  ∀ n, P17606660875422036253.a n = A045574 (n + 1)

end A045574

/-! ## A045574.P5065287035776898055

`A222220(record[A011558(n)*A072960(n+1)])`
-/

namespace A045574.P5065287035776898055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n * A072960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045574.P5065287035776898055

namespace A045574

/-- `A222220(record[A011558(n)*A072960(n+1)])` -/
def P5065287035776898055.Spec : Prop :=
  ∀ n, P5065287035776898055.a n = A045574 (n + 1)

end A045574

/-!
# A045576: Numbers k that divide 3^k + 2^k.

The programs for A045576, there is no canonical definition to state claims against.
-/

/-! ## A045576.P8504946053170055233

`record[A000265(A045591(n+1))]`
-/

namespace A045576.P8504946053170055233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A045591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045576.P8504946053170055233

/-! ## A045576.P1545034206754958093

`filter[A045602(n+1), A187074(#)]`
-/

namespace A045576.P1545034206754958093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A045576.P1545034206754958093

/-! ## A045576.P1158389499829960617

`filter[A045602(n+1), A359374(#)]`
-/

namespace A045576.P1158389499829960617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A045576.P1158389499829960617

/-! ## A045576.P15959884379382935794

`filter[A045591(n+1), A373156(#)]`
-/

namespace A045576.P15959884379382935794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A045576.P15959884379382935794

/-! ## A045576.P18300390826884115508

`filter[A045602(n+1), A373155(#)]`
-/

namespace A045576.P18300390826884115508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A045576.P18300390826884115508

/-!
# A045577: Numbers k that divide 4^k + 2^k or 8^k + 4^k.

The programs for A045577, there is no canonical definition to state claims against.
-/

/-! ## A045577.P17769466155451796666

`eq[A066606(n+1)%(n+1), floor(n/2^val(n+1, 2))]+1`
-/

namespace A045577.P17769466155451796666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066606 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045577.P17769466155451796666

/-! ## A045577.P4703929536390148461

`eq[A025480(n), A062173(n+1)]+1`
-/

namespace A045577.P4703929536390148461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045577.P4703929536390148461

/-! ## A045577.P9914531450747840011

`eq[A015910(n+1), A153733(n)]+1`
-/

namespace A045577.P9914531450747840011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045577.P9914531450747840011

/-! ## A045577.P17542420808658567564

`record[A006519(n+1)*A069226(n+1)]`
-/

namespace A045577.P17542420808658567564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A069226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045577.P17542420808658567564

/-! ## A045577.P8186275347454326513

`eq[A066602(n+1), A082493(n+1)]+1`
-/

namespace A045577.P8186275347454326513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082493 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045577.P8186275347454326513

/-!
# A045578: Numbers k that divide 5^k + 2^k.

The programs for A045578, there is no canonical definition to state claims against.
-/

/-! ## A045578.P17966611425505423668

`filter[A045594(n+1), A373156(#)]`
-/

namespace A045578.P17966611425505423668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A045578.P17966611425505423668

/-! ## A045578.P10618658592840267787

`filter[A045594(n+1), A374134(#)]`
-/

namespace A045578.P10618658592840267787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A045578.P10618658592840267787

/-! ## A045578.P12286017004580822628

`filter[A045594(n+1), A093719(#)]`
-/

namespace A045578.P12286017004580822628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A045578.P12286017004580822628

/-!
# A045579: Numbers k that divide 6^k + 2^k.

The programs for A045579, there is no canonical definition to state claims against.
-/

/-! ## A045579.P14092692444969403915

`eq[A094918(n+1), A153733(n)]+1`
-/

namespace A045579.P14092692444969403915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045579.P14092692444969403915

/-!
# A045580: Numbers k that divide 7^k + 2^k.

The programs for A045580, there is no canonical definition to state claims against.
-/

/-! ## A045580.P17260407825469718262

`eq[A066438(n+1), A082493(n+1)]+1`
-/

namespace A045580.P17260407825469718262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082493 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045580.P17260407825469718262

/-! ## A045580.P11393624737397438

`record[gcd(n, (5^n+7^n)/2)]`
-/

namespace A045580.P11393624737397438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (SequenceMachineLib.roundAway ((5 ^ n + 7 ^ n : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045580.P11393624737397438

/-!
# A045581: Numbers k that divide 8^k + 2^k.

The programs for A045581, there is no canonical definition to state claims against.
-/

/-! ## A045581.P1044248746308026323

`record[A273943(A045577(n+1))]`
-/

namespace A045581.P1044248746308026323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A045577 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045581.P1044248746308026323

/-! ## A045581.P16457101686635043158

`record[A326139(A045577(n+2))]`
-/

namespace A045581.P16457101686635043158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A045577 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045581.P16457101686635043158

/-! ## A045581.P170035078342741180

`eq[A025480(n), A062173(2*(n+1))]+1`
-/

namespace A045581.P170035078342741180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045581.P170035078342741180

/-! ## A045581.P7995042637556131867

`record[A078898(A045577(n+3))]`
-/

namespace A045581.P7995042637556131867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A045577 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045581.P7995042637556131867

/-! ## A045581.P6332734201604649218

`record[A057979(A045577(n+1)+1)]`
-/

namespace A045581.P6332734201604649218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A045577 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045581.P6332734201604649218

/-!
# A045583: Numbers k that divide 10^k + 2^k.

The programs for A045583, there is no canonical definition to state claims against.
-/

/-! ## A045583.P16978547836211958229

`eq[floor(n/(xor(n, n+1)+1)), A094920(n+1)]+1`
-/

namespace A045583.P16978547836211958229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045583.P16978547836211958229

/-! ## A045583.P14513418015068006372

`eq[A025480(n), A094920(n+1)]+1`
-/

namespace A045583.P14513418015068006372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045583.P14513418015068006372

/-!
# A045584: Numbers k that divide 4^k + 3^k.

The programs for A045584, there is no canonical definition to state claims against.
-/

/-! ## A045584.P10133075238857817380

`∩[or(1, A045601(n+1)), A045601(n+1)]`
-/

namespace A045584.P10133075238857817380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045601 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045584.P10133075238857817380

/-! ## A045584.P18067758274752731140

`record[A093178(A045601(n+1))]`
-/

namespace A045584.P18067758274752731140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A045601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045584.P18067758274752731140

/-! ## A045584.P9763088831827416887

`filter[A045601(n+1), A093719(#)]`
-/

namespace A045584.P9763088831827416887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A045584.P9763088831827416887

/-! ## A045584.P14313587385595060797

`filter[A045601(n+1), A162289(#)]`
-/

namespace A045584.P14313587385595060797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A045584.P14313587385595060797

/-!
# A045585: Numbers k that divide 5^k + 3^k.

The programs for A045585, there is no canonical definition to state claims against.
-/

/-! ## A045585.P7105197778785357515

`filter[A045603(n+1), A359374(#)]`
-/

namespace A045585.P7105197778785357515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A045585.P7105197778785357515

/-! ## A045585.P9567404381617797914

`filter[A045603(n+1), A359550(#)]`
-/

namespace A045585.P9567404381617797914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A045585.P9567404381617797914

/-! ## A045585.P7018218377745099065

`filter[A045603(n+1), A359820(#)]`
-/

namespace A045585.P7018218377745099065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A045585.P7018218377745099065

/-!
# A045589: Numbers k that divide 10^k + 3^k.

The programs for A045589, there is no canonical definition to state claims against.
-/

/-! ## A045589.P537985608629592447

`A064989(A045585(n+2))`
-/

namespace A045589.P537985608629592447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A045585 (n + 2)).toNat

end

end A045589.P537985608629592447

/-!
# A045590: Numbers k that divide 5^k + 4^k.

The programs for A045590, there is no canonical definition to state claims against.
-/

/-! ## A045590.P13300365083160041430

`record[A045608(n+1)%2*A045608(n+1)]`
-/

namespace A045590.P13300365083160041430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045608 (n + 1)) 2 * A045608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045590.P13300365083160041430

/-! ## A045590.P6093828868760880959

`record[A000265(A045608(n+1))]`
-/

namespace A045590.P6093828868760880959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A045608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045590.P6093828868760880959

/-! ## A045590.P15106561817305663835

`filter[A045608(n+1), A374134(#)]`
-/

namespace A045590.P15106561817305663835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A045590.P15106561817305663835

/-! ## A045590.P7105501899700582845

`filter[A045608(n+1), A093719(#)]`
-/

namespace A045590.P7105501899700582845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A045590.P7105501899700582845

/-! ## A045590.P10247729958933486926

`filter[A045608(n+1), A356172(#)]`
-/

namespace A045590.P10247729958933486926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A045590.P10247729958933486926

/-!
# A045591: Numbers k that divide 6^k + 4^k.

The programs for A045591, there is no canonical definition to state claims against.
-/

/-! ## A045591.P17539158394958794076

`record[gcd(n, (4^n+6^n)/2)]`
-/

namespace A045591.P17539158394958794076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (SequenceMachineLib.roundAway ((4 ^ n + 6 ^ n : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045591.P17539158394958794076

/-! ## A045591.P15762339076221119573

`eq[1, A030101(n)^A284993(n)]`
-/

namespace A045591.P15762339076221119573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030101 n : ℚ) ^ (A284993 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045591.P15762339076221119573

/-! ## A045591.P14581753839528870074

`record[and(A156070(n), A181672(n+1))]`
-/

namespace A045591.P14581753839528870074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156070 n) (A181672 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045591.P14581753839528870074

/-! ## A045591.P5263156298317195574

`record[and(A206762(n+2), A320388(n))]`
-/

namespace A045591.P5263156298317195574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206762 (n + 2)) (A320388 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045591.P5263156298317195574

/-! ## A045591.P15989735515722468563

`A270613(n+1)+A124010(A022558(n))`
-/

namespace A045591.P15989735515722468563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (n + 1) + A124010 (A022558 n).toNat

end

end A045591.P15989735515722468563

/-!
# A045592: Numbers k that divide 7^k + 4^k.

The programs for A045592, there is no canonical definition to state claims against.
-/

/-! ## A045592.P10269071775556022334

`A141310(eq[A015910(n+1), A116609(n+1)])`
-/

namespace A045592.P10269071775556022334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045592.P10269071775556022334

/-!
# A045593: Numbers k that divide 9^k + 4^k.

The programs for A045593, there is no canonical definition to state claims against.
-/

/-! ## A045593.P13348429599111839320

`A000265(A156339(n)-A279115(n+1))`
-/

namespace A045593.P13348429599111839320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A156339 n - A279115 (n + 1)).toNat

end

end A045593.P13348429599111839320

/-!
# A045594: Numbers k that divide 10^k + 4^k.

The programs for A045594, there is no canonical definition to state claims against.
-/

/-! ## A045594.P13516420345127758974

`record[gcd(n, A081343(n))]`
-/

namespace A045594.P13516420345127758974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A081343 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045594.P13516420345127758974

/-! ## A045594.P4883803662726561139

`lt[A028310(n), A069177(A080741(n))]`
-/

namespace A045594.P4883803662726561139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069177 (A080741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045594.P4883803662726561139

/-!
# A045596: Numbers k that divide 7^k + 5^k.

The programs for A045596, there is no canonical definition to state claims against.
-/

/-! ## A045596.P14117309868137692950

`record[gcd(A028310(n), A121199(n))]`
-/

namespace A045596.P14117309868137692950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A121199 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045596.P14117309868137692950

/-!
# A045597: Numbers k that divide 8^k + 5^k.

The programs for A045597, there is no canonical definition to state claims against.
-/

/-! ## A045597.P76361828570164505

`A014956(eq[∏[2-n²%3]-1, ∑[2^n]%(n+1)])`
-/

namespace A045597.P76361828570164505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014956 (SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℤ)) n)

end

end A045597.P76361828570164505

/-! ## A045597.P9427031305346568632

`A014956(eq[1, A060592(n)])`
-/

namespace A045597.P9427031305346568632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014956 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045597.P9427031305346568632

/-!
# A045598: Numbers k that divide 9^k + 5^k.

The programs for A045598, there is no canonical definition to state claims against.
-/

/-! ## A045598.P11592133638069348384

`∩[A394628(n+1), A037455(n)]`
-/

namespace A045598.P11592133638069348384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045598.P11592133638069348384

/-!
# A045599: Numbers k that divide 10^k + 5^k.

The programs for A045599, there is no canonical definition to state claims against.
-/

/-! ## A045599.P14407196607162990861

`∩[A014957(n+1), A277620(n+1)]`
-/

namespace A045599.P14407196607162990861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045599.P14407196607162990861

/-! ## A045599.P5597423365642749709

`∩[A045602(n+1), A277620(n+1)]`
-/

namespace A045599.P5597423365642749709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045599.P5597423365642749709

/-! ## A045599.P9194342143708403040

`∩[A045602(n+1), A316468(n+1)]`
-/

namespace A045599.P9194342143708403040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045599.P9194342143708403040

/-! ## A045599.P14663538689449580058

`∩[A045602(n+1), A356935(n+1)]`
-/

namespace A045599.P14663538689449580058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045599.P14663538689449580058

/-! ## A045599.P17313384994168916869

`∩[A045602(n+1), A368603(n+1)]`
-/

namespace A045599.P17313384994168916869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045599.P17313384994168916869

