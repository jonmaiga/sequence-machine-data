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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A085600: Number of simple graphs with 3 edges on n unlabeled vertices.

The programs for A085600, the canonical program `A085600.P17262985169403263290` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085600 has offset 1).

The definition of A085600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085600.P17262985169403263290

`floor(3^atan(∑[n]-3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085600

/-- `floor(3^atan(∑[n]-3))` -/
def P17262985169403263290.Spec : Prop :=
  ∀ n, P17262985169403263290.a n = A085600 (n + 1)

theorem P17262985169403263290.correct : P17262985169403263290.Spec := by
  intro n
  simp only [A085600, Nat.add_sub_cancel]

end A085600

/-!
# A085601: a(n) = 2 * (4^n + 2^n) + 1.

The programs for A085601, the canonical program `A085601.P6300401134310498953` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085601 has offset 0).

The definition of A085601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(4^n+2^n)+1` (program `A085601.P6300401134310498953`, by `A085601.P6300401134310498953.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085601.P6300401134310498953

`2*(4^n+2^n)+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085601

/-- `2*(4^n+2^n)+1` -/
def P6300401134310498953.Spec : Prop :=
  ∀ n, (P6300401134310498953.a n : ℤ) = A085601 n

theorem P6300401134310498953.correct : P6300401134310498953.Spec := by
  intro n
  simp only [A085601]

end A085601

/-! ## A085601.P2433718564829862557

`∑[4*a(n-1)-2^n]` with `a(0)=5, a(1)=8`
-/

namespace A085601.P2433718564829862557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n f1 =>
  4 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085601.P2433718564829862557

namespace A085601

/-- `∑[4*a(n-1)-2^n]` -/
def P2433718564829862557.Spec : Prop :=
  ∀ n, P2433718564829862557.a n = A085601 n

end A085601

/-! ## A085601.P4642760130982878448

`ceil(∑[2*a(n-1)]²/2)` with `a(0)=3, a(1)=2`
-/

namespace A085601.P4642760130982878448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2⌉

end

end A085601.P4642760130982878448

namespace A085601

/-- `ceil(∑[2*a(n-1)]²/2)` -/
def P4642760130982878448.Spec : Prop :=
  ∀ n, P4642760130982878448.a n = A085601 n

end A085601

/-! ## A085601.P12333725203193097355

`A343175(n+1)`
-/

namespace A085601.P12333725203193097355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343175 (n + 1)

end

end A085601.P12333725203193097355

namespace A085601

/-- `A343175(n+1)` -/
def P12333725203193097355.Spec : Prop :=
  ∀ n, P12333725203193097355.a n = A085601 n

end A085601

/-! ## A085601.P3068128967954813357

`A171663(Δ[n²])`
-/

namespace A085601.P3068128967954813357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171663 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A085601.P3068128967954813357

namespace A085601

/-- `A171663(Δ[n²])` -/
def P3068128967954813357.Spec : Prop :=
  ∀ n, P3068128967954813357.a n = A085601 n

end A085601

/-! ## A085601.P10556601015485971027

`A257418(2*(n+1))`
-/

namespace A085601.P10556601015485971027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257418 (2 * (n + 1))

end

end A085601.P10556601015485971027

namespace A085601

/-- `A257418(2*(n+1))` -/
def P10556601015485971027.Spec : Prop :=
  ∀ n, P10556601015485971027.a n = A085601 n

end A085601

/-! ## A085601.P13370347921810315034

`ceil(A048578(n)²/2)`
-/

namespace A085601.P13370347921810315034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048578 n ^ 2 : ℚ) / 2⌉

end

end A085601.P13370347921810315034

namespace A085601

/-- `ceil(A048578(n)²/2)` -/
def P13370347921810315034.Spec : Prop :=
  ∀ n, P13370347921810315034.a n = A085601 n

end A085601

/-! ## A085601.P45075123558329536

`record[A343175(abs(1-n))]`
-/

namespace A085601.P45075123558329536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343175 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085601.P45075123558329536

namespace A085601

/-- `record[A343175(abs(1-n))]` -/
def P45075123558329536.Spec : Prop :=
  ∀ n, P45075123558329536.a n = A085601 n

end A085601

/-! ## A085601.P9563627075116420094

`round(A028400(n+1)/2)`
-/

namespace A085601.P9563627075116420094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A028400 (n + 1) : ℚ) / 2)

end

end A085601.P9563627075116420094

namespace A085601

/-- `round(A028400(n+1)/2)` -/
def P9563627075116420094.Spec : Prop :=
  ∀ n, P9563627075116420094.a n = A085601 n

end A085601

/-! ## A085601.P18033661878751822590

`round(∑[A171559(n)]²/2)`
-/

namespace A085601.P18033661878751822590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2)

end

end A085601.P18033661878751822590

namespace A085601

/-- `round(∑[A171559(n)]²/2)` -/
def P18033661878751822590.Spec : Prop :=
  ∀ n, P18033661878751822590.a n = A085601 n

end A085601

/-! ## A085601.P759710618560421238

`Δ[abs(1-∑[A343175(n)])]`
-/

namespace A085601.P759710618560421238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343175 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085601.P759710618560421238

namespace A085601

/-- `Δ[abs(1-∑[A343175(n)])]` -/
def P759710618560421238.Spec : Prop :=
  ∀ n, P759710618560421238.a n = A085601 n

end A085601

/-! ## A085601.P3337385474660178106

`(A093069(n+1)+3)/2`
-/

namespace A085601.P3337385474660178106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093069 (n + 1) + 3 : ℚ) / 2

end

end A085601.P3337385474660178106

namespace A085601

/-- `(A093069(n+1)+3)/2` -/
def P3337385474660178106.Spec : Prop :=
  ∀ n, P3337385474660178106.a n = (A085601 n : ℚ)

end A085601

/-! ## A085601.P7741514515723263056

`(A130567(n+2)+3)/2`
-/

namespace A085601.P7741514515723263056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130567 (n + 2) + 3 : ℚ) / 2

end

end A085601.P7741514515723263056

namespace A085601

/-- `(A130567(n+2)+3)/2` -/
def P7741514515723263056.Spec : Prop :=
  ∀ n, P7741514515723263056.a n = (A085601 n : ℚ)

end A085601

/-! ## A085601.P13439672193336167353

`ceil(A000051(n+1)²/2)`
-/

namespace A085601.P13439672193336167353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000051 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A085601.P13439672193336167353

namespace A085601

/-- `ceil(A000051(n+1)²/2)` -/
def P13439672193336167353.Spec : Prop :=
  ∀ n, P13439672193336167353.a n = A085601 n

end A085601

/-! ## A085601.P3450693539611294091

`ceil(A083318(n+1)²/2)`
-/

namespace A085601.P3450693539611294091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083318 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A085601.P3450693539611294091

namespace A085601

/-- `ceil(A083318(n+1)²/2)` -/
def P3450693539611294091.Spec : Prop :=
  ∀ n, P3450693539611294091.a n = A085601 n

end A085601

/-! ## A085601.P5627437046880511522

`round(A107663(2*n+1)/2)`
-/

namespace A085601.P5627437046880511522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A107663 (2 * n + 1) : ℚ) / 2)

end

end A085601.P5627437046880511522

namespace A085601

/-- `round(A107663(2*n+1)/2)` -/
def P5627437046880511522.Spec : Prop :=
  ∀ n, P5627437046880511522.a n = A085601 n

end A085601

/-! ## A085601.P6933999432710642105

`ceil(A051032(2*(n+1))²/2)`
-/

namespace A085601.P6933999432710642105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051032 (2 * (n + 1)) ^ 2 : ℚ) / 2⌉

end

end A085601.P6933999432710642105

namespace A085601

/-- `ceil(A051032(2*(n+1))²/2)` -/
def P6933999432710642105.Spec : Prop :=
  ∀ n, P6933999432710642105.a n = A085601 n

end A085601

/-! ## A085601.P4767758540149775320

`A199209(n)%A171496(n)`
-/

namespace A085601.P4767758540149775320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199209 n) (A171496 n)

end

end A085601.P4767758540149775320

namespace A085601

/-- `A199209(n)%A171496(n)` -/
def P4767758540149775320.Spec : Prop :=
  ∀ n, P4767758540149775320.a n = A085601 n

end A085601

/-!
# A085602: Numbers of the form (2n+1)^(2n+1) + 1.

The programs for A085602, the canonical program `A085602.P15526525830550234717` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085602 has offset 1).

The definition of A085602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^(2*n+1)+1` (program `A085602.P15526525830550234717`, by `A085602.P15526525830550234717.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085602.P15526525830550234717

`(2*n+1)^(2*n+1)+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085602

/-- `(2*n+1)^(2*n+1)+1` -/
def P15526525830550234717.Spec : Prop :=
  ∀ n, (P15526525830550234717.a n : ℤ) = A085602 (n + 1)

theorem P15526525830550234717.correct : P15526525830550234717.Spec := by
  intro n
  simp only [A085602, Nat.add_sub_cancel]

end A085602

/-! ## A085602.P10880409223632059938

`record[gcd(n, ∑[n])^n+1]`
-/

namespace A085602.P10880409223632059938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085602.P10880409223632059938

namespace A085602

/-- `record[gcd(n, ∑[n])^n+1]` -/
def P10880409223632059938.Spec : Prop :=
  ∀ n, (P10880409223632059938.a n : ℤ) = A085602 (n + 1)

end A085602

/-! ## A085602.P14460999494701544911

`record[(lcm(2, n)/2)^n+1]`
-/

namespace A085602.P14460999494701544911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 n : ℚ) / 2) ^ n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085602.P14460999494701544911

namespace A085602

/-- `record[(lcm(2, n)/2)^n+1]` -/
def P14460999494701544911.Spec : Prop :=
  ∀ n, P14460999494701544911.a n = (A085602 (n + 1) : ℚ)

end A085602

/-! ## A085602.P7893318500607719253

`record[(n+1)^xor(1, n)+1]`
-/

namespace A085602.P7893318500607719253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085602.P7893318500607719253

namespace A085602

/-- `record[(n+1)^xor(1, n)+1]` -/
def P7893318500607719253.Spec : Prop :=
  ∀ n, (P7893318500607719253.a n : ℤ) = A085602 (n + 1)

end A085602

/-! ## A085602.P5262648664767742603

`record[n^(n%2)^n+1]`
-/

namespace A085602.P5262648664767742603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ (n % 2)) ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085602.P5262648664767742603

namespace A085602

/-- `record[n^(n%2)^n+1]` -/
def P5262648664767742603.Spec : Prop :=
  ∀ n, (P5262648664767742603.a n : ℤ) = A085602 (n + 1)

end A085602

/-!
# A085603: a(n) = (2n)^(2n) + 1.

The programs for A085603, the canonical program `A085603.P18215422749844187312` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085603 has offset 0).

The definition of A085603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^(2*n)+1` (program `A085603.P18215422749844187312`, by `A085603.P18215422749844187312.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085603.P18215422749844187312

`(2*n)^(2*n)+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085603

/-- `(2*n)^(2*n)+1` -/
def P18215422749844187312.Spec : Prop :=
  ∀ n, (P18215422749844187312.a n : ℤ) = A085603 n

theorem P18215422749844187312.correct : P18215422749844187312.Spec := by
  intro n
  simp only [A085603]

end A085603

/-! ## A085603.P3972906809361186006

`record[(-n)^n+1]`
-/

namespace A085603.P3972906809361186006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085603.P3972906809361186006

namespace A085603

/-- `record[(-n)^n+1]` -/
def P3972906809361186006.Spec : Prop :=
  ∀ n, P3972906809361186006.a n = A085603 n

end A085603

/-! ## A085603.P17039945544883431878

`abs(xor(-1, ((2*n)^n)²))`
-/

namespace A085603.P17039945544883431878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (((2 * n) ^ n) ^ 2 : ℤ)|

end

end A085603.P17039945544883431878

namespace A085603

/-- `abs(xor(-1, ((2*n)^n)²))` -/
def P17039945544883431878.Spec : Prop :=
  ∀ n, P17039945544883431878.a n = A085603 n

end A085603

/-! ## A085603.P9382777495635787349

`-xor(-1, ((2*n)^n)²)`
-/

namespace A085603.P9382777495635787349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (((2 * n) ^ n) ^ 2 : ℤ)

end

end A085603.P9382777495635787349

namespace A085603

/-- `-xor(-1, ((2*n)^n)²)` -/
def P9382777495635787349.Spec : Prop :=
  ∀ n, P9382777495635787349.a n = A085603 n

end A085603

/-! ## A085603.P1225848073147860183

`A014566(2*n)`
-/

namespace A085603.P1225848073147860183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014566 (2 * n)

end

end A085603.P1225848073147860183

namespace A085603

/-- `A014566(2*n)` -/
def P1225848073147860183.Spec : Prop :=
  ∀ n, P1225848073147860183.a n = A085603 n

end A085603

/-!
# A085604: T(n,k) = highest power of prime(k) dividing n!, read by rows.

The programs for A085604, the canonical program `A085604.P77828900822782128` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085604 has offset 1).

The definition of A085604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085604.P7119069611085983825

`val(A094310(n+1), A037126(n+1))`
-/

namespace A085604.P7119069611085983825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094310 (n + 1)).toNat (A037126 (n + 1)).toNat

end

end A085604.P7119069611085983825

namespace A085604

/-- `val(A094310(n+1), A037126(n+1))` -/
def P7119069611085983825.Spec : Prop :=
  ∀ n, (P7119069611085983825.a n : ℤ) = A085604 (n + 1)

end A085604

/-! ## A085604.P77828900822782128

`val(A002024(n+1)!, A037126(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085604

/-- `val(A002024(n+1)!, A037126(n+1))` -/
def P77828900822782128.Spec : Prop :=
  ∀ n, (P77828900822782128.a n : ℤ) = A085604 (n + 1)

theorem P77828900822782128.correct : P77828900822782128.Spec := by
  intro n
  simp only [A085604, Nat.add_sub_cancel]

end A085604

/-! ## A085604.P14870619457784244581

`val(A002024(n+1)!, A257251(n+1))`
-/

namespace A085604.P14870619457784244581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A002024 (n + 1)).toNat) (A257251 (n + 1)).toNat

end

end A085604.P14870619457784244581

namespace A085604

/-- `val(A002024(n+1)!, A257251(n+1))` -/
def P14870619457784244581.Spec : Prop :=
  ∀ n, (P14870619457784244581.a n : ℤ) = A085604 (n + 1)

end A085604

/-! ## A085604.P2440397449864726731

`val(∏[A130296(n+1)], A037126(n+1))`
-/

namespace A085604.P2440397449864726731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A037126 (n + 1)).toNat

end

end A085604.P2440397449864726731

namespace A085604

/-- `val(∏[A130296(n+1)], A037126(n+1))` -/
def P2440397449864726731.Spec : Prop :=
  ∀ n, (P2440397449864726731.a n : ℤ) = A085604 (n + 1)

end A085604

/-! ## A085604.P13210886139576675478

`val(A094587(A080036(n)), A037126(n+1))`
-/

namespace A085604.P13210886139576675478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094587 (A080036 n).toNat).toNat (A037126 (n + 1)).toNat

end

end A085604.P13210886139576675478

namespace A085604

/-- `val(A094587(A080036(n)), A037126(n+1))` -/
def P13210886139576675478.Spec : Prop :=
  ∀ n, (P13210886139576675478.a n : ℤ) = A085604 (n + 1)

end A085604

/-! ## A085604.P9158899035476011562

`val(A173333(n+1), A000040(A128227(n)))`
-/

namespace A085604.P9158899035476011562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173333 (n + 1)).toNat (A000040 (A128227 n).toNat).toNat

end

end A085604.P9158899035476011562

namespace A085604

/-- `val(A173333(n+1), A000040(A128227(n)))` -/
def P9158899035476011562.Spec : Prop :=
  ∀ n, (P9158899035476011562.a n : ℤ) = A085604 (n + 1)

end A085604

/-! ## A085604.P14435448236962917217

`val(A094310(n+1), A000040(A002260(n+1)))`
-/

namespace A085604.P14435448236962917217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094310 (n + 1)).toNat (A000040 (A002260 (n + 1)).toNat).toNat

end

end A085604.P14435448236962917217

namespace A085604

/-- `val(A094310(n+1), A000040(A002260(n+1)))` -/
def P14435448236962917217.Spec : Prop :=
  ∀ n, (P14435448236962917217.a n : ℤ) = A085604 (n + 1)

end A085604

/-! ## A085604.P14148251089466354212

`val(A173333(n+1), A000040(A002260(n+1)))`
-/

namespace A085604.P14148251089466354212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173333 (n + 1)).toNat (A000040 (A002260 (n + 1)).toNat).toNat

end

end A085604.P14148251089466354212

namespace A085604

/-- `val(A173333(n+1), A000040(A002260(n+1)))` -/
def P14148251089466354212.Spec : Prop :=
  ∀ n, (P14148251089466354212.a n : ℤ) = A085604 (n + 1)

end A085604

/-! ## A085604.P13836840971750918039

`val(A002024(n+1)!, A000040(A002260(n+1)))`
-/

namespace A085604.P13836840971750918039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A002024 (n + 1)).toNat) (A000040 (A002260 (n + 1)).toNat).toNat

end

end A085604.P13836840971750918039

namespace A085604

/-- `val(A002024(n+1)!, A000040(A002260(n+1)))` -/
def P13836840971750918039.Spec : Prop :=
  ∀ n, (P13836840971750918039.a n : ℤ) = A085604 (n + 1)

end A085604

/-! ## A085604.P7156928371401215288

`val(A051683(n+1), A000040(A002260(n+1)))`
-/

namespace A085604.P7156928371401215288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051683 (n + 1)).toNat (A000040 (A002260 (n + 1)).toNat).toNat

end

end A085604.P7156928371401215288

namespace A085604

/-- `val(A051683(n+1), A000040(A002260(n+1)))` -/
def P7156928371401215288.Spec : Prop :=
  ∀ n, (P7156928371401215288.a n : ℤ) = A085604 (n + 1)

end A085604

/-!
# A085606: a(n) = (n-1)^n - 1.

The programs for A085606, the canonical program `A085606.P9291025308928995895` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085606 has offset 0).

The definition of A085606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)^n-1` (program `A085606.P9291025308928995895`, by `A085606.P9291025308928995895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085606.P9291025308928995895

`(n-1)^n-1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085606

/-- `(n-1)^n-1` -/
def P9291025308928995895.Spec : Prop :=
  ∀ n, P9291025308928995895.a n = A085606 n

theorem P9291025308928995895.correct : P9291025308928995895.Spec := by
  intro n
  simp only [A085606]

end A085606

/-! ## A085606.P314341749444341567

`xor(-1, -A065440(n))`
-/

namespace A085606.P314341749444341567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-A065440 n)

