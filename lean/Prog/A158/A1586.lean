import SequenceMachineLib
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A158601: a(n) = 400*n^2 + 20.

The programs for A158601, the canonical program `A158601.P901110127675000941` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158601 has offset 0).

The definition of A158601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `400*n²+20` (program `A158601.P901110127675000941`, by `A158601.P901110127675000941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158601.P901110127675000941

`400*n²+20`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158601

/-- `400*n²+20` -/
def P901110127675000941.Spec : Prop :=
  ∀ n, (P901110127675000941.a n : ℤ) = A158601 n

theorem P901110127675000941.correct : P901110127675000941.Spec := by
  intro n
  simp only [A158601]

end A158601

/-! ## A158601.P3063841734738750991

`20*A158493(n)`
-/

namespace A158601.P3063841734738750991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A158493 n

end

end A158601.P3063841734738750991

namespace A158601

/-- `20*A158493(n)` -/
def P3063841734738750991.Spec : Prop :=
  ∀ n, P3063841734738750991.a n = A158601 n

end A158601

/-! ## A158601.P10057609490052304250

`5*(A158776(n)+3)`
-/

namespace A158601.P10057609490052304250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A158776 n + 3)

end

end A158601.P10057609490052304250

namespace A158601

/-- `5*(A158776(n)+3)` -/
def P10057609490052304250.Spec : Prop :=
  ∀ n, P10057609490052304250.a n = A158601 n

end A158601

/-! ## A158601.P2962675209162209063

`4*(A323178(n)+4)`
-/

namespace A158601.P2962675209162209063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A323178 n + 4)

end

end A158601.P2962675209162209063

namespace A158601

/-- `4*(A323178(n)+4)` -/
def P2962675209162209063.Spec : Prop :=
  ∀ n, P2962675209162209063.a n = A158601 n

end A158601

/-! ## A158601.P17862770234423834674

`4*(A017270(n)+5)`
-/

namespace A158601.P17862770234423834674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A017270 n + 5)

end

end A158601.P17862770234423834674

namespace A158601

/-- `4*(A017270(n)+5)` -/
def P17862770234423834674.Spec : Prop :=
  ∀ n, P17862770234423834674.a n = A158601 n

end A158601

/-! ## A158601.P6359310750290343847

`4*(A158492(n)-5)`
-/

namespace A158601.P6359310750290343847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A158492 n - 5)

end

end A158601.P6359310750290343847

namespace A158601

/-- `4*(A158492(n)-5)` -/
def P6359310750290343847.Spec : Prop :=
  ∀ n, P6359310750290343847.a n = A158601 n

end A158601

/-! ## A158601.P2044189075833826228

`(A033583(2*n)+2)*10`
-/

namespace A158601.P2044189075833826228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033583 (2 * n) + 2) * 10

end

end A158601.P2044189075833826228

namespace A158601

/-- `(A033583(2*n)+2)*10` -/
def P2044189075833826228.Spec : Prop :=
  ∀ n, P2044189075833826228.a n = A158601 n

end A158601

/-! ## A158601.P12246494492213566354

`(A008602(2*n+1)-A008602(2*n))*A212656(2*n)`
-/

namespace A158601.P12246494492213566354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008602 (2 * n + 1) - A008602 (2 * n)) * A212656 (2 * n)

end

end A158601.P12246494492213566354

namespace A158601

/-- `(A008602(2*n+1)-A008602(2*n))*A212656(2*n)` -/
def P12246494492213566354.Spec : Prop :=
  ∀ n, P12246494492213566354.a n = A158601 n

end A158601

/-! ## A158601.P5941387237501756823

`(A215145(2*n+1)-A215145(2*n))*A212656(2*n)`
-/

namespace A158601.P5941387237501756823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A215145 (2 * n + 1) - A215145 (2 * n)) * A212656 (2 * n)

end

end A158601.P5941387237501756823

namespace A158601

/-- `(A215145(2*n+1)-A215145(2*n))*A212656(2*n)` -/
def P5941387237501756823.Spec : Prop :=
  ∀ n, P5941387237501756823.a n = A158601 n

end A158601

/-! ## A158601.P14844811652744094894

`2*(A144560(3*n)+A144560(n+1))`
-/

namespace A158601.P14844811652744094894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144560 (3 * n) + A144560 (n + 1))

end

end A158601.P14844811652744094894

namespace A158601

/-- `2*(A144560(3*n)+A144560(n+1))` -/
def P14844811652744094894.Spec : Prop :=
  ∀ n, P14844811652744094894.a n = A158601 n

end A158601

/-! ## A158601.P18248537923808425928

`2*(A014642(4*n)+A008527(n+1))`
-/

namespace A158601.P18248537923808425928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014642 (4 * n) + A008527 (n + 1))

end

end A158601.P18248537923808425928

namespace A158601

/-- `2*(A014642(4*n)+A008527(n+1))` -/
def P18248537923808425928.Spec : Prop :=
  ∀ n, P18248537923808425928.a n = A158601 n

end A158601

/-! ## A158601.P17663415056874409723

`10*(4*n*A005843(5*n)+2)`
-/

namespace A158601.P17663415056874409723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (4 * ((n : ℤ) * A005843 (5 * n)) + 2)

end

end A158601.P17663415056874409723

namespace A158601

/-- `10*(4*n*A005843(5*n)+2)` -/
def P17663415056874409723.Spec : Prop :=
  ∀ n, P17663415056874409723.a n = A158601 n

end A158601

/-! ## A158601.P1728166876505569843

`4*(A002522(A008592(n))+4)`
-/

namespace A158601.P1728166876505569843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A002522 (A008592 n).toNat + 4)

end

end A158601.P1728166876505569843

namespace A158601

/-- `4*(A002522(A008592(n))+4)` -/
def P1728166876505569843.Spec : Prop :=
  ∀ n, P1728166876505569843.a n = A158601 n

end A158601

/-! ## A158601.P8280549278353941606

`A241850(20*n)`
-/

namespace A158601.P8280549278353941606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241850 (20 * n)

end

end A158601.P8280549278353941606

namespace A158601

/-- `A241850(20*n)` -/
def P8280549278353941606.Spec : Prop :=
  ∀ n, P8280549278353941606.a n = A158601 n

end A158601

/-!
# A158602: a(n) = 40*n^2 + 1.

The programs for A158602, the canonical program `A158602.P7268378752972568757` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158602 has offset 0).

The definition of A158602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `40*n²+1` (program `A158602.P7268378752972568757`, by `A158602.P7268378752972568757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158602.P7268378752972568757

`40*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158602

/-- `40*n²+1` -/
def P7268378752972568757.Spec : Prop :=
  ∀ n, (P7268378752972568757.a n : ℤ) = A158602 n

theorem P7268378752972568757.correct : P7268378752972568757.Spec := by
  intro n
  simp only [A158602]

end A158602

/-! ## A158602.P5586079605793537979

`A158187(2*n)`
-/

namespace A158602.P5586079605793537979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 (2 * n)

end

end A158602.P5586079605793537979

namespace A158602

/-- `A158187(2*n)` -/
def P5586079605793537979.Spec : Prop :=
  ∀ n, P5586079605793537979.a n = A158602 n

end A158602

/-! ## A158602.P17106868748287250535

`or(1, 40*n²)`
-/

namespace A158602.P17106868748287250535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (40 * n ^ 2)

end

end A158602.P17106868748287250535

namespace A158602

/-- `or(1, 40*n²)` -/
def P17106868748287250535.Spec : Prop :=
  ∀ n, (P17106868748287250535.a n : ℤ) = A158602 n

end A158602

/-! ## A158602.P13620558731328641339

`xor(1, 40*n²)`
-/

namespace A158602.P13620558731328641339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (40 * n ^ 2)

end

end A158602.P13620558731328641339

namespace A158602

/-- `xor(1, 40*n²)` -/
def P13620558731328641339.Spec : Prop :=
  ∀ n, (P13620558731328641339.a n : ℤ) = A158602 n

end A158602

/-! ## A158602.P12182546707272830281

`ceil(A158776(n)/2)`
-/

namespace A158602.P12182546707272830281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158776 n : ℚ) / 2⌉

end

end A158602.P12182546707272830281

namespace A158602

/-- `ceil(A158776(n)/2)` -/
def P12182546707272830281.Spec : Prop :=
  ∀ n, P12182546707272830281.a n = A158602 n

end A158602

/-! ## A158602.P16182460995020295527

`abs(1-2*(2*n*A008592(n)+1))`
-/

namespace A158602.P16182460995020295527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * ((2 * n : ℤ) * A008592 n + 1)|

end

end A158602.P16182460995020295527

namespace A158602

/-- `abs(1-2*(2*n*A008592(n)+1))` -/
def P16182460995020295527.Spec : Prop :=
  ∀ n, P16182460995020295527.a n = A158602 n

end A158602

/-! ## A158602.P5192076927001305386

`ceil(A158493(2*n)/2)`
-/

namespace A158602.P5192076927001305386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158493 (2 * n) : ℚ) / 2⌉

end

end A158602.P5192076927001305386

namespace A158602

/-- `ceil(A158493(2*n)/2)` -/
def P5192076927001305386.Spec : Prop :=
  ∀ n, P5192076927001305386.a n = A158602 n

end A158602

/-! ## A158602.P14653171511714196098

`A121509(3*n+n+1)`
-/

namespace A158602.P14653171511714196098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121509 (3 * n + (n + 1))

end

end A158602.P14653171511714196098

namespace A158602

/-- `A121509(3*n+n+1)` -/
def P14653171511714196098.Spec : Prop :=
  ∀ n, P14653171511714196098.a n = A158602 n

end A158602

/-! ## A158602.P13331812591848777851

`A215145(2*n²)`
-/

namespace A158602.P13331812591848777851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 (2 * n ^ 2)

end

end A158602.P13331812591848777851

namespace A158602

/-- `A215145(2*n²)` -/
def P13331812591848777851.Spec : Prop :=
  ∀ n, P13331812591848777851.a n = A158602 n

end A158602

/-!
# A158603: a(n) = 441*n^2 + 21.

The programs for A158603, the canonical program `A158603.P3331108209097026455` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158603 has offset 0).

The definition of A158603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `441*n²+21` (program `A158603.P3331108209097026455`, by `A158603.P3331108209097026455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158603.P3331108209097026455

`441*n²+21`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158603

/-- `441*n²+21` -/
def P3331108209097026455.Spec : Prop :=
  ∀ n, (P3331108209097026455.a n : ℤ) = A158603 n

theorem P3331108209097026455.correct : P3331108209097026455.Spec := by
  intro n
  simp only [A158603]

end A158603

/-! ## A158603.P1778232758580816034

`7*(7*A016766(n)+3)`
-/

namespace A158603.P1778232758580816034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (7 * A016766 n + 3)

end

end A158603.P1778232758580816034

namespace A158603

/-- `7*(7*A016766(n)+3)` -/
def P1778232758580816034.Spec : Prop :=
  ∀ n, P1778232758580816034.a n = A158603 n

end A158603

/-! ## A158603.P4765213368458474263

`21*(21*A000290(n)+1)`
-/

namespace A158603.P4765213368458474263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * (21 * A000290 n + 1)

end

end A158603.P4765213368458474263

namespace A158603

/-- `21*(21*A000290(n)+1)` -/
def P4765213368458474263.Spec : Prop :=
  ∀ n, P4765213368458474263.a n = A158603 n

end A158603

/-! ## A158603.P10576530852407628305

`7*(A247541(3*n)+2)`
-/

namespace A158603.P10576530852407628305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A247541 (3 * n) + 2)

end

end A158603.P10576530852407628305

namespace A158603

/-- `7*(A247541(3*n)+2)` -/
def P10576530852407628305.Spec : Prop :=
  ∀ n, P10576530852407628305.a n = A158603 n

end A158603

/-! ## A158603.P5534531603689355924

`3*(A033428(7*n)+7)`
-/

namespace A158603.P5534531603689355924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A033428 (7 * n) + 7)

end

end A158603.P5534531603689355924

namespace A158603

/-- `3*(A033428(7*n)+7)` -/
def P5534531603689355924.Spec : Prop :=
  ∀ n, P5534531603689355924.a n = A158603 n

end A158603

/-! ## A158603.P2025576339677997234

`A241851(21*n)`
-/

namespace A158603.P2025576339677997234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241851 (21 * n)

end

end A158603.P2025576339677997234

namespace A158603

/-- `A241851(21*n)` -/
def P2025576339677997234.Spec : Prop :=
  ∀ n, P2025576339677997234.a n = A158603 n

end A158603

/-!
# A158604: a(n) = 42*n^2 + 1.

The programs for A158604, the canonical program `A158604.P12131569488476952127` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158604 has offset 0).

The definition of A158604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `42*n²+1` (program `A158604.P12131569488476952127`, by `A158604.P12131569488476952127.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158604.P12131569488476952127

`42*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158604

/-- `42*n²+1` -/
def P12131569488476952127.Spec : Prop :=
  ∀ n, (P12131569488476952127.a n : ℤ) = A158604 n

theorem P12131569488476952127.correct : P12131569488476952127.Spec := by
  intro n
  simp only [A158604]

end A158604

/-! ## A158604.P3105629349567456020

`or(1, 6*7*n²)`
-/

namespace A158604.P3105629349567456020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * (7 * n ^ 2))

end

end A158604.P3105629349567456020

namespace A158604

/-- `or(1, 6*7*n²)` -/
def P3105629349567456020.Spec : Prop :=
  ∀ n, (P3105629349567456020.a n : ℤ) = A158604 n

end A158604

/-! ## A158604.P6502653263010381379

`xor(1, 6*7*n²)`
-/

namespace A158604.P6502653263010381379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * (7 * n ^ 2))

end

end A158604.P6502653263010381379

namespace A158604

/-- `xor(1, 6*7*n²)` -/
def P6502653263010381379.Spec : Prop :=
  ∀ n, (P6502653263010381379.a n : ℤ) = A158604 n

end A158604

/-! ## A158604.P3230291496410214607

`abs(A057428(n)+A010023(n))`
-/

namespace A158604.P3230291496410214607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n + A010023 n|

end

end A158604.P3230291496410214607

namespace A158604

/-- `abs(A057428(n)+A010023(n))` -/
def P3230291496410214607.Spec : Prop :=
  ∀ n, P3230291496410214607.a n = A158604 n

end A158604

/-! ## A158604.P17501359577386354989

`abs(A010023(n)-A054977(n))`
-/

namespace A158604.P17501359577386354989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010023 n - A054977 n|

end

end A158604.P17501359577386354989

namespace A158604

/-- `abs(A010023(n)-A054977(n))` -/
def P17501359577386354989.Spec : Prop :=
  ∀ n, P17501359577386354989.a n = A158604 n

end A158604

/-! ## A158604.P12776237335735421538

`abs(A010023(n)-A057427(n))`
-/

namespace A158604.P12776237335735421538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010023 n - A057427 n|

end

end A158604.P12776237335735421538

namespace A158604

/-- `abs(A010023(n)-A057427(n))` -/
def P12776237335735421538.Spec : Prop :=
  ∀ n, P12776237335735421538.a n = A158604 n

end A158604

/-! ## A158604.P15931036634908573627

`(A158740(n)+A158480(n))/2`
-/

namespace A158604.P15931036634908573627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158740 n + A158480 n : ℚ) / 2

end

end A158604.P15931036634908573627

namespace A158604

/-- `(A158740(n)+A158480(n))/2` -/
def P15931036634908573627.Spec : Prop :=
  ∀ n, P15931036634908573627.a n = (A158604 n : ℚ)

end A158604

/-! ## A158604.P9060365440378986361

`ceil(A010011(2*n)/2)`
-/

namespace A158604.P9060365440378986361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010011 (2 * n) : ℚ) / 2⌉

end

end A158604.P9060365440378986361

namespace A158604

/-- `ceil(A010011(2*n)/2)` -/
def P9060365440378986361.Spec : Prop :=
  ∀ n, P9060365440378986361.a n = A158604 n

end A158604

/-! ## A158604.P18427057573767851721

`A010011(2*n)/gcd(2, A000010(n+2))`
-/

namespace A158604.P18427057573767851721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010011 (2 * n) : ℚ) / (Int.gcd 2 (A000010 (n + 2)) : ℚ)

end

end A158604.P18427057573767851721

namespace A158604

/-- `A010011(2*n)/gcd(2, A000010(n+2))` -/
def P18427057573767851721.Spec : Prop :=
  ∀ n, P18427057573767851721.a n = (A158604 n : ℚ)

end A158604

/-! ## A158604.P1195385820192074347

`∑[A008486(7*A130824(n))]`
-/

namespace A158604.P1195385820192074347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (7 * A130824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158604.P1195385820192074347

namespace A158604

/-- `∑[A008486(7*A130824(n))]` -/
def P1195385820192074347.Spec : Prop :=
  ∀ n, P1195385820192074347.a n = A158604 n

end A158604

/-! ## A158604.P16324566165923406107

`∑[A313777(record[lcm(8, n)])]`
-/

namespace A158604.P16324566165923406107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313777 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158604.P16324566165923406107

namespace A158604

/-- `∑[A313777(record[lcm(8, n)])]` -/
def P16324566165923406107.Spec : Prop :=
  ∀ n, P16324566165923406107.a n = A158604 n

end A158604

/-! ## A158604.P3210383359005733886

`A000027(A057428(n)+A010023(n))`
-/

namespace A158604.P3210383359005733886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A057428 n + A010023 n).toNat

end

end A158604.P3210383359005733886

namespace A158604

/-- `A000027(A057428(n)+A010023(n))` -/
def P3210383359005733886.Spec : Prop :=
  ∀ n, P3210383359005733886.a n = A158604 n

end A158604

/-! ## A158604.P8267381728383528124

`A000027(A010023(n)-A057428(n)²)`
-/

namespace A158604.P8267381728383528124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A010023 n - A057428 n ^ 2).toNat

end

end A158604.P8267381728383528124

namespace A158604

/-- `A000027(A010023(n)-A057428(n)²)` -/
def P8267381728383528124.Spec : Prop :=
  ∀ n, P8267381728383528124.a n = A158604 n

end A158604

/-!
# A158606: Last digit of A158605(n).

The programs for A158606, there is no canonical definition to state claims against.
-/

/-! ## A158606.P2460890400881303504

`A158605(n+1)%10`
-/

namespace A158606.P2460890400881303504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158605 (n + 1)) 10

end

end A158606.P2460890400881303504

/-! ## A158606.P406526395959174697

`A010879(A158605(n+1))`
-/

namespace A158606.P406526395959174697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A158605 (n + 1)).toNat

end

end A158606.P406526395959174697

/-! ## A158606.P6515734379744682138

`A194642(6*A158605(n+1))`
-/

namespace A158606.P6515734379744682138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194642 (6 * A158605 (n + 1)).toNat

end

end A158606.P6515734379744682138

/-!
# A158607: Period 5: repeat [9, 11, 13, 5, 7].

The programs for A158607, the canonical program `A158607.P3076645742283727271` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158607 has offset 1).

The definition of A158607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158607.P3076645742283727271

`2*(n+1)+7-10*floor((n+2)/5)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158607

/-- `2*(n+1)+7-10*floor((n+2)/5)` -/
def P3076645742283727271.Spec : Prop :=
  ∀ n, P3076645742283727271.a n = A158607 (n + 1)

theorem P3076645742283727271.correct : P3076645742283727271.Spec := by
  intro n
  simp only [A158607, Nat.add_sub_cancel]

end A158607

/-!
# A158608: a(n) = a(n-1) + 16*a(n-2), starting a(0)=1, a(1)=4.

The programs for A158608, the canonical program `A158608.P3010669374567314772` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158608 has offset 0).

The definition of A158608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+16*a(n-2)` (program `A158608.P3010669374567314772`, by `A158608.P3010669374567314772.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158608.P3010669374567314772

`a(n-1)+16*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158608

/-- `a(n-1)+16*a(n-2)` -/
def P3010669374567314772.Spec : Prop :=
  ∀ n, (P3010669374567314772.a n : ℤ) = A158608 n

theorem P3010669374567314772.correct : P3010669374567314772.Spec := by
  intro n
  simp only [A158608]

end A158608

/-! ## A158608.P8200158291777743417

`ogf((1+3x)/(1-x-16x^2))`
-/

namespace A158608.P8200158291777743417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -1, -16] n

end

end A158608.P8200158291777743417

namespace A158608

/-- `ogf((1+3x)/(1-x-16x^2))` -/
def P8200158291777743417.Spec : Prop :=
  ∀ n, P8200158291777743417.a n = A158608 n

end A158608

/-! ## A158608.P8803425018891542847

`a(n-1)+a(n-2)/(1/4)²` with `a(0)=1, a(1)=4`
-/

namespace A158608.P8803425018891542847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 4) ^ 2

end

end A158608.P8803425018891542847

namespace A158608

/-- `a(n-1)+a(n-2)/(1/4)²` -/
def P8803425018891542847.Spec : Prop :=
  ∀ n, P8803425018891542847.a n = (A158608 n : ℚ)

end A158608

/-! ## A158608.P13211008768263076431

`a(n-1)-4*(a(n-2)-5*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A158608.P13211008768263076431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - 4 * (a (n - 2) - 5 * a (n - 2))

end

end A158608.P13211008768263076431

namespace A158608

/-- `a(n-1)-4*(a(n-2)-5*a(n-2))` -/
def P13211008768263076431.Spec : Prop :=
  ∀ n, P13211008768263076431.a n = A158608 n

end A158608

/-!
# A158609: Expansion of (1+8*x)/(1-x-81*x^2).

The programs for A158609, the canonical program `A158609.P12083454803499974193` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158609 has offset 0).

The definition of A158609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+8x)/(1-x-81x^2))` (program `A158609.P12083454803499974193`, by `A158609.P12083454803499974193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158609.P12083454803499974193

`ogf((1+8x)/(1-x-81x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158609

/-- `ogf((1+8x)/(1-x-81x^2))` -/
def P12083454803499974193.Spec : Prop :=
  ∀ n, P12083454803499974193.a n = A158609 n

theorem P12083454803499974193.correct : P12083454803499974193.Spec := by
  intro n
  simp only [A158609]

end A158609

/-! ## A158609.P12504010238568028447

`a(n-1)+81*a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A158609.P12504010238568028447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 1) + 81 * a (n - 2)

end

end A158609.P12504010238568028447

namespace A158609

/-- `a(n-1)+81*a(n-2)` -/
def P12504010238568028447.Spec : Prop :=
  ∀ n, (P12504010238568028447.a n : ℤ) = A158609 n

end A158609

/-!
# A158610: Expansion of (1+15*x)/(1-x-256*x^2).

The programs for A158610, the canonical program `A158610.P34822251006996914` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158610 has offset 0).

The definition of A158610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158610.P34822251006996914

`a(n-1)+256*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158610

/-- `a(n-1)+256*a(n-2)` -/
def P34822251006996914.Spec : Prop :=
  ∀ n, (P34822251006996914.a n : ℤ) = A158610 n

theorem P34822251006996914.correct : P34822251006996914.Spec := by
  intro n
  simp only [A158610]

end A158610

/-!
# A158611: 0, 1 and the primes.

The programs for A158611, the canonical program `A158611.P9275629407611603775` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158611 has offset 1).

The definition of A158611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158611.P14374697510344359152

`record[A259153(n)]`
-/

namespace A158611.P14374697510344359152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158611.P14374697510344359152

namespace A158611

/-- `record[A259153(n)]` -/
def P14374697510344359152.Spec : Prop :=
  ∀ n, P14374697510344359152.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P16824496652365672444

`∑{d}[n, A030013(#)]`
-/

namespace A158611.P16824496652365672444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030013 d

end

end A158611.P16824496652365672444

namespace A158611

/-- `∑{d}[n, A030013(#)]` -/
def P16824496652365672444.Spec : Prop :=
  ∀ n, P16824496652365672444.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P17086599028709028242

`A173137(n+1)-(n+1)`
-/

namespace A158611.P17086599028709028242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173137 (n + 1) - (n + 1 : ℤ)

end

end A158611.P17086599028709028242

namespace A158611

/-- `A173137(n+1)-(n+1)` -/
def P17086599028709028242.Spec : Prop :=
  ∀ n, P17086599028709028242.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P9275629407611603775

`A000040(n-a(gcd(n, n+1)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158611

/-- `A000040(n-a(gcd(n, n+1)))` -/
def P9275629407611603775.Spec : Prop :=
  ∀ n, P9275629407611603775.a n = A158611 (n + 1)

theorem P9275629407611603775.correct : P9275629407611603775.Spec := by
  intro n
  simp only [A158611, Nat.add_sub_cancel]

end A158611

/-! ## A158611.P2137802759908908675

`A000040(floor(n-1/a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A158611.P2137802759908908675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 ⌊(n : ℚ) - 1 / (a (n - 1) : ℚ)⌋.toNat

end

end A158611.P2137802759908908675

namespace A158611

/-- `A000040(floor(n-1/a(n-1)))` -/
def P2137802759908908675.Spec : Prop :=
  ∀ n, P2137802759908908675.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P13833840253424828689

`A000040(a(C(2, n+1))+n-1)` with `a(0)=0, a(1)=1`
-/

namespace A158611.P13833840253424828689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 (a (Nat.choose 2 (n + 1)) + ((n : ℤ) - 1)).toNat

end

end A158611.P13833840253424828689

namespace A158611

/-- `A000040(a(C(2, n+1))+n-1)` -/
def P13833840253424828689.Spec : Prop :=
  ∀ n, P13833840253424828689.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P6054251350057997167

`A000040(a(and(1, 2*n))+n-1)` with `a(0)=0, a(1)=1`
-/

namespace A158611.P6054251350057997167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 (a (Nat.land 1 (2 * n)) + ((n : ℤ) - 1)).toNat

end

end A158611.P6054251350057997167

namespace A158611

/-- `A000040(a(and(1, 2*n))+n-1)` -/
def P6054251350057997167.Spec : Prop :=
  ∀ n, P6054251350057997167.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P6489863651905550400

`A000040(n-1-a(and(1, 2*n)))` with `a(0)=0, a(1)=1`
-/

namespace A158611.P6489863651905550400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 ((n : ℤ) - 1 - a (Nat.land 1 (2 * n))).toNat

end

end A158611.P6489863651905550400

namespace A158611

/-- `A000040(n-1-a(and(1, 2*n)))` -/
def P6489863651905550400.Spec : Prop :=
  ∀ n, P6489863651905550400.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P17905231056326138192

`A000040(and(2, a(n-1)²)+n-1)` with `a(0)=0, a(1)=1`
-/

namespace A158611.P17905231056326138192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 (Int.land 2 (a (n - 1) ^ 2) + ((n : ℤ) - 1)).toNat

end

end A158611.P17905231056326138192

namespace A158611

/-- `A000040(and(2, a(n-1)²)+n-1)` -/
def P17905231056326138192.Spec : Prop :=
  ∀ n, P17905231056326138192.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P7288046360427595311

`A046022(n+1)-A329678(n)`
-/

namespace A158611.P7288046360427595311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1) - A329678 n

end

end A158611.P7288046360427595311

namespace A158611

/-- `A046022(n+1)-A329678(n)` -/
def P7288046360427595311.Spec : Prop :=
  ∀ n, P7288046360427595311.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P16290625937957351317

`A335402(n+1)-A185013(n)`
-/

namespace A158611.P16290625937957351317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n + 1) - A185013 n

end

end A158611.P16290625937957351317

namespace A158611

/-- `A335402(n+1)-A185013(n)` -/
def P16290625937957351317.Spec : Prop :=
  ∀ n, P16290625937957351317.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P9097772620339126684

`∪[A070189(n), A008578(n+1)]`
-/

namespace A158611.P9097772620339126684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A158611.P9097772620339126684

namespace A158611

/-- `∪[A070189(n), A008578(n+1)]` -/
def P9097772620339126684.Spec : Prop :=
  ∀ n, (P9097772620339126684.a n : ℤ) = A158611 (n + 1)

end A158611

/-! ## A158611.P11652303151224954771

`∪[A000040(n+1), A162840(n)]`
-/

namespace A158611.P11652303151224954771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A158611.P11652303151224954771

namespace A158611

/-- `∪[A000040(n+1), A162840(n)]` -/
def P11652303151224954771.Spec : Prop :=
  ∀ n, (P11652303151224954771.a n : ℤ) = A158611 (n + 1)

end A158611

/-! ## A158611.P4034799706377875080

`A164653(n+1)-A008578(n+1)`
-/

namespace A158611.P4034799706377875080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1) - A008578 (n + 1)

end

end A158611.P4034799706377875080

namespace A158611

/-- `A164653(n+1)-A008578(n+1)` -/
def P4034799706377875080.Spec : Prop :=
  ∀ n, P4034799706377875080.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P8079463519569010581

`A176099(n+1)-A000040(n+1)`
-/

namespace A158611.P8079463519569010581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176099 (n + 1) - A000040 (n + 1)

end

end A158611.P8079463519569010581

namespace A158611

/-- `A176099(n+1)-A000040(n+1)` -/
def P8079463519569010581.Spec : Prop :=
  ∀ n, P8079463519569010581.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P12155990435106034702

`A176098(n+1)/A000040(n+1)`
-/

namespace A158611.P12155990435106034702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176098 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A158611.P12155990435106034702

namespace A158611

/-- `A176098(n+1)/A000040(n+1)` -/
def P12155990435106034702.Spec : Prop :=
  ∀ n, P12155990435106034702.a n = (A158611 (n + 1) : ℚ)

end A158611

/-! ## A158611.P11004287194558262166

`A176098(n+1)/A006005(n+1)`
-/

namespace A158611.P11004287194558262166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176098 (n + 1) : ℚ) / (A006005 (n + 1) : ℚ)

end

end A158611.P11004287194558262166

namespace A158611

/-- `A176098(n+1)/A006005(n+1)` -/
def P11004287194558262166.Spec : Prop :=
  ∀ n, P11004287194558262166.a n = (A158611 (n + 1) : ℚ)

end A158611

/-! ## A158611.P16087839448260236987

`A069102(n+1)%A008578(n+1)`
-/

namespace A158611.P16087839448260236987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069102 (n + 1)) (A008578 (n + 1))

end

end A158611.P16087839448260236987

namespace A158611

/-- `A069102(n+1)%A008578(n+1)` -/
def P16087839448260236987.Spec : Prop :=
  ∀ n, P16087839448260236987.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P5091418510212558567

`A176098(n+1)%A006093(n+1)`
-/

namespace A158611.P5091418510212558567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176098 (n + 1)) (A006093 (n + 1))

end

end A158611.P5091418510212558567

namespace A158611

/-- `A176098(n+1)%A006093(n+1)` -/
def P5091418510212558567.Spec : Prop :=
  ∀ n, P5091418510212558567.a n = A158611 (n + 1)

end A158611

/-! ## A158611.P10379305245301845388

`A002808(n+1)+A164653(n+1)-A022798(n+1)`
-/

namespace A158611.P10379305245301845388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A164653 (n + 1) - A022798 (n + 1))

end

end A158611.P10379305245301845388

namespace A158611

/-- `A002808(n+1)+A164653(n+1)-A022798(n+1)` -/
def P10379305245301845388.Spec : Prop :=
  ∀ n, P10379305245301845388.a n = A158611 (n + 1)

end A158611

/-!
# A158613: Expansion of (1 - 2*x^3 - x^4 - x^5 + x^6 + x^7 - x^8)/(1 - x^3)^3.

The programs for A158613, the canonical program `A158613.P17250250768611781447` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158613 has offset 0).

The definition of A158613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^3-x^4-x^5+x^6+x^7-x^8)/(1-3x^3+3x^6-x^9))` (program `A158613.P17250250768611781447`, by `A158613.P17250250768611781447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158613.P17250250768611781447

`ogf((1-2x^3-x^4-x^5+x^6+x^7-x^8)/(1-3x^3+3x^6-x^9))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158613

/-- `ogf((1-2x^3-x^4-x^5+x^6+x^7-x^8)/(1-3x^3+3x^6-x^9))` -/
def P17250250768611781447.Spec : Prop :=
  ∀ n, P17250250768611781447.a n = A158613 n

theorem P17250250768611781447.correct : P17250250768611781447.Spec := by
  intro n
  simp only [A158613]

end A158613

/-! ## A158613.P6489164849168795169

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=-1, a(5)=-1, a(6)=1, a(7)=-2, a(8)=-4`
-/

namespace A158613.P6489164849168795169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, -1, -1, 1, -2, -4] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9)

end

end A158613.P6489164849168795169

namespace A158613

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P6489164849168795169.Spec : Prop :=
  ∀ n, P6489164849168795169.a n = A158613 n

end A158613

/-!
# A158614: Numbers n such that 30*n + 11 is prime.

The programs for A158614, the canonical program `A158614.P3548908336296467476` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158614 has offset 1).

The definition of A158614 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132232, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158614.P3548908336296467476

`floor(A132232(n+1)/30)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158614

/-- `floor(A132232(n+1)/30)` -/
def P3548908336296467476.Spec : Prop :=
  ∀ n, P3548908336296467476.a n = A158614 (n + 1)

theorem P3548908336296467476.correct : P3548908336296467476.Spec := by
  intro n
  simp only [A158614, Nat.add_sub_cancel]

end A158614

/-! ## A158614.P12657734119207289019

`eq[1, A245839(A016885(2*n))]`
-/

namespace A158614.P12657734119207289019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245839 (A016885 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158614.P12657734119207289019

namespace A158614

/-- `eq[1, A245839(A016885(2*n))]` -/
def P12657734119207289019.Spec : Prop :=
  ∀ n, (P12657734119207289019.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P6640548089772456562

`eq[1, A068695(3*n+1)]`
-/

namespace A158614.P6640548089772456562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158614.P6640548089772456562

namespace A158614

/-- `eq[1, A068695(3*n+1)]` -/
def P6640548089772456562.Spec : Prop :=
  ∀ n, (P6640548089772456562.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P16032492534929923541

`eq[1, A091088(3*n+1)]`
-/

namespace A158614.P16032492534929923541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158614.P16032492534929923541

namespace A158614

/-- `eq[1, A091088(3*n+1)]` -/
def P16032492534929923541.Spec : Prop :=
  ∀ n, (P16032492534929923541.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P15889525931021844933

`eq[1, A001222(30*n+11)]`
-/

namespace A158614.P15889525931021844933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158614.P15889525931021844933

namespace A158614

/-- `eq[1, A001222(30*n+11)]` -/
def P15889525931021844933.Spec : Prop :=
  ∀ n, (P15889525931021844933.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P6796922301913672158

`lt[A000005(5*(6*n+2)+1), 3]`
-/

namespace A158614.P6796922301913672158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (6 * n + 2) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A158614.P6796922301913672158

namespace A158614

/-- `lt[A000005(5*(6*n+2)+1), 3]` -/
def P6796922301913672158.Spec : Prop :=
  ∀ n, (P6796922301913672158.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P17033216501022470190

`eq[1, A075743(A017293(n)+1)]`
-/

namespace A158614.P17033216501022470190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017293 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158614.P17033216501022470190

namespace A158614

/-- `eq[1, A075743(A017293(n)+1)]` -/
def P17033216501022470190.Spec : Prop :=
  ∀ n, (P17033216501022470190.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P8579297103658781029

`eq[1, A075743(A017317(n)-1)]`
-/

namespace A158614.P8579297103658781029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017317 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158614.P8579297103658781029

namespace A158614

/-- `eq[1, A075743(A017317(n)-1)]` -/
def P8579297103658781029.Spec : Prop :=
  ∀ n, (P8579297103658781029.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P6533487234882798385

`eq[1, A075743(A017329(n)-2)]`
-/

namespace A158614.P6533487234882798385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017329 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158614.P6533487234882798385

namespace A158614

/-- `eq[1, A075743(A017329(n)-2)]` -/
def P6533487234882798385.Spec : Prop :=
  ∀ n, (P6533487234882798385.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P10432704400423454797

`record[A103627(A024912(n+1)+1)]`
-/

namespace A158614.P10432704400423454797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A024912 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158614.P10432704400423454797

namespace A158614

/-- `record[A103627(A024912(n+1)+1)]` -/
def P10432704400423454797.Spec : Prop :=
  ∀ n, P10432704400423454797.a n = A158614 (n + 1)

end A158614

/-! ## A158614.P11311532782572652227

`eq[2, A000005(A082369(n+1)-2)]`
-/

namespace A158614.P11311532782572652227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A082369 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158614.P11311532782572652227

namespace A158614

/-- `eq[2, A000005(A082369(n+1)-2)]` -/
def P11311532782572652227.Spec : Prop :=
  ∀ n, (P11311532782572652227.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P17398103060098203426

`lt[A128471(n), A000010(A082369(n+1)-2)]`
-/

namespace A158614.P17398103060098203426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A082369 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158614.P17398103060098203426

namespace A158614

/-- `lt[A128471(n), A000010(A082369(n+1)-2)]` -/
def P17398103060098203426.Spec : Prop :=
  ∀ n, (P17398103060098203426.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P4971860277274584990

`lt[A055664(n+1), A006530(A082369(n+1)-2)]`
-/

namespace A158614.P4971860277274584990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158614.P4971860277274584990

namespace A158614

/-- `lt[A055664(n+1), A006530(A082369(n+1)-2)]` -/
def P4971860277274584990.Spec : Prop :=
  ∀ n, (P4971860277274584990.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P8486890846221018281

`lt[A000203(A082369(n+1)-2), A082369(n+1)]`
-/

namespace A158614.P8486890846221018281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A082369 (n + 1) - 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158614.P8486890846221018281

namespace A158614

/-- `lt[A000203(A082369(n+1)-2), A082369(n+1)]` -/
def P8486890846221018281.Spec : Prop :=
  ∀ n, (P8486890846221018281.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P4653387228157162628

`lt[A082376(n+1), A006530(A082369(n+1)-2)]`
-/

namespace A158614.P4653387228157162628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158614.P4653387228157162628

namespace A158614

/-- `lt[A082376(n+1), A006530(A082369(n+1)-2)]` -/
def P4653387228157162628.Spec : Prop :=
  ∀ n, (P4653387228157162628.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P15041343330972078413

`lt[A091727(n+1), A006530(A082369(n+1)-2)]`
-/

namespace A158614.P15041343330972078413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158614.P15041343330972078413

namespace A158614

/-- `lt[A091727(n+1), A006530(A082369(n+1)-2)]` -/
def P15041343330972078413.Spec : Prop :=
  ∀ n, (P15041343330972078413.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P9732563900724579464

`lt[A082378(n+1), A020639(A082369(n+1)-2)]`
-/

namespace A158614.P9732563900724579464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158614.P9732563900724579464

namespace A158614

/-- `lt[A082378(n+1), A020639(A082369(n+1)-2)]` -/
def P9732563900724579464.Spec : Prop :=
  ∀ n, (P9732563900724579464.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P14450763408095332163

`lt[A191062(n+1), A006530(A082369(n+1)-2)]`
-/

namespace A158614.P14450763408095332163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158614.P14450763408095332163

namespace A158614

/-- `lt[A191062(n+1), A006530(A082369(n+1)-2)]` -/
def P14450763408095332163.Spec : Prop :=
  ∀ n, (P14450763408095332163.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P3698843244128145482

`lt[A341786(n+1), A006530(A082369(n+1)-2)]`
-/

namespace A158614.P3698843244128145482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158614.P3698843244128145482

namespace A158614

/-- `lt[A341786(n+1), A006530(A082369(n+1)-2)]` -/
def P3698843244128145482.Spec : Prop :=
  ∀ n, (P3698843244128145482.a n : ℤ) = A158614 (n + 1)

end A158614

/-! ## A158614.P13471737458018687023

`lt[A341790(n+1), A006530(A082369(n+1)-2)]`
-/

namespace A158614.P13471737458018687023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158614.P13471737458018687023

namespace A158614

/-- `lt[A341790(n+1), A006530(A082369(n+1)-2)]` -/
def P13471737458018687023.Spec : Prop :=
  ∀ n, (P13471737458018687023.a n : ℤ) = A158614 (n + 1)

end A158614

/-!
# A158615: Expansion of Sum_{n>0} n*n!*x^n/(1-n!*x^n).

The programs for A158615, there is no canonical definition to state claims against.
-/

/-! ## A158615.P6036234698805134702

`A194960(A038761(n))`
-/

namespace A158615.P6036234698805134702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (A038761 n).toNat

end

end A158615.P6036234698805134702

/-!
# A158617: a(n) = Hermite(n, 16).

The programs for A158617, the canonical program `A158617.P18297475487111295980` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158617 has offset 0).

The definition of A158617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158617.P18297475487111295980

`32*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158617

