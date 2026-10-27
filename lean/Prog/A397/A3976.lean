import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A397601: Triangle read by rows: T(n, k) = T(n, k+1) + T(n-1, k) with initial values T(n, n) = A005043(n).

The programs for A397601, there is no canonical definition to state claims against.
-/

/-! ## A397601.P17060205261181920002

`A059346(A061579(n))`
-/

namespace A397601.P17060205261181920002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A061579 n).toNat

end

end A397601.P17060205261181920002

/-!
# A397602: Row sums of A397603.

The programs for A397602, there is no canonical definition to state claims against.
-/

/-! ## A397602.P4345065758412798893

`A397419(n+1)-A005043(n+1)*A005043(n+1)`
-/

namespace A397602.P4345065758412798893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397419 (n + 1) - A005043 (n + 1) * A005043 (n + 1)

end

end A397602.P4345065758412798893

/-! ## A397602.P18111430333823132790

`A122620(A390217(n))`
-/

namespace A397602.P18111430333823132790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (A390217 n).toNat

end

end A397602.P18111430333823132790

/-!
# A397606: a(n) = denominator of A069835(n)/2^n.

The programs for A397606, the canonical program `A397606.P554892582912637438` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397606 has offset 0).

The definition of A397606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397606.P554892582912637438

`gcd(2, ∏{p}[n, #])*A011782(A011371(n))`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A397606

/-- `gcd(2, ∏{p}[n, #])*A011782(A011371(n))` -/
def P554892582912637438.Spec : Prop :=
  ∀ n, P554892582912637438.a n = A397606 n

theorem P554892582912637438.correct : P554892582912637438.Spec := by
  intro n
  simp only [A397606]

end A397606

/-! ## A397606.P13833127905040683691

`gcd(A000079(n)², A160602(n))`
-/

namespace A397606.P13833127905040683691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n ^ 2) (A160602 n)

end

end A397606.P13833127905040683691

namespace A397606

/-- `gcd(A000079(n)², A160602(n))` -/
def P13833127905040683691.Spec : Prop :=
  ∀ n, (P13833127905040683691.a n : ℤ) = A397606 n

end A397606

/-! ## A397606.P16187698566943069728

`A000079(val(A160618(n), 2))`
-/

namespace A397606.P16187698566943069728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A160618 n).toNat 2)

end

end A397606.P16187698566943069728

namespace A397606

/-- `A000079(val(A160618(n), 2))` -/
def P16187698566943069728.Spec : Prop :=
  ∀ n, P16187698566943069728.a n = A397606 n

end A397606

/-! ## A397606.P16858584132704465824

`A317832(A074323(n+1))`
-/

namespace A397606.P16858584132704465824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317832 (A074323 (n + 1)).toNat

end

end A397606.P16858584132704465824

namespace A397606

/-- `A317832(A074323(n+1))` -/
def P16858584132704465824.Spec : Prop :=
  ∀ n, P16858584132704465824.a n = A397606 n

end A397606

/-! ## A397606.P2616549219134406899

`A317832(A164073(n+1))`
-/

namespace A397606.P2616549219134406899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317832 (A164073 (n + 1)).toNat

end

end A397606.P2616549219134406899

namespace A397606

/-- `A317832(A164073(n+1))` -/
def P2616549219134406899.Spec : Prop :=
  ∀ n, P2616549219134406899.a n = A397606 n

end A397606

/-!
# A397615: a(n) = prime(floor(n*sqrt(5))).

The programs for A397615, the canonical program `A397615.P2609637902578900733` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397615 has offset 1).

The definition of A397615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(5)))` (program `A397615.P2609637902578900733`, by `A397615.P2609637902578900733.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397615.P2609637902578900733

`A000040(floor((n+1)*sqrt(5)))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397615

/-- `A000040(floor((n+1)*sqrt(5)))` -/
def P2609637902578900733.Spec : Prop :=
  ∀ n, P2609637902578900733.a n = A397615 (n + 1)

theorem P2609637902578900733.correct : P2609637902578900733.Spec := by
  intro n
  simp only [A397615, Nat.add_sub_cancel]

end A397615

/-! ## A397615.P13045808474031281948

`A065091(A190511(n+1))`
-/

namespace A397615.P13045808474031281948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A190511 (n + 1)).toNat

end

end A397615.P13045808474031281948

namespace A397615

/-- `A065091(A190511(n+1))` -/
def P13045808474031281948.Spec : Prop :=
  ∀ n, P13045808474031281948.a n = A397615 (n + 1)

end A397615

/-! ## A397615.P16480675416694025618

`A008578(A198082(n+1))`
-/

namespace A397615.P16480675416694025618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A198082 (n + 1)).toNat

end

end A397615.P16480675416694025618

namespace A397615

/-- `A008578(A198082(n+1))` -/
def P16480675416694025618.Spec : Prop :=
  ∀ n, P16480675416694025618.a n = A397615 (n + 1)

end A397615

/-! ## A397615.P2644168769660636553

`A008578(A022839(n+1)+1)`
-/

namespace A397615.P2644168769660636553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A022839 (n + 1) + 1).toNat

end

end A397615.P2644168769660636553

namespace A397615

/-- `A008578(A022839(n+1)+1)` -/
def P2644168769660636553.Spec : Prop :=
  ∀ n, P2644168769660636553.a n = A397615 (n + 1)

end A397615

/-! ## A397615.P17236898162874768987

`A052147(A022839(n+1))-A020639(2*(n+2))`
-/

namespace A397615.P17236898162874768987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (A022839 (n + 1)).toNat - A020639 (2 * (n + 2))

end

end A397615.P17236898162874768987

namespace A397615

/-- `A052147(A022839(n+1))-A020639(2*(n+2))` -/
def P17236898162874768987.Spec : Prop :=
  ∀ n, P17236898162874768987.a n = A397615 (n + 1)

end A397615

/-!
# A397616: a(n) = prime(floor(n*r)), where r = (5 + sqrt(5))/4.

The programs for A397616, the canonical program `A397616.P364916226218916289` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397616 has offset 1).

The definition of A397616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397616.P364916226218916289

`A000040(comp[floor(n*sqrt(5))])`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397616

/-- `A000040(comp[floor(n*sqrt(5))])` -/
def P364916226218916289.Spec : Prop :=
  ∀ n, P364916226218916289.a n = A397616 (n + 1)

theorem P364916226218916289.correct : P364916226218916289.Spec := by
  intro n
  simp only [A397616, Nat.add_sub_cancel]

end A397616

/-! ## A397616.P1488475163788359126

`A008578(A108598(n+1)+1)`
-/

namespace A397616.P1488475163788359126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A108598 (n + 1) + 1).toNat

end

end A397616.P1488475163788359126

namespace A397616

/-- `A008578(A108598(n+1)+1)` -/
def P1488475163788359126.Spec : Prop :=
  ∀ n, P1488475163788359126.a n = A397616 (n + 1)

end A397616

/-! ## A397616.P3392525100296782430

`A109763(A054770(n+1))`
-/

namespace A397616.P3392525100296782430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A054770 (n + 1)).toNat

end

end A397616.P3392525100296782430

namespace A397616

/-- `A109763(A054770(n+1))` -/
def P3392525100296782430.Spec : Prop :=
  ∀ n, P3392525100296782430.a n = A397616 (n + 1)

end A397616

/-! ## A397616.P7494595083386393361

`A162753(A003231(n+1))`
-/

namespace A397616.P7494595083386393361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A003231 (n + 1)).toNat

end

end A397616.P7494595083386393361

namespace A397616

/-- `A162753(A003231(n+1))` -/
def P7494595083386393361.Spec : Prop :=
  ∀ n, P7494595083386393361.a n = A397616 (n + 1)

end A397616

/-! ## A397616.P11860133201983303806

`A212300(A391370(n+3)+A045946(n))`
-/

namespace A397616.P11860133201983303806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212300 (A391370 (n + 3) + A045946 n).toNat

end

end A397616.P11860133201983303806

namespace A397616

/-- `A212300(A391370(n+3)+A045946(n))` -/
def P11860133201983303806.Spec : Prop :=
  ∀ n, P11860133201983303806.a n = A397616 (n + 1)

end A397616

/-!
# A397617: a(n) = prime(floor(n*e)).

The programs for A397617, the canonical program `A397617.P4642029768052025097` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397617 has offset 1).

The definition of A397617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*e))` (program `A397617.P4642029768052025097`, by `A397617.P4642029768052025097.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397617.P4642029768052025097

`A000040(floor((n+1)*e))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397617

/-- `A000040(floor((n+1)*e))` -/
def P4642029768052025097.Spec : Prop :=
  ∀ n, P4642029768052025097.a n = A397617 (n + 1)

theorem P4642029768052025097.correct : P4642029768052025097.Spec := by
  intro n
  simp only [A397617, Nat.add_sub_cancel]

end A397617

/-! ## A397617.P5777987739488323423

`A065091(A184589(n+1))`
-/

namespace A397617.P5777987739488323423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A184589 (n + 1)).toNat