end

end A085606.P314341749444341567

namespace A085606

/-- `xor(-1, -A065440(n))` -/
def P314341749444341567.Spec : Prop :=
  ∀ n, P314341749444341567.a n = A085606 n

end A085606

/-! ## A085606.P7041626342105458800

`(A065440(n)-1)*A057427(n)`
-/

namespace A085606.P7041626342105458800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065440 n - 1) * A057427 n

end

end A085606.P7041626342105458800

namespace A085606

/-- `(A065440(n)-1)*A057427(n)` -/
def P7041626342105458800.Spec : Prop :=
  ∀ n, P7041626342105458800.a n = A085606 n

end A085606

/-! ## A085606.P16167842265900178713

`(A065440(n)-1)*A178334(n)`
-/

namespace A085606.P16167842265900178713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065440 n - 1) * A178334 n

end

end A085606.P16167842265900178713

namespace A085606

/-- `(A065440(n)-1)*A178334(n)` -/
def P16167842265900178713.Spec : Prop :=
  ∀ n, P16167842265900178713.a n = A085606 n

end A085606

/-! ## A085606.P14010595949804046275

`xor(-1, -A055134(A000217(n)))`
-/

namespace A085606.P14010595949804046275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-A055134 (A000217 n).toNat)

end

end A085606.P14010595949804046275

namespace A085606

/-- `xor(-1, -A055134(A000217(n)))` -/
def P14010595949804046275.Spec : Prop :=
  ∀ n, P14010595949804046275.a n = A085606 n

end A085606

/-! ## A085606.P3731894152710431629

`(A065440(n)-1)*char[A061601(n)]`
-/

namespace A085606.P3731894152710431629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065440 n - 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A085606.P3731894152710431629

namespace A085606

/-- `(A065440(n)-1)*char[A061601(n)]` -/
def P3731894152710431629.Spec : Prop :=
  ∀ n, P3731894152710431629.a n = A085606 n

end A085606

/-! ## A085606.P13947053102412582152

`(A065440(n)-1)*and(1, A107464(n))`
-/

namespace A085606.P13947053102412582152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065440 n - 1) * Int.land 1 (A107464 n)

end

end A085606.P13947053102412582152

namespace A085606

/-- `(A065440(n)-1)*and(1, A107464(n))` -/
def P13947053102412582152.Spec : Prop :=
  ∀ n, P13947053102412582152.a n = A085606 n

end A085606

/-! ## A085606.P4025958730460831203

`(A065440(n)-1)*A024360(n+1)!`
-/

namespace A085606.P4025958730460831203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065440 n - 1) * (Nat.factorial (A024360 (n + 1)).toNat : ℤ)

end

end A085606.P4025958730460831203

namespace A085606

/-- `(A065440(n)-1)*A024360(n+1)!` -/
def P4025958730460831203.Spec : Prop :=
  ∀ n, P4025958730460831203.a n = A085606 n

end A085606

/-! ## A085606.P10732385295253396096

`∏{d}[A009001(A005843(n)), A065440(n)-#]`
-/

namespace A085606.P10732385295253396096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A065440 n - (d : ℤ))

end

end A085606.P10732385295253396096

namespace A085606

/-- `∏{d}[A009001(A005843(n)), A065440(n)-#]` -/
def P10732385295253396096.Spec : Prop :=
  ∀ n, P10732385295253396096.a n = A085606 n

end A085606

/-! ## A085606.P7791350583961169430

`(A065440(n)-1)*A001222(A053674(n+1))`
-/

namespace A085606.P7791350583961169430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065440 n - 1) * A001222 (A053674 (n + 1)).toNat

end

end A085606.P7791350583961169430

namespace A085606

/-- `(A065440(n)-1)*A001222(A053674(n+1))` -/
def P7791350583961169430.Spec : Prop :=
  ∀ n, P7791350583961169430.a n = A085606 n

end A085606

/-!
# A085608: Index of the smallest prime starting with n.

The programs for A085608, there is no canonical definition to state claims against.
-/

/-! ## A085608.P942465997624619597

`A000720(A018800(n+1))`
-/

namespace A085608.P942465997624619597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A018800 (n + 1)).toNat

end

end A085608.P942465997624619597

/-! ## A085608.P9573397567647105640

`A061395(A018800(C(n+1, n)))`
-/

namespace A085608.P9573397567647105640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A018800 (Nat.choose (n + 1) n)).toNat

end

end A085608.P9573397567647105640

/-! ## A085608.P1819256091689393145

`∑{d}[A018800(n+1), A061395(#)]`
-/

namespace A085608.P1819256091689393145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A085608.P1819256091689393145

/-! ## A085608.P5273903753259595763

`A061395(A018800(n+1)%A038830(n))`
-/

namespace A085608.P5273903753259595763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A018800 (n + 1)) (A038830 n)).toNat

end

end A085608.P5273903753259595763

/-! ## A085608.P14256660284722738713

`A061395(2*A018800(n+1))`
-/

namespace A085608.P14256660284722738713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A018800 (n + 1)).toNat

end

end A085608.P14256660284722738713

/-! ## A085608.P10559621776244046037

`∑{d}[A344616(A018800(n+1)), A000010(#)]`
-/

namespace A085608.P10559621776244046037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A018800 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A085608.P10559621776244046037

/-! ## A085608.P17392330667359939773

`A344616(A018800(n+1))+A063524(3*n)`
-/

namespace A085608.P17392330667359939773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A018800 (n + 1)).toNat + A063524 (3 * n)

end

end A085608.P17392330667359939773

/-! ## A085608.P6536356159616360571

`A010689(2*(n+1))*A344616(A018800(n+1))`
-/

namespace A085608.P6536356159616360571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 (2 * (n + 1)) * A344616 (A018800 (n + 1)).toNat

end

end A085608.P6536356159616360571

/-! ## A085608.P13545722045600650789

`A289508(A018800(n+1)/A001511(2*n+1))`
-/

namespace A085608.P13545722045600650789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (SequenceMachineLib.roundAway ((A018800 (n + 1) : ℚ) / (A001511 (2 * n + 1) : ℚ))).toNat

end

end A085608.P13545722045600650789

/-! ## A085608.P992982888547001004

`A289508(A018800(n+1)/A167176(3*n+1))`
-/

namespace A085608.P992982888547001004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (SequenceMachineLib.roundAway ((A018800 (n + 1) : ℚ) / (A167176 (3 * n + 1) : ℚ))).toNat

end

end A085608.P992982888547001004

/-! ## A085608.P4883749651458086545

`A000720(A077344(∑[n]+1))`
-/

namespace A085608.P4883749651458086545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077344 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A085608.P4883749651458086545

/-! ## A085608.P7664034975624932717

`A000720(A262369(∑[n]+1))`
-/

namespace A085608.P7664034975624932717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A262369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A085608.P7664034975624932717

/-! ## A085608.P3454568926456918728

`A065770(or(A000038(n), A018800(n+1)))`
-/

namespace A085608.P3454568926456918728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (Int.lor (A000038 n) (A018800 (n + 1))).toNat

end

end A085608.P3454568926456918728

/-! ## A085608.P6079321450162656130

`A065770(A018800(n+1)+A000038(n+3))`
-/

namespace A085608.P6079321450162656130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A018800 (n + 1) + A000038 (n + 3)).toNat

end

end A085608.P6079321450162656130

/-! ## A085608.P9984818033593588162

`A065770(or(A018800(n+1), A337546(2*n+5)))`
-/

namespace A085608.P9984818033593588162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (Int.lor (A018800 (n + 1)) (A337546 (2 * n + 5))).toNat

end

end A085608.P9984818033593588162

/-! ## A085608.P7144572680870079705

`A003963(p?[A018800(n+1)])`
-/

namespace A085608.P7144572680870079705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085608.P7144572680870079705

/-! ## A085608.P10160675505620522641

`A026233(p?[A018800(n+1)])`
-/

namespace A085608.P10160675505620522641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085608.P10160675505620522641

/-! ## A085608.P640935411642710763

`A026238(p?[A018800(n+1)])`
-/

namespace A085608.P640935411642710763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085608.P640935411642710763

/-! ## A085608.P4131753597267640076

`A049084(p?[A018800(n+1)])`
-/

namespace A085608.P4131753597267640076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085608.P4131753597267640076

/-! ## A085608.P10370361831478178595

`A055396(p?[A018800(n+1)])`
-/

namespace A085608.P10370361831478178595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085608.P10370361831478178595

/-!
# A085611: Difference between A007678(2n)/(2n) and (n-1)^2.

The programs for A085611, there is no canonical definition to state claims against.
-/

/-! ## A085611.P4511858838270864411

`A007678(2*(n+1))/(2*(n+1))-n²`
-/

namespace A085611.P4511858838270864411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007678 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ) - (n ^ 2 : ℚ)

end

end A085611.P4511858838270864411

/-! ## A085611.P1499919048934952084

`A341734(n+1)-n²`
-/

namespace A085611.P1499919048934952084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341734 (n + 1) - (n ^ 2 : ℤ)

end

end A085611.P1499919048934952084

/-! ## A085611.P11491844929408322970

`abs(A341734(n+1)-A000290(n))`
-/

namespace A085611.P11491844929408322970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341734 (n + 1) - A000290 n|

end

end A085611.P11491844929408322970

/-! ## A085611.P3000199323854811954

`A341734(n+1)+1-A002522(n)`
-/

namespace A085611.P3000199323854811954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341734 (n + 1) + 1 - A002522 n

end

end A085611.P3000199323854811954

/-! ## A085611.P270684368532522038

`A056891(2*(n+1))-(n²+1)`
-/

namespace A085611.P270684368532522038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056891 (2 * (n + 1)) - (n ^ 2 + 1 : ℤ)

end

end A085611.P270684368532522038

/-!
# A085613: a(n) = 2^(n-1) + (2 + (-1)^n)^((n-2)/2).

The programs for A085613, the canonical program `A085613.P196808218029812697` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085613 has offset 1).

The definition of A085613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085613.P196808218029812697

`2^n+(2+(-1)^(n+1))^((n-1)/2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085613

/-- `2^n+(2+(-1)^(n+1))^((n-1)/2)` -/
def P196808218029812697.Spec : Prop :=
  ∀ n, P196808218029812697.a n = (A085613 (n + 1) : ℝ)

end A085613

/-! ## A085613.P14395782021431944538

`xor(A130599(n), A171559(n))`
-/

namespace A085613.P14395782021431944538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130599 n) (A171559 n)

end

end A085613.P14395782021431944538

namespace A085613

/-- `xor(A130599(n), A171559(n))` -/
def P14395782021431944538.Spec : Prop :=
  ∀ n, P14395782021431944538.a n = A085613 (n + 1)

end A085613

/-!
# A085614: Number of elementary arches of size n.

The programs for A085614, there is no canonical definition to state claims against.
-/

/-! ## A085614.P14875962526345905993

`A206300(n+1)/2`
-/

namespace A085614.P14875962526345905993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206300 (n + 1) : ℚ) / 2

end

end A085614.P14875962526345905993

/-! ## A085614.P17072540098068513219

`abs(A224884(n+1))/2`
-/

namespace A085614.P17072540098068513219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A224884 (n + 1)| : ℚ) / 2

end

end A085614.P17072540098068513219

/-! ## A085614.P18130264676222994490

`A143018(∑[n]+2)`
-/

namespace A085614.P18130264676222994490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143018 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A085614.P18130264676222994490

/-! ## A085614.P8287468323384772515

`record[A143018(n+2)]`
-/

namespace A085614.P8287468323384772515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143018 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085614.P8287468323384772515

/-! ## A085614.P1629339207127522605

`2*A078531(n)-A007297(n+1)`
-/

namespace A085614.P1629339207127522605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078531 n - A007297 (n + 1)

end

end A085614.P1629339207127522605

/-! ## A085614.P914625469054946526

`A244038(n)/(n+1)`
-/

namespace A085614.P914625469054946526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244038 n : ℚ) / (n + 1 : ℚ)

end

end A085614.P914625469054946526

/-! ## A085614.P14562156154860768224

`A091527(n+1)/(4*n+2+A005843(n+1))`
-/

namespace A085614.P14562156154860768224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 (n + 1) : ℚ) / ((4 * n + 2 : ℤ) + A005843 (n + 1) : ℚ)

end

end A085614.P14562156154860768224

/-! ## A085614.P24798230829883502

`A358367(n)/A001787(n+1)`
-/

namespace A085614.P24798230829883502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358367 n : ℚ) / (A001787 (n + 1) : ℚ)

end

end A085614.P24798230829883502

/-! ## A085614.P8370516007289873262

`A110441(∑[4*n])/(n+1)`
-/

namespace A085614.P8370516007289873262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110441 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A085614.P8370516007289873262

/-! ## A085614.P4655465599391825564

`A054335(2*(n+1)²)/(n+1)`
-/

namespace A085614.P4655465599391825564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054335 (2 * (n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A085614.P4655465599391825564

/-!
# A085616: Numbers n == 3 (mod 8) such that there is only one solution to i^2+j^2+k^2=n, i >= j >= k >= 0.

The programs for A085616, there is no canonical definition to state claims against.
-/

/-! ## A085616.P10524438430866711874

`8*A060773(n)+3`
-/

namespace A085616.P10524438430866711874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A060773 n + 3

end

end A085616.P10524438430866711874

/-! ## A085616.P6655561280378474005

`∩[A025321(n+1), 4*n-1]`
-/

namespace A085616.P6655561280378474005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085616.P6655561280378474005

/-! ## A085616.P6677427329901044320

`∩[A094942(n+1), 4*n-5]`
-/

namespace A085616.P6677427329901044320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085616.P6677427329901044320

/-! ## A085616.P162184489958001890

`A017101(A060773(n))`
-/

namespace A085616.P162184489958001890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A060773 n).toNat

end

end A085616.P162184489958001890

/-! ## A085616.P5693786479210501615

`A004767(2*A060773(n))`
-/

namespace A085616.P5693786479210501615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * A060773 n).toNat

end

end A085616.P5693786479210501615

/-!
# A085617: Number of nonisomorphic 2-graphs with 2n nodes with first cohomology invariant nonzero, second cohomology invariant 0.

The programs for A085617, there is no canonical definition to state claims against.
-/

/-! ## A085617.P8907560712016762586

`14*(a(n-1)+11)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=17`
-/

namespace A085617.P8907560712016762586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 17] fun n a =>
  14 * (a (n - 1) + 11)

end

end A085617.P8907560712016762586

/-!
# A085622: Maximal number of segments (equivalently, corners) in a rook circuit of a 2n X 2n board.

The programs for A085622, the canonical program `A085622.P18371802229830984925` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085622 has offset 0).

The definition of A085622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085622.P18371802229830984925

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=28, a(4)=56, a(5)=88`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085622

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P18371802229830984925.Spec : Prop :=
  ∀ n, P18371802229830984925.a n = A085622 n

theorem P18371802229830984925.correct : P18371802229830984925.Spec := by
  intro n
  simp only [A085622]

end A085622

/-! ## A085622.P12726256131251115956

`A004277(A004526(n))*A296910(n)`
-/

namespace A085622.P12726256131251115956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004526 n).toNat * A296910 n

end

end A085622.P12726256131251115956

namespace A085622

/-- `A004277(A004526(n))*A296910(n)` -/
def P12726256131251115956.Spec : Prop :=
  ∀ n, P12726256131251115956.a n = A085622 n

end A085622

/-! ## A085622.P9442157162273199687

`A004275(A008619(n))*A296910(n)`
-/

namespace A085622.P9442157162273199687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A008619 n).toNat * A296910 n

end

end A085622.P9442157162273199687

namespace A085622

/-- `A004275(A008619(n))*A296910(n)` -/
def P9442157162273199687.Spec : Prop :=
  ∀ n, P9442157162273199687.a n = A085622 n

end A085622

/-! ## A085622.P3095389543559343415

`A028310(A052928(n))*A296910(n)`
-/

namespace A085622.P3095389543559343415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A052928 n).toNat * A296910 n

end

end A085622.P3095389543559343415

namespace A085622

/-- `A028310(A052928(n))*A296910(n)` -/
def P3095389543559343415.Spec : Prop :=
  ∀ n, P3095389543559343415.a n = A085622 n

end A085622

/-! ## A085622.P12283161480582316478

`A004273(A052928(n))+A004280(n+1)²`
-/

namespace A085622.P12283161480582316478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A052928 n).toNat + A004280 (n + 1) ^ 2

end

end A085622.P12283161480582316478

namespace A085622

/-- `A004273(A052928(n))+A004280(n+1)²` -/
def P12283161480582316478.Spec : Prop :=
  ∀ n, P12283161480582316478.a n = A085622 n

end A085622

/-! ## A085622.P1900279832806301568

`A028387(A004275(n))-A062157(n)`
-/

namespace A085622.P1900279832806301568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A004275 n).toNat - A062157 n

end

end A085622.P1900279832806301568

namespace A085622

/-- `A028387(A004275(n))-A062157(n)` -/
def P1900279832806301568.Spec : Prop :=
  ∀ n, P1900279832806301568.a n = A085622 n

end A085622

/-! ## A085622.P2450235565247914303

`A005563(A004275(n))+A004275(or(1, n))`
-/

namespace A085622.P2450235565247914303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A004275 n).toNat + A004275 (Nat.lor 1 n)

end

end A085622.P2450235565247914303

namespace A085622