/-- `32*a(n-1)-2*(n-1)*a(n-2)` -/
def P18297475487111295980.Spec : Prop :=
  ∀ n, P18297475487111295980.a n = A158617 n

theorem P18297475487111295980.correct : P18297475487111295980.Spec := by
  intro n
  simp only [A158617]

end A158617

/-!
# A158618: Number of gates in Ladner-Fischer prefix circuit.

The programs for A158618, there is no canonical definition to state claims against.
-/

/-! ## A158618.P3572428644609160809

`∑[A001222(A282388(A256263(n)))]`
-/

namespace A158618.P3572428644609160809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A282388 (A256263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158618.P3572428644609160809

/-! ## A158618.P2712666987789097173

`∑[A000120(n)+1-A151692(4*n)]`
-/

namespace A158618.P2712666987789097173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1 - A151692 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158618.P2712666987789097173

/-! ## A158618.P17570110205467814870

`∑[A000120(A111660(A256261(n)))]`
-/

namespace A158618.P17570110205467814870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A111660 (A256261 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158618.P17570110205467814870

/-! ## A158618.P16728088402794732410

`∑[∑{e}[A187564(2*n+1), #]]`
-/

namespace A158618.P16728088402794732410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187564 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158618.P16728088402794732410

/-! ## A158618.P15688827534147638788

`∑[A001222(A187564(2*n+1))]`
-/

namespace A158618.P15688827534147638788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A187564 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158618.P15688827534147638788

/-!
# A158619: Twin prime pairs concatenated in binary representation.

The programs for A158619, there is no canonical definition to state claims against.
-/

/-! ## A158619.P16055222880738281828

`A065016(A037074(n+1))`
-/

namespace A158619.P16055222880738281828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065016 (A037074 (n + 1)).toNat

end

end A158619.P16055222880738281828

/-! ## A158619.P18071203055269901055

`A065016(A134020(n+2))`
-/

namespace A158619.P18071203055269901055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065016 (A134020 (n + 2)).toNat

end

end A158619.P18071203055269901055

/-! ## A158619.P5736085004687961218

`A287874(A120875(n+1)+1)`
-/

namespace A158619.P5736085004687961218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (A120875 (n + 1) + 1).toNat

end

end A158619.P5736085004687961218

/-! ## A158619.P13508831054568682384

`A287874(A075369(n+1)-1)`
-/

namespace A158619.P13508831054568682384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (A075369 (n + 1) - 1).toNat

end

end A158619.P13508831054568682384

/-!
# A158620: Partial products of A068601.

The programs for A158620, there is no canonical definition to state claims against.
-/

/-! ## A158620.P14981678272124674626

`∏[(n+2)^3-1]`
-/

namespace A158620.P14981678272124674626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A158620.P14981678272124674626

/-! ## A158620.P6297837962460174581

`(n+1)!*∏[(n+2)²+n+3]`
-/

namespace A158620.P6297837962460174581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A158620.P6297837962460174581

/-! ## A158620.P11078426523279980943

`a(n-1)*∑[a(n-1)+6*(n+1)]` with `a(0)=7`
-/

namespace A158620.P11078426523279980943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 6 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158620.P11078426523279980943

/-! ## A158620.P10732904344568848208

`a(n-1)*A068601(n+2)` with `a(0)=7`
-/

namespace A158620.P10732904344568848208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) * A068601 (n + 2)

end

end A158620.P10732904344568848208

/-! ## A158620.P18061904059334610654

`a(n-1)*∑[A003215(n+1)]` with `a(0)=7`
-/

namespace A158620.P18061904059334610654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158620.P18061904059334610654

/-!
# A158621: Partial products of A001093.

The programs for A158621, there is no canonical definition to state claims against.
-/

/-! ## A158621.P6900885106640556085

`∏[(n+2)^3+1]`
-/

namespace A158621.P6900885106640556085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A158621.P6900885106640556085

/-! ## A158621.P2741706612226124413

`((n+2)^3+1)*a(n-1)` with `a(0)=9`
-/

namespace A158621.P2741706612226124413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  ((n + 2) ^ 3 + 1) * a (n - 1)

end

end A158621.P2741706612226124413

/-! ## A158621.P6325656468103018344

`A256019(n+3)`
-/

namespace A158621.P6325656468103018344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256019 (n + 3)

end

end A158621.P6325656468103018344

/-! ## A158621.P14044132784589668854

`A255433(n+2)/2`
-/

namespace A158621.P14044132784589668854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255433 (n + 2) : ℚ) / 2

end

end A158621.P14044132784589668854

/-!
# A158622: Numerator of the reduced fraction A158620(n)/A158621(n).

The programs for A158622, the canonical program `A158622.P3424711789564218679` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158622 has offset 2).

The definition of A158622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158622.P4638967748175561087

`lcm(3, (n+2)²+n+3)/3`
-/

namespace A158622.P4638967748175561087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 ((n + 2) ^ 2 + (n + 3)) : ℚ) / 3

end

end A158622.P4638967748175561087

namespace A158622

/-- `lcm(3, (n+2)²+n+3)/3` -/
def P4638967748175561087.Spec : Prop :=
  ∀ n, P4638967748175561087.a n = (A158622 (n + 2) : ℚ)

end A158622

/-! ## A158622.P3166305513894782220

`((n+2)²+n+3)/gcd(3, n+1)`
-/

namespace A158622.P3166305513894782220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 + (n + 3) : ℚ) / (Nat.gcd 3 (n + 1) : ℚ)

end

end A158622.P3166305513894782220

namespace A158622

/-- `((n+2)²+n+3)/gcd(3, n+1)` -/
def P3166305513894782220.Spec : Prop :=
  ∀ n, P3166305513894782220.a n = (A158622 (n + 2) : ℚ)

end A158622

/-! ## A158622.P3424711789564218679

`∑[A153171(n)]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158622

/-- `∑[A153171(n)]+1` -/
def P3424711789564218679.Spec : Prop :=
  ∀ n, P3424711789564218679.a n = A158622 (n + 2)

theorem P3424711789564218679.correct : P3424711789564218679.Spec := by
  intro n
  simp only [A158622, Nat.add_sub_cancel]

end A158622

/-! ## A158622.P11599305132361657382

`A153171(n)+A046163(n+1)`
-/

namespace A158622.P11599305132361657382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153171 n + A046163 (n + 1)

end

end A158622.P11599305132361657382

namespace A158622

/-- `A153171(n)+A046163(n+1)` -/
def P11599305132361657382.Spec : Prop :=
  ∀ n, P11599305132361657382.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P1885015215414576982

`gcd(A038865(n+1), A351696(n+1))`
-/

namespace A158622.P1885015215414576982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038865 (n + 1)) (A351696 (n + 1))

end

end A158622.P1885015215414576982

namespace A158622

/-- `gcd(A038865(n+1), A351696(n+1))` -/
def P1885015215414576982.Spec : Prop :=
  ∀ n, (P1885015215414576982.a n : ℤ) = A158622 (n + 2)

end A158622

/-! ## A158622.P15107884226782518554

`A046163(n+2)`
-/

namespace A158622.P15107884226782518554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (n + 2)

end

end A158622.P15107884226782518554

namespace A158622

/-- `A046163(n+2)` -/
def P15107884226782518554.Spec : Prop :=
  ∀ n, P15107884226782518554.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P6287368480820328217

`A153171(n)+A130770(n+1)`
-/

namespace A158622.P6287368480820328217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153171 n + A130770 (n + 1)

end

end A158622.P6287368480820328217

namespace A158622

/-- `A153171(n)+A130770(n+1)` -/
def P6287368480820328217.Spec : Prop :=
  ∀ n, P6287368480820328217.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P7847204096720094649

`gcd(A068601(n+2), A220892(n+1))`
-/

namespace A158622.P7847204096720094649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068601 (n + 2)) (A220892 (n + 1))

end

end A158622.P7847204096720094649

namespace A158622

/-- `gcd(A068601(n+2), A220892(n+1))` -/
def P7847204096720094649.Spec : Prop :=
  ∀ n, (P7847204096720094649.a n : ℤ) = A158622 (n + 2)

end A158622

/-! ## A158622.P563432817387819389

`2*A222591(n+4)-A144437(n+1)`
-/

namespace A158622.P563432817387819389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222591 (n + 4) - A144437 (n + 1)

end

end A158622.P563432817387819389

namespace A158622

/-- `2*A222591(n+4)-A144437(n+1)` -/
def P563432817387819389.Spec : Prop :=
  ∀ n, P563432817387819389.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P10916988421755794536

`2*A222591(n+4)-A169609(n+1)`
-/

namespace A158622.P10916988421755794536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222591 (n + 4) - A169609 (n + 1)

end

end A158622.P10916988421755794536

namespace A158622

/-- `2*A222591(n+4)-A169609(n+1)` -/
def P10916988421755794536.Spec : Prop :=
  ∀ n, P10916988421755794536.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P5795394182208097186

`A130770(n+2)`
-/

namespace A158622.P5795394182208097186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (n + 2)

end

end A158622.P5795394182208097186

namespace A158622

/-- `A130770(n+2)` -/
def P5795394182208097186.Spec : Prop :=
  ∀ n, P5795394182208097186.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P11498622457944627324

`A130723(n+2)/3`
-/

namespace A158622.P11498622457944627324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130723 (n + 2) : ℚ) / 3

end

end A158622.P11498622457944627324

namespace A158622

/-- `A130723(n+2)/3` -/
def P11498622457944627324.Spec : Prop :=
  ∀ n, P11498622457944627324.a n = (A158622 (n + 2) : ℚ)

end A158622

/-! ## A158622.P16657954546787352492

`A194767(n+2)-A146535(n+3)`
-/

namespace A158622.P16657954546787352492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194767 (n + 2) - A146535 (n + 3)

end

end A158622.P16657954546787352492

namespace A158622

/-- `A194767(n+2)-A146535(n+3)` -/
def P16657954546787352492.Spec : Prop :=
  ∀ n, P16657954546787352492.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P6063371173764860070

`A002061(n+3)/A109007(n+1)`
-/

namespace A158622.P6063371173764860070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 (n + 3) : ℚ) / (A109007 (n + 1) : ℚ)

end

end A158622.P6063371173764860070

namespace A158622

/-- `A002061(n+3)/A109007(n+1)` -/
def P6063371173764860070.Spec : Prop :=
  ∀ n, P6063371173764860070.a n = (A158622 (n + 2) : ℚ)

end A158622

/-! ## A158622.P6392643442015480833

`filter[A130770(n), A353638(#)]`
-/

namespace A158622.P6392643442015480833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A158622.P6392643442015480833

namespace A158622

/-- `filter[A130770(n), A353638(#)]` -/
def P6392643442015480833.Spec : Prop :=
  ∀ n, P6392643442015480833.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P17060866546139450017

`filter[A130770(n), A355450(#)]`
-/

namespace A158622.P17060866546139450017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A158622.P17060866546139450017

namespace A158622

/-- `filter[A130770(n), A355450(#)]` -/
def P17060866546139450017.Spec : Prop :=
  ∀ n, P17060866546139450017.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P15957341050311109888

`filter[A130770(n), A368625(#)]`
-/

namespace A158622.P15957341050311109888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368625 (f1 j).toNat = 1) n)

end

end A158622.P15957341050311109888

namespace A158622

/-- `filter[A130770(n), A368625(#)]` -/
def P15957341050311109888.Spec : Prop :=
  ∀ n, P15957341050311109888.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P17922988845920069692

`filter[A130770(n), A014306(#)]`
-/

namespace A158622.P17922988845920069692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A158622.P17922988845920069692

namespace A158622

/-- `filter[A130770(n), A014306(#)]` -/
def P17922988845920069692.Spec : Prop :=
  ∀ n, P17922988845920069692.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P7124821711364985450

`filter[A130770(n), A295309(#)]`
-/

namespace A158622.P7124821711364985450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A158622.P7124821711364985450

namespace A158622

/-- `filter[A130770(n), A295309(#)]` -/
def P7124821711364985450.Spec : Prop :=
  ∀ n, P7124821711364985450.a n = A158622 (n + 2)

end A158622

/-! ## A158622.P196154777387674060

`filter[A130770(n), A347523(#)]`
-/

namespace A158622.P196154777387674060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A158622.P196154777387674060

namespace A158622

/-- `filter[A130770(n), A347523(#)]` -/
def P196154777387674060.Spec : Prop :=
  ∀ n, P196154777387674060.a n = A158622 (n + 2)

end A158622

/-!
# A158623: Denominator of the reduced fraction A158620(n)/A158621(n).

The programs for A158623, the canonical program `A158623.P14191757164199410743` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158623 has offset 2).

The definition of A158623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158623.P14191757164199410743

`gcd(3, C(n, 2))*C(n+3, 2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158623

/-- `gcd(3, C(n, 2))*C(n+3, 2)` -/
def P14191757164199410743.Spec : Prop :=
  ∀ n, (P14191757164199410743.a n : ℤ) = A158623 (n + 2)

theorem P14191757164199410743.correct : P14191757164199410743.Spec := by
  intro n
  simp only [A158623, Nat.add_sub_cancel]

end A158623

/-! ## A158623.P4600624965146886011

`(∑[n+2]%3+1)*C(n+3, 2)`
-/

namespace A158623.P4600624965146886011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) % 3 + 1) * Nat.choose (n + 3) 2

end

end A158623.P4600624965146886011

namespace A158623

/-- `(∑[n+2]%3+1)*C(n+3, 2)` -/
def P4600624965146886011.Spec : Prop :=
  ∀ n, (P4600624965146886011.a n : ℤ) = A158623 (n + 2)

end A158623

/-! ## A158623.P12513691125583116294

`(∑[n+2]+1)*or(1, 3-n%3)`
-/

namespace A158623.P12513691125583116294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * Int.lor 1 (3 - ((n % 3 : ℕ) : ℤ))

end

end A158623.P12513691125583116294

namespace A158623

/-- `(∑[n+2]+1)*or(1, 3-n%3)` -/
def P12513691125583116294.Spec : Prop :=
  ∀ n, P12513691125583116294.a n = A158623 (n + 2)

end A158623

/-! ## A158623.P8727602771823226843

`dr(3*C(n+3, 2))/3*C(n+3, 2)`
-/

namespace A158623.P8727602771823226843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (3 * Nat.choose (n + 3) 2 : ℤ) : ℚ) / 3 * (Nat.choose (n + 3) 2 : ℚ)

end

end A158623.P8727602771823226843

namespace A158623

/-- `dr(3*C(n+3, 2))/3*C(n+3, 2)` -/
def P8727602771823226843.Spec : Prop :=
  ∀ n, P8727602771823226843.a n = (A158623 (n + 2) : ℚ)

end A158623

/-! ## A158623.P13706440781693933614

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=9, a(1)=18, a(2)=10, a(3)=45, a(4)=63, a(5)=28, a(6)=108, a(7)=135, a(8)=55`
-/

namespace A158623.P13706440781693933614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 18, 10, 45, 63, 28, 108, 135, 55] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9)

end

end A158623.P13706440781693933614

namespace A158623

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P13706440781693933614.Spec : Prop :=
  ∀ n, P13706440781693933614.a n = A158623 (n + 2)

end A158623

/-! ## A158623.P5638883875905246710

`A000217(n+2)*A144437(n+1)`
-/

namespace A158623.P5638883875905246710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A144437 (n + 1)

end

end A158623.P5638883875905246710

namespace A158623

/-- `A000217(n+2)*A144437(n+1)` -/
def P5638883875905246710.Spec : Prop :=
  ∀ n, P5638883875905246710.a n = A158623 (n + 2)

end A158623

/-! ## A158623.P11680878153300072197

`Δ[(n+3)*∑[n+1]]/gcd(n+1, n-2)`
-/

namespace A158623.P11680878153300072197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 2) : ℚ)

end

end A158623.P11680878153300072197

namespace A158623

/-- `Δ[(n+3)*∑[n+1]]/gcd(n+1, n-2)` -/
def P11680878153300072197.Spec : Prop :=
  ∀ n, P11680878153300072197.a n = (A158623 (n + 2) : ℚ)

end A158623

/-! ## A158623.P230339466003076658

`A144437(n+1)*A253145(n+1)`
-/

namespace A158623.P230339466003076658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144437 (n + 1) * A253145 (n + 1)

end

end A158623.P230339466003076658

namespace A158623

/-- `A144437(n+1)*A253145(n+1)` -/
def P230339466003076658.Spec : Prop :=
  ∀ n, P230339466003076658.a n = A158623 (n + 2)

end A158623

/-! ## A158623.P12777662178475988492

`A169609(n+1)*A253145(n+1)`
-/

namespace A158623.P12777662178475988492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169609 (n + 1) * A253145 (n + 1)

end

end A158623.P12777662178475988492

namespace A158623

/-- `A169609(n+1)*A253145(n+1)` -/
def P12777662178475988492.Spec : Prop :=
  ∀ n, P12777662178475988492.a n = A158623 (n + 2)

end A158623

/-! ## A158623.P8709986020923701628

`A000217(n+2)*A169609(n+1)`
-/

namespace A158623.P8709986020923701628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A169609 (n + 1)

end

end A158623.P8709986020923701628

namespace A158623

/-- `A000217(n+2)*A169609(n+1)` -/
def P8709986020923701628.Spec : Prop :=
  ∀ n, P8709986020923701628.a n = A158623 (n + 2)

end A158623

/-! ## A158623.P9613607120743537127

`A089145(n)*A175485(n+2)-A306368(n)`
-/

namespace A158623.P9613607120743537127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089145 n * A175485 (n + 2) - A306368 n

end

end A158623.P9613607120743537127

namespace A158623

/-- `A089145(n)*A175485(n+2)-A306368(n)` -/
def P9613607120743537127.Spec : Prop :=
  ∀ n, P9613607120743537127.a n = A158623 (n + 2)

end A158623

/-! ## A158623.P7181551303095841097

`A203648(C(n+3, 2))`
-/

namespace A158623.P7181551303095841097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203648 (Nat.choose (n + 3) 2)

end

end A158623.P7181551303095841097

namespace A158623

/-- `A203648(C(n+3, 2))` -/
def P7181551303095841097.Spec : Prop :=
  ∀ n, P7181551303095841097.a n = A158623 (n + 2)

end A158623

/-! ## A158623.P16859487960066000179

`A203648(A253145(n+1))`
-/

namespace A158623.P16859487960066000179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203648 (A253145 (n + 1)).toNat

end

end A158623.P16859487960066000179

namespace A158623

/-- `A203648(A253145(n+1))` -/
def P16859487960066000179.Spec : Prop :=
  ∀ n, P16859487960066000179.a n = A158623 (n + 2)

end A158623

/-!
# A158626: a(n) = 42*n^2 - 1.

The programs for A158626, the canonical program `A158626.P2926879302269881387` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158626 has offset 1).

The definition of A158626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `42*(n+1)²-1` (program `A158626.P2926879302269881387`, by `A158626.P2926879302269881387.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158626.P2926879302269881387

`42*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158626

/-- `42*(n+1)²-1` -/
def P2926879302269881387.Spec : Prop :=
  ∀ n, P2926879302269881387.a n = A158626 (n + 1)

theorem P2926879302269881387.correct : P2926879302269881387.Spec := by
  intro n
  simp only [A158626, Nat.add_sub_cancel]

end A158626

/-! ## A158626.P5797392710310423118

`abs(2-A158604(n+1))`
-/

namespace A158626.P5797392710310423118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158604 (n + 1)|

end

end A158626.P5797392710310423118

namespace A158626

/-- `abs(2-A158604(n+1))` -/
def P5797392710310423118.Spec : Prop :=
  ∀ n, P5797392710310423118.a n = A158626 (n + 1)

end A158626

/-! ## A158626.P14151360703952522945

`abs(∑[6*7*A005408(n)]-1)`
-/

namespace A158626.P14151360703952522945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (7 * A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A158626.P14151360703952522945

namespace A158626

/-- `abs(∑[6*7*A005408(n)]-1)` -/
def P14151360703952522945.Spec : Prop :=
  ∀ n, P14151360703952522945.a n = A158626 (n + 1)

end A158626

/-! ## A158626.P5855065632683658978

`Δ[(2*n+3)*(A247541(n)+2)]`
-/

namespace A158626.P5855065632683658978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * (A247541 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158626.P5855065632683658978

namespace A158626

/-- `Δ[(2*n+3)*(A247541(n)+2)]` -/
def P5855065632683658978.Spec : Prop :=
  ∀ n, P5855065632683658978.a n = A158626 (n + 1)

end A158626

/-! ## A158626.P9873357701021738089

`(A158680(n+1)+A158540(n+1))/2`
-/

namespace A158626.P9873357701021738089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158680 (n + 1) + A158540 (n + 1) : ℚ) / 2

end

end A158626.P9873357701021738089

namespace A158626

/-- `(A158680(n+1)+A158540(n+1))/2` -/
def P9873357701021738089.Spec : Prop :=
  ∀ n, P9873357701021738089.a n = (A158626 (n + 1) : ℚ)

end A158626

/-! ## A158626.P2171460225800653692

`(A158627(n+1)-A158597(n+1))/2`
-/

namespace A158626.P2171460225800653692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158627 (n + 1) - A158597 (n + 1) : ℚ) / 2

end

end A158626.P2171460225800653692

namespace A158626

/-- `(A158627(n+1)-A158597(n+1))/2` -/
def P2171460225800653692.Spec : Prop :=
  ∀ n, P2171460225800653692.a n = (A158626 (n + 1) : ℚ)

end A158626

/-! ## A158626.P9889110399875552591

`lcm(2-A158604(n+1), A034947(n+1))`
-/

namespace A158626.P9889110399875552591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A158604 (n + 1)) (A034947 (n + 1))

end

end A158626.P9889110399875552591

namespace A158626

/-- `lcm(2-A158604(n+1), A034947(n+1))` -/
def P9889110399875552591.Spec : Prop :=
  ∀ n, (P9889110399875552591.a n : ℤ) = A158626 (n + 1)

end A158626

/-! ## A158626.P6487824575576927119

`(6*A158680(n+1))%A158693(n+1)`
-/

namespace A158626.P6487824575576927119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 * A158680 (n + 1)) (A158693 (n + 1))

end

end A158626.P6487824575576927119

namespace A158626

/-- `(6*A158680(n+1))%A158693(n+1)` -/
def P6487824575576927119.Spec : Prop :=
  ∀ n, P6487824575576927119.a n = A158626 (n + 1)

end A158626

/-! ## A158626.P12565769643570158855

`abs(3-A010023(n+1))`
-/

namespace A158626.P12565769643570158855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A010023 (n + 1)|

end

end A158626.P12565769643570158855

namespace A158626

/-- `abs(3-A010023(n+1))` -/
def P12565769643570158855.Spec : Prop :=
  ∀ n, P12565769643570158855.a n = A158626 (n + 1)

end A158626

/-! ## A158626.P2522607922227856008

`Δ[A063497(n)-A169711(n+1)]`
-/

namespace A158626.P2522607922227856008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063497 n - A169711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158626.P2522607922227856008

namespace A158626

/-- `Δ[A063497(n)-A169711(n+1)]` -/
def P2522607922227856008.Spec : Prop :=
  ∀ n, P2522607922227856008.a n = A158626 (n + 1)

end A158626

/-! ## A158626.P725433609401459877

`-or(3-A010023(n+1), A000007(n))`
-/

namespace A158626.P725433609401459877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (3 - A010023 (n + 1)) (A000007 n)

end

end A158626.P725433609401459877

namespace A158626

/-- `-or(3-A010023(n+1), A000007(n))` -/
def P725433609401459877.Spec : Prop :=
  ∀ n, P725433609401459877.a n = A158626 (n + 1)

end A158626

/-! ## A158626.P8970547900063196503

`gcd(3-A010023(n+1), A085121(2*n))`
-/

namespace A158626.P8970547900063196503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 - A010023 (n + 1)) (A085121 (2 * n))

end

end A158626.P8970547900063196503

namespace A158626

/-- `gcd(3-A010023(n+1), A085121(2*n))` -/
def P8970547900063196503.Spec : Prop :=
  ∀ n, (P8970547900063196503.a n : ℤ) = A158626 (n + 1)

end A158626

/-! ## A158626.P5689623971779666070

`(A010023(n+1)-3)%A000096(n+6)²`
-/

namespace A158626.P5689623971779666070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010023 (n + 1) - 3) (A000096 (n + 6) ^ 2)

end

end A158626.P5689623971779666070

namespace A158626

/-- `(A010023(n+1)-3)%A000096(n+6)²` -/
def P5689623971779666070.Spec : Prop :=
  ∀ n, P5689623971779666070.a n = A158626 (n + 1)

end A158626

/-! ## A158626.P4992344209511896052

`gcd(A010023(n+1)-3, A198954(A014132(n+1)))`
-/

namespace A158626.P4992344209511896052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010023 (n + 1) - 3) (A198954 (A014132 (n + 1)).toNat)

end

end A158626.P4992344209511896052

namespace A158626

/-- `gcd(A010023(n+1)-3, A198954(A014132(n+1)))` -/
def P4992344209511896052.Spec : Prop :=
  ∀ n, (P4992344209511896052.a n : ℤ) = A158626 (n + 1)

end A158626

/-! ## A158626.P4120934225179802183

`abs(A158604(A028242(2*n))-2)`
-/

namespace A158626.P4120934225179802183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158604 (A028242 (2 * n)).toNat - 2|

end

end A158626.P4120934225179802183

namespace A158626

/-- `abs(A158604(A028242(2*n))-2)` -/
def P4120934225179802183.Spec : Prop :=
  ∀ n, P4120934225179802183.a n = A158626 (n + 1)

end A158626

/-! ## A158626.P10391443007524679737

`Δ[A000330(n)*A040421(2*n)-(n+1)]`
-/

namespace A158626.P10391443007524679737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n * A040421 (2 * n) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158626.P10391443007524679737

namespace A158626

/-- `Δ[A000330(n)*A040421(2*n)-(n+1)]` -/
def P10391443007524679737.Spec : Prop :=
  ∀ n, P10391443007524679737.a n = A158626 (n + 1)

end A158626

/-! ## A158626.P11463450008041015038

`(A010023(n+1)-3)%A349987(A008458(n))`
-/

namespace A158626.P11463450008041015038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010023 (n + 1) - 3) (A349987 (A008458 n).toNat)

end

end A158626.P11463450008041015038

namespace A158626

/-- `(A010023(n+1)-3)%A349987(A008458(n))` -/
def P11463450008041015038.Spec : Prop :=
  ∀ n, P11463450008041015038.a n = A158626 (n + 1)

end A158626

/-! ## A158626.P1723929972010409891

`A000027(A010023(n+1)-3)`
-/

namespace A158626.P1723929972010409891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A010023 (n + 1) - 3).toNat

end

end A158626.P1723929972010409891

namespace A158626

/-- `A000027(A010023(n+1)-3)` -/
def P1723929972010409891.Spec : Prop :=
  ∀ n, P1723929972010409891.a n = A158626 (n + 1)

end A158626

/-!
# A158627: a(n) = 484*n^2 - 22.

The programs for A158627, the canonical program `A158627.P10482564301649781878` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158627 has offset 1).

The definition of A158627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `484*(n+1)²-22` (program `A158627.P10482564301649781878`, by `A158627.P10482564301649781878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158627.P10482564301649781878

`484*(n+1)²-22`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158627

/-- `484*(n+1)²-22` -/
def P10482564301649781878.Spec : Prop :=
  ∀ n, P10482564301649781878.a n = A158627 (n + 1)

theorem P10482564301649781878.correct : P10482564301649781878.Spec := by
  intro n
  simp only [A158627, Nat.add_sub_cancel]

end A158627

/-! ## A158627.P6653591864981067212

`22*A158540(n+1)`
-/

namespace A158627.P6653591864981067212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A158540 (n + 1)

end

end A158627.P6653591864981067212

namespace A158627

/-- `22*A158540(n+1)` -/
def P6653591864981067212.Spec : Prop :=
  ∀ n, P6653591864981067212.a n = A158627 (n + 1)

end A158627

/-! ## A158627.P15876867411359757759

`record[(22*(1-n))²-22]`
-/

namespace A158627.P15876867411359757759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (22 * (1 - (n : ℤ))) ^ 2 - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158627.P15876867411359757759

namespace A158627

/-- `record[(22*(1-n))²-22]` -/
def P15876867411359757759.Spec : Prop :=
  ∀ n, P15876867411359757759.a n = A158627 (n + 1)

end A158627

/-! ## A158627.P10772625251958895689

`11*(A158628(n+1)-1)`
-/

namespace A158627.P10772625251958895689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (A158628 (n + 1) - 1)

end

end A158627.P10772625251958895689

namespace A158627

/-- `11*(A158628(n+1)-1)` -/
def P10772625251958895689.Spec : Prop :=
  ∀ n, P10772625251958895689.a n = A158627 (n + 1)

end A158627

/-! ## A158627.P16798585451755481445

`11*(A158630(n+1)-3)`
-/

namespace A158627.P16798585451755481445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (A158630 (n + 1) - 3)

end

end A158627.P16798585451755481445

namespace A158627

/-- `11*(A158630(n+1)-3)` -/
def P16798585451755481445.Spec : Prop :=
  ∀ n, P16798585451755481445.a n = A158627 (n + 1)

end A158627

/-! ## A158627.P7724342069650381365

`2*11*(A158537(n+1)-2)`
-/

namespace A158627.P7724342069650381365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (11 * (A158537 (n + 1) - 2))

end

end A158627.P7724342069650381365

namespace A158627

/-- `2*11*(A158537(n+1)-2)` -/
def P7724342069650381365.Spec : Prop :=
  ∀ n, P7724342069650381365.a n = A158627 (n + 1)

end A158627

/-! ## A158627.P7409012526378218084

`22*(22*A000290(n+1)-1)`
-/

namespace A158627.P7409012526378218084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * (22 * A000290 (n + 1) - 1)

end

end A158627.P7409012526378218084

namespace A158627

/-- `22*(22*A000290(n+1)-1)` -/
def P7409012526378218084.Spec : Prop :=
  ∀ n, P7409012526378218084.a n = A158627 (n + 1)

end A158627

/-! ## A158627.P15156361456142495882

`Δ[∑[A008604(n)²]-A008604(n)]`
-/

namespace A158627.P15156361456142495882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158627.P15156361456142495882

namespace A158627

/-- `Δ[∑[A008604(n)²]-A008604(n)]` -/
def P15156361456142495882.Spec : Prop :=
  ∀ n, P15156361456142495882.a n = A158627 (n + 1)

end A158627

/-!
# A158628: a(n) = 44*n^2 - 1.

The programs for A158628, the canonical program `A158628.P15924735408655475069` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158628 has offset 1).

The definition of A158628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `44*(n+1)²-1` (program `A158628.P15924735408655475069`, by `A158628.P15924735408655475069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158628.P15924735408655475069

`44*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158628

/-- `44*(n+1)²-1` -/
def P15924735408655475069.Spec : Prop :=
  ∀ n, P15924735408655475069.a n = A158628 (n + 1)

theorem P15924735408655475069.correct : P15924735408655475069.Spec := by
  intro n
  simp only [A158628, Nat.add_sub_cancel]

end A158628

/-! ## A158628.P13349431660325484969

`ceil(2*(A158693(n+1)-1)/3)`
-/

namespace A158628.P13349431660325484969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * (A158693 (n + 1) - 1) : ℚ) / 3⌉

end

end A158628.P13349431660325484969

namespace A158628

/-- `ceil(2*(A158693(n+1)-1)/3)` -/
def P13349431660325484969.Spec : Prop :=
  ∀ n, P13349431660325484969.a n = A158628 (n + 1)

end A158628

/-! ## A158628.P1667068193627866470

`(A158684(n+1)+A158544(n+1))/2`
-/

namespace A158628.P1667068193627866470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158684 (n + 1) + A158544 (n + 1) : ℚ) / 2

end

end A158628.P1667068193627866470

namespace A158628

/-- `(A158684(n+1)+A158544(n+1))/2` -/
def P1667068193627866470.Spec : Prop :=
  ∀ n, P1667068193627866470.a n = (A158628 (n + 1) : ℚ)

end A158628

/-! ## A158628.P9980698222799885066

`A158132(n+1)%(A158127(n+1)+1)`
-/

namespace A158628.P9980698222799885066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158132 (n + 1)) (A158127 (n + 1) + 1)

end

end A158628.P9980698222799885066

namespace A158628

/-- `A158132(n+1)%(A158127(n+1)+1)` -/
def P9980698222799885066.Spec : Prop :=
  ∀ n, P9980698222799885066.a n = A158628 (n + 1)

end A158628

/-! ## A158628.P1536306081813343567

`A158135(n+1)%(A158129(n+1)+1)`
-/

namespace A158628.P1536306081813343567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158135 (n + 1)) (A158129 (n + 1) + 1)

end

end A158628.P1536306081813343567

namespace A158628

/-- `A158135(n+1)%(A158129(n+1)+1)` -/
def P1536306081813343567.Spec : Prop :=
  ∀ n, P1536306081813343567.a n = A158628 (n + 1)

end A158628

/-! ## A158628.P2616274077539654169

`(8*A158668(n+1))%A158670(n+1)`
-/

namespace A158628.P2616274077539654169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (8 * A158668 (n + 1)) (A158670 (n + 1))

end

end A158628.P2616274077539654169

namespace A158628

/-- `(8*A158668(n+1))%A158670(n+1)` -/
def P2616274077539654169.Spec : Prop :=
  ∀ n, P2616274077539654169.a n = A158628 (n + 1)

end A158628

/-! ## A158628.P10701091750086083399

`or(11, 11*A000466(n+1))`
-/

namespace A158628.P10701091750086083399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 11 (11 * A000466 (n + 1))

end

end A158628.P10701091750086083399

namespace A158628

/-- `or(11, 11*A000466(n+1))` -/
def P10701091750086083399.Spec : Prop :=
  ∀ n, P10701091750086083399.a n = A158628 (n + 1)

end A158628

/-! ## A158628.P10744231970382032459

`A017509((2*n+1)*(2*n+3))`
-/

namespace A158628.P10744231970382032459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 ((2 * n + 1) * (2 * n + 3))

end

end A158628.P10744231970382032459

namespace A158628

/-- `A017509((2*n+1)*(2*n+3))` -/
def P10744231970382032459.Spec : Prop :=
  ∀ n, P10744231970382032459.a n = A158628 (n + 1)

end A158628

/-!
# A158629: a(n) = 484*n^2 + 22.

The programs for A158629, the canonical program `A158629.P3999392316360742863` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158629 has offset 0).

The definition of A158629 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `484*n²+22` (program `A158629.P3999392316360742863`, by `A158629.P3999392316360742863.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158629.P3999392316360742863

`484*n²+22`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158629

/-- `484*n²+22` -/
def P3999392316360742863.Spec : Prop :=
  ∀ n, (P3999392316360742863.a n : ℤ) = A158629 n

theorem P3999392316360742863.correct : P3999392316360742863.Spec := by
  intro n
  simp only [A158629]

end A158629

/-! ## A158629.P17793247096480520452

`22*A158537(n)`
-/

namespace A158629.P17793247096480520452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A158537 n

end

end A158629.P17793247096480520452

namespace A158629

/-- `22*A158537(n)` -/
def P17793247096480520452.Spec : Prop :=
  ∀ n, P17793247096480520452.a n = A158629 n

end A158629

/-! ## A158629.P8768277731795551472

`22*or(1, 22*n²)`
-/

namespace A158629.P8768277731795551472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * Nat.lor 1 (22 * n ^ 2)

end

end A158629.P8768277731795551472

namespace A158629

/-- `22*or(1, 22*n²)` -/
def P8768277731795551472.Spec : Prop :=
  ∀ n, (P8768277731795551472.a n : ℤ) = A158629 n

end A158629

/-! ## A158629.P17183310905982009962

`22*xor(1, 22*n²)`
-/

namespace A158629.P17183310905982009962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * Nat.xor 1 (22 * n ^ 2)

end

end A158629.P17183310905982009962

namespace A158629

/-- `22*xor(1, 22*n²)` -/
def P17183310905982009962.Spec : Prop :=
  ∀ n, (P17183310905982009962.a n : ℤ) = A158629 n

end A158629

/-! ## A158629.P14043815287148598864

`22*(22*A000290(n)+1)`
-/

namespace A158629.P14043815287148598864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * (22 * A000290 n + 1)

end

end A158629.P14043815287148598864

namespace A158629

/-- `22*(22*A000290(n)+1)` -/
def P14043815287148598864.Spec : Prop :=
  ∀ n, P14043815287148598864.a n = A158629 n

end A158629

/-! ## A158629.P6323680050763657326

`22*(11*n*A004277(n)+1)`
-/

namespace A158629.P6323680050763657326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * ((11 * n : ℤ) * A004277 n + 1)

end

end A158629.P6323680050763657326

namespace A158629

/-- `22*(11*n*A004277(n)+1)` -/
def P6323680050763657326.Spec : Prop :=
  ∀ n, P6323680050763657326.a n = A158629 n

end A158629

/-! ## A158629.P5588256475591731970

`A114963(22*n)`
-/

namespace A158629.P5588256475591731970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114963 (22 * n)

end

end A158629.P5588256475591731970

namespace A158629

/-- `A114963(22*n)` -/
def P5588256475591731970.Spec : Prop :=
  ∀ n, P5588256475591731970.a n = A158629 n

end A158629

/-!
# A158630: a(n) = 44*n^2 + 1.

The programs for A158630, the canonical program `A158630.P4066684916499905521` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158630 has offset 0).