end

end A397617.P5777987739488323423

namespace A397617

/-- `A065091(A184589(n+1))` -/
def P5777987739488323423.Spec : Prop :=
  ∀ n, P5777987739488323423.a n = A397617 (n + 1)

end A397617

/-! ## A397617.P1097022691099994661

`A008578(A121384(n+1))`
-/

namespace A397617.P1097022691099994661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A121384 (n + 1)).toNat

end

end A397617.P1097022691099994661

namespace A397617

/-- `A008578(A121384(n+1))` -/
def P1097022691099994661.Spec : Prop :=
  ∀ n, P1097022691099994661.a n = A397617 (n + 1)

end A397617

/-! ## A397617.P11960807368011351824

`A162753(A276853(n+1))`
-/

namespace A397617.P11960807368011351824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A276853 (n + 1)).toNat

end

end A397617.P11960807368011351824

namespace A397617

/-- `A162753(A276853(n+1))` -/
def P11960807368011351824.Spec : Prop :=
  ∀ n, P11960807368011351824.a n = A397617 (n + 1)

end A397617

/-!
# A397618: a(n) = prime(floor(n*e/(e-1))).

The programs for A397618, the canonical program `A397618.P2373068123337456110` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397618 has offset 1).

The definition of A397618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*e/(e-1)))` (program `A397618.P2373068123337456110`, by `A397618.P2373068123337456110.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397618.P2373068123337456110

`A000040(floor((n+1)*e/(e-1)))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397618

/-- `A000040(floor((n+1)*e/(e-1)))` -/
def P2373068123337456110.Spec : Prop :=
  ∀ n, P2373068123337456110.a n = A397618 (n + 1)

theorem P2373068123337456110.correct : P2373068123337456110.Spec := by
  intro n
  simp only [A397618, Nat.add_sub_cancel]

end A397618

/-! ## A397618.P2786886785677725560

`A162753(A292666(n+1))`
-/

namespace A397618.P2786886785677725560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A292666 (n + 1)).toNat

end

end A397618.P2786886785677725560

namespace A397618

/-- `A162753(A292666(n+1))` -/
def P2786886785677725560.Spec : Prop :=
  ∀ n, P2786886785677725560.a n = A397618 (n + 1)

end A397618

/-! ## A397618.P2592812185957478997

`A109919(A376456(n+1))`
-/

namespace A397618.P2592812185957478997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109919 (A376456 (n + 1)).toNat

end

end A397618.P2592812185957478997

namespace A397618

/-- `A109919(A376456(n+1))` -/
def P2592812185957478997.Spec : Prop :=
  ∀ n, P2592812185957478997.a n = A397618 (n + 1)

end A397618

/-! ## A397618.P8775062004767962731

`A000040(A186539(n+1))%A112040(3*n+4)`
-/

namespace A397618.P8775062004767962731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A186539 (n + 1)).toNat) (A112040 (3 * n + 4))

end

end A397618.P8775062004767962731

namespace A397618

/-- `A000040(A186539(n+1))%A112040(3*n+4)` -/
def P8775062004767962731.Spec : Prop :=
  ∀ n, P8775062004767962731.a n = A397618 (n + 1)

end A397618

/-!
# A397622: a(n) = prime(A005653(n)).

The programs for A397622, the canonical program `A397622.P12107232560436362639` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397622 has offset 1).

The definition of A397622 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005653, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A397622.P12107232560436362639

`A000040(A005653(n+1))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397622

/-- `A000040(A005653(n+1))` -/
def P12107232560436362639.Spec : Prop :=
  ∀ n, P12107232560436362639.a n = A397622 (n + 1)

theorem P12107232560436362639.correct : P12107232560436362639.Spec := by
  intro n
  simp only [A397622, Nat.add_sub_cancel]

end A397622

/-! ## A397622.P6225640886545946753

`A065091(eq[1, gcd(2, floor(2*n/ϕ²))]-1)`
-/

namespace A397622.P6225640886545946753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊2 * ((n : ℝ) / Real.goldenRatio ^ 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - 1)