/-- `A005563(A004275(n))+A004275(or(1, n))` -/
def P2450235565247914303.Spec : Prop :=
  ∀ n, P2450235565247914303.a n = A085622 n

end A085622

/-! ## A085622.P1388259976492590360

`A008574(A004526(n))+A005563(A004275(n))`
-/

namespace A085622.P1388259976492590360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A004526 n).toNat + A005563 (A004275 n).toNat

end

end A085622.P1388259976492590360

namespace A085622

/-- `A008574(A004526(n))+A005563(A004275(n))` -/
def P1388259976492590360.Spec : Prop :=
  ∀ n, P1388259976492590360.a n = A085622 n

end A085622

/-! ## A085622.P16682626192763187936

`A005563(A004275(n))+A004275(A109613(n))`
-/

namespace A085622.P16682626192763187936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A004275 n).toNat + A004275 (A109613 n).toNat

end

end A085622.P16682626192763187936

namespace A085622

/-- `A005563(A004275(n))+A004275(A109613(n))` -/
def P16682626192763187936.Spec : Prop :=
  ∀ n, P16682626192763187936.a n = A085622 n

end A085622

/-! ## A085622.P15596814085391882432

`A004277(abs(A042948(n²)-n-n)+n)`
-/

namespace A085622.P15596814085391882432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (|A042948 (n ^ 2) - (n : ℤ) - (n : ℤ)| + (n : ℤ)).toNat

end

end A085622.P15596814085391882432

namespace A085622

/-- `A004277(abs(A042948(n²)-n-n)+n)` -/
def P15596814085391882432.Spec : Prop :=
  ∀ n, P15596814085391882432.a n = A085622 n

end A085622

/-!
# A085623: Let p = n-th prime; a(n) = number of pairs (i,j) with 0 < i < p, 0 < j < p such that i*j == 1 mod p and i and j have opposite parity.

The programs for A085623, there is no canonical definition to state claims against.
-/

/-! ## A085623.P8856159970699847501

`2*A201652(n+2)`
-/

namespace A085623.P8856159970699847501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201652 (n + 2)

end

end A085623.P8856159970699847501

/-! ## A085623.P7390330776359612857

`A005843(A201652(n+2))`
-/

namespace A085623.P7390330776359612857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A201652 (n + 2)).toNat

end

end A085623.P7390330776359612857

/-! ## A085623.P13222266511213338372

`A201652(2+n)+A201652(n+2)`
-/

namespace A085623.P13222266511213338372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201652 (2 + n) + A201652 (n + 2)

end

end A085623.P13222266511213338372

/-! ## A085623.P5309736550771693272

`A005408(A201652(n+2))-A008836(n+1)²`
-/

namespace A085623.P5309736550771693272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A201652 (n + 2)).toNat - A008836 (n + 1) ^ 2

end

end A085623.P5309736550771693272

/-! ## A085623.P437793877819328695

`A005408(A201652(n+2))-A320001(A320028(n+2))`
-/

namespace A085623.P437793877819328695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A201652 (n + 2)).toNat - A320001 (A320028 (n + 2)).toNat

end

end A085623.P437793877819328695

/-!
# A085624: Sum of the entries in the character table of the dihedral group D_{2n} of order 2n.

The programs for A085624, the canonical program `A085624.P18143120191164556185` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085624 has offset 1).

The definition of A085624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085624.P18143120191164556185

`a(n-4)+6` with `a(0)=2, a(1)=4, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085624

/-- `a(n-4)+6` -/
def P18143120191164556185.Spec : Prop :=
  ∀ n, (P18143120191164556185.a n : ℤ) = A085624 (n + 1)

theorem P18143120191164556185.correct : P18143120191164556185.Spec := by
  intro n
  simp only [A085624, Nat.add_sub_cancel]

end A085624

/-! ## A085624.P13233548028152550121

`∑[xor(1, a(n-2))]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A085624.P13233548028152550121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  Nat.xor 1 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085624.P13233548028152550121

namespace A085624

/-- `∑[xor(1, a(n-2))]` -/
def P13233548028152550121.Spec : Prop :=
  ∀ n, (P13233548028152550121.a n : ℤ) = A085624 (n + 1)

end A085624

/-! ## A085624.P10768165253078793701

`∑[abs(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3, a(4)=0`
-/

namespace A085624.P10768165253078793701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085624.P10768165253078793701

namespace A085624

/-- `∑[abs(a(n-4))]` -/
def P10768165253078793701.Spec : Prop :=
  ∀ n, (P10768165253078793701.a n : ℤ) = A085624 (n + 1)

end A085624

/-! ## A085624.P15778350808366613693

`∑[dr(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3, a(4)=0`
-/

namespace A085624.P15778350808366613693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3, 0] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085624.P15778350808366613693

namespace A085624

/-- `∑[dr(a(n-4))]` -/
def P15778350808366613693.Spec : Prop :=
  ∀ n, (P15778350808366613693.a n : ℤ) = A085624 (n + 1)

end A085624

/-! ## A085624.P15112693653178125628

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A085624.P15112693653178125628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085624.P15112693653178125628

namespace A085624

/-- `∑[floor(a(n-4))]` -/
def P15112693653178125628.Spec : Prop :=
  ∀ n, (P15112693653178125628.a n : ℤ) = A085624 (n + 1)

end A085624

/-! ## A085624.P3217224037107384073

`∑[ceil(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3, a(4)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A085624.P3217224037107384073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085624.P3217224037107384073

namespace A085624

/-- `∑[ceil(a(n-4))]` -/
def P3217224037107384073.Spec : Prop :=
  ∀ n, (P3217224037107384073.a n : ℤ) = A085624 (n + 1)

end A085624

/-! ## A085624.P3317346956755839825

`∑[round(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3, a(4)=0`

`round` is left out, it is the identity on integers.
-/

namespace A085624.P3317346956755839825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085624.P3317346956755839825

namespace A085624

/-- `∑[round(a(n-4))]` -/
def P3317346956755839825.Spec : Prop :=
  ∀ n, (P3317346956755839825.a n : ℤ) = A085624 (n + 1)

end A085624

/-! ## A085624.P3524026331456961793

`∑[a(n-4)%4]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3, a(4)=0`
-/

namespace A085624.P3524026331456961793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3, 0] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085624.P3524026331456961793

namespace A085624

/-- `∑[a(n-4)%4]` -/
def P3524026331456961793.Spec : Prop :=
  ∀ n, (P3524026331456961793.a n : ℤ) = A085624 (n + 1)

end A085624

/-! ## A085624.P8802184112171718481

`(gcd(4, n+1)+3*(n+1))/2`
-/

namespace A085624.P8802184112171718481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n + 1) + 3 * (n + 1) : ℚ) / 2

end

end A085624.P8802184112171718481

namespace A085624

/-- `(gcd(4, n+1)+3*(n+1))/2` -/
def P8802184112171718481.Spec : Prop :=
  ∀ n, P8802184112171718481.a n = (A085624 (n + 1) : ℚ)

end A085624

/-! ## A085624.P13459898001340904806

`∑[5-a(n-1)-a(a(n-2))]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A085624.P13459898001340904806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  5 - f1 (n - 1) - f1 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085624.P13459898001340904806

namespace A085624

/-- `∑[5-a(n-1)-a(a(n-2))]` -/
def P13459898001340904806.Spec : Prop :=
  ∀ n, P13459898001340904806.a n = A085624 (n + 1)

end A085624

/-! ## A085624.P8791685733189844291

`A187326(n+1)+2`
-/

namespace A085624.P8791685733189844291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 (n + 1) + 2

end

end A085624.P8791685733189844291

namespace A085624

/-- `A187326(n+1)+2` -/
def P8791685733189844291.Spec : Prop :=
  ∀ n, P8791685733189844291.a n = A085624 (n + 1)

end A085624

/-! ## A085624.P9179509980971424059

`∑[and(3, A080412(n))]+2`
-/

namespace A085624.P9179509980971424059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A080412 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A085624.P9179509980971424059

namespace A085624

/-- `∑[and(3, A080412(n))]+2` -/
def P9179509980971424059.Spec : Prop :=
  ∀ n, P9179509980971424059.a n = A085624 (n + 1)

end A085624

/-! ## A085624.P15801870654795373041

`A047255(n+2)+and(1, n)`
-/

namespace A085624.P15801870654795373041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 2) + (Nat.land 1 n : ℤ)

end

end A085624.P15801870654795373041

namespace A085624

/-- `A047255(n+2)+and(1, n)` -/
def P15801870654795373041.Spec : Prop :=
  ∀ n, P15801870654795373041.a n = A085624 (n + 1)

end A085624

/-! ## A085624.P6016743179399717434

`∑[n%2+1]+A048735(n)%2+1`
-/

namespace A085624.P6016743179399717434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (Int.tmod (A048735 n) 2 + 1)

end

end A085624.P6016743179399717434

namespace A085624

/-- `∑[n%2+1]+A048735(n)%2+1` -/
def P6016743179399717434.Spec : Prop :=
  ∀ n, P6016743179399717434.a n = A085624 (n + 1)

end A085624

/-! ## A085624.P8936577779903780244

`ceil(∑[3*n+2]/(n+1))+A177704(n)-1`
-/

namespace A085624.P8936577779903780244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌉ + (A177704 n - 1)

end

end A085624.P8936577779903780244

namespace A085624

/-- `ceil(∑[3*n+2]/(n+1))+A177704(n)-1` -/
def P8936577779903780244.Spec : Prop :=
  ∀ n, P8936577779903780244.a n = A085624 (n + 1)

end A085624

/-! ## A085624.P316900405445731025

`A177704(n)+∑[A000034(n)]`
-/

namespace A085624.P316900405445731025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085624.P316900405445731025

namespace A085624

/-- `A177704(n)+∑[A000034(n)]` -/
def P316900405445731025.Spec : Prop :=
  ∀ n, P316900405445731025.a n = A085624 (n + 1)

end A085624

/-! ## A085624.P12450651263946747024

`A047273(n+1)+A010693(n)`
-/

namespace A085624.P12450651263946747024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + A010693 n

end

end A085624.P12450651263946747024

namespace A085624

/-- `A047273(n+1)+A010693(n)` -/
def P12450651263946747024.Spec : Prop :=
  ∀ n, P12450651263946747024.a n = A085624 (n + 1)

end A085624

/-! ## A085624.P5459154505253999812

`A093148(n)+A047251(n+1)`
-/

namespace A085624.P5459154505253999812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 n + A047251 (n + 1)

end

end A085624.P5459154505253999812

namespace A085624

/-- `A093148(n)+A047251(n+1)` -/
def P5459154505253999812.Spec : Prop :=
  ∀ n, P5459154505253999812.a n = A085624 (n + 1)

end A085624

/-!
# A085625: Numbers that are the sum of 2 squares in exactly 2 ways.

The programs for A085625, the canonical program `A085625.P6702584574209148891` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085625 has offset 1).

The definition of A085625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085625.P6702584574209148891

`eq[A025426(n), A169695(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A085625

/-- `eq[A025426(n), A169695(n)]` -/
def P6702584574209148891.Spec : Prop :=
  ∀ n, (P6702584574209148891.a n : ℤ) = A085625 (n + 1)

theorem P6702584574209148891.correct : P6702584574209148891.Spec := by
  intro n
  simp only [A085625, Nat.add_sub_cancel]

end A085625

/-! ## A085625.P628021072492182062

`eq[2, A000161(n)]`
-/

namespace A085625.P628021072492182062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085625.P628021072492182062

namespace A085625

/-- `eq[2, A000161(n)]` -/
def P628021072492182062.Spec : Prop :=
  ∀ n, (P628021072492182062.a n : ℤ) = A085625 (n + 1)

end A085625

/-! ## A085625.P9423830931638548404

`eq[2, ceil(A000925(n)/2)]`
-/

namespace A085625.P9423830931638548404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000925 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085625.P9423830931638548404

namespace A085625

/-- `eq[2, ceil(A000925(n)/2)]` -/
def P9423830931638548404.Spec : Prop :=
  ∀ n, (P9423830931638548404.a n : ℤ) = A085625 (n + 1)

end A085625

/-! ## A085625.P4396971670496581545

`eq[0, A237619(A000925(n))]`
-/

namespace A085625.P4396971670496581545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237619 (A000925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085625.P4396971670496581545

namespace A085625

/-- `eq[0, A237619(A000925(n))]` -/
def P4396971670496581545.Spec : Prop :=
  ∀ n, (P4396971670496581545.a n : ℤ) = A085625 (n + 1)

end A085625

/-! ## A085625.P3716454398827478901

`eq[1, A026799(A004018(n))]`
-/

namespace A085625.P3716454398827478901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026799 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085625.P3716454398827478901

namespace A085625

/-- `eq[1, A026799(A004018(n))]` -/
def P3716454398827478901.Spec : Prop :=
  ∀ n, (P3716454398827478901.a n : ℤ) = A085625 (n + 1)

end A085625

/-! ## A085625.P773153566835984811

`eq[A025426(n), A263765(n)]`
-/

namespace A085625.P773153566835984811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085625.P773153566835984811

namespace A085625

/-- `eq[A025426(n), A263765(n)]` -/
def P773153566835984811.Spec : Prop :=
  ∀ n, (P773153566835984811.a n : ℤ) = A085625 (n + 1)

end A085625

/-!
# A085626: Partial sums of A051935.

The programs for A085626, there is no canonical definition to state claims against.
-/

/-! ## A085626.P15438540627708836499

`∑[A051935(n+1)]`
-/

namespace A085626.P15438540627708836499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085626.P15438540627708836499

/-! ## A085626.P14401993546293421306

`A073847(n)+A000007(n)`
-/

namespace A085626.P14401993546293421306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073847 n + A000007 n

end

end A085626.P14401993546293421306

/-! ## A085626.P16884451807212466500

`A054977(n)*A073847(n)`
-/

namespace A085626.P16884451807212466500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A073847 n

end

end A085626.P16884451807212466500

/-! ## A085626.P10625615795609297828

`record[A070865(n+1)/C(2, n)!]`
-/

namespace A085626.P10625615795609297828
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070865 (n + 1) : ℚ) / (Nat.factorial (Nat.choose 2 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085626.P10625615795609297828

/-! ## A085626.P2250402500084501778

`A070865(n+2)+C(n, a(n-1))` with `a(0)=2`
-/

namespace A085626.P2250402500084501778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070865 (n + 2) + (Nat.choose n (a (n - 1)).toNat : ℤ)

end

end A085626.P2250402500084501778

/-! ## A085626.P7329149564208387303

`A070865(A065475(n+1))`
-/

namespace A085626.P7329149564208387303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (A065475 (n + 1)).toNat

end

end A085626.P7329149564208387303

/-! ## A085626.P9264195448522644433

`A070865(A181440(n+2))`
-/

namespace A085626.P9264195448522644433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (A181440 (n + 2)).toNat

end

end A085626.P9264195448522644433

/-! ## A085626.P13351417920156466507

`A070865(A184985(n+2))`
-/

namespace A085626.P13351417920156466507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (A184985 (n + 2)).toNat

end

end A085626.P13351417920156466507

/-! ## A085626.P17683867543447175063

`A070865(A057427(n)+1+n)`
-/

namespace A085626.P17683867543447175063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (A057427 n + 1 + (n : ℤ)).toNat

end

end A085626.P17683867543447175063

/-! ## A085626.P2373471608409077840

`A070865(2-A000007(n)+n)`
-/

namespace A085626.P2373471608409077840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (2 - A000007 n + (n : ℤ)).toNat

end

end A085626.P2373471608409077840

/-! ## A085626.P2591037269414819909

`A070865(2-(A000007(n)-n))`
-/

namespace A085626.P2591037269414819909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (2 - (A000007 n - (n : ℤ))).toNat

end

end A085626.P2591037269414819909

/-! ## A085626.P15375959392287796832

`A159075(n+1)+A070865(n+2)`
-/

namespace A085626.P15375959392287796832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (n + 1) + A070865 (n + 2)

end

end A085626.P15375959392287796832

/-! ## A085626.P16294434595378887201

`A073847(n+1)-A051935(n+2)`
-/

namespace A085626.P16294434595378887201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073847 (n + 1) - A051935 (n + 2)

end

end A085626.P16294434595378887201

/-! ## A085626.P3762409568490574803

`A070865(n+2)-A019590(n+2)`
-/

namespace A085626.P3762409568490574803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 2) - A019590 (n + 2)

end

end A085626.P3762409568490574803

/-! ## A085626.P12705773855948947682

`A070865(n+2)-A010051(2*(n+1))`
-/

namespace A085626.P12705773855948947682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 2) - A010051 (2 * (n + 1))

end

end A085626.P12705773855948947682

/-! ## A085626.P15589817600254248744

`A070865(n+2-A109578(2*n+1))`
-/

namespace A085626.P15589817600254248744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 ((n + 2 : ℤ) - A109578 (2 * n + 1)).toNat

end

end A085626.P15589817600254248744

/-! ## A085626.P2432142478946832890

`A070865(A105560(A105560(n+1))+n)`
-/

namespace A085626.P2432142478946832890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (A105560 (A105560 (n + 1)).toNat + (n : ℤ)).toNat

end

end A085626.P2432142478946832890

/-! ## A085626.P1131500768566582586

`A070865(n+3)-A051935(n+2)`
-/

namespace A085626.P1131500768566582586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 3) - A051935 (n + 2)

end

end A085626.P1131500768566582586

/-! ## A085626.P4387485794735322741

`A070865(A352894(2*n+1)+n+1)`
-/

namespace A085626.P4387485794735322741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (A352894 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A085626.P4387485794735322741

/-! ## A085626.P18030236394663000127

`A070865(n+2)-A049084(2*(n+1))`
-/

namespace A085626.P18030236394663000127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 2) - A049084 (2 * (n + 1))

end

end A085626.P18030236394663000127

/-!
# A085627: Number of divisors of n-th highly powerful number.

The programs for A085627, there is no canonical definition to state claims against.
-/

/-! ## A085627.P2514773671497319432

`A000005(A005934(n+1))`
-/

namespace A085627.P2514773671497319432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005934 (n + 1)).toNat

end

end A085627.P2514773671497319432

/-! ## A085627.P15011261388999796564

`∑{d}[A005934(n+1), gcd(#, A011594(n))]`
-/

namespace A085627.P15011261388999796564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A011594 n)

end

end A085627.P15011261388999796564

/-! ## A085627.P8645317418406680225

`record[A000005(A353500(n+1))]`
-/

namespace A085627.P8645317418406680225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A353500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085627.P8645317418406680225

/-! ## A085627.P16885982335395255394

`∑{d}[A005934(n+1), A016014(A006530(#))]`
-/

namespace A085627.P16885982335395255394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A016014 (A006530 d).toNat

end

end A085627.P16885982335395255394

/-!
# A085628: Number of antisymmetric transitive binary relations on n labeled points.

The programs for A085628, there is no canonical definition to state claims against.
-/

/-! ## A085628.P18336806852609250054

`2^n*A001035(n)`
-/

namespace A085628.P18336806852609250054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001035 n

end

end A085628.P18336806852609250054

/-! ## A085628.P7869272398767466722

`lcm(A000079(n), A001035(n))`
-/

namespace A085628.P7869272398767466722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001035 n)