The definition of A158630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `44*n²+1` (program `A158630.P4066684916499905521`, by `A158630.P4066684916499905521.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158630.P4066684916499905521

`44*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158630

/-- `44*n²+1` -/
def P4066684916499905521.Spec : Prop :=
  ∀ n, (P4066684916499905521.a n : ℤ) = A158630 n

theorem P4066684916499905521.correct : P4066684916499905521.Spec := by
  intro n
  simp only [A158630]

end A158630

/-! ## A158630.P15389334298172394140

`or(1, 44*n²)`
-/

namespace A158630.P15389334298172394140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (44 * n ^ 2)

end

end A158630.P15389334298172394140

namespace A158630

/-- `or(1, 44*n²)` -/
def P15389334298172394140.Spec : Prop :=
  ∀ n, (P15389334298172394140.a n : ℤ) = A158630 n

end A158630

/-! ## A158630.P12371755815356076419

`xor(1, 44*n²)`
-/

namespace A158630.P12371755815356076419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (44 * n ^ 2)

end

end A158630.P12371755815356076419

namespace A158630

/-- `xor(1, 44*n²)` -/
def P12371755815356076419.Spec : Prop :=
  ∀ n, (P12371755815356076419.a n : ℤ) = A158630 n

end A158630

/-! ## A158630.P10706419179629817446

`A158536(2*n)/11`
-/

namespace A158630.P10706419179629817446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158536 (2 * n) : ℚ) / 11

end

end A158630.P10706419179629817446

namespace A158630

/-- `A158536(2*n)/11` -/
def P10706419179629817446.Spec : Prop :=
  ∀ n, P10706419179629817446.a n = (A158630 n : ℚ)

end A158630

/-! ## A158630.P16390143631187055610

`ceil(A158537(2*n)/2)`
-/

namespace A158630.P16390143631187055610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158537 (2 * n) : ℚ) / 2⌉

end

end A158630.P16390143631187055610

namespace A158630

/-- `ceil(A158537(2*n)/2)` -/
def P16390143631187055610.Spec : Prop :=
  ∀ n, P16390143631187055610.a n = A158630 n

end A158630

/-! ## A158630.P16509269533134655306

`record[or((-1)^n, A033584(n))]`
-/

namespace A158630.P16509269533134655306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n) (A033584 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158630.P16509269533134655306

namespace A158630

/-- `record[or((-1)^n, A033584(n))]` -/
def P16509269533134655306.Spec : Prop :=
  ∀ n, P16509269533134655306.a n = A158630 n

end A158630

/-! ## A158630.P17252015888178718378

`A010012(2*n)/A020639(A298024(n))`
-/

namespace A158630.P17252015888178718378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010012 (2 * n) : ℚ) / (A020639 (A298024 n).toNat : ℚ)

end

end A158630.P17252015888178718378

namespace A158630

/-- `A010012(2*n)/A020639(A298024(n))` -/
def P17252015888178718378.Spec : Prop :=
  ∀ n, P17252015888178718378.a n = (A158630 n : ℚ)

end A158630

/-! ## A158630.P13599893774895375811

`∑[A312981(10*A004273(n))]`
-/

namespace A158630.P13599893774895375811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312981 (10 * A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158630.P13599893774895375811

namespace A158630

/-- `∑[A312981(10*A004273(n))]` -/
def P13599893774895375811.Spec : Prop :=
  ∀ n, P13599893774895375811.a n = A158630 n

end A158630

/-! ## A158630.P7481458032406838734

`A000027(4*n*11*n+1)`
-/

namespace A158630.P7481458032406838734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (4 * (n * (11 * n)) + 1)

end

end A158630.P7481458032406838734

namespace A158630

/-- `A000027(4*n*11*n+1)` -/
def P7481458032406838734.Spec : Prop :=
  ∀ n, P7481458032406838734.a n = A158630 n

end A158630

/-!
# A158631: a(n) = 529*n^2 + 23.

The programs for A158631, the canonical program `A158631.P8937287674229734356` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158631 has offset 0).

The definition of A158631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `529*n²+23` (program `A158631.P8937287674229734356`, by `A158631.P8937287674229734356.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158631.P8937287674229734356

`529*n²+23`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158631

/-- `529*n²+23` -/
def P8937287674229734356.Spec : Prop :=
  ∀ n, (P8937287674229734356.a n : ℤ) = A158631 n

theorem P8937287674229734356.correct : P8937287674229734356.Spec := by
  intro n
  simp only [A158631]

end A158631

/-! ## A158631.P12164415024903129968

`23*(23*A000290(n)+1)`
-/

namespace A158631.P12164415024903129968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (23 * A000290 n + 1)

end

end A158631.P12164415024903129968

namespace A158631

/-- `23*(23*A000290(n)+1)` -/
def P12164415024903129968.Spec : Prop :=
  ∀ n, P12164415024903129968.a n = A158631 n

end A158631

/-! ## A158631.P1802535888019567200

`23*(2*A022280(n)+n+1)`
-/

namespace A158631.P1802535888019567200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (2 * A022280 n + (n + 1 : ℤ))

end

end A158631.P1802535888019567200

namespace A158631

/-- `23*(2*A022280(n)+n+1)` -/
def P1802535888019567200.Spec : Prop :=
  ∀ n, P1802535888019567200.a n = A158631 n

end A158631

/-! ## A158631.P36499314587147934

`A241889(23*n)`
-/

namespace A158631.P36499314587147934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241889 (23 * n)

end

end A158631.P36499314587147934

namespace A158631

/-- `A241889(23*n)` -/
def P36499314587147934.Spec : Prop :=
  ∀ n, P36499314587147934.a n = A158631 n

end A158631

/-! ## A158631.P12251739305699142455

`lcm(23, A241889(A008605(n)))`
-/

namespace A158631.P12251739305699142455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 23 (A241889 (A008605 n).toNat)

end

end A158631.P12251739305699142455

namespace A158631

/-- `lcm(23, A241889(A008605(n)))` -/
def P12251739305699142455.Spec : Prop :=
  ∀ n, (P12251739305699142455.a n : ℤ) = A158631 n

end A158631

/-! ## A158631.P10943086511100248989

`23*A215148(n²)`
-/

namespace A158631.P10943086511100248989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A215148 (n ^ 2)

end

end A158631.P10943086511100248989

namespace A158631

/-- `23*A215148(n²)` -/
def P10943086511100248989.Spec : Prop :=
  ∀ n, P10943086511100248989.a n = A158631 n

end A158631

/-!
# A158632: a(n) = 46*n^2 + 1.

The programs for A158632, the canonical program `A158632.P11291645308737386721` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158632 has offset 0).

The definition of A158632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `46*n²+1` (program `A158632.P11291645308737386721`, by `A158632.P11291645308737386721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158632.P11291645308737386721

`46*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158632

/-- `46*n²+1` -/
def P11291645308737386721.Spec : Prop :=
  ∀ n, (P11291645308737386721.a n : ℤ) = A158632 n

theorem P11291645308737386721.correct : P11291645308737386721.Spec := by
  intro n
  simp only [A158632]

end A158632

/-! ## A158632.P4743297054293620183

`or(1, 46*n²)`
-/

namespace A158632.P4743297054293620183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (46 * n ^ 2)

end

end A158632.P4743297054293620183

namespace A158632

/-- `or(1, 46*n²)` -/
def P4743297054293620183.Spec : Prop :=
  ∀ n, (P4743297054293620183.a n : ℤ) = A158632 n

end A158632

/-! ## A158632.P1514355268739013215

`xor(1, 46*n²)`
-/

namespace A158632.P1514355268739013215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (46 * n ^ 2)

end

end A158632.P1514355268739013215

namespace A158632

/-- `xor(1, 46*n²)` -/
def P1514355268739013215.Spec : Prop :=
  ∀ n, (P1514355268739013215.a n : ℤ) = A158632 n

end A158632

/-! ## A158632.P13318149629666805444

`abs(A001105(n)-A158638(n))`
-/

namespace A158632.P13318149629666805444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001105 n - A158638 n|

end

end A158632.P13318149629666805444

namespace A158632

/-- `abs(A001105(n)-A158638(n))` -/
def P13318149629666805444.Spec : Prop :=
  ∀ n, P13318149629666805444.a n = A158632 n

end A158632

/-! ## A158632.P15642020147245361308

`abs(A005911(n)-A165481(n)²)`
-/

namespace A158632.P15642020147245361308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005911 n - A165481 n ^ 2|

end

end A158632.P15642020147245361308

namespace A158632

/-- `abs(A005911(n)-A165481(n)²)` -/
def P15642020147245361308.Spec : Prop :=
  ∀ n, P15642020147245361308.a n = A158632 n

end A158632

/-! ## A158632.P10363440099062640370

`abs(3-(A010016(n)+A010010(n)))`
-/

namespace A158632.P10363440099062640370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (A010016 n + A010010 n)|

end

end A158632.P10363440099062640370

namespace A158632

/-- `abs(3-(A010016(n)+A010010(n)))` -/
def P10363440099062640370.Spec : Prop :=
  ∀ n, P10363440099062640370.a n = A158632 n

end A158632

/-! ## A158632.P9003133536821173357

`abs(A000931(C(3, n²))-A005911(n))`
-/

namespace A158632.P9003133536821173357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000931 (Nat.choose 3 (n ^ 2)) - A005911 n|

end

end A158632.P9003133536821173357

namespace A158632

/-- `abs(A000931(C(3, n²))-A005911(n))` -/
def P9003133536821173357.Spec : Prop :=
  ∀ n, P9003133536821173357.a n = A158632 n

end A158632

/-! ## A158632.P1746083939618347237

`abs(gcd(2, A000040(n+1))-A005911(n))`
-/

namespace A158632.P1746083939618347237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.gcd 2 (A000040 (n + 1)) : ℤ) - A005911 n|

end

end A158632.P1746083939618347237

namespace A158632

/-- `abs(gcd(2, A000040(n+1))-A005911(n))` -/
def P1746083939618347237.Spec : Prop :=
  ∀ n, P1746083939618347237.a n = A158632 n

end A158632

/-! ## A158632.P981156145548281740

`lcm(A000027(n+1)-n, A005911(n)-A165481(n)²)`
-/

namespace A158632.P981156145548281740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1) - (n : ℤ)) (A005911 n - A165481 n ^ 2)

end

end A158632.P981156145548281740

namespace A158632

/-- `lcm(A000027(n+1)-n, A005911(n)-A165481(n)²)` -/
def P981156145548281740.Spec : Prop :=
  ∀ n, (P981156145548281740.a n : ℤ) = A158632 n

end A158632

/-! ## A158632.P7640354437156471503

`A010013(2*n)/A020639(A008574(n))`
-/

namespace A158632.P7640354437156471503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010013 (2 * n) : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A158632.P7640354437156471503

namespace A158632

/-- `A010013(2*n)/A020639(A008574(n))` -/
def P7640354437156471503.Spec : Prop :=
  ∀ n, P7640354437156471503.a n = (A158632 n : ℚ)

end A158632

/-! ## A158632.P1787742904368016477

`A010013(2*n)/(A010013(2*n)-A244632(2*n))`
-/

namespace A158632.P1787742904368016477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010013 (2 * n) : ℚ) / (A010013 (2 * n) - A244632 (2 * n) : ℚ)

end

end A158632.P1787742904368016477

namespace A158632

/-- `A010013(2*n)/(A010013(2*n)-A244632(2*n))` -/
def P1787742904368016477.Spec : Prop :=
  ∀ n, P1787742904368016477.a n = (A158632 n : ℚ)

end A158632

/-! ## A158632.P15255340051212174221

`∑[record[A266303(A008605(n))]]`
-/

namespace A158632.P15255340051212174221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 (A008605 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158632.P15255340051212174221

namespace A158632

/-- `∑[record[A266303(A008605(n))]]` -/
def P15255340051212174221.Spec : Prop :=
  ∀ n, P15255340051212174221.a n = A158632 n

end A158632

/-! ## A158632.P7862300372874647156

`∑[A315745(4*A130824(n))]`
-/

namespace A158632.P7862300372874647156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315745 (4 * A130824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158632.P7862300372874647156

namespace A158632

/-- `∑[A315745(4*A130824(n))]` -/
def P7862300372874647156.Spec : Prop :=
  ∀ n, P7862300372874647156.a n = A158632 n

end A158632

/-! ## A158632.P4706198572006064465

`∑[record[A009531(A314250(n))]]`
-/

namespace A158632.P4706198572006064465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A314250 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158632.P4706198572006064465

namespace A158632

/-- `∑[record[A009531(A314250(n))]]` -/
def P4706198572006064465.Spec : Prop :=
  ∀ n, P4706198572006064465.a n = A158632 n

end A158632

/-! ## A158632.P11807868093971753406

`∑[record[A009531(A314039(n))]]`
-/

namespace A158632.P11807868093971753406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A314039 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158632.P11807868093971753406

namespace A158632

/-- `∑[record[A009531(A314039(n))]]` -/
def P11807868093971753406.Spec : Prop :=
  ∀ n, P11807868093971753406.a n = A158632 n

end A158632

/-! ## A158632.P11632491477527379973

`A000027(23*n*2*n+1)`
-/

namespace A158632.P11632491477527379973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (23 * n * (2 * n) + 1)

end

end A158632.P11632491477527379973

namespace A158632

/-- `A000027(23*n*2*n+1)` -/
def P11632491477527379973.Spec : Prop :=
  ∀ n, P11632491477527379973.a n = A158632 n

end A158632

/-!
# A158633: a(n) = 529*n^2 - 23.

The programs for A158633, the canonical program `A158633.P6858031712631517706` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158633 has offset 1).

The definition of A158633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `529*(n+1)²-23` (program `A158633.P6858031712631517706`, by `A158633.P6858031712631517706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158633.P6858031712631517706

`529*(n+1)²-23`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158633

/-- `529*(n+1)²-23` -/
def P6858031712631517706.Spec : Prop :=
  ∀ n, P6858031712631517706.a n = A158633 (n + 1)

theorem P6858031712631517706.correct : P6858031712631517706.Spec := by
  intro n
  simp only [A158633, Nat.add_sub_cancel]

end A158633

/-! ## A158633.P18096269850738880821

`23*(Δ[23*A000330(n)]-1)`
-/

namespace A158633.P18096269850738880821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (f1 (n + 1) - f1 n - 1)

end

end A158633.P18096269850738880821

namespace A158633

/-- `23*(Δ[23*A000330(n)]-1)` -/
def P18096269850738880821.Spec : Prop :=
  ∀ n, P18096269850738880821.a n = A158633 (n + 1)

end A158633

/-! ## A158633.P15865614725092568967

`23*(23*A000290(n+1)-1)`
-/

namespace A158633.P15865614725092568967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (23 * A000290 (n + 1) - 1)

end

end A158633.P15865614725092568967

namespace A158633

/-- `23*(23*A000290(n+1)-1)` -/
def P15865614725092568967.Spec : Prop :=
  ∀ n, P15865614725092568967.a n = A158633 (n + 1)

end A158633

/-! ## A158633.P17740418174776546778

`floor((A158634(n+1)/(n+1))²/4)`
-/

namespace A158633.P17740418174776546778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A158634 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2 / 4⌋

end

end A158633.P17740418174776546778

namespace A158633

/-- `floor((A158634(n+1)/(n+1))²/4)` -/
def P17740418174776546778.Spec : Prop :=
  ∀ n, P17740418174776546778.a n = A158633 (n + 1)

end A158633

/-! ## A158633.P17083588705317176083

`Δ[∑[A008605(n)²]-A008605(n)]`
-/

namespace A158633.P17083588705317176083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158633.P17083588705317176083

namespace A158633

/-- `Δ[∑[A008605(n)²]-A008605(n)]` -/
def P17083588705317176083.Spec : Prop :=
  ∀ n, P17083588705317176083.a n = A158633 (n + 1)

end A158633

/-!
# A158634: a(n) = 46*n^2 - 1.

The programs for A158634, the canonical program `A158634.P9290045921821941468` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158634 has offset 1).

The definition of A158634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `46*(n+1)²-1` (program `A158634.P9290045921821941468`, by `A158634.P9290045921821941468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158634.P9290045921821941468

`46*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158634

/-- `46*(n+1)²-1` -/
def P9290045921821941468.Spec : Prop :=
  ∀ n, P9290045921821941468.a n = A158634 (n + 1)

theorem P9290045921821941468.correct : P9290045921821941468.Spec := by
  intro n
  simp only [A158634, Nat.add_sub_cancel]

end A158634

/-! ## A158634.P8615429713374046940

`(92*A000290(n+1)-2)/2`
-/

namespace A158634.P8615429713374046940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (92 * A000290 (n + 1) - 2 : ℚ) / 2

end

end A158634.P8615429713374046940

namespace A158634

/-- `(92*A000290(n+1)-2)/2` -/
def P8615429713374046940.Spec : Prop :=
  ∀ n, P8615429713374046940.a n = (A158634 (n + 1) : ℚ)

end A158634

/-! ## A158634.P227167159751830950

`(A158693(n+1)+A158551(n+1))/2`
-/

namespace A158634.P227167159751830950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158693 (n + 1) + A158551 (n + 1) : ℚ) / 2

end

end A158634.P227167159751830950

namespace A158634

/-- `(A158693(n+1)+A158551(n+1))/2` -/
def P227167159751830950.Spec : Prop :=
  ∀ n, P227167159751830950.a n = (A158634 (n + 1) : ℚ)

end A158634

/-! ## A158634.P12615257653504749919

`(4*A158668(n+1))%A158680(n+1)`
-/

namespace A158634.P12615257653504749919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A158668 (n + 1)) (A158680 (n + 1))

end

end A158634.P12615257653504749919

namespace A158634

/-- `(4*A158668(n+1))%A158680(n+1)` -/
def P12615257653504749919.Spec : Prop :=
  ∀ n, P12615257653504749919.a n = A158634 (n + 1)

end A158634

/-! ## A158634.P11740489882556125502

`(5*A158656(n+1))%A158658(n+1)`
-/

namespace A158634.P11740489882556125502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A158656 (n + 1)) (A158658 (n + 1))

end

end A158634.P11740489882556125502

namespace A158634

/-- `(5*A158656(n+1))%A158658(n+1)` -/
def P11740489882556125502.Spec : Prop :=
  ∀ n, P11740489882556125502.a n = A158634 (n + 1)

end A158634

/-! ## A158634.P2271761160779700896

`(8*A158670(n+1))%A158680(n+1)`
-/

namespace A158634.P2271761160779700896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (8 * A158670 (n + 1)) (A158680 (n + 1))

end

end A158634.P2271761160779700896

namespace A158634

/-- `(8*A158670(n+1))%A158680(n+1)` -/
def P2271761160779700896.Spec : Prop :=
  ∀ n, P2271761160779700896.a n = A158634 (n + 1)

end A158634

/-!
# A158635: 6n - A008578(n).

The programs for A158635, the canonical program `A158635.P13253286712983529006` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158635 has offset 1).

The definition of A158635 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158635.P13253286712983529006

`6*(n+1)-A008578(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158635

/-- `6*(n+1)-A008578(n+1)` -/
def P13253286712983529006.Spec : Prop :=
  ∀ n, P13253286712983529006.a n = A158635 (n + 1)

theorem P13253286712983529006.correct : P13253286712983529006.Spec := by
  intro n
  simp only [A158635, Nat.add_sub_cancel]

end A158635

/-! ## A158635.P2502812629783732667

`5*(n+1)-A162177(n+1)`
-/

namespace A158635.P2502812629783732667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A162177 (n + 1)

end

end A158635.P2502812629783732667

namespace A158635

/-- `5*(n+1)-A162177(n+1)` -/
def P2502812629783732667.Spec : Prop :=
  ∀ n, P2502812629783732667.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P5301116858190066675

`A017053(n)-A167136(n+1)`
-/

namespace A158635.P5301116858190066675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - A167136 (n + 1)

end

end A158635.P5301116858190066675

namespace A158635

/-- `A017053(n)-A167136(n+1)` -/
def P5301116858190066675.Spec : Prop :=
  ∀ n, P5301116858190066675.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P18329990002218985402

`A016969(n)+1-A008578(n+1)`
-/

namespace A158635.P18329990002218985402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + (1 - A008578 (n + 1))

end

end A158635.P18329990002218985402

namespace A158635

/-- `A016969(n)+1-A008578(n+1)` -/
def P18329990002218985402.Spec : Prop :=
  ∀ n, P18329990002218985402.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P9748473425048932424

`A016957(n)+2-A008578(n+1)`
-/

namespace A158635.P9748473425048932424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n + (2 - A008578 (n + 1))

end

end A158635.P9748473425048932424

namespace A158635

/-- `A016957(n)+2-A008578(n+1)` -/
def P9748473425048932424.Spec : Prop :=
  ∀ n, P9748473425048932424.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P8848132946002575470

`A017053(n)-(A008578(n+1)+n)`
-/

namespace A158635.P8848132946002575470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - (A008578 (n + 1) + (n : ℤ))

end

end A158635.P8848132946002575470

namespace A158635

/-- `A017053(n)-(A008578(n+1)+n)` -/
def P8848132946002575470.Spec : Prop :=
  ∀ n, P8848132946002575470.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P11482255505333608224

`A016777(n+1)+A016789(n)-A008578(n+1)`
-/

namespace A158635.P11482255505333608224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) + (A016789 n - A008578 (n + 1))

end

end A158635.P11482255505333608224

namespace A158635

/-- `A016777(n+1)+A016789(n)-A008578(n+1)` -/
def P11482255505333608224.Spec : Prop :=
  ∀ n, P11482255505333608224.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P6750018743053198536

`A016921(n+1)-A028815(n)`
-/

namespace A158635.P6750018743053198536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (n + 1) - A028815 n

end

end A158635.P6750018743053198536

namespace A158635

/-- `A016921(n+1)-A028815(n)` -/
def P6750018743053198536.Spec : Prop :=
  ∀ n, P6750018743053198536.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P3746317738050161930

`A008585(n+1)+A008585(n+1)-A008578(n+1)`
-/

namespace A158635.P3746317738050161930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) + (A008585 (n + 1) - A008578 (n + 1))

end

end A158635.P3746317738050161930

namespace A158635

/-- `A008585(n+1)+A008585(n+1)-A008578(n+1)` -/
def P3746317738050161930.Spec : Prop :=
  ∀ n, P3746317738050161930.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P18003955771349225587

`A007310(n+1)+A007310(n+2)-A008578(n+1)`
-/

namespace A158635.P18003955771349225587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) + (A007310 (n + 2) - A008578 (n + 1))

end

end A158635.P18003955771349225587

namespace A158635

/-- `A007310(n+1)+A007310(n+2)-A008578(n+1)` -/
def P18003955771349225587.Spec : Prop :=
  ∀ n, P18003955771349225587.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P14689647156406741619

`6*(n+1)-record[A006530(n+1)]`
-/

namespace A158635.P14689647156406741619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158635.P14689647156406741619

namespace A158635

/-- `6*(n+1)-record[A006530(n+1)]` -/
def P14689647156406741619.Spec : Prop :=
  ∀ n, P14689647156406741619.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P1906243373491802014

`6*(n+1)-record[A020639(n+1)]`
-/

namespace A158635.P1906243373491802014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158635.P1906243373491802014

namespace A158635

/-- `6*(n+1)-record[A020639(n+1)]` -/
def P1906243373491802014.Spec : Prop :=
  ∀ n, P1906243373491802014.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P1269238488807063767

`A016969(n)+1-record[A006530(n+1)]`
-/

namespace A158635.P1269238488807063767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + (1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A158635.P1269238488807063767

namespace A158635

/-- `A016969(n)+1-record[A006530(n+1)]` -/
def P1269238488807063767.Spec : Prop :=
  ∀ n, P1269238488807063767.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P4125182358432772137

`A016969(n)+1-record[A020639(n+1)]`
-/

namespace A158635.P4125182358432772137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + (1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A158635.P4125182358432772137

namespace A158635

/-- `A016969(n)+1-record[A020639(n+1)]` -/
def P4125182358432772137.Spec : Prop :=
  ∀ n, P4125182358432772137.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P15424669057692657936

`A016957(n)+2-record[A006530(n+1)]`
-/

namespace A158635.P15424669057692657936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n + (2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A158635.P15424669057692657936

namespace A158635

/-- `A016957(n)+2-record[A006530(n+1)]` -/
def P15424669057692657936.Spec : Prop :=
  ∀ n, P15424669057692657936.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P9473432190928949871

`A016957(n)+2-record[A020639(n+1)]`
-/

namespace A158635.P9473432190928949871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n + (2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A158635.P9473432190928949871

namespace A158635

/-- `A016957(n)+2-record[A020639(n+1)]` -/
def P9473432190928949871.Spec : Prop :=
  ∀ n, P9473432190928949871.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P9930342169455326593

`A017053(n)-(record[A006530(n+1)]+n)`
-/

namespace A158635.P9930342169455326593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A158635.P9930342169455326593

namespace A158635

/-- `A017053(n)-(record[A006530(n+1)]+n)` -/
def P9930342169455326593.Spec : Prop :=
  ∀ n, P9930342169455326593.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P7142257256424666173

`A017053(n)-(record[A020639(n+1)]+n)`
-/

namespace A158635.P7142257256424666173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A158635.P7142257256424666173

namespace A158635

/-- `A017053(n)-(record[A020639(n+1)]+n)` -/
def P7142257256424666173.Spec : Prop :=
  ∀ n, P7142257256424666173.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P10592502308515330896

`A016921(n+1)-record[A006530(n+1)]-1`
-/

namespace A158635.P10592502308515330896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A158635.P10592502308515330896

namespace A158635

/-- `A016921(n+1)-record[A006530(n+1)]-1` -/
def P10592502308515330896.Spec : Prop :=
  ∀ n, P10592502308515330896.a n = A158635 (n + 1)

end A158635

/-! ## A158635.P11769601641777407935

`A017497(n)-(A016885(n)+record[A020639(n+1)])`
-/

namespace A158635.P11769601641777407935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n - (A016885 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A158635.P11769601641777407935

namespace A158635

/-- `A017497(n)-(A016885(n)+record[A020639(n+1)])` -/
def P11769601641777407935.Spec : Prop :=
  ∀ n, P11769601641777407935.a n = A158635 (n + 1)

end A158635

/-!
# A158636: a(n) = 576*n^2 - 24.

The programs for A158636, the canonical program `A158636.P17145853637689724165` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158636 has offset 1).

The definition of A158636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `576*(n+1)²-24` (program `A158636.P17145853637689724165`, by `A158636.P17145853637689724165.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158636.P17145853637689724165

`576*(n+1)²-24`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158636

/-- `576*(n+1)²-24` -/
def P17145853637689724165.Spec : Prop :=
  ∀ n, P17145853637689724165.a n = A158636 (n + 1)

theorem P17145853637689724165.correct : P17145853637689724165.Spec := by
  intro n
  simp only [A158636, Nat.add_sub_cancel]

end A158636

/-! ## A158636.P6927351811481602788

`24*A158544(n+1)`
-/

namespace A158636.P6927351811481602788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A158544 (n + 1)

end

end A158636.P6927351811481602788

namespace A158636

/-- `24*A158544(n+1)` -/
def P6927351811481602788.Spec : Prop :=
  ∀ n, P6927351811481602788.a n = A158636 (n + 1)

end A158636

/-! ## A158636.P8722041831687758043

`8*(A158738(n+1)-2)`
-/

namespace A158636.P8722041831687758043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A158738 (n + 1) - 2)

end

end A158636.P8722041831687758043

namespace A158636

/-- `8*(A158738(n+1)-2)` -/
def P8722041831687758043.Spec : Prop :=
  ∀ n, P8722041831687758043.a n = A158636 (n + 1)

end A158636

/-! ## A158636.P9698454376293849213

`3*8*(A158547(n+1)-2)`
-/

namespace A158636.P9698454376293849213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (8 * (A158547 (n + 1) - 2))

end

end A158636.P9698454376293849213

namespace A158636

/-- `3*8*(A158547(n+1)-2)` -/
def P9698454376293849213.Spec : Prop :=
  ∀ n, P9698454376293849213.a n = A158636 (n + 1)

end A158636

/-! ## A158636.P1362700398900841266

`24*(24*A000290(n+1)-1)`
-/

namespace A158636.P1362700398900841266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (24 * A000290 (n + 1) - 1)

end

end A158636.P1362700398900841266

namespace A158636

/-- `24*(24*A000290(n+1)-1)` -/
def P1362700398900841266.Spec : Prop :=
  ∀ n, P1362700398900841266.a n = A158636 (n + 1)

end A158636

/-! ## A158636.P13506003881933088641

`4*A158462(2*(n+1))`
-/

namespace A158636.P13506003881933088641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A158462 (2 * (n + 1))

end

end A158636.P13506003881933088641

namespace A158636

/-- `4*A158462(2*(n+1))` -/
def P13506003881933088641.Spec : Prop :=
  ∀ n, P13506003881933088641.a n = A158636 (n + 1)

end A158636

/-! ## A158636.P1437473068877911971

`4*A187206((n+1)²)`
-/

namespace A158636.P1437473068877911971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A187206 ((n + 1) ^ 2)

end

end A158636.P1437473068877911971

namespace A158636

/-- `4*A187206((n+1)²)` -/
def P1437473068877911971.Spec : Prop :=
  ∀ n, P1437473068877911971.a n = A158636 (n + 1)

end A158636

/-!
# A158637: a(n) = 576*n^2 + 24.

The programs for A158637, the canonical program `A158637.P11067157742593664756` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158637 has offset 0).