end

end A397622.P6225640886545946753

namespace A397622

/-- `A065091(eq[1, gcd(2, floor(2*n/ϕ²))]-1)` -/
def P6225640886545946753.Spec : Prop :=
  ∀ n, P6225640886545946753.a n = A397622 (n + 1)

end A397622

/-! ## A397622.P14746098098453063078

`A000040(A191330(n+1)/2)`
-/

namespace A397622.P14746098098453063078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A191330 (n + 1) : ℚ) / 2)).toNat

end

end A397622.P14746098098453063078

namespace A397622

/-- `A000040(A191330(n+1)/2)` -/
def P14746098098453063078.Spec : Prop :=
  ∀ n, P14746098098453063078.a n = A397622 (n + 1)

end A397622

/-! ## A397622.P2526475881690646649

`A008578(A279933(n+2))`
-/

namespace A397622.P2526475881690646649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A279933 (n + 2)).toNat

end

end A397622.P2526475881690646649

namespace A397622

/-- `A008578(A279933(n+2))` -/
def P2526475881690646649.Spec : Prop :=
  ∀ n, P2526475881690646649.a n = A397622 (n + 1)

end A397622

/-! ## A397622.P18391338742936965313

`A073846(A191330(n+1))`
-/

namespace A397622.P18391338742936965313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A191330 (n + 1)).toNat

end

end A397622.P18391338742936965313

namespace A397622

/-- `A073846(A191330(n+1))` -/
def P18391338742936965313.Spec : Prop :=
  ∀ n, P18391338742936965313.a n = A397622 (n + 1)

end A397622

/-!
# A397623: a(n) = prime(A005652(n)).

The programs for A397623, the canonical program `A397623.P16201342378175094011` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397623 has offset 1).

The definition of A397623 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005652, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A397623.P16201342378175094011

`A000040(A005652(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A397623

/-- `A000040(A005652(n+1))` -/
def P16201342378175094011.Spec : Prop :=
  ∀ n, P16201342378175094011.a n = A397623 (n + 1)

theorem P16201342378175094011.correct : P16201342378175094011.Spec := by
  intro n
  simp only [A397623, Nat.add_sub_cancel]

end A397623

/-! ## A397623.P5532782933516535652

`A008578(A279934(n+1))`
-/

namespace A397623.P5532782933516535652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A279934 (n + 1)).toNat

end

end A397623.P5532782933516535652

namespace A397623

/-- `A008578(A279934(n+1))` -/
def P5532782933516535652.Spec : Prop :=
  ∀ n, P5532782933516535652.a n = A397623 (n + 1)

end A397623

/-! ## A397623.P15657713724671677477

`A000040(A191331(n+1)/2)`
-/

namespace A397623.P15657713724671677477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A191331 (n + 1) : ℚ) / 2)).toNat

end

end A397623.P15657713724671677477

namespace A397623

/-- `A000040(A191331(n+1)/2)` -/
def P15657713724671677477.Spec : Prop :=
  ∀ n, P15657713724671677477.a n = A397623 (n + 1)

end A397623

/-! ## A397623.P1987450518085914848

`A073846(A191331(n+1))`
-/

namespace A397623.P1987450518085914848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A191331 (n + 1)).toNat

end

end A397623.P1987450518085914848

namespace A397623

/-- `A073846(A191331(n+1))` -/
def P1987450518085914848.Spec : Prop :=
  ∀ n, P1987450518085914848.a n = A397623 (n + 1)

end A397623

/-! ## A397623.P7251026181397598384

`∩[A175140(n+1), A264737(n+1)]`
-/

namespace A397623.P7251026181397598384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397623.P7251026181397598384

namespace A397623

/-- `∩[A175140(n+1), A264737(n+1)]` -/
def P7251026181397598384.Spec : Prop :=
  ∀ n, (P7251026181397598384.a n : ℤ) = A397623 (n + 1)

end A397623

/-!
# A397625: Coordination sequence of the bcs net.

The programs for A397625, the canonical program `A397625.P4641049130596082613` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397625 has offset 0).

The definition of A397625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397625.P4641049130596082613

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=24, a(3)=56, a(4)=98, a(5)=152`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A397625

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4641049130596082613.Spec : Prop :=
  ∀ n, P4641049130596082613.a n = A397625 n

theorem P4641049130596082613.correct : P4641049130596082613.Spec := by
  intro n
  simp only [A397625]

end A397625

/-! ## A397625.P17127408239756214109

`A057544(n)+A049452(n)`
-/

namespace A397625.P17127408239756214109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 n + A049452 n

end

end A397625.P17127408239756214109

namespace A397625

/-- `A057544(n)+A049452(n)` -/
def P17127408239756214109.Spec : Prop :=
  ∀ n, P17127408239756214109.a n = A397625 n

end A397625

/-! ## A397625.P14514570475903428057

`A005897(n)-A000122(A000879(n+1))`
-/

namespace A397625.P14514570475903428057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A000122 (A000879 (n + 1)).toNat

end

end A397625.P14514570475903428057

namespace A397625

/-- `A005897(n)-A000122(A000879(n+1))` -/
def P14514570475903428057.Spec : Prop :=
  ∀ n, P14514570475903428057.a n = A397625 n

end A397625

/-! ## A397625.P9204033929226840029

`A005897(n)-A000122(A038664(n+1))`
-/

namespace A397625.P9204033929226840029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A000122 (A038664 (n + 1)).toNat

end

end A397625.P9204033929226840029

namespace A397625

/-- `A005897(n)-A000122(A038664(n+1))` -/
def P9204033929226840029.Spec : Prop :=
  ∀ n, P9204033929226840029.a n = A397625 n

end A397625

/-! ## A397625.P7222019068740186756

`A005897(n)-A000122(A003019(n+3))`
-/

namespace A397625.P7222019068740186756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A000122 (A003019 (n + 3)).toNat

end

end A397625.P7222019068740186756

namespace A397625

/-- `A005897(n)-A000122(A003019(n+3))` -/
def P7222019068740186756.Spec : Prop :=
  ∀ n, P7222019068740186756.a n = A397625 n

end A397625

/-!
# A397626: Number of vertex clique partitions of a recursively constructed bridged dual-graph sequence starting with a triangle.

The programs for A397626, the canonical program `A397626.P13437835896529960750` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397626 has offset 0).

The definition of A397626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397626.P13437835896529960750

`a(n-1)²+2*a(n-1)*a(n-2)²` with `a(0)=5, a(1)=45`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A397626