end

end A085628.P7869272398767466722

/-! ## A085628.P12990570011958891286

`A001035(n)*A011782(n+1)`
-/

namespace A085628.P12990570011958891286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001035 n * A011782 (n + 1)

end

end A085628.P12990570011958891286

/-! ## A085628.P12247125993317767602

`∑[A011782(n)]*A245767(∑[n])`
-/

namespace A085628.P12247125993317767602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A245767 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A085628.P12247125993317767602

/-! ## A085628.P4376286986419392693

`A001035(n)*A101508(A000217(n))`
-/

namespace A085628.P4376286986419392693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001035 n * A101508 (A000217 n).toNat

end

end A085628.P4376286986419392693

/-!
# A085630: Number of n-digit 7-smooth numbers (A002473).

The programs for A085630, there is no canonical definition to state claims against.
-/

/-! ## A085630.P13808752347756054008

`record[Δ[A106600(ceil((n-1)/2))]]`
-/

namespace A085630.P13808752347756054008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106600 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085630.P13808752347756054008

/-! ## A085630.P14215353760993358216

`Δ[A106600(round(sqrt(n²+1))-1)]`
-/

namespace A085630.P14215353760993358216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106600 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085630.P14215353760993358216

/-!
# A085631: Let b(n)=product of exponents of prime factorization of n. Sequence gives palindromes n such that b(n) is also palindromic and sets a new record.

The programs for A085631, there is no canonical definition to state claims against.
-/

/-! ## A085631.P10502169688286617049

`filter[A348050(n+1), A120526(#)]`
-/

namespace A085631.P10502169688286617049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120526 (f1 j).toNat = 1) n)

end

end A085631.P10502169688286617049

/-! ## A085631.P3239359235155903156

`A046385(record[and(n, A046377(n+1))])`
-/

namespace A085631.P3239359235155903156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A046377 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046385 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085631.P3239359235155903156

/-!
# A085632: Number of connected coin graphs, also known as "penny" graphs.

The programs for A085632, there is no canonical definition to state claims against.
-/

/-! ## A085632.P1001509397594337348

`A107268(n)-A107264(n)%A072493(2*n+1)`
-/

namespace A085632.P1001509397594337348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107268 n - Int.tmod (A107264 n) (A072493 (2 * n + 1))

end

end A085632.P1001509397594337348

/-! ## A085632.P17546620817935311686

`A091529(A291419(n))`
-/

namespace A085632.P17546620817935311686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091529 (A291419 n).toNat

end

end A085632.P17546620817935311686

/-! ## A085632.P9760219563257749636

`A356137(A337762(n))`
-/

namespace A085632.P9760219563257749636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356137 (A337762 n).toNat

end

end A085632.P9760219563257749636

/-!
# A085633: Number of not necessarily connected coin graphs, also known as "penny" graphs.

The programs for A085633, there is no canonical definition to state claims against.
-/

/-! ## A085633.P6693674446425215908

`A157271(A047046(n)+A006918(n))`
-/

namespace A085633.P6693674446425215908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A047046 n + A006918 n).toNat

end

end A085633.P6693674446425215908

/-! ## A085633.P17466470406812115080

`A024417(A150246(n)+A100066(n))`
-/

namespace A085633.P17466470406812115080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A150246 n + A100066 n).toNat

end

end A085633.P17466470406812115080

/-! ## A085633.P6174402116698949163

`A090930(A090902(n+1))+A072796(n)`
-/

namespace A085633.P6174402116698949163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A090902 (n + 1)).toNat + A072796 n

end

end A085633.P6174402116698949163

/-!
# A085634: Numbers of the form 2^a + 3^b = 2^c + 3^d for nonnegative a, b, c, d and a <> c.

The programs for A085634, there is no canonical definition to state claims against.
-/

/-! ## A085634.P13450898515245809238

`2*A133504(3*n+2)+3`
-/

namespace A085634.P13450898515245809238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133504 (3 * n + 2) + 3

end

end A085634.P13450898515245809238

/-!
# A085635: Compute S, the number of different quadratic residues modulo B for every base B. If the density S/B is smaller for B than for every B' less than B, then B is added to the sequence.

The programs for A085635, there is no canonical definition to state claims against.
-/

/-! ## A085635.P2860750019809094234

`A000005(lcm(A076000(n+1), A310398(n)))`
-/

namespace A085635.P2860750019809094234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A076000 (n + 1)) (A310398 n))

end

end A085635.P2860750019809094234

/-! ## A085635.P2996382702447364110

`record[A000005(C(A047412(n+1), n))]`
-/

namespace A085635.P2996382702447364110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A047412 (n + 1)).toNat n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085635.P2996382702447364110

/-! ## A085635.P15523648509588389064

`A033676(A001792(n)*A209727(n+1))`
-/

namespace A085635.P15523648509588389064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A001792 n * A209727 (n + 1)).toNat

end

end A085635.P15523648509588389064

/-! ## A085635.P9486817269380046864

`A033676(A001792(n)*A003057(n+2))`
-/

namespace A085635.P9486817269380046864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A001792 n * A003057 (n + 2)).toNat

end

end A085635.P9486817269380046864

/-! ## A085635.P9247885767986655772

`A033676(A001792(n)*A205780(n+3))`
-/

namespace A085635.P9247885767986655772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A001792 n * A205780 (n + 3)).toNat

end

end A085635.P9247885767986655772

/-!
# A085637: Numbers k such that k*prime(k) -+ 1 are twin primes.

The programs for A085637, there is no canonical definition to state claims against.
-/

/-! ## A085637.P7920673142750630477

`∩[A086172(n+1), A086173(n+1)]`
-/

namespace A085637.P7920673142750630477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085637.P7920673142750630477

/-! ## A085637.P14565056117995643857

`A000720(A080174(n+1))`
-/

namespace A085637.P14565056117995643857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A080174 (n + 1)).toNat

end

end A085637.P14565056117995643857

/-! ## A085637.P4327913859193508276

`A061395(p?[A080174(n+1)])`
-/

namespace A085637.P4327913859193508276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085637.P4327913859193508276

/-! ## A085637.P16850960723279883626

`A061395(or(1, A080174(n+1)))`
-/

namespace A085637.P16850960723279883626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A080174 (n + 1))).toNat

end

end A085637.P16850960723279883626

/-! ## A085637.P17611714899307074722

`∑{d}[A080174(n+1), A061395(#)]`
-/

namespace A085637.P17611714899307074722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A085637.P17611714899307074722

/-!
# A085639: Ramanujan sum c_n(5).

The programs for A085639, there is no canonical definition to state claims against.
-/

/-! ## A085639.P6205089879459048644

`A054535(∑[n+4]+11)`
-/

namespace A085639.P6205089879459048644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A085639.P6205089879459048644

/-! ## A085639.P6949323432425342492

`A054535(A000124(n+4)+4)%6`
-/

namespace A085639.P6949323432425342492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054535 (A000124 (n + 4) + 4).toNat) 6

end

end A085639.P6949323432425342492

/-! ## A085639.P5641468943397037200

`Δ[A007094(n)]*A054535(A000124(n+4)+4)`
-/

namespace A085639.P5641468943397037200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054535 (A000124 (n + 4) + 4).toNat

end

end A085639.P5641468943397037200

/-! ## A085639.P18394883635825471359

`A054535(A000124(n+4)+4)*A293668(3*n)`
-/

namespace A085639.P18394883635825471359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (A000124 (n + 4) + 4).toNat * A293668 (3 * n)

end

end A085639.P18394883635825471359

/-! ## A085639.P11958471122047621162

`Δ[A020654(n+1)]*A054535(A000124(n+4)+4)`
-/

namespace A085639.P11958471122047621162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054535 (A000124 (n + 4) + 4).toNat

end

end A085639.P11958471122047621162

/-! ## A085639.P2184033054626947405

`A001222(A006512(n+1))*A054535(A000124(n+4)+4)`
-/

namespace A085639.P2184033054626947405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006512 (n + 1)).toNat * A054535 (A000124 (n + 4) + 4).toNat

end

end A085639.P2184033054626947405

/-! ## A085639.P1614041551972894185

`A001222(A007821(n+1))*A054535(A000124(n+4)+4)`
-/

namespace A085639.P1614041551972894185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007821 (n + 1)).toNat * A054535 (A000124 (n + 4) + 4).toNat

end

end A085639.P1614041551972894185

/-! ## A085639.P48241333865518699

`A001222(A084696(n+1))*A054535(A000124(n+4)+4)`
-/

namespace A085639.P48241333865518699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084696 (n + 1)).toNat * A054535 (A000124 (n + 4) + 4).toNat

end

end A085639.P48241333865518699

/-! ## A085639.P8072625744912997606

`A001222(A065091(n+2))*A054535(A000124(n+4)+4)`
-/

namespace A085639.P8072625744912997606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065091 (n + 2)).toNat * A054535 (A000124 (n + 4) + 4).toNat

end

end A085639.P8072625744912997606

/-! ## A085639.P3244506465731034787

`A054534(∑[n+5]+6)`
-/

namespace A085639.P3244506465731034787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A085639.P3244506465731034787

/-! ## A085639.P9971378936793704692

`A054532(eq[3, A219347(n)])`
-/

namespace A085639.P9971378936793704692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085639.P9971378936793704692

/-! ## A085639.P1531577810429359857

`A054532(Δ[n²]+A000124(n+4)+4)`
-/

namespace A085639.P1531577810429359857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A085639.P1531577810429359857

/-!
# A085640: Resultant of the polynomial x^3-1 and the Chebyshev polynomial of the first kind T_n(x).

The programs for A085640, there is no canonical definition to state claims against.
-/

/-! ## A085640.P16812856028039572148

`∑[A316027(lcm(n, a(n-1)))]` with `a(0)=1`
-/

namespace A085640.P16812856028039572148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A316027 (Int.lcm (n : ℤ) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085640.P16812856028039572148

/-!
# A085641: Smallest prime == 1 (mod p*q*...*k) where p, q, ..., k are all the distinct prime divisors of n. Or, smallest prime == 1 (mod the largest squarefree divisor of n).

The programs for A085641, there is no canonical definition to state claims against.
-/

/-! ## A085641.P9097501587679459018

`A034694(A007947(n+1))`
-/

namespace A085641.P9097501587679459018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A007947 (n + 1)).toNat

end

end A085641.P9097501587679459018

/-! ## A085641.P3812294549136117990

`A034694(∏{p}[n+1, #])`
-/

namespace A085641.P3812294549136117990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A085641.P3812294549136117990

/-! ## A085641.P521269306223052939

`A034694(2^∑{p}[n+1, log2(#)])`
-/

namespace A085641.P521269306223052939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)))).toNat

end

end A085641.P521269306223052939

/-! ## A085641.P5412865060069927850

`A034694(sqrt(∏{p}[2*n-(n-1), #²]))`
-/

namespace A085641.P5412865060069927850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.roundAway (Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2 : ℕ) : ℝ))).toNat

end

end A085641.P5412865060069927850

/-! ## A085641.P13778087987899637409

`∏{p}[n+1, #]*A034693(∏{p}[n+1, #])+1`
-/

namespace A085641.P13778087987899637409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A034693 (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

end

end A085641.P13778087987899637409

/-! ## A085641.P11072805314286683695

`A034694((n+1)/A003557(n+1))`
-/

namespace A085641.P11072805314286683695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A085641.P11072805314286683695

/-! ## A085641.P8622732712928793722

`A034694(gcd(n+1, A076998(n+1)))`
-/

namespace A085641.P8622732712928793722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Int.gcd (n + 1 : ℤ) (A076998 (n + 1)))

end

end A085641.P8622732712928793722

/-! ## A085641.P13091735814759996630

`A086507(A066043(∏{p}[n+1, #]))`
-/

namespace A085641.P13091735814759996630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (A066043 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A085641.P13091735814759996630

/-!
# A085642: Number of columns in the character table of the symmetric group S_n that have zero sum.

The programs for A085642, there is no canonical definition to state claims against.
-/

/-! ## A085642.P6272485664884503085

`A000041(n+1)-A006950(n+1)`
-/

namespace A085642.P6272485664884503085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A006950 (n + 1)

end

end A085642.P6272485664884503085

/-! ## A085642.P7583481240191333315

`A000041(n+1)-(A059777(n+1)+A059777(n))`
-/

namespace A085642.P7583481240191333315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A059777 (n + 1) + A059777 n)

end

end A085642.P7583481240191333315

/-! ## A085642.P15858497788653337276

`A000041(n+1)+A233969(n)-A233969(n+1)`
-/

namespace A085642.P15858497788653337276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A233969 n - A233969 (n + 1))

end

end A085642.P15858497788653337276

/-! ## A085642.P9297213691310698172

`A000701(n+1)+A046682(n+1)-A006950(n+1)`
-/

namespace A085642.P9297213691310698172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (n + 1) + (A046682 (n + 1) - A006950 (n + 1))

end

end A085642.P9297213691310698172

/-! ## A085642.P11976717920776616117

`A027187(n+1)+A027193(n+1)-A006950(n+1)`
-/

namespace A085642.P11976717920776616117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (n + 1) + (A027193 (n + 1) - A006950 (n + 1))

end

end A085642.P11976717920776616117

/-! ## A085642.P1795022070769506902

`A000070(n+1)-(A006950(n+1)+A000070(n))`
-/

namespace A085642.P1795022070769506902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A006950 (n + 1) + A000070 n)

end

end A085642.P1795022070769506902

/-! ## A085642.P12924750184529436750

`A035363(2*(n+1))-A006950(n+1)`
-/

namespace A085642.P12924750184529436750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A006950 (n + 1)

end

end A085642.P12924750184529436750

/-! ## A085642.P2992647431321531649

`A034891(n+1)+A353188(n+1)-A006950(n+1)`
-/

namespace A085642.P2992647431321531649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 (n + 1) + (A353188 (n + 1) - A006950 (n + 1))

end

end A085642.P2992647431321531649

/-!
# A085643: Irregular triangle T(n,k) = A048996(n,k) * A118851(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A085643, there is no canonical definition to state claims against.
-/

/-! ## A085643.P15318815821397422165

`A048996(n)*A118851(n)`
-/

namespace A085643.P15318815821397422165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n * A118851 n

end

end A085643.P15318815821397422165

/-! ## A085643.P3409228793985976774

`A178802(n)/A121457(n)`
-/

namespace A085643.P3409228793985976774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A121457 n : ℚ)

end

end A085643.P3409228793985976774

/-! ## A085643.P9466093942569342152

`A305309(floor(1/(n+1))+n)`
-/

namespace A085643.P9466093942569342152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305309 (⌊1 / (n + 1 : ℚ)⌋ + (n : ℤ)).toNat

end

end A085643.P9466093942569342152

/-! ## A085643.P2668709711242455384

`A091316(A248927(n+1))`
-/

namespace A085643.P2668709711242455384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091316 (A248927 (n + 1)).toNat

end

end A085643.P2668709711242455384

/-!
# A085644: a(0) = 1; a(n+1) = a(n)*2n + 2n + 1.

The programs for A085644, the canonical program `A085644.P2243034531060243763` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085644 has offset 0).

The definition of A085644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085644.P2243034531060243763

`2*((n-1)*a(n-1)+n)-1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085644

/-- `2*((n-1)*a(n-1)+n)-1` -/
def P2243034531060243763.Spec : Prop :=
  ∀ n, P2243034531060243763.a n = A085644 n

theorem P2243034531060243763.correct : P2243034531060243763.Spec := by
  intro n
  simp only [A085644]

end A085644

/-! ## A085644.P17312411335508597332

`2*(a(n-1)+1)*(n-1)+1` with `a(0)=1`
-/

namespace A085644.P17312411335508597332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((a (n - 1) + 1) * ((n : ℤ) - 1)) + 1

end

end A085644.P17312411335508597332

namespace A085644

/-- `2*(a(n-1)+1)*(n-1)+1` -/
def P17312411335508597332.Spec : Prop :=
  ∀ n, P17312411335508597332.a n = A085644 n

end A085644

/-! ## A085644.P2074876440684927339

`2*(n-(1-n)*a(n-1))-1` with `a(0)=1`
-/

namespace A085644.P2074876440684927339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - (1 - (n : ℤ)) * a (n - 1)) - 1

end

end A085644.P2074876440684927339

namespace A085644

/-- `2*(n-(1-n)*a(n-1))-1` -/
def P2074876440684927339.Spec : Prop :=
  ∀ n, P2074876440684927339.a n = A085644 n

end A085644

/-! ## A085644.P8983655983657967084

`A077138(or(1, comp[2*n+3]))`
-/

namespace A085644.P8983655983657967084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077138 (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A085644.P8983655983657967084

namespace A085644

/-- `A077138(or(1, comp[2*n+3]))` -/
def P8983655983657967084.Spec : Prop :=
  ∀ n, P8983655983657967084.a n = A085644 n

end A085644

/-! ## A085644.P3076025427799904074

`A099760(n)-val(A099760(n), 2)`
-/

namespace A085644.P3076025427799904074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099760 n - (SequenceMachineLib.valuation (A099760 n).toNat 2 : ℤ)

end

end A085644.P3076025427799904074

namespace A085644

/-- `A099760(n)-val(A099760(n), 2)` -/
def P3076025427799904074.Spec : Prop :=
  ∀ n, P3076025427799904074.a n = A085644 n

end A085644

/-! ## A085644.P2471100034922112530

`A099760(A130706(2*n)+n)-1`
-/

namespace A085644.P2471100034922112530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099760 (A130706 (2 * n) + (n : ℤ)).toNat - 1

end

end A085644.P2471100034922112530

namespace A085644

/-- `A099760(A130706(2*n)+n)-1` -/
def P2471100034922112530.Spec : Prop :=
  ∀ n, P2471100034922112530.a n = A085644 n

end A085644

/-!
# A085645: Smallest number having exactly n divisors ending with 1 or 9.

The programs for A085645, there is no canonical definition to state claims against.
-/

/-! ## A085645.P1951865710771706693

`A337377(A055275(n)+4)`
-/

namespace A085645.P1951865710771706693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 (A055275 n + 4).toNat

end

end A085645.P1951865710771706693

/-!
# A085646: Sum of the entries in the character table of the group GL(2,Z_n).

The programs for A085646, there is no canonical definition to state claims against.
-/

/-! ## A085646.P10073638840181828367

`xor(∑{d}[n+1, #²%3], A347793(2^(n+2)-4))`
-/

namespace A085646.P10073638840181828367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 % 3 : ℕ) : ℤ) (A347793 (2 ^ (n + 2) - 4))

