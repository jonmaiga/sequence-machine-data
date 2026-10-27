import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A146301: a(n) = (8*n+3)*(8*n+7).

The programs for A146301, the canonical program `A146301.P6561632266534080762` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146301 has offset 0).

The definition of A146301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)*(8*n+7)` (program `A146301.P6561632266534080762`, by `A146301.P6561632266534080762.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146301.P6561632266534080762

`(8*n+3)*(8*n+7)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A146301

/-- `(8*n+3)*(8*n+7)` -/
def P6561632266534080762.Spec : Prop :=
  ∀ n, (P6561632266534080762.a n : ℤ) = A146301 n

theorem P6561632266534080762.correct : P6561632266534080762.Spec := by
  intro n
  simp only [A146301]

end A146301

/-! ## A146301.P814859196898281421

`xor(12, (8*n+5)²)`
-/

namespace A146301.P814859196898281421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 12 ((8 * n + 5) ^ 2)

end

end A146301.P814859196898281421

namespace A146301

/-- `xor(12, (8*n+5)²)` -/
def P814859196898281421.Spec : Prop :=
  ∀ n, (P814859196898281421.a n : ℤ) = A146301 n

end A146301

/-! ## A146301.P689572674963087337

`record[lcm(n+3, xor(7, n))]`
-/

namespace A146301.P689572674963087337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 3) (Nat.xor 7 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146301.P689572674963087337

namespace A146301

/-- `record[lcm(n+3, xor(7, n))]` -/
def P689572674963087337.Spec : Prop :=
  ∀ n, (P689572674963087337.a n : ℤ) = A146301 n

end A146301

/-! ## A146301.P17850843380201979388

`record[or(3, n)*xor(7, n)]`
-/

namespace A146301.P17850843380201979388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n * Nat.xor 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146301.P17850843380201979388

namespace A146301

/-- `record[or(3, n)*xor(7, n)]` -/
def P17850843380201979388.Spec : Prop :=
  ∀ n, (P17850843380201979388.a n : ℤ) = A146301 n

end A146301

/-! ## A146301.P2096856918736425135

`abs(4-or(5, 8*n)²)`
-/

namespace A146301.P2096856918736425135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (Nat.lor 5 (8 * n) ^ 2 : ℤ)|

end

end A146301.P2096856918736425135

namespace A146301

/-- `abs(4-or(5, 8*n)²)` -/
def P2096856918736425135.Spec : Prop :=
  ∀ n, P2096856918736425135.a n = A146301 n

end A146301

/-! ## A146301.P11802895815031503799

`record[xor(5, 4*n)²-4]`
-/

namespace A146301.P11802895815031503799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 (4 * n) ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146301.P11802895815031503799

namespace A146301

/-- `record[xor(5, 4*n)²-4]` -/
def P11802895815031503799.Spec : Prop :=
  ∀ n, P11802895815031503799.a n = A146301 n

end A146301

/-! ## A146301.P6130266921640696473

`A017126(n)-4`
-/

namespace A146301.P6130266921640696473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017126 n - 4

end

end A146301.P6130266921640696473

namespace A146301

/-- `A017126(n)-4` -/
def P6130266921640696473.Spec : Prop :=
  ∀ n, P6130266921640696473.a n = A146301 n

theorem P6130266921640696473.correct : P6130266921640696473.Spec := by
  intro n
  simp only [A146301, Nat.add_sub_cancel, A146301.P6130266921640696473.a, A146301.P6561632266534080762.a, A017126, A017126.P14543019865094346056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146301

/-! ## A146301.P17267539272108533383

`sqrt(A017128(n))-4`
-/

namespace A146301.P17267539272108533383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017128 n : ℝ) - 4

end

end A146301.P17267539272108533383

namespace A146301

/-- `sqrt(A017128(n))-4` -/
def P17267539272108533383.Spec : Prop :=
  ∀ n, P17267539272108533383.a n = (A146301 n : ℝ)

end A146301

/-! ## A146301.P16672415629373188657

`4*A256833(n)-3`
-/

namespace A146301.P16672415629373188657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A256833 n - 3

end

end A146301.P16672415629373188657

namespace A146301

/-- `4*A256833(n)-3` -/
def P16672415629373188657.Spec : Prop :=
  ∀ n, P16672415629373188657.a n = A146301 n

theorem P16672415629373188657.correct : P16672415629373188657.Spec := by
  intro n
  simp only [A146301, Nat.add_sub_cancel, A146301.P16672415629373188657.a, A146301.P6561632266534080762.a, A256833, A256833.P10297936977861740275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146301

/-! ## A146301.P5409194761680551635

`A004770(n+1)²-4`
-/

namespace A146301.P5409194761680551635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1) ^ 2 - 4

end

end A146301.P5409194761680551635

namespace A146301

/-- `A004770(n+1)²-4` -/
def P5409194761680551635.Spec : Prop :=
  ∀ n, P5409194761680551635.a n = A146301 n

theorem P5409194761680551635.correct : P5409194761680551635.Spec := by
  intro n
  simp only [A146301, Nat.add_sub_cancel, A146301.P5409194761680551635.a, A146301.P6561632266534080762.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146301

/-! ## A146301.P11382880783974597573

`A017138(n)-A125169(n)`
-/

namespace A146301.P11382880783974597573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n - A125169 n

end

end A146301.P11382880783974597573

namespace A146301

/-- `A017138(n)-A125169(n)` -/
def P11382880783974597573.Spec : Prop :=
  ∀ n, P11382880783974597573.a n = A146301 n

theorem P11382880783974597573.correct : P11382880783974597573.Spec := by
  intro n
  simp only [A146301, Nat.add_sub_cancel, A146301.P11382880783974597573.a, A146301.P6561632266534080762.a, A017138, A017138.P15439890238184103571.a, A125169, A125169.P15085034264192254056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146301

/-! ## A146301.P6594169638008651341

`A133818(n)/A146302(n)`
-/

namespace A146301.P6594169638008651341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133818 n : ℚ) / (A146302 n : ℚ)

end

end A146301.P6594169638008651341

namespace A146301

/-- `A133818(n)/A146302(n)` -/
def P6594169638008651341.Spec : Prop :=
  ∀ n, P6594169638008651341.a n = (A146301 n : ℚ)

end A146301

/-! ## A146301.P15054168358608589361

`lcm(A004771(n), A017101(n))`
-/

namespace A146301.P15054168358608589361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004771 n) (A017101 n)

end

end A146301.P15054168358608589361

namespace A146301

/-- `lcm(A004771(n), A017101(n))` -/
def P15054168358608589361.Spec : Prop :=
  ∀ n, (P15054168358608589361.a n : ℤ) = A146301 n

end A146301

/-! ## A146301.P12890574400264094504

`A304506(n)+A087348(n+1)`
-/

namespace A146301.P12890574400264094504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304506 n + A087348 (n + 1)

end

end A146301.P12890574400264094504

namespace A146301

/-- `A304506(n)+A087348(n+1)` -/
def P12890574400264094504.Spec : Prop :=
  ∀ n, P12890574400264094504.a n = A146301 n

theorem P12890574400264094504.correct : P12890574400264094504.Spec := by
  intro n
  simp only [A146301, Nat.add_sub_cancel, A146301.P12890574400264094504.a, A146301.P6561632266534080762.a, A087348, A087348.P10061918180564744892.a, A304506, A304506.P1966474818931232204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146301

/-! ## A146301.P16644974204824474897

`A017642(n)-A158774(n+1)`
-/

namespace A146301.P16644974204824474897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017642 n - A158774 (n + 1)

end

end A146301.P16644974204824474897

namespace A146301

/-- `A017642(n)-A158774(n+1)` -/
def P16644974204824474897.Spec : Prop :=
  ∀ n, P16644974204824474897.a n = A146301 n

theorem P16644974204824474897.correct : P16644974204824474897.Spec := by
  intro n
  simp only [A146301, Nat.add_sub_cancel, A146301.P16644974204824474897.a, A146301.P6561632266534080762.a, A017642, A017642.P329126741911215366.a, A158774, A158774.P5113679915558682527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146301

/-! ## A146301.P10914423306419918495

`A085027(2*n)`
-/

namespace A146301.P10914423306419918495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085027 (2 * n)

end

end A146301.P10914423306419918495

namespace A146301

/-- `A085027(2*n)` -/
def P10914423306419918495.Spec : Prop :=
  ∀ n, P10914423306419918495.a n = A146301 n

theorem P10914423306419918495.correct : P10914423306419918495.Spec := by
  intro n
  simp only [A146301, Nat.add_sub_cancel, A146301.P10914423306419918495.a, A146301.P6561632266534080762.a, A085027, A085027.P5010476127013352924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146301

/-! ## A146301.P16251003955288069020

`A068379(2*(n+1))-3`
-/

namespace A146301.P16251003955288069020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068379 (2 * (n + 1)) - 3

end

end A146301.P16251003955288069020

namespace A146301

/-- `A068379(2*(n+1))-3` -/
def P16251003955288069020.Spec : Prop :=
  ∀ n, P16251003955288069020.a n = A146301 n

end A146301

/-! ## A146301.P11981129596829176346

`A016814(2*n+1)-4`
-/

namespace A146301.P11981129596829176346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 (2 * n + 1) - 4

end

end A146301.P11981129596829176346

namespace A146301

/-- `A016814(2*n+1)-4` -/
def P11981129596829176346.Spec : Prop :=
  ∀ n, P11981129596829176346.a n = A146301 n

theorem P11981129596829176346.correct : P11981129596829176346.Spec := by
  intro n
  simp only [A146301, Nat.add_sub_cancel, A146301.P11981129596829176346.a, A146301.P6561632266534080762.a, A016814, A016814.P5668709183610020667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146301

/-!
# A146302: a(n) = (8*n+5)*(8*n+9).

The programs for A146302, the canonical program `A146302.P1162815202033706259` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146302 has offset 0).

The definition of A146302 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+5)*(8*n+9)` (program `A146302.P1162815202033706259`, by `A146302.P1162815202033706259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146302.P1162815202033706259

`(8*n+5)*(8*n+9)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A146302

/-- `(8*n+5)*(8*n+9)` -/
def P1162815202033706259.Spec : Prop :=
  ∀ n, (P1162815202033706259.a n : ℤ) = A146302 n

theorem P1162815202033706259.correct : P1162815202033706259.Spec := by
  intro n
  simp only [A146302]

end A146302

/-! ## A146302.P10059167707941018083

`record[xor(7, n)²-4]`
-/

namespace A146302.P10059167707941018083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 7 n ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146302.P10059167707941018083

namespace A146302

/-- `record[xor(7, n)²-4]` -/
def P10059167707941018083.Spec : Prop :=
  ∀ n, P10059167707941018083.a n = A146302 n

end A146302

/-! ## A146302.P1379433326021032920

`record[xor(7, n)^2-4]`
-/

namespace A146302.P1379433326021032920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 7 n ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146302.P1379433326021032920

namespace A146302

/-- `record[xor(7, n)^2-4]` -/
def P1379433326021032920.Spec : Prop :=
  ∀ n, P1379433326021032920.a n = A146302 n

end A146302

/-! ## A146302.P7059733644114180958

`abs(4-or(7, 8*n)²)`
-/

namespace A146302.P7059733644114180958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (Nat.lor 7 (8 * n) ^ 2 : ℤ)|

end

end A146302.P7059733644114180958

namespace A146302

/-- `abs(4-or(7, 8*n)²)` -/
def P7059733644114180958.Spec : Prop :=
  ∀ n, P7059733644114180958.a n = A146302 n

end A146302

/-! ## A146302.P16663045721228073737

`abs(4-xor(7, 8*n)²)`
-/

namespace A146302.P16663045721228073737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (Nat.xor 7 (8 * n) ^ 2 : ℤ)|

end

end A146302.P16663045721228073737

namespace A146302

/-- `abs(4-xor(7, 8*n)²)` -/
def P16663045721228073737.Spec : Prop :=
  ∀ n, P16663045721228073737.a n = A146302 n

end A146302

/-! ## A146302.P1694336212091412386

`A017150(n)-4`
-/

namespace A146302.P1694336212091412386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017150 n - 4

end

end A146302.P1694336212091412386

namespace A146302

/-- `A017150(n)-4` -/
def P1694336212091412386.Spec : Prop :=
  ∀ n, P1694336212091412386.a n = A146302 n

theorem P1694336212091412386.correct : P1694336212091412386.Spec := by
  intro n
  simp only [A146302, Nat.add_sub_cancel, A146302.P1694336212091412386.a, A146302.P1162815202033706259.a, A017150, A017150.P5455253405257364887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146302

/-! ## A146302.P12639965005352582876

`A004771(n)²-4`
-/

namespace A146302.P12639965005352582876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n ^ 2 - 4

end

end A146302.P12639965005352582876

namespace A146302

/-- `A004771(n)²-4` -/
def P12639965005352582876.Spec : Prop :=
  ∀ n, P12639965005352582876.a n = A146302 n

theorem P12639965005352582876.correct : P12639965005352582876.Spec := by
  intro n
  simp only [A146302, Nat.add_sub_cancel, A146302.P12639965005352582876.a, A146302.P1162815202033706259.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146302

/-! ## A146302.P13004998129453986950

`sqrt(A017152(n))-4`
-/

namespace A146302.P13004998129453986950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017152 n : ℝ) - 4

end

end A146302.P13004998129453986950

namespace A146302

/-- `sqrt(A017152(n))-4` -/
def P13004998129453986950.Spec : Prop :=
  ∀ n, P13004998129453986950.a n = (A146302 n : ℝ)

end A146302

/-! ## A146302.P18304154861922292296

`A133818(n)/A146301(n)`
-/

namespace A146302.P18304154861922292296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133818 n : ℚ) / (A146301 n : ℚ)

end

end A146302.P18304154861922292296

namespace A146302

/-- `A133818(n)/A146301(n)` -/
def P18304154861922292296.Spec : Prop :=
  ∀ n, P18304154861922292296.a n = (A146302 n : ℚ)

end A146302

/-! ## A146302.P13903934084249197761

`A158487(n+1)-A106839(n)`
-/

namespace A146302.P13903934084249197761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158487 (n + 1) - A106839 n

end

end A146302.P13903934084249197761

namespace A146302

/-- `A158487(n+1)-A106839(n)` -/
def P13903934084249197761.Spec : Prop :=
  ∀ n, P13903934084249197761.a n = A146302 n

theorem P13903934084249197761.correct : P13903934084249197761.Spec := by
  intro n
  simp only [A146302, Nat.add_sub_cancel, A146302.P13903934084249197761.a, A146302.P1162815202033706259.a, A106839, A106839.P12314086640576211792.a, A158487, A158487.P4071329257013432001.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146302

/-! ## A146302.P436139565012717195

`lcm(A004768(n), A004770(n+1))`
-/

namespace A146302.P436139565012717195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004768 n) (A004770 (n + 1))

end

end A146302.P436139565012717195

namespace A146302

/-- `lcm(A004768(n), A004770(n+1))` -/
def P436139565012717195.Spec : Prop :=
  ∀ n, (P436139565012717195.a n : ℤ) = A146302 n

end A146302

/-! ## A146302.P12419489429270864552

`A259752(n+1)+A243578(n+1)`
-/

namespace A146302.P12419489429270864552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259752 (n + 1) + A243578 (n + 1)

end

end A146302.P12419489429270864552

namespace A146302

/-- `A259752(n+1)+A243578(n+1)` -/
def P12419489429270864552.Spec : Prop :=
  ∀ n, P12419489429270864552.a n = A146302 n

theorem P12419489429270864552.correct : P12419489429270864552.Spec := by
  intro n
  simp only [A146302, Nat.add_sub_cancel, A146302.P12419489429270864552.a, A146302.P1162815202033706259.a, A243578, A243578.P876948209256566826.a, A259752, A259752.P893208831791855020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146302

/-! ## A146302.P14713346671881332092

`A133655(n+1)²-4`
-/

namespace A146302.P14713346671881332092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (n + 1) ^ 2 - 4

end

end A146302.P14713346671881332092

namespace A146302

/-- `A133655(n+1)²-4` -/
def P14713346671881332092.Spec : Prop :=
  ∀ n, P14713346671881332092.a n = A146302 n

end A146302

/-! ## A146302.P9869002523403975532

`A003185(Δ[n²])`
-/

namespace A146302.P9869002523403975532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003185 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A146302.P9869002523403975532

namespace A146302

/-- `A003185(Δ[n²])` -/
def P9869002523403975532.Spec : Prop :=
  ∀ n, P9869002523403975532.a n = A146302 n

end A146302

/-! ## A146302.P10682255302763309742

`A016838(2*n+1)-4`
-/

namespace A146302.P10682255302763309742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 (2 * n + 1) - 4

end

end A146302.P10682255302763309742

namespace A146302

/-- `A016838(2*n+1)-4` -/
def P10682255302763309742.Spec : Prop :=
  ∀ n, P10682255302763309742.a n = A146302 n

theorem P10682255302763309742.correct : P10682255302763309742.Spec := by
  intro n
  simp only [A146302, Nat.add_sub_cancel, A146302.P10682255302763309742.a, A146302.P1162815202033706259.a, A016838, A016838.P1946869396513697861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146302

/-! ## A146302.P7013649080509804344

`A067239(2*(n+1))-3`
-/

namespace A146302.P7013649080509804344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067239 (2 * (n + 1)) - 3

end

end A146302.P7013649080509804344

namespace A146302

/-- `A067239(2*(n+1))-3` -/
def P7013649080509804344.Spec : Prop :=
  ∀ n, P7013649080509804344.a n = A146302 n

end A146302

/-! ## A146302.P10711141536559054721

`A152750(2*(n+1))-3`
-/

namespace A146302.P10711141536559054721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 (2 * (n + 1)) - 3

end

end A146302.P10711141536559054721

namespace A146302

/-- `A152750(2*(n+1))-3` -/
def P10711141536559054721.Spec : Prop :=
  ∀ n, P10711141536559054721.a n = A146302 n

theorem P10711141536559054721.correct : P10711141536559054721.Spec := by
  intro n
  simp only [A146302, Nat.add_sub_cancel, A146302.P10711141536559054721.a, A146302.P1162815202033706259.a, A152750, A152750.P9324821272604293728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146302

/-! ## A146302.P10450658072641317825

`A078371(4*n+2)`
-/

namespace A146302.P10450658072641317825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (4 * n + 2)

end

end A146302.P10450658072641317825

namespace A146302

/-- `A078371(4*n+2)` -/
def P10450658072641317825.Spec : Prop :=
  ∀ n, P10450658072641317825.a n = A146302 n

theorem P10450658072641317825.correct : P10450658072641317825.Spec := by
  intro n
  simp only [A146302, Nat.add_sub_cancel, A146302.P10450658072641317825.a, A146302.P1162815202033706259.a, A078371, A078371.P2557264616226656584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146302

/-! ## A146302.P17875328672817095315

`A153169(A005843(2*n+1))+2`
-/

namespace A146302.P17875328672817095315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153169 (A005843 (2 * n + 1)).toNat + 2

end

end A146302.P17875328672817095315

namespace A146302

/-- `A153169(A005843(2*n+1))+2` -/
def P17875328672817095315.Spec : Prop :=
  ∀ n, P17875328672817095315.a n = A146302 n

end A146302

/-!
# A146303: Number of distinct ways to place queens (even fewer than n) on an n X n chessboard so that no queen is attacking another and that it is not possible to add another queen.

The programs for A146303, there is no canonical definition to state claims against.
-/

/-! ## A146303.P9852634100323370953

`A192047(A379294(2*n+1))+1`
-/

namespace A146303.P9852634100323370953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192047 (A379294 (2 * n + 1)).toNat + 1

end

end A146303.P9852634100323370953

/-! ## A146303.P1395339560150728415

`A182631(A248902(2*(n+1)))+A000628(2*n+1)`
-/

namespace A146303.P1395339560150728415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182631 (A248902 (2 * (n + 1))).toNat + A000628 (2 * n + 1)

end

end A146303.P1395339560150728415

/-!
# A146304: Number of distinct ways to place bishops (up to 2n-2) on an n X n chessboard so that no bishop is attacking another and that it is not possible to add another bishop.

The programs for A146304, there is no canonical definition to state claims against.
-/

/-! ## A146304.P16318451880098119685

`∑[A129604(∑[A002866(n)])]`
-/

namespace A146304.P16318451880098119685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129604 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146304.P16318451880098119685

/-!
# A146306: a(n) = numerator of (n-6)/(2n).

The programs for A146306, the canonical program `A146306.P12204870129454348688` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146306 has offset 1).

The definition of A146306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146306.P12204870129454348688

`(n-5)/gcd(12, 5-n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A146306

/-- `(n-5)/gcd(12, 5-n)` -/
def P12204870129454348688.Spec : Prop :=
  ∀ n, P12204870129454348688.a n = (A146306 (n + 1) : ℚ)

end A146306

/-! ## A146306.P7108922469605480182

`A146307(n+1)-A051724(n+7)`
-/

namespace A146306.P7108922469605480182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (n + 1) - A051724 (n + 7)

end

end A146306.P7108922469605480182

namespace A146306

/-- `A146307(n+1)-A051724(n+7)` -/
def P7108922469605480182.Spec : Prop :=
  ∀ n, P7108922469605480182.a n = A146306 (n + 1)

end A146306

/-! ## A146306.P2001233104526986493

`A146307(n+1)-A146307(A232625(n+7))`
-/

namespace A146306.P2001233104526986493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (n + 1) - A146307 (A232625 (n + 7)).toNat

end

end A146306.P2001233104526986493

namespace A146306

/-- `A146307(n+1)-A146307(A232625(n+7))` -/
def P2001233104526986493.Spec : Prop :=
  ∀ n, P2001233104526986493.a n = A146306 (n + 1)

end A146306

/-!
# A146307: a(n) = denominator of (n-6)/(2n) = denominator of (n+6)/(2n).

The programs for A146307, the canonical program `A146307.P4939167465409546228` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146307 has offset 1).

The definition of A146307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146307.P4939167465409546228

`gcd(lcm(2, n+1), ∑[∑[n*(n+2)]])`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A146307

/-- `gcd(lcm(2, n+1), ∑[∑[n*(n+2)]])` -/
def P4939167465409546228.Spec : Prop :=
  ∀ n, (P4939167465409546228.a n : ℤ) = A146307 (n + 1)

theorem P4939167465409546228.correct : P4939167465409546228.Spec := by
  intro n
  simp only [A146307, Nat.add_sub_cancel]

end A146307

/-! ## A146307.P11196555845474659361

`gcd(2, n)*A237109(n+1)`
-/

namespace A146307.P11196555845474659361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A237109 (n + 1)

end

end A146307.P11196555845474659361

namespace A146307

/-- `gcd(2, n)*A237109(n+1)` -/
def P11196555845474659361.Spec : Prop :=
  ∀ n, P11196555845474659361.a n = A146307 (n + 1)

end A146307

/-! ## A146307.P8090992581268113074

`lcm(2, n+1)/gcd(n+1, A055999(n))`
-/

namespace A146307.P8090992581268113074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A055999 n) : ℚ)

end

end A146307.P8090992581268113074

namespace A146307

/-- `lcm(2, n+1)/gcd(n+1, A055999(n))` -/
def P8090992581268113074.Spec : Prop :=
  ∀ n, P8090992581268113074.a n = (A146307 (n + 1) : ℚ)

end A146307

/-! ## A146307.P14100689543740727824

`lcm(A004277(n+1), 7*n+1)/(7*n+1)`
-/

namespace A146307.P14100689543740727824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A004277 (n + 1)) (7 * n + 1 : ℤ) : ℚ) / (7 * n + 1 : ℚ)

end

end A146307.P14100689543740727824

namespace A146307

/-- `lcm(A004277(n+1), 7*n+1)/(7*n+1)` -/
def P14100689543740727824.Spec : Prop :=
  ∀ n, P14100689543740727824.a n = (A146307 (n + 1) : ℚ)

end A146307

/-! ## A146307.P635146519475641393

`lcm(A228826(n), A237109(n+1))`
-/

namespace A146307.P635146519475641393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A228826 n) (A237109 (n + 1))

end

end A146307.P635146519475641393

namespace A146307

/-- `lcm(A228826(n), A237109(n+1))` -/
def P635146519475641393.Spec : Prop :=
  ∀ n, (P635146519475641393.a n : ℤ) = A146307 (n + 1)

end A146307

/-! ## A146307.P17978517900555473279

`gcd(2*A008778(n), A000292(n)²)`
-/

namespace A146307.P17978517900555473279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A008778 n) (A000292 n ^ 2)

end

end A146307.P17978517900555473279

namespace A146307

/-- `gcd(2*A008778(n), A000292(n)²)` -/
def P17978517900555473279.Spec : Prop :=
  ∀ n, (P17978517900555473279.a n : ℤ) = A146307 (n + 1)

end A146307

/-! ## A146307.P8659833451290000214

`gcd(A207255(n+1), A377851(n+3))`
-/

namespace A146307.P8659833451290000214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A207255 (n + 1)) (A377851 (n + 3))

end

end A146307.P8659833451290000214

namespace A146307

/-- `gcd(A207255(n+1), A377851(n+3))` -/
def P8659833451290000214.Spec : Prop :=
  ∀ n, (P8659833451290000214.a n : ℤ) = A146307 (n + 1)

end A146307

/-! ## A146307.P8208362492043120692

`(A109613(n)+1-n)*A237109(n+1)`
-/

namespace A146307.P8208362492043120692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n + (1 - (n : ℤ))) * A237109 (n + 1)

end

end A146307.P8208362492043120692

namespace A146307

/-- `(A109613(n)+1-n)*A237109(n+1)` -/
def P8208362492043120692.Spec : Prop :=
  ∀ n, P8208362492043120692.a n = A146307 (n + 1)

end A146307

/-! ## A146307.P5479827050125844014

`A005843(n+1)/gcd(A005843(n+1), A017053(n+1))`
-/

namespace A146307.P5479827050125844014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (Int.gcd (A005843 (n + 1)) (A017053 (n + 1)) : ℚ)

end

end A146307.P5479827050125844014

namespace A146307

/-- `A005843(n+1)/gcd(A005843(n+1), A017053(n+1))` -/
def P5479827050125844014.Spec : Prop :=
  ∀ n, P5479827050125844014.a n = (A146307 (n + 1) : ℚ)

end A146307

/-! ## A146307.P4284040955144463766

`A027642(xor(n, n+1))*A237109(n+1)`
-/

namespace A146307.P4284040955144463766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (Nat.xor n (n + 1)) * A237109 (n + 1)

end

end A146307.P4284040955144463766

namespace A146307

/-- `A027642(xor(n, n+1))*A237109(n+1)` -/
def P4284040955144463766.Spec : Prop :=
  ∀ n, P4284040955144463766.a n = A146307 (n + 1)

end A146307

/-! ## A146307.P421255606269685880

`A000034(A060789(n+1)+n)*A060789(n+1)`
-/

namespace A146307.P421255606269685880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A060789 (n + 1) + (n : ℤ)).toNat * A060789 (n + 1)

end

end A146307.P421255606269685880

namespace A146307

/-- `A000034(A060789(n+1)+n)*A060789(n+1)` -/
def P421255606269685880.Spec : Prop :=
  ∀ n, P421255606269685880.a n = A146307 (n + 1)

end A146307

/-! ## A146307.P17259807687983302609

`A008574(n+1)/gcd(A008574(n+1), A017509(2*n))`
-/

namespace A146307.P17259807687983302609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (n + 1) : ℚ) / (Int.gcd (A008574 (n + 1)) (A017509 (2 * n)) : ℚ)

end

end A146307.P17259807687983302609

namespace A146307

/-- `A008574(n+1)/gcd(A008574(n+1), A017509(2*n))` -/
def P17259807687983302609.Spec : Prop :=
  ∀ n, P17259807687983302609.a n = (A146307 (n + 1) : ℚ)

end A146307

/-! ## A146307.P12464471644202130392

`A068217(2*(n+1))/gcd(A068217(2*(n+1)), 6*n+2)`
-/

namespace A146307.P12464471644202130392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068217 (2 * (n + 1)) : ℚ) / (Int.gcd (A068217 (2 * (n + 1))) (6 * n + 2 : ℤ) : ℚ)

end

end A146307.P12464471644202130392

namespace A146307

/-- `A068217(2*(n+1))/gcd(A068217(2*(n+1)), 6*n+2)` -/
def P12464471644202130392.Spec : Prop :=
  ∀ n, P12464471644202130392.a n = (A146307 (n + 1) : ℚ)

end A146307

/-! ## A146307.P1762104472824571736

`lcm(A145064(2*n), A145064(n+1))/A145064(n+1)`
-/

namespace A146307.P1762104472824571736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A145064 (2 * n)) (A145064 (n + 1)) : ℚ) / (A145064 (n + 1) : ℚ)

end

end A146307.P1762104472824571736

namespace A146307

/-- `lcm(A145064(2*n), A145064(n+1))/A145064(n+1)` -/
def P1762104472824571736.Spec : Prop :=
  ∀ n, P1762104472824571736.a n = (A146307 (n + 1) : ℚ)

end A146307

/-! ## A146307.P9458112987905070384

`A225975(A068217(n+1))`
-/

namespace A146307.P9458112987905070384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A068217 (n + 1)).toNat

end

end A146307.P9458112987905070384

namespace A146307

/-- `A225975(A068217(n+1))` -/
def P9458112987905070384.Spec : Prop :=
  ∀ n, P9458112987905070384.a n = A146307 (n + 1)

end A146307

/-! ## A146307.P9494480695668420185

`A225975(A051176(2*(n+1)))`
-/

namespace A146307.P9494480695668420185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A051176 (2 * (n + 1))).toNat

end

end A146307.P9494480695668420185

namespace A146307

/-- `A225975(A051176(2*(n+1)))` -/
def P9494480695668420185.Spec : Prop :=
  ∀ n, P9494480695668420185.a n = A146307 (n + 1)

end A146307

/-! ## A146307.P16634817613047317225

`A051176(A225975(n+2+n))`
-/

namespace A146307.P16634817613047317225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A225975 (n + 2 + n)).toNat

end

end A146307.P16634817613047317225

namespace A146307

/-- `A051176(A225975(n+2+n))` -/
def P16634817613047317225.Spec : Prop :=
  ∀ n, P16634817613047317225.a n = A146307 (n + 1)

end A146307

/-! ## A146307.P9663852058403772426

`A060789(A227043(n+1))`
-/

namespace A146307.P9663852058403772426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A227043 (n + 1)).toNat

end

end A146307.P9663852058403772426

namespace A146307

/-- `A060789(A227043(n+1))` -/
def P9663852058403772426.Spec : Prop :=
  ∀ n, P9663852058403772426.a n = A146307 (n + 1)

end A146307

/-! ## A146307.P15997233210022359548

`A051724(A227107(2*(n+1)))`
-/

namespace A146307.P15997233210022359548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A227107 (2 * (n + 1))).toNat

end

end A146307.P15997233210022359548

namespace A146307

/-- `A051724(A227107(2*(n+1)))` -/
def P15997233210022359548.Spec : Prop :=
  ∀ n, P15997233210022359548.a n = A146307 (n + 1)

end A146307

/-!
# A146308: a(n) is the smallest k such that the numerator of (k-6)/(2k) equals n.

The programs for A146308, the canonical program `A146308.P17971698270974521364` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146308 has offset 0).

The definition of A146308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146308.P17971698270974521364

`n*gcd(12, n²)+6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A146308

/-- `n*gcd(12, n²)+6` -/
def P17971698270974521364.Spec : Prop :=
  ∀ n, (P17971698270974521364.a n : ℤ) = A146308 n

theorem P17971698270974521364.correct : P17971698270974521364.Spec := by
  intro n
  simp only [A146308]

end A146308

/-! ## A146308.P2705123744598451233

`gcd(6, n)*A022998(n)+6`
-/

namespace A146308.P2705123744598451233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 n : ℤ) * A022998 n + 6

end

end A146308.P2705123744598451233

namespace A146308

/-- `gcd(6, n)*A022998(n)+6` -/
def P2705123744598451233.Spec : Prop :=
  ∀ n, P2705123744598451233.a n = A146308 n

end A146308

/-! ## A146308.P1963014221588888111

`gcd(A001015(n), 12*n)+6`
-/

namespace A146308.P1963014221588888111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001015 n) (12 * n : ℤ) + 6

end

end A146308.P1963014221588888111

namespace A146308

/-- `gcd(A001015(n), 12*n)+6` -/
def P1963014221588888111.Spec : Prop :=
  ∀ n, (P1963014221588888111.a n : ℤ) = A146308 n

end A146308

/-! ## A146308.P72295076979524340

`gcd(A001014(n), A008513(n))+6`
-/

namespace A146308.P72295076979524340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001014 n) (A008513 n) + 6

end

end A146308.P72295076979524340

namespace A146308

/-- `gcd(A001014(n), A008513(n))+6` -/
def P72295076979524340.Spec : Prop :=
  ∀ n, (P72295076979524340.a n : ℤ) = A146308 n

end A146308

/-! ## A146308.P17468833875967691955

`gcd(A000578(n), A153796(n))+6`
-/

namespace A146308.P17468833875967691955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 n) (A153796 n) + 6