/-- `a(n-1)²+2*a(n-1)*a(n-2)²` -/
def P13437835896529960750.Spec : Prop :=
  ∀ n, (P13437835896529960750.a n : ℤ) = A397626 n

theorem P13437835896529960750.correct : P13437835896529960750.Spec := by
  intro n
  simp only [A397626]

end A397626

/-!
# A397627: a(n) = prime(A026351(n)).

The programs for A397627, the canonical program `A397627.P57665162522871449` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397627 has offset 1).

The definition of A397627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A026351(n))` (program `A397627.P57665162522871449`, by `A397627.P57665162522871449.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397627.P57665162522871449

`A000040(A026351(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397627

/-- `A000040(A026351(n))` -/
def P57665162522871449.Spec : Prop :=
  ∀ n, P57665162522871449.a n = A397627 (n + 1)

theorem P57665162522871449.correct : P57665162522871449.Spec := by
  intro n
  simp only [A397627, Nat.add_sub_cancel]

end A397627

/-! ## A397627.P8456631034700936038

`A000040(floor(ϕ*n)+1)`
-/

namespace A397627.P8456631034700936038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌊Real.goldenRatio * (n : ℝ)⌋ + 1).toNat

end

end A397627.P8456631034700936038

namespace A397627

/-- `A000040(floor(ϕ*n)+1)` -/
def P8456631034700936038.Spec : Prop :=
  ∀ n, P8456631034700936038.a n = A397627 (n + 1)

end A397627

/-! ## A397627.P14306276175627843023

`A008578(A026355(n+1))`
-/

namespace A397627.P14306276175627843023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A026355 (n + 1)).toNat

end

end A397627.P14306276175627843023

namespace A397627

/-- `A008578(A026355(n+1))` -/
def P14306276175627843023.Spec : Prop :=
  ∀ n, P14306276175627843023.a n = A397627 (n + 1)

end A397627

/-! ## A397627.P8899545878296616610

`A008578(A099267(n+1))`
-/

namespace A397627.P8899545878296616610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A099267 (n + 1)).toNat

end

end A397627.P8899545878296616610

namespace A397627

/-- `A008578(A099267(n+1))` -/
def P8899545878296616610.Spec : Prop :=
  ∀ n, P8899545878296616610.a n = A397627 (n + 1)

end A397627

/-! ## A397627.P12973634697115060398

`A067747(A130568(n))`
-/

namespace A397627.P12973634697115060398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A130568 n).toNat

end

end A397627.P12973634697115060398

namespace A397627

/-- `A067747(A130568(n))` -/
def P12973634697115060398.Spec : Prop :=
  ∀ n, P12973634697115060398.a n = A397627 (n + 1)

end A397627

/-! ## A397627.P15213103812085928292

`A109763(A191402(n))`
-/

namespace A397627.P15213103812085928292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A191402 n).toNat

end

end A397627.P15213103812085928292

namespace A397627

/-- `A109763(A191402(n))` -/
def P15213103812085928292.Spec : Prop :=
  ∀ n, P15213103812085928292.a n = A397627 (n + 1)

end A397627

/-! ## A397627.P5236253528130920348

`A075643(A189662(n+1))`
-/

namespace A397627.P5236253528130920348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (A189662 (n + 1)).toNat

end

end A397627.P5236253528130920348

namespace A397627

/-- `A075643(A189662(n+1))` -/
def P5236253528130920348.Spec : Prop :=
  ∀ n, P5236253528130920348.a n = A397627 (n + 1)

end A397627

/-!
# A397628: a(n) = prime(A026352(n)).

The programs for A397628, the canonical program `A397628.P1118635807216625809` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397628 has offset 1).

The definition of A397628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A026352(n+1))` (program `A397628.P1118635807216625809`, by `A397628.P1118635807216625809.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397628.P1118635807216625809

`A000040(A026352(n+1))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397628

/-- `A000040(A026352(n+1))` -/
def P1118635807216625809.Spec : Prop :=
  ∀ n, P1118635807216625809.a n = A397628 (n + 1)

theorem P1118635807216625809.correct : P1118635807216625809.Spec := by
  intro n
  simp only [A397628, Nat.add_sub_cancel]

end A397628

/-! ## A397628.P5249877947686904068

`A109652(A004956(n+1))`
-/

namespace A397628.P5249877947686904068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109652 (A004956 (n + 1)).toNat

end

end A397628.P5249877947686904068

namespace A397628

/-- `A109652(A004956(n+1))` -/
def P5249877947686904068.Spec : Prop :=
  ∀ n, P5249877947686904068.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P4501286899672770719

`A109652(A026351(n+1))`
-/

namespace A397628.P4501286899672770719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109652 (A026351 (n + 1)).toNat

end

end A397628.P4501286899672770719

namespace A397628

/-- `A109652(A026351(n+1))` -/
def P4501286899672770719.Spec : Prop :=
  ∀ n, P4501286899672770719.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P7376824511840840439

`A109652(A000201(n+1)+1)`
-/

namespace A397628.P7376824511840840439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109652 (A000201 (n + 1) + 1).toNat

end

end A397628.P7376824511840840439

namespace A397628

/-- `A109652(A000201(n+1)+1)` -/
def P7376824511840840439.Spec : Prop :=
  ∀ n, P7376824511840840439.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P18223874238363458122

`A045344(A001950(n+1))`
-/

namespace A397628.P18223874238363458122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A001950 (n + 1)).toNat

end

end A397628.P18223874238363458122

namespace A397628

/-- `A045344(A001950(n+1))` -/
def P18223874238363458122.Spec : Prop :=
  ∀ n, P18223874238363458122.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P2737081776203213203

`A215848(A003622(n+1))`
-/

namespace A397628.P2737081776203213203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A003622 (n + 1)).toNat

end

end A397628.P2737081776203213203

namespace A397628

/-- `A215848(A003622(n+1))` -/
def P2737081776203213203.Spec : Prop :=
  ∀ n, P2737081776203213203.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P16673671201271423091

`A000040(A004957(n+1))`
-/

namespace A397628.P16673671201271423091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004957 (n + 1)).toNat

end

end A397628.P16673671201271423091

namespace A397628

/-- `A000040(A004957(n+1))` -/
def P16673671201271423091.Spec : Prop :=
  ∀ n, P16673671201271423091.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P7937150964765394624

`A008578(A007066(n+2))`
-/

namespace A397628.P7937150964765394624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007066 (n + 2)).toNat

end

end A397628.P7937150964765394624

namespace A397628