The definition of A158637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `576*n²+24` (program `A158637.P11067157742593664756`, by `A158637.P11067157742593664756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158637.P11067157742593664756

`576*n²+24`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158637

/-- `576*n²+24` -/
def P11067157742593664756.Spec : Prop :=
  ∀ n, (P11067157742593664756.a n : ℤ) = A158637 n

theorem P11067157742593664756.correct : P11067157742593664756.Spec := by
  intro n
  simp only [A158637]

end A158637

/-! ## A158637.P10454563391486020776

`24*A158547(n)`
-/

namespace A158637.P10454563391486020776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A158547 n

end

end A158637.P10454563391486020776

namespace A158637

/-- `24*A158547(n)` -/
def P10454563391486020776.Spec : Prop :=
  ∀ n, P10454563391486020776.a n = A158637 n

end A158637

/-! ## A158637.P10361645312191138705

`or(24, (24*n)²)`
-/

namespace A158637.P10361645312191138705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 24 ((24 * n) ^ 2)

end

end A158637.P10361645312191138705

namespace A158637

/-- `or(24, (24*n)²)` -/
def P10361645312191138705.Spec : Prop :=
  ∀ n, (P10361645312191138705.a n : ℤ) = A158637 n

end A158637

/-! ## A158637.P1220275710407849978

`xor(24, (24*n)²)`
-/

namespace A158637.P1220275710407849978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 24 ((24 * n) ^ 2)

end

end A158637.P1220275710407849978

namespace A158637

/-- `xor(24, (24*n)²)` -/
def P1220275710407849978.Spec : Prop :=
  ∀ n, (P1220275710407849978.a n : ℤ) = A158637 n

end A158637

/-! ## A158637.P5719399640290048346

`24*(24*A000290(n)+1)`
-/

namespace A158637.P5719399640290048346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (24 * A000290 n + 1)

end

end A158637.P5719399640290048346

namespace A158637

/-- `24*(24*A000290(n)+1)` -/
def P5719399640290048346.Spec : Prop :=
  ∀ n, P5719399640290048346.a n = A158637 n

end A158637

/-! ## A158637.P17476088907319219989

`(A158480(2*n)+1)*12`
-/

namespace A158637.P17476088907319219989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158480 (2 * n) + 1) * 12

end

end A158637.P17476088907319219989

namespace A158637

/-- `(A158480(2*n)+1)*12` -/
def P17476088907319219989.Spec : Prop :=
  ∀ n, P17476088907319219989.a n = A158637 n

end A158637

/-! ## A158637.P771734865008787707

`24*(6*n*A004277(2*n)+1)`
-/

namespace A158637.P771734865008787707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * ((6 * n : ℤ) * A004277 (2 * n) + 1)

end

end A158637.P771734865008787707

namespace A158637

/-- `24*(6*n*A004277(2*n)+1)` -/
def P771734865008787707.Spec : Prop :=
  ∀ n, P771734865008787707.a n = A158637 n

end A158637

/-! ## A158637.P5612583138914338213

`A241890(24*n)`
-/

namespace A158637.P5612583138914338213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241890 (24 * n)

end

end A158637.P5612583138914338213

namespace A158637

/-- `A241890(24*n)` -/
def P5612583138914338213.Spec : Prop :=
  ∀ n, P5612583138914338213.a n = A158637 n

end A158637

/-!
# A158638: a(n) = 48*n^2 + 1.

The programs for A158638, the canonical program `A158638.P7332495969947453421` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158638 has offset 0).

The definition of A158638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `48*n²+1` (program `A158638.P7332495969947453421`, by `A158638.P7332495969947453421.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158638.P7332495969947453421

`48*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158638

/-- `48*n²+1` -/
def P7332495969947453421.Spec : Prop :=
  ∀ n, (P7332495969947453421.a n : ℤ) = A158638 n

theorem P7332495969947453421.correct : P7332495969947453421.Spec := by
  intro n
  simp only [A158638]

end A158638

/-! ## A158638.P9496353962454593982

`A158480(2*n)`
-/

namespace A158638.P9496353962454593982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 (2 * n)

end

end A158638.P9496353962454593982

namespace A158638

/-- `A158480(2*n)` -/
def P9496353962454593982.Spec : Prop :=
  ∀ n, P9496353962454593982.a n = A158638 n

end A158638

/-! ## A158638.P17833178731322353340

`or(1, 48*n²)`
-/

namespace A158638.P17833178731322353340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (48 * n ^ 2)

end

end A158638.P17833178731322353340

namespace A158638

/-- `or(1, 48*n²)` -/
def P17833178731322353340.Spec : Prop :=
  ∀ n, (P17833178731322353340.a n : ℤ) = A158638 n

end A158638

/-! ## A158638.P10917851017724401569

`xor(1, 48*n²)`
-/

namespace A158638.P10917851017724401569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (48 * n ^ 2)

end

end A158638.P10917851017724401569

namespace A158638

/-- `xor(1, 48*n²)` -/
def P10917851017724401569.Spec : Prop :=
  ∀ n, (P10917851017724401569.a n : ℤ) = A158638 n

end A158638

/-! ## A158638.P14574152781213859270

`abs(A065532(n)+2)`
-/

namespace A158638.P14574152781213859270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065532 n + 2|

end

end A158638.P14574152781213859270

namespace A158638

/-- `abs(A065532(n)+2)` -/
def P14574152781213859270.Spec : Prop :=
  ∀ n, P14574152781213859270.a n = A158638 n

end A158638

/-! ## A158638.P17421389829703857679

`ceil(A158547(2*n)/2)`
-/

namespace A158638.P17421389829703857679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158547 (2 * n) : ℚ) / 2⌉

end

end A158638.P17421389829703857679

namespace A158638

/-- `ceil(A158547(2*n)/2)` -/
def P17421389829703857679.Spec : Prop :=
  ∀ n, P17421389829703857679.a n = A158638 n

end A158638

/-! ## A158638.P1023820006273194244

`abs(3-2*A005897(2*n))`
-/

namespace A158638.P1023820006273194244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 2 * A005897 (2 * n)|

end

end A158638.P1023820006273194244

namespace A158638

/-- `abs(3-2*A005897(2*n))` -/
def P1023820006273194244.Spec : Prop :=
  ∀ n, P1023820006273194244.a n = A158638 n

end A158638

/-! ## A158638.P18444431262610930877

`ceil(A010014(2*n)/2)`
-/

namespace A158638.P18444431262610930877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010014 (2 * n) : ℚ) / 2⌉

end

end A158638.P18444431262610930877

namespace A158638

/-- `ceil(A010014(2*n)/2)` -/
def P18444431262610930877.Spec : Prop :=
  ∀ n, P18444431262610930877.a n = A158638 n

end A158638

/-! ## A158638.P13788633467500159962

`Δ[n*A004273(A004273(n))²]`
-/

namespace A158638.P13788633467500159962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004273 (A004273 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158638.P13788633467500159962

namespace A158638

/-- `Δ[n*A004273(A004273(n))²]` -/
def P13788633467500159962.Spec : Prop :=
  ∀ n, P13788633467500159962.a n = A158638 n

end A158638

/-! ## A158638.P4063897265235950188

`A058034(4*n)`
-/

namespace A158638.P4063897265235950188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058034 (4 * n)

end

end A158638.P4063897265235950188

namespace A158638

/-- `A058034(4*n)` -/
def P4063897265235950188.Spec : Prop :=
  ∀ n, P4063897265235950188.a n = A158638 n

end A158638

/-! ## A158638.P11117193983848246334

`∩[A058034(n), A158480(n)]`
-/

namespace A158638.P11117193983848246334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158638.P11117193983848246334

namespace A158638

/-- `∩[A058034(n), A158480(n)]` -/
def P11117193983848246334.Spec : Prop :=
  ∀ n, (P11117193983848246334.a n : ℤ) = A158638 n

end A158638

/-! ## A158638.P10798695359494790544

`A056107(4*n)`
-/

namespace A158638.P10798695359494790544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 (4 * n)

end

end A158638.P10798695359494790544

namespace A158638

/-- `A056107(4*n)` -/
def P10798695359494790544.Spec : Prop :=
  ∀ n, P10798695359494790544.a n = A158638 n

end A158638

/-! ## A158638.P7607923154506705476

`∩[A056107(n), A058034(n)]`
-/

namespace A158638.P7607923154506705476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058034 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158638.P7607923154506705476

namespace A158638

/-- `∩[A056107(n), A058034(n)]` -/
def P7607923154506705476.Spec : Prop :=
  ∀ n, (P7607923154506705476.a n : ℤ) = A158638 n

end A158638

/-! ## A158638.P16798842558224244903

`A084684(8*n)`
-/

namespace A158638.P16798842558224244903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 (8 * n)

end

end A158638.P16798842558224244903

namespace A158638

/-- `A084684(8*n)` -/
def P16798842558224244903.Spec : Prop :=
  ∀ n, P16798842558224244903.a n = A158638 n

end A158638

/-! ## A158638.P16342531422462261342

`A194073(A022144(n))`
-/

namespace A158638.P16342531422462261342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194073 (A022144 n).toNat

end

end A158638.P16342531422462261342

namespace A158638

/-- `A194073(A022144(n))` -/
def P16342531422462261342.Spec : Prop :=
  ∀ n, P16342531422462261342.a n = A158638 n

end A158638

/-! ## A158638.P9713074876596971787

`A194073(A008574(2*n))`
-/

namespace A158638.P9713074876596971787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194073 (A008574 (2 * n)).toNat

end

end A158638.P9713074876596971787

namespace A158638

/-- `A194073(A008574(2*n))` -/
def P9713074876596971787.Spec : Prop :=
  ∀ n, P9713074876596971787.a n = A158638 n

end A158638

/-! ## A158638.P9457618906395678524

`∩[A058034(n), A084684(n)]`
-/

namespace A158638.P9457618906395678524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158638.P9457618906395678524

namespace A158638

/-- `∩[A058034(n), A084684(n)]` -/
def P9457618906395678524.Spec : Prop :=
  ∀ n, (P9457618906395678524.a n : ℤ) = A158638 n

end A158638

/-! ## A158638.P18022466441739687082

`∩[A194073(n+1), A058034(n)]`
-/

namespace A158638.P18022466441739687082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058034 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158638.P18022466441739687082

namespace A158638

/-- `∩[A194073(n+1), A058034(n)]` -/
def P18022466441739687082.Spec : Prop :=
  ∀ n, (P18022466441739687082.a n : ℤ) = A158638 n

end A158638

/-!
# A158639: a(n) = 676*n^2 - 26.

The programs for A158639, the canonical program `A158639.P1087555900537586956` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158639 has offset 1).

The definition of A158639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `676*(n+1)²-26` (program `A158639.P1087555900537586956`, by `A158639.P1087555900537586956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158639.P1087555900537586956

`676*(n+1)²-26`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158639

/-- `676*(n+1)²-26` -/
def P1087555900537586956.Spec : Prop :=
  ∀ n, P1087555900537586956.a n = A158639 (n + 1)

theorem P1087555900537586956.correct : P1087555900537586956.Spec := by
  intro n
  simp only [A158639, Nat.add_sub_cancel]

end A158639

/-! ## A158639.P306552909565483902

`26*A158551(n+1)`
-/

namespace A158639.P306552909565483902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * A158551 (n + 1)

end

end A158639.P306552909565483902

namespace A158639

/-- `26*A158551(n+1)` -/
def P306552909565483902.Spec : Prop :=
  ∀ n, P306552909565483902.a n = A158639 (n + 1)

end A158639

/-! ## A158639.P16819958276930904740

`13*(A158644(n+1)-3)`
-/

namespace A158639.P16819958276930904740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (A158644 (n + 1) - 3)

end

end A158639.P16819958276930904740

namespace A158639

/-- `13*(A158644(n+1)-3)` -/
def P16819958276930904740.Spec : Prop :=
  ∀ n, P16819958276930904740.a n = A158639 (n + 1)

end A158639

/-! ## A158639.P12833212726478243429

`26*floor(A158640(n+1)/2)`
-/

namespace A158639.P12833212726478243429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * ⌊(A158640 (n + 1) : ℚ) / 2⌋

end

end A158639.P12833212726478243429

namespace A158639

/-- `26*floor(A158640(n+1)/2)` -/
def P12833212726478243429.Spec : Prop :=
  ∀ n, P12833212726478243429.a n = A158639 (n + 1)

end A158639

/-! ## A158639.P18315071473320676249

`26*(26*A000290(n+1)-1)`
-/

namespace A158639.P18315071473320676249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * (26 * A000290 (n + 1) - 1)

end

end A158639.P18315071473320676249

namespace A158639

/-- `26*(26*A000290(n+1)-1)` -/
def P18315071473320676249.Spec : Prop :=
  ∀ n, P18315071473320676249.a n = A158639 (n + 1)

end A158639

/-! ## A158639.P3108645135227744313

`abs(26-A252994(n+1)²)`
-/

namespace A158639.P3108645135227744313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |26 - A252994 (n + 1) ^ 2|

end

end A158639.P3108645135227744313

namespace A158639

/-- `abs(26-A252994(n+1)²)` -/
def P3108645135227744313.Spec : Prop :=
  ∀ n, P3108645135227744313.a n = A158639 (n + 1)

end A158639

/-! ## A158639.P13786953614670809299

`13*A304840((n+1)²)`
-/

namespace A158639.P13786953614670809299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A304840 ((n + 1) ^ 2)

end

end A158639.P13786953614670809299

namespace A158639

/-- `13*A304840((n+1)²)` -/
def P13786953614670809299.Spec : Prop :=
  ∀ n, P13786953614670809299.a n = A158639 (n + 1)

end A158639

/-!
# A158640: a(n) = 52*n^2 - 1.

The programs for A158640, the canonical program `A158640.P13416002966701563480` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158640 has offset 1).

The definition of A158640 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `52*(n+1)²-1` (program `A158640.P13416002966701563480`, by `A158640.P13416002966701563480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158640.P13416002966701563480

`52*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158640

/-- `52*(n+1)²-1` -/
def P13416002966701563480.Spec : Prop :=
  ∀ n, P13416002966701563480.a n = A158640 (n + 1)

theorem P13416002966701563480.correct : P13416002966701563480.Spec := by
  intro n
  simp only [A158640, Nat.add_sub_cancel]

end A158640

/-! ## A158640.P7295420176565759008

`or(1, A158644(n+1)-3)`
-/

namespace A158640.P7295420176565759008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A158644 (n + 1) - 3)

end

end A158640.P7295420176565759008

namespace A158640

/-- `or(1, A158644(n+1)-3)` -/
def P7295420176565759008.Spec : Prop :=
  ∀ n, P7295420176565759008.a n = A158640 (n + 1)

end A158640

/-! ## A158640.P3232935849456426894

`xor(1, 2*A158551(n+1))`
-/

namespace A158640.P3232935849456426894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A158551 (n + 1))

end

end A158640.P3232935849456426894

namespace A158640

/-- `xor(1, 2*A158551(n+1))` -/
def P3232935849456426894.Spec : Prop :=
  ∀ n, P3232935849456426894.a n = A158640 (n + 1)

end A158640

/-! ## A158640.P14754025680555838450

`(A158639(n+1)+13)/13`
-/

namespace A158640.P14754025680555838450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158639 (n + 1) + 13 : ℚ) / 13

end

end A158640.P14754025680555838450

namespace A158640

/-- `(A158639(n+1)+13)/13` -/
def P14754025680555838450.Spec : Prop :=
  ∀ n, P14754025680555838450.a n = (A158640 (n + 1) : ℚ)

end A158640

/-! ## A158640.P4482710912430271384

`floor(2*A158771(n+1)/3)`
-/

namespace A158640.P4482710912430271384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A158771 (n + 1) : ℚ) / 3)⌋

end

end A158640.P4482710912430271384

namespace A158640

/-- `floor(2*A158771(n+1)/3)` -/
def P4482710912430271384.Spec : Prop :=
  ∀ n, P4482710912430271384.a n = A158640 (n + 1)

end A158640

/-! ## A158640.P17341393316728509640

`(A158744(n+1)+A158560(n+1))/2`
-/

namespace A158640.P17341393316728509640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158744 (n + 1) + A158560 (n + 1) : ℚ) / 2

end

end A158640.P17341393316728509640

namespace A158640

/-- `(A158744(n+1)+A158560(n+1))/2` -/
def P17341393316728509640.Spec : Prop :=
  ∀ n, P17341393316728509640.a n = (A158640 (n + 1) : ℚ)

end A158640

/-! ## A158640.P11944912040483032832

`(2*A158656(n+1))%A158658(n+1)`
-/

namespace A158640.P11944912040483032832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A158656 (n + 1)) (A158658 (n + 1))

end

end A158640.P11944912040483032832

namespace A158640

/-- `(2*A158656(n+1))%A158658(n+1)` -/
def P11944912040483032832.Spec : Prop :=
  ∀ n, P11944912040483032832.a n = A158640 (n + 1)

end A158640

/-! ## A158640.P9431177256976684863

`(4*A158668(n+1))%A158670(n+1)`
-/

namespace A158640.P9431177256976684863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A158668 (n + 1)) (A158670 (n + 1))

end

end A158640.P9431177256976684863

namespace A158640

/-- `(4*A158668(n+1))%A158670(n+1)` -/
def P9431177256976684863.Spec : Prop :=
  ∀ n, P9431177256976684863.a n = A158640 (n + 1)

end A158640

/-! ## A158640.P627899091803917938

`abs(1-13*A000290(2*(n+1)))`
-/

namespace A158640.P627899091803917938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 13 * A000290 (2 * (n + 1))|

end

end A158640.P627899091803917938

namespace A158640

/-- `abs(1-13*A000290(2*(n+1)))` -/
def P627899091803917938.Spec : Prop :=
  ∀ n, P627899091803917938.a n = A158640 (n + 1)

end A158640

/-! ## A158640.P25754298722228040

`(A157914(2*(n+1))+A157910(2*(n+1)))/2`
-/

namespace A158640.P25754298722228040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157914 (2 * (n + 1)) + A157910 (2 * (n + 1)) : ℚ) / 2

end

end A158640.P25754298722228040

namespace A158640

/-- `(A157914(2*(n+1))+A157910(2*(n+1)))/2` -/
def P25754298722228040.Spec : Prop :=
  ∀ n, P25754298722228040.a n = (A158640 (n + 1) : ℚ)

end A158640

/-! ## A158640.P15039103784261360383

`(A158628(2*(n+1))-A157889(2*(n+1)))/2`
-/

namespace A158640.P15039103784261360383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158628 (2 * (n + 1)) - A157889 (2 * (n + 1)) : ℚ) / 2

end

end A158640.P15039103784261360383

namespace A158640

/-- `(A158628(2*(n+1))-A157889(2*(n+1)))/2` -/
def P15039103784261360383.Spec : Prop :=
  ∀ n, P15039103784261360383.a n = (A158640 (n + 1) : ℚ)

end A158640

/-! ## A158640.P11281146762140612740

`abs(1-A152742(2*(n+1)))`
-/

namespace A158640.P11281146762140612740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A152742 (2 * (n + 1))|

end

end A158640.P11281146762140612740

namespace A158640

/-- `abs(1-A152742(2*(n+1)))` -/
def P11281146762140612740.Spec : Prop :=
  ∀ n, P11281146762140612740.a n = A158640 (n + 1)

end A158640

/-! ## A158640.P6624513762407936062

`or(1, A304840((n+1)²))`
-/

namespace A158640.P6624513762407936062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304840 ((n + 1) ^ 2))

end

end A158640.P6624513762407936062

namespace A158640

/-- `or(1, A304840((n+1)²))` -/
def P6624513762407936062.Spec : Prop :=
  ∀ n, P6624513762407936062.a n = A158640 (n + 1)

end A158640

/-!
# A158641: Strong primes p: adding 2 to any one digit of p produces a prime number (no digits 8 & 9 in p).

The programs for A158641, there is no canonical definition to state claims against.
-/

/-! ## A158641.P5656109764836776967

`A248173(A096723(n+1))`
-/

namespace A158641.P5656109764836776967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248173 (A096723 (n + 1)).toNat

end

end A158641.P5656109764836776967

/-! ## A158641.P12142992282527903037

`A001359(eq[A030308(2*n), A245167(n)])`
-/

namespace A158641.P12142992282527903037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A158641.P12142992282527903037

/-! ## A158641.P8837749789802184374

`A001359(record[A095145(n)])`
-/

namespace A158641.P8837749789802184374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A158641.P8837749789802184374

/-!
# A158642: Palindromic numbers which are the product of a number k and its reversal (k written backwards).

The programs for A158642, there is no canonical definition to state claims against.
-/

/-! ## A158642.P4103219521029671606

`∩[A305231(n+1), A393806(n+1)]`
-/

namespace A158642.P4103219521029671606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158642.P4103219521029671606

/-! ## A158642.P935902401462078792

`∩[A002113(n+1), A305231(n+1)]`
-/

namespace A158642.P935902401462078792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158642.P935902401462078792

/-! ## A158642.P13641764863850725457

`∩[A305231(n+1), A004086(A014187(n)^(1/3))]`
-/

namespace A158642.P13641764863850725457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158642.P13641764863850725457

/-!
# A158643: a(n) = 676*n^2 + 26.

The programs for A158643, the canonical program `A158643.P15928341994461010870` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158643 has offset 0).

The definition of A158643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `676*n²+26` (program `A158643.P15928341994461010870`, by `A158643.P15928341994461010870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158643.P15928341994461010870

`676*n²+26`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158643

/-- `676*n²+26` -/
def P15928341994461010870.Spec : Prop :=
  ∀ n, (P15928341994461010870.a n : ℤ) = A158643 n

theorem P15928341994461010870.correct : P15928341994461010870.Spec := by
  intro n
  simp only [A158643]

end A158643

/-! ## A158643.P12566464998266727090

`26*A158549(n)`
-/

namespace A158643.P12566464998266727090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * A158549 n

end

end A158643.P12566464998266727090

namespace A158643

/-- `26*A158549(n)` -/
def P12566464998266727090.Spec : Prop :=
  ∀ n, P12566464998266727090.a n = A158643 n

end A158643

/-! ## A158643.P14565273430502220562

`26*or(1, 26*n²)`
-/

namespace A158643.P14565273430502220562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 * Nat.lor 1 (26 * n ^ 2)

end

end A158643.P14565273430502220562

namespace A158643

/-- `26*or(1, 26*n²)` -/
def P14565273430502220562.Spec : Prop :=
  ∀ n, (P14565273430502220562.a n : ℤ) = A158643 n

end A158643

/-! ## A158643.P5869299551402361727

`26*xor(1, 26*n²)`
-/

namespace A158643.P5869299551402361727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 * Nat.xor 1 (26 * n ^ 2)

end

end A158643.P5869299551402361727

namespace A158643

/-- `26*xor(1, 26*n²)` -/
def P5869299551402361727.Spec : Prop :=
  ∀ n, (P5869299551402361727.a n : ℤ) = A158643 n

end A158643

/-! ## A158643.P1539087127074412465

`26*(26*A000290(n)+1)`
-/

namespace A158643.P1539087127074412465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * (26 * A000290 n + 1)

end

end A158643.P1539087127074412465

namespace A158643

/-- `26*(26*A000290(n)+1)` -/
def P1539087127074412465.Spec : Prop :=
  ∀ n, P1539087127074412465.a n = A158643 n

end A158643

/-!
# A158644: a(n) = 52*n^2 + 1.

The programs for A158644, the canonical program `A158644.P15086344085195836591` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158644 has offset 0).

The definition of A158644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `52*n²+1` (program `A158644.P15086344085195836591`, by `A158644.P15086344085195836591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158644.P15086344085195836591

`52*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158644

/-- `52*n²+1` -/
def P15086344085195836591.Spec : Prop :=
  ∀ n, (P15086344085195836591.a n : ℤ) = A158644 n

theorem P15086344085195836591.correct : P15086344085195836591.Spec := by
  intro n
  simp only [A158644]

end A158644

/-! ## A158644.P14653245067254337860

`or(1, 52*n²)`
-/

namespace A158644.P14653245067254337860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (52 * n ^ 2)

end

end A158644.P14653245067254337860

namespace A158644

/-- `or(1, 52*n²)` -/
def P14653245067254337860.Spec : Prop :=
  ∀ n, (P14653245067254337860.a n : ℤ) = A158644 n

end A158644

/-! ## A158644.P7820828398490993674

`xor(1, 52*n²)`
-/

namespace A158644.P7820828398490993674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (52 * n ^ 2)

end

end A158644.P7820828398490993674

namespace A158644

/-- `xor(1, 52*n²)` -/
def P7820828398490993674.Spec : Prop :=
  ∀ n, (P7820828398490993674.a n : ℤ) = A158644 n

end A158644

/-! ## A158644.P6783386266085535904

`(A158549(2*n)+1)/2`
-/

namespace A158644.P6783386266085535904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158549 (2 * n) + 1 : ℚ) / 2

end

end A158644.P6783386266085535904

namespace A158644

/-- `(A158549(2*n)+1)/2` -/
def P6783386266085535904.Spec : Prop :=
  ∀ n, P6783386266085535904.a n = (A158644 n : ℚ)

end A158644

/-! ## A158644.P6514228799414993714

`round(A010016(2*n)/2)`
-/

namespace A158644.P6514228799414993714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010016 (2 * n) : ℚ) / 2)

end

end A158644.P6514228799414993714

namespace A158644

/-- `round(A010016(2*n)/2)` -/
def P6514228799414993714.Spec : Prop :=
  ∀ n, P6514228799414993714.a n = A158644 n

end A158644

/-! ## A158644.P601739635244561118

`record[xor(A033999(n), A152742(n))]`
-/

namespace A158644.P601739635244561118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n) (A152742 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158644.P601739635244561118

namespace A158644

/-- `record[xor(A033999(n), A152742(n))]` -/
def P601739635244561118.Spec : Prop :=
  ∀ n, P601739635244561118.a n = A158644 n

end A158644

/-! ## A158644.P8270271101705210395

`∑[A008574(13*A004273(n))]`
-/

namespace A158644.P8270271101705210395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (13 * A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158644.P8270271101705210395

namespace A158644

/-- `∑[A008574(13*A004273(n))]` -/
def P8270271101705210395.Spec : Prop :=
  ∀ n, P8270271101705210395.a n = A158644 n

end A158644

/-! ## A158644.P12935753786044944032

`∑[A314049(A008592(comp[2*(n+1)]))]`
-/

namespace A158644.P12935753786044944032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 (A008592 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158644.P12935753786044944032

namespace A158644

/-- `∑[A314049(A008592(comp[2*(n+1)]))]` -/
def P12935753786044944032.Spec : Prop :=
  ∀ n, P12935753786044944032.a n = A158644 n

end A158644

/-!
# A158645: a(n) = 729*n^2 + 27.

The programs for A158645, the canonical program `A158645.P16003418266727183333` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158645 has offset 0).

The definition of A158645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `729*n²+27` (program `A158645.P16003418266727183333`, by `A158645.P16003418266727183333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158645.P16003418266727183333

`729*n²+27`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158645

/-- `729*n²+27` -/
def P16003418266727183333.Spec : Prop :=
  ∀ n, (P16003418266727183333.a n : ℤ) = A158645 n

theorem P16003418266727183333.correct : P16003418266727183333.Spec := by
  intro n
  simp only [A158645]

end A158645

/-! ## A158645.P3133404144906179975

`27*(27*A000290(n)+1)`
-/

namespace A158645.P3133404144906179975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * (27 * A000290 n + 1)

end

end A158645.P3133404144906179975

namespace A158645

/-- `27*(27*A000290(n)+1)` -/
def P3133404144906179975.Spec : Prop :=
  ∀ n, P3133404144906179975.a n = A158645 n

end A158645

/-! ## A158645.P5587569021492158974

`9*A117950(9*n)`
-/

namespace A158645.P5587569021492158974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A117950 (9 * n)

end

end A158645.P5587569021492158974

namespace A158645

/-- `9*A117950(9*n)` -/
def P5587569021492158974.Spec : Prop :=
  ∀ n, P5587569021492158974.a n = A158645 n

end A158645

/-! ## A158645.P2546687720254492719

`9*(A087475(9*n)-1)`
-/

namespace A158645.P2546687720254492719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A087475 (9 * n) - 1)

end

end A158645.P2546687720254492719

namespace A158645

/-- `9*(A087475(9*n)-1)` -/
def P2546687720254492719.Spec : Prop :=
  ∀ n, P2546687720254492719.a n = A158645 n

end A158645

/-! ## A158645.P16546755930897800049

`3*(A033428(9*n)+9)`
-/

namespace A158645.P16546755930897800049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A033428 (9 * n) + 9)

end

end A158645.P16546755930897800049

namespace A158645

/-- `3*(A033428(9*n)+9)` -/
def P16546755930897800049.Spec : Prop :=
  ∀ n, P16546755930897800049.a n = A158645 n

end A158645

/-! ## A158645.P958350372750741014

`27*A017173(3*n²)`
-/

namespace A158645.P958350372750741014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A017173 (3 * n ^ 2)

end

end A158645.P958350372750741014

namespace A158645

/-- `27*A017173(3*n²)` -/
def P958350372750741014.Spec : Prop :=
  ∀ n, P958350372750741014.a n = A158645 n

end A158645

/-!
# A158646: a(n) = 54*n^2 + 1.

The programs for A158646, the canonical program `A158646.P4612205236885990431` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158646 has offset 0).

The definition of A158646 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `54*n²+1` (program `A158646.P4612205236885990431`, by `A158646.P4612205236885990431.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158646.P4612205236885990431

`54*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158646

/-- `54*n²+1` -/
def P4612205236885990431.Spec : Prop :=
  ∀ n, (P4612205236885990431.a n : ℤ) = A158646 n

theorem P4612205236885990431.correct : P4612205236885990431.Spec := by
  intro n
  simp only [A158646]

end A158646

/-! ## A158646.P18054432048172345875

`xor(1, 6*(3*n)²)`
-/

namespace A158646.P18054432048172345875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * (3 * n) ^ 2)

end

end A158646.P18054432048172345875

namespace A158646

/-- `xor(1, 6*(3*n)²)` -/
def P18054432048172345875.Spec : Prop :=
  ∀ n, (P18054432048172345875.a n : ℤ) = A158646 n

end A158646

/-! ## A158646.P7473449784552055204

`or(1, 3*9*n*2*n)`
-/

namespace A158646.P7473449784552055204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * (9 * n) * (2 * n))

end

end A158646.P7473449784552055204

namespace A158646

/-- `or(1, 3*9*n*2*n)` -/
def P7473449784552055204.Spec : Prop :=
  ∀ n, (P7473449784552055204.a n : ℤ) = A158646 n

end A158646

/-! ## A158646.P7527631163660352322

`ceil((6*9*n*A004277(n)+1)/2)`
-/

namespace A158646.P7527631163660352322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((6 * (9 * n) : ℤ) * A004277 n + 1 : ℚ) / 2⌉

end

end A158646.P7527631163660352322

namespace A158646

/-- `ceil((6*9*n*A004277(n)+1)/2)` -/
def P7527631163660352322.Spec : Prop :=
  ∀ n, P7527631163660352322.a n = A158646 n

end A158646

/-! ## A158646.P608008848367528615

`Δ[lcm(A000567(n), A051866(n))]`
-/

namespace A158646.P608008848367528615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000567 n) (A051866 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A158646.P608008848367528615

namespace A158646

/-- `Δ[lcm(A000567(n), A051866(n))]` -/
def P608008848367528615.Spec : Prop :=
  ∀ n, P608008848367528615.a n = A158646 n

end A158646

/-! ## A158646.P5213743350462241670

`ceil(A010017(2*n)/2)`
-/

namespace A158646.P5213743350462241670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010017 (2 * n) : ℚ) / 2⌉

end

end A158646.P5213743350462241670

namespace A158646

/-- `ceil(A010017(2*n)/2)` -/
def P5213743350462241670.Spec : Prop :=
  ∀ n, P5213743350462241670.a n = A158646 n

end A158646

/-! ## A158646.P2220515983964970782

`(A244634(2*n)+2)/2`
-/

namespace A158646.P2220515983964970782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244634 (2 * n) + 2 : ℚ) / 2

end

end A158646.P2220515983964970782

namespace A158646

/-- `(A244634(2*n)+2)/2` -/
def P2220515983964970782.Spec : Prop :=
  ∀ n, P2220515983964970782.a n = (A158646 n : ℚ)

end A158646

/-! ## A158646.P5411909723141534028

`A010017(2*n)/A036453(n+1)`
-/

namespace A158646.P5411909723141534028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010017 (2 * n) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A158646.P5411909723141534028

namespace A158646

/-- `A010017(2*n)/A036453(n+1)` -/
def P5411909723141534028.Spec : Prop :=
  ∀ n, P5411909723141534028.a n = (A158646 n : ℚ)

end A158646

/-! ## A158646.P14034866824078971590

`A227776(3*n)`
-/

namespace A158646.P14034866824078971590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 (3 * n)

end

end A158646.P14034866824078971590

namespace A158646

/-- `A227776(3*n)` -/
def P14034866824078971590.Spec : Prop :=
  ∀ n, P14034866824078971590.a n = A158646 n

end A158646

/-! ## A158646.P14256137292179852584

`abs(2-or(1, A005897(3*n)))`
-/

namespace A158646.P14256137292179852584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - Int.lor 1 (A005897 (3 * n))|

end

end A158646.P14256137292179852584

namespace A158646

/-- `abs(2-or(1, A005897(3*n)))` -/
def P14256137292179852584.Spec : Prop :=
  ∀ n, P14256137292179852584.a n = A158646 n

end A158646

/-! ## A158646.P11635753202634022426

`floor((A033581(6*n)+6)/4)`
-/

namespace A158646.P11635753202634022426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033581 (6 * n) + 6 : ℚ) / 4⌋

end

end A158646.P11635753202634022426

namespace A158646

/-- `floor((A033581(6*n)+6)/4)` -/
def P11635753202634022426.Spec : Prop :=
  ∀ n, P11635753202634022426.a n = A158646 n

end A158646

/-! ## A158646.P2591030074103090622

`A084672(9*n)`
-/

namespace A158646.P2591030074103090622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084672 (9 * n)

end

end A158646.P2591030074103090622

namespace A158646

/-- `A084672(9*n)` -/
def P2591030074103090622.Spec : Prop :=
  ∀ n, P2591030074103090622.a n = A158646 n

end A158646

/-! ## A158646.P5114144843664849483

`∑[A008458(9*lt[A020639(n+1), 3])]`
-/

namespace A158646.P5114144843664849483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (9 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158646.P5114144843664849483

namespace A158646

/-- `∑[A008458(9*lt[A020639(n+1), 3])]` -/
def P5114144843664849483.Spec : Prop :=
  ∀ n, P5114144843664849483.a n = A158646 n

end A158646

/-! ## A158646.P6499865285684005732

`A114949(18*n)/6`
-/

namespace A158646.P6499865285684005732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114949 (18 * n) : ℚ) / 6

end

end A158646.P6499865285684005732

namespace A158646

/-- `A114949(18*n)/6` -/
def P6499865285684005732.Spec : Prop :=
  ∀ n, P6499865285684005732.a n = (A158646 n : ℚ)

end A158646

/-!
# A158647: A145501(16n+8).

The programs for A158647, the canonical program `A158647.P6045662051841983463` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158647 has offset 0).

The definition of A158647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158647.P14812278212540996105

`A145501(16*n+8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158647.P14812278212540996105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145501 (16 * n + 8)

end

end A158647.P14812278212540996105

namespace A158647

/-- `A145501(16*n+8)` -/
def P14812278212540996105.Spec : Prop :=
  ∀ n, P14812278212540996105.a n = A158647 n

end A158647

/-! ## A158647.P6045662051841983463

`13*∏{e}[Δ[n²], C(#+2, 2)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158647

/-- `13*∏{e}[Δ[n²], C(#+2, 2)]` -/
def P6045662051841983463.Spec : Prop :=
  ∀ n, (P6045662051841983463.a n : ℤ) = A158647 n

theorem P6045662051841983463.correct : P6045662051841983463.Spec := by
  intro n
  simp only [A158647]

end A158647

/-! ## A158647.P2451774206489501231

`lcm(13, ∏{e}[Δ[n²], C(#+2, 2)])`
-/

namespace A158647.P2451774206489501231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 13 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose (Nat.factorization (f1 n).natAbs p + 2) 2)

end

end A158647.P2451774206489501231

namespace A158647

/-- `lcm(13, ∏{e}[Δ[n²], C(#+2, 2)])` -/
def P2451774206489501231.Spec : Prop :=
  ∀ n, (P2451774206489501231.a n : ℤ) = A158647 n

end A158647

/-! ## A158647.P10281171907329711905

`13*∏{e}[4*n+2, C(#+2, 2)]/3`
-/

namespace A158647.P10281171907329711905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  13 * (((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 : ℕ) : ℚ) / 3)

end

end A158647.P10281171907329711905

namespace A158647

/-- `13*∏{e}[4*n+2, C(#+2, 2)]/3` -/
def P10281171907329711905.Spec : Prop :=
  ∀ n, P10281171907329711905.a n = (A158647 n : ℚ)

end A158647

/-! ## A158647.P15573650400754430241

`13*A158315(n)`
-/

namespace A158647.P15573650400754430241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A158315 n

end

end A158647.P15573650400754430241

namespace A158647

/-- `13*A158315(n)` -/
def P15573650400754430241.Spec : Prop :=
  ∀ n, P15573650400754430241.a n = A158647 n

end A158647

/-! ## A158647.P12001894033440401320

`13*A133700(2*n+1)`
-/

namespace A158647.P12001894033440401320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A133700 (2 * n + 1)

end

end A158647.P12001894033440401320

namespace A158647

/-- `13*A133700(2*n+1)` -/
def P12001894033440401320.Spec : Prop :=
  ∀ n, P12001894033440401320.a n = A158647 n

end A158647

/-! ## A158647.P6241444019016501830

`13*∑{d}[Δ[n²], A000005(#)]`
-/

namespace A158647.P6241444019016501830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d)

end

end A158647.P6241444019016501830

namespace A158647

/-- `13*∑{d}[Δ[n²], A000005(#)]` -/
def P6241444019016501830.Spec : Prop :=
  ∀ n, P6241444019016501830.a n = A158647 n

end A158647

/-! ## A158647.P3315653931521606451

`A008595(A158315(n))`
-/

namespace A158647.P3315653931521606451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A158315 n).toNat

end

end A158647.P3315653931521606451

namespace A158647

/-- `A008595(A158315(n))` -/
def P3315653931521606451.Spec : Prop :=
  ∀ n, P3315653931521606451.a n = A158647 n

end A158647

/-! ## A158647.P14289192468416155023

`13*∑{d}[2*n+1, A000005(#)]^∏{p}[n, A001221(#)]`
-/

namespace A158647.P14289192468416155023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  13 * ((∑ d ∈ Nat.divisors (f1 n), A000005 d : ℤ) : ℚ) ^ (∏ p ∈ Nat.primeFactors (f2 n), A001221 p : ℤ)

end

end A158647.P14289192468416155023

namespace A158647

/-- `13*∑{d}[2*n+1, A000005(#)]^∏{p}[n, A001221(#)]` -/
def P14289192468416155023.Spec : Prop :=
  ∀ n, P14289192468416155023.a n = (A158647 n : ℚ)

end A158647

/-! ## A158647.P401525218707985441

`A158280(n)+A158280(n)-A158315(n)`
-/

namespace A158647.P401525218707985441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158280 n + (A158280 n - A158315 n)

end

end A158647.P401525218707985441

namespace A158647

/-- `A158280(n)+A158280(n)-A158315(n)` -/
def P401525218707985441.Spec : Prop :=
  ∀ n, P401525218707985441.a n = A158647 n

end A158647

/-! ## A158647.P14994010093362002071

`13*A007425(Δ[n²])`
-/

namespace A158647.P14994010093362002071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A007425 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A158647.P14994010093362002071

namespace A158647

/-- `13*A007425(Δ[n²])` -/
def P14994010093362002071.Spec : Prop :=
  ∀ n, P14994010093362002071.a n = A158647 n