end

end A146308.P17468833875967691955

namespace A146308

/-- `gcd(A000578(n), A153796(n))+6` -/
def P17468833875967691955.Spec : Prop :=
  ∀ n, (P17468833875967691955.a n : ℤ) = A146308 n

end A146308

/-!
# A146309: a(n) = indices where primes occurred in A146306.

The programs for A146309, there is no canonical definition to state claims against.
-/

/-! ## A146309.P15666485961119518436

`eq[2, A000005(A146307(n+1))]+1`
-/

namespace A146309.P15666485961119518436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A146307 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A146309.P15666485961119518436

/-! ## A146309.P13249723360597135047

`eq[A010132(n), A077462(A051176(n))]`
-/

namespace A146309.P13249723360597135047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A051176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146309.P13249723360597135047

/-! ## A146309.P5273718082860097382

`eq[A109011(n), A171565(A051724(n))]`
-/

namespace A146309.P5273718082860097382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171565 (A051724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146309.P5273718082860097382

/-! ## A146309.P17757651952671137588

`eq[A010131(n), A304442(A051724(n))]`
-/

namespace A146309.P17757651952671137588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (A051724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146309.P17757651952671137588

/-! ## A146309.P10247534905685269948

`eq[A000034(n+1)², A077462(A051176(n))]`
-/

namespace A146309.P10247534905685269948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A051176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146309.P10247534905685269948

/-!
# A146311: a(n) = cos(2*n*arcsin(sqrt(3))) = (-1)^n*cosh(2*n*arcsinh(sqrt(2))).

The programs for A146311, the canonical program `A146311.P15529999937921083804` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146311 has offset 0).

The definition of A146311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146311.P15529999937921083804

`(-1)^n*A001079(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146311

/-- `(-1)^n*A001079(n)` -/
def P15529999937921083804.Spec : Prop :=
  ∀ n, P15529999937921083804.a n = A146311 n

theorem P15529999937921083804.correct : P15529999937921083804.Spec := by
  intro n
  simp only [A146311]

end A146311

/-! ## A146311.P17745887424494234965

`ogf((1+5x)/(1+10x+x^2))`
-/

namespace A146311.P17745887424494234965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 10, 1] n

end

end A146311.P17745887424494234965

namespace A146311

/-- `ogf((1+5x)/(1+10x+x^2))` -/
def P17745887424494234965.Spec : Prop :=
  ∀ n, P17745887424494234965.a n = A146311 n

end A146311

/-! ## A146311.P6797865739104891303

`A001079(n)*A033999(n)`
-/

namespace A146311.P6797865739104891303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n * A033999 n

end

end A146311.P6797865739104891303

namespace A146311

/-- `A001079(n)*A033999(n)` -/
def P6797865739104891303.Spec : Prop :=
  ∀ n, P6797865739104891303.a n = A146311 n

theorem P6797865739104891303.correct : P6797865739104891303.Spec := by
  intro n
  simp only [A146311, Nat.add_sub_cancel, A146311.P6797865739104891303.a, A146311.P15529999937921083804.a, A001079, A001079.P5709941662240548588.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146311

/-! ## A146311.P17096547232688216024

`A001079(n)*A056594(2*n)`
-/

namespace A146311.P17096547232688216024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n * A056594 (2 * n)

end

end A146311.P17096547232688216024

namespace A146311

/-- `A001079(n)*A056594(2*n)` -/
def P17096547232688216024.Spec : Prop :=
  ∀ n, P17096547232688216024.a n = A146311 n

end A146311

/-! ## A146311.P4316831817403194616

`A033999(n)/2*A087799(n)`
-/

namespace A146311.P4316831817403194616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 n : ℚ) / 2 * (A087799 n : ℚ)

end

end A146311.P4316831817403194616

namespace A146311

/-- `A033999(n)/2*A087799(n)` -/
def P4316831817403194616.Spec : Prop :=
  ∀ n, P4316831817403194616.a n = (A146311 n : ℚ)

end A146311

/-! ## A146311.P6756445308973054963

`A062157(n+1)*A080872(2*n)`
-/

namespace A146311.P6756445308973054963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A080872 (2 * n)

end

end A146311.P6756445308973054963

namespace A146311

/-- `A062157(n+1)*A080872(2*n)` -/
def P6756445308973054963.Spec : Prop :=
  ∀ n, P6756445308973054963.a n = A146311 n

end A146311

/-! ## A146311.P14510448884022990061

`A001079(n)*A010892(A008486(n))`
-/

namespace A146311.P14510448884022990061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n * A010892 (A008486 n).toNat

end

end A146311.P14510448884022990061

namespace A146311

/-- `A001079(n)*A010892(A008486(n))` -/
def P14510448884022990061.Spec : Prop :=
  ∀ n, P14510448884022990061.a n = A146311 n

end A146311

/-! ## A146311.P16061148238680651834

`A001079(n)*A065109(A000096(n))`
-/

namespace A146311.P16061148238680651834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n * A065109 (A000096 n).toNat

end

end A146311.P16061148238680651834

namespace A146311

/-- `A001079(n)*A065109(A000096(n))` -/
def P16061148238680651834.Spec : Prop :=
  ∀ n, P16061148238680651834.a n = A146311 n

end A146311

/-! ## A146311.P13907070023728901190

`A001079(n)*A081729(A008595(n))`
-/

namespace A146311.P13907070023728901190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n * A081729 (A008595 n).toNat

end

end A146311.P13907070023728901190

namespace A146311

/-- `A001079(n)*A081729(A008595(n))` -/
def P13907070023728901190.Spec : Prop :=
  ∀ n, P13907070023728901190.a n = A146311 n

end A146311

/-! ## A146311.P2097326380858237347

`A001079(n)*A188510(A016813(n))`
-/

namespace A146311.P2097326380858237347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n * A188510 (A016813 n).toNat

end

end A146311.P2097326380858237347

namespace A146311

/-- `A001079(n)*A188510(A016813(n))` -/
def P2097326380858237347.Spec : Prop :=
  ∀ n, P2097326380858237347.a n = A146311 n

end A146311

/-! ## A146311.P3041139061025516574

`(A216073(2*n+1)-A041006(2*n))*A033999(n+1)`
-/

namespace A146311.P3041139061025516574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A216073 (2 * n + 1) - A041006 (2 * n)) * A033999 (n + 1)

end

end A146311.P3041139061025516574

namespace A146311

/-- `(A216073(2*n+1)-A041006(2*n))*A033999(n+1)` -/
def P3041139061025516574.Spec : Prop :=
  ∀ n, P3041139061025516574.a n = A146311 n

end A146311

/-! ## A146311.P6333210648897317914

`A001079(n)*A008310(n²+n)`
-/

namespace A146311.P6333210648897317914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n * A008310 (n ^ 2 + n)

end

end A146311.P6333210648897317914

namespace A146311

/-- `A001079(n)*A008310(n²+n)` -/
def P6333210648897317914.Spec : Prop :=
  ∀ n, P6333210648897317914.a n = A146311 n

end A146311

/-!
# A146312: a(n) = -cos((2*n-1)*arcsin(sqrt(3)))^2 = -1 + cosh((2*n-1)*arcsinh(sqrt(2)))^2.

The programs for A146312, the canonical program `A146312.P4356264392086119646` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146312 has offset 1).

The definition of A146312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146312.P4356264392086119646

`2*A054320(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146312

/-- `2*A054320(n)²` -/
def P4356264392086119646.Spec : Prop :=
  ∀ n, P4356264392086119646.a n = A146312 (n + 1)

theorem P4356264392086119646.correct : P4356264392086119646.Spec := by
  intro n
  simp only [A146312, Nat.add_sub_cancel]

end A146312

/-! ## A146312.P1080028948027056495

`A146313(n+1)-1`
-/

namespace A146312.P1080028948027056495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146313 (n + 1) - 1

end

end A146312.P1080028948027056495

namespace A146312

/-- `A146313(n+1)-1` -/
def P1080028948027056495.Spec : Prop :=
  ∀ n, P1080028948027056495.a n = A146312 (n + 1)

theorem P1080028948027056495.correct : P1080028948027056495.Spec := by
  intro n
  simp only [A146312, Nat.add_sub_cancel, A146312.P1080028948027056495.a, A146312.P4356264392086119646.a, A054320, A054320.P13654860824355659797.a, A146313, A146313.P15935100656203728412.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146312

/-! ## A146312.P17444380183040863128

`A132596(Δ[n²])`
-/

namespace A146312.P17444380183040863128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A146312.P17444380183040863128

namespace A146312

/-- `A132596(Δ[n²])` -/
def P17444380183040863128.Spec : Prop :=
  ∀ n, P17444380183040863128.a n = A146312 (n + 1)

end A146312

/-! ## A146312.P9702457257154381987

`2*A006061(n+1)`
-/

namespace A146312.P9702457257154381987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006061 (n + 1)

end

end A146312.P9702457257154381987

namespace A146312

/-- `2*A006061(n+1)` -/
def P9702457257154381987.Spec : Prop :=
  ∀ n, P9702457257154381987.a n = A146312 (n + 1)

end A146312

/-! ## A146312.P13850740184878851856

`6*A045502(n)+2`
-/

namespace A146312.P13850740184878851856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A045502 n + 2

end

end A146312.P13850740184878851856

namespace A146312

/-- `6*A045502(n)+2` -/
def P13850740184878851856.Spec : Prop :=
  ∀ n, P13850740184878851856.a n = A146312 (n + 1)

end A146312

/-! ## A146312.P3855932891484586092

`2*A098297(Δ[n²])`
-/

namespace A146312.P3855932891484586092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098297 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A146312.P3855932891484586092

namespace A146312

/-- `2*A098297(Δ[n²])` -/
def P3855932891484586092.Spec : Prop :=
  ∀ n, P3855932891484586092.a n = A146312 (n + 1)

end A146312

/-! ## A146312.P10198439695523326935

`2*(A157084(n)+1)²`
-/

namespace A146312.P10198439695523326935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157084 n + 1) ^ 2

end

end A146312.P10198439695523326935

namespace A146312

/-- `2*(A157084(n)+1)²` -/
def P10198439695523326935.Spec : Prop :=
  ∀ n, P10198439695523326935.a n = A146312 (n + 1)

end A146312

/-! ## A146312.P7813503779356516339

`2*A142238(2*n)²`
-/

namespace A146312.P7813503779356516339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142238 (2 * n) ^ 2

end

end A146312.P7813503779356516339

namespace A146312

/-- `2*A142238(2*n)²` -/
def P7813503779356516339.Spec : Prop :=
  ∀ n, P7813503779356516339.a n = A146312 (n + 1)

end A146312

/-! ## A146312.P15529687359885371017

`2*A259594(2*n)²`
-/

namespace A146312.P15529687359885371017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259594 (2 * n) ^ 2

end

end A146312.P15529687359885371017

namespace A146312

/-- `2*A259594(2*n)²` -/
def P15529687359885371017.Spec : Prop :=
  ∀ n, P15529687359885371017.a n = A146312 (n + 1)

end A146312

/-! ## A146312.P14672197944798113084

`∑[2*A004291(2*n)]`
-/

namespace A146312.P14672197944798113084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004291 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146312.P14672197944798113084

namespace A146312

/-- `∑[2*A004291(2*n)]` -/
def P14672197944798113084.Spec : Prop :=
  ∀ n, P14672197944798113084.a n = A146312 (n + 1)

end A146312

/-!
# A146313: a(n) = cosh( (2n - 1)*arcsinh(sqrt(2)) )^2 = 1 - cos( (2n - 1)*arcsin(sqrt(3)) )^2.

The programs for A146313, the canonical program `A146313.P15935100656203728412` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146313 has offset 1).

The definition of A146313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146313.P15935100656203728412

`A146312(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A146313

/-- `A146312(n+1)+1` -/
def P15935100656203728412.Spec : Prop :=
  ∀ n, P15935100656203728412.a n = A146313 (n + 1)

theorem P15935100656203728412.correct : P15935100656203728412.Spec := by
  intro n
  simp only [A146313, Nat.add_sub_cancel]

end A146313

/-! ## A146313.P11620433355537612497

`3*A138288(n)²`
-/

namespace A146313.P11620433355537612497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138288 n ^ 2

end

end A146313.P11620433355537612497

namespace A146313

/-- `3*A138288(n)²` -/
def P11620433355537612497.Spec : Prop :=
  ∀ n, P11620433355537612497.a n = A146313 (n + 1)

end A146313

/-! ## A146313.P6743105555149367608

`A171640(2*(n+1))`
-/

namespace A146313.P6743105555149367608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171640 (2 * (n + 1))

end

end A146313.P6743105555149367608

namespace A146313

/-- `A171640(2*(n+1))` -/
def P6743105555149367608.Spec : Prop :=
  ∀ n, P6743105555149367608.a n = A146313 (n + 1)

end A146313

/-! ## A146313.P12740906504348963661

`3*A046172(n+1)`
-/

namespace A146313.P12740906504348963661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046172 (n + 1)

end

end A146313.P12740906504348963661

namespace A146313

/-- `3*A046172(n+1)` -/
def P12740906504348963661.Spec : Prop :=
  ∀ n, P12740906504348963661.a n = A146313 (n + 1)

end A146313

/-! ## A146313.P16816408441454756167

`A268251(2*n+3)`
-/

namespace A146313.P16816408441454756167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268251 (2 * n + 3)

end

end A146313.P16816408441454756167

namespace A146313

/-- `A268251(2*n+3)` -/
def P16816408441454756167.Spec : Prop :=
  ∀ n, P16816408441454756167.a n = A146313 (n + 1)

end A146313

/-! ## A146313.P10817071609856342692

`A132596(Δ[n²])+1`
-/

namespace A146313.P10817071609856342692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A146313.P10817071609856342692

namespace A146313

/-- `A132596(Δ[n²])+1` -/
def P10817071609856342692.Spec : Prop :=
  ∀ n, P10817071609856342692.a n = A146313 (n + 1)

end A146313

/-! ## A146313.P13759299005583782607

`2*A054320(n)²+1`
-/

namespace A146313.P13759299005583782607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054320 n ^ 2 + 1

end

end A146313.P13759299005583782607

namespace A146313

/-- `2*A054320(n)²+1` -/
def P13759299005583782607.Spec : Prop :=
  ∀ n, P13759299005583782607.a n = A146313 (n + 1)

end A146313

/-! ## A146313.P15350390208482263870

`3*A072256(n+1)²`
-/

namespace A146313.P15350390208482263870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A072256 (n + 1) ^ 2

end

end A146313.P15350390208482263870

namespace A146313

/-- `3*A072256(n+1)²` -/
def P15350390208482263870.Spec : Prop :=
  ∀ n, P15350390208482263870.a n = A146313 (n + 1)

end A146313

/-! ## A146313.P3932446081963718054

`2*A006061(n+1)+1`
-/

namespace A146313.P3932446081963718054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006061 (n + 1) + 1

end

end A146313.P3932446081963718054

namespace A146313

/-- `2*A006061(n+1)+1` -/
def P3932446081963718054.Spec : Prop :=
  ∀ n, P3932446081963718054.a n = A146313 (n + 1)

end A146313

/-! ## A146313.P2080185732707196277

`4*A219113(n+1)-1`
-/

namespace A146313.P2080185732707196277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A219113 (n + 1) - 1

end

end A146313.P2080185732707196277

namespace A146313

/-- `4*A219113(n+1)-1` -/
def P2080185732707196277.Spec : Prop :=
  ∀ n, P2080185732707196277.a n = A146313 (n + 1)

end A146313

/-!
# A146314: Inverse of Riordan array A127543.

The programs for A146314, the canonical program `A146314.P9142524216524536811` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146314 has offset 0).

The definition of A146314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146314.P9142524216524536811

`A097807(n)*A124341(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146314

/-- `A097807(n)*A124341(n)` -/
def P9142524216524536811.Spec : Prop :=
  ∀ n, P9142524216524536811.a n = A146314 n

theorem P9142524216524536811.correct : P9142524216524536811.Spec := by
  intro n
  simp only [A146314]

end A146314

/-! ## A146314.P17874098127781559212

`A097807(A112367(n))*A202480(n)`
-/

namespace A146314.P17874098127781559212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A112367 n).toNat * A202480 n

end

end A146314.P17874098127781559212

namespace A146314

/-- `A097807(A112367(n))*A202480(n)` -/
def P17874098127781559212.Spec : Prop :=
  ∀ n, P17874098127781559212.a n = A146314 n

end A146314

/-! ## A146314.P3468074412926044155

`A033999(log2(A059268(n)))*A202480(n)`
-/

namespace A146314.P3468074412926044155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A202480 n

end

end A146314.P3468074412926044155

namespace A146314

/-- `A033999(log2(A059268(n)))*A202480(n)` -/
def P3468074412926044155.Spec : Prop :=
  ∀ n, P3468074412926044155.a n = A146314 n

end A146314

/-! ## A146314.P6393279468982199452

`A065359(A059268(n))*A202480(n)`
-/

namespace A146314.P6393279468982199452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059268 n).toNat * A202480 n