/-- `A008578(A007066(n+2))` -/
def P7937150964765394624.Spec : Prop :=
  ∀ n, P7937150964765394624.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P3009010781698988069

`A008578(A026356(n+2))`
-/

namespace A397628.P3009010781698988069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A026356 (n + 2)).toNat

end

end A397628.P3009010781698988069

namespace A397628

/-- `A008578(A026356(n+2))` -/
def P3009010781698988069.Spec : Prop :=
  ∀ n, P3009010781698988069.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P12649530660262898851

`A000040(A001950(n+1)+1)`
-/

namespace A397628.P12649530660262898851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001950 (n + 1) + 1).toNat

end

end A397628.P12649530660262898851

namespace A397628

/-- `A000040(A001950(n+1)+1)` -/
def P12649530660262898851.Spec : Prop :=
  ∀ n, P12649530660262898851.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P5767859744963206528

`A000040(A003622(n+1)+2)`
-/

namespace A397628.P5767859744963206528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003622 (n + 1) + 2).toNat

end

end A397628.P5767859744963206528

namespace A397628

/-- `A000040(A003622(n+1)+2)` -/
def P5767859744963206528.Spec : Prop :=
  ∀ n, P5767859744963206528.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P11630039506844988698

`A000040(A007066(n+2)-1)`
-/

namespace A397628.P11630039506844988698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007066 (n + 2) - 1).toNat

end

end A397628.P11630039506844988698

namespace A397628

/-- `A000040(A007066(n+2)-1)` -/
def P11630039506844988698.Spec : Prop :=
  ∀ n, P11630039506844988698.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P13713683022147766112

`A000040(A099267(n+2)+n)`
-/

namespace A397628.P13713683022147766112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099267 (n + 2) + (n : ℤ)).toNat

end

end A397628.P13713683022147766112

namespace A397628

/-- `A000040(A099267(n+2)+n)` -/
def P13713683022147766112.Spec : Prop :=
  ∀ n, P13713683022147766112.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P18414715910505635433

`A000040(A026351(n+1)+n+1)`
-/

namespace A397628.P18414715910505635433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A026351 (n + 1) + (n + 1 : ℤ)).toNat

end

end A397628.P18414715910505635433

namespace A397628

/-- `A000040(A026351(n+1)+n+1)` -/
def P18414715910505635433.Spec : Prop :=
  ∀ n, P18414715910505635433.a n = A397628 (n + 1)

theorem P18414715910505635433.correct : P18414715910505635433.Spec := by
  intro n
  simp only [A397628, Nat.add_sub_cancel, A397628.P18414715910505635433.a, A397628.P1118635807216625809.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A026351, A026351.P16838321733923579855.a, A026352, A026352.P12148226438592254033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397628

/-! ## A397628.P2176169491668332214

`A000040(A000201(n+1)+n+2)`
-/

namespace A397628.P2176169491668332214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000201 (n + 1) + (n + 2 : ℤ)).toNat

end

end A397628.P2176169491668332214

namespace A397628

/-- `A000040(A000201(n+1)+n+2)` -/
def P2176169491668332214.Spec : Prop :=
  ∀ n, P2176169491668332214.a n = A397628 (n + 1)

theorem P2176169491668332214.correct : P2176169491668332214.Spec := by
  intro n
  simp only [A397628, Nat.add_sub_cancel, A397628.P2176169491668332214.a, A397628.P1118635807216625809.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000201, A000201.P2935798382643029248.a, A026352, A026352.P12148226438592254033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397628

/-! ## A397628.P8874629528300941827

`A046022(A022413(n+1))`
-/

namespace A397628.P8874629528300941827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A022413 (n + 1)).toNat

end

end A397628.P8874629528300941827

namespace A397628

/-- `A046022(A022413(n+1))` -/
def P8874629528300941827.Spec : Prop :=
  ∀ n, P8874629528300941827.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P7647726508299798043

`A111688(A075318(n+1))`
-/

namespace A397628.P7647726508299798043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (A075318 (n + 1)).toNat

end

end A397628.P7647726508299798043

namespace A397628

/-- `A111688(A075318(n+1))` -/
def P7647726508299798043.Spec : Prop :=
  ∀ n, P7647726508299798043.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P1244041095392670

`A063934(A283234(n+1))`
-/

namespace A397628.P1244041095392670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (A283234 (n + 1)).toNat

end

end A397628.P1244041095392670

namespace A397628

/-- `A063934(A283234(n+1))` -/
def P1244041095392670.Spec : Prop :=
  ∀ n, P1244041095392670.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P5707517309445039043

`A067747(A284621(n+2))`
-/

namespace A397628.P5707517309445039043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A284621 (n + 2)).toNat

end

end A397628.P5707517309445039043

namespace A397628

/-- `A067747(A284621(n+2))` -/
def P5707517309445039043.Spec : Prop :=
  ∀ n, P5707517309445039043.a n = A397628 (n + 1)

end A397628

/-! ## A397628.P6795752760842419932

`A130008(A288709(n+2))`
-/

namespace A397628.P6795752760842419932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 (A288709 (n + 2)).toNat

end

end A397628.P6795752760842419932

namespace A397628

/-- `A130008(A288709(n+2))` -/
def P6795752760842419932.Spec : Prop :=
  ∀ n, P6795752760842419932.a n = A397628 (n + 1)

end A397628

/-!
# A397639: a(n) = 2-adic valuation of n! minus the 2-adic valuation of the permanent of the n X n matrix with entries gcd(i,j).

The programs for A397639, there is no canonical definition to state claims against.
-/

/-! ## A397639.P6775813217263242389

`A011371(n+1)-A397298(n+1)`
-/

namespace A397639.P6775813217263242389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) - A397298 (n + 1)

end

end A397639.P6775813217263242389

/-! ## A397639.P15482351787134742623

`∑[A007814(n+1)]-A397298(n+1)`
-/

namespace A397639.P15482351787134742623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A397298 (n + 1)

end

end A397639.P15482351787134742623

/-!
# A397643: Numbers with digits in nondecreasing order having only digits 1 through 3.

The programs for A397643, there is no canonical definition to state claims against.
-/

/-! ## A397643.P9829941886656639809

`∩[A007932(n+1), A009994(n+1)]`
-/

namespace A397643.P9829941886656639809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397643.P9829941886656639809

/-! ## A397643.P5273416480267489426

`∩[A007932(n+1), A247764(n+1)]`
-/

namespace A397643.P5273416480267489426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397643.P5273416480267489426

/-! ## A397643.P2723600525242178599

`A007090(A023746(n+2))`
-/

namespace A397643.P2723600525242178599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023746 (n + 2)).toNat