end A158647

/-!
# A158648: Numbers n such that 30*n + 17 is prime.

The programs for A158648, the canonical program `A158648.P12379688915653926394` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158648 has offset 1).

The definition of A158648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039949, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158648.P12379688915653926394

`floor(A039949(n+1)/30)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A158648

/-- `floor(A039949(n+1)/30)` -/
def P12379688915653926394.Spec : Prop :=
  ∀ n, P12379688915653926394.a n = A158648 (n + 1)

theorem P12379688915653926394.correct : P12379688915653926394.Spec := by
  intro n
  simp only [A158648, Nat.add_sub_cancel]

end A158648

/-! ## A158648.P1249060043019422129

`eq[1, A001222(30*n+17)]`
-/

namespace A158648.P1249060043019422129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n + 17)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P1249060043019422129

namespace A158648

/-- `eq[1, A001222(30*n+17)]` -/
def P1249060043019422129.Spec : Prop :=
  ∀ n, (P1249060043019422129.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P7299910649737804873

`eq[2, A000005(30*n+17)]`
-/

namespace A158648.P7299910649737804873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (30 * n + 17)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P7299910649737804873

namespace A158648

/-- `eq[2, A000005(30*n+17)]` -/
def P7299910649737804873.Spec : Prop :=
  ∀ n, (P7299910649737804873.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P1755115264791934567

`lt[A000005(3*(10*n+6)-1), 3]`
-/

namespace A158648.P1755115264791934567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (10 * n + 6) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A158648.P1755115264791934567

namespace A158648

/-- `lt[A000005(3*(10*n+6)-1), 3]` -/
def P1755115264791934567.Spec : Prop :=
  ∀ n, (P1755115264791934567.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P9544796038220042221

`eq[30*n+17, A006530(30*n+17)]`
-/

namespace A158648.P9544796038220042221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (30 * n + 17)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P9544796038220042221

namespace A158648

/-- `eq[30*n+17, A006530(30*n+17)]` -/
def P9544796038220042221.Spec : Prop :=
  ∀ n, (P9544796038220042221.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P4086566544159954843

`eq[1, A075743(A017329(n))]`
-/

namespace A158648.P4086566544159954843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P4086566544159954843

namespace A158648

/-- `eq[1, A075743(A017329(n))]` -/
def P4086566544159954843.Spec : Prop :=
  ∀ n, (P4086566544159954843.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P17181823705684720859

`eq[1, A033273(A128468(n))]`
-/

namespace A158648.P17181823705684720859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A128468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P17181823705684720859

namespace A158648

/-- `eq[1, A033273(A128468(n))]` -/
def P17181823705684720859.Spec : Prop :=
  ∀ n, (P17181823705684720859.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P18389645072539612055

`eq[1, A075743(A017317(n)+1)]`
-/

namespace A158648.P18389645072539612055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017317 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P18389645072539612055

namespace A158648

/-- `eq[1, A075743(A017317(n)+1)]` -/
def P18389645072539612055.Spec : Prop :=
  ∀ n, (P18389645072539612055.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P5671271859764371049

`eq[1, A075743(A017341(n)-1)]`
-/

namespace A158648.P5671271859764371049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017341 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P5671271859764371049

namespace A158648

/-- `eq[1, A075743(A017341(n)-1)]` -/
def P5671271859764371049.Spec : Prop :=
  ∀ n, (P5671271859764371049.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P11963934581738141274

`record[A005843(n)/A000005(A128468(n))]`
-/

namespace A158648.P11963934581738141274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A000005 (A128468 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158648.P11963934581738141274

namespace A158648

/-- `record[A005843(n)/A000005(A128468(n))]` -/
def P11963934581738141274.Spec : Prop :=
  ∀ n, P11963934581738141274.a n = (A158648 (n + 1) : ℚ)

end A158648

/-! ## A158648.P3700981780157089079

`eq[1, A167020(A016885(n))]`
-/

namespace A158648.P3700981780157089079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P3700981780157089079

namespace A158648

/-- `eq[1, A167020(A016885(n))]` -/
def P3700981780157089079.Spec : Prop :=
  ∀ n, (P3700981780157089079.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P11756940996155630339

`eq[1, A167020(A016897(n)-1)]`
-/

namespace A158648.P11756940996155630339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A016897 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P11756940996155630339

namespace A158648

/-- `eq[1, A167020(A016897(n)-1)]` -/
def P11756940996155630339.Spec : Prop :=
  ∀ n, (P11756940996155630339.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P8842739931189525814

`eq[1, A167020(A004767(n)+n)]`
-/

namespace A158648.P8842739931189525814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A004767 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P8842739931189525814

namespace A158648

/-- `eq[1, A167020(A004767(n)+n)]` -/
def P8842739931189525814.Spec : Prop :=
  ∀ n, (P8842739931189525814.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P14303326018037069034

`eq[2, A060324(A017341(n))]`
-/

namespace A158648.P14303326018037069034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P14303326018037069034

namespace A158648

/-- `eq[2, A060324(A017341(n))]` -/
def P14303326018037069034.Spec : Prop :=
  ∀ n, (P14303326018037069034.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P8868071236677999455

`eq[2, A060324(A017365(n)-2)]`
-/

namespace A158648.P8868071236677999455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A017365 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P8868071236677999455

namespace A158648

/-- `eq[2, A060324(A017365(n)-2)]` -/
def P8868071236677999455.Spec : Prop :=
  ∀ n, (P8868071236677999455.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P10382341399342318885

`eq[1, A281680(A139606(n)+2)]`
-/

namespace A158648.P10382341399342318885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A139606 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158648.P10382341399342318885

namespace A158648

/-- `eq[1, A281680(A139606(n)+2)]` -/
def P10382341399342318885.Spec : Prop :=
  ∀ n, (P10382341399342318885.a n : ℤ) = A158648 (n + 1)

end A158648

/-! ## A158648.P13197975926345771954

`record[n%A014963(30*n+17)]`
-/

namespace A158648.P13197975926345771954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (30 * n + 17))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158648.P13197975926345771954

namespace A158648

/-- `record[n%A014963(30*n+17)]` -/
def P13197975926345771954.Spec : Prop :=
  ∀ n, P13197975926345771954.a n = A158648 (n + 1)

end A158648

/-! ## A158648.P11083433344344434604

`A008651(A039949(n+1))`
-/

namespace A158648.P11083433344344434604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A039949 (n + 1)).toNat

end

end A158648.P11083433344344434604

namespace A158648

/-- `A008651(A039949(n+1))` -/
def P11083433344344434604.Spec : Prop :=
  ∀ n, P11083433344344434604.a n = A158648 (n + 1)

end A158648

/-! ## A158648.P10415714070226280259

`A008651(A141860(n+2))`
-/

namespace A158648.P10415714070226280259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A141860 (n + 2)).toNat

end

end A158648.P10415714070226280259

namespace A158648

/-- `A008651(A141860(n+2))` -/
def P10415714070226280259.Spec : Prop :=
  ∀ n, P10415714070226280259.a n = A158648 (n + 1)

end A158648

/-!
# A158651: Number of directed Hamiltonian paths on the n X n king graph.

The programs for A158651, there is no canonical definition to state claims against.
-/

/-! ## A158651.P2186455354394547026

`A020639(A000400(n))*A308129(n+1)`
-/

namespace A158651.P2186455354394547026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000400 n).toNat * A308129 (n + 1)

end

end A158651.P2186455354394547026

/-! ## A158651.P1577327910003096246

`A131714(A344576(n))*A308129(n+1)`
-/

namespace A158651.P1577327910003096246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131714 (A344576 n).toNat * A308129 (n + 1)

end

end A158651.P1577327910003096246

/-!
# A158652: Any two consecutive digits in the sequence sum up to a prime.

The programs for A158652, there is no canonical definition to state claims against.
-/

/-! ## A158652.P5277281693603001816

`A326534(∑[A112798(n+4)^A000078(n)])`
-/

namespace A158652.P5277281693603001816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112798 (n + 4) : ℚ) ^ (A000078 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A158652.P5277281693603001816

/-!
# A158653: Numerator of Bernoulli(n, 1/8).

The programs for A158653, there is no canonical definition to state claims against.
-/

/-! ## A158653.P17635253462356571576

`2*A157860(n)-A158701(n)`
-/

namespace A158653.P17635253462356571576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157860 n - A158701 n

end

end A158653.P17635253462356571576

/-!
# A158654: Denominator of Bernoulli(n, 1/8).

The programs for A158654, the canonical program `A158654.P15431746256361164345` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158654 has offset 0).

The definition of A158654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158654.P15431746256361164345

`2^n*A157818(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A158654

/-- `2^n*A157818(n)` -/
def P15431746256361164345.Spec : Prop :=
  ∀ n, P15431746256361164345.a n = A158654 n

theorem P15431746256361164345.correct : P15431746256361164345.Spec := by
  intro n
  simp only [A158654]

end A158654

/-! ## A158654.P13924880406396319741

`8^n*A141459(n)`
-/

namespace A158654.P13924880406396319741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A141459 n

end

end A158654.P13924880406396319741

namespace A158654

/-- `8^n*A141459(n)` -/
def P13924880406396319741.Spec : Prop :=
  ∀ n, P13924880406396319741.a n = A158654 n

end A158654

/-! ## A158654.P10650511796517492743

`lcm(8^n, A027642(n))`
-/

namespace A158654.P10650511796517492743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (8 ^ n : ℤ) (A027642 n)

end

end A158654.P10650511796517492743

namespace A158654

/-- `lcm(8^n, A027642(n))` -/
def P10650511796517492743.Spec : Prop :=
  ∀ n, (P10650511796517492743.a n : ℤ) = A158654 n

end A158654

/-! ## A158654.P3932329967541598451

`A107906(n)*A157782(n)`
-/

namespace A158654.P3932329967541598451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107906 n * A157782 n

end

end A158654.P3932329967541598451

namespace A158654

/-- `A107906(n)*A157782(n)` -/
def P3932329967541598451.Spec : Prop :=
  ∀ n, P3932329967541598451.a n = A158654 n

end A158654

/-! ## A158654.P13154482401247083976

`lcm(A001018(n), A141056(n))`
-/

namespace A158654.P13154482401247083976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001018 n) (A141056 n)

end

end A158654.P13154482401247083976

namespace A158654

/-- `lcm(A001018(n), A141056(n))` -/
def P13154482401247083976.Spec : Prop :=
  ∀ n, (P13154482401247083976.a n : ℤ) = A158654 n

end A158654

/-! ## A158654.P12577016126839942319

`lcm(Δ[A023001(n)], A176289(n))`
-/

namespace A158654.P12577016126839942319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A176289 n)

end

end A158654.P12577016126839942319

namespace A158654

/-- `lcm(Δ[A023001(n)], A176289(n))` -/
def P12577016126839942319.Spec : Prop :=
  ∀ n, (P12577016126839942319.a n : ℤ) = A158654 n

end A158654

/-! ## A158654.P384612626581984159

`A131577(A008486(n))*A141056(n)`
-/

namespace A158654.P384612626581984159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A008486 n).toNat * A141056 n

end

end A158654.P384612626581984159

namespace A158654

/-- `A131577(A008486(n))*A141056(n)` -/
def P384612626581984159.Spec : Prop :=
  ∀ n, P384612626581984159.a n = A158654 n

end A158654

/-! ## A158654.P228368529487444321

`A000079(n)*A141459(n)*A000079(n)²`
-/

namespace A158654.P228368529487444321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A141459 n * A000079 n ^ 2

end

end A158654.P228368529487444321

namespace A158654

/-- `A000079(n)*A141459(n)*A000079(n)²` -/
def P228368529487444321.Spec : Prop :=
  ∀ n, P228368529487444321.a n = A158654 n

end A158654

/-!
# A158655: a(n) = 729*n^2 - 27.

The programs for A158655, the canonical program `A158655.P13484862405063782855` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158655 has offset 1).

The definition of A158655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `729*(n+1)²-27` (program `A158655.P13484862405063782855`, by `A158655.P13484862405063782855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158655.P13484862405063782855

`729*(n+1)²-27`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158655

/-- `729*(n+1)²-27` -/
def P13484862405063782855.Spec : Prop :=
  ∀ n, P13484862405063782855.a n = A158655 (n + 1)

theorem P13484862405063782855.correct : P13484862405063782855.Spec := by
  intro n
  simp only [A158655, Nat.add_sub_cancel]

end A158655

/-! ## A158655.P17267072078358106305

`lcm(27, 1-27*(n+1)*(n+1))`
-/

namespace A158655.P17267072078358106305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 27 (1 - (27 * ((n + 1) * (n + 1)) : ℤ))

end

end A158655.P17267072078358106305

namespace A158655

/-- `lcm(27, 1-27*(n+1)*(n+1))` -/
def P17267072078358106305.Spec : Prop :=
  ∀ n, (P17267072078358106305.a n : ℤ) = A158655 (n + 1)

end A158655

/-! ## A158655.P17934285876786843669

`3*3*(A017162(n+1)-3)`
-/

namespace A158655.P17934285876786843669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * (A017162 (n + 1) - 3))

end

end A158655.P17934285876786843669

namespace A158655

/-- `3*3*(A017162(n+1)-3)` -/
def P17934285876786843669.Spec : Prop :=
  ∀ n, P17934285876786843669.a n = A158655 (n + 1)

end A158655

/-! ## A158655.P9858320669594747324

`27*(27*A000290(n+1)-1)`
-/

namespace A158655.P9858320669594747324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * (27 * A000290 (n + 1) - 1)

end

end A158655.P9858320669594747324

namespace A158655

/-- `27*(27*A000290(n+1)-1)` -/
def P9858320669594747324.Spec : Prop :=
  ∀ n, P9858320669594747324.a n = A158655 (n + 1)

end A158655

/-! ## A158655.P15511243083778698752

`3*3*A157872(3*(n+1))`
-/

namespace A158655.P15511243083778698752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A157872 (3 * (n + 1)))

end

end A158655.P15511243083778698752

namespace A158655

/-- `3*3*A157872(3*(n+1))` -/
def P15511243083778698752.Spec : Prop :=
  ∀ n, P15511243083778698752.a n = A158655 (n + 1)

end A158655

/-! ## A158655.P10633946773151904169

`9*A028872(9*(n+1))`
-/

namespace A158655.P10633946773151904169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A028872 (9 * (n + 1))

end

end A158655.P10633946773151904169

namespace A158655

/-- `9*A028872(9*(n+1))` -/
def P10633946773151904169.Spec : Prop :=
  ∀ n, P10633946773151904169.a n = A158655 (n + 1)

end A158655

/-! ## A158655.P2311802395489139326

`9*(A028881(9*(n+1))+4)`
-/

namespace A158655.P2311802395489139326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A028881 (9 * (n + 1)) + 4)

end

end A158655.P2311802395489139326

namespace A158655

/-- `9*(A028881(9*(n+1))+4)` -/
def P2311802395489139326.Spec : Prop :=
  ∀ n, P2311802395489139326.a n = A158655 (n + 1)

end A158655

/-! ## A158655.P4291255149747912714

`3*(A033428(9*(n+1))-9)`
-/

namespace A158655.P4291255149747912714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A033428 (9 * (n + 1)) - 9)

end

end A158655.P4291255149747912714

namespace A158655

/-- `3*(A033428(9*(n+1))-9)` -/
def P4291255149747912714.Spec : Prop :=
  ∀ n, P4291255149747912714.a n = A158655 (n + 1)

end A158655

/-! ## A158655.P4769980655460343597

`A121670(9*(n+1))/(n+1)`
-/

namespace A158655.P4769980655460343597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121670 (9 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A158655.P4769980655460343597

namespace A158655

/-- `A121670(9*(n+1))/(n+1)` -/
def P4769980655460343597.Spec : Prop :=
  ∀ n, P4769980655460343597.a n = (A158655 (n + 1) : ℚ)

end A158655

/-!
# A158656: a(n) = 54*n^2 - 1.

The programs for A158656, the canonical program `A158656.P11069731994058768406` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158656 has offset 1).

The definition of A158656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `54*(n+1)²-1` (program `A158656.P11069731994058768406`, by `A158656.P11069731994058768406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158656.P11069731994058768406

`54*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158656

/-- `54*(n+1)²-1` -/
def P11069731994058768406.Spec : Prop :=
  ∀ n, P11069731994058768406.a n = A158656 (n + 1)

theorem P11069731994058768406.correct : P11069731994058768406.Spec := by
  intro n
  simp only [A158656, Nat.add_sub_cancel]

end A158656

/-! ## A158656.P17622853251887616511

`floor(A181968(n+1)/(n+1))`
-/

namespace A158656.P17622853251887616511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181968 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A158656.P17622853251887616511

namespace A158656

/-- `floor(A181968(n+1)/(n+1))` -/
def P17622853251887616511.Spec : Prop :=
  ∀ n, P17622853251887616511.a n = A158656 (n + 1)

end A158656

/-! ## A158656.P10122001036516960064

`(A158771(n+1)+A158560(n+1))/2`
-/

namespace A158656.P10122001036516960064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158771 (n + 1) + A158560 (n + 1) : ℚ) / 2

end

end A158656.P10122001036516960064

namespace A158656

/-- `(A158771(n+1)+A158560(n+1))/2` -/
def P10122001036516960064.Spec : Prop :=
  ∀ n, P10122001036516960064.a n = (A158656 (n + 1) : ℚ)

end A158656

/-! ## A158656.P6419028835338578094

`ceil(A136017(n+1)+A136017(n+1)/2)`
-/

namespace A158656.P6419028835338578094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136017 (n + 1) : ℚ) + (A136017 (n + 1) : ℚ) / 2⌉

end

end A158656.P6419028835338578094

namespace A158656

/-- `ceil(A136017(n+1)+A136017(n+1)/2)` -/
def P6419028835338578094.Spec : Prop :=
  ∀ n, P6419028835338578094.a n = A158656 (n + 1)

end A158656

/-! ## A158656.P12563622673348578231

`Δ[A338109(n)-A125202(n+1)]`
-/

namespace A158656.P12563622673348578231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338109 n - A125202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158656.P12563622673348578231

namespace A158656

/-- `Δ[A338109(n)-A125202(n+1)]` -/
def P12563622673348578231.Spec : Prop :=
  ∀ n, P12563622673348578231.a n = A158656 (n + 1)

end A158656

/-! ## A158656.P15959210064412255354

`A140811(3*(n+1))`
-/

namespace A158656.P15959210064412255354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 (3 * (n + 1))

end

end A158656.P15959210064412255354

namespace A158656

/-- `A140811(3*(n+1))` -/
def P15959210064412255354.Spec : Prop :=
  ∀ n, P15959210064412255354.a n = A158656 (n + 1)

end A158656

/-! ## A158656.P9545743792180523647

`abs(A140811(A008486(n+1)))`
-/

namespace A158656.P9545743792180523647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140811 (A008486 (n + 1)).toNat|

end

end A158656.P9545743792180523647

namespace A158656

/-- `abs(A140811(A008486(n+1)))` -/
def P9545743792180523647.Spec : Prop :=
  ∀ n, P9545743792180523647.a n = A158656 (n + 1)

end A158656

/-! ## A158656.P2690040375472863304

`record[A140811(A008486(abs(1-n)))]`
-/

namespace A158656.P2690040375472863304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 (A008486 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158656.P2690040375472863304

namespace A158656

/-- `record[A140811(A008486(abs(1-n)))]` -/
def P2690040375472863304.Spec : Prop :=
  ∀ n, P2690040375472863304.a n = A158656 (n + 1)

end A158656

/-! ## A158656.P3067995363248039921

`(A016945(3*(n+1))*A016969(n)+1)/2`
-/

namespace A158656.P3067995363248039921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016945 (3 * (n + 1)) * A016969 n + 1 : ℚ) / 2

end

end A158656.P3067995363248039921

namespace A158656

/-- `(A016945(3*(n+1))*A016969(n)+1)/2` -/
def P3067995363248039921.Spec : Prop :=
  ∀ n, P3067995363248039921.a n = (A158656 (n + 1) : ℚ)

end A158656

/-! ## A158656.P16725731051558768223

`A265429(A017641(n))`
-/

namespace A158656.P16725731051558768223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265429 (A017641 n).toNat

end

end A158656.P16725731051558768223

namespace A158656

/-- `A265429(A017641(n))` -/
def P16725731051558768223.Spec : Prop :=
  ∀ n, P16725731051558768223.a n = A158656 (n + 1)

end A158656

/-! ## A158656.P9163339195234774026

`A337483(A008600(n+1))`
-/

namespace A158656.P9163339195234774026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337483 (A008600 (n + 1)).toNat

end

end A158656.P9163339195234774026

namespace A158656

/-- `A337483(A008600(n+1))` -/
def P9163339195234774026.Spec : Prop :=
  ∀ n, P9163339195234774026.a n = A158656 (n + 1)

end A158656

/-! ## A158656.P13963794172417825262

`A138987(A239129(n+1))`
-/

namespace A158656.P13963794172417825262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (A239129 (n + 1)).toNat

end

end A158656.P13963794172417825262

namespace A158656

/-- `A138987(A239129(n+1))` -/
def P13963794172417825262.Spec : Prop :=
  ∀ n, P13963794172417825262.a n = A158656 (n + 1)

end A158656

/-!
# A158657: a(n) = 784*n^2 - 28.

The programs for A158657, the canonical program `A158657.P12760018802234952445` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158657 has offset 1).

The definition of A158657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `784*(n+1)²-28` (program `A158657.P12760018802234952445`, by `A158657.P12760018802234952445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158657.P12760018802234952445

`784*(n+1)²-28`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158657

/-- `784*(n+1)²-28` -/
def P12760018802234952445.Spec : Prop :=
  ∀ n, P12760018802234952445.a n = A158657 (n + 1)

theorem P12760018802234952445.correct : P12760018802234952445.Spec := by
  intro n
  simp only [A158657, Nat.add_sub_cancel]

end A158657

/-! ## A158657.P3568058966013491654

`28*A158554(n+1)`
-/

namespace A158657.P3568058966013491654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A158554 (n + 1)

end

end A158657.P3568058966013491654

namespace A158657

/-- `28*A158554(n+1)` -/
def P3568058966013491654.Spec : Prop :=
  ∀ n, P3568058966013491654.a n = A158657 (n + 1)

end A158657

/-! ## A158657.P9230135028349625013

`lcm(28, 1-28*(n+1)*(n+1))`
-/

namespace A158657.P9230135028349625013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 28 (1 - (28 * ((n + 1) * (n + 1)) : ℤ))

end

end A158657.P9230135028349625013

namespace A158657

/-- `lcm(28, 1-28*(n+1)*(n+1))` -/
def P9230135028349625013.Spec : Prop :=
  ∀ n, (P9230135028349625013.a n : ℤ) = A158657 (n + 1)

end A158657

/-! ## A158657.P1317002388310139423

`28*(28*A000290(n+1)-1)`
-/

namespace A158657.P1317002388310139423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * (28 * A000290 (n + 1) - 1)

end

end A158657.P1317002388310139423

namespace A158657

/-- `28*(28*A000290(n+1)-1)` -/
def P1317002388310139423.Spec : Prop :=
  ∀ n, P1317002388310139423.a n = A158657 (n + 1)

end A158657

/-! ## A158657.P7982810246907817501

`28*(A158556(n+1)-2)`
-/

namespace A158657.P7982810246907817501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * (A158556 (n + 1) - 2)

end

end A158657.P7982810246907817501

namespace A158657

/-- `28*(A158556(n+1)-2)` -/
def P7982810246907817501.Spec : Prop :=
  ∀ n, P7982810246907817501.a n = A158657 (n + 1)

end A158657

/-! ## A158657.P15888625141004610511

`4*A158484(2*(n+1))`
-/

namespace A158657.P15888625141004610511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A158484 (2 * (n + 1))

end

end A158657.P15888625141004610511

namespace A158657

/-- `4*A158484(2*(n+1))` -/
def P15888625141004610511.Spec : Prop :=
  ∀ n, P15888625141004610511.a n = A158657 (n + 1)

end A158657

/-! ## A158657.P3590206537266836784

`2*(A001105(14*(n+1))-14)`
-/

namespace A158657.P3590206537266836784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001105 (14 * (n + 1)) - 14)

end

end A158657.P3590206537266836784

namespace A158657

/-- `2*(A001105(14*(n+1))-14)` -/
def P3590206537266836784.Spec : Prop :=
  ∀ n, P3590206537266836784.a n = A158657 (n + 1)

end A158657

/-! ## A158657.P15023405719423872443

`A155136(A161714(n+1))`
-/

namespace A158657.P15023405719423872443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155136 (A161714 (n + 1)).toNat

end

end A158657.P15023405719423872443

namespace A158657

/-- `A155136(A161714(n+1))` -/
def P15023405719423872443.Spec : Prop :=
  ∀ n, P15023405719423872443.a n = A158657 (n + 1)

end A158657

/-!
# A158658: a(n) = 56*n^2 - 1.

The programs for A158658, the canonical program `A158658.P6133891185110326415` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158658 has offset 1).

The definition of A158658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `56*(n+1)²-1` (program `A158658.P6133891185110326415`, by `A158658.P6133891185110326415.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158658.P6133891185110326415

`56*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158658

/-- `56*(n+1)²-1` -/
def P6133891185110326415.Spec : Prop :=
  ∀ n, P6133891185110326415.a n = A158658 (n + 1)

theorem P6133891185110326415.correct : P6133891185110326415.Spec := by
  intro n
  simp only [A158658, Nat.add_sub_cancel]

end A158658

/-! ## A158658.P14729441576978578036

`A158485(2*(n+1))`
-/

namespace A158658.P14729441576978578036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158485 (2 * (n + 1))

end

end A158658.P14729441576978578036

namespace A158658

/-- `A158485(2*(n+1))` -/
def P14729441576978578036.Spec : Prop :=
  ∀ n, P14729441576978578036.a n = A158658 (n + 1)

end A158658

/-! ## A158658.P17475957528167443931

`floor(sqrt(2*C(56*(n+1)², 2)))`
-/

namespace A158658.P17475957528167443931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * Nat.choose (56 * (n + 1) ^ 2) 2)

end

end A158658.P17475957528167443931

namespace A158658

/-- `floor(sqrt(2*C(56*(n+1)², 2)))` -/
def P17475957528167443931.Spec : Prop :=
  ∀ n, (P17475957528167443931.a n : ℤ) = A158658 (n + 1)

end A158658

/-! ## A158658.P14914571585260747375

`or(1, 2*A158554(n+1))`
-/

namespace A158658.P14914571585260747375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A158554 (n + 1))

end

end A158658.P14914571585260747375

namespace A158658

/-- `or(1, 2*A158554(n+1))` -/
def P14914571585260747375.Spec : Prop :=
  ∀ n, P14914571585260747375.a n = A158658 (n + 1)

end A158658

/-! ## A158658.P18058733480981181618

`(2*A158668(n+1))%A158670(n+1)`
-/

namespace A158658.P18058733480981181618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A158668 (n + 1)) (A158670 (n + 1))

end

end A158658.P18058733480981181618

namespace A158658

/-- `(2*A158668(n+1))%A158670(n+1)` -/
def P18058733480981181618.Spec : Prop :=
  ∀ n, P18058733480981181618.a n = A158658 (n + 1)

end A158658

/-! ## A158658.P2891780228576611246

`(A158670(n+1)+A158668(n+1))%A158680(n+1)`
-/

namespace A158658.P2891780228576611246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158670 (n + 1) + A158668 (n + 1)) (A158680 (n + 1))

end

end A158658.P2891780228576611246

namespace A158658

/-- `(A158670(n+1)+A158668(n+1))%A158680(n+1)` -/
def P2891780228576611246.Spec : Prop :=
  ∀ n, P2891780228576611246.a n = A158658 (n + 1)

end A158658

/-! ## A158658.P11351179993796540600

`Δ[∑[56*A000290(n)]-n]`
-/

namespace A158658.P11351179993796540600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  56 * A000290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158658.P11351179993796540600

namespace A158658

/-- `Δ[∑[56*A000290(n)]-n]` -/
def P11351179993796540600.Spec : Prop :=
  ∀ n, P11351179993796540600.a n = A158658 (n + 1)

end A158658

/-! ## A158658.P3497986050680274433

`Δ[A100166(n+1)-(n+2)*2*n]`
-/