end

end A146314.P6393279468982199452

namespace A146314

/-- `A065359(A059268(n))*A202480(n)` -/
def P6393279468982199452.Spec : Prop :=
  ∀ n, P6393279468982199452.a n = A146314 n

end A146314

/-! ## A146314.P10209537418680682337

`2-A070939(A331278(n+1))`
-/

namespace A146314.P10209537418680682337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A070939 (A331278 (n + 1)).toNat

end

end A146314.P10209537418680682337

namespace A146314

/-- `2-A070939(A331278(n+1))` -/
def P10209537418680682337.Spec : Prop :=
  ∀ n, P10209537418680682337.a n = A146314 n

end A146314

/-!
# A146315: Prime differences of primes subtracted from nearest square.

The programs for A146315, there is no canonical definition to state claims against.
-/

/-! ## A146315.P7343545351991906745

`p?[n*A003415(A068527(n))]`
-/

namespace A146315.P7343545351991906745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003415 (A068527 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146315.P7343545351991906745

/-! ## A146315.P15190429793592917154

`p?[n*A001222(A080883(n))]`
-/

namespace A146315.P15190429793592917154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A080883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146315.P15190429793592917154

/-! ## A146315.P12348019601575920860

`p?[n*A001222(A068527(n+1)+1)]`
-/

namespace A146315.P12348019601575920860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A068527 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146315.P12348019601575920860

/-! ## A146315.P10137708786908076886

`eq[A003415(n), A211110(A068527(n))]`
-/

namespace A146315.P10137708786908076886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 (A068527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146315.P10137708786908076886

/-! ## A146315.P454838998553565711

`eq[A211110(A068527(n)), A302055(n)]`
-/

namespace A146315.P454838998553565711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 (A068527 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146315.P454838998553565711

/-! ## A146315.P5633386158051100303

`eq[1, A032741(n)*A032741(A068527(n))]`
-/

namespace A146315.P5633386158051100303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n * A032741 (A068527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146315.P5633386158051100303

/-! ## A146315.P14691558824044514988

`p?[A000040(n+1)*A001222(A106044(n+1))]`
-/

namespace A146315.P14691558824044514988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A106044 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146315.P14691558824044514988

/-!
# A146316: Prime subtrahends of nearest squares producing prime differences.

The programs for A146316, there is no canonical definition to state claims against.
-/

/-! ## A146316.P17235137510078786133

`p?[A106044(n+1)]`
-/

namespace A146316.P17235137510078786133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146316.P17235137510078786133

/-! ## A146316.P7625206032825052587

`p?[ceil(sqrt(A006530(n+1)))²-(n+1)]`
-/

namespace A146316.P7625206032825052587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A006530 (n + 1) : ℝ)⌉ ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146316.P7625206032825052587

/-! ## A146316.P1552142028057293533

`p?[ceil(sqrt(A014963(n+1)))²-(n+1)]`
-/

namespace A146316.P1552142028057293533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A014963 (n + 1) : ℝ)⌉ ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146316.P1552142028057293533

/-! ## A146316.P6992305278137431661

`p?[ceil(sqrt(A020639(n+1)))²-(n+1)]`
-/

namespace A146316.P6992305278137431661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A020639 (n + 1) : ℝ)⌉ ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146316.P6992305278137431661

/-! ## A146316.P15164122976518047449

`p?[A068527(p?[A259153(n)])]`
-/

namespace A146316.P15164122976518047449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146316.P15164122976518047449

/-! ## A146316.P11038893372524204249

`p?[A068527(A000040(n+1))]`
-/

namespace A146316.P11038893372524204249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146316.P11038893372524204249

/-! ## A146316.P15358235936781682392

`filter[A106044(n+1), A010051(#)]`
-/

namespace A146316.P15358235936781682392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A146316.P15358235936781682392

/-! ## A146316.P16793212296688408306

`filter[A106044(n+1), A257000(#)]`
-/

namespace A146316.P16793212296688408306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A146316.P16793212296688408306

/-! ## A146316.P8020218619988460517

`p?[A068527(p?[A131380(n+2)])]`
-/

namespace A146316.P8020218619988460517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146316.P8020218619988460517

/-! ## A146316.P17928964412903667091

`p?[A048761(A006530(n+1))-(n+1)]`
-/

namespace A146316.P17928964412903667091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A006530 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146316.P17928964412903667091

/-!
# A146317: Prime differences of primes subtracted from nearest cube.

The programs for A146317, the canonical program `A146317.P11800043115764645305` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146317 has offset 1).

The definition of A146317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146317.P7532396442922768521

`p?[A333884(p?[2*n+1])]`
-/

namespace A146317.P7532396442922768521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P7532396442922768521

namespace A146317

/-- `p?[A333884(p?[2*n+1])]` -/
def P7532396442922768521.Spec : Prop :=
  ∀ n, P7532396442922768521.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P14078742886769813649