end

end A085646.P10073638840181828367

/-!
# A085647: Semiprimes whose prime factors p*q have an equal number of decimal digits and p is not equal to q.

The programs for A085647, there is no canonical definition to state claims against.
-/

/-! ## A085647.P7406423437328036588

`record[lcm(A239585(n+2), A239586(n+2))]`
-/

namespace A085647.P7406423437328036588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A239585 (n + 2)) (A239586 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085647.P7406423437328036588

/-! ## A085647.P7261921959617704802

`∩[A078972(n+1), A182301(n+1)]`
-/

namespace A085647.P7261921959617704802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085647.P7261921959617704802

/-! ## A085647.P13519720841744199123

`record[A007913(A078972(n+2))]`
-/

namespace A085647.P13519720841744199123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A078972 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085647.P13519720841744199123

/-! ## A085647.P7224322134625385106

`filter[A078972(n+1), A008966(#)]`
-/

namespace A085647.P7224322134625385106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A085647.P7224322134625385106

/-! ## A085647.P10929674740221910841

`filter[A182301(n+1), A354927(#)]`
-/

namespace A085647.P10929674740221910841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A085647.P10929674740221910841

/-! ## A085647.P6544607826640581253

`record[A007947(A078972(A020725(n+1)))]`
-/

namespace A085647.P6544607826640581253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A078972 (A020725 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085647.P6544607826640581253

/-! ## A085647.P18117536482563189596

`filter[A078972(n+1), A049240(#)]`
-/

namespace A085647.P18117536482563189596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A085647.P18117536482563189596

/-! ## A085647.P17235556756582601634

`filter[A182301(n+1), A064911(#)]`
-/

namespace A085647.P17235556756582601634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A085647.P17235556756582601634

/-! ## A085647.P6965649160237512559

`filter[A078972(n+1), A181183(#)]`
-/

namespace A085647.P6965649160237512559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A085647.P6965649160237512559

/-! ## A085647.P6672958514079331008

`filter[A182301(n+1), A101040(#)]`
-/

namespace A085647.P6672958514079331008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A085647.P6672958514079331008

/-! ## A085647.P11888687601595528493

`filter[A078972(n+1), A262684(#)]`
-/

namespace A085647.P11888687601595528493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A085647.P11888687601595528493

/-! ## A085647.P6832433956083851623

`filter[A078972(n+1), A280710(#)]`
-/

namespace A085647.P6832433956083851623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A085647.P6832433956083851623

/-! ## A085647.P13874962054509754077

`filter[A078972(n+1), A295316(#)]`
-/

namespace A085647.P13874962054509754077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A085647.P13874962054509754077

/-! ## A085647.P15328915873581154231

`filter[A078972(n+1), A323154(#)]`
-/

namespace A085647.P15328915873581154231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A085647.P15328915873581154231

/-! ## A085647.P10393581451280484026

`filter[A078972(n+1), A343219(#)]`
-/

namespace A085647.P10393581451280484026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A085647.P10393581451280484026

/-! ## A085647.P16917249401357896085

`filter[A078972(n+1), A353471(#)]`
-/

namespace A085647.P16917249401357896085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A085647.P16917249401357896085

/-! ## A085647.P10741482491235008194

`filter[A078972(n+1), A353519(#)]`
-/

namespace A085647.P10741482491235008194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A085647.P10741482491235008194

/-! ## A085647.P15395355459552619435

`filter[A078972(n+1), A353559(#)]`
-/

namespace A085647.P15395355459552619435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A085647.P15395355459552619435

/-! ## A085647.P4139531249989389699

`filter[A078972(n+1), A353629(#)]`
-/

namespace A085647.P4139531249989389699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A085647.P4139531249989389699

/-! ## A085647.P1617925065942960991

`filter[A078972(n+1), A353669(#)]`
-/

namespace A085647.P1617925065942960991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A085647.P1617925065942960991

/-!
# A085648: Brilliant numbers (A078972) whose digital sum is also brilliant.

The programs for A085648, there is no canonical definition to state claims against.
-/

/-! ## A085648.P5640905379342259677

`A078972(A180712(n)^A245501(2*n+1))`
-/

namespace A085648.P5640905379342259677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (SequenceMachineLib.roundAway ((A180712 n : ℚ) ^ (A245501 (2 * n + 1) : ℤ))).toNat

end

end A085648.P5640905379342259677

/-! ## A085648.P4262236254902388008

`A078972(A210434(A210434(A094056(2*n+1))))`
-/

namespace A085648.P4262236254902388008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (A210434 (A210434 (A094056 (2 * n + 1)).toNat).toNat).toNat

end

end A085648.P4262236254902388008

/-!
# A085651: Index of the first of two successive 2's in A005361.

The programs for A085651, there is no canonical definition to state claims against.
-/

/-! ## A085651.P1677411882684492931

`∩[A071318(n+1), A391396(n+1)]`
-/

namespace A085651.P1677411882684492931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085651.P1677411882684492931

/-! ## A085651.P10450480961696498039

`∩[A060687(n+1)-1, A060687(n+1)]`
-/

namespace A085651.P10450480961696498039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085651.P10450480961696498039

/-! ## A085651.P11334132610197146227

`A060687(eq[1, A060687(n+2)-A060687(n+1)]+1)`
-/

namespace A085651.P11334132610197146227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 2) - A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085651.P11334132610197146227

/-! ## A085651.P7363964814456412358

`∩[A060687(n+1), A358817(n+1)]`
-/

namespace A085651.P7363964814456412358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085651.P7363964814456412358

/-! ## A085651.P11343874439415566729

`∩[A071318(n+1), A391397(n+1)]`
-/

namespace A085651.P11343874439415566729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085651.P11343874439415566729

/-! ## A085651.P14245462159284027743

`∩[A340152(n+1), A391396(n+1)]`
-/

namespace A085651.P14245462159284027743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085651.P14245462159284027743

/-! ## A085651.P17997479753576321871

`∩[A391396(n+1), A398165(n+1)]`
-/

namespace A085651.P17997479753576321871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085651.P17997479753576321871

/-! ## A085651.P15460281523746205273

`∩[A391396(n+1), A398161(n+1)]`
-/

namespace A085651.P15460281523746205273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085651.P15460281523746205273

/-! ## A085651.P15351046987052609132

`eq[1, A046660(n+1)*A046660(A028310(n))]`
-/

namespace A085651.P15351046987052609132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) * A046660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085651.P15351046987052609132

/-! ## A085651.P3708640449015029145

`eq[1, A046660(n+1)*A046660(A138153(n+1))]`
-/

namespace A085651.P3708640449015029145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) * A046660 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085651.P3708640449015029145

/-!
# A085652: Fibonacci sequence in base 2 of the alternate number system.

The programs for A085652, there is no canonical definition to state claims against.
-/

/-! ## A085652.P12596481606458209393

`A007931(A000045(n+1))`
-/

namespace A085652.P12596481606458209393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A000045 (n + 1)).toNat

end

end A085652.P12596481606458209393

/-! ## A085652.P12014822121541851121

`A007931(Δ[floor(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A085652.P12014822121541851121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (f1 (n + 1) - f1 n).toNat

end

end A085652.P12014822121541851121

/-! ## A085652.P8817095796184768844

`A007931(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A085652.P8817095796184768844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (f1 (n + 1) - f1 n).toNat

end

end A085652.P8817095796184768844

/-! ## A085652.P3971552284393435075

`A007931(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A085652.P3971552284393435075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085652.P3971552284393435075

/-! ## A085652.P1053709688290781281

`A007931(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0`
-/

namespace A085652.P1053709688290781281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085652.P1053709688290781281

/-!
# A085653: a(n) = smallest integer > n where mu(n) = mu(a(n)).

The programs for A085653, there is no canonical definition to state claims against.
-/

/-! ## A085653.P10534732224457834839

`A093316(n+1)+1+n`
-/

namespace A085653.P10534732224457834839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093316 (n + 1) + 1 + (n : ℤ)

end

end A085653.P10534732224457834839

/-! ## A085653.P4556392554157043037

`A020725(A093316(n+1))+n`
-/

namespace A085653.P4556392554157043037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A093316 (n + 1)).toNat + (n : ℤ)

end

end A085653.P4556392554157043037

/-! ## A085653.P7126885586951708372

`A065475(A093316(n+1)+n)`
-/

namespace A085653.P7126885586951708372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A093316 (n + 1) + (n : ℤ)).toNat

end

end A085653.P7126885586951708372

/-! ## A085653.P6438404432704904850

`A093316(A077168(n))+A077168(n)`
-/

namespace A085653.P6438404432704904850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093316 (A077168 n).toNat + A077168 n

end

end A085653.P6438404432704904850

/-!
# A085655: Difference between number of primes not exceeding reversed n and n.

The programs for A085655, there is no canonical definition to state claims against.
-/

/-! ## A085655.P15107249886025009376

`A074719(n+1)-A000720(n+1)`
-/

namespace A085655.P15107249886025009376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074719 (n + 1) - A000720 (n + 1)

end

end A085655.P15107249886025009376

/-! ## A085655.P10572406019593223662

`A000720(A004086(n+1))-A000720(n+1)`
-/

namespace A085655.P10572406019593223662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A004086 (n + 1)).toNat - A000720 (n + 1)

end

end A085655.P10572406019593223662

/-! ## A085655.P18336837418666775199

`A036234(A004086(n+1))-A036234(n+1)`
-/

namespace A085655.P18336837418666775199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A004086 (n + 1)).toNat - A036234 (n + 1)

end

end A085655.P18336837418666775199

/-! ## A085655.P12439995905914517660

`A000720(A056964(n+1)-(n+1))-A000720(n+1)`
-/

namespace A085655.P12439995905914517660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A056964 (n + 1) - (n + 1 : ℤ)).toNat - A000720 (n + 1)

end

end A085655.P12439995905914517660

/-! ## A085655.P9660072797751643831

`A230980(A004086(n+1))-A230980(n+1)`
-/

namespace A085655.P9660072797751643831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A004086 (n + 1)).toNat - A230980 (n + 1)

end

end A085655.P9660072797751643831

/-!
# A085657: Number of n X n symmetric positive definite matrices with 2's on the main diagonal and 1's and 0's elsewhere.

The programs for A085657, there is no canonical definition to state claims against.
-/

/-! ## A085657.P14762003688899257936

`A227737(A064092(n))+n`
-/

namespace A085657.P14762003688899257936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227737 (A064092 n).toNat + (n : ℤ)

end

end A085657.P14762003688899257936

/-!
# A085658: Number of n X n symmetric positive semi-definite matrices with 2's on the main diagonal and 1's and 0's elsewhere.

The programs for A085658, there is no canonical definition to state claims against.
-/

/-! ## A085658.P11721359726289629517

`A102441(∑[abs(Δ[(1-n)^n])])`
-/

namespace A085658.P11721359726289629517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102441 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085658.P11721359726289629517

/-!
# A085680: Size of largest code of length n and constant weight 2 that can correct a single adjacent transposition.

The programs for A085680, there is no canonical definition to state claims against.
-/

/-! ## A085680.P15058819842594675757

`∑[round(char[5]+(n+1)/5)]+1`
-/

namespace A085680.P15058819842594675757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) + (n + 1 : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085680.P15058819842594675757

/-! ## A085680.P9212002675796606029

`ceil(∑[A193768(n+1)/5])`
-/

namespace A085680.P9212002675796606029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193768 (n + 1) : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A085680.P9212002675796606029

/-! ## A085680.P11026857744685087070

`ceil(∑[A160755(n+2)]/5)`
-/

namespace A085680.P11026857744685087070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌉

end

end A085680.P11026857744685087070

/-! ## A085680.P15473172826183521553

`ceil(∑[char[A004890(n+1)]+n+1]/5)`
-/

namespace A085680.P15473172826183521553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌉

end

end A085680.P15473172826183521553

/-! ## A085680.P12128286554964820947

`A008676(3*A061208(∑[n+1]))`
-/

namespace A085680.P12128286554964820947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (3 * A061208 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A085680.P12128286554964820947

/-!
# A085681: Integers of the form 2^k*p where p is a prime > 2^k.

The programs for A085681, the canonical program `A085681.P2453027393435325629` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085681 has offset 1).

The definition of A085681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085681.P10471527218765651027

`filter[A342081(n+1), A202238(#)]`
-/

namespace A085681.P10471527218765651027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A085681.P10471527218765651027

namespace A085681

/-- `filter[A342081(n+1), A202238(#)]` -/
def P10471527218765651027.Spec : Prop :=
  ∀ n, P10471527218765651027.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P10659255126498082607

`filter[A342081(n+1), A323170(#)]`
-/

namespace A085681.P10659255126498082607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A085681.P10659255126498082607

namespace A085681

/-- `filter[A342081(n+1), A323170(#)]` -/
def P10659255126498082607.Spec : Prop :=
  ∀ n, P10659255126498082607.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P882939914700482071

`filter[A342081(n+1), A353671(#)]`
-/

namespace A085681.P882939914700482071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353671 (f1 j).toNat = 1) n)

end

end A085681.P882939914700482071

namespace A085681

/-- `filter[A342081(n+1), A353671(#)]` -/
def P882939914700482071.Spec : Prop :=
  ∀ n, P882939914700482071.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P13117545977036031141

`filter[A342081(n+1), A353672(#)]`
-/

namespace A085681.P13117545977036031141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A085681.P13117545977036031141

namespace A085681

/-- `filter[A342081(n+1), A353672(#)]` -/
def P13117545977036031141.Spec : Prop :=
  ∀ n, P13117545977036031141.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P15814167509425542880

`filter[A396597(n+1), A340371(#)]`
-/

namespace A085681.P15814167509425542880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A085681.P15814167509425542880

namespace A085681

/-- `filter[A396597(n+1), A340371(#)]` -/
def P15814167509425542880.Spec : Prop :=
  ∀ n, P15814167509425542880.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P8962403938331502188

`filter[A396597(n+1), A353670(#)]`
-/

namespace A085681.P8962403938331502188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A085681.P8962403938331502188

namespace A085681

/-- `filter[A396597(n+1), A353670(#)]` -/
def P8962403938331502188.Spec : Prop :=
  ∀ n, P8962403938331502188.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P15784450606736402669

`filter[A396597(n+1), A353671(#)]`
-/

namespace A085681.P15784450606736402669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353671 (f1 j).toNat = 1) n)

end

end A085681.P15784450606736402669

namespace A085681

/-- `filter[A396597(n+1), A353671(#)]` -/
def P15784450606736402669.Spec : Prop :=
  ∀ n, P15784450606736402669.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P3399343343124173370

`filter[A396597(n+1), A365716(#)]`
-/

namespace A085681.P3399343343124173370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A085681.P3399343343124173370

namespace A085681

/-- `filter[A396597(n+1), A365716(#)]` -/
def P3399343343124173370.Spec : Prop :=
  ∀ n, P3399343343124173370.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P2453027393435325629

`filter[A225241(n+3), A353670(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A085681

/-- `filter[A225241(n+3), A353670(#)]` -/
def P2453027393435325629.Spec : Prop :=
  ∀ n, P2453027393435325629.a n = A085681 (n + 1)

theorem P2453027393435325629.correct : P2453027393435325629.Spec := by
  intro n
  simp only [A085681, Nat.add_sub_cancel]

end A085681

/-! ## A085681.P13472894131773804935

`filter[A225241(n+3), A353671(#)]`
-/

namespace A085681.P13472894131773804935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353671 (f1 j).toNat = 1) n)

end

end A085681.P13472894131773804935

namespace A085681

/-- `filter[A225241(n+3), A353671(#)]` -/
def P13472894131773804935.Spec : Prop :=
  ∀ n, P13472894131773804935.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P16816710379065289306

`filter[A115036(n+1), A340371(#)]`
-/

namespace A085681.P16816710379065289306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A085681.P16816710379065289306

namespace A085681

/-- `filter[A115036(n+1), A340371(#)]` -/
def P16816710379065289306.Spec : Prop :=
  ∀ n, P16816710379065289306.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P4891412471800049963

`filter[A115036(n+1), A353670(#)]`
-/

namespace A085681.P4891412471800049963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A085681.P4891412471800049963

namespace A085681

/-- `filter[A115036(n+1), A353670(#)]` -/
def P4891412471800049963.Spec : Prop :=
  ∀ n, P4891412471800049963.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P10892379125361204825

`filter[A115036(n+1), A353671(#)]`
-/

namespace A085681.P10892379125361204825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353671 (f1 j).toNat = 1) n)

end

end A085681.P10892379125361204825

namespace A085681

/-- `filter[A115036(n+1), A353671(#)]` -/
def P10892379125361204825.Spec : Prop :=
  ∀ n, P10892379125361204825.a n = A085681 (n + 1)