namespace A158658.P3497986050680274433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100166 (n + 1) - ((n + 2) * (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158658.P3497986050680274433

namespace A158658

/-- `Δ[A100166(n+1)-(n+2)*2*n]` -/
def P3497986050680274433.Spec : Prop :=
  ∀ n, P3497986050680274433.a n = A158658 (n + 1)

end A158658

/-! ## A158658.P5694229944790669769

`abs(1-A144555(2*(n+1)))`
-/

namespace A158658.P5694229944790669769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A144555 (2 * (n + 1))|

end

end A158658.P5694229944790669769

namespace A158658

/-- `abs(1-A144555(2*(n+1)))` -/
def P5694229944790669769.Spec : Prop :=
  ∀ n, P5694229944790669769.a n = A158658 (n + 1)

end A158658

/-!
# A158659: a(n) = 784*n^2 + 28.

The programs for A158659, the canonical program `A158659.P10159485043101846206` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158659 has offset 0).

The definition of A158659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `784*n²+28` (program `A158659.P10159485043101846206`, by `A158659.P10159485043101846206.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158659.P10159485043101846206

`784*n²+28`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158659

/-- `784*n²+28` -/
def P10159485043101846206.Spec : Prop :=
  ∀ n, (P10159485043101846206.a n : ℤ) = A158659 n

theorem P10159485043101846206.correct : P10159485043101846206.Spec := by
  intro n
  simp only [A158659]

end A158659

/-! ## A158659.P15130119568463599105

`28*A158556(n)`
-/

namespace A158659.P15130119568463599105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A158556 n

end

end A158659.P15130119568463599105

namespace A158659

/-- `28*A158556(n)` -/
def P15130119568463599105.Spec : Prop :=
  ∀ n, P15130119568463599105.a n = A158659 n

end A158659

/-! ## A158659.P3828236956990259298

`28*or(1, 28*n²)`
-/

namespace A158659.P3828236956990259298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * Nat.lor 1 (28 * n ^ 2)

end

end A158659.P3828236956990259298

namespace A158659

/-- `28*or(1, 28*n²)` -/
def P3828236956990259298.Spec : Prop :=
  ∀ n, (P3828236956990259298.a n : ℤ) = A158659 n

end A158659

/-! ## A158659.P13204517265352057568

`28*xor(1, 28*n²)`
-/

namespace A158659.P13204517265352057568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * Nat.xor 1 (28 * n ^ 2)

end

end A158659.P13204517265352057568

namespace A158659

/-- `28*xor(1, 28*n²)` -/
def P13204517265352057568.Spec : Prop :=
  ∀ n, (P13204517265352057568.a n : ℤ) = A158659 n

end A158659

/-! ## A158659.P12950135585416654885

`28*(28*A000290(n)+1)`
-/

namespace A158659.P12950135585416654885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * (28 * A000290 n + 1)

end

end A158659.P12950135585416654885

namespace A158659

/-- `28*(28*A000290(n)+1)` -/
def P12950135585416654885.Spec : Prop :=
  ∀ n, P12950135585416654885.a n = A158659 n

end A158659

/-! ## A158659.P14700840052415083170

`(A161714(2*n+1)-A161714(2*n))*A247541(2*n)`
-/

namespace A158659.P14700840052415083170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161714 (2 * n + 1) - A161714 (2 * n)) * A247541 (2 * n)

end

end A158659.P14700840052415083170

namespace A158659

/-- `(A161714(2*n+1)-A161714(2*n))*A247541(2*n)` -/
def P14700840052415083170.Spec : Prop :=
  ∀ n, P14700840052415083170.a n = A158659 n

end A158659

/-!
# A158660: a(n) = 56*n^2 + 1.

The programs for A158660, the canonical program `A158660.P11271612442515931679` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158660 has offset 0).

The definition of A158660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `56*n²+1` (program `A158660.P11271612442515931679`, by `A158660.P11271612442515931679.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158660.P11271612442515931679

`56*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158660

/-- `56*n²+1` -/
def P11271612442515931679.Spec : Prop :=
  ∀ n, (P11271612442515931679.a n : ℤ) = A158660 n

theorem P11271612442515931679.correct : P11271612442515931679.Spec := by
  intro n
  simp only [A158660]

end A158660

/-! ## A158660.P12796638640088633760

`or(1, 56*n²)`
-/

namespace A158660.P12796638640088633760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (56 * n ^ 2)

end

end A158660.P12796638640088633760

namespace A158660

/-- `or(1, 56*n²)` -/
def P12796638640088633760.Spec : Prop :=
  ∀ n, (P12796638640088633760.a n : ℤ) = A158660 n

end A158660

/-! ## A158660.P18155264597240944736

`xor(1, 56*n²)`
-/

namespace A158660.P18155264597240944736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (56 * n ^ 2)

end

end A158660.P18155264597240944736

namespace A158660

/-- `xor(1, 56*n²)` -/
def P18155264597240944736.Spec : Prop :=
  ∀ n, (P18155264597240944736.a n : ℤ) = A158660 n

end A158660

/-! ## A158660.P10449968931975060891

`round((8*56*A000290(n)+4)/8)`
-/

namespace A158660.P10449968931975060891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((8 * (56 * A000290 n) + 4 : ℚ) / 8)

end

end A158660.P10449968931975060891

namespace A158660

/-- `round((8*56*A000290(n)+4)/8)` -/
def P10449968931975060891.Spec : Prop :=
  ∀ n, P10449968931975060891.a n = A158660 n

end A158660

/-! ## A158660.P15469158741881635736

`ceil(A158604(2*n)/3)`
-/

namespace A158660.P15469158741881635736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158604 (2 * n) : ℚ) / 3⌉

end

end A158660.P15469158741881635736

namespace A158660

/-- `ceil(A158604(2*n)/3)` -/
def P15469158741881635736.Spec : Prop :=
  ∀ n, P15469158741881635736.a n = A158660 n

end A158660

/-! ## A158660.P15896303716451203084

`ceil(A158556(2*n)/2)`
-/

namespace A158660.P15896303716451203084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158556 (2 * n) : ℚ) / 2⌉

end

end A158660.P15896303716451203084

namespace A158660

/-- `ceil(A158556(2*n)/2)` -/
def P15896303716451203084.Spec : Prop :=
  ∀ n, P15896303716451203084.a n = A158660 n

end A158660

/-! ## A158660.P17873241851945806172

`round(A010018(2*n)/2)`
-/

namespace A158660.P17873241851945806172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010018 (2 * n) : ℚ) / 2)

end

end A158660.P17873241851945806172

namespace A158660

/-- `round(A010018(2*n)/2)` -/
def P17873241851945806172.Spec : Prop :=
  ∀ n, P17873241851945806172.a n = A158660 n

end A158660

/-! ## A158660.P1975457002409186691

`record[or(A033999(n), A144555(n))]`
-/

namespace A158660.P1975457002409186691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033999 n) (A144555 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158660.P1975457002409186691

namespace A158660

/-- `record[or(A033999(n), A144555(n))]` -/
def P1975457002409186691.Spec : Prop :=
  ∀ n, P1975457002409186691.a n = A158660 n

end A158660

/-! ## A158660.P7134295432882697768

`A010018(2*n)/(A060576(n+1)+1)`
-/

namespace A158660.P7134295432882697768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010018 (2 * n) : ℚ) / (A060576 (n + 1) + 1 : ℚ)

end

end A158660.P7134295432882697768

namespace A158660

/-- `A010018(2*n)/(A060576(n+1)+1)` -/
def P7134295432882697768.Spec : Prop :=
  ∀ n, P7134295432882697768.a n = (A158660 n : ℚ)

end A158660

/-! ## A158660.P8750287758927217870

`(A244804(3*n+1)+A054552(n))/2`
-/

namespace A158660.P8750287758927217870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244804 (3 * n + 1) + A054552 n : ℚ) / 2

end

end A158660.P8750287758927217870

namespace A158660

/-- `(A244804(3*n+1)+A054552(n))/2` -/
def P8750287758927217870.Spec : Prop :=
  ∀ n, P8750287758927217870.a n = (A158660 n : ℚ)

end A158660

/-! ## A158660.P1084541866594079459

`A010018(2*n)/A089080(A006093(n+1))`
-/

namespace A158660.P1084541866594079459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010018 (2 * n) : ℚ) / (A089080 (A006093 (n + 1)).toNat : ℚ)

end

end A158660.P1084541866594079459

namespace A158660

/-- `A010018(2*n)/A089080(A006093(n+1))` -/
def P1084541866594079459.Spec : Prop :=
  ∀ n, P1084541866594079459.a n = (A158660 n : ℚ)

end A158660

/-! ## A158660.P13885581937223149448

`A005919(4*n)/A001227(A167215(n+1))`
-/

namespace A158660.P13885581937223149448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005919 (4 * n) : ℚ) / (A001227 (A167215 (n + 1)).toNat : ℚ)

end

end A158660.P13885581937223149448

namespace A158660

/-- `A005919(4*n)/A001227(A167215(n+1))` -/
def P13885581937223149448.Spec : Prop :=
  ∀ n, P13885581937223149448.a n = (A158660 n : ℚ)

end A158660

/-!
# A158661: Least number k such that sigma_n(k) > sigma_n(k+1), where sigma_n(k) = sum of the n-th powers of the divisors of k.

The programs for A158661, there is no canonical definition to state claims against.
-/

/-! ## A158661.P8989058777697341303

`A098475(n)+or(1, -n)%2`
-/

namespace A158661.P8989058777697341303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098475 n + Int.tmod (Int.lor 1 (-(n : ℤ))) 2

end

end A158661.P8989058777697341303

/-! ## A158661.P17610282643264497785

`A098475(round(sqrt(n²+1)))-1`
-/

namespace A158661.P17610282643264497785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098475 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

end

end A158661.P17610282643264497785

/-! ## A158661.P6611194464439314552

`abs(A098475(n)-A158388(n))`
-/

namespace A158661.P6611194464439314552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098475 n - A158388 n|

end

end A158661.P6611194464439314552

/-! ## A158661.P284247306294672688

`xor(1, A098475(A065033(2*n)))`
-/

namespace A158661.P284247306294672688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A098475 (A065033 (2 * n)).toNat)

end

end A158661.P284247306294672688

/-! ## A158661.P12465881975704502000

`A153881(n+1)+A098475(n)`
-/

namespace A158661.P12465881975704502000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + A098475 n

end

end A158661.P12465881975704502000

/-!
# A158662: Sum of primes <= n if 1 is counted as a prime.

The programs for A158662, the canonical program `A158662.P939245884081380887` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158662 has offset 1).

The definition of A158662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158662.P939245884081380887

`∑[∏{p}[n+1, C(#, n)]]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158662

/-- `∑[∏{p}[n+1, C(#, n)]]` -/
def P939245884081380887.Spec : Prop :=
  ∀ n, (P939245884081380887.a n : ℤ) = A158662 (n + 1)

theorem P939245884081380887.correct : P939245884081380887.Spec := by
  intro n
  simp only [A158662, Nat.add_sub_cancel]

end A158662

/-! ## A158662.P8081890830215911397

`∑[∑{p}[n+1, C(#, n)]]+1`
-/

namespace A158662.P8081890830215911397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A158662.P8081890830215911397

namespace A158662

/-- `∑[∑{p}[n+1, C(#, n)]]+1` -/
def P8081890830215911397.Spec : Prop :=
  ∀ n, (P8081890830215911397.a n : ℤ) = A158662 (n + 1)

end A158662

/-! ## A158662.P13040991475477287093

`∑[∏{p}[n+1, #-#%(n+1)]]`
-/

namespace A158662.P13040991475477287093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - ((p % (n + 1) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P13040991475477287093

namespace A158662

/-- `∑[∏{p}[n+1, #-#%(n+1)]]` -/
def P13040991475477287093.Spec : Prop :=
  ∀ n, P13040991475477287093.a n = A158662 (n + 1)

end A158662

/-! ## A158662.P9639712039108568497

`∑[∏{p}[n+1, #*val(#, n+1)]]`
-/

namespace A158662.P9639712039108568497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P9639712039108568497

namespace A158662

/-- `∑[∏{p}[n+1, #*val(#, n+1)]]` -/
def P9639712039108568497.Spec : Prop :=
  ∀ n, (P9639712039108568497.a n : ℤ) = A158662 (n + 1)

end A158662

/-! ## A158662.P13128197025006088471

`∑[C(n+1, ∑{e}[n+1, n*#])]`
-/

namespace A158662.P13128197025006088471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∑ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P13128197025006088471

namespace A158662

/-- `∑[C(n+1, ∑{e}[n+1, n*#])]` -/
def P13128197025006088471.Spec : Prop :=
  ∀ n, (P13128197025006088471.a n : ℤ) = A158662 (n + 1)

end A158662

/-! ## A158662.P16690284247867270857

`∑[C(n+1, ∏{e}[n+1, n*#])]`
-/

namespace A158662.P16690284247867270857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P16690284247867270857

namespace A158662

/-- `∑[C(n+1, ∏{e}[n+1, n*#])]` -/
def P16690284247867270857.Spec : Prop :=
  ∀ n, (P16690284247867270857.a n : ℤ) = A158662 (n + 1)

end A158662

/-! ## A158662.P10083409038444418324

`∑[C(n+1, n^∑{e}[n+1, #])]`
-/

namespace A158662.P10083409038444418324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (n ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P10083409038444418324

namespace A158662

/-- `∑[C(n+1, n^∑{e}[n+1, #])]` -/
def P10083409038444418324.Spec : Prop :=
  ∀ n, (P10083409038444418324.a n : ℤ) = A158662 (n + 1)

end A158662

/-! ## A158662.P13106672790574856739

`∑[C(n+1, ∑{d}[n+1, n+1-#])]`
-/

namespace A158662.P13106672790574856739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∑ d ∈ Nat.divisors (f2 n), ((n + 1 : ℤ) - (d : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P13106672790574856739

namespace A158662

/-- `∑[C(n+1, ∑{d}[n+1, n+1-#])]` -/
def P13106672790574856739.Spec : Prop :=
  ∀ n, (P13106672790574856739.a n : ℤ) = A158662 (n + 1)

end A158662

/-! ## A158662.P5196637536272894898

`A034387(n+1)+1`
-/

namespace A158662.P5196637536272894898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) + 1

end

end A158662.P5196637536272894898

namespace A158662

/-- `A034387(n+1)+1` -/
def P5196637536272894898.Spec : Prop :=
  ∀ n, P5196637536272894898.a n = A158662 (n + 1)

end A158662

/-! ## A158662.P11025165971612331551

`∑[A061397(n+1)]+1`
-/

namespace A158662.P11025165971612331551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A158662.P11025165971612331551

namespace A158662

/-- `∑[A061397(n+1)]+1` -/
def P11025165971612331551.Spec : Prop :=
  ∀ n, P11025165971612331551.a n = A158662 (n + 1)

end A158662

/-! ## A158662.P13550791392457802722

`∑[C(A006530(n+1), n)]`
-/

namespace A158662.P13550791392457802722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P13550791392457802722

namespace A158662

/-- `∑[C(A006530(n+1), n)]` -/
def P13550791392457802722.Spec : Prop :=
  ∀ n, (P13550791392457802722.a n : ℤ) = A158662 (n + 1)

end A158662

/-! ## A158662.P14941648033089136062

`∑[C(A014963(n+1), n)]`
-/

namespace A158662.P14941648033089136062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P14941648033089136062

namespace A158662

/-- `∑[C(A014963(n+1), n)]` -/
def P14941648033089136062.Spec : Prop :=
  ∀ n, (P14941648033089136062.a n : ℤ) = A158662 (n + 1)

end A158662

/-! ## A158662.P14147789614087834448

`∑[C(A020639(n+1), n)]`
-/

namespace A158662.P14147789614087834448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P14147789614087834448

namespace A158662

/-- `∑[C(A020639(n+1), n)]` -/
def P14147789614087834448.Spec : Prop :=
  ∀ n, (P14147789614087834448.a n : ℤ) = A158662 (n + 1)

end A158662

/-! ## A158662.P18143769238856185485

`∑[C(A072505(n+1), n)]`
-/

namespace A158662.P18143769238856185485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072505 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P18143769238856185485

namespace A158662

/-- `∑[C(A072505(n+1), n)]` -/
def P18143769238856185485.Spec : Prop :=
  ∀ n, (P18143769238856185485.a n : ℤ) = A158662 (n + 1)

end A158662

/-! ## A158662.P17349474068147717929

`∑[C(A089026(n+1), n)]`
-/

namespace A158662.P17349474068147717929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089026 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P17349474068147717929

namespace A158662

/-- `∑[C(A089026(n+1), n)]` -/
def P17349474068147717929.Spec : Prop :=
  ∀ n, (P17349474068147717929.a n : ℤ) = A158662 (n + 1)

end A158662

/-! ## A158662.P5354273090133306494

`∑[n+1]-A101256(n+1)`
-/

namespace A158662.P5354273090133306494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A101256 (n + 1)

end

end A158662.P5354273090133306494

namespace A158662

/-- `∑[n+1]-A101256(n+1)` -/
def P5354273090133306494.Spec : Prop :=
  ∀ n, P5354273090133306494.a n = A158662 (n + 1)

end A158662

/-! ## A158662.P16733906148007146257

`∑[(n+1)*A080339(n+1)]`
-/

namespace A158662.P16733906148007146257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P16733906148007146257

namespace A158662

/-- `∑[(n+1)*A080339(n+1)]` -/
def P16733906148007146257.Spec : Prop :=
  ∀ n, P16733906148007146257.a n = A158662 (n + 1)

end A158662

/-! ## A158662.P1788320310759689731

`A301707(n+1)/(n+1)+1`
-/

namespace A158662.P1788320310759689731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301707 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A158662.P1788320310759689731

namespace A158662

/-- `A301707(n+1)/(n+1)+1` -/
def P1788320310759689731.Spec : Prop :=
  ∀ n, P1788320310759689731.a n = (A158662 (n + 1) : ℚ)

end A158662

/-! ## A158662.P6105031443308618031

`∑[(n+1)*A267133(n+1)²]`
-/

namespace A158662.P6105031443308618031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A267133 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158662.P6105031443308618031

namespace A158662

/-- `∑[(n+1)*A267133(n+1)²]` -/
def P6105031443308618031.Spec : Prop :=
  ∀ n, P6105031443308618031.a n = A158662 (n + 1)

end A158662

/-!
# A158665: a(n) = 841*n^2 + 29.

The programs for A158665, the canonical program `A158665.P577405801666762688` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158665 has offset 0).

The definition of A158665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `841*n²+29` (program `A158665.P577405801666762688`, by `A158665.P577405801666762688.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158665.P577405801666762688

`841*n²+29`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158665

/-- `841*n²+29` -/
def P577405801666762688.Spec : Prop :=
  ∀ n, (P577405801666762688.a n : ℤ) = A158665 n

theorem P577405801666762688.correct : P577405801666762688.Spec := by
  intro n
  simp only [A158665]

end A158665

/-! ## A158665.P13871156134923124373

`lcm(29, n*29*n+1)`
-/

namespace A158665.P13871156134923124373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 29 (n * (29 * n) + 1)

end

end A158665.P13871156134923124373

namespace A158665

/-- `lcm(29, n*29*n+1)` -/
def P13871156134923124373.Spec : Prop :=
  ∀ n, (P13871156134923124373.a n : ℤ) = A158665 n

end A158665

/-! ## A158665.P10791240573063753949

`29*(29*A000290(n)+1)`
-/

namespace A158665.P10791240573063753949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  29 * (29 * A000290 n + 1)

end

end A158665.P10791240573063753949

namespace A158665

/-- `29*(29*A000290(n)+1)` -/
def P10791240573063753949.Spec : Prop :=
  ∀ n, P10791240573063753949.a n = A158665 n

end A158665

/-! ## A158665.P13743560008168274907

`29*(A158666(n)-29*n²)`
-/

namespace A158665.P13743560008168274907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  29 * (A158666 n - (29 * n ^ 2 : ℤ))

end

end A158665.P13743560008168274907

namespace A158665

/-- `29*(A158666(n)-29*n²)` -/
def P13743560008168274907.Spec : Prop :=
  ∀ n, P13743560008168274907.a n = A158665 n

end A158665

/-! ## A158665.P10377405609776057328

`(A133496(n)+29)%A158401(n+1)`
-/

namespace A158665.P10377405609776057328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133496 n + 29) (A158401 (n + 1))

end

end A158665.P10377405609776057328

namespace A158665

/-- `(A133496(n)+29)%A158401(n+1)` -/
def P10377405609776057328.Spec : Prop :=
  ∀ n, P10377405609776057328.a n = A158665 n

end A158665

/-! ## A158665.P3481755282703691527

`29*A248572(n²)`
-/

namespace A158665.P3481755282703691527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  29 * A248572 (n ^ 2)

end

end A158665.P3481755282703691527

namespace A158665

/-- `29*A248572(n²)` -/
def P3481755282703691527.Spec : Prop :=
  ∀ n, P3481755282703691527.a n = A158665 n

end A158665

/-!
# A158666: a(n) = 58*n^2 + 1.

The programs for A158666, the canonical program `A158666.P4882796267492486870` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158666 has offset 0).

The definition of A158666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `58*n²+1` (program `A158666.P4882796267492486870`, by `A158666.P4882796267492486870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158666.P4882796267492486870

`58*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158666

/-- `58*n²+1` -/
def P4882796267492486870.Spec : Prop :=
  ∀ n, (P4882796267492486870.a n : ℤ) = A158666 n

theorem P4882796267492486870.correct : P4882796267492486870.Spec := by
  intro n
  simp only [A158666]

end A158666

/-! ## A158666.P16242865064173531605

`or(1, 58*n²)`
-/

namespace A158666.P16242865064173531605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (58 * n ^ 2)

end

end A158666.P16242865064173531605

namespace A158666

/-- `or(1, 58*n²)` -/
def P16242865064173531605.Spec : Prop :=
  ∀ n, (P16242865064173531605.a n : ℤ) = A158666 n

end A158666

/-! ## A158666.P1932521033250272807

`xor(1, 58*n²)`
-/

namespace A158666.P1932521033250272807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (58 * n ^ 2)

end

end A158666.P1932521033250272807

namespace A158666

/-- `xor(1, 58*n²)` -/
def P1932521033250272807.Spec : Prop :=
  ∀ n, (P1932521033250272807.a n : ℤ) = A158666 n

end A158666

/-! ## A158666.P9524709184542953488

`abs(2*n²-A158673(n))`
-/

namespace A158666.P9524709184542953488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n ^ 2 : ℤ) - A158673 n|

end

end A158666.P9524709184542953488

namespace A158666

/-- `abs(2*n²-A158673(n))` -/
def P9524709184542953488.Spec : Prop :=
  ∀ n, P9524709184542953488.a n = A158666 n

end A158666

/-! ## A158666.P13615160122821957291

`abs(8*n²-A158689(n))`
-/

namespace A158666.P13615160122821957291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n ^ 2 : ℤ) - A158689 n|

end

end A158666.P13615160122821957291

namespace A158666

/-- `abs(8*n²-A158689(n))` -/
def P13615160122821957291.Spec : Prop :=
  ∀ n, P13615160122821957291.a n = A158666 n

end A158666

/-! ## A158666.P2044647521760558919

`abs(A033581(n)-A158686(n))`
-/

namespace A158666.P2044647521760558919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033581 n - A158686 n|

end

end A158666.P2044647521760558919

namespace A158666

/-- `abs(A033581(n)-A158686(n))` -/
def P2044647521760558919.Spec : Prop :=
  ∀ n, P2044647521760558919.a n = A158666 n

end A158666

/-! ## A158666.P2767654170929917691

`abs(A022287(2*n)-(n-1))`
-/

namespace A158666.P2767654170929917691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022287 (2 * n) - ((n : ℤ) - 1)|

end

end A158666.P2767654170929917691

namespace A158666

/-- `abs(A022287(2*n)-(n-1))` -/
def P2767654170929917691.Spec : Prop :=
  ∀ n, P2767654170929917691.a n = A158666 n

end A158666

/-! ## A158666.P13164775407834921755

`A010019(2*n)/(A060576(n+1)+1)`
-/

namespace A158666.P13164775407834921755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010019 (2 * n) : ℚ) / (A060576 (n + 1) + 1 : ℚ)

end

end A158666.P13164775407834921755

namespace A158666

/-- `A010019(2*n)/(A060576(n+1)+1)` -/
def P13164775407834921755.Spec : Prop :=
  ∀ n, P13164775407834921755.a n = (A158666 n : ℚ)

end A158666

/-! ## A158666.P123787530593142298

`∑{d}[A008578(n+2), A244635(n)-A007427(#)]`
-/

namespace A158666.P123787530593142298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A244635 n - A007427 d)

end

end A158666.P123787530593142298

namespace A158666

/-- `∑{d}[A008578(n+2), A244635(n)-A007427(#)]` -/
def P123787530593142298.Spec : Prop :=
  ∀ n, P123787530593142298.a n = A158666 n

end A158666

/-! ## A158666.P14189954292157118050

`∑[record[A009531(29*(n+1))]]`
-/

namespace A158666.P14189954292157118050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (29 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158666.P14189954292157118050

namespace A158666

/-- `∑[record[A009531(29*(n+1))]]` -/
def P14189954292157118050.Spec : Prop :=
  ∀ n, P14189954292157118050.a n = A158666 n

end A158666

/-!
# A158667: a(n) = 841*n^2 - 29.

The programs for A158667, the canonical program `A158667.P10393758315377399908` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158667 has offset 1).

The definition of A158667 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `841*(n+1)²-29` (program `A158667.P10393758315377399908`, by `A158667.P10393758315377399908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158667.P10393758315377399908

`841*(n+1)²-29`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158667

/-- `841*(n+1)²-29` -/
def P10393758315377399908.Spec : Prop :=
  ∀ n, P10393758315377399908.a n = A158667 (n + 1)

theorem P10393758315377399908.correct : P10393758315377399908.Spec := by
  intro n
  simp only [A158667, Nat.add_sub_cancel]

end A158667

/-! ## A158667.P7227170125927112963

`record[(29*(1-n))²-29]`
-/

namespace A158667.P7227170125927112963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * (1 - (n : ℤ))) ^ 2 - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158667.P7227170125927112963

namespace A158667

/-- `record[(29*(1-n))²-29]` -/
def P7227170125927112963.Spec : Prop :=
  ∀ n, P7227170125927112963.a n = A158667 (n + 1)

end A158667

/-! ## A158667.P3832893476233075054

`29*(29*A000290(n+1)-1)`
-/

namespace A158667.P3832893476233075054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  29 * (29 * A000290 (n + 1) - 1)

end

end A158667.P3832893476233075054

namespace A158667

/-- `29*(29*A000290(n+1)-1)` -/
def P3832893476233075054.Spec : Prop :=
  ∀ n, P3832893476233075054.a n = A158667 (n + 1)

end A158667

/-! ## A158667.P5009431050127623286

`abs(29-A133496(n+1))`
-/

namespace A158667.P5009431050127623286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |29 - A133496 (n + 1)|

end

end A158667.P5009431050127623286

namespace A158667

/-- `abs(29-A133496(n+1))` -/
def P5009431050127623286.Spec : Prop :=
  ∀ n, P5009431050127623286.a n = A158667 (n + 1)

end A158667

/-! ## A158667.P10827554155816689259

`Δ[∑[A195819(n)²]-A195819(n)]`
-/

namespace A158667.P10827554155816689259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195819 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A195819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158667.P10827554155816689259

namespace A158667

/-- `Δ[∑[A195819(n)²]-A195819(n)]` -/
def P10827554155816689259.Spec : Prop :=
  ∀ n, P10827554155816689259.a n = A158667 (n + 1)

end A158667

/-!
# A158668: a(n) = 58*n^2 - 1.

The programs for A158668, the canonical program `A158668.P9781776998810756519` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158668 has offset 1).

The definition of A158668 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `58*(n+1)²-1` (program `A158668.P9781776998810756519`, by `A158668.P9781776998810756519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158668.P9781776998810756519

`58*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158668

/-- `58*(n+1)²-1` -/
def P9781776998810756519.Spec : Prop :=
  ∀ n, P9781776998810756519.a n = A158668 (n + 1)

theorem P9781776998810756519.correct : P9781776998810756519.Spec := by
  intro n
  simp only [A158668, Nat.add_sub_cancel]

end A158668

/-! ## A158668.P6790328829785686259

`abs(2-A158666(n+1))`
-/

namespace A158668.P6790328829785686259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158666 (n + 1)|

end

end A158668.P6790328829785686259

namespace A158668

/-- `abs(2-A158666(n+1))` -/
def P6790328829785686259.Spec : Prop :=
  ∀ n, P6790328829785686259.a n = A158668 (n + 1)

end A158668

/-! ## A158668.P3509839694665324233

`record[A158666(abs(1-n))-2]`
-/

namespace A158668.P3509839694665324233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158666 |1 - (n : ℤ)|.toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158668.P3509839694665324233

namespace A158668

/-- `record[A158666(abs(1-n))-2]` -/
def P3509839694665324233.Spec : Prop :=
  ∀ n, P3509839694665324233.a n = A158668 (n + 1)

end A158668

/-! ## A158668.P2954440048165396890

`(A158670(n+1)+A158658(n+1))/2`
-/

namespace A158668.P2954440048165396890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158670 (n + 1) + A158658 (n + 1) : ℚ) / 2

end

end A158668.P2954440048165396890

namespace A158668

/-- `(A158670(n+1)+A158658(n+1))/2` -/
def P2954440048165396890.Spec : Prop :=
  ∀ n, P2954440048165396890.a n = (A158668 (n + 1) : ℚ)

end A158668

/-! ## A158668.P1860430679310121062

`(2*A158670(n+1))%A158680(n+1)`
-/

namespace A158668.P1860430679310121062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A158670 (n + 1)) (A158680 (n + 1))

end

end A158668.P1860430679310121062

namespace A158668

/-- `(2*A158670(n+1))%A158680(n+1)` -/
def P1860430679310121062.Spec : Prop :=
  ∀ n, P1860430679310121062.a n = A158668 (n + 1)

end A158668

/-!
# A158669: a(n) = 900*n^2 - 30.

The programs for A158669, the canonical program `A158669.P12155324503272335770` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158669 has offset 1).

The definition of A158669 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `900*(n+1)²-30` (program `A158669.P12155324503272335770`, by `A158669.P12155324503272335770.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158669.P12155324503272335770

`900*(n+1)²-30`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158669

/-- `900*(n+1)²-30` -/
def P12155324503272335770.Spec : Prop :=
  ∀ n, P12155324503272335770.a n = A158669 (n + 1)

theorem P12155324503272335770.correct : P12155324503272335770.Spec := by
  intro n
  simp only [A158669, Nat.add_sub_cancel]

end A158669

/-! ## A158669.P12034192547250256344

`30*A158560(n+1)`
-/

namespace A158669.P12034192547250256344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A158560 (n + 1)

end

end A158669.P12034192547250256344

namespace A158669

/-- `30*A158560(n+1)` -/
def P12034192547250256344.Spec : Prop :=
  ∀ n, P12034192547250256344.a n = A158669 (n + 1)

end A158669

/-! ## A158669.P4881157409360766965

`5*(5*A136017(n+1)-1)`
-/

namespace A158669.P4881157409360766965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * A136017 (n + 1) - 1)

end

end A158669.P4881157409360766965

namespace A158669

/-- `5*(5*A136017(n+1)-1)` -/
def P4881157409360766965.Spec : Prop :=
  ∀ n, P4881157409360766965.a n = A158669 (n + 1)

end A158669

/-! ## A158669.P1195792064355935225

`6*(3*A157919(n+1)-2)`
-/

namespace A158669.P1195792064355935225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (3 * A157919 (n + 1) - 2)

end

end A158669.P1195792064355935225

namespace A158669

/-- `6*(3*A157919(n+1)-2)` -/
def P1195792064355935225.Spec : Prop :=
  ∀ n, P1195792064355935225.a n = A158669 (n + 1)

end A158669

/-! ## A158669.P912188632412773700

`30*(30*A000290(n+1)-1)`
-/

namespace A158669.P912188632412773700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * (30 * A000290 (n + 1) - 1)

end

end A158669.P912188632412773700

namespace A158669

/-- `30*(30*A000290(n+1)-1)` -/
def P912188632412773700.Spec : Prop :=
  ∀ n, P912188632412773700.a n = A158669 (n + 1)

end A158669

/-! ## A158669.P4220764582228674487

`15*(15*A016742(n+1)-2)`
-/

namespace A158669.P4220764582228674487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * (15 * A016742 (n + 1) - 2)

end

end A158669.P4220764582228674487

namespace A158669

/-- `15*(15*A016742(n+1)-2)` -/
def P4220764582228674487.Spec : Prop :=
  ∀ n, P4220764582228674487.a n = A158669 (n + 1)

end A158669

/-! ## A158669.P3825158319978218893

`2*(A001105(15*(n+1))-15)`
-/

namespace A158669.P3825158319978218893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001105 (15 * (n + 1)) - 15)

end

end A158669.P3825158319978218893

namespace A158669

/-- `2*(A001105(15*(n+1))-15)` -/
def P3825158319978218893.Spec : Prop :=
  ∀ n, P3825158319978218893.a n = A158669 (n + 1)

end A158669

/-!
# A158670: a(n) = 60*n^2 - 1.

The programs for A158670, the canonical program `A158670.P4152530240524237060` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158670 has offset 1).

The definition of A158670 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `60*(n+1)²-1` (program `A158670.P4152530240524237060`, by `A158670.P4152530240524237060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158670.P4152530240524237060

`60*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158670

/-- `60*(n+1)²-1` -/
def P4152530240524237060.Spec : Prop :=
  ∀ n, P4152530240524237060.a n = A158670 (n + 1)

theorem P4152530240524237060.correct : P4152530240524237060.Spec := by
  intro n
  simp only [A158670, Nat.add_sub_cancel]

end A158670

/-! ## A158670.P8848378040647677632

`abs(2-A158673(n+1))`
-/

namespace A158670.P8848378040647677632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158673 (n + 1)|

end

end A158670.P8848378040647677632

namespace A158670

/-- `abs(2-A158673(n+1))` -/
def P8848378040647677632.Spec : Prop :=
  ∀ n, P8848378040647677632.a n = A158670 (n + 1)

end A158670

/-! ## A158670.P13440246700998628804

`ceil(3/2*A158598(n+1))`
-/

namespace A158670.P13440246700998628804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 2 * (A158598 (n + 1) : ℚ)⌉

end

end A158670.P13440246700998628804

namespace A158670

/-- `ceil(3/2*A158598(n+1))` -/
def P13440246700998628804.Spec : Prop :=
  ∀ n, P13440246700998628804.a n = A158670 (n + 1)

end A158670

/-! ## A158670.P15663428489869480270

`abs(1-15*∑[A004770(n+1)-1])`
-/

namespace A158670.P15663428489869480270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 15 * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A158670.P15663428489869480270

namespace A158670

/-- `abs(1-15*∑[A004770(n+1)-1])` -/
def P15663428489869480270.Spec : Prop :=
  ∀ n, P15663428489869480270.a n = A158670 (n + 1)

end A158670

/-! ## A158670.P3179428774292542433

`abs(2*10*(A056106(n+1)+n)-1)`
-/

namespace A158670.P3179428774292542433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (10 * (A056106 (n + 1) + (n : ℤ))) - 1|

end

end A158670.P3179428774292542433

namespace A158670

/-- `abs(2*10*(A056106(n+1)+n)-1)` -/
def P3179428774292542433.Spec : Prop :=
  ∀ n, P3179428774292542433.a n = A158670 (n + 1)

end A158670

/-! ## A158670.P1539716125186652275

`or(A158673(n+1)-3, char[A004442(n)])`
-/

namespace A158670.P1539716125186652275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158673 (n + 1) - 3) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A158670.P1539716125186652275

namespace A158670

/-- `or(A158673(n+1)-3, char[A004442(n)])` -/
def P1539716125186652275.Spec : Prop :=
  ∀ n, P1539716125186652275.a n = A158670 (n + 1)

end A158670

/-! ## A158670.P17321760758263385206

`(A158680(n+1)+A158668(n+1))/2`
-/

namespace A158670.P17321760758263385206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158680 (n + 1) + A158668 (n + 1) : ℚ) / 2

end

end A158670.P17321760758263385206

namespace A158670

/-- `(A158680(n+1)+A158668(n+1))/2` -/
def P17321760758263385206.Spec : Prop :=
  ∀ n, P17321760758263385206.a n = (A158670 (n + 1) : ℚ)

end A158670

/-! ## A158670.P5146761901910392693

`Δ[A063497(n)-n]`
-/

namespace A158670.P5146761901910392693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063497 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158670.P5146761901910392693

namespace A158670

/-- `Δ[A063497(n)-n]` -/
def P5146761901910392693.Spec : Prop :=
  ∀ n, P5146761901910392693.a n = A158670 (n + 1)

end A158670

/-! ## A158670.P6785402080709878796

`Δ[A160674(n)-3*n]`
-/

namespace A158670.P6785402080709878796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160674 n - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158670.P6785402080709878796

namespace A158670

/-- `Δ[A160674(n)-3*n]` -/
def P6785402080709878796.Spec : Prop :=
  ∀ n, P6785402080709878796.a n = A158670 (n + 1)

end A158670

/-! ## A158670.P8945223937556781841

`Δ[∑[60*A000290(n)+1]-2*n]`
-/

namespace A158670.P8945223937556781841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A000290 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158670.P8945223937556781841

namespace A158670

/-- `Δ[∑[60*A000290(n)+1]-2*n]` -/
def P8945223937556781841.Spec : Prop :=
  ∀ n, P8945223937556781841.a n = A158670 (n + 1)

end A158670

/-! ## A158670.P1617355774039373237

`or(A158673(n+1)-3, A158388(n+1))`
-/

namespace A158670.P1617355774039373237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158673 (n + 1) - 3) (A158388 (n + 1))

end

end A158670.P1617355774039373237

namespace A158670

/-- `or(A158673(n+1)-3, A158388(n+1))` -/
def P1617355774039373237.Spec : Prop :=
  ∀ n, P1617355774039373237.a n = A158670 (n + 1)

end A158670

/-! ## A158670.P7146803724071524728

`Δ[A063522(2*n+1)-3*n]`
-/

namespace A158670.P7146803724071524728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (2 * n + 1) - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158670.P7146803724071524728

namespace A158670

/-- `Δ[A063522(2*n+1)-3*n]` -/
def P7146803724071524728.Spec : Prop :=
  ∀ n, P7146803724071524728.a n = A158670 (n + 1)

end A158670

/-! ## A158670.P15432172660386506898

`A369611(A169823(n+1))`
-/

namespace A158670.P15432172660386506898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369611 (A169823 (n + 1)).toNat

end

end A158670.P15432172660386506898

namespace A158670

/-- `A369611(A169823(n+1))` -/
def P15432172660386506898.Spec : Prop :=
  ∀ n, P15432172660386506898.a n = A158670 (n + 1)

end A158670

/-! ## A158670.P15683260573311434206

`floor(sqrt(A157857((n+1)²)))`
-/

namespace A158670.P15683260573311434206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A157857 ((n + 1) ^ 2))

end

end A158670.P15683260573311434206

namespace A158670

/-- `floor(sqrt(A157857((n+1)²)))` -/
def P15683260573311434206.Spec : Prop :=
  ∀ n, P15683260573311434206.a n = A158670 (n + 1)

end A158670

/-!
# A158671: Frequency of 0's in a constant bit representation of primes.

The programs for A158671, there is no canonical definition to state claims against.
-/

/-! ## A158671.P11327171002902610659

`A168157(A185192(n+2))`
-/

namespace A158671.P11327171002902610659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168157 (A185192 (n + 2)).toNat

end

end A158671.P11327171002902610659

/-! ## A158671.P9890018426330987624

`A168157(A060967(2*(n+2)))`
-/

namespace A158671.P9890018426330987624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168157 (A060967 (2 * (n + 2))).toNat

end

end A158671.P9890018426330987624

/-! ## A158671.P8613848988049391959

`A078842(n)+A005811(A014495(2*n+1))`
-/

namespace A158671.P8613848988049391959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078842 n + A005811 (A014495 (2 * n + 1)).toNat

end

end A158671.P8613848988049391959

/-!
# A158672: a(n) = 900*n^2 + 30.

The programs for A158672, the canonical program `A158672.P12451582149623613852` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158672 has offset 0).

The definition of A158672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `900*n²+30` (program `A158672.P12451582149623613852`, by `A158672.P12451582149623613852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158672.P12451582149623613852

`900*n²+30`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158672

/-- `900*n²+30` -/
def P12451582149623613852.Spec : Prop :=
  ∀ n, (P12451582149623613852.a n : ℤ) = A158672 n

theorem P12451582149623613852.correct : P12451582149623613852.Spec := by
  intro n
  simp only [A158672]

end A158672

/-! ## A158672.P9756215261268783608

`30*A158558(n)`
-/

namespace A158672.P9756215261268783608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A158558 n

end

end A158672.P9756215261268783608

namespace A158672

/-- `30*A158558(n)` -/
def P9756215261268783608.Spec : Prop :=
  ∀ n, P9756215261268783608.a n = A158672 n

end A158672

/-! ## A158672.P14061476608032297240

`30*or(1, 30*n²)`
-/

namespace A158672.P14061476608032297240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * Nat.lor 1 (30 * n ^ 2)

end

end A158672.P14061476608032297240

namespace A158672

/-- `30*or(1, 30*n²)` -/
def P14061476608032297240.Spec : Prop :=
  ∀ n, (P14061476608032297240.a n : ℤ) = A158672 n

end A158672

/-! ## A158672.P11611814266640530933

`30*xor(1, 30*n²)`
-/

namespace A158672.P11611814266640530933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * Nat.xor 1 (30 * n ^ 2)

end

end A158672.P11611814266640530933

namespace A158672

/-- `30*xor(1, 30*n²)` -/
def P11611814266640530933.Spec : Prop :=
  ∀ n, (P11611814266640530933.a n : ℤ) = A158672 n

end A158672

/-! ## A158672.P17552423968138868615

`30*(30*A000290(n)+1)`
-/

namespace A158672.P17552423968138868615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * (30 * A000290 n + 1)

end

end A158672.P17552423968138868615

namespace A158672

/-- `30*(30*A000290(n)+1)` -/
def P17552423968138868615.Spec : Prop :=
  ∀ n, P17552423968138868615.a n = A158672 n

end A158672

/-! ## A158672.P1087640763276980232

`A114964(30*n)`
-/

namespace A158672.P1087640763276980232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114964 (30 * n)

end

end A158672.P1087640763276980232

namespace A158672

/-- `A114964(30*n)` -/
def P1087640763276980232.Spec : Prop :=
  ∀ n, P1087640763276980232.a n = A158672 n

end A158672

/-!
# A158673: a(n) = 60*n^2 + 1.

The programs for A158673, the canonical program `A158673.P11583470406906896367` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158673 has offset 0).

The definition of A158673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `60*n²+1` (program `A158673.P11583470406906896367`, by `A158673.P11583470406906896367.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158673.P11583470406906896367

`60*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158673

/-- `60*n²+1` -/
def P11583470406906896367.Spec : Prop :=
  ∀ n, (P11583470406906896367.a n : ℤ) = A158673 n

theorem P11583470406906896367.correct : P11583470406906896367.Spec := by
  intro n
  simp only [A158673]

end A158673

/-! ## A158673.P3295836054688058387

`xor(1, 60*n²)`
-/

namespace A158673.P3295836054688058387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (60 * n ^ 2)

end

end A158673.P3295836054688058387

namespace A158673

/-- `xor(1, 60*n²)` -/
def P3295836054688058387.Spec : Prop :=
  ∀ n, (P3295836054688058387.a n : ℤ) = A158673 n

end A158673

/-! ## A158673.P15639833379982395889

`or(1, 6*n*10*n)`
-/

namespace A158673.P15639833379982395889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * n * (10 * n))

end

end A158673.P15639833379982395889

namespace A158673

/-- `or(1, 6*n*10*n)` -/
def P15639833379982395889.Spec : Prop :=
  ∀ n, (P15639833379982395889.a n : ℤ) = A158673 n

end A158673

/-! ## A158673.P12340299390048925506

`A272126(n)/Δ[n²]`
-/

namespace A158673.P12340299390048925506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272126 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A158673.P12340299390048925506

namespace A158673

/-- `A272126(n)/Δ[n²]` -/
def P12340299390048925506.Spec : Prop :=
  ∀ n, P12340299390048925506.a n = (A158673 n : ℚ)

end A158673

/-! ## A158673.P8088927568956934684

`floor(3/2*A158602(n))`
-/

namespace A158673.P8088927568956934684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A158602 n : ℚ)⌋

end

end A158673.P8088927568956934684

namespace A158673

/-- `floor(3/2*A158602(n))` -/
def P8088927568956934684.Spec : Prop :=
  ∀ n, P8088927568956934684.a n = A158673 n

end A158673

/-! ## A158673.P5778788116519573422

`abs(2*n²-A158676(n))`
-/

namespace A158673.P5778788116519573422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n ^ 2 : ℤ) - A158676 n|

end

end A158673.P5778788116519573422

namespace A158673

/-- `abs(2*n²-A158676(n))` -/
def P5778788116519573422.Spec : Prop :=
  ∀ n, P5778788116519573422.a n = A158673 n

end A158673

/-! ## A158673.P6308807476338674647

`(60*A000290(n)+1)%∑[A001567(n+1)]`
-/

namespace A158673.P6308807476338674647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (60 * A000290 n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158673.P6308807476338674647

namespace A158673

/-- `(60*A000290(n)+1)%∑[A001567(n+1)]` -/
def P6308807476338674647.Spec : Prop :=
  ∀ n, P6308807476338674647.a n = A158673 n

end A158673

/-! ## A158673.P11332635956886205535

`(60*A000290(n)+1)*floor(atan(A053669(n+1)))`
-/

namespace A158673.P11332635956886205535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (60 * A000290 n + 1) * ⌊Real.arctan (A053669 (n + 1) : ℝ)⌋

end

end A158673.P11332635956886205535

namespace A158673

/-- `(60*A000290(n)+1)*floor(atan(A053669(n+1)))` -/
def P11332635956886205535.Spec : Prop :=
  ∀ n, P11332635956886205535.a n = A158673 n

end A158673

/-! ## A158673.P7922690611422856644

`(60*A000290(n)+1)*floor(atan(A080194(n+1)))`
-/

namespace A158673.P7922690611422856644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (60 * A000290 n + 1) * ⌊Real.arctan (A080194 (n + 1) : ℝ)⌋

end

end A158673.P7922690611422856644

namespace A158673

/-- `(60*A000290(n)+1)*floor(atan(A080194(n+1)))` -/
def P7922690611422856644.Spec : Prop :=
  ∀ n, P7922690611422856644.a n = A158673 n

end A158673

/-! ## A158673.P3316054716903871294

`(60*A000290(n)+1)^∑{e}[A006530(2*n+1), #]`
-/

namespace A158673.P3316054716903871294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (60 * A000290 n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A158673.P3316054716903871294

namespace A158673

/-- `(60*A000290(n)+1)^∑{e}[A006530(2*n+1), #]` -/
def P3316054716903871294.Spec : Prop :=
  ∀ n, P3316054716903871294.a n = A158673 n

end A158673

/-! ## A158673.P6480971639810223601

`(60*A000290(n)+1)^floor(atan(A000537(n+1)))`
-/

namespace A158673.P6480971639810223601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (60 * A000290 n + 1 : ℚ) ^ (⌊Real.arctan (A000537 (n + 1) : ℝ)⌋ : ℤ)

end

end A158673.P6480971639810223601

namespace A158673

/-- `(60*A000290(n)+1)^floor(atan(A000537(n+1)))` -/
def P6480971639810223601.Spec : Prop :=
  ∀ n, P6480971639810223601.a n = (A158673 n : ℚ)

end A158673

/-! ## A158673.P4079171480699079952

`ceil(A158558(2*n)/2)`
-/

namespace A158673.P4079171480699079952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158558 (2 * n) : ℚ) / 2⌉

end

end A158673.P4079171480699079952

namespace A158673

/-- `ceil(A158558(2*n)/2)` -/
def P4079171480699079952.Spec : Prop :=
  ∀ n, P4079171480699079952.a n = A158673 n

end A158673

/-! ## A158673.P1687675672826997570

`record[A147792(n)-A005563(n)]`
-/

namespace A158673.P1687675672826997570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147792 n - A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158673.P1687675672826997570

namespace A158673

/-- `record[A147792(n)-A005563(n)]` -/
def P1687675672826997570.Spec : Prop :=
  ∀ n, P1687675672826997570.a n = A158673 n

end A158673

/-! ## A158673.P2755295578975296508

`record[A147792(n)-A142705(n+1)]`
-/

namespace A158673.P2755295578975296508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147792 n - A142705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158673.P2755295578975296508

namespace A158673

/-- `record[A147792(n)-A142705(n+1)]` -/
def P2755295578975296508.Spec : Prop :=
  ∀ n, P2755295578975296508.a n = A158673 n

end A158673

/-! ## A158673.P5392732916452913711

`A370649(2*n+1)/(2*n+1)`
-/

namespace A158673.P5392732916452913711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370649 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A158673.P5392732916452913711

namespace A158673

/-- `A370649(2*n+1)/(2*n+1)` -/
def P5392732916452913711.Spec : Prop :=
  ∀ n, P5392732916452913711.a n = (A158673 n : ℚ)

end A158673

/-! ## A158673.P8664513628598358562

`record[or(A033999(n), A064761(n))]`
-/

namespace A158673.P8664513628598358562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033999 n) (A064761 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158673.P8664513628598358562

namespace A158673

/-- `record[or(A033999(n), A064761(n))]` -/
def P8664513628598358562.Spec : Prop :=
  ∀ n, P8664513628598358562.a n = A158673 n

end A158673

/-!
# A158674: Period 18: repeat [3, 4, 0, 8, 6, 3, 3, 7, 0, 2, 6, 6, 3, 1, 0, 5, 6, 0].

The programs for A158674, the canonical program `A158674.P9214820448625437989` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158674 has offset 1).

The definition of A158674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158674.P9214820448625437989

`∑[Δ[lcm(2, n)]+1]%9`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158674

/-- `∑[Δ[lcm(2, n)]+1]%9` -/
def P9214820448625437989.Spec : Prop :=
  ∀ n, P9214820448625437989.a n = A158674 (n + 1)

theorem P9214820448625437989.correct : P9214820448625437989.Spec := by
  intro n
  simp only [A158674, Nat.add_sub_cancel]

end A158674

/-!
# A158675: a(n) = 961*n^2 + 31.

The programs for A158675, the canonical program `A158675.P18099399443256014283` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158675 has offset 0).

The definition of A158675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `961*n²+31` (program `A158675.P18099399443256014283`, by `A158675.P18099399443256014283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158675.P18099399443256014283

`961*n²+31`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158675

/-- `961*n²+31` -/
def P18099399443256014283.Spec : Prop :=
  ∀ n, (P18099399443256014283.a n : ℤ) = A158675 n

theorem P18099399443256014283.correct : P18099399443256014283.Spec := by
  intro n
  simp only [A158675]

end A158675

/-! ## A158675.P5683423069214485261

`31*A247155(n)`
-/

namespace A158675.P5683423069214485261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * A247155 n

end

end A158675.P5683423069214485261

namespace A158675

/-- `31*A247155(n)` -/
def P5683423069214485261.Spec : Prop :=
  ∀ n, P5683423069214485261.a n = A158675 n

end A158675

/-! ## A158675.P14774886350106417469

`lcm(31, 31*n*n+1)`
-/

namespace A158675.P14774886350106417469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 31 (31 * (n * n) + 1)

end

end A158675.P14774886350106417469

namespace A158675

/-- `lcm(31, 31*n*n+1)` -/
def P14774886350106417469.Spec : Prop :=
  ∀ n, (P14774886350106417469.a n : ℤ) = A158675 n

end A158675

/-! ## A158675.P7214158176818507257

`31*ceil(A158676(n)/2)`
-/

namespace A158675.P7214158176818507257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * ⌈(A158676 n : ℚ) / 2⌉

end

end A158675.P7214158176818507257

namespace A158675

/-- `31*ceil(A158676(n)/2)` -/
def P7214158176818507257.Spec : Prop :=
  ∀ n, P7214158176818507257.a n = A158675 n

end A158675

/-! ## A158675.P116843010214568560

`31*(31*A000290(n)+1)`
-/

namespace A158675.P116843010214568560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * (31 * A000290 n + 1)

end

end A158675.P116843010214568560

namespace A158675

/-- `31*(31*A000290(n)+1)` -/
def P116843010214568560.Spec : Prop :=
  ∀ n, P116843010214568560.a n = A158675 n

end A158675

/-! ## A158675.P10446130753069144995

`31*record[A135631(A214859(n))+1]`
-/

namespace A158675.P10446130753069144995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 (A214859 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158675.P10446130753069144995

namespace A158675

/-- `31*record[A135631(A214859(n))+1]` -/
def P10446130753069144995.Spec : Prop :=
  ∀ n, P10446130753069144995.a n = A158675 n

end A158675

/-!
# A158676: a(n) = 62*n^2 + 1.

The programs for A158676, the canonical program `A158676.P4693470668876274140` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158676 has offset 0).

The definition of A158676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `62*n²+1` (program `A158676.P4693470668876274140`, by `A158676.P4693470668876274140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158676.P4693470668876274140

`62*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158676

/-- `62*n²+1` -/
def P4693470668876274140.Spec : Prop :=
  ∀ n, (P4693470668876274140.a n : ℤ) = A158676 n

theorem P4693470668876274140.correct : P4693470668876274140.Spec := by
  intro n
  simp only [A158676]

end A158676

/-! ## A158676.P4969327696787435822

`or(1, 62*n²)`
-/

namespace A158676.P4969327696787435822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (62 * n ^ 2)

end

end A158676.P4969327696787435822

namespace A158676

/-- `or(1, 62*n²)` -/
def P4969327696787435822.Spec : Prop :=
  ∀ n, (P4969327696787435822.a n : ℤ) = A158676 n

end A158676

/-! ## A158676.P1915733922414458289

`xor(1, 62*n²)`
-/

namespace A158676.P1915733922414458289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (62 * n ^ 2)

end

end A158676.P1915733922414458289

namespace A158676

/-- `xor(1, 62*n²)` -/
def P1915733922414458289.Spec : Prop :=
  ∀ n, (P1915733922414458289.a n : ℤ) = A158676 n

end A158676

/-! ## A158676.P10659011885297949301

`lcm(n*62*n+1, (-1)^n)`
-/

namespace A158676.P10659011885297949301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n * (62 * n) + 1 : ℤ) ((-1) ^ n)

end

end A158676.P10659011885297949301

namespace A158676

/-- `lcm(n*62*n+1, (-1)^n)` -/
def P10659011885297949301.Spec : Prop :=
  ∀ n, (P10659011885297949301.a n : ℤ) = A158676 n

end A158676

/-! ## A158676.P17598928073138872054

`abs(2*n²-A158686(n))`
-/

namespace A158676.P17598928073138872054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n ^ 2 : ℤ) - A158686 n|

end

end A158676.P17598928073138872054

namespace A158676

/-- `abs(2*n²-A158686(n))` -/
def P17598928073138872054.Spec : Prop :=
  ∀ n, P17598928073138872054.a n = A158676 n

end A158676

/-! ## A158676.P11898083968303156640

`A158688(n)%(A158689(n)+A158675(n))`
-/

namespace A158676.P11898083968303156640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158688 n) (A158689 n + A158675 n)

end

end A158676.P11898083968303156640

namespace A158676

/-- `A158688(n)%(A158689(n)+A158675(n))` -/
def P11898083968303156640.Spec : Prop :=
  ∀ n, P11898083968303156640.a n = A158676 n

end A158676

/-! ## A158676.P2687784018285091941

`∑[record[A009531(A314244(n))]]`
-/

namespace A158676.P2687784018285091941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A314244 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158676.P2687784018285091941

namespace A158676

/-- `∑[record[A009531(A314244(n))]]` -/
def P2687784018285091941.Spec : Prop :=
  ∀ n, P2687784018285091941.a n = A158676 n

end A158676

/-!
# A158677: Period 6: repeat [3, 4, 0, 5, 6, 3].

The programs for A158677, the canonical program `A158677.P8896955849155422632` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158677 has offset 1).

The definition of A158677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158677.P8896955849155422632

`a(n-6)` with `a(0)=3, a(1)=4, a(2)=0, a(3)=5, a(4)=6, a(5)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158677

/-- `a(n-6)` -/
def P8896955849155422632.Spec : Prop :=
  ∀ n, (P8896955849155422632.a n : ℤ) = A158677 (n + 1)

theorem P8896955849155422632.correct : P8896955849155422632.Spec := by
  intro n
  simp only [A158677, Nat.add_sub_cancel]

end A158677

/-!
# A158678: Period 18: repeat [0, 0, 0, 3, 0, 0, 0, 3, 0, -3, 0, 3, 0, -3, 0, 0, 0, -3].

The programs for A158678, the canonical program `A158678.P5654835132515354139` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158678 has offset 1).

The definition of A158678 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158674, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158678.P5654835132515354139

`A158674(n+1)-A158677(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158678

/-- `A158674(n+1)-A158677(n+1)` -/
def P5654835132515354139.Spec : Prop :=
  ∀ n, P5654835132515354139.a n = A158678 (n + 1)

theorem P5654835132515354139.correct : P5654835132515354139.Spec := by
  intro n
  simp only [A158678, Nat.add_sub_cancel]

end A158678

/-!
# A158679: a(n) = 961*n^2 - 31.

The programs for A158679, the canonical program `A158679.P2875510109324846083` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158679 has offset 1).

The definition of A158679 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `961*(n+1)²-31` (program `A158679.P2875510109324846083`, by `A158679.P2875510109324846083.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158679.P2875510109324846083

`961*(n+1)²-31`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158679

/-- `961*(n+1)²-31` -/
def P2875510109324846083.Spec : Prop :=
  ∀ n, P2875510109324846083.a n = A158679 (n + 1)

theorem P2875510109324846083.correct : P2875510109324846083.Spec := by
  intro n
  simp only [A158679, Nat.add_sub_cancel]

end A158679

/-! ## A158679.P3197971860010632886

`record[(31*(1-n))²-31]`
-/

namespace A158679.P3197971860010632886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * (1 - (n : ℤ))) ^ 2 - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158679.P3197971860010632886

namespace A158679

/-- `record[(31*(1-n))²-31]` -/
def P3197971860010632886.Spec : Prop :=
  ∀ n, P3197971860010632886.a n = A158679 (n + 1)

end A158679

/-! ## A158679.P17370267099634012930

`31*(31*A000290(n+1)-1)`
-/

namespace A158679.P17370267099634012930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * (31 * A000290 (n + 1) - 1)

end

end A158679.P17370267099634012930

namespace A158679

/-- `31*(31*A000290(n+1)-1)` -/
def P17370267099634012930.Spec : Prop :=
  ∀ n, P17370267099634012930.a n = A158679 (n + 1)

end A158679

/-! ## A158679.P6936937421319001458

`31*(A158560(n+1)+(n+1)²)`
-/

namespace A158679.P6936937421319001458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * (A158560 (n + 1) + ((n + 1) ^ 2 : ℤ))

end

end A158679.P6936937421319001458

namespace A158679

/-- `31*(A158560(n+1)+(n+1)²)` -/
def P6936937421319001458.Spec : Prop :=
  ∀ n, P6936937421319001458.a n = A158679 (n + 1)

end A158679

/-! ## A158679.P16663493101262604495

`abs(31-A000290(31*(n+1)))`
-/

namespace A158679.P16663493101262604495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |31 - A000290 (31 * (n + 1))|

end

end A158679.P16663493101262604495

namespace A158679

/-- `abs(31-A000290(31*(n+1)))` -/
def P16663493101262604495.Spec : Prop :=
  ∀ n, P16663493101262604495.a n = A158679 (n + 1)

end A158679

/-!
# A158680: a(n) = 62*n^2 - 1.

The programs for A158680, the canonical program `A158680.P17335874925688295304` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158680 has offset 1).

The definition of A158680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `62*(n+1)²-1` (program `A158680.P17335874925688295304`, by `A158680.P17335874925688295304.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158680.P17335874925688295304

`62*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158680

/-- `62*(n+1)²-1` -/
def P17335874925688295304.Spec : Prop :=
  ∀ n, P17335874925688295304.a n = A158680 (n + 1)

theorem P17335874925688295304.correct : P17335874925688295304.Spec := by
  intro n
  simp only [A158680, Nat.add_sub_cancel]

end A158680

/-! ## A158680.P2825725020523286482

`abs(2-A158676(n+1))`
-/

namespace A158680.P2825725020523286482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158676 (n + 1)|

end

end A158680.P2825725020523286482

namespace A158680

/-- `abs(2-A158676(n+1))` -/
def P2825725020523286482.Spec : Prop :=
  ∀ n, P2825725020523286482.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P3713620281072907028

`floor(A158676(n+1)-atan(A040872(n)))`
-/

namespace A158680.P3713620281072907028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158676 (n + 1) : ℝ) - Real.arctan (A040872 n : ℝ)⌋

end

end A158680.P3713620281072907028

namespace A158680

/-- `floor(A158676(n+1)-atan(A040872(n)))` -/
def P3713620281072907028.Spec : Prop :=
  ∀ n, P3713620281072907028.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P3336461010957596570

`or(A158676(n+1)-3, A033999(n)²)`
-/

namespace A158680.P3336461010957596570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158676 (n + 1) - 3) (A033999 n ^ 2)

end

end A158680.P3336461010957596570

namespace A158680

/-- `or(A158676(n+1)-3, A033999(n)²)` -/
def P3336461010957596570.Spec : Prop :=
  ∀ n, P3336461010957596570.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P12756409683998564700

`(A158683(n+1)-A158669(n+1))/2`
-/

namespace A158680.P12756409683998564700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158683 (n + 1) - A158669 (n + 1) : ℚ) / 2