`p?[A333884(A000040(n+1))]`
-/

namespace A146317.P14078742886769813649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P14078742886769813649

namespace A146317

/-- `p?[A333884(A000040(n+1))]` -/
def P14078742886769813649.Spec : Prop :=
  ∀ n, P14078742886769813649.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P15376513274360366279

`p?[A333884(A065091(n+1))]`
-/

namespace A146317.P15376513274360366279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P15376513274360366279

namespace A146317

/-- `p?[A333884(A065091(n+1))]` -/
def P15376513274360366279.Spec : Prop :=
  ∀ n, P15376513274360366279.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P9319636378664140418

`p?[A333884(A175787(n+1))]`
-/

namespace A146317.P9319636378664140418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A175787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P9319636378664140418

namespace A146317

/-- `p?[A333884(A175787(n+1))]` -/
def P9319636378664140418.Spec : Prop :=
  ∀ n, P9319636378664140418.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P7462625732980867816

`p?[A333884(A182986(n+1))]`
-/

namespace A146317.P7462625732980867816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A182986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P7462625732980867816

namespace A146317

/-- `p?[A333884(A182986(n+1))]` -/
def P7462625732980867816.Spec : Prop :=
  ∀ n, P7462625732980867816.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P5661068102140778090

`p?[A333884(A216887(n+1))]`
-/

namespace A146317.P5661068102140778090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A216887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P5661068102140778090

namespace A146317

/-- `p?[A333884(A216887(n+1))]` -/
def P5661068102140778090.Spec : Prop :=
  ∀ n, P5661068102140778090.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P4720249551863649946

`p?[A333884(A006005(n+2))]`
-/

namespace A146317.P4720249551863649946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A006005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P4720249551863649946

namespace A146317

/-- `p?[A333884(A006005(n+2))]` -/
def P4720249551863649946.Spec : Prop :=
  ∀ n, P4720249551863649946.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P13496053054911526061

`p?[A333884(A008578(n+2))]`
-/

namespace A146317.P13496053054911526061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P13496053054911526061

namespace A146317

/-- `p?[A333884(A008578(n+2))]` -/
def P13496053054911526061.Spec : Prop :=
  ∀ n, P13496053054911526061.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P5747043899636620574

`p?[A333884(A324050(n+2))]`
-/

namespace A146317.P5747043899636620574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A324050 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P5747043899636620574

namespace A146317

/-- `p?[A333884(A324050(n+2))]` -/
def P5747043899636620574.Spec : Prop :=
  ∀ n, P5747043899636620574.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P15743391889995187556

`p?[A333884(sqrt(A001248(n+1)))]`
-/

namespace A146317.P15743391889995187556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P15743391889995187556

namespace A146317

/-- `p?[A333884(sqrt(A001248(n+1)))]` -/
def P15743391889995187556.Spec : Prop :=
  ∀ n, P15743391889995187556.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P6642188360162702106

`p?[A333884(A001748(n+1)/3)]`
-/

namespace A146317.P6642188360162702106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P6642188360162702106

namespace A146317

/-- `p?[A333884(A001748(n+1)/3)]` -/
def P6642188360162702106.Spec : Prop :=
  ∀ n, P6642188360162702106.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P17786878871093679502

`p?[A333884(A001749(n+1)/4)]`
-/

namespace A146317.P17786878871093679502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P17786878871093679502

namespace A146317

/-- `p?[A333884(A001749(n+1)/4)]` -/
def P17786878871093679502.Spec : Prop :=
  ∀ n, P17786878871093679502.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P6686130147422990114

`p?[A048763(A000040(n+1)+1)-A000040(n+1)]`
-/

namespace A146317.P6686130147422990114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A000040 (n + 1) + 1).toNat - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P6686130147422990114

namespace A146317

/-- `p?[A048763(A000040(n+1)+1)-A000040(n+1)]` -/
def P6686130147422990114.Spec : Prop :=
  ∀ n, P6686130147422990114.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P11800043115764645305

`p?[A134914(A000040(n+1)+1)^3-A000040(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146317

/-- `p?[A134914(A000040(n+1)+1)^3-A000040(n+1)]` -/
def P11800043115764645305.Spec : Prop :=
  ∀ n, P11800043115764645305.a n = A146317 (n + 1)

theorem P11800043115764645305.correct : P11800043115764645305.Spec := by
  intro n
  simp only [A146317, Nat.add_sub_cancel]

end A146317

/-! ## A146317.P9871221641332325942

`p?[A158038(n+1)]`
-/

namespace A146317.P9871221641332325942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146317.P9871221641332325942

namespace A146317

/-- `p?[A158038(n+1)]` -/
def P9871221641332325942.Spec : Prop :=
  ∀ n, P9871221641332325942.a n = A146317 (n + 1)

end A146317

/-! ## A146317.P2754169505314055751

`filter[A158038(n+1), A010051(#)]`
-/

namespace A146317.P2754169505314055751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A146317.P2754169505314055751

namespace A146317

/-- `filter[A158038(n+1), A010051(#)]` -/
def P2754169505314055751.Spec : Prop :=
  ∀ n, P2754169505314055751.a n = A146317 (n + 1)

end A146317

/-!
# A146318: Prime subtrahends of nearest cubes producing prime differences.

The programs for A146318, there is no canonical definition to state claims against.
-/

/-! ## A146318.P1738484844216252633

`p?[n*A001222(A333884(n))]`
-/

namespace A146318.P1738484844216252633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A333884 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146318.P1738484844216252633

/-! ## A146318.P12247327310761605955

`eq[A003415(A333884(n)), A211110(n)]`
-/

namespace A146318.P12247327310761605955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A333884 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146318.P12247327310761605955

/-! ## A146318.P1868069355070786115

`eq[A010051(A333884(n)), A053989(n+1)]`
-/

namespace A146318.P1868069355070786115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A333884 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146318.P1868069355070786115

/-! ## A146318.P3206775094451579357

`eq[2, A003415(n)+A003415(A333884(n))]`
-/

namespace A146318.P3206775094451579357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + A003415 (A333884 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146318.P3206775094451579357

/-! ## A146318.P1682760733047621609

`p?[A000040(n+1)*A001222(A158038(n+1))]`
-/

namespace A146318.P1682760733047621609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A158038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146318.P1682760733047621609

/-! ## A146318.P13147517100097167628

`p?[A001222(A158038(n+1))*A008578(n+2)]`
-/

namespace A146318.P13147517100097167628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158038 (n + 1)).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146318.P13147517100097167628

/-!
# A146319: Squarefree semiprimes n such that n+1 is not squarefree and n+2 is prime.

The programs for A146319, there is no canonical definition to state claims against.
-/

/-! ## A146319.P8265995250840428673

`∩[A066774(n+1), A112925(n+1)]`
-/

namespace A146319.P8265995250840428673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146319.P8265995250840428673

/-! ## A146319.P9304673450083102469

`∩[A069122(n+1), A241809(n+1)]`
-/

namespace A146319.P9304673450083102469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146319.P9304673450083102469

/-! ## A146319.P3236833928067075588

`∩[A079710(n+1), A241809(n+1)]`
-/

namespace A146319.P3236833928067075588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146319.P3236833928067075588

/-! ## A146319.P14224413648723955481

`∩[A112925(n+1), A241809(n+1)]`
-/

namespace A146319.P14224413648723955481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146319.P14224413648723955481

/-! ## A146319.P401636865724425131

`∩[A001358(n+1), A145199(n+1)-1]`
-/

namespace A146319.P401636865724425131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145199 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146319.P401636865724425131

/-!
# A146321: Inverse binomial transform of A070366.

The programs for A146321, the canonical program `A146321.P17007843695888336122` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146321 has offset 0).

The definition of A146321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146321.P17007843695888336122

`A158927(n)-A122803(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146321

/-- `A158927(n)-A122803(n)` -/
def P17007843695888336122.Spec : Prop :=
  ∀ n, P17007843695888336122.a n = A146321 n

theorem P17007843695888336122.correct : P17007843695888336122.Spec := by
  intro n
  simp only [A146321]

end A146321

/-! ## A146321.P13263897875549574653

`A158927(n)+Δ[A140966(n)]`
-/

namespace A146321.P13263897875549574653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158927 n + (f1 (n + 1) - f1 n)

end

end A146321.P13263897875549574653

namespace A146321

/-- `A158927(n)+Δ[A140966(n)]` -/
def P13263897875549574653.Spec : Prop :=
  ∀ n, P13263897875549574653.a n = A146321 n

end A146321

/-! ## A146321.P15606358524682466391

`A158927(n)-Δ[A084247(n)]`
-/

namespace A146321.P15606358524682466391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158927 n - (f1 (n + 1) - f1 n)

end

end A146321.P15606358524682466391

namespace A146321

/-- `A158927(n)-Δ[A084247(n)]` -/
def P15606358524682466391.Spec : Prop :=
  ∀ n, P15606358524682466391.a n = A146321 n

end A146321

/-! ## A146321.P5020369856929739379

`A158916(n)+A099838(n+2)`
-/

namespace A146321.P5020369856929739379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158916 n + A099838 (n + 2)

end

end A146321.P5020369856929739379

namespace A146321

/-- `A158916(n)+A099838(n+2)` -/
def P5020369856929739379.Spec : Prop :=
  ∀ n, P5020369856929739379.a n = A146321 n

end A146321

/-! ## A146321.P720748619269185635

`A158935(n)+A099838(n+4)`
-/

namespace A146321.P720748619269185635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158935 n + A099838 (n + 4)

end

end A146321.P720748619269185635

namespace A146321

/-- `A158935(n)+A099838(n+4)` -/
def P720748619269185635.Spec : Prop :=
  ∀ n, P720748619269185635.a n = A146321 n

end A146321

/-! ## A146321.P18411851443655855538

`A158935(n)-(4-A100402(n))`
-/

namespace A146321.P18411851443655855538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158935 n - (4 - A100402 n)

end

end A146321.P18411851443655855538

namespace A146321

/-- `A158935(n)-(4-A100402(n))` -/
def P18411851443655855538.Spec : Prop :=
  ∀ n, P18411851443655855538.a n = A146321 n

end A146321

/-! ## A146321.P14619584902902898545

`A070403(n)+A158916(n)-A070403(A005843(n))`
-/

namespace A146321.P14619584902902898545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 n + (A158916 n - A070403 (A005843 n).toNat)

end

end A146321.P14619584902902898545

namespace A146321

/-- `A070403(n)+A158916(n)-A070403(A005843(n))` -/
def P14619584902902898545.Spec : Prop :=
  ∀ n, P14619584902902898545.a n = A146321 n

end A146321

/-!
# A146322: a(n) = A061039(n) mod 9.

The programs for A146322, there is no canonical definition to state claims against.
-/

/-! ## A146322.P7369865966374536013

`A061039(n+3)%9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A146322.P7369865966374536013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061039 (n + 3)) 9

end

end A146322.P7369865966374536013

/-!
# A146323: a(n) = floor(Sum_{i=1..n} (1/phi(i))).

The programs for A146323, the canonical program `A146323.P11501047328226383217` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146323 has offset 1).

The definition of A146323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146323.P248236604296175577

`floor(A028415(n+1)/A048049(n+1))`
-/

namespace A146323.P248236604296175577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028415 (n + 1) : ℚ) / (A048049 (n + 1) : ℚ)⌋

end

end A146323.P248236604296175577

namespace A146323

/-- `floor(A028415(n+1)/A048049(n+1))` -/
def P248236604296175577.Spec : Prop :=
  ∀ n, P248236604296175577.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P11501047328226383217

`floor(∑[∏{p}[n+1, #]/((n+1)*∏{p}[n+1, #-1])])`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A146323

/-- `floor(∑[∏{p}[n+1, #]/((n+1)*∏{p}[n+1, #-1])])` -/
def P11501047328226383217.Spec : Prop :=
  ∀ n, P11501047328226383217.a n = A146323 (n + 1)

theorem P11501047328226383217.correct : P11501047328226383217.Spec := by
  intro n
  simp only [A146323, Nat.add_sub_cancel]

end A146323

/-! ## A146323.P6115883576099485946

`floor(∑[1/Δ[A002088(n)]])`
-/

namespace A146323.P6115883576099485946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A146323.P6115883576099485946

namespace A146323

/-- `floor(∑[1/Δ[A002088(n)]])` -/
def P6115883576099485946.Spec : Prop :=
  ∀ n, P6115883576099485946.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P6147925354000740792

`floor(∑[1/Δ[A005728(n)]])`
-/

namespace A146323.P6147925354000740792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A146323.P6147925354000740792

namespace A146323

/-- `floor(∑[1/Δ[A005728(n)]])` -/
def P6147925354000740792.Spec : Prop :=
  ∀ n, P6147925354000740792.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P16667825839417750149

`floor(∑[4/Δ[A100449(n)]])`
-/

namespace A146323.P16667825839417750149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A146323.P16667825839417750149

namespace A146323

/-- `floor(∑[4/Δ[A100449(n)]])` -/
def P16667825839417750149.Spec : Prop :=
  ∀ n, P16667825839417750149.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P5964752253387078037

`floor(∑[1/A000010(n+1)])`
-/

namespace A146323.P5964752253387078037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000010 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A146323.P5964752253387078037

namespace A146323

/-- `floor(∑[1/A000010(n+1)])` -/
def P5964752253387078037.Spec : Prop :=
  ∀ n, P5964752253387078037.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P7993188257441510096

`floor(∑[3/A200905(n+1)])`
-/

namespace A146323.P7993188257441510096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A200905 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A146323.P7993188257441510096

namespace A146323

/-- `floor(∑[3/A200905(n+1)])` -/
def P7993188257441510096.Spec : Prop :=
  ∀ n, P7993188257441510096.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P7154084359952356501

`floor(∑[1/(A039649(n+1)-1)])`
-/

namespace A146323.P7154084359952356501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A039649 (n + 1) - 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A146323.P7154084359952356501

namespace A146323

/-- `floor(∑[1/(A039649(n+1)-1)])` -/
def P7154084359952356501.Spec : Prop :=
  ∀ n, P7154084359952356501.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P15439541985686542743

`floor(∑[(n+1)/A002618(n+1)])`
-/

namespace A146323.P15439541985686542743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002618 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A146323.P15439541985686542743

namespace A146323

/-- `floor(∑[(n+1)/A002618(n+1)])` -/
def P15439541985686542743.Spec : Prop :=
  ∀ n, P15439541985686542743.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P9389694524248074340

`floor(∑[A000010(lcm(2, n+1))^-1])`
-/

namespace A146323.P9389694524248074340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.lcm 2 (n + 1)) : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A146323.P9389694524248074340

namespace A146323

/-- `floor(∑[A000010(lcm(2, n+1))^-1])` -/
def P9389694524248074340.Spec : Prop :=
  ∀ n, P9389694524248074340.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P13407912508836413106

`floor(∑[(n+1)²/A053191(n+1)])`
-/

namespace A146323.P13407912508836413106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A053191 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A146323.P13407912508836413106

namespace A146323

/-- `floor(∑[(n+1)²/A053191(n+1)])` -/
def P13407912508836413106.Spec : Prop :=
  ∀ n, P13407912508836413106.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P11672657841752680867

`floor(∑[2/A000010(n-log2(1/2))]/2)`
-/

namespace A146323.P11672657841752680867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000010 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / 2⌋

end

end A146323.P11672657841752680867

namespace A146323

/-- `floor(∑[2/A000010(n-log2(1/2))]/2)` -/
def P11672657841752680867.Spec : Prop :=
  ∀ n, P11672657841752680867.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P98892250983318919

`floor(log(A072829(n+3)))`
-/

namespace A146323.P98892250983318919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A072829 (n + 3) : ℝ)⌋

end

end A146323.P98892250983318919

namespace A146323

/-- `floor(log(A072829(n+3)))` -/
def P98892250983318919.Spec : Prop :=
  ∀ n, P98892250983318919.a n = A146323 (n + 1)

end A146323

/-! ## A146323.P4446052622532833640

`floor(∑[1/A054523(∑[n]+1)])`
-/

namespace A146323.P4446052622532833640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A054523 (∑ j ∈ Finset.range (n + 1), f2 j + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A146323.P4446052622532833640

namespace A146323

/-- `floor(∑[1/A054523(∑[n]+1)])` -/
def P4446052622532833640.Spec : Prop :=
  ∀ n, P4446052622532833640.a n = A146323 (n + 1)

end A146323

/-!
# A146325: Period 3: repeat [1, 4, 1].

The programs for A146325, the canonical program `A146325.P3323609778651546562` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146325 has offset 1).

The definition of A146325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146325.P3323609778651546562