end

end A397643.P2723600525242178599

/-! ## A397643.P8078507575678820412

`∩[A007932(n+1), A247751(n+1)]`
-/

namespace A397643.P8078507575678820412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397643.P8078507575678820412

/-! ## A397643.P11956202123261637815

`∩[A007932(n+1), A381509(n+1)]`
-/

namespace A397643.P11956202123261637815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397643.P11956202123261637815

/-! ## A397643.P7288639647369129164

`∩[A007932(n+1), A179239(n)]`
-/

namespace A397643.P7288639647369129164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397643.P7288639647369129164

/-!
# A397644: a(n) is the number of subsequences divisible by 3 taken from the n-th number whose digits are in nondecreasing order and all digits <= 3.

The programs for A397644, there is no canonical definition to state claims against.
-/

/-! ## A397644.P10654779512316786566

`A175599(A014847(n+1))`
-/

namespace A397644.P10654779512316786566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (A014847 (n + 1)).toNat

end

end A397644.P10654779512316786566

/-! ## A397644.P246965836861720090

`A098547(A037444(n))%A301453(n)`
-/

namespace A397644.P246965836861720090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098547 (A037444 n).toNat) (A301453 n)

end

end A397644.P246965836861720090

/-! ## A397644.P9599288553781182978

`A355523(A278984(3*n+3)+A029895(n))`
-/

namespace A397644.P9599288553781182978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355523 (A278984 (3 * n + 3) + A029895 n).toNat

end

end A397644.P9599288553781182978

/-! ## A397644.P11313827166904161844

`A073779(A041893(n))`
-/

namespace A397644.P11313827166904161844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073779 (A041893 n).toNat

end

end A397644.P11313827166904161844

/-! ## A397644.P9131494309866677942

`A005090(A153732(n))`
-/

namespace A397644.P9131494309866677942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (A153732 n).toNat

end

end A397644.P9131494309866677942

/-!
# A397645: Multiplicative with a(p^e) = (e+1)*(e+2)*(5*e+3)/6.

The programs for A397645, the canonical program `A397645.P309890179960751511` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397645 has offset 1).

The definition of A397645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397645.P309890179960751511

`∑{d}[n+1, A358380(#)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A397645

/-- `∑{d}[n+1, A358380(#)]` -/
def P309890179960751511.Spec : Prop :=
  ∀ n, P309890179960751511.a n = A397645 (n + 1)

theorem P309890179960751511.correct : P309890179960751511.Spec := by
  intro n
  simp only [A397645, Nat.add_sub_cancel]

end A397645

/-! ## A397645.P4664975670917004093

`∑{d}[n+1, A007425(#)*A082476((n+1)/#)]`
-/

namespace A397645.P4664975670917004093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A082476 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397645.P4664975670917004093

namespace A397645

/-- `∑{d}[n+1, A007425(#)*A082476((n+1)/#)]` -/
def P4664975670917004093.Spec : Prop :=
  ∀ n, P4664975670917004093.a n = A397645 (n + 1)

end A397645

/-! ## A397645.P6773362616708613184

`∑{d}[n+1, A000005(#)*A344328((n+1)/#)]`
-/

namespace A397645.P6773362616708613184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A344328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397645.P6773362616708613184

namespace A397645

/-- `∑{d}[n+1, A000005(#)*A344328((n+1)/#)]` -/
def P6773362616708613184.Spec : Prop :=
  ∀ n, P6773362616708613184.a n = A397645 (n + 1)

end A397645

/-! ## A397645.P12298534967047615861

`∑{d}[n+1, A007426(#)*A351521((n+1)/#)]`
-/

namespace A397645.P12298534967047615861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A351521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397645.P12298534967047615861

namespace A397645

/-- `∑{d}[n+1, A007426(#)*A351521((n+1)/#)]` -/
def P12298534967047615861.Spec : Prop :=
  ∀ n, P12298534967047615861.a n = A397645 (n + 1)

end A397645

/-!
# A397646: Number of factorizations of (p*q)^n into parts > 1 where neither p nor q are permitted as factors, for any two distinct primes p and q.

The programs for A397646, there is no canonical definition to state claims against.
-/

/-! ## A397646.P169811305680577375

`A060244(∑[4*n])`
-/

namespace A397646.P169811305680577375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397646.P169811305680577375

/-! ## A397646.P736718671872774945

`A347348(A148751(n))`
-/

namespace A397646.P736718671872774945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347348 (A148751 n).toNat

end

end A397646.P736718671872774945

/-!
# A397647: Triangle read by rows: T(n, k) is the number of partitions of [n] into k nonempty endofunctions such that a fixed set of k elements are forced into k distinct blocks (one specified element per block).

The programs for A397647, there is no canonical definition to state claims against.
-/

/-! ## A397647.P5110607405524831911

`A394436(n)/A007318(n)`
-/

namespace A397647.P5110607405524831911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394436 n : ℚ) / (A007318 n : ℚ)

end

end A397647.P5110607405524831911

/-! ## A397647.P2075878673708508181

`A394436(n)/A091918(n)`
-/

namespace A397647.P2075878673708508181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394436 n : ℚ) / (A091918 n : ℚ)

end

end A397647.P2075878673708508181

/-! ## A397647.P3332183749812796268

`A394436(n)/A132749(n)`
-/

namespace A397647.P3332183749812796268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394436 n : ℚ) / (A132749 n : ℚ)

end

end A397647.P3332183749812796268

/-! ## A397647.P11342673832183734387

`A394436(n)/A135227(n)`
-/

namespace A397647.P11342673832183734387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394436 n : ℚ) / (A135227 n : ℚ)

end

end A397647.P11342673832183734387

/-! ## A397647.P9180311997378056474

`A394436(n)/A183154(n)`
-/

namespace A397647.P9180311997378056474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394436 n : ℚ) / (A183154 n : ℚ)

end

end A397647.P9180311997378056474

/-!
# A397649: Number of ways to tile a 3 X n strip with squares, dominoes, and crosses.

The programs for A397649, there is no canonical definition to state claims against.
-/

/-! ## A397649.P6642302357721066826

`A283965(A292190(n))+A007758(n)`
-/

namespace A397649.P6642302357721066826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (A292190 n).toNat + A007758 n

end

end A397649.P6642302357721066826

/-!
# A397658: Numbers k*P(j) such that bigomega(k) = k - j, where P = A002110 and bigomega = A001222.

The programs for A397658, there is no canonical definition to state claims against.
-/

/-! ## A397658.P2054792729749607844