end A085681

/-! ## A085681.P9074574025047454679

`∩[A038550(n+1), A115036(n+1)]`
-/

namespace A085681.P9074574025047454679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085681.P9074574025047454679

namespace A085681

/-- `∩[A038550(n+1), A115036(n+1)]` -/
def P9074574025047454679.Spec : Prop :=
  ∀ n, (P9074574025047454679.a n : ℤ) = A085681 (n + 1)

end A085681

/-! ## A085681.P10411660569372228248

`eq[n%2, A348660(n+1)]+1`
-/

namespace A085681.P10411660569372228248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085681.P10411660569372228248

namespace A085681

/-- `eq[n%2, A348660(n+1)]+1` -/
def P10411660569372228248.Spec : Prop :=
  ∀ n, (P10411660569372228248.a n : ℤ) = A085681 (n + 1)

end A085681

/-! ## A085681.P5960723671205470431

`eq[(-1)^n, A348660(n+2)]+2`
-/

namespace A085681.P5960723671205470431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348660 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A085681.P5960723671205470431

namespace A085681

/-- `eq[(-1)^n, A348660(n+2)]+2` -/
def P5960723671205470431.Spec : Prop :=
  ∀ n, (P5960723671205470431.a n : ℤ) = A085681 (n + 1)

end A085681

/-! ## A085681.P5743335315543455286

`2*eq[2, A060764(A004277(n))]`
-/

namespace A085681.P5743335315543455286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085681.P5743335315543455286

namespace A085681

/-- `2*eq[2, A060764(A004277(n))]` -/
def P5743335315543455286.Spec : Prop :=
  ∀ n, (P5743335315543455286.a n : ℤ) = A085681 (n + 1)

end A085681

/-! ## A085681.P7060110452651405648

`2*eq[2, A060764(A257088(n))]`
-/

namespace A085681.P7060110452651405648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085681.P7060110452651405648

namespace A085681

/-- `2*eq[2, A060764(A257088(n))]` -/
def P7060110452651405648.Spec : Prop :=
  ∀ n, (P7060110452651405648.a n : ℤ) = A085681 (n + 1)

end A085681

/-! ## A085681.P2372804786246021010

`filter[A063763(n+1), A340363(#)]`
-/

namespace A085681.P2372804786246021010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A085681.P2372804786246021010

namespace A085681

/-- `filter[A063763(n+1), A340363(#)]` -/
def P2372804786246021010.Spec : Prop :=
  ∀ n, P2372804786246021010.a n = A085681 (n + 1)

end A085681

/-!
# A085682: Numbers k such that k^k - (k-1)^k is prime.

The programs for A085682, there is no canonical definition to state claims against.
-/

/-! ## A085682.P9415409726763897132

`p?[or(ceil(3*n/2), A001405(n+1))]`
-/

namespace A085682.P9415409726763897132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈3 * ((n : ℚ) / 2)⌉ (A001405 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085682.P9415409726763897132

/-! ## A085682.P8583758254198221639

`p?[or(ceil(3*n/2), A036557(n+1))]`
-/

namespace A085682.P8583758254198221639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈3 * ((n : ℚ) / 2)⌉ (A036557 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085682.P8583758254198221639

/-!
# A085683: a(n) = Sum_{k = 1..N-1} floor(N/k) where N is the n-th prime.

The programs for A085683, the canonical program `A085683.P13122087082313265397` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085683 has offset 1).

The definition of A085683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085683.P13122087082313265397

`∑[A139140(n)]-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085683

/-- `∑[A139140(n)]-1` -/
def P13122087082313265397.Spec : Prop :=
  ∀ n, P13122087082313265397.a n = A085683 (n + 1)

theorem P13122087082313265397.correct : P13122087082313265397.Spec := by
  intro n
  simp only [A085683, Nat.add_sub_cancel]

end A085683

/-! ## A085683.P9392390626664297100

`A253769(n+1)-1`
-/

namespace A085683.P9392390626664297100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253769 (n + 1) - 1

end

end A085683.P9392390626664297100

namespace A085683

/-- `A253769(n+1)-1` -/
def P9392390626664297100.Spec : Prop :=
  ∀ n, P9392390626664297100.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P1218557331971724814

`A006218(Δ[A007504(n)])-1`
-/

namespace A085683.P1218557331971724814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (n + 1) - f1 n).toNat - 1

end

end A085683.P1218557331971724814

namespace A085683

/-- `A006218(Δ[A007504(n)])-1` -/
def P1218557331971724814.Spec : Prop :=
  ∀ n, P1218557331971724814.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P7383899698665674275

`A006218(A006093(n+1))+1`
-/

namespace A085683.P7383899698665674275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A006093 (n + 1)).toNat + 1

end

end A085683.P7383899698665674275

namespace A085683

/-- `A006218(A006093(n+1))+1` -/
def P7383899698665674275.Spec : Prop :=
  ∀ n, P7383899698665674275.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P16273676652072767200

`A006218(A000040(n+1))-1`
-/

namespace A085683.P16273676652072767200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A000040 (n + 1)).toNat - 1

end

end A085683.P16273676652072767200

namespace A085683

/-- `A006218(A000040(n+1))-1` -/
def P16273676652072767200.Spec : Prop :=
  ∀ n, P16273676652072767200.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P17117816972906095049

`A006218(A008578(n+2))-1`
-/

namespace A085683.P17117816972906095049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A008578 (n + 2)).toNat - 1

end

end A085683.P17117816972906095049

namespace A085683

/-- `A006218(A008578(n+2))-1` -/
def P17117816972906095049.Spec : Prop :=
  ∀ n, P17117816972906095049.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P1252065209427473707

`A006218(A182986(n+2))-1`
-/

namespace A085683.P1252065209427473707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A182986 (n + 2)).toNat - 1

end

end A085683.P1252065209427473707

namespace A085683

/-- `A006218(A182986(n+2))-1` -/
def P1252065209427473707.Spec : Prop :=
  ∀ n, P1252065209427473707.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P14471866433800729895

`A006218(p?[record[A351233(n)]])-1`
-/

namespace A085683.P14471866433800729895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A085683.P14471866433800729895

namespace A085683

/-- `A006218(p?[record[A351233(n)]])-1` -/
def P14471866433800729895.Spec : Prop :=
  ∀ n, P14471866433800729895.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P17415355138039304069

`A006218(record[A000010(n+1)])+1`
-/

namespace A085683.P17415355138039304069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A085683.P17415355138039304069

namespace A085683

/-- `A006218(record[A000010(n+1)])+1` -/
def P17415355138039304069.Spec : Prop :=
  ∀ n, P17415355138039304069.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P5770944892280387078

`A006218(record[A006530(n+2)])-1`
-/

namespace A085683.P5770944892280387078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A085683.P5770944892280387078

namespace A085683

/-- `A006218(record[A006530(n+2)])-1` -/
def P5770944892280387078.Spec : Prop :=
  ∀ n, P5770944892280387078.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P9588679018407340576

`A006218(record[A020639(n+2)])-1`
-/

namespace A085683.P9588679018407340576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A085683.P9588679018407340576

namespace A085683

/-- `A006218(record[A020639(n+2)])-1` -/
def P9588679018407340576.Spec : Prop :=
  ∀ n, P9588679018407340576.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P4248331576586979230

`A006218(A040976(n+1)+1)+1`
-/

namespace A085683.P4248331576586979230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A040976 (n + 1) + 1).toNat + 1

end

end A085683.P4248331576586979230

namespace A085683

/-- `A006218(A040976(n+1)+1)+1` -/
def P4248331576586979230.Spec : Prop :=
  ∀ n, P4248331576586979230.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P6586144961694180646

`A006218(A207790(2*(n+1)))-1`
-/

namespace A085683.P6586144961694180646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A207790 (2 * (n + 1))).toNat - 1

end

end A085683.P6586144961694180646

namespace A085683

/-- `A006218(A207790(2*(n+1)))-1` -/
def P6586144961694180646.Spec : Prop :=
  ∀ n, P6586144961694180646.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P7258235726910560100

`A006218(eq[1, A001222(n+1)])+1`
-/

namespace A085683.P7258235726910560100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A085683.P7258235726910560100

namespace A085683

/-- `A006218(eq[1, A001222(n+1)])+1` -/
def P7258235726910560100.Spec : Prop :=
  ∀ n, P7258235726910560100.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P12253730800053570859

`A006218(eq[2, A000005(n+1)])+1`
-/

namespace A085683.P12253730800053570859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A085683.P12253730800053570859

namespace A085683

/-- `A006218(eq[2, A000005(n+1)])+1` -/
def P12253730800053570859.Spec : Prop :=
  ∀ n, P12253730800053570859.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P13849641134619607290

`A006218(eq[n, A000010(n+1)])+1`
-/

namespace A085683.P13849641134619607290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A085683.P13849641134619607290

namespace A085683

/-- `A006218(eq[n, A000010(n+1)])+1` -/
def P13849641134619607290.Spec : Prop :=
  ∀ n, P13849641134619607290.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P13367883724424359175

`A006218(eq[1, A054024(n+1)]+1)-1`
-/

namespace A085683.P13367883724424359175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A085683.P13367883724424359175

namespace A085683

/-- `A006218(eq[1, A054024(n+1)]+1)-1` -/
def P13367883724424359175.Spec : Prop :=
  ∀ n, P13367883724424359175.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P15554524732613546134

`A054519(A006093(n+1))`
-/

namespace A085683.P15554524732613546134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (A006093 (n + 1)).toNat

end

end A085683.P15554524732613546134

namespace A085683

/-- `A054519(A006093(n+1))` -/
def P15554524732613546134.Spec : Prop :=
  ∀ n, P15554524732613546134.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P15541431601747872442

`A116477(A000040(n+1))`
-/

namespace A085683.P15541431601747872442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116477 (A000040 (n + 1)).toNat

end

end A085683.P15541431601747872442

namespace A085683

/-- `A116477(A000040(n+1))` -/
def P15541431601747872442.Spec : Prop :=
  ∀ n, P15541431601747872442.a n = A085683 (n + 1)

end A085683

/-! ## A085683.P11557513255498654356

`A116477(A008578(n+2))`
-/

namespace A085683.P11557513255498654356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116477 (A008578 (n + 2)).toNat

end

end A085683.P11557513255498654356

namespace A085683

/-- `A116477(A008578(n+2))` -/
def P11557513255498654356.Spec : Prop :=
  ∀ n, P11557513255498654356.a n = A085683 (n + 1)

end A085683

/-!
# A085684: Triangle read by rows: T(n,k), n >= 0, 0 <= k <= n, is size of maximal 1-transposition-correcting code formed using binary vectors of length n and weight k.

The programs for A085684, there is no canonical definition to state claims against.
-/

/-! ## A085684.P4918791209267163040

`∑{e}[A112486(A014473(n)), #]+1`
-/

namespace A085684.P4918791209267163040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (A014473 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A085684.P4918791209267163040

/-! ## A085684.P12646075848641570752

`A070564(A007318(n))%A089587(2*n+5)`
-/

namespace A085684.P12646075848641570752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070564 (A007318 n).toNat) (A089587 (2 * n + 5))

end

end A085684.P12646075848641570752

/-! ## A085684.P8998208132681605925

`A070081(A172358(n))%A225634(2*n+3)`
-/

namespace A085684.P8998208132681605925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070081 (A172358 n).toNat) (A225634 (2 * n + 3))

end

end A085684.P8998208132681605925

/-! ## A085684.P4111210194759864211

`A086375(A172358(n))`
-/

namespace A085684.P4111210194759864211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086375 (A172358 n).toNat

end

end A085684.P4111210194759864211

/-! ## A085684.P6408286224805783034

`A276134(A056940(n))`
-/

namespace A085684.P6408286224805783034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 (A056940 n).toNat

end

end A085684.P6408286224805783034

/-!
# A085685: Triangle read by rows: T(n,k), n >= 0, 0 <= k <= n, is size of maximal 1-transposition-correcting code formed using binary vectors of length n and weight k. The end-around transposition is allowed.

The programs for A085685, there is no canonical definition to state claims against.
-/

/-! ## A085685.P16872834065556932194

`∏{e}[A367665(A026374(n)), #]`
-/

namespace A085685.P16872834065556932194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367665 (A026374 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A085685.P16872834065556932194

/-! ## A085685.P5339743648401800322

`A267134(A341847(n)%A322433(n+1))`
-/

namespace A085685.P5339743648401800322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267134 (Int.tmod (A341847 n) (A322433 (n + 1))).toNat

end

end A085685.P5339743648401800322

/-! ## A085685.P10657324185893068169

`A267134(A341847(n))`
-/

namespace A085685.P10657324185893068169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267134 (A341847 n).toNat

end

end A085685.P10657324185893068169

/-! ## A085685.P14448657268672064254

`A364144(A334702(n))`
-/

namespace A085685.P14448657268672064254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364144 (A334702 n).toNat

end

end A085685.P14448657268672064254

/-! ## A085685.P13378246725968508596

`A000005(A278657(n)%A038011(n))`
-/

namespace A085685.P13378246725968508596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A278657 n) (A038011 n)).toNat

end

end A085685.P13378246725968508596

/-!
# A085686: Inverse Euler transform of Bell numbers.

The programs for A085686, there is no canonical definition to state claims against.
-/

/-! ## A085686.P12046035669778805577

`∑{d}[n+1, A154955(#)*A305846((n+1)/#)]`
-/

namespace A085686.P12046035669778805577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A305846 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085686.P12046035669778805577

/-! ## A085686.P14825583546286504192

`A008621(A150750(n)+floor(n²/2))`
-/

namespace A085686.P14825583546286504192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A150750 n + ⌊(n ^ 2 : ℚ) / 2⌋).toNat

end

end A085686.P14825583546286504192

/-! ## A085686.P7637625060783641268

`or(A007305(n), A342519(A000292(n)))`
-/

namespace A085686.P7637625060783641268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007305 n) (A342519 (A000292 n).toNat)

end

end A085686.P7637625060783641268

/-!
# A085687: Expansion of g.f. 8/(1+sqrt(1-8*x))^3.

The programs for A085687, the canonical program `A085687.P17543566194425455463` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085687 has offset 0).

The definition of A085687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085687.P17543566194425455463

`(n+1)*A000257(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A085687

/-- `(n+1)*A000257(n+1)` -/
def P17543566194425455463.Spec : Prop :=
  ∀ n, P17543566194425455463.a n = A085687 n

theorem P17543566194425455463.correct : P17543566194425455463.Spec := by
  intro n
  simp only [A085687]

end A085687

/-! ## A085687.P2460902051978027115

`2^n*∑[A026012(n)]`
-/

namespace A085687.P2460902051978027115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085687.P2460902051978027115

namespace A085687

/-- `2^n*∑[A026012(n)]` -/
def P2460902051978027115.Spec : Prop :=
  ∀ n, P2460902051978027115.a n = A085687 n

end A085687

/-! ## A085687.P18007008096432261778

`2^n*A000245(n+1)`
-/

namespace A085687.P18007008096432261778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000245 (n + 1)

end

end A085687.P18007008096432261778

namespace A085687

/-- `2^n*A000245(n+1)` -/
def P18007008096432261778.Spec : Prop :=
  ∀ n, P18007008096432261778.a n = A085687 n

end A085687

/-! ## A085687.P7697743950817305803

`2^n*A071724(n+1)`
-/

namespace A085687.P7697743950817305803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A071724 (n + 1)

end

end A085687.P7697743950817305803

namespace A085687

/-- `2^n*A071724(n+1)` -/
def P7697743950817305803.Spec : Prop :=
  ∀ n, P7697743950817305803.a n = A085687 n

end A085687

/-! ## A085687.P1287752233581567025

`2^n*Δ[A000108(n+1)]`
-/

namespace A085687.P1287752233581567025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A085687.P1287752233581567025

namespace A085687

/-- `2^n*Δ[A000108(n+1)]` -/
def P1287752233581567025.Spec : Prop :=
  ∀ n, P1287752233581567025.a n = A085687 n

end A085687

/-! ## A085687.P13925337651392735984

`2^(n-1)*A071721(n+1)`
-/

namespace A085687.P13925337651392735984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A071721 (n + 1) : ℚ)

end

end A085687.P13925337651392735984

namespace A085687

/-- `2^(n-1)*A071721(n+1)` -/
def P13925337651392735984.Spec : Prop :=
  ∀ n, P13925337651392735984.a n = (A085687 n : ℚ)

end A085687

/-! ## A085687.P4960706265750160020

`∑[A026012(n)]*A000079(n)`
-/

namespace A085687.P4960706265750160020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A085687.P4960706265750160020

namespace A085687

/-- `∑[A026012(n)]*A000079(n)` -/
def P4960706265750160020.Spec : Prop :=
  ∀ n, P4960706265750160020.a n = A085687 n

end A085687

/-! ## A085687.P4724133090946603702

`record[A034008(n)*A071721(n)]`
-/

namespace A085687.P4724133090946603702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A071721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085687.P4724133090946603702

namespace A085687

/-- `record[A034008(n)*A071721(n)]` -/
def P4724133090946603702.Spec : Prop :=
  ∀ n, P4724133090946603702.a n = A085687 n

end A085687

/-! ## A085687.P709939091538439219

`Δ[A000108(n+1)]*A000079(n)`
-/

namespace A085687.P709939091538439219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A085687.P709939091538439219

namespace A085687

/-- `Δ[A000108(n+1)]*A000079(n)` -/
def P709939091538439219.Spec : Prop :=
  ∀ n, P709939091538439219.a n = A085687 n

end A085687

/-! ## A085687.P9549433277216707661

`2*A069731(n+1)-A003645(n)`
-/

namespace A085687.P9549433277216707661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069731 (n + 1) - A003645 n

end

end A085687.P9549433277216707661

namespace A085687

/-- `2*A069731(n+1)-A003645(n)` -/
def P9549433277216707661.Spec : Prop :=
  ∀ n, P9549433277216707661.a n = A085687 n

end A085687

/-! ## A085687.P1416099661509607402

`Δ[A028304(2*(n+1))]*A000079(n)`
-/

namespace A085687.P1416099661509607402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A085687.P1416099661509607402

namespace A085687

/-- `Δ[A028304(2*(n+1))]*A000079(n)` -/
def P1416099661509607402.Spec : Prop :=
  ∀ n, P1416099661509607402.a n = A085687 n

end A085687

/-! ## A085687.P11808828052203358518

`Δ[A126120(2*(n+1))]*A000079(n)`
-/

namespace A085687.P11808828052203358518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A085687.P11808828052203358518

namespace A085687

/-- `Δ[A126120(2*(n+1))]*A000079(n)` -/
def P11808828052203358518.Spec : Prop :=
  ∀ n, P11808828052203358518.a n = A085687 n

end A085687

/-! ## A085687.P16707933876152710930

`Δ[A028304(2*(n+1))]*A166444(n+2)`
-/

namespace A085687.P16707933876152710930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A166444 (n + 2)

end

end A085687.P16707933876152710930

namespace A085687

/-- `Δ[A028304(2*(n+1))]*A166444(n+2)` -/
def P16707933876152710930.Spec : Prop :=
  ∀ n, P16707933876152710930.a n = A085687 n

end A085687

/-! ## A085687.P4105154733680621165

`A000245(n+1)*A008949(A000096(n))`
-/

namespace A085687.P4105154733680621165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) * A008949 (A000096 n).toNat

end

end A085687.P4105154733680621165

namespace A085687

/-- `A000245(n+1)*A008949(A000096(n))` -/
def P4105154733680621165.Spec : Prop :=
  ∀ n, P4105154733680621165.a n = A085687 n

end A085687

/-! ## A085687.P15670995913270785329

`A181282(n+1)-A000257(n+1)-A000257(n+1)`
-/

namespace A085687.P15670995913270785329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181282 (n + 1) - A000257 (n + 1) - A000257 (n + 1)

end

end A085687.P15670995913270785329

namespace A085687

/-- `A181282(n+1)-A000257(n+1)-A000257(n+1)` -/
def P15670995913270785329.Spec : Prop :=
  ∀ n, P15670995913270785329.a n = A085687 n

end A085687

/-! ## A085687.P3760322249872603158

`A167432(∑[n+1]+1)`
-/

namespace A085687.P3760322249872603158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167432 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A085687.P3760322249872603158

namespace A085687

/-- `A167432(∑[n+1]+1)` -/
def P3760322249872603158.Spec : Prop :=
  ∀ n, P3760322249872603158.a n = A085687 n

end A085687

/-! ## A085687.P8426658565693921959

`A110510(A167614(n+2))`
-/

namespace A085687.P8426658565693921959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 (A167614 (n + 2)).toNat

end

end A085687.P8426658565693921959

namespace A085687

/-- `A110510(A167614(n+2))` -/
def P8426658565693921959.Spec : Prop :=
  ∀ n, P8426658565693921959.a n = A085687 n

end A085687

/-!
# A085689: a(1) = 4; a(n) = if n == 2 mod 3 then a(n-1)/2, if n == 0 mod 3 then a(n-1)*2, if n == 1 mod 3 then a(n-1)*3.

The programs for A085689, the canonical program `A085689.P10564308635673631260` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085689 has offset 1).

The definition of A085689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085689.P10564308635673631260

`3*a(n-3)` with `a(0)=4, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085689