`((n+1)%3)^((n+1)%3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A146325

/-- `((n+1)%3)^((n+1)%3)` -/
def P3323609778651546562.Spec : Prop :=
  ∀ n, (P3323609778651546562.a n : ℤ) = A146325 (n + 1)

theorem P3323609778651546562.correct : P3323609778651546562.Spec := by
  intro n
  simp only [A146325, Nat.add_sub_cancel]

end A146325

/-!
# A146327: Numbers k such that the continued fraction of (1 + sqrt(k))/2 has period 2.

The programs for A146327, there is no canonical definition to state claims against.
-/

/-! ## A146327.P238528036051968836

`eq[2, A146326(n+1)]+1`
-/

namespace A146327.P238528036051968836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A146327.P238528036051968836

/-! ## A146327.P17065573200050609176

`A344180(eq[2, A146326(A344180(n))])`
-/

namespace A146327.P17065573200050609176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146327.P17065573200050609176

/-! ## A146327.P2520589860921776155

`eq[2, A146326(A028310(n))]`
-/

namespace A146327.P2520589860921776155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146327.P2520589860921776155

/-! ## A146327.P16119055831647847670

`A020725(eq[2, A146326(n+1)])`
-/

namespace A146327.P16119055831647847670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146327.P16119055831647847670

/-! ## A146327.P7194397645007869514

`eq[2, A146326(A000007(n)+n)]`
-/

namespace A146327.P7194397645007869514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146327.P7194397645007869514

/-! ## A146327.P16853563200609794919

`eq[2, A146326(or(n, A000007(n)))]`
-/

namespace A146327.P16853563200609794919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146327.P16853563200609794919

/-! ## A146327.P14752523491632808107

`eq[2, A146326(A065033(2*n))]`
-/

namespace A146327.P14752523491632808107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146327.P14752523491632808107

/-! ## A146327.P3146174388719382557

`eq[2, A146326(A123108(2*n))]`
-/

namespace A146327.P3146174388719382557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146327.P3146174388719382557

/-!
# A146328: Numbers k such that the continued fraction of (1 + sqrt(k))/2 has period 3.

The programs for A146328, there is no canonical definition to state claims against.
-/

/-! ## A146328.P12995396088160961312

`eq[3, A146326(n+1)]+1`
-/

namespace A146328.P12995396088160961312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A146328.P12995396088160961312

/-! ## A146328.P4534878198532553352

`A141310(eq[3, A146326(n+1)])`
-/

namespace A146328.P4534878198532553352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146328.P4534878198532553352

/-! ## A146328.P8018959746624705772

`A004442(eq[3, A146326(n+1)])`
-/

namespace A146328.P8018959746624705772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146328.P8018959746624705772

/-! ## A146328.P1890033225496254821

`A065190(eq[3, A146326(n+1)])`
-/

namespace A146328.P1890033225496254821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146328.P1890033225496254821

/-! ## A146328.P12603510557280998613

`eq[3, A146326(A028310(n))]`
-/

namespace A146328.P12603510557280998613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146328.P12603510557280998613

/-! ## A146328.P15320375264643051330

`eq[3, A146326(A103889(n+1))]`
-/

namespace A146328.P15320375264643051330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A103889 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146328.P15320375264643051330

/-! ## A146328.P11882220763159177172

`eq[3, A146326(A292576(n+1))]`
-/

namespace A146328.P11882220763159177172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A292576 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146328.P11882220763159177172

/-! ## A146328.P4374516394932716091

`eq[3, A146326(A000007(n)+n)]`
-/

namespace A146328.P4374516394932716091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146328.P4374516394932716091

/-! ## A146328.P1242086765415464649

`eq[3, A146326(or(n, A000007(n)))]`
-/

namespace A146328.P1242086765415464649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146328.P1242086765415464649

/-! ## A146328.P5837497523417202501

`eq[3, A146326(A123108(2*n))]`
-/

namespace A146328.P5837497523417202501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146328.P5837497523417202501

/-!
# A146329: Numbers k such that continued fraction of (1 + sqrt(k))/2 has period 4.

The programs for A146329, there is no canonical definition to state claims against.
-/

/-! ## A146329.P1216879098554792602

`eq[4, A146326(n+1)]+1`
-/

namespace A146329.P1216879098554792602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A146329.P1216879098554792602

/-! ## A146329.P7852118923491700835

`eq[2, A146326(A028310(n))-2]`
-/

namespace A146329.P7852118923491700835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146329.P7852118923491700835

/-! ## A146329.P10547645667131618579

`eq[4, A146326(A060000(n+1))]`
-/

namespace A146329.P10547645667131618579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146329.P10547645667131618579

/-! ## A146329.P1760031779118322090

`eq[4, A146326(A000007(n)+n)]`
-/

namespace A146329.P1760031779118322090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146329.P1760031779118322090

/-! ## A146329.P921354203016293152

`eq[4, A146326(A000038(n)+n)]`
-/

namespace A146329.P921354203016293152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146329.P921354203016293152

/-! ## A146329.P15071187815861982208

`eq[4, A146326(or(n, A000007(n)))]`
-/

namespace A146329.P15071187815861982208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146329.P15071187815861982208

/-! ## A146329.P6305621772095745633

`eq[4, A146326(A065033(2*n))]`
-/

namespace A146329.P6305621772095745633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146329.P6305621772095745633

/-! ## A146329.P18160546751314202243

`eq[4, A146326(A123108(2*n))]`
-/

namespace A146329.P18160546751314202243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146329.P18160546751314202243

/-! ## A146329.P13323649016473696792

`eq[4, A146326(A233583(n+1))]`
-/

namespace A146329.P13323649016473696792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146329.P13323649016473696792

/-!
# A146330: Numbers k such that continued fraction of (1 + sqrt(k))/2 has period 5.

The programs for A146330, there is no canonical definition to state claims against.
-/

/-! ## A146330.P148489472495930165

`eq[5, A146326(n+21)]+21`
-/

namespace A146330.P148489472495930165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 21)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 21

end

end A146330.P148489472495930165

/-! ## A146330.P13276603258491611015

`eq[5, A146326(n^(n%2))]`
-/

namespace A146330.P13276603258491611015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146330.P13276603258491611015

/-! ## A146330.P17080441103057661956

`eq[5, A146326(A066182(n+1))]`
-/

namespace A146330.P17080441103057661956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146330.P17080441103057661956

/-! ## A146330.P2294669866051573226

`eq[5, A146326(A028310(n))]`
-/

namespace A146330.P2294669866051573226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146330.P2294669866051573226

/-! ## A146330.P11198438766309170386

`A004442(eq[5, A146326(n+1)])`
-/

namespace A146330.P11198438766309170386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146330.P11198438766309170386

/-! ## A146330.P1234410001286963624

`A020725(eq[5, A146326(n+1)])`
-/

namespace A146330.P1234410001286963624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146330.P1234410001286963624

/-!
# A146331: Numbers k such that continued fraction of (1 + sqrt(k))/2 has period 6.

The programs for A146331, there is no canonical definition to state claims against.
-/

/-! ## A146331.P1718625963741864292

`eq[6, A146326(n+1)]+1`
-/

namespace A146331.P1718625963741864292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A146331.P1718625963741864292

/-! ## A146331.P16449813340623918841

`eq[6, A146326(A028310(n))]`
-/

namespace A146331.P16449813340623918841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146331.P16449813340623918841

/-! ## A146331.P17678755196665373630

`A020725(eq[6, A146326(n+1)])`
-/

namespace A146331.P17678755196665373630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146331.P17678755196665373630

/-! ## A146331.P7423149777852377086

`A153152(eq[6, A146326(n+1)])`
-/

namespace A146331.P7423149777852377086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146331.P7423149777852377086

/-! ## A146331.P10382007544779865939

`A326178(eq[6, A146326(n+1)])`
-/

namespace A146331.P10382007544779865939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146331.P10382007544779865939

/-! ## A146331.P10662835313401303744

`eq[6, A146326(A065033(2*n))]`
-/

namespace A146331.P10662835313401303744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146331.P10662835313401303744

/-! ## A146331.P1618921505383705793

`eq[6, A146326(A123108(2*n))]`
-/

namespace A146331.P1618921505383705793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146331.P1618921505383705793

/-! ## A146331.P2221913528603535684

`eq[6, A146326(A233583(n+1))]`
-/

namespace A146331.P2221913528603535684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146331.P2221913528603535684

/-!
# A146332: Numbers k such that the continued fraction of (1 + sqrt(k))/2 has period 7.

The programs for A146332, there is no canonical definition to state claims against.
-/

/-! ## A146332.P1605903697193012389

`eq[7, A146326(n^(n%2))]`
-/

namespace A146332.P1605903697193012389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146332.P1605903697193012389

/-! ## A146332.P15600578295696660529

`eq[7, A146326(A066182(n+1))]`
-/

namespace A146332.P15600578295696660529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146332.P15600578295696660529

/-! ## A146332.P17893284487504832661

`eq[7, A146326(A028310(n))]`
-/

namespace A146332.P17893284487504832661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146332.P17893284487504832661

/-! ## A146332.P15335266427519519833

`A004442(eq[7, A146326(n+1)])`
-/

namespace A146332.P15335266427519519833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146332.P15335266427519519833

/-! ## A146332.P5690039973040691029

`A020725(eq[7, A146326(n+1)])`
-/

namespace A146332.P5690039973040691029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146332.P5690039973040691029

/-!
# A146333: Numbers k such that continued fraction of (1 + sqrt(k))/2 has period 8.

The programs for A146333, there is no canonical definition to state claims against.
-/

/-! ## A146333.P16241688398387078442

`eq[8, A146326(n+1)]+1`
-/

namespace A146333.P16241688398387078442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A146333.P16241688398387078442

/-! ## A146333.P4435889649942594780

`eq[8, A146326(A028310(n))]`
-/

namespace A146333.P4435889649942594780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146333.P4435889649942594780

/-! ## A146333.P1230046205683913702

`A020725(eq[8, A146326(n+1)])`
-/

namespace A146333.P1230046205683913702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146333.P1230046205683913702

/-! ## A146333.P7283126986645477284

`eq[8, A146326(A060000(n+1))]`
-/

namespace A146333.P7283126986645477284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146333.P7283126986645477284

/-! ## A146333.P6531585477347510595

`A153152(eq[8, A146326(n+1)])`
-/

namespace A146333.P6531585477347510595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146333.P6531585477347510595

/-! ## A146333.P15231616875757761393

`A326178(eq[8, A146326(n+1)])`
-/

namespace A146333.P15231616875757761393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146333.P15231616875757761393

/-! ## A146333.P3675990213210947645

`eq[8, A146326(A138153(n+1))]`
-/

namespace A146333.P3675990213210947645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146333.P3675990213210947645

/-! ## A146333.P7624737842846694782

`eq[8, A146326(A233583(n+1))]`
-/

namespace A146333.P7624737842846694782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146333.P7624737842846694782

/-!
# A146334: Numbers k such that continued fraction of (1 + sqrt(k))/2 has period 10.

The programs for A146334, there is no canonical definition to state claims against.
-/

/-! ## A146334.P13362000029170717780

`eq[10, A146326(A028310(n))]`
-/

namespace A146334.P13362000029170717780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146334.P13362000029170717780

/-! ## A146334.P4824615197683424804

`A020725(eq[10, A146326(n+1)])`
-/

namespace A146334.P4824615197683424804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146334.P4824615197683424804

/-! ## A146334.P14888350166780292094

`A153152(eq[10, A146326(n+1)])`
-/

namespace A146334.P14888350166780292094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146334.P14888350166780292094

/-! ## A146334.P16589528284630073

`A326178(eq[10, A146326(n+1)])`
-/

namespace A146334.P16589528284630073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146334.P16589528284630073

/-! ## A146334.P3454523406395040697

`eq[10, A146326(A123108(2*n))]`
-/

namespace A146334.P3454523406395040697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146334.P3454523406395040697

/-! ## A146334.P6007211834668063762

`eq[10, A146326(A233583(n+1))]`
-/

namespace A146334.P6007211834668063762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146334.P6007211834668063762

/-!
# A146335: Numbers k such that continued fraction of (1 + sqrt(k))/2 has period 11.

The programs for A146335, there is no canonical definition to state claims against.
-/

/-! ## A146335.P10234576218929580592

`eq[11, A146326(A066182(n+1))]`
-/

namespace A146335.P10234576218929580592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146335.P10234576218929580592

/-! ## A146335.P1281674441376031521

`eq[11, A146326(A028310(n))]`
-/

namespace A146335.P1281674441376031521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146335.P1281674441376031521

/-! ## A146335.P7401745611357948274

`A004442(eq[11, A146326(n+1)])`
-/

namespace A146335.P7401745611357948274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146335.P7401745611357948274

/-! ## A146335.P14790677848258075837

`A153152(eq[11, A146326(n+1)])`
-/

namespace A146335.P14790677848258075837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146335.P14790677848258075837

/-!
# A146336: Numbers k such that continued fraction of (1 + sqrt(k))/2 has period 12.

The programs for A146336, there is no canonical definition to state claims against.
-/

/-! ## A146336.P12959792304293970679

`eq[12, A146326(n+1)]+1`
-/

namespace A146336.P12959792304293970679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A146336.P12959792304293970679

/-! ## A146336.P8167704132246525029

`eq[12, A146326(A028310(n))]`
-/

namespace A146336.P8167704132246525029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146336.P8167704132246525029

/-! ## A146336.P14259182764544478747

`eq[12, A146326(A060000(n+1))]`
-/

namespace A146336.P14259182764544478747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146336.P14259182764544478747

/-! ## A146336.P11329113408233694490

`eq[12, A146326(A138153(n+1))]`
-/

namespace A146336.P11329113408233694490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146336.P11329113408233694490

/-! ## A146336.P10767133369127757287

`eq[2, A146326(A123108(2*n))-10]`
-/

namespace A146336.P10767133369127757287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A123108 (2 * n)).toNat - 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146336.P10767133369127757287

/-! ## A146336.P10945829823541650324

`eq[12, A146326(A233583(n+1))]`
-/

namespace A146336.P10945829823541650324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146336.P10945829823541650324

/-!
# A146337: Numbers k such that continued fraction of (1 + sqrt(k))/2 has period 14.

The programs for A146337, there is no canonical definition to state claims against.
-/

/-! ## A146337.P15796289770244464012

`eq[14, A146326(n+1)]+1`
-/

namespace A146337.P15796289770244464012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A146337.P15796289770244464012

/-! ## A146337.P15838350844472948683

`eq[14, A146326(A028310(n))]`
-/

namespace A146337.P15838350844472948683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146337.P15838350844472948683

/-! ## A146337.P7866057683708671184

`A020725(eq[14, A146326(n+1)])`
-/

namespace A146337.P7866057683708671184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146337.P7866057683708671184

/-! ## A146337.P6331882205140138212

`eq[14, A146326(A123108(2*n))]`
-/

namespace A146337.P6331882205140138212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146337.P6331882205140138212

/-! ## A146337.P15048960145357876096

`eq[7, A146326(A065033(2*n))-7]`
-/

namespace A146337.P15048960145357876096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A065033 (2 * n)).toNat - 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146337.P15048960145357876096

/-! ## A146337.P8365410351359469695

`eq[14, A146326(A233583(n+1))]`
-/

namespace A146337.P8365410351359469695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146337.P8365410351359469695

/-!
# A146339: Numbers k such that the continued fraction of (1 + sqrt(k))/2 has period 16.

The programs for A146339, there is no canonical definition to state claims against.
-/

/-! ## A146339.P18310813787886562734

`eq[16, A146326(n+1)]+1`
-/

namespace A146339.P18310813787886562734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A146339.P18310813787886562734

/-! ## A146339.P8539240005278193656

`eq[16, A146326(A028310(n))]`
-/

namespace A146339.P8539240005278193656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146339.P8539240005278193656

/-! ## A146339.P16501050581787080241

`A020725(eq[16, A146326(n+1)])`
-/

namespace A146339.P16501050581787080241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146339.P16501050581787080241

/-! ## A146339.P1220786349344630580

`A153152(eq[16, A146326(n+1)])`
-/

namespace A146339.P1220786349344630580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146339.P1220786349344630580

/-! ## A146339.P1421694451089298300

`eq[16, A146326(A065033(2*n))]`
-/

namespace A146339.P1421694451089298300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146339.P1421694451089298300

/-! ## A146339.P3782259861555517967

`eq[16, A146326(A123108(2*n))]`
-/

namespace A146339.P3782259861555517967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146339.P3782259861555517967

/-!
# A146343: a(n) = smallest number k such that the continued fraction of (1 + sqrt(k))/2 has period n.

The programs for A146343, there is no canonical definition to state claims against.
-/

/-! ## A146343.P14078782041981216813

`A146363(n+1)-A141727(A146363(n+1))`
-/

namespace A146343.P14078782041981216813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146363 (n + 1) - A141727 (A146363 (n + 1)).toNat

end

end A146343.P14078782041981216813

/-! ## A146343.P4653940479719510789

`A146363(n+1)-A122841(A233062(2*(n+2)))`
-/

namespace A146343.P4653940479719510789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146363 (n + 1) - A122841 (A233062 (2 * (n + 2))).toNat

end

end A146343.P4653940479719510789

/-! ## A146343.P7168213568500572567

`A146363(n+1)+A089802(A048744(n+3))`
-/

namespace A146343.P7168213568500572567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146363 (n + 1) + A089802 (A048744 (n + 3)).toNat

end

end A146343.P7168213568500572567

/-!
# A146344: Records in A146326.

The programs for A146344, there is no canonical definition to state claims against.
-/

/-! ## A146344.P12347375574880647867

`A146326(A146345(n+1))`
-/

namespace A146344.P12347375574880647867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A146345 (n + 1)).toNat

end

end A146344.P12347375574880647867

/-! ## A146344.P16232837737881695540

`record[A146326(n+1)]`
-/

namespace A146344.P16232837737881695540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146344.P16232837737881695540

/-! ## A146344.P15757610629820655556

`lcm(2, record[A146326(A028310(n))])`
-/

namespace A146344.P15757610629820655556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A146344.P15757610629820655556

/-! ## A146344.P9824339455335059552

`record[A146326(A028310(n))%A052938(n)]`
-/

namespace A146344.P9824339455335059552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146326 (A028310 n).toNat) (A052938 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146344.P9824339455335059552

/-! ## A146344.P8894555303701895337

`record[A146326(A210062(n))%A028310(n)]`
-/

namespace A146344.P8894555303701895337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146326 (A210062 n).toNat) (A028310 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146344.P8894555303701895337

/-!
# A146348: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 3.

The programs for A146348, there is no canonical definition to state claims against.
-/

/-! ## A146348.P182078901025760816

`p?[A146328(n+1)]`
-/

namespace A146348.P182078901025760816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146348.P182078901025760816

/-! ## A146348.P10685485294027404259

`p?[n%2*A146328(A065033(n))]`
-/

namespace A146348.P10685485294027404259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A146328 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146348.P10685485294027404259

/-! ## A146348.P710653996548023417

`p?[A146328(A052938(n))-and(1, n)]`
-/

namespace A146348.P710653996548023417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (A052938 n).toNat - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146348.P710653996548023417

/-! ## A146348.P1588199725496249247

`p?[A146328(A008619(n))-A000035(n)]`
-/

namespace A146348.P1588199725496249247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (A008619 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146348.P1588199725496249247

/-! ## A146348.P11436472747606043904

`p?[A146328(A052938(n))-A000035(n)]`
-/

namespace A146348.P11436472747606043904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (A052938 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146348.P11436472747606043904

/-! ## A146348.P7865373255904609498

`p?[A000035(n)*A146328(A065033(n))]`
-/

namespace A146348.P7865373255904609498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A146328 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146348.P7865373255904609498

/-! ## A146348.P15788115023450067630

`p?[A000035(n)*A146328(A152271(n))]`
-/

namespace A146348.P15788115023450067630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A146328 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146348.P15788115023450067630

/-! ## A146348.P10693057802433478507

`p?[A010872(n)*A146328(A008620(n))]`
-/

namespace A146348.P10693057802433478507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n * A146328 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146348.P10693057802433478507

/-! ## A146348.P6407817433601636049

`∩[A002144(n+1), A146328(n+1)]`
-/

namespace A146348.P6407817433601636049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P6407817433601636049

/-! ## A146348.P12421040069575997803

`∩[A002313(n+1), A146328(n+1)]`
-/

namespace A146348.P12421040069575997803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P12421040069575997803

/-! ## A146348.P383056580891454488

`∩[A146328(n+1), A280084(n+1)]`
-/

namespace A146348.P383056580891454488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P383056580891454488

/-! ## A146348.P14361894351649962946

`∩[A055025(n+1), A146328(n+1)]`
-/

namespace A146348.P14361894351649962946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P14361894351649962946

/-! ## A146348.P10263460103549400944

`∩[A085759(n+1), A146328(n+1)]`
-/

namespace A146348.P10263460103549400944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P10263460103549400944

/-! ## A146348.P8931881704270573691

`∩[A120960(n+1), A146328(n+1)]`
-/

namespace A146348.P8931881704270573691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P8931881704270573691

/-! ## A146348.P7630314821238858574

`∩[A146328(n+1), A172480(n+1)]`
-/

namespace A146348.P7630314821238858574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P7630314821238858574

/-! ## A146348.P15832784201069840770

`∩[A146328(n+1), A175768(n+1)]`
-/

namespace A146348.P15832784201069840770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P15832784201069840770

/-! ## A146348.P8971572665885588659

`∩[A109515(n+1), A146328(n+1)]`
-/

namespace A146348.P8971572665885588659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P8971572665885588659

/-! ## A146348.P3737863764278574028

`∩[A146328(n+1), A266987(n+1)]`
-/

namespace A146348.P3737863764278574028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P3737863764278574028

/-! ## A146348.P10055534250280555291

`∩[A079348(n+1), A146328(n+1)]`
-/

namespace A146348.P10055534250280555291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P10055534250280555291

/-! ## A146348.P11963314754407064868

`∩[A125018(n+1), A146328(n+1)]`
-/

namespace A146348.P11963314754407064868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146348.P11963314754407064868

/-!
# A146350: Primes p such that continued fraction of (1+sqrt(p))/2 has period 5 : primes in A146330.

The programs for A146350, there is no canonical definition to state claims against.
-/

/-! ## A146350.P18409636853852968703

`p?[A146330(n+1)]`
-/

namespace A146350.P18409636853852968703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146350.P18409636853852968703

/-! ## A146350.P11924937522129574788

`p?[record[A146330(A152271(n))]]`
-/

namespace A146350.P11924937522129574788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146350.P11924937522129574788

/-! ## A146350.P16429339585473467254

`p?[A000035(n)*A146330(A152271(n))]`
-/

namespace A146350.P16429339585473467254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A146330 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146350.P16429339585473467254

/-! ## A146350.P5858137218369375901

`p?[A010167(n)*A146330(A152271(n))]`
-/

namespace A146350.P5858137218369375901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010167 n * A146330 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146350.P5858137218369375901

/-! ## A146350.P2051335049081869714

`p?[A134451(n)*A146330(A152271(n))]`
-/

namespace A146350.P2051335049081869714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n * A146330 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146350.P2051335049081869714

/-! ## A146350.P5624708014886512380

`A000027(p?[A146330(n-log2(1/2))])`
-/

namespace A146350.P5624708014886512380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146350.P5624708014886512380

/-! ## A146350.P4771146384229355634

`∩[A002144(n+1), A146330(n+1)]`
-/

namespace A146350.P4771146384229355634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146350.P4771146384229355634

/-! ## A146350.P14757725609794991033

`∩[A002313(n+1), A146330(n+1)]`
-/

namespace A146350.P14757725609794991033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146350.P14757725609794991033

/-! ## A146350.P10034300380456506432

`∩[A055025(n+1), A146330(n+1)]`
-/

namespace A146350.P10034300380456506432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146350.P10034300380456506432

/-! ## A146350.P8322266538819966809

`∩[A085759(n+1), A146330(n+1)]`
-/

namespace A146350.P8322266538819966809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146350.P8322266538819966809

/-! ## A146350.P9537393240550641179

`∩[A120960(n+1), A146330(n+1)]`
-/

namespace A146350.P9537393240550641179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146350.P9537393240550641179

/-! ## A146350.P347191001470907352

`∩[A146330(n+1), A172480(n+1)]`
-/

namespace A146350.P347191001470907352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146350.P347191001470907352

/-! ## A146350.P9653109020001810902

`∩[A146330(n+1), A280084(n+1)]`
-/

namespace A146350.P9653109020001810902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146350.P9653109020001810902

/-! ## A146350.P9027419497651757091

`∩[A146330(n+1), A175768(n+1)]`
-/

namespace A146350.P9027419497651757091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146350.P9027419497651757091

/-! ## A146350.P2331674402308928133

`∩[A109515(n+1), A146330(n+1)]`
-/

namespace A146350.P2331674402308928133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146350.P2331674402308928133

/-!
# A146351: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 6: primes in A146331.

The programs for A146351, there is no canonical definition to state claims against.
-/

/-! ## A146351.P15185431981808459871

`p?[A020347(n+1)]`
-/

namespace A146351.P15185431981808459871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146351.P15185431981808459871

/-! ## A146351.P14902070980908949093

`p?[A146331(n+1)]`
-/

namespace A146351.P14902070980908949093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146351.P14902070980908949093

/-! ## A146351.P11799197216136483078

`∩[A007520(n+1), A020347(n+1)]`
-/

namespace A146351.P11799197216136483078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146351.P11799197216136483078

/-! ## A146351.P6719882914305295806

`∩[A020347(n+1), A045339(n+1)]`
-/

namespace A146351.P6719882914305295806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146351.P6719882914305295806

/-! ## A146351.P7927246506755547566

`∩[A007520(n+1), A146331(n+1)]`
-/

namespace A146351.P7927246506755547566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146351.P7927246506755547566

/-! ## A146351.P4697648675603694887

`∩[A020347(n+1), A051071(n+1)]`
-/

namespace A146351.P4697648675603694887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146351.P4697648675603694887

/-! ## A146351.P6595616999087309517

`∩[A020347(n+1), A051073(n+1)]`
-/

namespace A146351.P6595616999087309517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146351.P6595616999087309517

/-! ## A146351.P18416508484117740327

`∩[A002145(n+1), A020347(n+1)]`
-/

namespace A146351.P18416508484117740327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146351.P18416508484117740327

/-! ## A146351.P5899713673569419849

`∩[A003629(n+1), A020347(n+1)]`
-/

namespace A146351.P5899713673569419849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146351.P5899713673569419849

/-! ## A146351.P17791586749028464557

`∩[A020347(n+1), A033200(n+1)]`
-/

namespace A146351.P17791586749028464557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146351.P17791586749028464557

/-!
# A146352: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 7: primes in A146332.

The programs for A146352, there is no canonical definition to state claims against.
-/

/-! ## A146352.P237369886378877360

`p?[A146332(n+1)]`
-/

namespace A146352.P237369886378877360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146352.P237369886378877360

/-! ## A146352.P6333380275590444212

`p?[or(1, A146332(n-log2(1/2)))]`
-/

namespace A146352.P6333380275590444212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146332 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146352.P6333380275590444212

/-! ## A146352.P6725949110398773702

`p?[A146332(-xor(n, -1))%A016972(n)]`
-/

namespace A146352.P6725949110398773702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146332 (-Int.xor (n : ℤ) (-1)).toNat) (A016972 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146352.P6725949110398773702

/-! ## A146352.P9763259732669237078

`p?[A146332(n-log2(1/2))%A016972(n)]`
-/

namespace A146352.P9763259732669237078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146332 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (A016972 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146352.P9763259732669237078

/-! ## A146352.P6283720926230962262

`A000027(p?[A146332(n-log2(1/2))])`
-/

namespace A146352.P6283720926230962262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146332 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146352.P6283720926230962262

/-! ## A146352.P13351625014459311747

`p?[A146332(n-log2(1/2))]-A277516(n²)`
-/

namespace A146352.P13351625014459311747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146332 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A277516 (n ^ 2)

end

end A146352.P13351625014459311747

/-! ## A146352.P10158329520827909102

`∩[A002144(n+1), A146332(n+1)]`
-/

namespace A146352.P10158329520827909102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146352.P10158329520827909102

/-! ## A146352.P2835458889371128714

`∩[A002313(n+1), A146332(n+1)]`
-/

namespace A146352.P2835458889371128714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146352.P2835458889371128714

/-! ## A146352.P9103208142235805152

`∩[A146332(n+1), A280084(n+1)]`
-/

namespace A146352.P9103208142235805152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146352.P9103208142235805152

/-! ## A146352.P13633286536578878001

`∩[A055025(n+1), A146332(n+1)]`
-/

namespace A146352.P13633286536578878001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146352.P13633286536578878001

/-!
# A146353: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 8; primes in A146333.

The programs for A146353, there is no canonical definition to state claims against.
-/

/-! ## A146353.P13132021641008252503

`p?[A146333(n+1)]`
-/

namespace A146353.P13132021641008252503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146353.P13132021641008252503

/-! ## A146353.P3215523753795376521

`record[p?[A146333(A291769(n))]]`
-/

namespace A146353.P3215523753795376521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146333 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146353.P3215523753795376521

/-! ## A146353.P8934732720311402904

`record[p?[A146333(A292266(n))]]`
-/

namespace A146353.P8934732720311402904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146333 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146353.P8934732720311402904

/-! ## A146353.P10775257210738771166

`p?[A020348(n+1)]`
-/

namespace A146353.P10775257210738771166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146353.P10775257210738771166

/-! ## A146353.P503141046450108382

`∩[A007522(n+1), A020348(n+1)]`
-/

namespace A146353.P503141046450108382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146353.P503141046450108382

/-! ## A146353.P3762343882068781544

`∩[A020348(n+1), A045382(n+1)]`
-/

namespace A146353.P3762343882068781544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146353.P3762343882068781544

/-! ## A146353.P16329177411605075685

`∩[A014663(n+1), A020348(n+1)]`
-/

namespace A146353.P16329177411605075685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146353.P16329177411605075685

/-!
# A146354: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 9: primes in A143577.

The programs for A146354, there is no canonical definition to state claims against.
-/

/-! ## A146354.P1857383861349419781

`p?[A143577(n+1)]`
-/

namespace A146354.P1857383861349419781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146354.P1857383861349419781

/-! ## A146354.P403641388890465476

`p?[or(1, A143577(-xor(n, -1)))]`
-/

namespace A146354.P403641388890465476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A143577 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146354.P403641388890465476

/-! ## A146354.P16600327505473642505

`p?[record[A143577(A154958(n))]]`
-/

namespace A146354.P16600327505473642505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146354.P16600327505473642505

/-! ## A146354.P9908262514644742976

`p?[A143577(A008619(n))-and(1, n)]`
-/

namespace A146354.P9908262514644742976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (A008619 n).toNat - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146354.P9908262514644742976

/-! ## A146354.P11788181269154342067

`p?[A000034(2*n)*A143577(-xor(n, -1))]`
-/

namespace A146354.P11788181269154342067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A143577 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146354.P11788181269154342067

/-! ## A146354.P1341390947020784716

`p?[A143577(A008619(n))-A000035(n)]`
-/

namespace A146354.P1341390947020784716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (A008619 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146354.P1341390947020784716

/-! ## A146354.P5059985142093002931

`p?[A033999(n)*A143577(A008619(n))]`
-/

namespace A146354.P5059985142093002931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A143577 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146354.P5059985142093002931

/-! ## A146354.P14419427281444569475

`p?[A000034(n)*A143577(A008619(n))]`
-/

namespace A146354.P14419427281444569475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A143577 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146354.P14419427281444569475

/-! ## A146354.P17254309370951343260

`∩[A002144(n+1), A143577(n+1)]`
-/

namespace A146354.P17254309370951343260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P17254309370951343260

/-! ## A146354.P13757165321061041611

`∩[A002313(n+1), A143577(n+1)]`
-/

namespace A146354.P13757165321061041611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P13757165321061041611

/-! ## A146354.P4399277861149725173

`∩[A015919(n+1), A143577(n+1)]`
-/

namespace A146354.P4399277861149725173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P4399277861149725173

/-! ## A146354.P3600916063678046083

`∩[A055025(n+1), A143577(n+1)]`
-/

namespace A146354.P3600916063678046083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P3600916063678046083

/-! ## A146354.P14277368980758660492

`∩[A085759(n+1), A143577(n+1)]`
-/

namespace A146354.P14277368980758660492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P14277368980758660492

/-! ## A146354.P3740800918092594664

`∩[A120960(n+1), A143577(n+1)]`
-/

namespace A146354.P3740800918092594664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P3740800918092594664

/-! ## A146354.P7014693065542811749

`∩[A143577(n+1), A172480(n+1)]`
-/

namespace A146354.P7014693065542811749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P7014693065542811749

/-! ## A146354.P11644842203329760384

`∩[A143577(n+1), A280084(n+1)]`
-/

namespace A146354.P11644842203329760384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P11644842203329760384

/-! ## A146354.P16205322942296914317

`∩[A143577(n+1), A175768(n+1)]`
-/

namespace A146354.P16205322942296914317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P16205322942296914317

/-! ## A146354.P10109607682570328641

`∩[A109515(n+1), A143577(n+1)]`
-/

namespace A146354.P10109607682570328641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P10109607682570328641

/-! ## A146354.P3134992583339974463

`∩[A143577(n+1), A266987(n+1)]`
-/

namespace A146354.P3134992583339974463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P3134992583339974463

/-! ## A146354.P8102335132606979647

`∩[A049092(n+1), A143577(n+1)]`
-/

namespace A146354.P8102335132606979647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146354.P8102335132606979647

/-!
# A146355: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 10 : primes in A146335.

The programs for A146355, there is no canonical definition to state claims against.
-/

/-! ## A146355.P3389641282340373261

`p?[A146334(n+1)]`
-/

namespace A146355.P3389641282340373261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146355.P3389641282340373261

/-! ## A146355.P2932853335476311033

`record[p?[A146334(A292266(n))]]`
-/

namespace A146355.P2932853335476311033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146334 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146355.P2932853335476311033

/-! ## A146355.P13062186166729527043

`record[p?[A146334(A324346(n))]]`
-/

namespace A146355.P13062186166729527043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146334 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146355.P13062186166729527043

/-! ## A146355.P16794468211247522885

`record[p?[A146334(A324347(n))]]`
-/

namespace A146355.P16794468211247522885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146334 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146355.P16794468211247522885

/-! ## A146355.P9868038747103321080

`p?[A020349(n+1)]`
-/

namespace A146355.P9868038747103321080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146355.P9868038747103321080

/-! ## A146355.P11187510999956289560

`record[p?[A146334(A133310(n))]]`
-/

namespace A146355.P11187510999956289560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146334 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146355.P11187510999956289560

/-! ## A146355.P5636337020775514698

`∩[A007520(n+1), A020349(n+1)]`
-/

namespace A146355.P5636337020775514698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146355.P5636337020775514698

/-! ## A146355.P8352918522585218927

`∩[A020349(n+1), A045339(n+1)]`
-/

namespace A146355.P8352918522585218927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146355.P8352918522585218927

/-! ## A146355.P13831885869229502631

`∩[A020349(n+1), A051071(n+1)]`
-/

namespace A146355.P13831885869229502631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146355.P13831885869229502631

/-!
# A146356: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 11: primes in A146335.

The programs for A146356, there is no canonical definition to state claims against.
-/

/-! ## A146356.P2906415651207512836

`p?[A146335(n+1)]`
-/

namespace A146356.P2906415651207512836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146356.P2906415651207512836

/-! ## A146356.P2315924224802552297

`p?[or(1, A146335(n-log2(1/2)))]`
-/

namespace A146356.P2315924224802552297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146335 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146356.P2315924224802552297

/-! ## A146356.P4284198056556441695

`p?[record[A146335(A154958(n))]]`
-/

namespace A146356.P4284198056556441695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146335 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146356.P4284198056556441695

/-! ## A146356.P18187970491850506565

`p?[A146335(n-log2(1/2))-A000007(n)]`
-/

namespace A146356.P18187970491850506565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146335 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146356.P18187970491850506565

/-! ## A146356.P18020690873228763831

`A000027(p?[A146335(n-log2(1/2))])`
-/

namespace A146356.P18020690873228763831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146335 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146356.P18020690873228763831

/-! ## A146356.P367971809947620768

`∩[A146335(n+1), A363147(n+1)]`
-/

namespace A146356.P367971809947620768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146356.P367971809947620768

/-! ## A146356.P11815950671599396574

`∩[A002144(n+1), A146335(n+1)]`
-/

namespace A146356.P11815950671599396574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146356.P11815950671599396574

/-! ## A146356.P11503171930512398181

`∩[A002313(n+1), A146335(n+1)]`
-/

namespace A146356.P11503171930512398181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146356.P11503171930512398181

/-! ## A146356.P12919059230762709594

`∩[A055025(n+1), A146335(n+1)]`
-/

namespace A146356.P12919059230762709594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146356.P12919059230762709594

/-!
# A146357: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 12 : primes in A146336.

The programs for A146357, there is no canonical definition to state claims against.
-/

/-! ## A146357.P14539429672564621635

`p?[A020351(n+1)]`
-/

namespace A146357.P14539429672564621635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146357.P14539429672564621635

/-! ## A146357.P17508675212527165385

`p?[A146336(n+1)]`
-/

namespace A146357.P17508675212527165385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146357.P17508675212527165385

/-! ## A146357.P3762281401789201546

`∩[A007522(n+1), A020351(n+1)]`
-/

namespace A146357.P3762281401789201546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146357.P3762281401789201546

/-! ## A146357.P15285668812671221237

`∩[A020351(n+1), A045382(n+1)]`
-/

namespace A146357.P15285668812671221237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146357.P15285668812671221237

/-! ## A146357.P4264200825417315160

`∩[A020351(n+1), A089199(n+1)]`
-/

namespace A146357.P4264200825417315160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146357.P4264200825417315160

/-! ## A146357.P7643928138674213554

`∩[A014663(n+1), A020351(n+1)]`
-/

namespace A146357.P7643928138674213554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146357.P7643928138674213554

/-! ## A146357.P17067246756027018616

`∩[A020351(n+1), A040098(n+1)]`
-/

namespace A146357.P17067246756027018616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146357.P17067246756027018616

/-! ## A146357.P8345071294257480965

`∩[A020351(n+1), A040141(n+1)]`
-/

namespace A146357.P8345071294257480965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146357.P8345071294257480965

/-! ## A146357.P15695345974240578422

`∩[A020351(n+1), A045315(n+1)]`
-/

namespace A146357.P15695345974240578422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146357.P15695345974240578422

/-!
# A146358: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 13: primes in A333640.

The programs for A146358, there is no canonical definition to state claims against.
-/

/-! ## A146358.P16316868894208665127

`p?[A333640(n+1)]`
-/

namespace A146358.P16316868894208665127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146358.P16316868894208665127

/-! ## A146358.P10227110152093053177

`p?[record[A333640(A154958(n))]]`
-/

namespace A146358.P10227110152093053177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146358.P10227110152093053177

/-! ## A146358.P6133768469019592739

`p?[record[A333640(A331300(n))]]`
-/

namespace A146358.P6133768469019592739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146358.P6133768469019592739

/-! ## A146358.P16219383027572722822

`∩[A333640(n+1), A363147(n+1)]`
-/

namespace A146358.P16219383027572722822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146358.P16219383027572722822

/-! ## A146358.P12635017488775517743

`∩[A002144(n+1), A333640(n+1)]`
-/

namespace A146358.P12635017488775517743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146358.P12635017488775517743

/-! ## A146358.P12023372545577818069

`∩[A002313(n+1), A333640(n+1)]`
-/

namespace A146358.P12023372545577818069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146358.P12023372545577818069

/-! ## A146358.P4871124699963294139

`∩[A055025(n+1), A333640(n+1)]`
-/

namespace A146358.P4871124699963294139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146358.P4871124699963294139

/-! ## A146358.P716975920956081989

`∩[A085759(n+1), A333640(n+1)]`
-/

namespace A146358.P716975920956081989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146358.P716975920956081989

/-! ## A146358.P1804561555671883654

`∩[A120960(n+1), A333640(n+1)]`
-/

namespace A146358.P1804561555671883654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146358.P1804561555671883654

/-! ## A146358.P16970522801575797118

`∩[A172480(n+1), A333640(n+1)]`
-/

namespace A146358.P16970522801575797118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146358.P16970522801575797118

/-! ## A146358.P11480183693553786219

`∩[A280084(n+1), A333640(n+1)]`
-/

namespace A146358.P11480183693553786219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146358.P11480183693553786219

/-! ## A146358.P18234692960083166404

`∩[A175768(n+1), A333640(n+1)]`
-/

namespace A146358.P18234692960083166404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146358.P18234692960083166404

/-! ## A146358.P7880740816868425861

`∩[A109515(n+1), A333640(n+1)]`
-/

namespace A146358.P7880740816868425861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146358.P7880740816868425861

/-!
# A146359: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 14: primes in A146337.

The programs for A146359, there is no canonical definition to state claims against.
-/

/-! ## A146359.P8877256727235560196

`p?[A020353(n+1)]`
-/

namespace A146359.P8877256727235560196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146359.P8877256727235560196

/-! ## A146359.P14205740652946387430

`p?[A146337(n+1)]`
-/

namespace A146359.P14205740652946387430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146359.P14205740652946387430

/-! ## A146359.P17899740267181303933

`p?[record[A146337(A324346(n))]]`
-/

namespace A146359.P17899740267181303933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146337 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146359.P17899740267181303933

/-! ## A146359.P8545810685986057307

`∩[A007520(n+1), A020353(n+1)]`
-/

namespace A146359.P8545810685986057307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146359.P8545810685986057307

/-! ## A146359.P10286873430210751155

`∩[A020353(n+1), A045339(n+1)]`
-/

namespace A146359.P10286873430210751155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146359.P10286873430210751155

/-! ## A146359.P9672782874085631782

`∩[A007520(n+1), A146337(n+1)]`
-/

namespace A146359.P9672782874085631782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146359.P9672782874085631782

/-! ## A146359.P5078929297598910137

`∩[A045339(n+1), A146337(n+1)]`
-/

namespace A146359.P5078929297598910137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146359.P5078929297598910137

/-! ## A146359.P15328592940346953239

`∩[A020353(n+1), A163183(n+1)]`
-/

namespace A146359.P15328592940346953239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146359.P15328592940346953239

/-! ## A146359.P3327342617041980645

`∩[A020353(n+1), A095282(n+1)]`
-/

namespace A146359.P3327342617041980645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146359.P3327342617041980645

/-! ## A146359.P4017414190121933737

`∩[A095282(n+1), A146337(n+1)]`
-/

namespace A146359.P4017414190121933737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146359.P4017414190121933737

/-!
# A146360: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 15: primes in A146338.

The programs for A146360, there is no canonical definition to state claims against.
-/

/-! ## A146360.P768352545120107339

`p?[A146338(n+1)]`
-/

namespace A146360.P768352545120107339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146360.P768352545120107339

/-! ## A146360.P15792376920098161783

`p?[or(1, A146338(n-log2(1/2)))]`
-/

namespace A146360.P15792376920098161783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146338 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146360.P15792376920098161783

/-! ## A146360.P1328909670563087696

`record[p?[A146338(A052938(n))]]`
-/

namespace A146360.P1328909670563087696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146338 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146360.P1328909670563087696

/-! ## A146360.P742438291612353678

`p?[record[A146338(A154958(n))]]`
-/

namespace A146360.P742438291612353678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146338 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146360.P742438291612353678

/-! ## A146360.P8453318717644085077

`p?[A146338(A052938(n))*A253414(2*n)]`
-/

namespace A146360.P8453318717644085077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146338 (A052938 n).toNat * A253414 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146360.P8453318717644085077

/-! ## A146360.P1843328488519127667

`A000027(p?[A146338(n-log2(1/2))])`
-/

namespace A146360.P1843328488519127667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146338 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146360.P1843328488519127667

/-! ## A146360.P1400905185170523260

`∩[A146338(n+1), A363147(n+1)]`
-/

namespace A146360.P1400905185170523260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146360.P1400905185170523260

/-! ## A146360.P6713227437391980211

`∩[A002144(n+1), A146338(n+1)]`
-/

namespace A146360.P6713227437391980211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146360.P6713227437391980211

/-! ## A146360.P9076642108330135227

`∩[A002313(n+1), A146338(n+1)]`
-/

namespace A146360.P9076642108330135227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146360.P9076642108330135227

/-!
# A146361: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 16 : primes in A146339.

The programs for A146361, there is no canonical definition to state claims against.
-/

/-! ## A146361.P13699195836812113620

`p?[A020355(n+1)]`
-/

namespace A146361.P13699195836812113620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146361.P13699195836812113620

/-! ## A146361.P1330718563415730458

`p?[A146339(n+1)]`
-/

namespace A146361.P1330718563415730458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146361.P1330718563415730458

/-! ## A146361.P14775978795975353890

`∩[A007522(n+1), A020355(n+1)]`
-/

namespace A146361.P14775978795975353890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146361.P14775978795975353890

/-! ## A146361.P10896992999413493679

`∩[A020355(n+1), A045382(n+1)]`
-/

namespace A146361.P10896992999413493679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146361.P10896992999413493679

/-! ## A146361.P6171681170219903608

`∩[A020355(n+1), A094712(n+1)]`
-/

namespace A146361.P6171681170219903608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146361.P6171681170219903608

/-! ## A146361.P13157972737773693053

`∩[A007522(n+1), A146339(n+1)]`
-/

namespace A146361.P13157972737773693053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146361.P13157972737773693053

/-! ## A146361.P3503512768175375681

`∩[A045382(n+1), A146339(n+1)]`
-/

namespace A146361.P3503512768175375681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146361.P3503512768175375681

/-! ## A146361.P6016697121295471866

`∩[A094712(n+1), A146339(n+1)]`
-/

namespace A146361.P6016697121295471866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146361.P6016697121295471866

/-! ## A146361.P10604777701975763798

`∩[A014663(n+1), A020355(n+1)]`
-/

namespace A146361.P10604777701975763798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146361.P10604777701975763798

/-!
# A146362: Primes p such that continued fraction of (1 + sqrt(p))/2 has period 17 : primes in A146340.

The programs for A146362, there is no canonical definition to state claims against.
-/

/-! ## A146362.P15862987708460797046

`p?[A146340(n+1)]`
-/

namespace A146362.P15862987708460797046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146362.P15862987708460797046

/-! ## A146362.P2242855913494812264

`(p?[A146340(n-log2(1/2))]^(1-1/2))²`
-/

namespace A146362.P2242855913494812264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146340 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 - (1 : ℚ) / 2 : ℝ)) ^ 2

end

end A146362.P2242855913494812264

/-! ## A146362.P17607113292378114961

`p?[record[A146340(A133310(n))]]`
-/

namespace A146362.P17607113292378114961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146340 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146362.P17607113292378114961

/-! ## A146362.P4494051818464732050

`p?[record[A146340(A292266(n))]]`
-/

namespace A146362.P4494051818464732050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146340 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146362.P4494051818464732050

/-! ## A146362.P5056152759849449894

`A000027(p?[A146340(n-log2(1/2))])`
-/

namespace A146362.P5056152759849449894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146340 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146362.P5056152759849449894

/-! ## A146362.P5188337406076437712

`∩[A146340(n+1), A363147(n+1)]`
-/

namespace A146362.P5188337406076437712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146362.P5188337406076437712

/-! ## A146362.P3905443881139987095

`∩[A002144(n+1), A146340(n+1)]`
-/

namespace A146362.P3905443881139987095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146362.P3905443881139987095

/-! ## A146362.P9916171598993884910

`∩[A002313(n+1), A146340(n+1)]`
-/

namespace A146362.P9916171598993884910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146362.P9916171598993884910

/-! ## A146362.P10571286732261914686

`∩[A055025(n+1), A146340(n+1)]`
-/

namespace A146362.P10571286732261914686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146362.P10571286732261914686

/-! ## A146362.P6131182541643459044

`∩[A085759(n+1), A146340(n+1)]`
-/

namespace A146362.P6131182541643459044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146362.P6131182541643459044

/-!
# A146363: a(n) = smallest prime p such that continued fraction of (1 + sqrt(p))/2 has period length n.

The programs for A146363, there is no canonical definition to state claims against.
-/

/-! ## A146363.P7560245597778715506

`or(A060576(n²²), A146343(n+1))`
-/

namespace A146363.P7560245597778715506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060576 ((n ^ 2) ^ 2)) (A146343 (n + 1))

end

end A146363.P7560245597778715506

/-! ## A146363.P5695706194743510152

`or(A028422(A052373(n)), A146343(n+1))`
-/

namespace A146363.P5695706194743510152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028422 (A052373 n).toNat) (A146343 (n + 1))

end

end A146363.P5695706194743510152

/-! ## A146363.P15295565732200695532

`A188187(A299383(n+1))+A146343(n+1)`
-/

namespace A146363.P15295565732200695532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (A299383 (n + 1)).toNat + A146343 (n + 1)

end

end A146363.P15295565732200695532

/-! ## A146363.P6016940127128092452

`or(A086011(A319755(n+1)), A146343(n+1))`
-/

namespace A146363.P6016940127128092452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086011 (A319755 (n + 1)).toNat) (A146343 (n + 1))

end

end A146363.P6016940127128092452

/-!
# A146364: a(n) = smallest primes whose continued fraction have different period.

The programs for A146364, there is no canonical definition to state claims against.
-/

/-! ## A146364.P11488112863523464171

`record[A146363(A146478(n+1))]`
-/

namespace A146364.P11488112863523464171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146363 (A146478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146364.P11488112863523464171

/-! ## A146364.P13973511637566388261

`A146477(n+1)+A007814(A366042(n))`
-/

namespace A146364.P13973511637566388261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146477 (n + 1) + A007814 (A366042 n).toNat

end

end A146364.P13973511637566388261

/-! ## A146364.P3890846976558644367

`∩[A028790(n+1), A235480(n+1)]`
-/

namespace A146364.P3890846976558644367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146364.P3890846976558644367

/-! ## A146364.P9328998639927735246

`∩[A144755(n+1), A303589(n+1)]`
-/

namespace A146364.P9328998639927735246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146364.P9328998639927735246

/-! ## A146364.P10385037758743632308

`or(A001222(A146444(n+3)), A146477(n+1))`
-/

namespace A146364.P10385037758743632308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A146444 (n + 3)).toNat) (A146477 (n + 1))

end

end A146364.P10385037758743632308

/-!
# A146365: Number of n X n binary arrays with all ones connected only in a 0100-1111-0010 pattern in any orientation.

The programs for A146365, there is no canonical definition to state claims against.
-/

/-! ## A146365.P3163102154123238244

`A146367(2*n+3)`
-/

namespace A146365.P3163102154123238244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146367 (2 * n + 3)

end

end A146365.P3163102154123238244

/-! ## A146365.P17092591593741108191

`or(1, A146367(A144396(n+1)))`
-/

namespace A146365.P17092591593741108191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146367 (A144396 (n + 1)).toNat)

end

end A146365.P17092591593741108191

/-! ## A146365.P3464524819612037437

`or(1, A146367(A346302(n+1)))`
-/

namespace A146365.P3464524819612037437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146367 (A346302 (n + 1)).toNat)

end

end A146365.P3464524819612037437

/-! ## A146365.P11563546973085515103

`or(1, A146367(A131392(n+1)))`
-/

namespace A146365.P11563546973085515103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146367 (A131392 (n + 1)).toNat)

end

end A146365.P11563546973085515103

/-! ## A146365.P2726402994154164185

`or(1, A146367(A004277(n+2)))`
-/

namespace A146365.P2726402994154164185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146367 (A004277 (n + 2)).toNat)

end

end A146365.P2726402994154164185

/-!
# A146366: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0100-1111-0010 pattern in any orientation.

The programs for A146366, there is no canonical definition to state claims against.
-/

/-! ## A146366.P4617614490421915977

`or(A147445(n+1), A273886(A147461(n+1)))`
-/

namespace A146366.P4617614490421915977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147445 (n + 1)) (A273886 (A147461 (n + 1)).toNat)

end

end A146366.P4617614490421915977

/-! ## A146366.P14054469147844968687

`A146603(A342978(n+1))`
-/

namespace A146366.P14054469147844968687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146603 (A342978 (n + 1)).toNat

end

end A146366.P14054469147844968687

/-! ## A146366.P16907515789972012870

`A088630(A048091(n+2))`
-/

namespace A146366.P16907515789972012870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088630 (A048091 (n + 2)).toNat

end

end A146366.P16907515789972012870

/-!
# A146367: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0100-1111-0010 pattern in any orientation.

The programs for A146367, there is no canonical definition to state claims against.
-/

/-! ## A146367.P4876369980040385404

`A146365(A008619(n)+C(2, n)-1)`
-/

namespace A146367.P4876369980040385404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146365 (A008619 n + ((Nat.choose 2 n : ℤ) - 1)).toNat

end

end A146367.P4876369980040385404

/-! ## A146367.P14396204561282606526

`or(A147416(A147472(n+1)), A147430(n+1))`
-/

namespace A146367.P14396204561282606526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147416 (A147472 (n + 1)).toNat) (A147430 (n + 1))

end

end A146367.P14396204561282606526

/-! ## A146367.P6117858873347610638

`or(A147451(A147472(n+1)), A147462(n+1))`
-/

namespace A146367.P6117858873347610638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147451 (A147472 (n + 1)).toNat) (A147462 (n + 1))

end

end A146367.P6117858873347610638

/-! ## A146367.P9191041303211309018

`or(A147451(A147472(n+1)), A147499(n+1))`
-/

namespace A146367.P9191041303211309018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147451 (A147472 (n + 1)).toNat) (A147499 (n + 1))

end

end A146367.P9191041303211309018

/-! ## A146367.P15745676266604565734

`or(A147430(n+1), A147493(A003520(n)))`
-/

namespace A146367.P15745676266604565734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147430 (n + 1)) (A147493 (A003520 n).toNat)

end

end A146367.P15745676266604565734

/-!
# A146368: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-1111-0010 pattern in any orientation.

The programs for A146368, there is no canonical definition to state claims against.
-/

/-! ## A146368.P12304174853539986652

`A146370(2*(n+2))`
-/

namespace A146368.P12304174853539986652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146370 (2 * (n + 2))

end

end A146368.P12304174853539986652

/-! ## A146368.P13344799603408106701

`or(1, A146370(A131392(n+1)))`
-/

namespace A146368.P13344799603408106701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146370 (A131392 (n + 1)).toNat)

end

end A146368.P13344799603408106701

/-! ## A146368.P10547550309021044983

`or(1, A146370(A144396(n+1)))`
-/

namespace A146368.P10547550309021044983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146370 (A144396 (n + 1)).toNat)

end

end A146368.P10547550309021044983

/-! ## A146368.P8164925379905279258

`or(1, A146370(A346302(n+1)))`
-/

namespace A146368.P8164925379905279258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146370 (A346302 (n + 1)).toNat)

end

end A146368.P8164925379905279258

/-!
# A146369: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0100-1111-0010 pattern in any orientation.

The programs for A146369, there is no canonical definition to state claims against.
-/

/-! ## A146369.P10068075351684786211

`A146377(A043317(n+1))`
-/

namespace A146369.P10068075351684786211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146377 (A043317 (n + 1)).toNat

end

end A146369.P10068075351684786211

/-! ## A146369.P2994493084067357273

`A146377(A044914(n+1))`
-/

namespace A146369.P2994493084067357273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146377 (A044914 (n + 1)).toNat

end

end A146369.P2994493084067357273

/-! ## A146369.P1450764685150485433

`A146377(A055648(n+1))`
-/

namespace A146369.P1450764685150485433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146377 (A055648 (n + 1)).toNat

end

end A146369.P1450764685150485433

/-! ## A146369.P14944225249288526097

`A146377(A071786(n+1))`
-/

namespace A146369.P14944225249288526097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146377 (A071786 (n + 1)).toNat

end

end A146369.P14944225249288526097

/-! ## A146369.P1208352605554686396

`A146377(A078546(n+1))`
-/

namespace A146369.P1208352605554686396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146377 (A078546 (n + 1)).toNat

end

end A146369.P1208352605554686396

/-!
# A146370: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0100-1111-0010 pattern in any orientation.

The programs for A146370, there is no canonical definition to state claims against.
-/

/-! ## A146370.P16757102809881731640

`A053615(A147187(n+1))`
-/

namespace A146370.P16757102809881731640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A147187 (n + 1)).toNat

end

end A146370.P16757102809881731640

/-! ## A146370.P8133409163671123989

`A333227(A147510(n+1))`
-/

namespace A146370.P8133409163671123989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333227 (A147510 (n + 1)).toNat

end

end A146370.P8133409163671123989

/-! ## A146370.P4019105231952430944

`A147016(A333501(n+2))`
-/

namespace A146370.P4019105231952430944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147016 (A333501 (n + 2)).toNat

end

end A146370.P4019105231952430944

/-! ## A146370.P6029619539490514366

`A147016(A052404(n+1)+1)`
-/

namespace A146370.P6029619539490514366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147016 (A052404 (n + 1) + 1).toNat

end

end A146370.P6029619539490514366

/-! ## A146370.P12913313407775685189

`A147016(A070698(n+1)+1)`
-/

namespace A146370.P12913313407775685189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147016 (A070698 (n + 1) + 1).toNat

end

end A146370.P12913313407775685189

/-!
# A146371: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0100-1111-0010 pattern in any orientation.

The programs for A146371, there is no canonical definition to state claims against.
-/

/-! ## A146371.P3654792314835178685

`A146379(∑[A053501(n)])`
-/

namespace A146371.P3654792314835178685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146379 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146371.P3654792314835178685

/-! ## A146371.P6524968599037526527

`A146379(A043316(n+1))`
-/

namespace A146371.P6524968599037526527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146379 (A043316 (n + 1)).toNat

end

end A146371.P6524968599037526527

/-! ## A146371.P1267661916085375059

`A146379(A044913(n+1))`
-/

namespace A146371.P1267661916085375059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146379 (A044913 (n + 1)).toNat

end

end A146371.P1267661916085375059

/-! ## A146371.P3170199922015363176

`A146379(A049872(n+1))`
-/

namespace A146371.P3170199922015363176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146379 (A049872 (n + 1)).toNat

end

end A146371.P3170199922015363176

/-! ## A146371.P1381301317651024394

`A146379(A051053(n+1))`
-/

namespace A146371.P1381301317651024394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146379 (A051053 (n + 1)).toNat

end

end A146371.P1381301317651024394

/-!
# A146372: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0100-1111-0010 pattern in any orientation.

The programs for A146372, there is no canonical definition to state claims against.
-/

/-! ## A146372.P2714777206449855744

`A146380(a(n-3)+n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A146372.P2714777206449855744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A146380 (a (n - 3) + (n : ℤ)).toNat

end

end A146372.P2714777206449855744

/-! ## A146372.P294558628585098349

`A201909(A123014(n))`
-/

namespace A146372.P294558628585098349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201909 (A123014 n).toNat

end

end A146372.P294558628585098349

/-! ## A146372.P7372621533038887894

`A347645(A218627(n+1))`
-/

namespace A146372.P7372621533038887894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347645 (A218627 (n + 1)).toNat

end

end A146372.P7372621533038887894

/-!
# A146373: Number of n X n binary arrays with all ones connected only in a 0100-1111-0100 pattern in any orientation.

The programs for A146373, there is no canonical definition to state claims against.
-/

/-! ## A146373.P3581563268242624371

`A146375(2*(n+2))`
-/

namespace A146373.P3581563268242624371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146375 (2 * (n + 2))

end

end A146373.P3581563268242624371

/-! ## A146373.P11043628541148464659

`A146375(A330948(n+1))^A146375(n+1)`
-/

namespace A146373.P11043628541148464659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146375 (A330948 (n + 1)).toNat : ℚ) ^ (A146375 (n + 1) : ℤ)