end

end A158680.P12756409683998564700

namespace A158680

/-- `(A158683(n+1)-A158669(n+1))/2` -/
def P12756409683998564700.Spec : Prop :=
  ∀ n, P12756409683998564700.a n = (A158680 (n + 1) : ℚ)

end A158680

/-! ## A158680.P1627033778384512119

`(2*A158684(n+1))%A158693(n+1)`
-/

namespace A158680.P1627033778384512119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A158684 (n + 1)) (A158693 (n + 1))

end

end A158680.P1627033778384512119

namespace A158680

/-- `(2*A158684(n+1))%A158693(n+1)` -/
def P1627033778384512119.Spec : Prop :=
  ∀ n, P1627033778384512119.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P16874672012383133011

`floor(A158676(n+1)-atan(A147571(n+1)))`
-/

namespace A158680.P16874672012383133011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158676 (n + 1) : ℝ) - Real.arctan (A147571 (n + 1) : ℝ)⌋

end

end A158680.P16874672012383133011

namespace A158680

/-- `floor(A158676(n+1)-atan(A147571(n+1)))` -/
def P16874672012383133011.Spec : Prop :=
  ∀ n, P16874672012383133011.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P6510502787913510683

`or(A158676(n+1)-3, A000041(C(2, n+2)))`
-/

namespace A158680.P6510502787913510683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158676 (n + 1) - 3) (A000041 (Nat.choose 2 (n + 2)))

end

end A158680.P6510502787913510683

namespace A158680

/-- `or(A158676(n+1)-3, A000041(C(2, n+2)))` -/
def P6510502787913510683.Spec : Prop :=
  ∀ n, P6510502787913510683.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P4357245243538527967

`or(A158676(n+1)-3, A056040(C(2, n+2)))`
-/

namespace A158680.P4357245243538527967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158676 (n + 1) - 3) (A056040 (Nat.choose 2 (n + 2)))

end

end A158680.P4357245243538527967

namespace A158680

/-- `or(A158676(n+1)-3, A056040(C(2, n+2)))` -/
def P4357245243538527967.Spec : Prop :=
  ∀ n, P4357245243538527967.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P17759556534900637611

`or(A158676(n+1)-3, A216238(C(2, n+2)))`
-/

namespace A158680.P17759556534900637611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158676 (n + 1) - 3) (A216238 (Nat.choose 2 (n + 2)))

end

end A158680.P17759556534900637611

namespace A158680

/-- `or(A158676(n+1)-3, A216238(C(2, n+2)))` -/
def P17759556534900637611.Spec : Prop :=
  ∀ n, P17759556534900637611.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P7792134573983034032

`or(A158676(n+1)-3, A194270(A001511(n+1)))`
-/

namespace A158680.P7792134573983034032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158676 (n + 1) - 3) (A194270 (A001511 (n + 1)).toNat)

end

end A158680.P7792134573983034032

namespace A158680

/-- `or(A158676(n+1)-3, A194270(A001511(n+1)))` -/
def P7792134573983034032.Spec : Prop :=
  ∀ n, P7792134573983034032.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P2423623726276268834

`or(A158676(n+1)-3, A057427(n+1))`
-/

namespace A158680.P2423623726276268834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158676 (n + 1) - 3) (A057427 (n + 1))

end

end A158680.P2423623726276268834

namespace A158680

/-- `or(A158676(n+1)-3, A057427(n+1))` -/
def P2423623726276268834.Spec : Prop :=
  ∀ n, P2423623726276268834.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P12265775775551041340

`or(A158676(n+1)-3, A000045(A014963(2*(n+1))))`
-/

namespace A158680.P12265775775551041340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158676 (n + 1) - 3) (A000045 (A014963 (2 * (n + 1))).toNat)

end

end A158680.P12265775775551041340

namespace A158680

/-- `or(A158676(n+1)-3, A000045(A014963(2*(n+1))))` -/
def P12265775775551041340.Spec : Prop :=
  ∀ n, P12265775775551041340.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P15590881056237172455

`floor(A158676(n+1)-atan(A091507(n+3)))`
-/

namespace A158680.P15590881056237172455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158676 (n + 1) : ℝ) - Real.arctan (A091507 (n + 3) : ℝ)⌋

end

end A158680.P15590881056237172455

namespace A158680

/-- `floor(A158676(n+1)-atan(A091507(n+3)))` -/
def P15590881056237172455.Spec : Prop :=
  ∀ n, P15590881056237172455.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P14610037048415270300

`floor(A158676(n+1)-atan(A135492(n+1)))`
-/

namespace A158680.P14610037048415270300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158676 (n + 1) : ℝ) - Real.arctan (A135492 (n + 1) : ℝ)⌋

end

end A158680.P14610037048415270300

namespace A158680

/-- `floor(A158676(n+1)-atan(A135492(n+1)))` -/
def P14610037048415270300.Spec : Prop :=
  ∀ n, P14610037048415270300.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P13455346365770929708

`floor(A158676(n+1)-atan(A153643(n)))`
-/

namespace A158680.P13455346365770929708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158676 (n + 1) : ℝ) - Real.arctan (A153643 n : ℝ)⌋

end

end A158680.P13455346365770929708

namespace A158680

/-- `floor(A158676(n+1)-atan(A153643(n)))` -/
def P13455346365770929708.Spec : Prop :=
  ∀ n, P13455346365770929708.a n = A158680 (n + 1)

end A158680

/-! ## A158680.P10273563518490752759

`or(A158676(n+1)-3, A008836((n+1)²))`
-/

namespace A158680.P10273563518490752759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158676 (n + 1) - 3) (A008836 ((n + 1) ^ 2))

end

end A158680.P10273563518490752759

namespace A158680

/-- `or(A158676(n+1)-3, A008836((n+1)²))` -/
def P10273563518490752759.Spec : Prop :=
  ∀ n, P10273563518490752759.a n = A158680 (n + 1)

end A158680

/-!
# A158681: Wiener indexes of the complete binary trees with n levels, root being at level 0.

The programs for A158681, the canonical program `A158681.P2843809987849301361` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158681 has offset 1).

The definition of A158681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158681.P2843809987849301361

`(n+5)*2^(n+2)+(n-1)*2^(2*(n+1)+2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158681

/-- `(n+5)*2^(n+2)+(n-1)*2^(2*(n+1)+2)` -/
def P2843809987849301361.Spec : Prop :=
  ∀ n, P2843809987849301361.a n = A158681 (n + 1)

theorem P2843809987849301361.correct : P2843809987849301361.Spec := by
  intro n
  simp only [A158681, Nat.add_sub_cancel]

end A158681

/-! ## A158681.P9809544131905969041

`abs((A078501(n+1)-∑[n])*A186949(n+2))`
-/

namespace A158681.P9809544131905969041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A078501 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * A186949 (n + 2)|

end

end A158681.P9809544131905969041

namespace A158681

/-- `abs((A078501(n+1)-∑[n])*A186949(n+2))` -/
def P9809544131905969041.Spec : Prop :=
  ∀ n, P9809544131905969041.a n = A158681 (n + 1)

end A158681

/-! ## A158681.P7575440070306152786

`abs((2*A088578(n)+n-1)*A186949(n+2))`
-/

namespace A158681.P7575440070306152786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * A088578 n + ((n : ℤ) - 1)) * A186949 (n + 2)|

end

end A158681.P7575440070306152786

namespace A158681

/-- `abs((2*A088578(n)+n-1)*A186949(n+2))` -/
def P7575440070306152786.Spec : Prop :=
  ∀ n, P7575440070306152786.a n = A158681 (n + 1)

end A158681

/-! ## A158681.P743065553571013207

`abs((2*A181527(n)-(n+1))*A186949(n+2))`
-/

namespace A158681.P743065553571013207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * A181527 n - (n + 1 : ℤ)) * A186949 (n + 2)|

end

end A158681.P743065553571013207

namespace A158681

/-- `abs((2*A181527(n)-(n+1))*A186949(n+2))` -/
def P743065553571013207.Spec : Prop :=
  ∀ n, P743065553571013207.a n = A158681 (n + 1)

end A158681

/-! ## A158681.P9512735981256125713

`abs((A343291(n+3)-2^(n+3))*A186949(n+2))`
-/

namespace A158681.P9512735981256125713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A343291 (n + 3) - (2 ^ (n + 3) : ℤ)) * A186949 (n + 2)|

end

end A158681.P9512735981256125713

namespace A158681

/-- `abs((A343291(n+3)-2^(n+3))*A186949(n+2))` -/
def P9512735981256125713.Spec : Prop :=
  ∀ n, P9512735981256125713.a n = A158681 (n + 1)

end A158681

/-! ## A158681.P12070109001921300678

`(A048481(n+1)-(n+2))*A131577(n+4)/2`
-/

namespace A158681.P12070109001921300678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A048481 (n + 1) - (n + 2 : ℤ)) * A131577 (n + 4) : ℚ) / 2

end

end A158681.P12070109001921300678

namespace A158681

/-- `(A048481(n+1)-(n+2))*A131577(n+4)/2` -/
def P12070109001921300678.Spec : Prop :=
  ∀ n, P12070109001921300678.a n = (A158681 (n + 1) : ℚ)

end A158681

/-! ## A158681.P8500118687857464668

`(2*A088578(n)+n-1)*A131577(n+4)/2`
-/

namespace A158681.P8500118687857464668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * A088578 n + ((n : ℤ) - 1)) * A131577 (n + 4) : ℚ) / 2

end

end A158681.P8500118687857464668

namespace A158681

/-- `(2*A088578(n)+n-1)*A131577(n+4)/2` -/
def P8500118687857464668.Spec : Prop :=
  ∀ n, P8500118687857464668.a n = (A158681 (n + 1) : ℚ)

end A158681

/-! ## A158681.P12632635577375003525

`(∑[2*n*Δ[A000225(n)]]+n+1)*A131577(n+4)/2`
-/

namespace A158681.P12632635577375003525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)) * A131577 (n + 4) : ℤ) : ℚ) / 2

end

end A158681.P12632635577375003525

namespace A158681

/-- `(∑[2*n*Δ[A000225(n)]]+n+1)*A131577(n+4)/2` -/
def P12632635577375003525.Spec : Prop :=
  ∀ n, P12632635577375003525.a n = (A158681 (n + 1) : ℚ)

end A158681

/-! ## A158681.P11069496589800686885

`record[2^(comp[∑[n]]-n)*A213747(n+1)]`
-/

namespace A158681.P11069496589800686885
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) * (A213747 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158681.P11069496589800686885

namespace A158681

/-- `record[2^(comp[∑[n]]-n)*A213747(n+1)]` -/
def P11069496589800686885.Spec : Prop :=
  ∀ n, P11069496589800686885.a n = (A158681 (n + 1) : ℚ)

end A158681

/-!
# A158682: Numbers n such that 1 plus the sum of the first n primes is divisible by n+1.

The programs for A158682, there is no canonical definition to state claims against.
-/

/-! ## A158682.P17447591761216743986

`A179859(n+2)-1`
-/

namespace A158682.P17447591761216743986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179859 (n + 2) - 1

end

end A158682.P17447591761216743986

/-! ## A158682.P10589457506617650576

`∑[abs(Δ[A179859(n+1)])]`
-/

namespace A158682.P10589457506617650576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179859 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158682.P10589457506617650576

/-! ## A158682.P7628114903164850279

`xor(1, A179859(A020725(n+1)))`
-/

namespace A158682.P7628114903164850279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A179859 (A020725 (n + 1)).toNat)

end

end A158682.P7628114903164850279

/-! ## A158682.P3225202588305214825

`xor(1, A179859(A087156(n+2)))`
-/

namespace A158682.P3225202588305214825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A179859 (A087156 (n + 2)).toNat)

end

end A158682.P3225202588305214825

/-! ## A158682.P4537541364717377775

`xor(log2(A020639(2*(n+2))), A179859(n+2))`
-/

namespace A158682.P4537541364717377775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.logb 2 (A020639 (2 * (n + 2)) : ℝ))) (A179859 (n + 2))

end

end A158682.P4537541364717377775

/-!
# A158683: a(n) = 1024*n^2 - 32.

The programs for A158683, the canonical program `A158683.P7854582827485140561` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158683 has offset 1).

The definition of A158683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158683.P7854582827485140561

`32*A158563(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158683

/-- `32*A158563(n+1)` -/
def P7854582827485140561.Spec : Prop :=
  ∀ n, P7854582827485140561.a n = A158683 (n + 1)

theorem P7854582827485140561.correct : P7854582827485140561.Spec := by
  intro n
  simp only [A158683, Nat.add_sub_cancel]

end A158683

/-! ## A158683.P6034244517670181090

`(32*(n+1))²-32`
-/

namespace A158683.P6034244517670181090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((32 * (n + 1)) ^ 2 : ℤ) - 32

end

end A158683.P6034244517670181090

namespace A158683

/-- `(32*(n+1))²-32` -/
def P6034244517670181090.Spec : Prop :=
  ∀ n, P6034244517670181090.a n = A158683 (n + 1)

end A158683

/-! ## A158683.P11366790375761746130

`4*4*(A158684(n+1)-1)`
-/

namespace A158683.P11366790375761746130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * (A158684 (n + 1) - 1))

end

end A158683.P11366790375761746130

namespace A158683

/-- `4*4*(A158684(n+1)-1)` -/
def P11366790375761746130.Spec : Prop :=
  ∀ n, P11366790375761746130.a n = A158683 (n + 1)

end A158683

/-! ## A158683.P1430394106095584750

`32*(32*A000290(n+1)-1)`
-/

namespace A158683.P1430394106095584750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * (32 * A000290 (n + 1) - 1)

end

end A158683.P1430394106095584750

namespace A158683

/-- `32*(32*A000290(n+1)-1)` -/
def P1430394106095584750.Spec : Prop :=
  ∀ n, P1430394106095584750.a n = A158683 (n + 1)

end A158683

/-! ## A158683.P9647671748640685235

`16*(16*A016742(n+1)-2)`
-/

namespace A158683.P9647671748640685235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (16 * A016742 (n + 1) - 2)

end

end A158683.P9647671748640685235

namespace A158683

/-- `16*(16*A016742(n+1)-2)` -/
def P9647671748640685235.Spec : Prop :=
  ∀ n, P9647671748640685235.a n = A158683 (n + 1)

end A158683

/-! ## A158683.P12331904835478822284

`4*A158487(2*(n+1))`
-/

namespace A158683.P12331904835478822284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A158487 (2 * (n + 1))

end

end A158683.P12331904835478822284

namespace A158683

/-- `4*A158487(2*(n+1))` -/
def P12331904835478822284.Spec : Prop :=
  ∀ n, P12331904835478822284.a n = A158683 (n + 1)

end A158683

/-! ## A158683.P17398007317243693842

`2*A157447((n+1)²)`
-/

namespace A158683.P17398007317243693842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157447 ((n + 1) ^ 2)

end

end A158683.P17398007317243693842

namespace A158683

/-- `2*A157447((n+1)²)` -/
def P17398007317243693842.Spec : Prop :=
  ∀ n, P17398007317243693842.a n = A158683 (n + 1)

end A158683

/-!
# A158684: a(n) = 64*n^2 - 1.

The programs for A158684, the canonical program `A158684.P12772694682750737315` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158684 has offset 1).

The definition of A158684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(n+1)²-1` (program `A158684.P12772694682750737315`, by `A158684.P12772694682750737315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158684.P12772694682750737315