`∩[A055932(n+1), A396594(n+1)]`
-/

namespace A397658.P2054792729749607844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397658.P2054792729749607844

/-! ## A397658.P14329896843274875354

`A005940(n+1)*A034386(A185316(3*n+4))`
-/

namespace A397658.P14329896843274875354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) * A034386 (A185316 (3 * n + 4)).toNat

end

end A397658.P14329896843274875354

/-!
# A397660: Number of compositions of n into distinct parts whose list is divided into nonempty blocks.

The programs for A397660, there is no canonical definition to state claims against.
-/

/-! ## A397660.P8007360512926543545

`2*A351639(n)-1`
-/

namespace A397660.P8007360512926543545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351639 n - 1

end

end A397660.P8007360512926543545

/-! ## A397660.P6633948573778728363

`A057428(n)+A032043(n)`
-/

namespace A397660.P6633948573778728363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A032043 n

end

end A397660.P6633948573778728363

/-! ## A397660.P6648444174477714049

`A032043(n)-A057427(n)`
-/

namespace A397660.P6648444174477714049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032043 n - A057427 n

end

end A397660.P6648444174477714049

/-! ## A397660.P9340266445080064508

`A032005(n)/A036453(n+1)`
-/

namespace A397660.P9340266445080064508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032005 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A397660.P9340266445080064508

/-! ## A397660.P13732722483432411233

`A011782(n)/A011782(n+1)*A032005(n)`
-/

namespace A397660.P13732722483432411233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / (A011782 (n + 1) : ℚ) * (A032005 n : ℚ)

end

end A397660.P13732722483432411233

/-!
# A397666: a(n) = Sum_{k=0..n} binomial(3*k-4,k).

The programs for A397666, there is no canonical definition to state claims against.
-/

/-! ## A397666.P9135355962763991109

`∑[A397669(n)]`
-/

namespace A397666.P9135355962763991109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397666.P9135355962763991109

/-!
# A397667: a(n) = Sum_{k=0..n} binomial(4*k-5,k).

The programs for A397667, there is no canonical definition to state claims against.
-/

/-! ## A397667.P456815656402228601

`∑[A397670(n)]`
-/

namespace A397667.P456815656402228601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397667.P456815656402228601

/-!
# A397668: a(n) = Sum_{k=0..n} binomial(5*k-6,k).

The programs for A397668, there is no canonical definition to state claims against.
-/

/-! ## A397668.P10815971889971096430

`∑[A397671(n)]`
-/

namespace A397668.P10815971889971096430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397668.P10815971889971096430

/-!
# A397669: a(n) = binomial(3*n-4,n).

The programs for A397669, there is no canonical definition to state claims against.
-/

/-! ## A397669.P11474784082729419478

`Δ[A397666(abs(1-n))]`
-/

namespace A397669.P11474784082729419478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397666 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A397669.P11474784082729419478

/-! ## A397669.P17058845635085079897

`A320508(A360416(n))`
-/

namespace A397669.P17058845635085079897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320508 (A360416 n).toNat

end

end A397669.P17058845635085079897

/-!
# A397670: a(n) = binomial(4*n-5,n).

The programs for A397670, there is no canonical definition to state claims against.
-/

/-! ## A397670.P1336842187837887281

`Δ[A397667(abs(1-n))]`
-/

namespace A397670.P1336842187837887281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397667 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A397670.P1336842187837887281

/-! ## A397670.P2045933674005575418

`A159854(A051870(n))`
-/

namespace A397670.P2045933674005575418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (A051870 n).toNat

end

end A397670.P2045933674005575418

/-!
# A397671: a(n) = binomial(5*n-6,n).

The programs for A397671, there is no canonical definition to state claims against.
-/

/-! ## A397671.P1822794253942127387

`Δ[A397668(abs(1-n))]`
-/

namespace A397671.P1822794253942127387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397668 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A397671.P1822794253942127387

/-!
# A397672: Value of the Colless index for the rooted binary echelon tree with n leaves.

The programs for A397672, the canonical program `A397672.P3807838670338666769` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397672 has offset 1).

The definition of A397672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397672.P142969457535294036

`A035327(n-a(n-2^floor(log2(n))))` with `a(0)=0`
-/

namespace A397672.P142969457535294036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A035327 ((n : ℤ) - a (n - 2 ^ Nat.log 2 n)).toNat

end

end A397672.P142969457535294036

namespace A397672

/-- `A035327(n-a(n-2^floor(log2(n))))` -/
def P142969457535294036.Spec : Prop :=
  ∀ n, P142969457535294036.a n = A397672 (n + 1)

end A397672

/-! ## A397672.P3807838670338666769

`A011371(n)-A083741(n)`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A397672

/-- `A011371(n)-A083741(n)` -/
def P3807838670338666769.Spec : Prop :=
  ∀ n, P3807838670338666769.a n = A397672 (n + 1)

theorem P3807838670338666769.correct : P3807838670338666769.Spec := by
  intro n
  simp only [A397672, Nat.add_sub_cancel]

end A397672

/-! ## A397672.P12652946557768387659

`A005187(n)-A298043(n)`
-/

namespace A397672.P12652946557768387659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A298043 n

end

end A397672.P12652946557768387659

namespace A397672

/-- `A005187(n)-A298043(n)` -/
def P12652946557768387659.Spec : Prop :=
  ∀ n, P12652946557768387659.a n = A397672 (n + 1)

end A397672

/-! ## A397672.P1448622851894157993

`A298043(n)-A298043(A006257(n))`
-/

namespace A397672.P1448622851894157993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298043 n - A298043 (A006257 n).toNat

end

end A397672.P1448622851894157993

namespace A397672

/-- `A298043(n)-A298043(A006257(n))` -/
def P1448622851894157993.Spec : Prop :=
  ∀ n, P1448622851894157993.a n = A397672 (n + 1)

end A397672

/-! ## A397672.P5441742243819970686

`A005187(n)%A298043(A028310(n))`
-/

namespace A397672.P5441742243819970686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 n) (A298043 (A028310 n).toNat)

end

end A397672.P5441742243819970686

namespace A397672

/-- `A005187(n)%A298043(A028310(n))` -/
def P5441742243819970686.Spec : Prop :=
  ∀ n, P5441742243819970686.a n = A397672 (n + 1)

end A397672

/-! ## A397672.P3072587141090584334

`∑[A005187(n)-A241816(2*n)]`
-/

namespace A397672.P3072587141090584334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A241816 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397672.P3072587141090584334

namespace A397672