end

end A146373.P11043628541148464659

/-! ## A146373.P4468312177006014665

`A146375(A330948(n+1))/A146375(A146375(n+1)²)`
-/

namespace A146373.P4468312177006014665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146375 (A330948 (n + 1)).toNat : ℚ) / (A146375 (A146375 (n + 1) ^ 2).toNat : ℚ)

end

end A146373.P4468312177006014665

/-!
# A146376: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-1111-0100 pattern in any orientation.

The programs for A146376, there is no canonical definition to state claims against.
-/

/-! ## A146376.P4597415161193505020

`A146378(2*(n+2))`
-/

namespace A146376.P4597415161193505020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146378 (2 * (n + 2))

end

end A146376.P4597415161193505020

/-!
# A146377: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0100-1111-0100 pattern in any orientation.

The programs for A146377, there is no canonical definition to state claims against.
-/

/-! ## A146377.P3047377265337259655

`A130446(A146369(n+1))`
-/

namespace A146377.P3047377265337259655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A146369 (n + 1)).toNat

end

end A146377.P3047377265337259655

/-!
# A146381: Number of n X n binary arrays with all ones connected only in a 0110-1111 pattern in any orientation.

The programs for A146381, there is no canonical definition to state claims against.
-/

/-! ## A146381.P13200980679868794039