/-- `3*a(n-3)` -/
def P10564308635673631260.Spec : Prop :=
  ∀ n, (P10564308635673631260.a n : ℤ) = A085689 (n + 1)

theorem P10564308635673631260.correct : P10564308635673631260.Spec := by
  intro n
  simp only [A085689, Nat.add_sub_cancel]

end A085689

/-! ## A085689.P4044229657877202737

`a(n-3)/(1-2/3)` with `a(0)=4, a(1)=2, a(2)=4`
-/

namespace A085689.P4044229657877202737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 2, 4] fun n a =>
  a (n - 3) / (1 - (2 : ℚ) / 3)

end

end A085689.P4044229657877202737

namespace A085689

/-- `a(n-3)/(1-2/3)` -/
def P4044229657877202737.Spec : Prop :=
  ∀ n, P4044229657877202737.a n = (A085689 (n + 1) : ℚ)

end A085689

/-! ## A085689.P13164824737102355261

`a(n-3)+a(n-3)+a(n-3)` with `a(0)=4, a(1)=2, a(2)=4`
-/

namespace A085689.P13164824737102355261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 4] fun n a =>
  a (n - 3) + (a (n - 3) + a (n - 3))

end

end A085689.P13164824737102355261

namespace A085689

/-- `a(n-3)+a(n-3)+a(n-3)` -/
def P13164824737102355261.Spec : Prop :=
  ∀ n, (P13164824737102355261.a n : ℤ) = A085689 (n + 1)

theorem P13164824737102355261.correct : P13164824737102355261.Spec := by
  intro n
  simp only [A085689, Nat.add_sub_cancel, A085689.P13164824737102355261.a, A085689.P10564308635673631260.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A085689

/-! ## A085689.P3265436540516377783

`A068911(A131380(n+1))`
-/

namespace A085689.P3265436540516377783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (A131380 (n + 1)).toNat

end

end A085689.P3265436540516377783

namespace A085689

/-- `A068911(A131380(n+1))` -/
def P3265436540516377783.Spec : Prop :=
  ∀ n, P3265436540516377783.a n = A085689 (n + 1)

end A085689

/-! ## A085689.P12160662590830736467

`A127975(n)+3^A008611(n)`
-/

namespace A085689.P12160662590830736467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127975 n : ℚ) + (3 : ℚ) ^ (A008611 n : ℤ)

end

end A085689.P12160662590830736467

namespace A085689

/-- `A127975(n)+3^A008611(n)` -/
def P12160662590830736467.Spec : Prop :=
  ∀ n, P12160662590830736467.a n = (A085689 (n + 1) : ℚ)

end A085689

/-! ## A085689.P9200671472967570466

`ogf((4+2x+4x^2)/(1-3x^3))`
-/

namespace A085689.P9200671472967570466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 4] [1, 0, 0, -3] n

end

end A085689.P9200671472967570466

namespace A085689

/-- `ogf((4+2x+4x^2)/(1-3x^3))` -/
def P9200671472967570466.Spec : Prop :=
  ∀ n, P9200671472967570466.a n = A085689 (n + 1)

end A085689

/-!
# A085690: Number of intersections between a sphere inscribed in a cube and the n X n X n cubes resulting from a cubic lattice subdivision of the enclosing cube.

The programs for A085690, there is no canonical definition to state claims against.
-/

/-! ## A085690.P12389569164084935867

`A005897(n+1)-A003415(A051117(n))`
-/

namespace A085690.P12389569164084935867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (n + 1) - A003415 (A051117 n).toNat

end

end A085690.P12389569164084935867

/-! ## A085690.P17591797107277432034

`A005897(n+1)-A191928(A015442(n))`
-/

namespace A085690.P17591797107277432034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (n + 1) - A191928 (A015442 n).toNat

end

end A085690.P17591797107277432034

/-!
# A085691: Triangle read by rows: T(n,k) is the number of triangles of side k in triangular matchstick arrangement of side n; n>=1 and k>=1.

The programs for A085691, the canonical program `A085691.P17951583978947504204` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085691 has offset 1).

The definition of A085691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085691.P17951583978947504204

`C(A185914(n+1), 2)+abs(A122432(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A085691

/-- `C(A185914(n+1), 2)+abs(A122432(n))` -/
def P17951583978947504204.Spec : Prop :=
  ∀ n, P17951583978947504204.a n = A085691 (n + 1)

theorem P17951583978947504204.correct : P17951583978947504204.Spec := by
  intro n
  simp only [A085691, Nat.add_sub_cancel]

end A085691

/-! ## A085691.P15595610212970798322

`A161680(A185914(n+1))+abs(A122432(n))`
-/

namespace A085691.P15595610212970798322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A185914 (n + 1)).toNat + |A122432 n|

end

end A085691.P15595610212970798322

namespace A085691

/-- `A161680(A185914(n+1))+abs(A122432(n))` -/
def P15595610212970798322.Spec : Prop :=
  ∀ n, P15595610212970798322.a n = A085691 (n + 1)

end A085691

/-! ## A085691.P11305247172976243221

`A008805(A099375(n))+C(A185914(n+1), 2)`
-/

namespace A085691.P11305247172976243221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A099375 n).toNat + (Nat.choose (A185914 (n + 1)).toNat 2 : ℤ)

end

end A085691.P11305247172976243221

namespace A085691

/-- `A008805(A099375(n))+C(A185914(n+1), 2)` -/
def P11305247172976243221.Spec : Prop :=
  ∀ n, P11305247172976243221.a n = A085691 (n + 1)

end A085691

/-! ## A085691.P17392691862828725501

`A161680(A185914(n+1))+A008805(A099375(n))`
-/

namespace A085691.P17392691862828725501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A185914 (n + 1)).toNat + A008805 (A099375 n).toNat

end

end A085691.P17392691862828725501

namespace A085691

/-- `A161680(A185914(n+1))+A008805(A099375(n))` -/
def P17392691862828725501.Spec : Prop :=
  ∀ n, P17392691862828725501.a n = A085691 (n + 1)

end A085691

/-! ## A085691.P16113658337213969384

`A161680(A185914(n+1))+A000217(A004736(n+1))`
-/

namespace A085691.P16113658337213969384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A185914 (n + 1)).toNat + A000217 (A004736 (n + 1)).toNat

end

end A085691.P16113658337213969384

namespace A085691

/-- `A161680(A185914(n+1))+A000217(A004736(n+1))` -/
def P16113658337213969384.Spec : Prop :=
  ∀ n, P16113658337213969384.a n = A085691 (n + 1)

end A085691

/-! ## A085691.P4649096070987330704

`A332442(n+1)+abs(A122432(n))`
-/

namespace A085691.P4649096070987330704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332442 (n + 1) + |A122432 n|

end

end A085691.P4649096070987330704

namespace A085691

/-- `A332442(n+1)+abs(A122432(n))` -/
def P4649096070987330704.Spec : Prop :=
  ∀ n, P4649096070987330704.a n = A085691 (n + 1)

end A085691

/-! ## A085691.P13789758368852983106

`A332442(n+1)+A025747(A025581(n))`
-/

namespace A085691.P13789758368852983106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332442 (n + 1) + A025747 (A025581 n).toNat

end

end A085691.P13789758368852983106

namespace A085691

/-- `A332442(n+1)+A025747(A025581(n))` -/
def P13789758368852983106.Spec : Prop :=
  ∀ n, P13789758368852983106.a n = A085691 (n + 1)

end A085691

/-! ## A085691.P3557569453729810323

`A332442(n+1)+A008805(A099375(n))`
-/

namespace A085691.P3557569453729810323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332442 (n + 1) + A008805 (A099375 n).toNat

end

end A085691.P3557569453729810323

namespace A085691

/-- `A332442(n+1)+A008805(A099375(n))` -/
def P3557569453729810323.Spec : Prop :=
  ∀ n, P3557569453729810323.a n = A085691 (n + 1)

end A085691

/-! ## A085691.P10335733985475651067

`A332442(n+1)+A029931(A130330(n))`
-/

namespace A085691.P10335733985475651067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332442 (n + 1) + A029931 (A130330 n).toNat

end

end A085691.P10335733985475651067

namespace A085691

/-- `A332442(n+1)+A029931(A130330(n))` -/
def P10335733985475651067.Spec : Prop :=
  ∀ n, P10335733985475651067.a n = A085691 (n + 1)

end A085691

/-! ## A085691.P18110835133896072500

`A332442(n+1)+A000217(A004736(n+1))`
-/

namespace A085691.P18110835133896072500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332442 (n + 1) + A000217 (A004736 (n + 1)).toNat

end

end A085691.P18110835133896072500

namespace A085691

/-- `A332442(n+1)+A000217(A004736(n+1))` -/
def P18110835133896072500.Spec : Prop :=
  ∀ n, P18110835133896072500.a n = A085691 (n + 1)

end A085691

/-!
# A085693: Let f(0) = 1, f(1) = 12, f(2) = 223, f(3) = 3334, = f(4) = 44445, f(5) = 555556, etc. Sequence gives concatenation of 0, f(0), f(f(0)), f(f(f(0))), ...

The programs for A085693, there is no canonical definition to state claims against.
-/

/-! ## A085693.P14921863744449422084

`A275806(A120695(n))`
-/

namespace A085693.P14921863744449422084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A120695 n).toNat

end

end A085693.P14921863744449422084

/-! ## A085693.P11941619890330264115

`A358379(A000924(n+1)*A127301(n))`
-/

namespace A085693.P11941619890330264115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358379 (A000924 (n + 1) * A127301 n).toNat

end

end A085693.P11941619890330264115

/-!
# A085694: Let f(0) = 1, f(1) = 12, f(2) = 223, f(3) = 3334, f(4) = 44445, f(5) = 555556, etc. Sequence gives limiting value of f(0), f(f(0)), f(f(f(0))), ...

The programs for A085694, there is no canonical definition to state claims against.
-/

/-! ## A085694.P14824669512783071789

`A261794(A125098(n))`
-/

namespace A085694.P14824669512783071789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A125098 n).toNat

end

end A085694.P14824669512783071789

/-! ## A085694.P22335396891245955

`A337772(A228326(n+1)+1)+1`
-/

namespace A085694.P22335396891245955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337772 (A228326 (n + 1) + 1).toNat + 1

end

end A085694.P22335396891245955

/-! ## A085694.P13073510423063371843

`A001221(A065391(2*(n+2))-A300708(n)+1)`
-/

namespace A085694.P13073510423063371843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A065391 (2 * (n + 2)) - A300708 n + 1).toNat

end

end A085694.P13073510423063371843

/-!
# A085695: a(n) = Fibonacci(n)*Fibonacci(3n)/2.

The programs for A085695, the canonical program `A085695.P2018092129056950049` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085695 has offset 0).

The definition of A085695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085695.P2018092129056950049

`A000045(n)*A001076(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A085695

/-- `A000045(n)*A001076(n)` -/
def P2018092129056950049.Spec : Prop :=
  ∀ n, P2018092129056950049.a n = A085695 n

theorem P2018092129056950049.correct : P2018092129056950049.Spec := by
  intro n
  simp only [A085695]

end A085695

/-! ## A085695.P3412873390396647301

`abs(A001076(n)*A236191(n))`
-/

namespace A085695.P3412873390396647301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001076 n * A236191 n|

end

end A085695.P3412873390396647301

namespace A085695

/-- `abs(A001076(n)*A236191(n))` -/
def P3412873390396647301.Spec : Prop :=
  ∀ n, P3412873390396647301.a n = A085695 n

end A085695

/-! ## A085695.P10600005093057810003

`sqrt(A007598(n))*A001076(n)`
-/

namespace A085695.P10600005093057810003
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 n : ℝ) * (A001076 n : ℝ)

end

end A085695.P10600005093057810003

namespace A085695

/-- `sqrt(A007598(n))*A001076(n)` -/
def P10600005093057810003.Spec : Prop :=
  ∀ n, P10600005093057810003.a n = (A085695 n : ℝ)

end A085695

/-! ## A085695.P2135788948943645207

`A212804(n+1)*A001076(n)`
-/

namespace A085695.P2135788948943645207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) * A001076 n

end

end A085695.P2135788948943645207

namespace A085695

/-- `A212804(n+1)*A001076(n)` -/
def P2135788948943645207.Spec : Prop :=
  ∀ n, P2135788948943645207.a n = A085695 n

end A085695

/-! ## A085695.P4426724933649728705

`A001076(n)*A324969(n+1)`
-/

namespace A085695.P4426724933649728705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n * A324969 (n + 1)

end

end A085695.P4426724933649728705

namespace A085695

/-- `A001076(n)*A324969(n+1)` -/
def P4426724933649728705.Spec : Prop :=
  ∀ n, P4426724933649728705.a n = A085695 n

end A085695

/-! ## A085695.P6604288764201754194

`A000045(n)*A059973(2*n)`
-/

namespace A085695.P6604288764201754194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A059973 (2 * n)

end

end A085695.P6604288764201754194

namespace A085695

/-- `A000045(n)*A059973(2*n)` -/
def P6604288764201754194.Spec : Prop :=
  ∀ n, P6604288764201754194.a n = A085695 n

end A085695

/-! ## A085695.P12895399640625787736

`A000045(n)*A004695(3*n)`
-/

namespace A085695.P12895399640625787736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A004695 (3 * n)

end

end A085695.P12895399640625787736

namespace A085695

/-- `A000045(n)*A004695(3*n)` -/
def P12895399640625787736.Spec : Prop :=
  ∀ n, P12895399640625787736.a n = A085695 n

end A085695

/-! ## A085695.P6204042629130376486

`A000045(n)/2*A014445(n)`
-/

namespace A085695.P6204042629130376486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A014445 n : ℚ)

end

end A085695.P6204042629130376486

namespace A085695

/-- `A000045(n)/2*A014445(n)` -/
def P6204042629130376486.Spec : Prop :=
  ∀ n, P6204042629130376486.a n = (A085695 n : ℚ)

end A085695

/-! ## A085695.P11767669645700119655

`A007598(n)/2*A047946(n)`
-/

namespace A085695.P11767669645700119655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007598 n : ℚ) / 2 * (A047946 n : ℚ)

end

end A085695.P11767669645700119655

namespace A085695

/-- `A007598(n)/2*A047946(n)` -/
def P11767669645700119655.Spec : Prop :=
  ∀ n, P11767669645700119655.a n = (A085695 n : ℚ)

end A085695

/-! ## A085695.P18068510118963858262

`A000045(n)*A167808(3*n)`
-/

namespace A085695.P18068510118963858262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A167808 (3 * n)

end

end A085695.P18068510118963858262

namespace A085695

/-- `A000045(n)*A167808(3*n)` -/
def P18068510118963858262.Spec : Prop :=
  ∀ n, P18068510118963858262.a n = A085695 n

end A085695

/-! ## A085695.P5814896897275910912

`A000045(3*n)/2*A000045(n)`
-/

namespace A085695.P5814896897275910912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * n) : ℚ) / 2 * (A000045 n : ℚ)