`64*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158684

/-- `64*(n+1)²-1` -/
def P12772694682750737315.Spec : Prop :=
  ∀ n, P12772694682750737315.a n = A158684 (n + 1)

theorem P12772694682750737315.correct : P12772694682750737315.Spec := by
  intro n
  simp only [A158684, Nat.add_sub_cancel]

end A158684

/-! ## A158684.P17056618917793761150

`record[(8*(1-n))²-1]`
-/

namespace A158684.P17056618917793761150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (1 - (n : ℤ))) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158684.P17056618917793761150

namespace A158684

/-- `record[(8*(1-n))²-1]` -/
def P17056618917793761150.Spec : Prop :=
  ∀ n, P17056618917793761150.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P6582672665268193766

`-or(1, -(8*(n+1))²)`
-/

namespace A158684.P6582672665268193766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-((8 * (n + 1)) ^ 2 : ℤ))

end

end A158684.P6582672665268193766

namespace A158684

/-- `-or(1, -(8*(n+1))²)` -/
def P6582672665268193766.Spec : Prop :=
  ∀ n, P6582672665268193766.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P7977059441188350876

`-xor(1, -(8*(n+1))²)`
-/

namespace A158684.P7977059441188350876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-((8 * (n + 1)) ^ 2 : ℤ))

end

end A158684.P7977059441188350876

namespace A158684

/-- `-xor(1, -(8*(n+1))²)` -/
def P7977059441188350876.Spec : Prop :=
  ∀ n, P7977059441188350876.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P15554841669216562679

`(8*n+9)*record[xor(7, n)]`
-/

namespace A158684.P15554841669216562679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 9) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158684.P15554841669216562679

namespace A158684

/-- `(8*n+9)*record[xor(7, n)]` -/
def P15554841669216562679.Spec : Prop :=
  ∀ n, (P15554841669216562679.a n : ℤ) = A158684 (n + 1)

end A158684

/-! ## A158684.P276087598238695364

`or(15, A158487(n+1))`
-/

namespace A158684.P276087598238695364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 15 (A158487 (n + 1))

end

end A158684.P276087598238695364

namespace A158684

/-- `or(15, A158487(n+1))` -/
def P276087598238695364.Spec : Prop :=
  ∀ n, P276087598238695364.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P7150563871753895206

`A004768(n)*A004771(n)`
-/

namespace A158684.P7150563871753895206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 n * A004771 n

end

end A158684.P7150563871753895206

namespace A158684

/-- `A004768(n)*A004771(n)` -/
def P7150563871753895206.Spec : Prop :=
  ∀ n, P7150563871753895206.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P6622145286957372817

`A133818(n)/A177065(n)`
-/

namespace A158684.P6622145286957372817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133818 n : ℚ) / (A177065 n : ℚ)

end

end A158684.P6622145286957372817

namespace A158684

/-- `A133818(n)/A177065(n)` -/
def P6622145286957372817.Spec : Prop :=
  ∀ n, P6622145286957372817.a n = (A158684 (n + 1) : ℚ)

end A158684

/-! ## A158684.P7014873584180848025

`Δ[∑[A008590(n)²]-n]`
-/

namespace A158684.P7014873584180848025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158684.P7014873584180848025

namespace A158684

/-- `Δ[∑[A008590(n)²]-n]` -/
def P7014873584180848025.Spec : Prop :=
  ∀ n, P7014873584180848025.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P6412312762509240540

`Δ[∑[A022144(n)²]-n]`
-/

namespace A158684.P6412312762509240540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158684.P6412312762509240540

namespace A158684

/-- `Δ[∑[A022144(n)²]-n]` -/
def P6412312762509240540.Spec : Prop :=
  ∀ n, P6412312762509240540.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P7995658898139190236

`(8*n+7)*A017077(n+1)`
-/

namespace A158684.P7995658898139190236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) * A017077 (n + 1)

end

end A158684.P7995658898139190236

namespace A158684

/-- `(8*n+7)*A017077(n+1)` -/
def P7995658898139190236.Spec : Prop :=
  ∀ n, P7995658898139190236.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P14759718902768812268

`(A016803(n+1)-(n+1))/(n+1)`
-/

namespace A158684.P14759718902768812268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016803 (n + 1) - (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A158684.P14759718902768812268

namespace A158684

/-- `(A016803(n+1)-(n+1))/(n+1)` -/
def P14759718902768812268.Spec : Prop :=
  ∀ n, P14759718902768812268.a n = (A158684 (n + 1) : ℚ)

end A158684

/-! ## A158684.P2191441303796854939

`A133818(n)/A141759(2*n)`
-/

namespace A158684.P2191441303796854939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133818 n : ℚ) / (A141759 (2 * n) : ℚ)

end

end A158684.P2191441303796854939

namespace A158684

/-- `A133818(n)/A141759(2*n)` -/
def P2191441303796854939.Spec : Prop :=
  ∀ n, P2191441303796854939.a n = (A158684 (n + 1) : ℚ)

end A158684

/-! ## A158684.P12494209862065263498

`A141759(Δ[n²])`
-/

namespace A158684.P12494209862065263498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A158684.P12494209862065263498

namespace A158684

/-- `A141759(Δ[n²])` -/
def P12494209862065263498.Spec : Prop :=
  ∀ n, P12494209862065263498.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P15606696129736112143

`(A004767(2*n+1)+2)*A004767(2*n+1)`
-/

namespace A158684.P15606696129736112143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004767 (2 * n + 1) + 2) * A004767 (2 * n + 1)

end

end A158684.P15606696129736112143

namespace A158684

/-- `(A004767(2*n+1)+2)*A004767(2*n+1)` -/
def P15606696129736112143.Spec : Prop :=
  ∀ n, P15606696129736112143.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P14176916018761652764

`Δ[A317186(Δ[n²])]*(8*n+7)`
-/

namespace A158684.P14176916018761652764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (8 * n + 7 : ℤ)

end

end A158684.P14176916018761652764

namespace A158684

/-- `Δ[A317186(Δ[n²])]*(8*n+7)` -/
def P14176916018761652764.Spec : Prop :=
  ∀ n, P14176916018761652764.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P11203694952450974804

`A000466(4*(n+1))`
-/

namespace A158684.P11203694952450974804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (4 * (n + 1))

end

end A158684.P11203694952450974804

namespace A158684

/-- `A000466(4*(n+1))` -/
def P11203694952450974804.Spec : Prop :=
  ∀ n, P11203694952450974804.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P12274820871431984799

`A321019(4*(n+1))`
-/

namespace A158684.P12274820871431984799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321019 (4 * (n + 1))

end

end A158684.P12274820871431984799

namespace A158684

/-- `A321019(4*(n+1))` -/
def P12274820871431984799.Spec : Prop :=
  ∀ n, P12274820871431984799.a n = A158684 (n + 1)

end A158684

/-! ## A158684.P2281019499518645461

`sqrt(A069075(4*(n+1)))`
-/

namespace A158684.P2281019499518645461
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069075 (4 * (n + 1)) : ℝ)

end

end A158684.P2281019499518645461

namespace A158684

/-- `sqrt(A069075(4*(n+1)))` -/
def P2281019499518645461.Spec : Prop :=
  ∀ n, P2281019499518645461.a n = (A158684 (n + 1) : ℝ)

end A158684

/-!
# A158685: a(n) = 32*(32*n^2 + 1).

The programs for A158685, the canonical program `A158685.P8852203288800741182` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158685 has offset 0).

The definition of A158685 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(32*n²+1)` (program `A158685.P8852203288800741182`, by `A158685.P8852203288800741182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158685.P8852203288800741182

`32*(32*n²+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158685

/-- `32*(32*n²+1)` -/
def P8852203288800741182.Spec : Prop :=
  ∀ n, (P8852203288800741182.a n : ℤ) = A158685 n

theorem P8852203288800741182.correct : P8852203288800741182.Spec := by
  intro n
  simp only [A158685]

end A158685

/-! ## A158685.P16865148359176450396

`or(32, (32*n)²)`
-/

namespace A158685.P16865148359176450396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 32 ((32 * n) ^ 2)

end

end A158685.P16865148359176450396

namespace A158685

/-- `or(32, (32*n)²)` -/
def P16865148359176450396.Spec : Prop :=
  ∀ n, (P16865148359176450396.a n : ℤ) = A158685 n

end A158685

/-! ## A158685.P17411397415039497959

`xor(32, (32*n)²)`
-/

namespace A158685.P17411397415039497959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 32 ((32 * n) ^ 2)

end

end A158685.P17411397415039497959

namespace A158685

/-- `xor(32, (32*n)²)` -/
def P17411397415039497959.Spec : Prop :=
  ∀ n, (P17411397415039497959.a n : ℤ) = A158685 n

end A158685

/-! ## A158685.P17518696793691112

`lcm(32, A158575(n))`
-/

namespace A158685.P17518696793691112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 32 (A158575 n)

end

end A158685.P17518696793691112

namespace A158685

/-- `lcm(32, A158575(n))` -/
def P17518696793691112.Spec : Prop :=
  ∀ n, (P17518696793691112.a n : ℤ) = A158685 n

end A158685

/-! ## A158685.P9912042585944320053

`A033991(A008598(n))+A008598(n+2)`
-/

namespace A158685.P9912042585944320053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 (A008598 n).toNat + A008598 (n + 2)

end

end A158685.P9912042585944320053

namespace A158685

/-- `A033991(A008598(n))+A008598(n+2)` -/
def P9912042585944320053.Spec : Prop :=
  ∀ n, P9912042585944320053.a n = A158685 n

end A158685

/-!
# A158686: a(n) = 64*n^2 + 1.

The programs for A158686, the canonical program `A158686.P15625956396772246712` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158686 has offset 0).

The definition of A158686 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*n²+1` (program `A158686.P15625956396772246712`, by `A158686.P15625956396772246712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158686.P15625956396772246712

`64*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158686

/-- `64*n²+1` -/
def P15625956396772246712.Spec : Prop :=
  ∀ n, (P15625956396772246712.a n : ℤ) = A158686 n

theorem P15625956396772246712.correct : P15625956396772246712.Spec := by
  intro n
  simp only [A158686]

end A158686

/-! ## A158686.P7121388144933927475

`or(1, (8*n)²)`
-/

namespace A158686.P7121388144933927475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((8 * n) ^ 2)

end

end A158686.P7121388144933927475

namespace A158686

/-- `or(1, (8*n)²)` -/
def P7121388144933927475.Spec : Prop :=
  ∀ n, (P7121388144933927475.a n : ℤ) = A158686 n

end A158686

/-! ## A158686.P9486525161384348499

`xor(1, (8*n)²)`
-/

namespace A158686.P9486525161384348499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((8 * n) ^ 2)

end

end A158686.P9486525161384348499

namespace A158686

/-- `xor(1, (8*n)²)` -/
def P9486525161384348499.Spec : Prop :=
  ∀ n, (P9486525161384348499.a n : ℤ) = A158686 n

end A158686

/-! ## A158686.P13946666114443626213

`C(n*64*n+1, A328672(∑{e}[n+1, #]))`
-/

namespace A158686.P13946666114443626213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * (64 * n) + 1) (A328672 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A158686.P13946666114443626213

namespace A158686

/-- `C(n*64*n+1, A328672(∑{e}[n+1, #]))` -/
def P13946666114443626213.Spec : Prop :=
  ∀ n, (P13946666114443626213.a n : ℤ) = A158686 n

end A158686

/-! ## A158686.P13846756699272136485

`C(A017066(n)+1, A017066(n))`
-/

namespace A158686.P13846756699272136485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A017066 n + 1).toNat (A017066 n).toNat

end

end A158686.P13846756699272136485

namespace A158686

/-- `C(A017066(n)+1, A017066(n))` -/
def P13846756699272136485.Spec : Prop :=
  ∀ n, (P13846756699272136485.a n : ℤ) = A158686 n

end A158686

/-! ## A158686.P5068662999601918622

`record[or(1, A147792(n))]`
-/

namespace A158686.P5068662999601918622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147792 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158686.P5068662999601918622

namespace A158686

/-- `record[or(1, A147792(n))]` -/
def P5068662999601918622.Spec : Prop :=
  ∀ n, P5068662999601918622.a n = A158686 n

end A158686

/-! ## A158686.P17523374548089614839

`ceil(A158575(2*n)/2)`
-/

namespace A158686.P17523374548089614839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158575 (2 * n) : ℚ) / 2⌉

end

end A158686.P17523374548089614839

namespace A158686

/-- `ceil(A158575(2*n)/2)` -/
def P17523374548089614839.Spec : Prop :=
  ∀ n, P17523374548089614839.a n = A158686 n

end A158686

/-! ## A158686.P5097241366932203878

`record[A174256(n+1)²+1]`
-/

namespace A158686.P5097241366932203878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174256 (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158686.P5097241366932203878

namespace A158686

/-- `record[A174256(n+1)²+1]` -/
def P5097241366932203878.Spec : Prop :=
  ∀ n, P5097241366932203878.a n = A158686 n

end A158686

/-! ## A158686.P11279796808475083351

`A053755(4*n)`
-/

namespace A158686.P11279796808475083351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (4 * n)

end

end A158686.P11279796808475083351

namespace A158686

/-- `A053755(4*n)` -/
def P11279796808475083351.Spec : Prop :=
  ∀ n, P11279796808475083351.a n = A158686 n

end A158686

/-! ## A158686.P8337909305037013340

`A002522(8*n)`
-/

namespace A158686.P8337909305037013340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (8 * n)

end

end A158686.P8337909305037013340

namespace A158686

/-- `A002522(8*n)` -/
def P8337909305037013340.Spec : Prop :=
  ∀ n, P8337909305037013340.a n = A158686 n

end A158686

/-! ## A158686.P12547348190568725265

`A081345(8*n)`
-/

namespace A158686.P12547348190568725265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 (8 * n)

end

end A158686.P12547348190568725265

namespace A158686

/-- `A081345(8*n)` -/
def P12547348190568725265.Spec : Prop :=
  ∀ n, P12547348190568725265.a n = A158686 n

end A158686

/-! ## A158686.P16276408304758476456

`A098748(8*n)`
-/

namespace A158686.P16276408304758476456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098748 (8 * n)

end

end A158686.P16276408304758476456

namespace A158686

/-- `A098748(8*n)` -/
def P16276408304758476456.Spec : Prop :=
  ∀ n, P16276408304758476456.a n = A158686 n

end A158686

/-! ## A158686.P2325294654099667574

`A228564(8*n)`
-/

namespace A158686.P2325294654099667574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 (8 * n)

end

end A158686.P2325294654099667574

namespace A158686

/-- `A228564(8*n)` -/
def P2325294654099667574.Spec : Prop :=
  ∀ n, P2325294654099667574.a n = A158686 n

end A158686

/-! ## A158686.P11909045360413372738

`A098749(A017077(n))`
-/

namespace A158686.P11909045360413372738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098749 (A017077 n).toNat

end

end A158686.P11909045360413372738

namespace A158686

/-- `A098749(A017077(n))` -/
def P11909045360413372738.Spec : Prop :=
  ∀ n, P11909045360413372738.a n = A158686 n

end A158686

/-! ## A158686.P8574526210067550108

`A160457(A160457(n+3)-(2-n)²)`
-/

namespace A158686.P8574526210067550108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 (A160457 (n + 3) - (2 - (n : ℤ)) ^ 2).toNat

end

end A158686.P8574526210067550108

namespace A158686

/-- `A160457(A160457(n+3)-(2-n)²)` -/
def P8574526210067550108.Spec : Prop :=
  ∀ n, P8574526210067550108.a n = A158686 n

end A158686

/-! ## A158686.P5140993646279709040

`A349803(12*n)`
-/

namespace A158686.P5140993646279709040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349803 (12 * n)

end

end A158686.P5140993646279709040

namespace A158686

/-- `A349803(12*n)` -/
def P5140993646279709040.Spec : Prop :=
  ∀ n, P5140993646279709040.a n = A158686 n

end A158686

/-! ## A158686.P12692958041802041889

`A033638(4*4*n)`
-/

namespace A158686.P12692958041802041889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (4 * (4 * n))

end

end A158686.P12692958041802041889

namespace A158686

/-- `A033638(4*4*n)` -/
def P12692958041802041889.Spec : Prop :=
  ∀ n, P12692958041802041889.a n = A158686 n

end A158686

/-! ## A158686.P11687606250643805411

`A243883(2*A022144(n))`
-/

namespace A158686.P11687606250643805411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243883 (2 * A022144 n).toNat

end

end A158686.P11687606250643805411

namespace A158686

/-- `A243883(2*A022144(n))` -/
def P11687606250643805411.Spec : Prop :=
  ∀ n, P11687606250643805411.a n = A158686 n

end A158686

/-! ## A158686.P5886032194519580927

`A261327(16*n)`
-/

namespace A158686.P5886032194519580927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (16 * n)

end

end A158686.P5886032194519580927

namespace A158686

/-- `A261327(16*n)` -/
def P5886032194519580927.Spec : Prop :=
  ∀ n, P5886032194519580927.a n = A158686 n

end A158686

/-!
# A158687: Riordan array (1/(1-x),x(1+x)^2/(1-x)).

The programs for A158687, there is no canonical definition to state claims against.
-/

/-! ## A158687.P13733022069095207869

`A031285(A157169(n))-A128227(n)`
-/

namespace A158687.P13733022069095207869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A157169 n).toNat - A128227 n

end

end A158687.P13733022069095207869

/-! ## A158687.P8238758533206609978

`A206294(n)+A116433(A055645(n))`
-/

namespace A158687.P8238758533206609978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 n + A116433 (A055645 n).toNat

end

end A158687.P8238758533206609978

/-! ## A158687.P4030614241897851966

`A339221(A347811(n))+A081577(n)`
-/

namespace A158687.P4030614241897851966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339221 (A347811 n).toNat + A081577 n

end

end A158687.P4030614241897851966

/-!
# A158688: a(n) = 1089*n^2 + 33.

The programs for A158688, the canonical program `A158688.P14796787054471598982` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158688 has offset 0).

The definition of A158688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158688.P14796787054471598982

`(33*n)²+33`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158688

/-- `(33*n)²+33` -/
def P14796787054471598982.Spec : Prop :=
  ∀ n, (P14796787054471598982.a n : ℤ) = A158688 n

theorem P14796787054471598982.correct : P14796787054471598982.Spec := by
  intro n
  simp only [A158688]

end A158688

/-! ## A158688.P995025076080715954

`3*(3*A017390(n)+11)`
-/

namespace A158688.P995025076080715954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A017390 n + 11)

end

end A158688.P995025076080715954

namespace A158688

/-- `3*(3*A017390(n)+11)` -/
def P995025076080715954.Spec : Prop :=
  ∀ n, P995025076080715954.a n = A158688 n

end A158688

/-! ## A158688.P10569035498951953265

`3*(3*A158536(n)-22)`
-/

namespace A158688.P10569035498951953265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A158536 n - 22)

end

end A158688.P10569035498951953265

namespace A158688

/-- `3*(3*A158536(n)-22)` -/
def P10569035498951953265.Spec : Prop :=
  ∀ n, P10569035498951953265.a n = A158688 n

end A158688

/-! ## A158688.P13160174281648485867

`33*(33*A000290(n)+1)`
-/

namespace A158688.P13160174281648485867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  33 * (33 * A000290 n + 1)

end

end A158688.P13160174281648485867

namespace A158688

/-- `33*(33*A000290(n)+1)` -/
def P13160174281648485867.Spec : Prop :=
  ∀ n, P13160174281648485867.a n = A158688 n

end A158688

/-! ## A158688.P5143907120243479642

`11*A017425(A016766(n))`
-/

namespace A158688.P5143907120243479642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A017425 (A016766 n).toNat

end

end A158688.P5143907120243479642

namespace A158688

/-- `11*A017425(A016766(n))` -/
def P5143907120243479642.Spec : Prop :=
  ∀ n, P5143907120243479642.a n = A158688 n

end A158688

/-!
# A158689: a(n) = 66*n^2 + 1.

The programs for A158689, the canonical program `A158689.P13242612811471385714` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158689 has offset 0).

The definition of A158689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `66*n²+1` (program `A158689.P13242612811471385714`, by `A158689.P13242612811471385714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158689.P13242612811471385714

`66*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158689

/-- `66*n²+1` -/
def P13242612811471385714.Spec : Prop :=
  ∀ n, (P13242612811471385714.a n : ℤ) = A158689 n

theorem P13242612811471385714.correct : P13242612811471385714.Spec := by
  intro n
  simp only [A158689]

end A158689

/-! ## A158689.P9882725918297545862

`or(1, 66*n²)`
-/

namespace A158689.P9882725918297545862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (66 * n ^ 2)

end

end A158689.P9882725918297545862

namespace A158689

/-- `or(1, 66*n²)` -/
def P9882725918297545862.Spec : Prop :=
  ∀ n, (P9882725918297545862.a n : ℤ) = A158689 n

end A158689

/-! ## A158689.P3824829741034130781

`xor(1, 66*n²)`
-/

namespace A158689.P3824829741034130781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (66 * n ^ 2)

end

end A158689.P3824829741034130781

namespace A158689

/-- `xor(1, 66*n²)` -/
def P3824829741034130781.Spec : Prop :=
  ∀ n, (P3824829741034130781.a n : ℤ) = A158689 n

end A158689

/-! ## A158689.P10963051924981828522

`ceil(((4*8*n+n)*A046092(n)+1)/(n+1))`
-/

namespace A158689.P10963051924981828522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 * (8 * n) + n : ℤ) * A046092 n + 1 : ℚ) / (n + 1 : ℚ)⌉

end

end A158689.P10963051924981828522

namespace A158689

/-- `ceil(((4*8*n+n)*A046092(n)+1)/(n+1))` -/
def P10963051924981828522.Spec : Prop :=
  ∀ n, P10963051924981828522.a n = A158689 n

end A158689

/-! ## A158689.P16112220623307542789

`abs(A001105(n)-A158732(n))`
-/

namespace A158689.P16112220623307542789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001105 n - A158732 n|

end

end A158689.P16112220623307542789

namespace A158689

/-- `abs(A001105(n)-A158732(n))` -/
def P16112220623307542789.Spec : Prop :=
  ∀ n, P16112220623307542789.a n = A158689 n

end A158689

/-! ## A158689.P4860828132036035274

`floor(A158630(n)+A158630(n)/2)`
-/

namespace A158689.P4860828132036035274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158630 n : ℚ) + (A158630 n : ℚ) / 2⌋

end

end A158689.P4860828132036035274

namespace A158689

/-- `floor(A158630(n)+A158630(n)/2)` -/
def P4860828132036035274.Spec : Prop :=
  ∀ n, P4860828132036035274.a n = A158689 n

end A158689

/-! ## A158689.P2877258121983943512

`(A158732(n)-A001105(n))*A335915(A082907(n))`
-/

namespace A158689.P2877258121983943512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158732 n - A001105 n) * A335915 (A082907 n).toNat

end

end A158689.P2877258121983943512

namespace A158689

/-- `(A158732(n)-A001105(n))*A335915(A082907(n))` -/
def P2877258121983943512.Spec : Prop :=
  ∀ n, P2877258121983943512.a n = A158689 n

end A158689

/-! ## A158689.P9944200108187558526

`(A158732(n)-A001105(n))*A007318(A014963(5-(-1)^n))`
-/

namespace A158689.P9944200108187558526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158732 n - A001105 n) * A007318 (A014963 (5 - (-1) ^ n).toNat).toNat

end

end A158689.P9944200108187558526

namespace A158689

/-- `(A158732(n)-A001105(n))*A007318(A014963(5-(-1)^n))` -/
def P9944200108187558526.Spec : Prop :=
  ∀ n, P9944200108187558526.a n = A158689 n

end A158689

/-! ## A158689.P15227094446209781150

`(A158732(n)-A001105(n))*A001222(A077359(n+1))`
-/

namespace A158689.P15227094446209781150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158732 n - A001105 n) * A001222 (A077359 (n + 1)).toNat

end

end A158689.P15227094446209781150

namespace A158689

/-- `(A158732(n)-A001105(n))*A001222(A077359(n+1))` -/
def P15227094446209781150.Spec : Prop :=
  ∀ n, P15227094446209781150.a n = A158689 n

end A158689

/-! ## A158689.P16669113743825104645

`(A158732(n)-A001105(n))*A000034(2*n)`
-/

namespace A158689.P16669113743825104645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158732 n - A001105 n) * A000034 (2 * n)

end

end A158689.P16669113743825104645

namespace A158689

/-- `(A158732(n)-A001105(n))*A000034(2*n)` -/
def P16669113743825104645.Spec : Prop :=
  ∀ n, P16669113743825104645.a n = A158689 n

end A158689

/-! ## A158689.P13870761140655398876

`(A158732(n)-A001105(n))%A008412(2*n+1)`
-/

namespace A158689.P13870761140655398876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158732 n - A001105 n) (A008412 (2 * n + 1))

end

end A158689.P13870761140655398876

namespace A158689

/-- `(A158732(n)-A001105(n))%A008412(2*n+1)` -/
def P13870761140655398876.Spec : Prop :=
  ∀ n, P13870761140655398876.a n = A158689 n

end A158689

/-! ## A158689.P2561117833549509924

`(A158732(n)-A001105(n))*A091949(4*n)`
-/

namespace A158689.P2561117833549509924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158732 n - A001105 n) * A091949 (4 * n)

end

end A158689.P2561117833549509924

namespace A158689

/-- `(A158732(n)-A001105(n))*A091949(4*n)` -/
def P2561117833549509924.Spec : Prop :=
  ∀ n, P2561117833549509924.a n = A158689 n

end A158689

/-! ## A158689.P69016300107770582

`(A158732(n)-A001105(n))%A028596(n+4)`
-/

namespace A158689.P69016300107770582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158732 n - A001105 n) (A028596 (n + 4))

end

end A158689.P69016300107770582

namespace A158689

/-- `(A158732(n)-A001105(n))%A028596(n+4)` -/
def P69016300107770582.Spec : Prop :=
  ∀ n, P69016300107770582.a n = A158689 n

end A158689

/-! ## A158689.P6165346241536889739

`∑[record[A298026(11*n)]]`
-/

namespace A158689.P6165346241536889739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (11 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158689.P6165346241536889739

namespace A158689

/-- `∑[record[A298026(11*n)]]` -/
def P6165346241536889739.Spec : Prop :=
  ∀ n, P6165346241536889739.a n = A158689 n

end A158689

/-! ## A158689.P3499756423953016275

`∑[A008458(11*A004273(n))]`
-/

namespace A158689.P3499756423953016275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (11 * A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158689.P3499756423953016275

namespace A158689

/-- `∑[A008458(11*A004273(n))]` -/
def P3499756423953016275.Spec : Prop :=
  ∀ n, P3499756423953016275.a n = A158689 n

end A158689

/-! ## A158689.P11140832402900030865

`(A158732(n)-A001105(n))*A128834(A128470(n))`
-/

namespace A158689.P11140832402900030865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158732 n - A001105 n) * A128834 (A128470 n).toNat

end

end A158689.P11140832402900030865

namespace A158689

/-- `(A158732(n)-A001105(n))*A128834(A128470(n))` -/
def P11140832402900030865.Spec : Prop :=
  ∀ n, P11140832402900030865.a n = A158689 n

end A158689

/-! ## A158689.P16280256245786981386

`(A158732(n)-A001105(n))*A001222(A126242(n+1))`
-/

namespace A158689.P16280256245786981386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158732 n - A001105 n) * A001222 (A126242 (n + 1)).toNat

end

end A158689.P16280256245786981386

namespace A158689

/-- `(A158732(n)-A001105(n))*A001222(A126242(n+1))` -/
def P16280256245786981386.Spec : Prop :=
  ∀ n, P16280256245786981386.a n = A158689 n

end A158689

/-! ## A158689.P15782021315850581628

`(A158732(n)-A001105(n))*A077028(A000096(n))`
-/

namespace A158689.P15782021315850581628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158732 n - A001105 n) * A077028 (A000096 n).toNat

end

end A158689.P15782021315850581628

namespace A158689

/-- `(A158732(n)-A001105(n))*A077028(A000096(n))` -/
def P15782021315850581628.Spec : Prop :=
  ∀ n, P15782021315850581628.a n = A158689 n

end A158689

/-!
# A158690: Expansion of the basic hypergeometric series 1 + (1 - exp(-t)) + (1 - exp(-t))*(1 - exp(-3*t)) + (1 - exp(-t))*(1 - exp(-3*t))*(1 - exp(-5*t)) + ... as a series in t.

The programs for A158690, there is no canonical definition to state claims against.
-/

/-! ## A158690.P17746012790109756244

`A073593(A195067(n))`
-/

namespace A158690.P17746012790109756244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073593 (A195067 n).toNat

end

end A158690.P17746012790109756244

/-!
# A158691: The number of upper-triangular matrices with at least one nonzero entry in each row and whose entries sum to n.

The programs for A158691, there is no canonical definition to state claims against.
-/

/-! ## A158691.P1214836538190373638

`or(A004247(A000522(n)), A331616(n))`
-/

namespace A158691.P1214836538190373638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004247 (A000522 n).toNat) (A331616 n)

end

end A158691.P1214836538190373638

/-! ## A158691.P17507366639817453214

`or(A046930(A088716(n)), A331616(n))`
-/

namespace A158691.P17507366639817453214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046930 (A088716 n).toNat) (A331616 n)

end

end A158691.P17507366639817453214

/-! ## A158691.P16437596336629609254

`or(A167700(A002898(n)), A331616(n))`
-/

namespace A158691.P16437596336629609254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A167700 (A002898 n).toNat) (A331616 n)

end

end A158691.P16437596336629609254

/-!
# A158692: a(n) = 1089*n^2 - 33.

The programs for A158692, the canonical program `A158692.P6681693369097695364` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158692 has offset 1).

The definition of A158692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158692.P6681693369097695364

`(33*(n+1))²-33`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158692

/-- `(33*(n+1))²-33` -/
def P6681693369097695364.Spec : Prop :=
  ∀ n, P6681693369097695364.a n = A158692 (n + 1)

theorem P6681693369097695364.correct : P6681693369097695364.Spec := by
  intro n
  simp only [A158692, Nat.add_sub_cancel]

end A158692

/-! ## A158692.P15958760870725797988

`record[(33*(1-n))²-33]`
-/

namespace A158692.P15958760870725797988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (33 * (1 - (n : ℤ))) ^ 2 - 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158692.P15958760870725797988

namespace A158692

/-- `record[(33*(1-n))²-33]` -/
def P15958760870725797988.Spec : Prop :=
  ∀ n, P15958760870725797988.a n = A158692 (n + 1)

end A158692

/-! ## A158692.P14075089429250728915

`3*(3*A017390(n+1)-11)`
-/

namespace A158692.P14075089429250728915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A017390 (n + 1) - 11)

end

end A158692.P14075089429250728915

namespace A158692

/-- `3*(3*A017390(n+1)-11)` -/
def P14075089429250728915.Spec : Prop :=
  ∀ n, P14075089429250728915.a n = A158692 (n + 1)

end A158692

/-! ## A158692.P12307552061715373939

`33*(33*A000290(n+1)-1)`
-/

namespace A158692.P12307552061715373939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  33 * (33 * A000290 (n + 1) - 1)

end

end A158692.P12307552061715373939

namespace A158692

/-- `33*(33*A000290(n+1)-1)` -/
def P12307552061715373939.Spec : Prop :=
  ∀ n, P12307552061715373939.a n = A158692 (n + 1)

end A158692

/-! ## A158692.P4573833564266719151

`abs(A158536(3*(n+1))-44)`
-/

namespace A158692.P4573833564266719151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158536 (3 * (n + 1)) - 44|

end

end A158692.P4573833564266719151

namespace A158692

/-- `abs(A158536(3*(n+1))-44)` -/
def P4573833564266719151.Spec : Prop :=
  ∀ n, P4573833564266719151.a n = A158692 (n + 1)

end A158692

/-! ## A158692.P10008850440216346492

`33*A017509(A080663(n+1))`
-/

namespace A158692.P10008850440216346492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  33 * A017509 (A080663 (n + 1)).toNat

end

end A158692.P10008850440216346492

namespace A158692

/-- `33*A017509(A080663(n+1))` -/
def P10008850440216346492.Spec : Prop :=
  ∀ n, P10008850440216346492.a n = A158692 (n + 1)

end A158692

/-!
# A158693: a(n) = 66*n^2 - 1.

The programs for A158693, the canonical program `A158693.P7172618368171940871` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158693 has offset 1).

The definition of A158693 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `66*(n+1)²-1` (program `A158693.P7172618368171940871`, by `A158693.P7172618368171940871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158693.P7172618368171940871

`66*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158693

/-- `66*(n+1)²-1` -/
def P7172618368171940871.Spec : Prop :=
  ∀ n, P7172618368171940871.a n = A158693 (n + 1)

theorem P7172618368171940871.correct : P7172618368171940871.Spec := by
  intro n
  simp only [A158693, Nat.add_sub_cancel]

end A158693

/-! ## A158693.P5817830259352063029

`abs(2-A158689(n+1))`
-/

namespace A158693.P5817830259352063029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158689 (n + 1)|

end

end A158693.P5817830259352063029

namespace A158693

/-- `abs(2-A158689(n+1))` -/
def P5817830259352063029.Spec : Prop :=
  ∀ n, P5817830259352063029.a n = A158693 (n + 1)

end A158693

/-! ## A158693.P14369893122693162047

`ceil(3*A158628(n+1)/2)`
-/

namespace A158693.P14369893122693162047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((A158628 (n + 1) : ℚ) / 2)⌉

end

end A158693.P14369893122693162047

namespace A158693

/-- `ceil(3*A158628(n+1)/2)` -/
def P14369893122693162047.Spec : Prop :=
  ∀ n, P14369893122693162047.a n = A158693 (n + 1)

end A158693

/-! ## A158693.P4330009369979338004

`∑[11*(12*n+6)-A000007(n)]`
-/

namespace A158693.P4330009369979338004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * (12 * n + 6) : ℤ) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158693.P4330009369979338004

namespace A158693

/-- `∑[11*(12*n+6)-A000007(n)]` -/
def P4330009369979338004.Spec : Prop :=
  ∀ n, P4330009369979338004.a n = A158693 (n + 1)

end A158693

/-! ## A158693.P7620287476663913622

`2*((n+1)²+A158684(n+1)/2)`
-/

namespace A158693.P7620287476663913622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((n + 1) ^ 2 : ℚ) + (A158684 (n + 1) : ℚ) / 2)

end

end A158693.P7620287476663913622

namespace A158693

/-- `2*((n+1)²+A158684(n+1)/2)` -/
def P7620287476663913622.Spec : Prop :=
  ∀ n, P7620287476663913622.a n = (A158693 (n + 1) : ℚ)

end A158693

/-! ## A158693.P2251998597284228230

`floor(A165798(n+1)+cos(2)+(n+1)²)`
-/

namespace A158693.P2251998597284228230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165798 (n + 1) : ℝ) + (Real.cos (2 : ℝ) + ((n + 1) ^ 2 : ℝ))⌋

end

end A158693.P2251998597284228230

namespace A158693

/-- `floor(A165798(n+1)+cos(2)+(n+1)²)` -/
def P2251998597284228230.Spec : Prop :=
  ∀ n, P2251998597284228230.a n = A158693 (n + 1)

end A158693

/-! ## A158693.P1085639396934320847

`abs((abs(2*A016969(n)-n)+3)*A016969(n)-n)`
-/

namespace A158693.P1085639396934320847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((|2 * A016969 n - (n : ℤ)| + 3) * A016969 n - (n : ℤ))|

end

end A158693.P1085639396934320847

namespace A158693

/-- `abs((abs(2*A016969(n)-n)+3)*A016969(n)-n)` -/
def P1085639396934320847.Spec : Prop :=
  ∀ n, P1085639396934320847.a n = A158693 (n + 1)

end A158693

/-! ## A158693.P1239983043003213913

`A158692(n+1)%(A158680(n+1)+A158679(n+1))`
-/

namespace A158693.P1239983043003213913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158692 (n + 1)) (A158680 (n + 1) + A158679 (n + 1))

end

end A158693.P1239983043003213913

namespace A158693

/-- `A158692(n+1)%(A158680(n+1)+A158679(n+1))` -/
def P1239983043003213913.Spec : Prop :=
  ∀ n, P1239983043003213913.a n = A158693 (n + 1)

end A158693

/-! ## A158693.P17245028102767563724

`(A158730(n+1)+A158730(n+1))%A158736(n+1)`
-/

namespace A158693.P17245028102767563724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158730 (n + 1) + A158730 (n + 1)) (A158736 (n + 1))

end

end A158693.P17245028102767563724

namespace A158693

/-- `(A158730(n+1)+A158730(n+1))%A158736(n+1)` -/
def P17245028102767563724.Spec : Prop :=
  ∀ n, P17245028102767563724.a n = A158693 (n + 1)

end A158693

/-! ## A158693.P16731539765713469704

`Δ[∑[A158689(n)]-2*n]`
-/

namespace A158693.P16731539765713469704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158693.P16731539765713469704

namespace A158693

/-- `Δ[∑[A158689(n)]-2*n]` -/
def P16731539765713469704.Spec : Prop :=
  ∀ n, P16731539765713469704.a n = A158693 (n + 1)

end A158693

/-! ## A158693.P3651840755167115065

`Δ[A193252(n+1)-A047672(n+1)]`
-/

namespace A158693.P3651840755167115065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193252 (n + 1) - A047672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158693.P3651840755167115065

namespace A158693

/-- `Δ[A193252(n+1)-A047672(n+1)]` -/
def P3651840755167115065.Spec : Prop :=
  ∀ n, P3651840755167115065.a n = A158693 (n + 1)

end A158693

/-! ## A158693.P3478568404726505243

`abs(A001105(n+1)-A321180(A005843(n+1)))`
-/

namespace A158693.P3478568404726505243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001105 (n + 1) - A321180 (A005843 (n + 1)).toNat|

end

end A158693.P3478568404726505243

namespace A158693

/-- `abs(A001105(n+1)-A321180(A005843(n+1)))` -/
def P3478568404726505243.Spec : Prop :=
  ∀ n, P3478568404726505243.a n = A158693 (n + 1)

end A158693

/-!
# A158694: Numerator of Bernoulli(n, -1/8).

The programs for A158694, there is no canonical definition to state claims against.
-/

/-! ## A158694.P2560180197432157024

`2*A157819(n)-A158697(n)`
-/

namespace A158694.P2560180197432157024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157819 n - A158697 n

end

end A158694.P2560180197432157024

/-!
# A158696: a(n) = Hermite(n, 17).

The programs for A158696, the canonical program `A158696.P15902021268429237425` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158696 has offset 0).

The definition of A158696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158696.P15902021268429237425

`34*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158696

/-- `34*a(n-1)-2*(n-1)*a(n-2)` -/
def P15902021268429237425.Spec : Prop :=
  ∀ n, P15902021268429237425.a n = A158696 n

theorem P15902021268429237425.correct : P15902021268429237425.Spec := by
  intro n
  simp only [A158696]

end A158696

/-!
# A158697: Numerator of Bernoulli(n, 3/8).

The programs for A158697, there is no canonical definition to state claims against.
-/

/-! ## A158697.P16625970458709696514

`2*A157819(n)-A158694(n)`
-/

namespace A158697.P16625970458709696514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157819 n - A158694 n

end

end A158697.P16625970458709696514

/-!
# A158698: Numbers not occurring in A073627.

The programs for A158698, there is no canonical definition to state claims against.
-/

/-! ## A158698.P1968699966091059007

`comp[A073627(n+1)-char[1]]`
-/

namespace A158698.P1968699966091059007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073627 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158698.P1968699966091059007

/-! ## A158698.P8307059134724392680

`comp[A073627(n+2)-1]+1`
-/

namespace A158698.P8307059134724392680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073627 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A158698.P8307059134724392680

/-! ## A158698.P10018048640235009840

`comp[A062042(n+1)-2]+2`
-/

namespace A158698.P10018048640235009840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062042 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A158698.P10018048640235009840

/-! ## A158698.P18218840114623588023

`comp[A062042(n-a(C(2, n)))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A158698.P18218840114623588023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  A062042 ((n : ℤ) - f1 (Nat.choose 2 n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158698.P18218840114623588023

/-! ## A158698.P6107041927346525833

`comp[A060266(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A158698.P6107041927346525833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A060266 (f1 (n - 1)).toNat + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158698.P6107041927346525833

/-! ## A158698.P15645642291248436737

`comp[A060264(a(n-1))-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A158698.P15645642291248436737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A060264 (f1 (n - 1)).toNat - f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158698.P15645642291248436737

/-! ## A158698.P1742950767860465258

`comp[A007920(2*a(n-1))+a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A158698.P1742950767860465258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A007920 (2 * f1 (n - 1)).toNat + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158698.P1742950767860465258

/-! ## A158698.P5897074169699051544

`comp[A013632(2*a(n-1))+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A158698.P5897074169699051544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A013632 (2 * f1 (n - 1)).toNat + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158698.P5897074169699051544

/-!
# A158699: Start with 0; then add one to each single digit.

The programs for A158699, there is no canonical definition to state claims against.
-/

/-! ## A158699.P7738609209834194071

`A226134(A051885(n))`
-/

namespace A158699.P7738609209834194071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226134 (A051885 n).toNat

end

end A158699.P7738609209834194071

/-! ## A158699.P13871463173978159903

`A226134(A057428(n+1)+A037124(n+1))`
-/

namespace A158699.P13871463173978159903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226134 (A057428 (n + 1) + A037124 (n + 1)).toNat

end

end A158699.P13871463173978159903

/-! ## A158699.P8631221860392311260

`A226134(record[n-A035930(n+1)])`
-/

namespace A158699.P8631221860392311260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A035930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226134 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A158699.P8631221860392311260

/-! ## A158699.P4967296713098424947

`A137564(A061511(n))`
-/

namespace A158699.P4967296713098424947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A061511 n).toNat

end

end A158699.P4967296713098424947