`A146383(2*n+3)`
-/

namespace A146381.P13200980679868794039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146383 (2 * n + 3)

end

end A146381.P13200980679868794039

/-! ## A146381.P12687784298074016061

`A000027(A146383(Δ[(n+1)²]))`
-/

namespace A146381.P12687784298074016061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A146383 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A146381.P12687784298074016061

/-!
# A146384: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0110-1111 pattern in any orientation.

The programs for A146384, there is no canonical definition to state claims against.
-/

/-! ## A146384.P7370480229876436390

`A146386(2*n+3)`
-/

namespace A146384.P7370480229876436390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146386 (2 * n + 3)

end

end A146384.P7370480229876436390

/-!
# A146385: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0110-1111 pattern in any orientation.

The programs for A146385, there is no canonical definition to state claims against.
-/

/-! ## A146385.P17229377405580264476

`A097624(A147063(n+2))`
-/

namespace A146385.P17229377405580264476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097624 (A147063 (n + 2)).toNat

end

end A146385.P17229377405580264476

/-! ## A146385.P4553505712493017179

`A097624(A147227(n+2))`
-/

namespace A146385.P4553505712493017179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097624 (A147227 (n + 2)).toNat

end

end A146385.P4553505712493017179

/-! ## A146385.P14359009558444497564