end

end A085695.P5814896897275910912

namespace A085695

/-- `A000045(3*n)/2*A000045(n)` -/
def P5814896897275910912.Spec : Prop :=
  ∀ n, P5814896897275910912.a n = (A085695 n : ℚ)

end A085695

/-! ## A085695.P18417346972849588504

`A000045(n)*A173673(A008458(n))`
-/

namespace A085695.P18417346972849588504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A173673 (A008458 n).toNat

end

end A085695.P18417346972849588504

namespace A085695

/-- `A000045(n)*A173673(A008458(n))` -/
def P18417346972849588504.Spec : Prop :=
  ∀ n, P18417346972849588504.a n = A085695 n

end A085695

/-! ## A085695.P16369387278917978772

`A000045(n)*A173673(A008588(n))`
-/

namespace A085695.P16369387278917978772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A173673 (A008588 n).toNat

end

end A085695.P16369387278917978772

namespace A085695

/-- `A000045(n)*A173673(A008588(n))` -/
def P16369387278917978772.Spec : Prop :=
  ∀ n, P16369387278917978772.a n = A085695 n

end A085695

/-! ## A085695.P27480351469218954

`A000045(n)*A000045(A008486(n))/2`
-/

namespace A085695.P27480351469218954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n * A000045 (A008486 n).toNat : ℚ) / 2

end

end A085695.P27480351469218954

namespace A085695

/-- `A000045(n)*A000045(A008486(n))/2` -/
def P27480351469218954.Spec : Prop :=
  ∀ n, P27480351469218954.a n = (A085695 n : ℚ)

end A085695

/-! ## A085695.P11465882798978066426

`A000045(n)*A000045(A008585(n))/2`
-/

namespace A085695.P11465882798978066426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n * A000045 (A008585 n).toNat : ℚ) / 2

end

end A085695.P11465882798978066426

namespace A085695

/-- `A000045(n)*A000045(A008585(n))/2` -/
def P11465882798978066426.Spec : Prop :=
  ∀ n, P11465882798978066426.a n = (A085695 n : ℚ)

end A085695

/-! ## A085695.P823540852237927322

`(A001077(n)-A015448(n))*A000045(n)`
-/

namespace A085695.P823540852237927322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001077 n - A015448 n) * A000045 n

end

end A085695.P823540852237927322

namespace A085695

/-- `(A001077(n)-A015448(n))*A000045(n)` -/
def P823540852237927322.Spec : Prop :=
  ∀ n, P823540852237927322.a n = A085695 n

end A085695

/-! ## A085695.P10898178134052724896

`(A033887(n)-A001077(n))*A000045(n)`
-/

namespace A085695.P10898178134052724896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033887 n - A001077 n) * A000045 n

end

end A085695.P10898178134052724896

namespace A085695

/-- `(A033887(n)-A001077(n))*A000045(n)` -/
def P10898178134052724896.Spec : Prop :=
  ∀ n, P10898178134052724896.a n = A085695 n

end A085695

/-! ## A085695.P11721277635814683974

`(A048876(n)-A048875(n))*A000045(n)`
-/

namespace A085695.P11721277635814683974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048876 n - A048875 n) * A000045 n

end

end A085695.P11721277635814683974

namespace A085695

/-- `(A048876(n)-A048875(n))*A000045(n)` -/
def P11721277635814683974.Spec : Prop :=
  ∀ n, P11721277635814683974.a n = A085695 n

end A085695

/-!
# A085696: a(n) = L(n) * L(n+1) * L(n+2) / 2, where L(n) = Lucas number (A000032).

The programs for A085696, the canonical program `A085696.P96563073395948834` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085696 has offset 0).

The definition of A085696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085696.P96563073395948834

`A075193(n)+A001077(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A085696

/-- `A075193(n)+A001077(n+1)` -/
def P96563073395948834.Spec : Prop :=
  ∀ n, P96563073395948834.a n = A085696 n

theorem P96563073395948834.correct : P96563073395948834.Spec := by
  intro n
  simp only [A085696]

end A085696

/-! ## A085696.P2496226794927444318

`∑[A000032(n)*A215602(n)]-1`
-/

namespace A085696.P2496226794927444318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A215602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A085696.P2496226794927444318

namespace A085696

/-- `∑[A000032(n)*A215602(n)]-1` -/
def P2496226794927444318.Spec : Prop :=
  ∀ n, P2496226794927444318.a n = A085696 n

end A085696

/-! ## A085696.P7623760866662792834

`A001077(n+1)-A061084(n+2)`
-/

namespace A085696.P7623760866662792834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (n + 1) - A061084 (n + 2)

end

end A085696.P7623760866662792834

namespace A085696

/-- `A001077(n+1)-A061084(n+2)` -/
def P7623760866662792834.Spec : Prop :=
  ∀ n, P7623760866662792834.a n = A085696 n

end A085696

/-! ## A085696.P1476822100729347140

`∑[A000204(n+1)*A001254(n)]-1`
-/

namespace A085696.P1476822100729347140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A001254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A085696.P1476822100729347140

namespace A085696

/-- `∑[A000204(n+1)*A001254(n)]-1` -/
def P1476822100729347140.Spec : Prop :=
  ∀ n, P1476822100729347140.a n = A085696 n

end A085696

/-! ## A085696.P7106726231552174324

`∑[A000032(n)²*A000032(n+1)]-1`
-/

namespace A085696.P7106726231552174324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2 * A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A085696.P7106726231552174324

namespace A085696

/-- `∑[A000032(n)²*A000032(n+1)]-1` -/
def P7106726231552174324.Spec : Prop :=
  ∀ n, P7106726231552174324.a n = A085696 n

end A085696

/-! ## A085696.P2228434018425449060

`A001077(n)+A000032(n)*A002878(n)`
-/

namespace A085696.P2228434018425449060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n + A000032 n * A002878 n

end

end A085696.P2228434018425449060

namespace A085696

/-- `A001077(n)+A000032(n)*A002878(n)` -/
def P2228434018425449060.Spec : Prop :=
  ∀ n, P2228434018425449060.a n = A085696 n

end A085696

/-! ## A085696.P13824348276930725866

`A001077(n+1)-A075150(n+1)/A000032(n+1)`
-/

namespace A085696.P13824348276930725866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 (n + 1) : ℚ) - (A075150 (n + 1) : ℚ) / (A000032 (n + 1) : ℚ)

end

end A085696.P13824348276930725866

namespace A085696

/-- `A001077(n+1)-A075150(n+1)/A000032(n+1)` -/
def P13824348276930725866.Spec : Prop :=
  ∀ n, P13824348276930725866.a n = (A085696 n : ℚ)

end A085696

/-! ## A085696.P602755446781224541

`A001077(n+1)-A075151(n+1)/A001254(n+1)`
-/

namespace A085696.P602755446781224541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 (n + 1) : ℚ) - (A075151 (n + 1) : ℚ) / (A001254 (n + 1) : ℚ)

end

end A085696.P602755446781224541

namespace A085696

/-- `A001077(n+1)-A075151(n+1)/A001254(n+1)` -/
def P602755446781224541.Spec : Prop :=
  ∀ n, P602755446781224541.a n = (A085696 n : ℚ)

end A085696

/-! ## A085696.P8208901686244559702

`A001077(n+1)-A075155(n+1)/A075150(n+1)`
-/

namespace A085696.P8208901686244559702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 (n + 1) : ℚ) - (A075155 (n + 1) : ℚ) / (A075150 (n + 1) : ℚ)

end

end A085696.P8208901686244559702

namespace A085696

/-- `A001077(n+1)-A075155(n+1)/A075150(n+1)` -/
def P8208901686244559702.Spec : Prop :=
  ∀ n, P8208901686244559702.a n = (A085696 n : ℚ)

end A085696

/-! ## A085696.P11647569588724168812

`(2*A000045(n+1)-A000045(n))*(3*A000045(n+1)+A000045(n))*(A000045(n+1)+2*A000045(n))/2`
-/

namespace A085696.P11647569588724168812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000045 (n + 1) - A000045 n : ℚ) * ((3 * A000045 (n + 1) + A000045 n : ℚ) * ((A000045 (n + 1) + 2 * A000045 n : ℚ) / 2))

end

end A085696.P11647569588724168812

namespace A085696

/-- `(2*A000045(n+1)-A000045(n))*(3*A000045(n+1)+A000045(n))*(A000045(n+1)+2*A000045(n))/2` -/
def P11647569588724168812.Spec : Prop :=
  ∀ n, P11647569588724168812.a n = (A085696 n : ℚ)

end A085696

/-! ## A085696.P14970221393948812248

`A228874(n)/A022112(n+2)`
-/

namespace A085696.P14970221393948812248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228874 n : ℚ) / (A022112 (n + 2) : ℚ)

end

end A085696.P14970221393948812248

namespace A085696

/-- `A228874(n)/A022112(n+2)` -/
def P14970221393948812248.Spec : Prop :=
  ∀ n, P14970221393948812248.a n = (A085696 n : ℚ)

end A085696

/-! ## A085696.P6759472683592845599

`A081070(n+1)/A000032(n+1)-A001077(n+1)`
-/

namespace A085696.P6759472683592845599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081070 (n + 1) : ℚ) / (A000032 (n + 1) : ℚ) - (A001077 (n + 1) : ℚ)

end

end A085696.P6759472683592845599

namespace A085696

/-- `A081070(n+1)/A000032(n+1)-A001077(n+1)` -/
def P6759472683592845599.Spec : Prop :=
  ∀ n, P6759472683592845599.a n = (A085696 n : ℚ)

end A085696

/-!
# A085697: a(n) = T(n)^2, where T(n) = A000073(n) is the n-th tribonacci number.

The programs for A085697, the canonical program `A085697.P1967404547249247926` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085697 has offset 0).

The definition of A085697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085697.P1967404547249247926

`Δ[2*a(n-1)-a(n-4)]²` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085697

/-- `Δ[2*a(n-1)-a(n-4)]²` -/
def P1967404547249247926.Spec : Prop :=
  ∀ n, P1967404547249247926.a n = A085697 n

theorem P1967404547249247926.correct : P1967404547249247926.Spec := by
  intro n
  simp only [A085697]

end A085697

/-! ## A085697.P1976962085300599627

`∑[2*a(n-1)-a(n-4)]²` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A085697.P1976962085300599627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A085697.P1976962085300599627

namespace A085697

/-- `∑[2*a(n-1)-a(n-4)]²` -/
def P1976962085300599627.Spec : Prop :=
  ∀ n, P1976962085300599627.a n = A085697 n

end A085697

/-! ## A085697.P14342650583557629250

`A000073(n)²`
-/

namespace A085697.P14342650583557629250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n ^ 2

end

end A085697.P14342650583557629250

namespace A085697

/-- `A000073(n)²` -/
def P14342650583557629250.Spec : Prop :=
  ∀ n, P14342650583557629250.a n = A085697 n

end A085697

/-! ## A085697.P4079007632062600281

`Δ[A192804(n)]²`
-/

namespace A085697.P4079007632062600281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A085697.P4079007632062600281

namespace A085697

/-- `Δ[A192804(n)]²` -/
def P4079007632062600281.Spec : Prop :=
  ∀ n, P4079007632062600281.a n = A085697 n

end A085697

/-! ## A085697.P16972701414050447182

`(A354784(n)/2)²`
-/

namespace A085697.P16972701414050447182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A354784 n : ℚ) / 2) ^ 2

end

end A085697.P16972701414050447182

namespace A085697

/-- `(A354784(n)/2)²` -/
def P16972701414050447182.Spec : Prop :=
  ∀ n, P16972701414050447182.a n = (A085697 n : ℚ)

end A085697

/-! ## A085697.P244921428418980478

`Δ[A107239(abs(1-n))]`
-/

namespace A085697.P244921428418980478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107239 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085697.P244921428418980478

namespace A085697

/-- `Δ[A107239(abs(1-n))]` -/
def P244921428418980478.Spec : Prop :=
  ∀ n, P244921428418980478.a n = A085697 n

end A085697

/-! ## A085697.P10803432283667482739

`Δ[A000213(n)/2]²`
-/

namespace A085697.P10803432283667482739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A085697.P10803432283667482739

namespace A085697

/-- `Δ[A000213(n)/2]²` -/
def P10803432283667482739.Spec : Prop :=
  ∀ n, P10803432283667482739.a n = (A085697 n : ℚ)

end A085697

/-! ## A085697.P4168274089154599064

`A000073(char[2]+n)^2`
-/

namespace A085697.P4168274089154599064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 ((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2

end

end A085697.P4168274089154599064

namespace A085697

/-- `A000073(char[2]+n)^2` -/
def P4168274089154599064.Spec : Prop :=
  ∀ n, P4168274089154599064.a n = A085697 n

end A085697

/-! ## A085697.P10994922662925842819

`Δ[A248098(n+1)/3]²`
-/

namespace A085697.P10994922662925842819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248098 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A085697.P10994922662925842819

namespace A085697

/-- `Δ[A248098(n+1)/3]²` -/
def P10994922662925842819.Spec : Prop :=
  ∀ n, P10994922662925842819.a n = (A085697 n : ℚ)

end A085697

/-! ## A085697.P14981370744715202586

`A114952(A014601(n))²`
-/

namespace A085697.P14981370744715202586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A014601 n).toNat ^ 2

end

end A085697.P14981370744715202586

namespace A085697

/-- `A114952(A014601(n))²` -/
def P14981370744715202586.Spec : Prop :=
  ∀ n, P14981370744715202586.a n = A085697 n

end A085697

/-! ## A085697.P10672855403176515722

`(A000213(n)-A081172(n))²`
-/

namespace A085697.P10672855403176515722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000213 n - A081172 n) ^ 2

end

end A085697.P10672855403176515722

namespace A085697

/-- `(A000213(n)-A081172(n))²` -/
def P10672855403176515722.Spec : Prop :=
  ∀ n, P10672855403176515722.a n = A085697 n

end A085697

/-! ## A085697.P14041705731573280262

`(A033999(n)-A112476(n))²`
-/

namespace A085697.P14041705731573280262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n - A112476 n) ^ 2

end

end A085697.P14041705731573280262

namespace A085697

/-- `(A033999(n)-A112476(n))²` -/
def P14041705731573280262.Spec : Prop :=
  ∀ n, P14041705731573280262.a n = A085697 n

end A085697

/-! ## A085697.P10852003743839864784

`(A000045(n)-A338192(n))²`
-/

namespace A085697.P10852003743839864784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n - A338192 n) ^ 2

end

end A085697.P10852003743839864784

namespace A085697

/-- `(A000045(n)-A338192(n))²` -/
def P10852003743839864784.Spec : Prop :=
  ∀ n, P10852003743839864784.a n = A085697 n

end A085697

/-! ## A085697.P6387547508958873615

`(A141036(n)-A214899(n))²`
-/

namespace A085697.P6387547508958873615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141036 n - A214899 n) ^ 2

end

end A085697.P6387547508958873615

namespace A085697

/-- `(A141036(n)-A214899(n))²` -/
def P6387547508958873615.Spec : Prop :=
  ∀ n, P6387547508958873615.a n = A085697 n

end A085697

/-! ## A085697.P7475912224665272629

`(A214727(n)-A275778(n))²`
-/

namespace A085697.P7475912224665272629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214727 n - A275778 n) ^ 2

end

end A085697.P7475912224665272629

namespace A085697

/-- `(A214727(n)-A275778(n))²` -/
def P7475912224665272629.Spec : Prop :=
  ∀ n, P7475912224665272629.a n = A085697 n

end A085697

/-! ## A085697.P13264370918203803103

`(A275778(n)-A276658(n))²`
-/

namespace A085697.P13264370918203803103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A275778 n - A276658 n) ^ 2

end

end A085697.P13264370918203803103

namespace A085697

/-- `(A275778(n)-A276658(n))²` -/
def P13264370918203803103.Spec : Prop :=
  ∀ n, P13264370918203803103.a n = A085697 n

end A085697

/-! ## A085697.P6737189458001793277

`(A337281(n)/A028310(n))²`
-/

namespace A085697.P6737189458001793277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A337281 n : ℚ) / (A028310 n : ℚ)) ^ 2

end

end A085697.P6737189458001793277

namespace A085697

/-- `(A337281(n)/A028310(n))²` -/
def P6737189458001793277.Spec : Prop :=
  ∀ n, P6737189458001793277.a n = (A085697 n : ℚ)

end A085697

/-! ## A085697.P10785956802981432723

`Δ[A192804(n)]*A000073(n)`
-/

namespace A085697.P10785956802981432723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000073 n

end

end A085697.P10785956802981432723

namespace A085697

/-- `Δ[A192804(n)]*A000073(n)` -/
def P10785956802981432723.Spec : Prop :=
  ∀ n, P10785956802981432723.a n = A085697 n

end A085697

/-! ## A085697.P9649156627474657620

`(abs(A078042(n))-A214727(n))²`
-/

namespace A085697.P9649156627474657620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|A078042 n| - A214727 n) ^ 2

end

end A085697.P9649156627474657620

namespace A085697

/-- `(abs(A078042(n))-A214727(n))²` -/
def P9649156627474657620.Spec : Prop :=
  ∀ n, P9649156627474657620.a n = A085697 n

end A085697

/-! ## A085697.P2773511379537087086

`(A001590(n)-∑[A001590(n)])²`
-/

namespace A085697.P2773511379537087086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001590 n - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A085697.P2773511379537087086

namespace A085697

/-- `(A001590(n)-∑[A001590(n)])²` -/
def P2773511379537087086.Spec : Prop :=
  ∀ n, P2773511379537087086.a n = A085697 n

end A085697

/-!
# A085699: Smallest multiple of n such that a(n) + a(n-1) is an n-th power.

The programs for A085699, there is no canonical definition to state claims against.
-/

/-! ## A085699.P8317902795456310178

`(A061395(n+1)+A053165(n+1))^A053165(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A085699.P8317902795456310178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A061395 (n + 1) + A053165 (n + 1) : ℚ) ^ (A053165 (n + 1) : ℤ) - a (n - 1)

end

end A085699.P8317902795456310178