/-- `∑[A005187(n)-A241816(2*n)]` -/
def P3072587141090584334.Spec : Prop :=
  ∀ n, P3072587141090584334.a n = A397672 (n + 1)

end A397672

/-! ## A397672.P8142398388161997485

`A298043(n)-A083741(2*n+1)`
-/

namespace A397672.P8142398388161997485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298043 n - A083741 (2 * n + 1)

end

end A397672.P8142398388161997485

namespace A397672

/-- `A298043(n)-A083741(2*n+1)` -/
def P8142398388161997485.Spec : Prop :=
  ∀ n, P8142398388161997485.a n = A397672 (n + 1)

end A397672

/-! ## A397672.P173215224904518487

`n-A175186(n+1)`
-/

namespace A397672.P173215224904518487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A175186 (n + 1)

end

end A397672.P173215224904518487

namespace A397672

/-- `n-A175186(n+1)` -/
def P173215224904518487.Spec : Prop :=
  ∀ n, P173215224904518487.a n = A397672 (n + 1)

end A397672

/-! ## A397672.P3905072682971225288

`Δ[n²]-A175187(n+1)`
-/

namespace A397672.P3905072682971225288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A175187 (n + 1)

end

end A397672.P3905072682971225288

namespace A397672

/-- `Δ[n²]-A175187(n+1)` -/
def P3905072682971225288.Spec : Prop :=
  ∀ n, P3905072682971225288.a n = A397672 (n + 1)

end A397672

/-!
# A397686: Multiplicative with a(p^e) = (e+1)*(e+2)*(2*e+1)/2.

The programs for A397686, the canonical program `A397686.P17616375302226965562` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397686 has offset 1).

The definition of A397686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397686.P17616375302226965562

`∏{e}[n+1, 2*#+1]*∏{e}[n+1, C(#+2, 2)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A397686

/-- `∏{e}[n+1, 2*#+1]*∏{e}[n+1, C(#+2, 2)]` -/
def P17616375302226965562.Spec : Prop :=
  ∀ n, (P17616375302226965562.a n : ℤ) = A397686 (n + 1)

theorem P17616375302226965562.correct : P17616375302226965562.Spec := by
  intro n
  simp only [A397686, Nat.add_sub_cancel]

end A397686

/-! ## A397686.P10496162093996895226

`∑{d}[n+1, A359037(#)]`
-/

namespace A397686.P10496162093996895226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359037 d

end

end A397686.P10496162093996895226

namespace A397686

/-- `∑{d}[n+1, A359037(#)]` -/
def P10496162093996895226.Spec : Prop :=
  ∀ n, P10496162093996895226.a n = A397686 (n + 1)

end A397686

/-! ## A397686.P6343488980682303960

`A007425(n+1)*A048691(n+1)`
-/

namespace A397686.P6343488980682303960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) * A048691 (n + 1)

end

end A397686.P6343488980682303960

namespace A397686

/-- `A007425(n+1)*A048691(n+1)` -/
def P6343488980682303960.Spec : Prop :=
  ∀ n, P6343488980682303960.a n = A397686 (n + 1)

end A397686

/-! ## A397686.P9428679440333488770

`∑{d}[n+1, A000005(#)*A344329((n+1)/#)]`
-/

namespace A397686.P9428679440333488770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A344329 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397686.P9428679440333488770

namespace A397686

/-- `∑{d}[n+1, A000005(#)*A344329((n+1)/#)]` -/
def P9428679440333488770.Spec : Prop :=
  ∀ n, P9428679440333488770.a n = A397686 (n + 1)

end A397686

/-! ## A397686.P7651661385158256606

`A007425(n+1)/A046643(n+1)*A383657(n+1)`
-/

namespace A397686.P7651661385158256606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) : ℚ) / (A046643 (n + 1) : ℚ) * (A383657 (n + 1) : ℚ)

end

end A397686.P7651661385158256606

namespace A397686

/-- `A007425(n+1)/A046643(n+1)*A383657(n+1)` -/
def P7651661385158256606.Spec : Prop :=
  ∀ n, P7651661385158256606.a n = (A397686 (n + 1) : ℚ)

end A397686

/-!
# A397691: Number of orbits of nonzero binary algebraic forms of degree n with coefficients in the field with two elements, under the action of SL(2,2).

The programs for A397691, the canonical program `A397691.P3464348281596680652` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397691 has offset 1).

The definition of A397691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397691.P3464348281596680652

`A060553(n+2)-1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A397691

/-- `A060553(n+2)-1` -/
def P3464348281596680652.Spec : Prop :=
  ∀ n, P3464348281596680652.a n = A397691 (n + 1)

theorem P3464348281596680652.correct : P3464348281596680652.Spec := by
  intro n
  simp only [A397691, Nat.add_sub_cancel]

end A397691

/-! ## A397691.P2070095437118334823

`A197943(A060553(n+2))`
-/

namespace A397691.P2070095437118334823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197943 (A060553 (n + 2)).toNat

end

end A397691.P2070095437118334823

namespace A397691

/-- `A197943(A060553(n+2))` -/
def P2070095437118334823.Spec : Prop :=
  ∀ n, P2070095437118334823.a n = A397691 (n + 1)

end A397691

/-! ## A397691.P8792134436329488882

`A080604(A343547(n+1))`
-/

namespace A397691.P8792134436329488882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080604 (A343547 (n + 1)).toNat

end

end A397691.P8792134436329488882

namespace A397691

/-- `A080604(A343547(n+1))` -/
def P8792134436329488882.Spec : Prop :=
  ∀ n, P8792134436329488882.a n = A397691 (n + 1)

end A397691

/-!
# A397695: Residue class of the decimal digits of n taken mod 3, with 0 represented by 3, and in nondecreasing order.

The programs for A397695, there is no canonical definition to state claims against.
-/

/-! ## A397695.P1261221232717881504

`A004185(A397694(n))`
-/

namespace A397695.P1261221232717881504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A397694 n).toNat

end

end A397695.P1261221232717881504

/-!
# A397699: Associated primes of A397698.

The programs for A397699, there is no canonical definition to state claims against.
-/

/-! ## A397699.P2400282026401305018

`A356840(A397698(n+1))`
-/

namespace A397699.P2400282026401305018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356840 (A397698 (n + 1)).toNat

end

end A397699.P2400282026401305018

/-! ## A397699.P16804634067219953888

`A356838((n+1)*A397698(n+1))`
-/

namespace A397699.P16804634067219953888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356838 ((n + 1 : ℤ) * A397698 (n + 1)).toNat

end

end A397699.P16804634067219953888