`A097624(A147364(n+2))`
-/

namespace A146385.P14359009558444497564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097624 (A147364 (n + 2)).toNat

end

end A146385.P14359009558444497564

/-!
# A146387: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0110-1111 pattern in any orientation.

The programs for A146387, there is no canonical definition to state claims against.
-/

/-! ## A146387.P9761143208022617704

`A106744(A326493(n))`
-/

namespace A146387.P9761143208022617704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A326493 n).toNat

end

end A146387.P9761143208022617704

/-! ## A146387.P6467224564999645957

`A362036(A048074(n+1))`
-/

namespace A146387.P6467224564999645957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362036 (A048074 (n + 1)).toNat

end

end A146387.P6467224564999645957

/-! ## A146387.P4425874424658874313

`A209900(A146131(n+2))`
-/

namespace A146387.P4425874424658874313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A146131 (n + 2)).toNat

end

end A146387.P4425874424658874313

/-!
# A146389: Number of n X n binary arrays with all ones connected only in a 1000-1100-0111 pattern in any orientation.

The programs for A146389, there is no canonical definition to state claims against.
-/

/-! ## A146389.P12255795399864904077

`A146391(2*(n+2))`
-/

namespace A146389.P12255795399864904077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146391 (2 * (n + 2))

end

end A146389.P12255795399864904077

/-! ## A146389.P16358548304623847917

`or(1, A146391(A288602(n+1)))`
-/

namespace A146389.P16358548304623847917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146391 (A288602 (n + 1)).toNat)

end

end A146389.P16358548304623847917

/-! ## A146389.P1759695348984343108

`A146391(A288602(n+1))/A304042(n)`
-/

namespace A146389.P1759695348984343108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146391 (A288602 (n + 1)).toNat : ℚ) / (A304042 n : ℚ)

end

end A146389.P1759695348984343108

/-! ## A146389.P12677669790823275638

`A146391(A288602(n+1))%A000108(n+11)`
-/

namespace A146389.P12677669790823275638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146391 (A288602 (n + 1)).toNat) (A000108 (n + 11))

end

end A146389.P12677669790823275638

/-! ## A146389.P9339928332181319638

`A146391(A288602(n+1))/A000108(C(2, n+2))`
-/

namespace A146389.P9339928332181319638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146391 (A288602 (n + 1)).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A146389.P9339928332181319638

/-!
# A146391: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1100-0111 pattern in any orientation.

The programs for A146391, there is no canonical definition to state claims against.
-/

/-! ## A146391.P1480814895298615772

`A146389(∏{e}[A258439(n), #])`
-/

namespace A146391.P1480814895298615772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146389 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A146391.P1480814895298615772

/-! ## A146391.P13036145222431501715

`A151552(A008667(n)!)`
-/

namespace A146391.P13036145222431501715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (Nat.factorial (A008667 n).toNat)

end

end A146391.P13036145222431501715

/-! ## A146391.P3086397230316405595

`A087805(A146447(n+1))`
-/

namespace A146391.P3086397230316405595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087805 (A146447 (n + 1)).toNat

end

end A146391.P3086397230316405595

/-! ## A146391.P16783505065850339817

`A168496(A146471(n+1))`
-/

namespace A146391.P16783505065850339817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168496 (A146471 (n + 1)).toNat

end

end A146391.P16783505065850339817

/-! ## A146391.P13629881311770160645

`A256537(A146367(n+1))`
-/

namespace A146391.P13629881311770160645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256537 (A146367 (n + 1)).toNat

end

end A146391.P13629881311770160645

/-!
# A146392: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1100-0111 pattern in any orientation.

The programs for A146392, there is no canonical definition to state claims against.
-/

/-! ## A146392.P4843258807403812417

`A146394(2*(n+2))`
-/

namespace A146392.P4843258807403812417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146394 (2 * (n + 2))

end

end A146392.P4843258807403812417

/-! ## A146392.P4380187104419639682

`or(1, A146394(A005408(n+1)))`
-/

namespace A146392.P4380187104419639682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146394 (A005408 (n + 1)).toNat)

end

end A146392.P4380187104419639682

/-! ## A146392.P2912645304316335610

`or(1, A146394(A077797(n+1)))`
-/

namespace A146392.P2912645304316335610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146394 (A077797 (n + 1)).toNat)

end

end A146392.P2912645304316335610

/-! ## A146392.P18408738995992184497

`or(1, A146394(A081874(n+1)))`
-/

namespace A146392.P18408738995992184497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146394 (A081874 (n + 1)).toNat)

end

end A146392.P18408738995992184497

/-! ## A146392.P6644582249093337091

`or(1, A146394(A131392(n+1)))`
-/

namespace A146392.P6644582249093337091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146394 (A131392 (n + 1)).toNat)

end

end A146392.P6644582249093337091

/-!
# A146393: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1100-0111 pattern in any orientation.

The programs for A146393, there is no canonical definition to state claims against.
-/

/-! ## A146393.P4769097460270717692

`A147433(A282760(n+1))`
-/

namespace A146393.P4769097460270717692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147433 (A282760 (n + 1)).toNat

end

end A146393.P4769097460270717692

/-! ## A146393.P7593427098824304484

`A147433(A015851(n+2))`
-/

namespace A146393.P7593427098824304484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147433 (A015851 (n + 2)).toNat

end

end A146393.P7593427098824304484

/-! ## A146393.P12794771997809686685

`A147433(A082984(n+2))`
-/

namespace A146393.P12794771997809686685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147433 (A082984 (n + 2)).toNat

end

end A146393.P12794771997809686685

/-! ## A146393.P627214898178776813

`A147433(A084984(n+2))`
-/

namespace A146393.P627214898178776813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147433 (A084984 (n + 2)).toNat

end

end A146393.P627214898178776813

/-! ## A146393.P15166539784300842207

`A147433(A085558(n+2))`
-/

namespace A146393.P15166539784300842207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147433 (A085558 (n + 2)).toNat

end

end A146393.P15166539784300842207

/-!
# A146394: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1100-0111 pattern in any orientation.

The programs for A146394, there is no canonical definition to state claims against.
-/

/-! ## A146394.P676198791905947714

`A174583(A146068(n+1)-1)`
-/

namespace A146394.P676198791905947714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174583 (A146068 (n + 1) - 1).toNat

end

end A146394.P676198791905947714

/-! ## A146394.P12603355862750014799

`or(1, A003005(A146458(n+1)))`
-/

namespace A146394.P12603355862750014799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003005 (A146458 (n + 1)).toNat)

end

end A146394.P12603355862750014799

/-! ## A146394.P13857179768239467309

`A146663(n+1)+A014382(A147016(n+1))`
-/

namespace A146394.P13857179768239467309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146663 (n + 1) + A014382 (A147016 (n + 1)).toNat

end

end A146394.P13857179768239467309

/-! ## A146394.P4368496058581683751

`or(A003005(A146583(n+1)), A146068(n+1))`
-/

namespace A146394.P4368496058581683751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003005 (A146583 (n + 1)).toNat) (A146068 (n + 1))

end

end A146394.P4368496058581683751

/-!
# A146395: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1100-0111 pattern in any orientation.

The programs for A146395, there is no canonical definition to state claims against.
-/

/-! ## A146395.P15201532226272104437

`A317083(A346051(n))`
-/

namespace A146395.P15201532226272104437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317083 (A346051 n).toNat

end

end A146395.P15201532226272104437

/-! ## A146395.P12470171048867509453

`A183422(A147328(n+1))-1`
-/

namespace A146395.P12470171048867509453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183422 (A147328 (n + 1)).toNat - 1

end

end A146395.P12470171048867509453

/-! ## A146395.P1713145291827499640

`A328596(A068038(n)+1)-1`
-/

namespace A146395.P1713145291827499640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A068038 n + 1).toNat - 1

end

end A146395.P1713145291827499640

/-! ## A146395.P10837431769023706644

`A247424(A146184(n+1))+A236378(A146640(n+1))`
-/

namespace A146395.P10837431769023706644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247424 (A146184 (n + 1)).toNat + A236378 (A146640 (n + 1)).toNat

end

end A146395.P10837431769023706644

/-! ## A146395.P12022064222156961350

`A113983(A238351(n))`
-/

namespace A146395.P12022064222156961350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113983 (A238351 n).toNat

end

end A146395.P12022064222156961350

/-!
# A146397: Number of n X n binary arrays with all ones connected only in a 1000-1111-0010 pattern in any orientation.

The programs for A146397, there is no canonical definition to state claims against.
-/

/-! ## A146397.P2643555187843910271

`A146399(2*n+3)`
-/

namespace A146397.P2643555187843910271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146399 (2 * n + 3)

end

end A146397.P2643555187843910271

/-! ## A146397.P2896274386974807377

`A146399(A107998(n+2))+A086011(A233905(n))`
-/

namespace A146397.P2896274386974807377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146399 (A107998 (n + 2)).toNat + A086011 (A233905 n).toNat

end

end A146397.P2896274386974807377

/-! ## A146397.P9386084269711411647

`A146399(A107998(n+2))+A086011(A146399(n+1))`
-/

namespace A146397.P9386084269711411647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146399 (A107998 (n + 2)).toNat + A086011 (A146399 (n + 1)).toNat

end

end A146397.P9386084269711411647

/-! ## A146397.P14128332210641882391

`A279484(A000124(n+1))+A146399(A107998(n+2))`
-/

namespace A146397.P14128332210641882391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 (A000124 (n + 1)).toNat + A146399 (A107998 (n + 2)).toNat

end

end A146397.P14128332210641882391

/-! ## A146397.P6005437541647126621

`A279484(A107998(n+1))+A146399(A107998(n+2))`
-/

namespace A146397.P6005437541647126621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 (A107998 (n + 1)).toNat + A146399 (A107998 (n + 2)).toNat

end

end A146397.P6005437541647126621

/-!
# A146398: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1111-0010 pattern in any orientation.

The programs for A146398, there is no canonical definition to state claims against.
-/

/-! ## A146398.P12456858407181742891

`A000026(A146406(n+1))`
-/

namespace A146398.P12456858407181742891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A146406 (n + 1)).toNat

end

end A146398.P12456858407181742891

/-! ## A146398.P7410962634047639043

`A146406(A002998(n)+1)`
-/

namespace A146398.P7410962634047639043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146406 (A002998 n + 1).toNat

end

end A146398.P7410962634047639043

/-! ## A146398.P7134060708269509546

`A146406(A056142(n)+1)`
-/

namespace A146398.P7134060708269509546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146406 (A056142 n + 1).toNat

end

end A146398.P7134060708269509546

/-! ## A146398.P9666572703679610331

`A146406(A062399(n+1))`
-/

namespace A146398.P9666572703679610331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146406 (A062399 (n + 1)).toNat

end

end A146398.P9666572703679610331

/-! ## A146398.P13468656708527192824

`A146406(A085908(n+1))`
-/

namespace A146398.P13468656708527192824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146406 (A085908 (n + 1)).toNat

end

end A146398.P13468656708527192824

/-!
# A146399: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1111-0010 pattern in any orientation.

The programs for A146399, there is no canonical definition to state claims against.
-/

/-! ## A146399.P16787305693619192163

`∏{p}[A146407(n+1)², #]`
-/

namespace A146399.P16787305693619192163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146407 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A146399.P16787305693619192163

/-! ## A146399.P15823288073136853891

`A146407(C(n, floor(n/7))+1)`
-/

namespace A146399.P15823288073136853891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146407 (Nat.choose n ⌊(n : ℚ) / 7⌋.toNat + 1)

end

end A146399.P15823288073136853891

/-! ## A146399.P3661585926316931771

`A146407(A061775(2^n))`
-/

namespace A146399.P3661585926316931771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146407 (A061775 (2 ^ n)).toNat

end

end A146399.P3661585926316931771

/-! ## A146399.P2480731864507108160

`A006370(2*A146407(n+1))`
-/

namespace A146399.P2480731864507108160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A146407 (n + 1)).toNat

end

end A146399.P2480731864507108160

/-! ## A146399.P15756784776552938499

`A343609(9*A146407(n+1))`
-/

namespace A146399.P15756784776552938499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (9 * A146407 (n + 1)).toNat

end

end A146399.P15756784776552938499

