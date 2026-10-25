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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A002801: a(n) = (2*n-1)*a(n-1) - (n-1)*a(n-2) with a(0) = a(1) = 1.

The programs for A002801, the canonical program `A002801.P14995688909707796372` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002801 has offset 0).

The definition of A002801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)-(n-1)*a(n-2)` (program `A002801.P14995688909707796372`, by `A002801.P14995688909707796372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002801.P14995688909707796372

`(2*n-1)*a(n-1)-(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002801

/-- `(2*n-1)*a(n-1)-(n-1)*a(n-2)` -/
def P14995688909707796372.Spec : Prop :=
  ∀ n, P14995688909707796372.a n = A002801 n

theorem P14995688909707796372.correct : P14995688909707796372.Spec := by
  intro n
  simp only [A002801]

end A002801

/-! ## A002801.P581094944096381069

`A347012(n)/2^n`
-/

namespace A002801.P581094944096381069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347012 n : ℚ) / (2 ^ n : ℚ)

end

end A002801.P581094944096381069

namespace A002801

/-- `A347012(n)/2^n` -/
def P581094944096381069.Spec : Prop :=
  ∀ n, P581094944096381069.a n = (A002801 n : ℚ)

end A002801

/-! ## A002801.P10385406331693197106

`floor(A347012(n)/A000079(n))`
-/

namespace A002801.P10385406331693197106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347012 n : ℚ) / (A000079 n : ℚ)⌋

end

end A002801.P10385406331693197106

namespace A002801

/-- `floor(A347012(n)/A000079(n))` -/
def P10385406331693197106.Spec : Prop :=
  ∀ n, P10385406331693197106.a n = A002801 n

end A002801

/-! ## A002801.P7827881058076344563

`A080300(2*n+3)+A347012(n)/A000079(n)`
-/

namespace A002801.P7827881058076344563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080300 (2 * n + 3) : ℚ) + (A347012 n : ℚ) / (A000079 n : ℚ)

end

end A002801.P7827881058076344563

namespace A002801

/-- `A080300(2*n+3)+A347012(n)/A000079(n)` -/
def P7827881058076344563.Spec : Prop :=
  ∀ n, P7827881058076344563.a n = (A002801 n : ℚ)

end A002801

/-! ## A002801.P12795521092203632777

`A002370(n)/∏[abs(1-2*n)]`
-/

namespace A002801.P12795521092203632777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002370 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A002801.P12795521092203632777

namespace A002801

/-- `A002370(n)/∏[abs(1-2*n)]` -/
def P12795521092203632777.Spec : Prop :=
  ∀ n, P12795521092203632777.a n = (A002801 n : ℚ)

end A002801

/-!
# A002802: a(n) = (2*n+3)!/(6*n!*(n+1)!).

The programs for A002802, the canonical program `A002802.P16841612747706247386` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002802 has offset 0).

The definition of A002802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002802.P12949314418341546504

`A051133(n+1)/3`
-/

namespace A002802.P12949314418341546504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051133 (n + 1) : ℚ) / 3

end

end A002802.P12949314418341546504

namespace A002802

/-- `A051133(n+1)/3` -/
def P12949314418341546504.Spec : Prop :=
  ∀ n, P12949314418341546504.a n = (A002802 n : ℚ)

end A002802

/-! ## A002802.P16841612747706247386

`A000911(n)/6`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002802

/-- `A000911(n)/6` -/
def P16841612747706247386.Spec : Prop :=
  ∀ n, P16841612747706247386.a n = (A002802 n : ℚ)

end A002802

/-! ## A002802.P10078921923251112620

`C(2*n+4, n+2)*(n+2)*(n+1)/12`
-/

namespace A002802.P10078921923251112620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 4) (n + 2) * (n + 2) * (n + 1) : ℚ) / 12

end

end A002802.P10078921923251112620

namespace A002802

/-- `C(2*n+4, n+2)*(n+2)*(n+1)/12` -/
def P10078921923251112620.Spec : Prop :=
  ∀ n, P10078921923251112620.a n = (A002802 n : ℚ)

end A002802

/-! ## A002802.P16793000941877046628

`(2*n+3)!/(6*n!*(n+1)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002802.P16793000941877046628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 3) : ℚ) / (6 * Nat.factorial n * Nat.factorial (n + 1) : ℚ)

end

end A002802.P16793000941877046628

namespace A002802

/-- `(2*n+3)!/(6*n!*(n+1)!)` -/
def P16793000941877046628.Spec : Prop :=
  ∀ n, P16793000941877046628.a n = (A002802 n : ℚ)

end A002802

/-! ## A002802.P5895557320221302688

`(6/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A002802.P5895557320221302688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 / (n : ℚ) + 4) * a (n - 1)

end

end A002802.P5895557320221302688

namespace A002802

/-- `(6/n+4)*a(n-1)` -/
def P5895557320221302688.Spec : Prop :=
  ∀ n, P5895557320221302688.a n = (A002802 n : ℚ)

end A002802

/-! ## A002802.P14668470610611620951

`∑[A085373(n)]`
-/

namespace A002802.P14668470610611620951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002802.P14668470610611620951

namespace A002802

/-- `∑[A085373(n)]` -/
def P14668470610611620951.Spec : Prop :=
  ∀ n, P14668470610611620951.a n = A002802 n

end A002802

/-! ## A002802.P10797000298558163773

`Δ[A323223(n)]`
-/

namespace A002802.P10797000298558163773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002802.P10797000298558163773

namespace A002802

/-- `Δ[A323223(n)]` -/
def P10797000298558163773.Spec : Prop :=
  ∀ n, P10797000298558163773.a n = A002802 n

end A002802

/-! ## A002802.P6723365697589931769

`A107231(Δ[n²])/3`
-/

namespace A002802.P6723365697589931769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107231 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A002802.P6723365697589931769

namespace A002802

/-- `A107231(Δ[n²])/3` -/
def P6723365697589931769.Spec : Prop :=
  ∀ n, P6723365697589931769.a n = (A002802 n : ℚ)

end A002802

/-! ## A002802.P13153742471660327707

`∑[A119578(n+1)/2]`
-/

namespace A002802.P13153742471660327707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119578 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002802.P13153742471660327707

namespace A002802

/-- `∑[A119578(n+1)/2]` -/
def P13153742471660327707.Spec : Prop :=
  ∀ n, P13153742471660327707.a n = (A002802 n : ℚ)

end A002802

/-! ## A002802.P13593495369411254954

`(n+1)/3*A033876(n)`
-/

namespace A002802.P13593495369411254954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A033876 n : ℚ)

end

end A002802.P13593495369411254954

namespace A002802

/-- `(n+1)/3*A033876(n)` -/
def P13593495369411254954.Spec : Prop :=
  ∀ n, P13593495369411254954.a n = (A002802 n : ℚ)

end A002802

/-! ## A002802.P10911791213950451089

`∑[∑[n+1]*A001700(n)]`
-/

namespace A002802.P10911791213950451089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002802.P10911791213950451089

namespace A002802

/-- `∑[∑[n+1]*A001700(n)]` -/
def P10911791213950451089.Spec : Prop :=
  ∀ n, P10911791213950451089.a n = A002802 n

end A002802

/-! ## A002802.P10339341223163034520

`A000108(n)*∑[Δ[n²]²]`
-/

namespace A002802.P10339341223163034520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002802.P10339341223163034520

namespace A002802

/-- `A000108(n)*∑[Δ[n²]²]` -/
def P10339341223163034520.Spec : Prop :=
  ∀ n, P10339341223163034520.a n = A002802 n

end A002802

/-! ## A002802.P6413211442069010730

`∑[(n+1)²]*record[A126120(n)]`
-/

namespace A002802.P6413211442069010730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A002802.P6413211442069010730

namespace A002802

/-- `∑[(n+1)²]*record[A126120(n)]` -/
def P6413211442069010730.Spec : Prop :=
  ∀ n, P6413211442069010730.a n = A002802 n

end A002802

/-! ## A002802.P16869839789484640379

`∑[(n+1)²]*A000108(n+1)`
-/

namespace A002802.P16869839789484640379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000108 (n + 1)

end

end A002802.P16869839789484640379

namespace A002802

/-- `∑[(n+1)²]*A000108(n+1)` -/
def P16869839789484640379.Spec : Prop :=
  ∀ n, P16869839789484640379.a n = A002802 n

end A002802

/-! ## A002802.P10619935912358057530

`∑[(n+1)²]*A120588(n+2)`
-/

namespace A002802.P10619935912358057530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A120588 (n + 2)

end

end A002802.P10619935912358057530

namespace A002802

/-- `∑[(n+1)²]*A120588(n+2)` -/
def P10619935912358057530.Spec : Prop :=
  ∀ n, P10619935912358057530.a n = A002802 n

end A002802

/-! ## A002802.P2717593817581939354

`∑[(n+1)²]*A026008(2*n)`
-/

namespace A002802.P2717593817581939354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A026008 (2 * n)

end

end A002802.P2717593817581939354

namespace A002802

/-- `∑[(n+1)²]*A026008(2*n)` -/
def P2717593817581939354.Spec : Prop :=
  ∀ n, P2717593817581939354.a n = A002802 n

end A002802

/-! ## A002802.P13988667593004878239

`∑[∑[n+1]*A088218(n+1)]`
-/

namespace A002802.P13988667593004878239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A088218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002802.P13988667593004878239

namespace A002802

/-- `∑[∑[n+1]*A088218(n+1)]` -/
def P13988667593004878239.Spec : Prop :=
  ∀ n, P13988667593004878239.a n = A002802 n

end A002802

/-! ## A002802.P3429582703452314148

`C(n+3, 3)*A000108(n+2)/2`
-/

namespace A002802.P3429582703452314148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 3) 3 : ℤ) * A000108 (n + 2) : ℚ) / 2

end

end A002802.P3429582703452314148

namespace A002802

/-- `C(n+3, 3)*A000108(n+2)/2` -/
def P3429582703452314148.Spec : Prop :=
  ∀ n, P3429582703452314148.a n = (A002802 n : ℚ)

end A002802

/-! ## A002802.P6498944352955633500

`∑[A000984(n+1)/2*∑[n+1]]`
-/

namespace A002802.P6498944352955633500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002802.P6498944352955633500

namespace A002802

/-- `∑[A000984(n+1)/2*∑[n+1]]` -/
def P6498944352955633500.Spec : Prop :=
  ∀ n, P6498944352955633500.a n = (A002802 n : ℚ)

end A002802

/-! ## A002802.P17320335027154688147

`∑[A100320(n+1)/4*∑[n+1]]`
-/

namespace A002802.P17320335027154688147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100320 (n + 1) : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002802.P17320335027154688147

namespace A002802

/-- `∑[A100320(n+1)/4*∑[n+1]]` -/
def P17320335027154688147.Spec : Prop :=
  ∀ n, P17320335027154688147.a n = (A002802 n : ℚ)

end A002802

/-!
# A002803: a(n) = (2n+4)!/(4!*n!*(n+1)!).

The programs for A002803, the canonical program `A002803.P12619790139918833020` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002803 has offset 0).

The definition of A002803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002803.P12619790139918833020

`(2*n+4)!/(4!*n!*(n+1)!)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002803

/-- `(2*n+4)!/(4!*n!*(n+1)!)` -/
def P12619790139918833020.Spec : Prop :=
  ∀ n, P12619790139918833020.a n = (A002803 n : ℚ)

end A002803

/-! ## A002803.P3777391016846276972

`(n+2)/2*A002802(n)`
-/

namespace A002803.P3777391016846276972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A002802 n : ℚ)

end

end A002803.P3777391016846276972

namespace A002803

/-- `(n+2)/2*A002802(n)` -/
def P3777391016846276972.Spec : Prop :=
  ∀ n, P3777391016846276972.a n = (A002803 n : ℚ)

end A002803

/-! ## A002803.P1166657123644689308

`∑[(n+1)²]*A001700(n)`
-/

namespace A002803.P1166657123644689308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001700 n

end

end A002803.P1166657123644689308

namespace A002803

/-- `∑[(n+1)²]*A001700(n)` -/
def P1166657123644689308.Spec : Prop :=
  ∀ n, P1166657123644689308.a n = A002803 n

end A002803

/-! ## A002803.P4478770498553500124

`C(2*(n+2), 4)*A000108(n)`
-/

namespace A002803.P4478770498553500124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) 4 : ℤ) * A000108 n

end

end A002803.P4478770498553500124

namespace A002803

/-- `C(2*(n+2), 4)*A000108(n)` -/
def P4478770498553500124.Spec : Prop :=
  ∀ n, P4478770498553500124.a n = A002803 n

end A002803

/-! ## A002803.P12562348227998848356

`∑[(n+1)²]*A088218(n+1)`
-/

namespace A002803.P12562348227998848356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A088218 (n + 1)

end

end A002803.P12562348227998848356

namespace A002803

/-- `∑[(n+1)²]*A088218(n+1)` -/
def P12562348227998848356.Spec : Prop :=
  ∀ n, P12562348227998848356.a n = A002803 n

end A002803

/-! ## A002803.P2823016354009717948

`∑[(n+1)²]*A057977(Δ[n²])`
-/

namespace A002803.P2823016354009717948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A057977 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A002803.P2823016354009717948

namespace A002803

/-- `∑[(n+1)²]*A057977(Δ[n²])` -/
def P2823016354009717948.Spec : Prop :=
  ∀ n, P2823016354009717948.a n = A002803 n

end A002803

/-! ## A002803.P5376255373026909066

`∑[(n+1)²]*A001405(2*n+1)`
-/

namespace A002803.P5376255373026909066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001405 (2 * n + 1)

end

end A002803.P5376255373026909066

namespace A002803

/-- `∑[(n+1)²]*A001405(2*n+1)` -/
def P5376255373026909066.Spec : Prop :=
  ∀ n, P5376255373026909066.a n = A002803 n

end A002803

/-! ## A002803.P2436476427390926845

`∑[(n+1)²]*A000984(n+1)/2`
-/

namespace A002803.P2436476427390926845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000984 (n + 1) : ℚ) / 2

end

end A002803.P2436476427390926845

namespace A002803

/-- `∑[(n+1)²]*A000984(n+1)/2` -/
def P2436476427390926845.Spec : Prop :=
  ∀ n, P2436476427390926845.a n = (A002803 n : ℚ)

end A002803

/-! ## A002803.P6109554265001032842

`A000108(n)*A053134(n)`
-/

namespace A002803.P6109554265001032842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A053134 n

end

end A002803.P6109554265001032842

namespace A002803

/-- `A000108(n)*A053134(n)` -/
def P6109554265001032842.Spec : Prop :=
  ∀ n, P6109554265001032842.a n = A002803 n

end A002803

/-! ## A002803.P8552611870515112761

`abs(A053134(n)*A168491(n))`
-/

namespace A002803.P8552611870515112761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053134 n * A168491 n|

end

end A002803.P8552611870515112761

namespace A002803

/-- `abs(A053134(n)*A168491(n))` -/
def P8552611870515112761.Spec : Prop :=
  ∀ n, P8552611870515112761.a n = A002803 n

end A002803

/-! ## A002803.P10524950411283198723

`A028304(2*n)*A053134(n)`
-/

namespace A002803.P10524950411283198723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) * A053134 n

end

end A002803.P10524950411283198723

namespace A002803

/-- `A028304(2*n)*A053134(n)` -/
def P10524950411283198723.Spec : Prop :=
  ∀ n, P10524950411283198723.a n = A002803 n

end A002803

/-! ## A002803.P13560706353925645051

`A001700(n)*A006918(Δ[n²])`
-/

namespace A002803.P13560706353925645051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A006918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002803.P13560706353925645051

namespace A002803

/-- `A001700(n)*A006918(Δ[n²])` -/
def P13560706353925645051.Spec : Prop :=
  ∀ n, P13560706353925645051.a n = A002803 n

end A002803

/-! ## A002803.P1541386772648113975

`A001700(n)*A053307(2*n+1)`
-/

namespace A002803.P1541386772648113975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A053307 (2 * n + 1)

end

end A002803.P1541386772648113975

namespace A002803

/-- `A001700(n)*A053307(2*n+1)` -/
def P1541386772648113975.Spec : Prop :=
  ∀ n, P1541386772648113975.a n = A002803 n

end A002803

/-! ## A002803.P4781839521603521860

`A001700(n)*A208950(2*n+3)`
-/

namespace A002803.P4781839521603521860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A208950 (2 * n + 3)

end

end A002803.P4781839521603521860

namespace A002803

/-- `A001700(n)*A208950(2*n+3)` -/
def P4781839521603521860.Spec : Prop :=
  ∀ n, P4781839521603521860.a n = A002803 n

end A002803

/-! ## A002803.P11852365609187204182

`A000330(n+1)/2*A000984(n+1)`
-/

namespace A002803.P11852365609187204182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 1) : ℚ) / 2 * (A000984 (n + 1) : ℚ)

end

end A002803.P11852365609187204182

namespace A002803

/-- `A000330(n+1)/2*A000984(n+1)` -/
def P11852365609187204182.Spec : Prop :=
  ∀ n, P11852365609187204182.a n = (A002803 n : ℚ)

end A002803

/-! ## A002803.P12818682438508696939

`A181474(2*n+1)/2*A000108(n+1)`
-/

namespace A002803.P12818682438508696939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181474 (2 * n + 1) : ℚ) / 2 * (A000108 (n + 1) : ℚ)

end

end A002803.P12818682438508696939

namespace A002803

/-- `A181474(2*n+1)/2*A000108(n+1)` -/
def P12818682438508696939.Spec : Prop :=
  ∀ n, P12818682438508696939.a n = (A002803 n : ℚ)

end A002803

/-! ## A002803.P16710884227439274585

`A001700(n)*A056520(n+1)-A001700(n)`
-/

namespace A002803.P16710884227439274585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A056520 (n + 1) - A001700 n

end

end A002803.P16710884227439274585

namespace A002803

/-- `A001700(n)*A056520(n+1)-A001700(n)` -/
def P16710884227439274585.Spec : Prop :=
  ∀ n, P16710884227439274585.a n = A002803 n

end A002803

/-! ## A002803.P4595090584508185103

`A002694(n+2)/A002457(n)*A085375(n)`
-/

namespace A002803.P4595090584508185103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002694 (n + 2) : ℚ) / (A002457 n : ℚ) * (A085375 n : ℚ)

end

end A002803.P4595090584508185103

namespace A002803

/-- `A002694(n+2)/A002457(n)*A085375(n)` -/
def P4595090584508185103.Spec : Prop :=
  ∀ n, P4595090584508185103.a n = (A002803 n : ℚ)

end A002803

/-! ## A002803.P8614709077286473925

`A106440(n)/(n+1)`
-/

namespace A002803.P8614709077286473925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106440 n : ℚ) / (n + 1 : ℚ)

end

end A002803.P8614709077286473925

namespace A002803

/-- `A106440(n)/(n+1)` -/
def P8614709077286473925.Spec : Prop :=
  ∀ n, P8614709077286473925.a n = (A002803 n : ℚ)

end A002803

/-! ## A002803.P15661133874554184772

`A002457(n)/A002544(n)*A106440(n)`
-/

namespace A002803.P15661133874554184772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002457 n : ℚ) / (A002544 n : ℚ) * (A106440 n : ℚ)

end

end A002803.P15661133874554184772

namespace A002803

/-- `A002457(n)/A002544(n)*A106440(n)` -/
def P15661133874554184772.Spec : Prop :=
  ∀ n, P15661133874554184772.a n = (A002803 n : ℚ)

end A002803

/-!
# A002804: (Presumed) solution to Waring's problem: g(n) = 2^n + floor((3/2)^n) - 2.

The programs for A002804, the canonical program `A002804.P17399535954710337948` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002804 has offset 1).

The definition of A002804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)+floor((3/2)^(n+1))-2` (program `A002804.P17399535954710337948`, by `A002804.P17399535954710337948.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002804.P17399535954710337948

`2^(n+1)+floor((3/2)^(n+1))-2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002804

/-- `2^(n+1)+floor((3/2)^(n+1))-2` -/
def P17399535954710337948.Spec : Prop :=
  ∀ n, P17399535954710337948.a n = A002804 (n + 1)

theorem P17399535954710337948.correct : P17399535954710337948.Spec := by
  intro n
  simp only [A002804, Nat.add_sub_cancel]

end A002804

/-! ## A002804.P1970911136828351765

`∑[A000079(n)+Δ[A002379(n)]]`
-/

namespace A002804.P1970911136828351765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002804.P1970911136828351765

namespace A002804

/-- `∑[A000079(n)+Δ[A002379(n)]]` -/
def P1970911136828351765.Spec : Prop :=
  ∀ n, P1970911136828351765.a n = A002804 (n + 1)

end A002804

/-! ## A002804.P10267477562844262391

`A241151(A150044(n+1))`
-/

namespace A002804.P10267477562844262391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241151 (A150044 (n + 1)).toNat

end

end A002804.P10267477562844262391

namespace A002804

/-- `A241151(A150044(n+1))` -/
def P10267477562844262391.Spec : Prop :=
  ∀ n, P10267477562844262391.a n = A002804 (n + 1)

end A002804

/-!
# A002805: a(n) = denominator of harmonic number H(n) = Sum_{i=1..n} 1/i.

The programs for A002805, the canonical program `A002805.P15380155363923936140` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002805 has offset 1).

The definition of A002805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002805.P15380155363923936140

`(n+1)!/gcd(A000254(n+1), (n+1)!)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002805

/-- `(n+1)!/gcd(A000254(n+1), (n+1)!)` -/
def P15380155363923936140.Spec : Prop :=
  ∀ n, P15380155363923936140.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P18254030478299229476

`Δ[A173185(n)]/A110566(n+1)`
-/

namespace A002805.P18254030478299229476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A110566 (n + 1) : ℚ)

end

end A002805.P18254030478299229476

namespace A002805

/-- `Δ[A173185(n)]/A110566(n+1)` -/
def P18254030478299229476.Spec : Prop :=
  ∀ n, P18254030478299229476.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P11801403651480967644

`Δ[A236856(n)]/A110566(n+1)`
-/

namespace A002805.P11801403651480967644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A110566 (n + 1) : ℚ)

end

end A002805.P11801403651480967644

namespace A002805

/-- `Δ[A236856(n)]/A110566(n+1)` -/
def P11801403651480967644.Spec : Prop :=
  ∀ n, P11801403651480967644.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P16609233739416479097

`A001008(n+1)-A064169(n+1)`
-/

namespace A002805.P16609233739416479097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) - A064169 (n + 1)

end

end A002805.P16609233739416479097

namespace A002805

/-- `A001008(n+1)-A064169(n+1)` -/
def P16609233739416479097.Spec : Prop :=
  ∀ n, P16609233739416479097.a n = A002805 (n + 1)

end A002805

/-! ## A002805.P7333803593715095605

`A064168(n+1)-A001008(n+1)`
-/

namespace A002805.P7333803593715095605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (n + 1) - A001008 (n + 1)

end

end A002805.P7333803593715095605

namespace A002805

/-- `A064168(n+1)-A001008(n+1)` -/
def P7333803593715095605.Spec : Prop :=
  ∀ n, P7333803593715095605.a n = A002805 (n + 1)

end A002805

/-! ## A002805.P13782007492558469303

`A003418(n+1)/A110566(n+1)`
-/

namespace A002805.P13782007492558469303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A002805.P13782007492558469303

namespace A002805

/-- `A003418(n+1)/A110566(n+1)` -/
def P13782007492558469303.Spec : Prop :=
  ∀ n, P13782007492558469303.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P10263850242857055311

`lcm(A027611(n+1), A027611(n+2))`
-/

namespace A002805.P10263850242857055311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027611 (n + 1)) (A027611 (n + 2))

end

end A002805.P10263850242857055311

namespace A002805

/-- `lcm(A027611(n+1), A027611(n+2))` -/
def P10263850242857055311.Spec : Prop :=
  ∀ n, (P10263850242857055311.a n : ℤ) = A002805 (n + 1)

end A002805

/-! ## A002805.P6722350882891971803

`A051426(n+1)/(2*A110566(n+1))`
-/

namespace A002805.P6722350882891971803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (n + 1) : ℚ) / (2 * A110566 (n + 1) : ℚ)

end

end A002805.P6722350882891971803

namespace A002805

/-- `A051426(n+1)/(2*A110566(n+1))` -/
def P6722350882891971803.Spec : Prop :=
  ∀ n, P6722350882891971803.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P14509942804492199967

`(n+1)*A002944(n+1)/A110566(n+1)`
-/

namespace A002805.P14509942804492199967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A002944 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A002805.P14509942804492199967

namespace A002805

/-- `(n+1)*A002944(n+1)/A110566(n+1)` -/
def P14509942804492199967.Spec : Prop :=
  ∀ n, P14509942804492199967.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P3684264327388578596

`A027611(n+1)/A120263(n+1)*(n+1)`
-/

namespace A002805.P3684264327388578596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027611 (n + 1) : ℚ) / (A120263 (n + 1) : ℚ) * (n + 1 : ℚ)

end

end A002805.P3684264327388578596

namespace A002805

/-- `A027611(n+1)/A120263(n+1)*(n+1)` -/
def P3684264327388578596.Spec : Prop :=
  ∀ n, P3684264327388578596.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P2077648566031088708

`A051426(n+1)/A005843(A110566(n+1))`
-/

namespace A002805.P2077648566031088708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (n + 1) : ℚ) / (A005843 (A110566 (n + 1)).toNat : ℚ)

end

end A002805.P2077648566031088708

namespace A002805

/-- `A051426(n+1)/A005843(A110566(n+1))` -/
def P2077648566031088708.Spec : Prop :=
  ∀ n, P2077648566031088708.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P13535435189671697223

`A051451(A065515(n+1))/A110566(n+1)`
-/

namespace A002805.P13535435189671697223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051451 (A065515 (n + 1)).toNat : ℚ) / (A110566 (n + 1) : ℚ)

end

end A002805.P13535435189671697223

namespace A002805

/-- `A051451(A065515(n+1))/A110566(n+1)` -/
def P13535435189671697223.Spec : Prop :=
  ∀ n, P13535435189671697223.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P6910657155452013992

`A060746(n+1)*A093818(n+1)-A064169(n+1)`
-/

namespace A002805.P6910657155452013992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060746 (n + 1) * A093818 (n + 1) - A064169 (n + 1)

end

end A002805.P6910657155452013992

namespace A002805

/-- `A060746(n+1)*A093818(n+1)-A064169(n+1)` -/
def P6910657155452013992.Spec : Prop :=
  ∀ n, P6910657155452013992.a n = A002805 (n + 1)

end A002805

/-! ## A002805.P6289633968980557279

`A064168(n+1)-A060746(n+1)*A093818(n+1)`
-/

namespace A002805.P6289633968980557279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (n + 1) - A060746 (n + 1) * A093818 (n + 1)

end

end A002805.P6289633968980557279

namespace A002805

/-- `A064168(n+1)-A060746(n+1)*A093818(n+1)` -/
def P6289633968980557279.Spec : Prop :=
  ∀ n, P6289633968980557279.a n = A002805 (n + 1)

end A002805

/-! ## A002805.P6485134517634001025

`A025529(n+1)/A110566(n+1)-A064169(n+1)`
-/

namespace A002805.P6485134517634001025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ) - (A064169 (n + 1) : ℚ)

end

end A002805.P6485134517634001025

namespace A002805

/-- `A025529(n+1)/A110566(n+1)-A064169(n+1)` -/
def P6485134517634001025.Spec : Prop :=
  ∀ n, P6485134517634001025.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P9682001514947310315

`A001008(n+1)/A025529(n+1)*A003418(n+1)`
-/

namespace A002805.P9682001514947310315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (A025529 (n + 1) : ℚ) * (A003418 (n + 1) : ℚ)

end

end A002805.P9682001514947310315

namespace A002805

/-- `A001008(n+1)/A025529(n+1)*A003418(n+1)` -/
def P9682001514947310315.Spec : Prop :=
  ∀ n, P9682001514947310315.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P596288180780940538

`A058312(n+1)/A110566(n+1)*A269626(n+1)`
-/

namespace A002805.P596288180780940538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058312 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ) * (A269626 (n + 1) : ℚ)

end

end A002805.P596288180780940538

namespace A002805

/-- `A058312(n+1)/A110566(n+1)*A269626(n+1)` -/
def P596288180780940538.Spec : Prop :=
  ∀ n, P596288180780940538.a n = (A002805 (n + 1) : ℚ)

end A002805

/-! ## A002805.P8534488368148644379

`lcm(A002547(n+1), A175441(n+1))-A064169(n+1)`
-/

namespace A002805.P8534488368148644379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002547 (n + 1)) (A175441 (n + 1)) : ℤ) - A064169 (n + 1)

end

end A002805.P8534488368148644379

namespace A002805

/-- `lcm(A002547(n+1), A175441(n+1))-A064169(n+1)` -/
def P8534488368148644379.Spec : Prop :=
  ∀ n, P8534488368148644379.a n = A002805 (n + 1)

end A002805

/-! ## A002805.P1848726133323150311

`A213999(∑[n+2]-1)`
-/

namespace A002805.P1848726133323150311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A002805.P1848726133323150311

namespace A002805

/-- `A213999(∑[n+2]-1)` -/
def P1848726133323150311.Spec : Prop :=
  ∀ n, P1848726133323150311.a n = A002805 (n + 1)

end A002805

/-! ## A002805.P2317800087569695850

`A064167(n+1)/A001008(n+1)`
-/

namespace A002805.P2317800087569695850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064167 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ)

end

end A002805.P2317800087569695850

namespace A002805

/-- `A064167(n+1)/A001008(n+1)` -/
def P2317800087569695850.Spec : Prop :=
  ∀ n, P2317800087569695850.a n = (A002805 (n + 1) : ℚ)

end A002805

/-!
# A002807: a(n) = Sum_{k=3..n} (k-1)!*C(n,k)/2.

The programs for A002807, the canonical program `A002807.P10317822302532245099` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002807 has offset 0).

The definition of A002807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002807.P10317822302532245099

`(n-1)*(n-2)/2+n*a(n-1)-(n-1)*a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002807

/-- `(n-1)*(n-2)/2+n*a(n-1)-(n-1)*a(n-2)` -/
def P10317822302532245099.Spec : Prop :=
  ∀ n, P10317822302532245099.a n = (A002807 n : ℚ)

end A002807

/-! ## A002807.P6462100809577025577

`∑[(a(n-1)+(n-2)/2)*(n-1)]` with `a(0)=0`
-/

namespace A002807.P6462100809577025577
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (f1 (n - 1) + ((n : ℤ) - 2 : ℚ) / 2) * ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002807.P6462100809577025577

namespace A002807

/-- `∑[(a(n-1)+(n-2)/2)*(n-1)]` -/
def P6462100809577025577.Spec : Prop :=
  ∀ n, P6462100809577025577.a n = (A002807 n : ℚ)

end A002807

/-! ## A002807.P15116876446711412328

`∑[lcm(a(n-1)+n-2, n-1)]/2` with `a(0)=0`
-/

namespace A002807.P15116876446711412328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lcm ((f1 (n - 1) : ℤ) + ((n : ℤ) - 2)) ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A002807.P15116876446711412328

namespace A002807

/-- `∑[lcm(a(n-1)+n-2, n-1)]/2` -/
def P15116876446711412328.Spec : Prop :=
  ∀ n, P15116876446711412328.a n = (A002807 n : ℚ)

end A002807

/-! ## A002807.P16851213097997939768

`∑[C(n-1, 2)+(n-1)*a(n-1)]` with `a(0)=0`
-/

namespace A002807.P16851213097997939768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.choose ((n : ℤ) - 1).toNat 2 : ℤ) + ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002807.P16851213097997939768

namespace A002807

/-- `∑[C(n-1, 2)+(n-1)*a(n-1)]` -/
def P16851213097997939768.Spec : Prop :=
  ∀ n, P16851213097997939768.a n = A002807 n

end A002807

/-! ## A002807.P6693617490021650342

`∑[A038155(abs(1-n))]`
-/

namespace A002807.P6693617490021650342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002807.P6693617490021650342

namespace A002807

/-- `∑[A038155(abs(1-n))]` -/
def P6693617490021650342.Spec : Prop :=
  ∀ n, P6693617490021650342.a n = A002807 n

end A002807

/-! ## A002807.P726587237762129684

`A116723(n)-(∑[n]+1)`
-/

namespace A002807.P726587237762129684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116723 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A002807.P726587237762129684

namespace A002807

/-- `A116723(n)-(∑[n]+1)` -/
def P726587237762129684.Spec : Prop :=
  ∀ n, P726587237762129684.a n = A002807 n

end A002807

/-! ## A002807.P10870142674879881828

`(A002104(n)-∑[n])/2`
-/

namespace A002807.P10870142674879881828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002104 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A002807.P10870142674879881828

namespace A002807

/-- `(A002104(n)-∑[n])/2` -/
def P10870142674879881828.Spec : Prop :=
  ∀ n, P10870142674879881828.a n = (A002807 n : ℚ)

end A002807

/-! ## A002807.P3571356332294475720

`A038155(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A002807.P3571356332294475720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A038155 (n - 1) + a (n - 1)

end

end A002807.P3571356332294475720

namespace A002807

/-- `A038155(n-1)+a(n-1)` -/
def P3571356332294475720.Spec : Prop :=
  ∀ n, P3571356332294475720.a n = A002807 n

end A002807

/-! ## A002807.P9210130479766234346

`∑[A038155(n)]-A038155(n)`
-/

namespace A002807.P9210130479766234346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038155 n

end

end A002807.P9210130479766234346

namespace A002807

/-- `∑[A038155(n)]-A038155(n)` -/
def P9210130479766234346.Spec : Prop :=
  ∀ n, P9210130479766234346.a n = A002807 n

end A002807

/-! ## A002807.P6210682334289097360

`(∑[A038154(n)]-A038154(n))/2`
-/

namespace A002807.P6210682334289097360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038154 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A038154 n : ℤ) : ℚ) / 2

end

end A002807.P6210682334289097360

namespace A002807

/-- `(∑[A038154(n)]-A038154(n))/2` -/
def P6210682334289097360.Spec : Prop :=
  ∀ n, P6210682334289097360.a n = (A002807 n : ℚ)

end A002807

/-!
# A002808: The composite numbers: numbers n of the form x*y for x > 1 and y > 1.

The programs for A002808, the canonical program `A002808.P8130888830651501259` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002808 has offset 1).

The definition of A002808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002808.P449999546100251884

`Δ[A053767(n)]`
-/

namespace A002808.P449999546100251884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002808.P449999546100251884

namespace A002808

/-- `Δ[A053767(n)]` -/
def P449999546100251884.Spec : Prop :=
  ∀ n, P449999546100251884.a n = A002808 (n + 1)

end A002808

/-! ## A002808.P1525985982974416793

`comp[A351078(n)]`
-/

namespace A002808.P1525985982974416793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A002808.P1525985982974416793

namespace A002808

/-- `comp[A351078(n)]` -/
def P1525985982974416793.Spec : Prop :=
  ∀ n, (P1525985982974416793.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P16088373595185108679

`A018252(n+2)`
-/

namespace A002808.P16088373595185108679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

end

end A002808.P16088373595185108679

namespace A002808

/-- `A018252(n+2)` -/
def P16088373595185108679.Spec : Prop :=
  ∀ n, P16088373595185108679.a n = A002808 (n + 1)

end A002808

/-! ## A002808.P6746851495677330271

`A141468(3+n)`
-/

namespace A002808.P6746851495677330271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (3 + n)

end

end A002808.P6746851495677330271

namespace A002808

/-- `A141468(3+n)` -/
def P6746851495677330271.Spec : Prop :=
  ∀ n, P6746851495677330271.a n = A002808 (n + 1)

end A002808

/-! ## A002808.P8130888830651501259

`lt[0, A082023(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002808

/-- `lt[0, A082023(n)]` -/
def P8130888830651501259.Spec : Prop :=
  ∀ n, (P8130888830651501259.a n : ℤ) = A002808 (n + 1)

theorem P8130888830651501259.correct : P8130888830651501259.Spec := by
  intro n
  simp only [A002808, Nat.add_sub_cancel]

end A002808

/-! ## A002808.P4533447204635085957

`lt[0, A107393(n)]`
-/

namespace A002808.P4533447204635085957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002808.P4533447204635085957

namespace A002808

/-- `lt[0, A107393(n)]` -/
def P4533447204635085957.Spec : Prop :=
  ∀ n, (P4533447204635085957.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P17852608844829770380

`lt[1, A074206(n)]`
-/

namespace A002808.P17852608844829770380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002808.P17852608844829770380

namespace A002808

/-- `lt[1, A074206(n)]` -/
def P17852608844829770380.Spec : Prop :=
  ∀ n, (P17852608844829770380.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P11489711840180533050

`lt[1, A107286(n)]`
-/

namespace A002808.P11489711840180533050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002808.P11489711840180533050

namespace A002808

/-- `lt[1, A107286(n)]` -/
def P11489711840180533050.Spec : Prop :=
  ∀ n, (P11489711840180533050.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P11378029196037192501

`lt[1, A107463(n)]`
-/

namespace A002808.P11378029196037192501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002808.P11378029196037192501

namespace A002808

/-- `lt[1, A107463(n)]` -/
def P11378029196037192501.Spec : Prop :=
  ∀ n, (P11378029196037192501.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P5352005292825617331

`lt[1, A175126(n)]`
-/

namespace A002808.P5352005292825617331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002808.P5352005292825617331

namespace A002808

/-- `lt[1, A175126(n)]` -/
def P5352005292825617331.Spec : Prop :=
  ∀ n, (P5352005292825617331.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P6453576201208276133

`A072668(n+1)+1`
-/

namespace A002808.P6453576201208276133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + 1

end

end A002808.P6453576201208276133

namespace A002808

/-- `A072668(n+1)+1` -/
def P6453576201208276133.Spec : Prop :=
  ∀ n, P6453576201208276133.a n = A002808 (n + 1)

theorem P6453576201208276133.correct : P6453576201208276133.Spec := by
  intro n
  simp only [A002808, Nat.add_sub_cancel, A002808.P6453576201208276133.a, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A072668, A072668.P5648318357023435289.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002808

/-! ## A002808.P6389886485319985940

`comp[C(A006530(n+1), n)]`
-/

namespace A002808.P6389886485319985940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A002808.P6389886485319985940

namespace A002808

/-- `comp[C(A006530(n+1), n)]` -/
def P6389886485319985940.Spec : Prop :=
  ∀ n, (P6389886485319985940.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P1806220530002670469

`comp[C(A020639(n+1), n)]`
-/

namespace A002808.P1806220530002670469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A002808.P1806220530002670469

namespace A002808

/-- `comp[C(A020639(n+1), n)]` -/
def P1806220530002670469.Spec : Prop :=
  ∀ n, (P1806220530002670469.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P7859588318465327142

`lt[1, A001222(n+1)]+1`
-/

namespace A002808.P7859588318465327142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002808.P7859588318465327142

namespace A002808

/-- `lt[1, A001222(n+1)]+1` -/
def P7859588318465327142.Spec : Prop :=
  ∀ n, (P7859588318465327142.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P568819275912777150

`lt[2, A000005(n+1)]+1`
-/

namespace A002808.P568819275912777150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002808.P568819275912777150

namespace A002808

/-- `lt[2, A000005(n+1)]+1` -/
def P568819275912777150.Spec : Prop :=
  ∀ n, (P568819275912777150.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P5884665941586385377

`n+1+A073169(n+1)`
-/

namespace A002808.P5884665941586385377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A073169 (n + 1)

end

end A002808.P5884665941586385377

namespace A002808

/-- `n+1+A073169(n+1)` -/
def P5884665941586385377.Spec : Prop :=
  ∀ n, P5884665941586385377.a n = A002808 (n + 1)

theorem P5884665941586385377.correct : P5884665941586385377.Spec := by
  intro n
  simp only [A002808, Nat.add_sub_cancel, A002808.P5884665941586385377.a, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A073169, A073169.P14738260624206914448.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002808

/-! ## A002808.P8583395036277055497

`lt[A000010(n+1), n]+1`
-/

namespace A002808.P8583395036277055497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A002808.P8583395036277055497

namespace A002808

/-- `lt[A000010(n+1), n]+1` -/
def P8583395036277055497.Spec : Prop :=
  ∀ n, (P8583395036277055497.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P8129385512976055863

`comp[A000040(n+1)-2]+2`
-/

namespace A002808.P8129385512976055863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A002808.P8129385512976055863

namespace A002808

/-- `comp[A000040(n+1)-2]+2` -/
def P8129385512976055863.Spec : Prop :=
  ∀ n, (P8129385512976055863.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P13888481260257686301

`comp[A006530(n+2)%(n+1)]`
-/

namespace A002808.P13888481260257686301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 2)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A002808.P13888481260257686301

namespace A002808

/-- `comp[A006530(n+2)%(n+1)]` -/
def P13888481260257686301.Spec : Prop :=
  ∀ n, (P13888481260257686301.a n : ℤ) = A002808 (n + 1)

end A002808

/-! ## A002808.P12465191120298341468

`eq[A040001(n), A107393(n)]`
-/

namespace A002808.P12465191120298341468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002808.P12465191120298341468

namespace A002808

/-- `eq[A040001(n), A107393(n)]` -/
def P12465191120298341468.Spec : Prop :=
  ∀ n, (P12465191120298341468.a n : ℤ) = A002808 (n + 1)

end A002808

/-!
# A002809: Increasing values of A000793 (largest order of permutation of n elements).

The programs for A002809, there is no canonical definition to state claims against.
-/

/-! ## A002809.P15790651673849274123

`record[A051703(n)]`
-/

namespace A002809.P15790651673849274123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002809.P15790651673849274123

/-! ## A002809.P11983483849700655897

`A000793(A006644(n+1))`
-/

namespace A002809.P11983483849700655897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (A006644 (n + 1)).toNat

end

end A002809.P11983483849700655897

/-! ## A002809.P17650378076532597634

`A000793(eq[A000793(n), A051703(n)])`
-/

namespace A002809.P17650378076532597634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A002809.P17650378076532597634

/-! ## A002809.P9880747080744194998

`A000793(lt[A000793(n), A051703(n)+1])`
-/

namespace A002809.P9880747080744194998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051703 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A002809.P9880747080744194998

/-! ## A002809.P15733532874083962607

`A000793(lt[A000793(n)-1, A051703(n)])`
-/

namespace A002809.P15733532874083962607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A002809.P15733532874083962607

/-! ## A002809.P17254617429876529828

`record[A000793(n)%A000793(n+2)]`
-/

namespace A002809.P17254617429876529828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000793 n) (A000793 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002809.P17254617429876529828

/-! ## A002809.P6435421903340424743

`record[A000793(A008611(n))]`
-/

namespace A002809.P6435421903340424743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002809.P6435421903340424743

/-! ## A002809.P16748799347857655185

`record[A000793(n+1-and(4, A206255(n+1)))]`
-/

namespace A002809.P16748799347857655185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 ((n + 1 : ℤ) - Int.land 4 (A206255 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002809.P16748799347857655185

/-! ## A002809.P13855426700173284912

`record[A000793(n)/A074064(n)]`
-/

namespace A002809.P13855426700173284912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000793 n : ℚ) / (A074064 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002809.P13855426700173284912

/-! ## A002809.P6605167948981572637

`record[A074103(n)]`
-/

namespace A002809.P6605167948981572637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002809.P6605167948981572637

/-!
# A002812: a(n) = 2*a(n-1)^2 - 1, starting a(0) = 2.

The programs for A002812, the canonical program `A002812.P5311178053532130232` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002812 has offset 0).

The definition of A002812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)²-1` (program `A002812.P5311178053532130232`, by `A002812.P5311178053532130232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002812.P5311178053532130232

`2*a(n-1)²-1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002812

/-- `2*a(n-1)²-1` -/
def P5311178053532130232.Spec : Prop :=
  ∀ n, P5311178053532130232.a n = A002812 n

theorem P5311178053532130232.correct : P5311178053532130232.Spec := by
  intro n
  simp only [A002812]

end A002812

/-! ## A002812.P9752641394827018990

`xor(2, lcm(2, a(n-1)²)+1)` with `a(0)=2`
-/

namespace A002812.P9752641394827018990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 2 (Nat.lcm 2 (a (n - 1) ^ 2) + 1)

end

end A002812.P9752641394827018990

namespace A002812

/-- `xor(2, lcm(2, a(n-1)²)+1)` -/
def P9752641394827018990.Spec : Prop :=
  ∀ n, (P9752641394827018990.a n : ℤ) = A002812 n

end A002812

/-! ## A002812.P13408896736145755017

`2*a(n-1)^(4/2)-1` with `a(0)=2`
-/

namespace A002812.P13408896736145755017
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) ^ ((4 : ℚ) / 2 : ℝ) - 1

end

end A002812.P13408896736145755017

namespace A002812

/-- `2*a(n-1)^(4/2)-1` -/
def P13408896736145755017.Spec : Prop :=
  ∀ n, P13408896736145755017.a n = (A002812 n : ℝ)

end A002812

/-! ## A002812.P2008498189405298821

`((2+sqrt(3))^2^n+(2-sqrt(3))^2^n)/2`
-/

namespace A002812.P2008498189405298821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) ^ 2 ^ n + (2 - Real.sqrt (3 : ℝ)) ^ 2 ^ n) / 2

end

end A002812.P2008498189405298821

namespace A002812

/-- `((2+sqrt(3))^2^n+(2-sqrt(3))^2^n)/2` -/
def P2008498189405298821.Spec : Prop :=
  ∀ n, P2008498189405298821.a n = (A002812 n : ℝ)

end A002812

/-!
# A002814: For n > 1: a(n) = a(n-1)^3 + 3*a(n-1)^2 - 3; a(0) = 1, a(1) = 2.

The programs for A002814, there is no canonical definition to state claims against.
-/

/-! ## A002814.P17552038028946957393

`(a(n-1)+3)*a(n-1)²-3` with `a(0)=1, a(1)=2`
-/

namespace A002814.P17552038028946957393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + 3) * a (n - 1) ^ 2 - 3

end

end A002814.P17552038028946957393

/-!
# A002815: a(n) = n + Sum_{k=1..n} pi(k), where pi() = A000720.

The programs for A002815, the canonical program `A002815.P11144953744924913715` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002815 has offset 0).

The definition of A002815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002815.P11144953744924913715

`∑[A230980(n)]+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002815

/-- `∑[A230980(n)]+n` -/
def P11144953744924913715.Spec : Prop :=
  ∀ n, P11144953744924913715.a n = A002815 n

theorem P11144953744924913715.correct : P11144953744924913715.Spec := by
  intro n
  simp only [A002815]

end A002815

/-! ## A002815.P10731194943710840416

`∑[∑[char[A006530(n+1)]]]`
-/

namespace A002815.P10731194943710840416
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002815.P10731194943710840416

namespace A002815

/-- `∑[∑[char[A006530(n+1)]]]` -/
def P10731194943710840416.Spec : Prop :=
  ∀ n, (P10731194943710840416.a n : ℤ) = A002815 n

end A002815

/-! ## A002815.P12863353959662288794

`∑[∑[char[A008578(n+1)]]]`
-/

namespace A002815.P12863353959662288794
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002815.P12863353959662288794

namespace A002815

/-- `∑[∑[char[A008578(n+1)]]]` -/
def P12863353959662288794.Spec : Prop :=
  ∀ n, (P12863353959662288794.a n : ℤ) = A002815 n

end A002815

/-! ## A002815.P1240252706975100821

`∑[∑[char[A020639(n+1)]]]`
-/

namespace A002815.P1240252706975100821
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002815.P1240252706975100821

namespace A002815

/-- `∑[∑[char[A020639(n+1)]]]` -/
def P1240252706975100821.Spec : Prop :=
  ∀ n, (P1240252706975100821.a n : ℤ) = A002815 n

end A002815

/-! ## A002815.P16620778354065598171

`∑[∑[char[A347241(n+1)]]]`
-/

namespace A002815.P16620778354065598171
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347241 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002815.P16620778354065598171

namespace A002815

/-- `∑[∑[char[A347241(n+1)]]]` -/
def P16620778354065598171.Spec : Prop :=
  ∀ n, (P16620778354065598171.a n : ℤ) = A002815 n

end A002815

/-! ## A002815.P16154678502053911568

`∑[A095117(n)-n]+n`
-/

namespace A002815.P16154678502053911568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A002815.P16154678502053911568

namespace A002815

/-- `∑[A095117(n)-n]+n` -/
def P16154678502053911568.Spec : Prop :=
  ∀ n, P16154678502053911568.a n = A002815 n

theorem P16154678502053911568.correct : P16154678502053911568.Spec := by
  intro n
  simp only [A002815, Nat.add_sub_cancel, A002815.P16154678502053911568.f1, A002815.P16154678502053911568.a, A002815.P11144953744924913715.f1, A002815.P11144953744924913715.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002815

/-! ## A002815.P4731622314719518723

`A294013(n+1)/2+n`
-/

namespace A002815.P4731622314719518723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294013 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A002815.P4731622314719518723

namespace A002815

/-- `A294013(n+1)/2+n` -/
def P4731622314719518723.Spec : Prop :=
  ∀ n, P4731622314719518723.a n = (A002815 n : ℚ)

end A002815

/-! ## A002815.P12472101746322427226

`∑[A064427(n+1)-n]-1`
-/

namespace A002815.P12472101746322427226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002815.P12472101746322427226

namespace A002815

/-- `∑[A064427(n+1)-n]-1` -/
def P12472101746322427226.Spec : Prop :=
  ∀ n, P12472101746322427226.a n = A002815 n

end A002815

/-! ## A002815.P11275512446046437701

`∑[∑[char[A000040(n+1)]]]+n`
-/

namespace A002815.P11275512446046437701
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A002815.P11275512446046437701

namespace A002815

/-- `∑[∑[char[A000040(n+1)]]]+n` -/
def P11275512446046437701.Spec : Prop :=
  ∀ n, (P11275512446046437701.a n : ℤ) = A002815 n

end A002815

/-! ## A002815.P14623295816525478644

`a(n-1)+A000720(n)+1` with `a(0)=0`
-/

namespace A002815.P14623295816525478644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A000720 n + 1)

end

end A002815.P14623295816525478644

namespace A002815

/-- `a(n-1)+A000720(n)+1` -/
def P14623295816525478644.Spec : Prop :=
  ∀ n, P14623295816525478644.a n = A002815 n

end A002815

/-! ## A002815.P14427090430860750340

`a(n-1)+n-A065855(n)` with `a(0)=0`
-/

namespace A002815.P14427090430860750340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A065855 n)

end

end A002815.P14427090430860750340

namespace A002815

/-- `a(n-1)+n-A065855(n)` -/
def P14427090430860750340.Spec : Prop :=
  ∀ n, P14427090430860750340.a n = A002815 n

end A002815

/-! ## A002815.P12172584454795110527

`(n+1)²-∑[A171511(n+1)]`
-/

namespace A002815.P12172584454795110527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002815.P12172584454795110527

namespace A002815

/-- `(n+1)²-∑[A171511(n+1)]` -/
def P12172584454795110527.Spec : Prop :=
  ∀ n, P12172584454795110527.a n = A002815 n

end A002815

/-! ## A002815.P15166828932305378301

`∑[A000720(A151800(n))]-1`
-/

namespace A002815.P15166828932305378301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002815.P15166828932305378301

namespace A002815

/-- `∑[A000720(A151800(n))]-1` -/
def P15166828932305378301.Spec : Prop :=
  ∀ n, P15166828932305378301.a n = A002815 n

end A002815

/-! ## A002815.P8355843436701085663

`∑[A000720(A028310(n))]+n`
-/

namespace A002815.P8355843436701085663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A002815.P8355843436701085663

namespace A002815

/-- `∑[A000720(A028310(n))]+n` -/
def P8355843436701085663.Spec : Prop :=
  ∀ n, P8355843436701085663.a n = A002815 n

end A002815

/-! ## A002815.P8242137330389618367

`∑[A000720(A007918(n+1))]-1`
-/

namespace A002815.P8242137330389618367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002815.P8242137330389618367

namespace A002815

/-- `∑[A000720(A007918(n+1))]-1` -/
def P8242137330389618367.Spec : Prop :=
  ∀ n, P8242137330389618367.a n = A002815 n

end A002815

/-! ## A002815.P2789233190920212365

`A065855(n+1)+A046992(n+1)`
-/

namespace A002815.P2789233190920212365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) + A046992 (n + 1)

end

end A002815.P2789233190920212365

namespace A002815

/-- `A065855(n+1)+A046992(n+1)` -/
def P2789233190920212365.Spec : Prop :=
  ∀ n, P2789233190920212365.a n = A002815 n

end A002815

/-! ## A002815.P5617915961728671880

`∑[∑[char[A166333(n)]]]`
-/

namespace A002815.P5617915961728671880
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002815.P5617915961728671880

namespace A002815

/-- `∑[∑[char[A166333(n)]]]` -/
def P5617915961728671880.Spec : Prop :=
  ∀ n, (P5617915961728671880.a n : ℤ) = A002815 n

end A002815

/-! ## A002815.P11865037304647694389

`∑[∑[C(n, ∏{d}[n, #])]]`
-/

namespace A002815.P11865037304647694389
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ d ∈ Nat.divisors (f3 n), d)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002815.P11865037304647694389

namespace A002815

/-- `∑[∑[C(n, ∏{d}[n, #])]]` -/
def P11865037304647694389.Spec : Prop :=
  ∀ n, (P11865037304647694389.a n : ℤ) = A002815 n

end A002815

/-! ## A002815.P9000023262415402683

`∑[∑[floor(n/∏{d}[n, #])]]`
-/

namespace A002815.P9000023262415402683
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002815.P9000023262415402683

namespace A002815

/-- `∑[∑[floor(n/∏{d}[n, #])]]` -/
def P9000023262415402683.Spec : Prop :=
  ∀ n, P9000023262415402683.a n = A002815 n

end A002815

/-!
# A002816: Number of polygons that can be formed from n points on a circle, no two adjacent.

The programs for A002816, there is no canonical definition to state claims against.
-/

/-! ## A002816.P15635078674086992108

`ceil(A078603(n+1)/2)`
-/

namespace A002816.P15635078674086992108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078603 (n + 1) : ℚ) / 2⌉

end

end A002816.P15635078674086992108

/-! ## A002816.P15051151110278187387

`A078603(n+1)/A329683(n)`
-/

namespace A002816.P15051151110278187387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078603 (n + 1) : ℚ) / (A329683 n : ℚ)

end

end A002816.P15051151110278187387

/-! ## A002816.P12728609366223335013

`A078603(n+1)/A046698(n)!`
-/

namespace A002816.P12728609366223335013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078603 (n + 1) : ℚ) / (Nat.factorial (A046698 n).toNat : ℚ)

end

end A002816.P12728609366223335013

/-! ## A002816.P4447771648107768815

`A078603(n+1)/A000142(n)*A001710(n)`
-/

namespace A002816.P4447771648107768815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078603 (n + 1) : ℚ) / (A000142 n : ℚ) * (A001710 n : ℚ)

end

end A002816.P4447771648107768815

/-! ## A002816.P17328207448759354955

`A326411(A253145(n))`
-/

namespace A002816.P17328207448759354955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326411 (A253145 n).toNat

end

end A002816.P17328207448759354955

/-!
# A002817: Doubly triangular numbers: a(n) = n*(n+1)*(n^2+n+2)/8.

The programs for A002817, the canonical program `A002817.P4960562302039203176` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002817 has offset 0).

The definition of A002817 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n²+n+2)/8` (program `A002817.P2187834130627944989`, by `A002817.P2187834130627944989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002817.P6025178865477677631

`C(C(n+1, 2)+1, 2)`
-/

namespace A002817.P6025178865477677631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 1) 2 + 1) 2

end

end A002817.P6025178865477677631

namespace A002817

/-- `C(C(n+1, 2)+1, 2)` -/
def P6025178865477677631.Spec : Prop :=
  ∀ n, (P6025178865477677631.a n : ℤ) = A002817 n

end A002817

/-! ## A002817.P1046851062994217013

`(n+1)*n*(n²+n+2)/8`
-/

namespace A002817.P1046851062994217013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * n * (n ^ 2 + n + 2) : ℚ) / 8

end

end A002817.P1046851062994217013

namespace A002817

/-- `(n+1)*n*(n²+n+2)/8` -/
def P1046851062994217013.Spec : Prop :=
  ∀ n, P1046851062994217013.a n = (A002817 n : ℚ)

theorem P1046851062994217013.correct : P1046851062994217013.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A002817, Nat.add_sub_cancel, A002817.P1046851062994217013.a, A002817.P4960562302039203176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A002817, Nat.add_sub_cancel, A002817.P1046851062994217013.a, A002817.P4960562302039203176.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002817

/-! ## A002817.P2187834130627944989

`n*(n+1)*(n²+n+2)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002817.P2187834130627944989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n ^ 2 + n + 2) : ℚ) / 8

end

end A002817.P2187834130627944989

namespace A002817

/-- `n*(n+1)*(n²+n+2)/8` -/
def P2187834130627944989.Spec : Prop :=
  ∀ n, P2187834130627944989.a n = (A002817 n : ℚ)

theorem P2187834130627944989.correct : P2187834130627944989.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A002817, Nat.add_sub_cancel, A002817.P2187834130627944989.a, A002817.P4960562302039203176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A002817, Nat.add_sub_cancel, A002817.P2187834130627944989.a, A002817.P4960562302039203176.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002817

/-! ## A002817.P4960562302039203176

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+3` with `a(0)=0, a(1)=1, a(2)=6, a(3)=21`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002817

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+3` -/
def P4960562302039203176.Spec : Prop :=
  ∀ n, P4960562302039203176.a n = A002817 n

theorem P4960562302039203176.correct : P4960562302039203176.Spec := by
  intro n
  simp only [A002817]

end A002817

/-! ## A002817.P12418166532128879382

`A000332(n+1)+A000332(n+2)+A000332(n+3)`
-/

namespace A002817.P12418166532128879382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + A000332 (n + 2) + A000332 (n + 3)

end

end A002817.P12418166532128879382

namespace A002817

/-- `A000332(n+1)+A000332(n+2)+A000332(n+3)` -/
def P12418166532128879382.Spec : Prop :=
  ∀ n, P12418166532128879382.a n = A002817 n

end A002817

/-! ## A002817.P17614830223522526362

`A000217(A000217(n))`
-/

namespace A002817.P17614830223522526362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat

end

end A002817.P17614830223522526362

namespace A002817

/-- `A000217(A000217(n))` -/
def P17614830223522526362.Spec : Prop :=
  ∀ n, P17614830223522526362.a n = A002817 n

end A002817

/-! ## A002817.P11678590676159242621

`C(∑[n]+1, 2)`
-/

namespace A002817.P11678590676159242621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A002817.P11678590676159242621

namespace A002817

/-- `C(∑[n]+1, 2)` -/
def P11678590676159242621.Spec : Prop :=
  ∀ n, (P11678590676159242621.a n : ℤ) = A002817 n

end A002817

/-! ## A002817.P17407001856898049503

`∑[n]²-C(∑[n], 2)`
-/

namespace A002817.P17407001856898049503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

end

end A002817.P17407001856898049503

namespace A002817

/-- `∑[n]²-C(∑[n], 2)` -/
def P17407001856898049503.Spec : Prop :=
  ∀ n, P17407001856898049503.a n = A002817 n

end A002817

/-! ## A002817.P4849239027651263110

`C(∑[n], 2)-∑[n-2*n]`
-/

namespace A002817.P4849239027651263110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A002817.P4849239027651263110

namespace A002817

/-- `C(∑[n], 2)-∑[n-2*n]` -/
def P4849239027651263110.Spec : Prop :=
  ∀ n, P4849239027651263110.a n = A002817 n

end A002817

/-! ## A002817.P910621024376567296

`∑[∑[∑[a(n-1)+3]]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A002817.P910621024376567296
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002817.P910621024376567296

namespace A002817

/-- `∑[∑[∑[a(n-1)+3]]]` -/
def P910621024376567296.Spec : Prop :=
  ∀ n, (P910621024376567296.a n : ℤ) = A002817 n

end A002817

/-! ## A002817.P9439490514754179165

`a(n-1)+(n^3+n)/2` with `a(0)=0`
-/

namespace A002817.P9439490514754179165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n ^ 3 + n : ℚ) / 2

end

end A002817.P9439490514754179165

namespace A002817

/-- `a(n-1)+(n^3+n)/2` -/
def P9439490514754179165.Spec : Prop :=
  ∀ n, P9439490514754179165.a n = (A002817 n : ℚ)

end A002817

/-! ## A002817.P1884122709281972943

`∑[A006003(n)]`
-/

namespace A002817.P1884122709281972943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002817.P1884122709281972943

namespace A002817

/-- `∑[A006003(n)]` -/
def P1884122709281972943.Spec : Prop :=
  ∀ n, P1884122709281972943.a n = A002817 n

end A002817

/-! ## A002817.P15362016858670654144

`sqrt(∑[A075664(n)])`
-/

namespace A002817.P15362016858670654144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075664 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A002817.P15362016858670654144

namespace A002817

/-- `sqrt(∑[A075664(n)])` -/
def P15362016858670654144.Spec : Prop :=
  ∀ n, P15362016858670654144.a n = (A002817 n : ℝ)

end A002817

/-! ## A002817.P701476231019958037

`∑[sqrt(A135509(n))]`
-/

namespace A002817.P701476231019958037
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135509 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002817.P701476231019958037

namespace A002817

/-- `∑[sqrt(A135509(n))]` -/
def P701476231019958037.Spec : Prop :=
  ∀ n, P701476231019958037.a n = (A002817 n : ℝ)

end A002817

/-! ## A002817.P13701727926231439164

`∑[A034262(n)/2]`
-/

namespace A002817.P13701727926231439164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034262 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002817.P13701727926231439164

namespace A002817

/-- `∑[A034262(n)/2]` -/
def P13701727926231439164.Spec : Prop :=
  ∀ n, P13701727926231439164.a n = (A002817 n : ℚ)

end A002817

/-! ## A002817.P13355176593700663670

`A086602(n)+n²`
-/

namespace A002817.P13355176593700663670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 n + (n ^ 2 : ℤ)

end

end A002817.P13355176593700663670

namespace A002817

/-- `A086602(n)+n²` -/
def P13355176593700663670.Spec : Prop :=
  ∀ n, P13355176593700663670.a n = A002817 n

end A002817

/-! ## A002817.P9243154366940596753

`n/4*A006000(n)`
-/

namespace A002817.P9243154366940596753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A006000 n : ℚ)

end

end A002817.P9243154366940596753

namespace A002817

/-- `n/4*A006000(n)` -/
def P9243154366940596753.Spec : Prop :=
  ∀ n, P9243154366940596753.a n = (A002817 n : ℚ)

end A002817

/-! ## A002817.P7649855222146322005

`A050534(n)+A002411(n)`
-/

namespace A002817.P7649855222146322005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + A002411 n

end

end A002817.P7649855222146322005

namespace A002817

/-- `A050534(n)+A002411(n)` -/
def P7649855222146322005.Spec : Prop :=
  ∀ n, P7649855222146322005.a n = A002817 n

end A002817

/-! ## A002817.P9715018932824253446

`A090809(n)+A006527(n)`
-/

namespace A002817.P9715018932824253446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090809 n + A006527 n

end

end A002817.P9715018932824253446

namespace A002817

/-- `A090809(n)+A006527(n)` -/
def P9715018932824253446.Spec : Prop :=
  ∀ n, P9715018932824253446.a n = A002817 n

end A002817

/-! ## A002817.P5894388644325575765

`A212714(n)+A019298(n)`
-/

namespace A002817.P5894388644325575765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n + A019298 n

end

end A002817.P5894388644325575765

namespace A002817

/-- `A212714(n)+A019298(n)` -/
def P5894388644325575765.Spec : Prop :=
  ∀ n, P5894388644325575765.a n = A002817 n

end A002817

/-!
# A002818: Nearest integer to exp n^2.

The programs for A002818, there is no canonical definition to state claims against.
-/

/-! ## A002818.P3466575796619227542

`round(exp(n²))`
-/

namespace A002818.P3466575796619227542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (n ^ 2 : ℝ))

end

end A002818.P3466575796619227542

/-! ## A002818.P14596804388820789869

`A000227(n²)`
-/

namespace A002818.P14596804388820789869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000227 (n ^ 2)

end

end A002818.P14596804388820789869

/-! ## A002818.P17447338743881655114

`record[round(exp(A048147(n)))]`
-/

namespace A002818.P17447338743881655114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (A048147 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002818.P17447338743881655114

/-! ## A002818.P6859329272341262248

`record[round(exp(A073254(n)))]`
-/

namespace A002818.P6859329272341262248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (A073254 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002818.P6859329272341262248

/-! ## A002818.P15093172316711444388

`record[round(exp(A091435(n)))]`
-/

namespace A002818.P15093172316711444388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (A091435 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002818.P15093172316711444388

/-!
# A002819: Liouville's function L(n) = partial sums of A008836.

The programs for A002819, the canonical program `A002819.P7079467008983505067` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002819 has offset 0).

The definition of A002819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002819.P12835282866132564445

`∑[(-1)^∑{e}[n+1, #]]-(-1)^∑{e}[n+1, #]`
-/

namespace A002819.P12835282866132564445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

end

end A002819.P12835282866132564445

namespace A002819

/-- `∑[(-1)^∑{e}[n+1, #]]-(-1)^∑{e}[n+1, #]` -/
def P12835282866132564445.Spec : Prop :=
  ∀ n, P12835282866132564445.a n = A002819 n

end A002819

/-! ## A002819.P7079467008983505067

`∑[1-(2*∑{e}[n+1, #])%4]-(1-(2*∑{e}[n+1, #])%4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002819

/-- `∑[1-(2*∑{e}[n+1, #])%4]-(1-(2*∑{e}[n+1, #])%4)` -/
def P7079467008983505067.Spec : Prop :=
  ∀ n, P7079467008983505067.a n = A002819 n

theorem P7079467008983505067.correct : P7079467008983505067.Spec := by
  intro n
  simp only [A002819]

end A002819

/-! ## A002819.P1983787329757523023

`A008836(n)+a(n-1)` with `a(0)=0`
-/

namespace A002819.P1983787329757523023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008836 n + a (n - 1)

end

end A002819.P1983787329757523023

namespace A002819

/-- `A008836(n)+a(n-1)` -/
def P1983787329757523023.Spec : Prop :=
  ∀ n, P1983787329757523023.a n = A002819 n

end A002819

/-! ## A002819.P3191769294750001173

`∑[char[1]-a(A052126(n))]` with `a(0)=0, a(1)=1`
-/

namespace A002819.P3191769294750001173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (A052126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002819.P3191769294750001173

namespace A002819

/-- `∑[char[1]-a(A052126(n))]` -/
def P3191769294750001173.Spec : Prop :=
  ∀ n, P3191769294750001173.a n = A002819 n

end A002819

/-! ## A002819.P5379903785707667787

`∑[A008836(lcm(n, a(n-1)))]` with `a(0)=0, a(1)=1`
-/

namespace A002819.P5379903785707667787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A008836 (Int.lcm (n : ℤ) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002819.P5379903785707667787

namespace A002819

/-- `∑[A008836(lcm(n, a(n-1)))]` -/
def P5379903785707667787.Spec : Prop :=
  ∀ n, P5379903785707667787.a n = A002819 n

end A002819

/-! ## A002819.P8951970868873362566

`a(n-1)+(-1)^A001222(n)` with `a(0)=0`
-/

namespace A002819.P8951970868873362566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (-1 : ℚ) ^ (A001222 n : ℤ)

end

end A002819.P8951970868873362566

namespace A002819

/-- `a(n-1)+(-1)^A001222(n)` -/
def P8951970868873362566.Spec : Prop :=
  ∀ n, P8951970868873362566.a n = (A002819 n : ℚ)

end A002819

/-! ## A002819.P18029550981567331407

`∑[A008836(n+1)]-A008836(n+1)`
-/

namespace A002819.P18029550981567331407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008836 (n + 1)

end

end A002819.P18029550981567331407

namespace A002819

/-- `∑[A008836(n+1)]-A008836(n+1)` -/
def P18029550981567331407.Spec : Prop :=
  ∀ n, P18029550981567331407.a n = A002819 n

end A002819

/-! ## A002819.P4240479440079579380

`1-(A072203(n+1)+A008836(n+1))`
-/

namespace A002819.P4240479440079579380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A072203 (n + 1) + A008836 (n + 1))

end

end A002819.P4240479440079579380

namespace A002819

/-- `1-(A072203(n+1)+A008836(n+1))` -/
def P4240479440079579380.Spec : Prop :=
  ∀ n, P4240479440079579380.a n = A002819 n

end A002819

/-! ## A002819.P3842727045310833580

`2*A066829(n+1)-A072203(n+1)`
-/

namespace A002819.P3842727045310833580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066829 (n + 1) - A072203 (n + 1)

end

end A002819.P3842727045310833580

namespace A002819

/-- `2*A066829(n+1)-A072203(n+1)` -/
def P3842727045310833580.Spec : Prop :=
  ∀ n, P3842727045310833580.a n = A002819 n

end A002819

/-! ## A002819.P12987466283973505643

`∑[A008683(A007913(abs(1-4*n)+1))]+1`
-/

namespace A002819.P12987466283973505643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (|1 - (4 * n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A002819.P12987466283973505643

namespace A002819

/-- `∑[A008683(A007913(abs(1-4*n)+1))]+1` -/
def P12987466283973505643.Spec : Prop :=
  ∀ n, P12987466283973505643.a n = A002819 n

end A002819

/-! ## A002819.P1114669581144906132

`∑[(-1)^A001222(n+1)]-(-1)^A001222(n+1)`
-/

namespace A002819.P1114669581144906132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A002819.P1114669581144906132

namespace A002819

/-- `∑[(-1)^A001222(n+1)]-(-1)^A001222(n+1)` -/
def P1114669581144906132.Spec : Prop :=
  ∀ n, P1114669581144906132.a n = (A002819 n : ℚ)

end A002819

/-! ## A002819.P348055226647850528

`A055037(n+1)-(A055038(n+1)+A008836(n+1))`
-/

namespace A002819.P348055226647850528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055037 (n + 1) - (A055038 (n + 1) + A008836 (n + 1))

end

end A002819.P348055226647850528

namespace A002819

/-- `A055037(n+1)-(A055038(n+1)+A008836(n+1))` -/
def P348055226647850528.Spec : Prop :=
  ∀ n, P348055226647850528.a n = A002819 n

end A002819

/-! ## A002819.P16274715559918879089

`∑[(-1)^A001222(n+1)]-A008683(A007913(n+1))`
-/

namespace A002819.P16274715559918879089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A008683 (A007913 (n + 1)).toNat : ℚ)

end

end A002819.P16274715559918879089

namespace A002819

/-- `∑[(-1)^A001222(n+1)]-A008683(A007913(n+1))` -/
def P16274715559918879089.Spec : Prop :=
  ∀ n, P16274715559918879089.a n = (A002819 n : ℚ)

end A002819

/-! ## A002819.P3606434681534831848

`A008836(2*(n+1))+∑[A008836(n+1)]`
-/

namespace A002819.P3606434681534831848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002819.P3606434681534831848

namespace A002819

/-- `A008836(2*(n+1))+∑[A008836(n+1)]` -/
def P3606434681534831848.Spec : Prop :=
  ∀ n, P3606434681534831848.a n = A002819 n

end A002819

/-!
# A002820: Number of n X n invertible binary matrices A such that A+I is invertible.

The programs for A002820, the canonical program `A002820.P5488556646359969384` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002820 has offset 0).

The definition of A002820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002820.P5488556646359969384

`2^(n*(n-1)/2)*A005327(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002820

/-- `2^(n*(n-1)/2)*A005327(n+1)` -/
def P5488556646359969384.Spec : Prop :=
  ∀ n, P5488556646359969384.a n = (A002820 n : ℝ)

end A002820

/-! ## A002820.P7535642880330615826

`A005327(n+1)*A006125(n)`
-/

namespace A002820.P7535642880330615826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005327 (n + 1) * A006125 n

end

end A002820.P7535642880330615826

namespace A002820

/-- `A005327(n+1)*A006125(n)` -/
def P7535642880330615826.Spec : Prop :=
  ∀ n, P7535642880330615826.a n = A002820 n

end A002820

/-! ## A002820.P3784105966564623729

`xor(a(n-1)*A006516(n), A006125(n))` with `a(0)=1`
-/

namespace A002820.P3784105966564623729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1) * A006516 n) (A006125 n)

end

end A002820.P3784105966564623729

namespace A002820

/-- `xor(a(n-1)*A006516(n), A006125(n))` -/
def P3784105966564623729.Spec : Prop :=
  ∀ n, P3784105966564623729.a n = A002820 n

end A002820

/-! ## A002820.P6634978829392136813

`A346201(∑[n])`
-/

namespace A002820.P6634978829392136813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346201 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002820.P6634978829392136813

namespace A002820

/-- `A346201(∑[n])` -/
def P6634978829392136813.Spec : Prop :=
  ∀ n, P6634978829392136813.a n = A002820 n

end A002820

/-!
# A002821: a(n) = nearest integer to n^(3/2).

The programs for A002821, the canonical program `A002821.P6996813196888148160` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002821 has offset 0).

The definition of A002821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002821.P6996813196888148160

`round(n^(3/2))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002821

/-- `round(n^(3/2))` -/
def P6996813196888148160.Spec : Prop :=
  ∀ n, P6996813196888148160.a n = A002821 n

theorem P6996813196888148160.correct : P6996813196888148160.Spec := by
  intro n
  simp only [A002821]

end A002821

/-! ## A002821.P12425456576369253579

`sqrt(A077118(n))`
-/

namespace A002821.P12425456576369253579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077118 n : ℝ)

end

end A002821.P12425456576369253579

namespace A002821

/-- `sqrt(A077118(n))` -/
def P12425456576369253579.Spec : Prop :=
  ∀ n, P12425456576369253579.a n = (A002821 n : ℝ)

end A002821

/-! ## A002821.P16701381763930357002

`or(round(n*sqrt(n)), char[1])`
-/

namespace A002821.P16701381763930357002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (n : ℝ))) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002821.P16701381763930357002

namespace A002821

/-- `or(round(n*sqrt(n)), char[1])` -/
def P16701381763930357002.Spec : Prop :=
  ∀ n, P16701381763930357002.a n = A002821 n

end A002821

/-! ## A002821.P18160179092900114848

`round(n*sqrt(n))%(n+1)²`
-/

namespace A002821.P18160179092900114848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (n : ℝ))) ((n + 1) ^ 2 : ℤ)

end

end A002821.P18160179092900114848

namespace A002821

/-- `round(n*sqrt(n))%(n+1)²` -/
def P18160179092900114848.Spec : Prop :=
  ∀ n, P18160179092900114848.a n = A002821 n

end A002821

/-! ## A002821.P17617033294462982043

`sqrt(A077119(n)+n^3)`
-/

namespace A002821.P17617033294462982043
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077119 n + (n ^ 3 : ℤ) : ℝ)

end

end A002821.P17617033294462982043

namespace A002821

/-- `sqrt(A077119(n)+n^3)` -/
def P17617033294462982043.Spec : Prop :=
  ∀ n, P17617033294462982043.a n = (A002821 n : ℝ)

end A002821

/-! ## A002821.P3525988800038593451

`A000041(gcd(n, n+1))*round(n*sqrt(n))`
-/

namespace A002821.P3525988800038593451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (n : ℝ))

end

end A002821.P3525988800038593451

namespace A002821

/-- `A000041(gcd(n, n+1))*round(n*sqrt(n))` -/
def P3525988800038593451.Spec : Prop :=
  ∀ n, P3525988800038593451.a n = A002821 n

end A002821

/-! ## A002821.P3442703408333774989

`ceil(A000578(n)/A077121(n))`
-/

namespace A002821.P3442703408333774989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000578 n : ℚ) / (A077121 n : ℚ)⌉

end

end A002821.P3442703408333774989

namespace A002821

/-- `ceil(A000578(n)/A077121(n))` -/
def P3442703408333774989.Spec : Prop :=
  ∀ n, P3442703408333774989.a n = A002821 n

end A002821

/-! ## A002821.P17480541738731917446

`ceil(sqrt(A033430(n))-A185549(n))`
-/

namespace A002821.P17480541738731917446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A033430 n : ℝ) - (A185549 n : ℝ)⌉

end

end A002821.P17480541738731917446

namespace A002821

/-- `ceil(sqrt(A033430(n))-A185549(n))` -/
def P17480541738731917446.Spec : Prop :=
  ∀ n, P17480541738731917446.a n = A002821 n

end A002821

/-! ## A002821.P8849321633787582100

`∑{d}[round(n*sqrt(n)), A000010(#)]`
-/

namespace A002821.P8849321633787582100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A002821.P8849321633787582100

namespace A002821

/-- `∑{d}[round(n*sqrt(n)), A000010(#)]` -/
def P8849321633787582100.Spec : Prop :=
  ∀ n, P8849321633787582100.a n = A002821 n

end A002821

/-! ## A002821.P14963582371574724064

`A010054(A017473(n))+round(n*sqrt(n))`
-/

namespace A002821.P14963582371574724064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A017473 n).toNat + SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (n : ℝ))

end

end A002821.P14963582371574724064

namespace A002821

/-- `A010054(A017473(n))+round(n*sqrt(n))` -/
def P14963582371574724064.Spec : Prop :=
  ∀ n, P14963582371574724064.a n = A002821 n

end A002821

/-! ## A002821.P4315828264333106213

`A057889(A057889(round(n*sqrt(n))))`
-/

namespace A002821.P4315828264333106213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A057889 (SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (n : ℝ))).toNat).toNat

end

end A002821.P4315828264333106213

namespace A002821

/-- `A057889(A057889(round(n*sqrt(n))))` -/
def P4315828264333106213.Spec : Prop :=
  ∀ n, P4315828264333106213.a n = A002821 n

end A002821

/-! ## A002821.P11104223194343137251

`eq[0, A054848(n)]`
-/

namespace A002821.P11104223194343137251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054848 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002821.P11104223194343137251

namespace A002821

/-- `eq[0, A054848(n)]` -/
def P11104223194343137251.Spec : Prop :=
  ∀ n, (P11104223194343137251.a n : ℤ) = A002821 n

end A002821

/-! ## A002821.P3726470359537320852

`record[gcd(n, A054847(n))]`
-/

namespace A002821.P3726470359537320852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A054847 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002821.P3726470359537320852

namespace A002821

/-- `record[gcd(n, A054847(n))]` -/
def P3726470359537320852.Spec : Prop :=
  ∀ n, (P3726470359537320852.a n : ℤ) = A002821 n

end A002821

/-! ## A002821.P14511216220382762709

`A054847(A000093(n))`
-/

namespace A002821.P14511216220382762709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054847 (A000093 n).toNat

end

end A002821.P14511216220382762709

namespace A002821

/-- `A054847(A000093(n))` -/
def P14511216220382762709.Spec : Prop :=
  ∀ n, P14511216220382762709.a n = A002821 n

end A002821

/-! ## A002821.P5257970388834370422

`A054847(A185549(n))`
-/

namespace A002821.P5257970388834370422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054847 (A185549 n).toNat

end

end A002821.P5257970388834370422

namespace A002821

/-- `A054847(A185549(n))` -/
def P5257970388834370422.Spec : Prop :=
  ∀ n, P5257970388834370422.a n = A002821 n

end A002821

/-! ## A002821.P8176485745900539329

`A054847(A077121(n)-1)`
-/

namespace A002821.P8176485745900539329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054847 (A077121 n - 1).toNat

end

end A002821.P8176485745900539329

namespace A002821

/-- `A054847(A077121(n)-1)` -/
def P8176485745900539329.Spec : Prop :=
  ∀ n, P8176485745900539329.a n = A002821 n

end A002821

/-! ## A002821.P8934696147422332038

`A000093(n)+A054848(A000093(n))*A057428(n)`
-/

namespace A002821.P8934696147422332038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n + A054848 (A000093 n).toNat * A057428 n

end

end A002821.P8934696147422332038

namespace A002821

/-- `A000093(n)+A054848(A000093(n))*A057428(n)` -/
def P8934696147422332038.Spec : Prop :=
  ∀ n, P8934696147422332038.a n = A002821 n

end A002821

/-! ## A002821.P9027211199311358495

`A054847(A185597(n+1))`
-/

namespace A002821.P9027211199311358495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054847 (A185597 (n + 1)).toNat

end

end A002821.P9027211199311358495

namespace A002821

/-- `A054847(A185597(n+1))` -/
def P9027211199311358495.Spec : Prop :=
  ∀ n, P9027211199311358495.a n = A002821 n

end A002821

/-! ## A002821.P15924571760415401007

`record[A054847(n)%A054847(n+1)]`
-/

namespace A002821.P15924571760415401007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054847 n) (A054847 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002821.P15924571760415401007

namespace A002821

/-- `record[A054847(n)%A054847(n+1)]` -/
def P15924571760415401007.Spec : Prop :=
  ∀ n, P15924571760415401007.a n = A002821 n

end A002821

/-! ## A002821.P8942316294198456110

`A001281(2*round(n*sqrt(n)))`
-/

namespace A002821.P8942316294198456110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (n : ℝ))).toNat

end

end A002821.P8942316294198456110

namespace A002821

/-- `A001281(2*round(n*sqrt(n)))` -/
def P8942316294198456110.Spec : Prop :=
  ∀ n, P8942316294198456110.a n = A002821 n

end A002821

/-!
# A002822: Numbers m such that 6m-1, 6m+1 are twin primes.

The programs for A002822, the canonical program `A002822.P1649574763564528316` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002822 has offset 1).

The definition of A002822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002822.P1649574763564528316

`A014574(n+2)/6`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A002822

/-- `A014574(n+2)/6` -/
def P1649574763564528316.Spec : Prop :=
  ∀ n, P1649574763564528316.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P16965985987144696763

`A167379(n+1)/2`
-/

namespace A002822.P16965985987144696763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167379 (n + 1) : ℚ) / 2

end

end A002822.P16965985987144696763

namespace A002822

/-- `A167379(n+1)/2` -/
def P16965985987144696763.Spec : Prop :=
  ∀ n, P16965985987144696763.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P16601401986384915809

`A040040(n+2)/3`
-/

namespace A002822.P16601401986384915809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040040 (n + 2) : ℚ) / 3

end

end A002822.P16601401986384915809

namespace A002822

/-- `A040040(n+2)/3` -/
def P16601401986384915809.Spec : Prop :=
  ∀ n, P16601401986384915809.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P8958575440794464165

`floor(A177139(n+1)/2)`
-/

namespace A002822.P8958575440794464165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177139 (n + 1) : ℚ) / 2⌋

end

end A002822.P8958575440794464165

namespace A002822

/-- `floor(A177139(n+1)/2)` -/
def P8958575440794464165.Spec : Prop :=
  ∀ n, P8958575440794464165.a n = A002822 (n + 1)

end A002822

/-! ## A002822.P14020119398160536968

`ceil(A001359(n+2)/6)`
-/

namespace A002822.P14020119398160536968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001359 (n + 2) : ℚ) / 6⌉

end

end A002822.P14020119398160536968

namespace A002822

/-- `ceil(A001359(n+2)/6)` -/
def P14020119398160536968.Spec : Prop :=
  ∀ n, P14020119398160536968.a n = A002822 (n + 1)

end A002822

/-! ## A002822.P16769259373356229662

`A116958(n+1)/3+1`
-/

namespace A002822.P16769259373356229662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116958 (n + 1) : ℚ) / 3 + 1

end

end A002822.P16769259373356229662

namespace A002822

/-- `A116958(n+1)/3+1` -/
def P16769259373356229662.Spec : Prop :=
  ∀ n, P16769259373356229662.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P9789520987904541298

`A160273(n)+a(n-1)` with `a(0)=1`
-/

namespace A002822.P9789520987904541298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160273 n + a (n - 1)

end

end A002822.P9789520987904541298

namespace A002822

/-- `A160273(n)+a(n-1)` -/
def P9789520987904541298.Spec : Prop :=
  ∀ n, P9789520987904541298.a n = A002822 (n + 1)

end A002822

/-! ## A002822.P3739951772667893469

`∑[A008612(A167132(n+1))]`
-/

namespace A002822.P3739951772667893469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A167132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002822.P3739951772667893469

namespace A002822

/-- `∑[A008612(A167132(n+1))]` -/
def P3739951772667893469.Spec : Prop :=
  ∀ n, P3739951772667893469.a n = A002822 (n + 1)

end A002822

/-! ## A002822.P2592913597842522389

`record[A167379(A324346(n))/2]`
-/

namespace A002822.P2592913597842522389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167379 (A324346 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002822.P2592913597842522389

namespace A002822

/-- `record[A167379(A324346(n))/2]` -/
def P2592913597842522389.Spec : Prop :=
  ∀ n, P2592913597842522389.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P15689198355305550920

`A040040(n+2)-A167379(n+1)`
-/

namespace A002822.P15689198355305550920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 2) - A167379 (n + 1)

end

end A002822.P15689198355305550920

namespace A002822

/-- `A040040(n+2)-A167379(n+1)` -/
def P15689198355305550920.Spec : Prop :=
  ∀ n, P15689198355305550920.a n = A002822 (n + 1)

end A002822

/-! ## A002822.P18021083560474964508

`A054735(n+2)/12`
-/

namespace A002822.P18021083560474964508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 2) : ℚ) / 12

end

end A002822.P18021083560474964508

namespace A002822

/-- `A054735(n+2)/12` -/
def P18021083560474964508.Spec : Prop :=
  ∀ n, P18021083560474964508.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P15945984372991768762

`(A243811(n+2)+2)/3`
-/

namespace A002822.P15945984372991768762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243811 (n + 2) + 2 : ℚ) / 3

end

end A002822.P15945984372991768762

namespace A002822

/-- `(A243811(n+2)+2)/3` -/
def P15945984372991768762.Spec : Prop :=
  ∀ n, P15945984372991768762.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P17476596927961285737

`A126249(n+2)/A037074(n+2)`
-/

namespace A002822.P17476596927961285737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126249 (n + 2) : ℚ) / (A037074 (n + 2) : ℚ)

end

end A002822.P17476596927961285737

namespace A002822

/-- `A126249(n+2)/A037074(n+2)` -/
def P17476596927961285737.Spec : Prop :=
  ∀ n, P17476596927961285737.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P7378038618819431472

`A165280(n+1)/(A006512(n+2)+A001359(n+2))`
-/

namespace A002822.P7378038618819431472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165280 (n + 1) : ℚ) / (A006512 (n + 2) + A001359 (n + 2) : ℚ)

end

end A002822.P7378038618819431472

namespace A002822

/-- `A165280(n+1)/(A006512(n+2)+A001359(n+2))` -/
def P7378038618819431472.Spec : Prop :=
  ∀ n, P7378038618819431472.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P12540770970289959425

`A126249(n+2)/(A001359(n+2)*A006512(n+2))`
-/

namespace A002822.P12540770970289959425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126249 (n + 2) : ℚ) / (A001359 (n + 2) * A006512 (n + 2) : ℚ)

end

end A002822.P12540770970289959425

namespace A002822

/-- `A126249(n+2)/(A001359(n+2)*A006512(n+2))` -/
def P12540770970289959425.Spec : Prop :=
  ∀ n, P12540770970289959425.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P3732881758879384032

`A168497(n+3)/3`
-/

namespace A002822.P3732881758879384032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168497 (n + 3) : ℚ) / 3

end

end A002822.P3732881758879384032

namespace A002822

/-- `A168497(n+3)/3` -/
def P3732881758879384032.Spec : Prop :=
  ∀ n, P3732881758879384032.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P17228305668406196821

`record[A167379(A133310(n))/2]`
-/

namespace A002822.P17228305668406196821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167379 (A133310 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002822.P17228305668406196821

namespace A002822

/-- `record[A167379(A133310(n))/2]` -/
def P17228305668406196821.Spec : Prop :=
  ∀ n, P17228305668406196821.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P10623323140848768745

`A126249(n+2)/A134020(n+3)`
-/

namespace A002822.P10623323140848768745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126249 (n + 2) : ℚ) / (A134020 (n + 3) : ℚ)

end

end A002822.P10623323140848768745

namespace A002822

/-- `A126249(n+2)/A134020(n+3)` -/
def P10623323140848768745.Spec : Prop :=
  ∀ n, P10623323140848768745.a n = (A002822 (n + 1) : ℚ)

end A002822

/-! ## A002822.P8210593521472693814

`A014682(A177139(n+1)-1)`
-/

namespace A002822.P8210593521472693814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177139 (n + 1) - 1).toNat

end

end A002822.P8210593521472693814

namespace A002822

/-- `A014682(A177139(n+1)-1)` -/
def P8210593521472693814.Spec : Prop :=
  ∀ n, P8210593521472693814.a n = A002822 (n + 1)

end A002822

/-! ## A002822.P11762429126315655366

`∩[A024899(n+1), A392114(n+1)]`
-/

namespace A002822.P11762429126315655366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002822.P11762429126315655366

namespace A002822

/-- `∩[A024899(n+1), A392114(n+1)]` -/
def P11762429126315655366.Spec : Prop :=
  ∀ n, (P11762429126315655366.a n : ℤ) = A002822 (n + 1)

end A002822

/-!
# A002823: Number of period-n solutions to a certain "universal" equation related to transformations on the unit interval.

The programs for A002823, there is no canonical definition to state claims against.
-/

/-! ## A002823.P5944876447967313807

`A080595(A148512(n))`
-/

namespace A002823.P5944876447967313807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A148512 n).toNat

end

end A002823.P5944876447967313807

/-! ## A002823.P16853825501403467896

`A255554(abs(n-2*a(n-1))+1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A002823.P16853825501403467896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A255554 (|(n : ℤ) - 2 * a (n - 1)| + 1).toNat

end

end A002823.P16853825501403467896

/-! ## A002823.P15181753133929035251

`A137734((A078008(n)-1+n)²)`
-/

namespace A002823.P15181753133929035251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 ((A078008 n - 1 + (n : ℤ)) ^ 2).toNat

end

end A002823.P15181753133929035251

/-! ## A002823.P5522472339430159294

`or(char[2*n], A000194(A150034(n)))`
-/

namespace A002823.P5522472339430159294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000194 (A150034 n).toNat)

end

end A002823.P5522472339430159294

/-! ## A002823.P13546308105013467945

`A137735((Δ[A001045(n)]+n-1)²)`
-/

namespace A002823.P13546308105013467945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ((f1 (n + 1) - f1 n + (n : ℤ) - 1) ^ 2).toNat

end

end A002823.P13546308105013467945

/-!
# A002824: Number of precomplete Post functions.

The programs for A002824, there is no canonical definition to state claims against.
-/

/-! ## A002824.P7259662644011912146

`C(n+2, 2)*A001035(n)`
-/

namespace A002824.P7259662644011912146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A001035 n

end

end A002824.P7259662644011912146

/-! ## A002824.P5959753114312651238

`∑[n+1]*A001035(n)`
-/

namespace A002824.P5959753114312651238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001035 n

end

end A002824.P5959753114312651238

/-! ## A002824.P1722000332408434096

`A001035(n)*A025747(n)`
-/

namespace A002824.P1722000332408434096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001035 n * A025747 n

end

end A002824.P1722000332408434096

/-! ## A002824.P5259018846398910828

`A025747(n)*A245767(∑[n])`
-/

namespace A002824.P5259018846398910828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 n * A245767 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002824.P5259018846398910828

/-! ## A002824.P10048369068661680721

`A001035(n)*A038722(A000124(n))`
-/

namespace A002824.P10048369068661680721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001035 n * A038722 (A000124 n).toNat

end

end A002824.P10048369068661680721

/-!
# A002825: Number of precomplete Post functions.

The programs for A002825, there is no canonical definition to state claims against.
-/

/-! ## A002825.P12072021236549862990

`(n+1)*A210983(n!)`
-/

namespace A002825.P12072021236549862990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A210983 (Nat.factorial n)

end

end A002825.P12072021236549862990

/-!
# A002826: Number of precomplete Post functions of n variables.

The programs for A002826, there is no canonical definition to state claims against.
-/

/-! ## A002826.P3183812630839830015

`A288138(n)+A094053(A144180(n))`
-/

namespace A002826.P3183812630839830015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288138 n + A094053 (A144180 n).toNat

end

end A002826.P3183812630839830015

/-!
# A002828: Least number of squares that add up to n.

The programs for A002828, there is no canonical definition to state claims against.
-/

/-! ## A002828.P8676808577186941264

`1+a(n-A262689(n)²)` with `a(0)=0, a(1)=1`
-/

namespace A002828.P8676808577186941264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A262689 n ^ 2).toNat

end

end A002828.P8676808577186941264

/-! ## A002828.P11481535779728334752

`n-A255131(n)`
-/

namespace A002828.P11481535779728334752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255131 n

end

end A002828.P11481535779728334752

/-! ## A002828.P14446511603931692910

`a(A262678(n))+1` with `a(0)=0`
-/

namespace A002828.P14446511603931692910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A262678 n).toNat + 1

end

end A002828.P14446511603931692910

/-! ## A002828.P4702924406882187419

`A345874(2^a(A262678(n)))` with `a(0)=0`
-/

namespace A002828.P4702924406882187419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A345874 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (a (A262678 n).toNat : ℤ))).toNat

end

end A002828.P4702924406882187419

/-! ## A002828.P13263225802523624047

`Δ[A000290(n)]%(A255131(n)+n+1)`
-/

namespace A002828.P13263225802523624047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A255131 n + (n + 1 : ℤ))

end

end A002828.P13263225802523624047

/-! ## A002828.P14951000898977393719

`A008683(A142932(n+1))*A255131(n)+n`
-/

namespace A002828.P14951000898977393719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A142932 (n + 1)).toNat * A255131 n + (n : ℤ)

end

end A002828.P14951000898977393719

/-!
# A002829: Number of trivalent (or cubic) labeled graphs with 2n nodes.

The programs for A002829, there is no canonical definition to state claims against.
-/

/-! ## A002829.P7694114302153528375

`A007102(n)+A004109(A028310(n))`
-/

namespace A002829.P7694114302153528375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007102 n + A004109 (A028310 n).toNat

end

end A002829.P7694114302153528375

/-! ## A002829.P8760755928202040795

`A007102(A233583(n+1))+A004109(n)`
-/

namespace A002829.P8760755928202040795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007102 (A233583 (n + 1)).toNat + A004109 n

end

end A002829.P8760755928202040795

/-! ## A002829.P7238633609002480463

`A004109(n)+A007102(n)%A005814(n)`
-/

namespace A002829.P7238633609002480463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004109 n + Int.tmod (A007102 n) (A005814 n)

end

end A002829.P7238633609002480463

/-! ## A002829.P11310903538947844629

`A059441(A130883(n)+3)`
-/

namespace A002829.P11310903538947844629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059441 (A130883 n + 3).toNat

end

end A002829.P11310903538947844629

/-! ## A002829.P9677366940891105038

`A059441(A255843(n)-n)`
-/

namespace A002829.P9677366940891105038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059441 (A255843 n - (n : ℤ)).toNat

end

end A002829.P9677366940891105038

/-!
# A002830: Number of 3-edge-colored trivalent graphs with 2n nodes.

The programs for A002830, there is no canonical definition to state claims against.
-/

/-! ## A002830.P3305042491230967814

`A142153(n+1)-A282745(n)`
-/

namespace A002830.P3305042491230967814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142153 (n + 1) - A282745 n

end

end A002830.P3305042491230967814

/-! ## A002830.P7450698055660490075

`A142153(n+1)-Δ[A017910(n)]`
-/

namespace A002830.P7450698055660490075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142153 (n + 1) - (f1 (n + 1) - f1 n)

end

end A002830.P7450698055660490075

/-!
# A002831: Number of 3-edge-colored connected trivalent graphs with 2n nodes.

The programs for A002831, there is no canonical definition to state claims against.
-/

/-! ## A002831.P12433558990790839281

`A036234(A215288(n+1))`
-/

namespace A002831.P12433558990790839281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A215288 (n + 1)).toNat

end

end A002831.P12433558990790839281

/-!
# A002832: Median Euler numbers.

The programs for A002832, there is no canonical definition to state claims against.
-/

/-! ## A002832.P6142459304531290079

`abs(A323833(2*(n+1)²))`
-/

namespace A002832.P6142459304531290079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323833 (2 * (n + 1) ^ 2)|

end

end A002832.P6142459304531290079

/-! ## A002832.P12292111702387704737

`record[A323833(∑[A109613(n)])]`
-/

namespace A002832.P12292111702387704737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323833 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002832.P12292111702387704737

/-! ## A002832.P13554501169256986195

`record[A323833(A000982(n+1))]`
-/

namespace A002832.P13554501169256986195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323833 (A000982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002832.P13554501169256986195

/-! ## A002832.P17201544977615469074

`∑[abs(A323833(A058331(n+1)))]`
-/

namespace A002832.P17201544977615469074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323833 (A058331 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002832.P17201544977615469074

/-! ## A002832.P15490631035385296566

`record[gcd(A323833(n+1), A323833(n))]`
-/

namespace A002832.P15490631035385296566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323833 (n + 1)) (A323833 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002832.P15490631035385296566

/-!
# A002833: Number of threshold functions of n variables.

The programs for A002833, there is no canonical definition to state claims against.
-/

/-! ## A002833.P13858819297005813375

`record[Δ[A174627(floor(2*n/5))]]`
-/

namespace A002833.P13858819297005813375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174627 ⌊2 * ((n : ℚ) / 5)⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002833.P13858819297005813375

/-! ## A002833.P211828174308752006

`Δ[A174627(A235049(n))]`
-/

namespace A002833.P211828174308752006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174627 (A235049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002833.P211828174308752006

/-! ## A002833.P17986936530018431451

`Δ[A174627(A259361(n²))]`
-/

namespace A002833.P17986936530018431451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174627 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002833.P17986936530018431451

/-! ## A002833.P1097010173585007572

`Δ[A174627(log2(A011782(n)))]`
-/

namespace A002833.P1097010173585007572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174627 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002833.P1097010173585007572

/-!
# A002835: Solid partitions of n which are restricted to two planes.

The programs for A002835, there is no canonical definition to state claims against.
-/

/-! ## A002835.P2325031209623074440

`A000006(2^n*C(n, floor(n/2)))`
-/

namespace A002835.P2325031209623074440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (2 ^ n * Nat.choose n ⌊(n : ℚ) / 2⌋.toNat)

end

end A002835.P2325031209623074440

/-! ## A002835.P6312932134064019788

`A096494(2^n*C(n, floor(n/2)))/2`
-/

namespace A002835.P6312932134064019788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096494 (2 ^ n * Nat.choose n ⌊(n : ℚ) / 2⌋.toNat) : ℚ) / 2

end

end A002835.P6312932134064019788

/-! ## A002835.P7065039514779022597

`A000006(A060899(n))`
-/

namespace A002835.P7065039514779022597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A060899 n).toNat

end

end A002835.P7065039514779022597

/-! ## A002835.P4108157791714980433

`A000006(2^n*A001405(n))`
-/

namespace A002835.P4108157791714980433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 ((2 ^ n : ℤ) * A001405 n).toNat

end

end A002835.P4108157791714980433

/-!
# A002836: Let F(x) = 1 + x + 4x^2 + 10x^3 + ... = g.f. for A000293 (solid partitions) and expand (1-x)(1-x^2)(1-x^3)...*F(x) in powers of x.

The programs for A002836, there is no canonical definition to state claims against.
-/

/-! ## A002836.P15922442019891851529

`A161564(∑[n])`
-/

namespace A002836.P15922442019891851529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161564 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002836.P15922442019891851529

/-! ## A002836.P780267389680320310

`A161564(A000217(n))+char[10]`
-/

namespace A002836.P780267389680320310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161564 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002836.P780267389680320310

/-! ## A002836.P17282571634726554421

`A161564(round((2*n+1)²/8))%A111080(n)`
-/

namespace A002836.P17282571634726554421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161564 (SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8)).toNat) (A111080 n)

end

end A002836.P17282571634726554421

/-! ## A002836.P2331481442975132094

`A165656(n)+A161564(A000217(n))`
-/

namespace A002836.P2331481442975132094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 n + A161564 (A000217 n).toNat

end

end A002836.P2331481442975132094

/-! ## A002836.P16600458626445119830

`A319475(n)+A161564(A000217(n))`
-/

namespace A002836.P16600458626445119830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319475 n + A161564 (A000217 n).toNat

end

end A002836.P16600458626445119830

/-!
# A002837: Numbers k such that k^2 - k + 41 is prime.

The programs for A002837, there is no canonical definition to state claims against.
-/

/-! ## A002837.P10683923285192791999

`record[A056561(A331742(n))+and(1, n)]`
-/

namespace A002837.P10683923285192791999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (A331742 n).toNat + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002837.P10683923285192791999

/-! ## A002837.P12815204338131018943

`record[A056561(A032742(n+1))+A000035(n)]`
-/

namespace A002837.P12815204338131018943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (A032742 (n + 1)).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002837.P12815204338131018943

/-! ## A002837.P16100806290530041214

`record[A057427(n)+A056561(A032742(n+1))]`
-/

namespace A002837.P16100806290530041214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A056561 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002837.P16100806290530041214

/-! ## A002837.P5140347631242406174

`record[A056561(A331742(n))+A000035(n)]`
-/

namespace A002837.P5140347631242406174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (A331742 n).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002837.P5140347631242406174

/-! ## A002837.P14015173426138746002

`eq[1, A001222(A202018(n)-A005843(n))]`
-/

namespace A002837.P14015173426138746002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A202018 n - A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002837.P14015173426138746002

/-! ## A002837.P1630995114784107598

`eq[2, A000005(A202018(n)-A005843(n))]`
-/

namespace A002837.P1630995114784107598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A202018 n - A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002837.P1630995114784107598

/-! ## A002837.P18055183086327204513

`eq[1, A102609(n)]`
-/

namespace A002837.P18055183086327204513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002837.P18055183086327204513

/-!
# A002838: Balancing weights on the integer line.

The programs for A002838, there is no canonical definition to state claims against.
-/

/-! ## A002838.P548623975926864254

`A076822(n+2)`
-/

namespace A002838.P548623975926864254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076822 (n + 2)

end

end A002838.P548623975926864254

/-! ## A002838.P10478642136204050397

`record[A277218(xor(1, n))]`
-/

namespace A002838.P10478642136204050397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002838.P10478642136204050397

/-! ## A002838.P17059310939813231317

`A277218(2*n+3)`
-/

namespace A002838.P17059310939813231317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 (2 * n + 3)

end

end A002838.P17059310939813231317

/-! ## A002838.P14084604994380743457

`record[A275213(n)]`
-/

namespace A002838.P14084604994380743457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002838.P14084604994380743457

/-! ## A002838.P7689439018434104055

`A275213(2*n+3)`
-/

namespace A002838.P7689439018434104055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 (2 * n + 3)

end

end A002838.P7689439018434104055

/-!
# A002839: Number of simple perfect squared rectangles of order n up to symmetry.

The programs for A002839, there is no canonical definition to state claims against.
-/

/-! ## A002839.P7170707673360042512

`A006983(n+1)+A219766(n+1)`
-/

namespace A002839.P7170707673360042512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006983 (n + 1) + A219766 (n + 1)

end

end A002839.P7170707673360042512

/-! ## A002839.P3195676540803445248

`A178688(n+1)+A219766(n+1)-1`
-/

namespace A002839.P3195676540803445248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178688 (n + 1) + (A219766 (n + 1) - 1)

end

end A002839.P3195676540803445248

/-! ## A002839.P3329263685215831470

`A219766(n+1)+A006983(A031285(n))`
-/

namespace A002839.P3329263685215831470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219766 (n + 1) + A006983 (A031285 n).toNat

end

end A002839.P3329263685215831470

/-! ## A002839.P6052345919979454837

`A219766(n+1)+A023443(A178688(n+1))`
-/

namespace A002839.P6052345919979454837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219766 (n + 1) + A023443 (A178688 (n + 1)).toNat

end

end A002839.P6052345919979454837

/-! ## A002839.P1808014882876552266

`A219766(A031285(n))+A178688(n+1)-1`
-/

namespace A002839.P1808014882876552266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219766 (A031285 n).toNat + (A178688 (n + 1) - 1)

end

end A002839.P1808014882876552266

/-!
# A002841: Number of 3-connected self-dual planar graphs with 2n edges.

The programs for A002841, there is no canonical definition to state claims against.
-/

/-! ## A002841.P3299508987350965370

`A110656(A202143(n)+A000096(n))`
-/

namespace A002841.P3299508987350965370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A202143 n + A000096 n).toNat

end

end A002841.P3299508987350965370

/-! ## A002841.P1645460928952559122

`A258797(n)-A071325(A279570(n))`
-/

namespace A002841.P1645460928952559122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258797 n - A071325 (A279570 n).toNat

end

end A002841.P1645460928952559122

/-! ## A002841.P18397717040785701821

`A110656(A202143(n)+∑[A291769(n)])`
-/

namespace A002841.P18397717040785701821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A202143 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002841.P18397717040785701821

/-! ## A002841.P6798325254224382563

`A110656(A202143(n)+∑[A348553(n)])`
-/

namespace A002841.P6798325254224382563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A202143 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002841.P6798325254224382563

/-!
# A002842: Number of strongly asymmetric sequences of length n.

The programs for A002842, there is no canonical definition to state claims against.
-/

/-! ## A002842.P15600100237007909764

`∑[4*A000005(A010790(n))]`
-/

namespace A002842.P15600100237007909764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000005 (A010790 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002842.P15600100237007909764

/-! ## A002842.P15433363851799055754

`A008574(∑[A000005((n+1)*n!²)])`
-/

namespace A002842.P15433363851799055754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) * Nat.factorial n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002842.P15433363851799055754

/-!
# A002843: Number of partitions of n into parts 1/2, 3/4, 7/8, 15/16, etc.

The programs for A002843, there is no canonical definition to state claims against.
-/

/-! ## A002843.P6897061289168955924

`A047913(A051890(n))`
-/

namespace A002843.P6897061289168955924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A051890 n).toNat

end

end A002843.P6897061289168955924

/-! ## A002843.P2358291092927324918

`A047913(A354595(n)+1)`
-/

namespace A002843.P2358291092927324918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A354595 n + 1).toNat

end

end A002843.P2358291092927324918

/-! ## A002843.P4816801239168656280

`A047913(2*n²+1)`
-/

namespace A002843.P4816801239168656280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (2 * n ^ 2 + 1)

end

end A002843.P4816801239168656280

/-! ## A002843.P5452546291008022173

`A049286((n+1)²+n²)`
-/

namespace A002843.P5452546291008022173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 ((n + 1) ^ 2 + n ^ 2)

end

end A002843.P5452546291008022173

/-! ## A002843.P560848196236547816

`lcm(A020985(n), A049286(A001844(n)))`
-/

namespace A002843.P560848196236547816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A049286 (A001844 n).toNat)

end

end A002843.P560848196236547816

/-! ## A002843.P3852306758723157333

`or(A000007(n), A049286(A001844(n)))`
-/

namespace A002843.P3852306758723157333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A049286 (A001844 n).toNat)

end

end A002843.P3852306758723157333

/-!
# A002844: Number of non-isentropic binary rooted trees with n nodes.

The programs for A002844, there is no canonical definition to state claims against.
-/

/-! ## A002844.P13600823696364164703

`A100196(A227846(n)+A060742(n))`
-/

namespace A002844.P13600823696364164703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A227846 n + A060742 n).toNat

end

end A002844.P13600823696364164703

/-! ## A002844.P2369742500447425803

`A100196(A227846(n)+A002572(n+1))`
-/

namespace A002844.P2369742500447425803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A227846 n + A002572 (n + 1)).toNat

end

end A002844.P2369742500447425803

/-! ## A002844.P3665589570458383632

`A100196(A227846(n)+A002573(n+1))`
-/

namespace A002844.P3665589570458383632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A227846 n + A002573 (n + 1)).toNat

end

end A002844.P3665589570458383632

/-! ## A002844.P3605856843119373677

`A277996(n+1)-A057498(A222262(n+1))`
-/

namespace A002844.P3605856843119373677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277996 (n + 1) - A057498 (A222262 (n + 1)).toNat

end

end A002844.P3605856843119373677

/-!
# A002845: Number of distinct values taken by 2^2^...^2 (with n 2's and parentheses inserted in all possible ways).

The programs for A002845, there is no canonical definition to state claims against.
-/

/-! ## A002845.P4124046731725425516

`A008651(A049611(n))+A000045(n)`
-/

namespace A002845.P4124046731725425516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A049611 n).toNat + A000045 n

end

end A002845.P4124046731725425516

/-! ## A002845.P4629608428701372063

`A265370(A148303(n)+3)`
-/

namespace A002845.P4629608428701372063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A148303 n + 3).toNat

end

end A002845.P4629608428701372063

/-! ## A002845.P9265833629201803706

`Δ[A054846(A339295(n+2))]`
-/

namespace A002845.P9265833629201803706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A339295 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002845.P9265833629201803706

/-! ## A002845.P17715820315726958252

`A157905(A055998(n))+char[9]`
-/

namespace A002845.P17715820315726958252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157905 (A055998 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002845.P17715820315726958252

/-! ## A002845.P9271143672125481921

`A026819(floor(sqrt(A210443(n+1))))`
-/

namespace A002845.P9271143672125481921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.sqrt (A210443 (n + 1))).toNat

end

end A002845.P9271143672125481921

/-!
# A002846: Number of ways of transforming a set of n indistinguishable objects into n singletons via a sequence of n-1 refinements.

The programs for A002846, there is no canonical definition to state claims against.
-/

/-! ## A002846.P7165096997527722556

`A300384(p?[xor(1, n)])`
-/

namespace A002846.P7165096997527722556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300384 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A002846.P7165096997527722556

/-! ## A002846.P6783912663200930108

`A300384(A000040(n+1))`
-/

namespace A002846.P6783912663200930108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300384 (A000040 (n + 1)).toNat

end

end A002846.P6783912663200930108

/-! ## A002846.P8158576356531123717

`A300384(A030291(n+1))`
-/

namespace A002846.P8158576356531123717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300384 (A030291 (n + 1)).toNat

end

end A002846.P8158576356531123717

/-! ## A002846.P10061168925734679804

`A300384(A030475(n+1))`
-/

namespace A002846.P10061168925734679804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300384 (A030475 (n + 1)).toNat

end

end A002846.P10061168925734679804

/-! ## A002846.P5584745027833316637

`A300384(A038616(n+1))`
-/

namespace A002846.P5584745027833316637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300384 (A038616 (n + 1)).toNat

end

end A002846.P5584745027833316637

/-!
# A002847: Number of ways of getting a straight flush, 4 of a kind, full house, flush, straight, 3 of a kind, 2 pair, a pair, no pair in poker.

The programs for A002847, there is no canonical definition to state claims against.
-/

/-! ## A002847.P1378157560012820894

`A216076(10-A048379(n))`
-/

namespace A002847.P1378157560012820894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216076 (10 - A048379 n).toNat

end

end A002847.P1378157560012820894

/-!
# A002850: Number of decompositions of 2n into sum of 2 lucky numbers.

The programs for A002850, there is no canonical definition to state claims against.
-/

/-! ## A002850.P4692114096003045913

`ceil(A068309(n+1)/2)`
-/

namespace A002850.P4692114096003045913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068309 (n + 1) : ℚ) / 2⌉

end

end A002850.P4692114096003045913

/-! ## A002850.P7571726307391586705

`round(A068309(n^(char[1]+1)+1)/2)`
-/

namespace A002850.P7571726307391586705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A068309 (n ^ ((if ∃ j, f1 j = n then 1 else 0) + 1) + 1) : ℚ) / 2)

end

end A002850.P7571726307391586705

/-! ## A002850.P1519310290431289370

`A063524(3*n)+round(A068309(n+1)/2)`
-/

namespace A002850.P1519310290431289370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (3 * n) + SequenceMachineLib.roundAway ((A068309 (n + 1) : ℚ) / 2)

end

end A002850.P1519310290431289370

/-! ## A002850.P4502342979877699656

`round(A068309(n+1)/2)/A000005(gcd(n, n+1))`
-/

namespace A002850.P4502342979877699656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A068309 (n + 1) : ℚ) / 2) : ℚ) / (A000005 (Nat.gcd n (n + 1)) : ℚ)

end

end A002850.P4502342979877699656

/-! ## A002850.P3788449006232034095

`A122841(3*n+2)+round(A068309(n+1)/2)`
-/

namespace A002850.P3788449006232034095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (3 * n + 2) + SequenceMachineLib.roundAway ((A068309 (n + 1) : ℚ) / 2)

end

end A002850.P3788449006232034095

/-!
# A002851: Number of unlabeled trivalent (or cubic) connected simple graphs with 2n nodes.

The programs for A002851, there is no canonical definition to state claims against.
-/

/-! ## A002851.P10359920779812803589

`A321304(n²)`
-/

namespace A002851.P10359920779812803589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321304 (n ^ 2)

end

end A002851.P10359920779812803589

/-! ## A002851.P17813591786861879134

`A005638(n)-A165653(n)`
-/

namespace A002851.P17813591786861879134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - A165653 n

end

end A002851.P17813591786861879134

/-! ## A002851.P15984962888534602577

`A005638(n)-(A185234(n)+A185033(n))`
-/

namespace A002851.P15984962888534602577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - (A185234 n + A185033 n)

end

end A002851.P15984962888534602577

/-! ## A002851.P16302999659331831830

`A005638(n)-(A185033(n)-(A011738(n)-A185234(n)))`
-/

namespace A002851.P16302999659331831830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - (A185033 n - (A011738 n - A185234 n))

end

end A002851.P16302999659331831830

/-! ## A002851.P9081617000753591249

`A014371(n)+A006923(n)`
-/

namespace A002851.P9081617000753591249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014371 n + A006923 n

end

end A002851.P9081617000753591249

/-!
# A002854: Number of unlabeled Euler graphs with n nodes; number of unlabeled two-graphs with n nodes; number of unlabeled switching classes of graphs with n nodes; number of switching classes of unlabeled signed complete graphs on n nodes; number of Seidel matrices of order n.

The programs for A002854, there is no canonical definition to state claims against.
-/

/-! ## A002854.P11628902054911296611

`A189771(n+1)+A133736(n+1)`
-/

namespace A002854.P11628902054911296611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189771 (n + 1) + A133736 (n + 1)

end

end A002854.P11628902054911296611

/-! ## A002854.P15749140613179682800

`A189771(n+1)+∑[A003049(n+1)]`
-/

namespace A002854.P15749140613179682800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189771 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002854.P15749140613179682800

/-! ## A002854.P687125277931977049

`A189771(n+1)+∑[A001349(n+1)-A158007(n+1)]`
-/

namespace A002854.P687125277931977049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A158007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189771 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002854.P687125277931977049

/-! ## A002854.P17076132320200621047

`A133736(n+1)+A003984(floor(n!/(9*n+6)))`
-/

namespace A002854.P17076132320200621047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133736 (n + 1) + A003984 ⌊(Nat.factorial n : ℚ) / (9 * n + 6 : ℚ)⌋.toNat

end

end A002854.P17076132320200621047

/-! ## A002854.P2235283873709152600

`A003984(floor(n!/(9*n+6)))+∑[A003049(n+1)]`
-/

namespace A002854.P2235283873709152600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 ⌊(Nat.factorial n : ℚ) / (9 * n + 6 : ℚ)⌋.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002854.P2235283873709152600

/-!
# A002855: {m + n: m in A002382, n in A002381}.

The programs for A002855, there is no canonical definition to state claims against.
-/

/-! ## A002855.P4852078389787136392

`eq[A125203(3*n+1), A282230(A038500(n+1))]`
-/

namespace A002855.P4852078389787136392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (A038500 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002855.P4852078389787136392

/-! ## A002855.P11378838096998410974

`lt[A165031(A014574(2*n+5)), A031358(3*n+1)]`
-/

namespace A002855.P11378838096998410974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165031 (A014574 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031358 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A002855.P11378838096998410974

/-! ## A002855.P666700777734632324

`eq[A000038(A288946(n+1)), A125203(3*n+1)]`
-/

namespace A002855.P666700777734632324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A288946 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002855.P666700777734632324

/-! ## A002855.P1831958350346770334

`eq[A063667(A242539(n+1)), A125203(3*n+1)]`
-/

namespace A002855.P1831958350346770334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (A242539 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002855.P1831958350346770334

/-! ## A002855.P6175237493736530725

`eq[A000038(A179478(n)), A125203(3*n+1)]`
-/

namespace A002855.P6175237493736530725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A179478 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002855.P6175237493736530725

/-! ## A002855.P12930015049311764485

`lt[A059841(A195152(n)), A031358(3*n+1)]`
-/

namespace A002855.P12930015049311764485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A195152 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031358 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A002855.P12930015049311764485

/-! ## A002855.P12058165276716880233

`eq[A000007(A034972(n+1)), A125203(3*n+1)]`
-/

namespace A002855.P12058165276716880233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A034972 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002855.P12058165276716880233

/-! ## A002855.P6979117606191229597

`eq[A003982(A327514(n+1)), A125203(3*n+1)]`
-/

namespace A002855.P6979117606191229597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A327514 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002855.P6979117606191229597

/-!
# A002856: Number of polyhedra with n nodes and n faces.

The programs for A002856, there is no canonical definition to state claims against.
-/

/-! ## A002856.P14988552112728842907

`A212438(2*(∑[n]+2))`
-/

namespace A002856.P14988552112728842907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212438 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A002856.P14988552112728842907

/-! ## A002856.P4723354159827678853

`A049337(∑[A167614(n+1)]+5)`
-/

namespace A002856.P4723354159827678853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049337 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A002856.P4723354159827678853

/-! ## A002856.P16829611297368775846

`A058788(A008615((2*n+1)²)+6)`
-/

namespace A002856.P16829611297368775846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058788 (A008615 ((2 * n + 1) ^ 2) + 6).toNat

end

end A002856.P16829611297368775846

/-! ## A002856.P4191080700982871669

`A058787(A006578(n)+4)`
-/

namespace A002856.P4191080700982871669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058787 (A006578 n + 4).toNat

end

end A002856.P4191080700982871669

/-!
# A002857: Number of Post functions of n variables.

The programs for A002857, there is no canonical definition to state claims against.
-/

/-! ## A002857.P14679057325885407099

`A000612(n+1)/2`
-/

namespace A002857.P14679057325885407099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000612 (n + 1) : ℚ) / 2

end

end A002857.P14679057325885407099

/-! ## A002857.P15000636624479494803

`A003180(n+1)/4`
-/

namespace A002857.P15000636624479494803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003180 (n + 1) : ℚ) / 4

end

end A002857.P15000636624479494803

/-! ## A002857.P6534676494009714321

`A055621(n+1)-A055152(n+1)`
-/

namespace A002857.P6534676494009714321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055621 (n + 1) - A055152 (n + 1)

end

end A002857.P6534676494009714321

/-!
# A002858: Ulam numbers: a(1) = 1; a(2) = 2; for n>2, a(n) = least number > a(n-1) which is a unique sum of two distinct earlier terms.

The programs for A002858, there is no canonical definition to state claims against.
-/

/-! ## A002858.P18228539579999733783

`A048951(n+1)/2`
-/

namespace A002858.P18228539579999733783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048951 (n + 1) : ℚ) / 2

end

end A002858.P18228539579999733783

/-! ## A002858.P6945882114844364995

`A072832(n)+a(n-1)` with `a(0)=1`
-/

namespace A002858.P6945882114844364995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072832 n + a (n - 1)

end

end A002858.P6945882114844364995

/-! ## A002858.P11707568202926278348

`∑[A072832(A028310(n))]`
-/

namespace A002858.P11707568202926278348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002858.P11707568202926278348

/-! ## A002858.P417935652094670796

`∪[A382797(n+1), A382798(n+1)]`
-/

namespace A002858.P417935652094670796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002858.P417935652094670796

/-! ## A002858.P9461916563848351889

`∑[A072832(n+1)]+1-A072832(n+1)`
-/

namespace A002858.P9461916563848351889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A072832 (n + 1))

end

end A002858.P9461916563848351889

/-! ## A002858.P15940629435764377747

`Δ[A078663(n+1)]-A072832(n+1)`
-/

namespace A002858.P15940629435764377747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A072832 (n + 1)

end

end A002858.P15940629435764377747

/-! ## A002858.P1471239101469763090

`A078663(n+2)-(A078663(n+1)+A072832(n+1))`
-/

namespace A002858.P1471239101469763090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078663 (n + 2) - (A078663 (n + 1) + A072832 (n + 1))

end

end A002858.P1471239101469763090

/-! ## A002858.P14663704272313147663

`∑[A072832(A065033(2*n))]`
-/

namespace A002858.P14663704272313147663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002858.P14663704272313147663

/-! ## A002858.P13658680537974958492

`∑[A072832(A233583(n+1))]`
-/

namespace A002858.P13658680537974958492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002858.P13658680537974958492

/-! ## A002858.P8004749242071676530

`A001281(A048951(n+1))`
-/

namespace A002858.P8004749242071676530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048951 (n + 1)).toNat

end

end A002858.P8004749242071676530

/-! ## A002858.P9981869780539250679

`A065033(A048951(n+1)-1)`
-/

namespace A002858.P9981869780539250679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A048951 (n + 1) - 1).toNat

end

end A002858.P9981869780539250679

/-! ## A002858.P3268169716918170123

`A110654(A048951(n+1)-1)`
-/

namespace A002858.P3268169716918170123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A048951 (n + 1) - 1).toNat

end

end A002858.P3268169716918170123

/-! ## A002858.P3924421486060273904

`A115384(A048951(n+1)-1)`
-/

namespace A002858.P3924421486060273904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A048951 (n + 1) - 1).toNat

end

end A002858.P3924421486060273904

/-! ## A002858.P12717976351184647991

`A110654(∩[2*n, A048951(n+1)])`
-/

namespace A002858.P12717976351184647991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048951 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A002858.P12717976351184647991

/-! ## A002858.P16283679738067682634

`A002265(2*A048951(n+1))`
-/

namespace A002858.P16283679738067682634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A048951 (n + 1)).toNat

end

end A002858.P16283679738067682634

/-!
# A002860: Number of Latin squares of order n; or labeled quasigroups.

The programs for A002860, there is no canonical definition to state claims against.
-/

/-! ## A002860.P14164855317143925553

`(n+1)!*A000479(n+1)`
-/

namespace A002860.P14164855317143925553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A000479 (n + 1)

end

end A002860.P14164855317143925553

/-! ## A002860.P4780609586677933849

`(n+1)!*n!*A000315(n+1)`
-/

namespace A002860.P4780609586677933849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) * Nat.factorial n : ℤ) * A000315 (n + 1)

end

end A002860.P4780609586677933849

/-! ## A002860.P8300854132582225345

`A344693(n+1)/∏[n+1]`
-/

namespace A002860.P8300854132582225345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344693 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A002860.P8300854132582225345

/-! ## A002860.P6026114399932454281

`A000142(n+1)*A000479(n+1)`
-/

namespace A002860.P6026114399932454281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A000479 (n + 1)

end

end A002860.P6026114399932454281

/-! ## A002860.P1631956921669362186

`sqrt(A343697(n+1))`
-/

namespace A002860.P1631956921669362186
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A343697 (n + 1) : ℝ)

end

end A002860.P1631956921669362186

/-!
# A002861: Number of connected functions (or mapping patterns) on n unlabeled points, or number of rings and branches with n edges.

The programs for A002861, there is no canonical definition to state claims against.
-/

/-! ## A002861.P9778424746942682371

`A002862(n+1)+∑[A174145(n)]`
-/

namespace A002861.P9778424746942682371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002862 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002861.P9778424746942682371

/-! ## A002861.P10564786181020581166

`A124682(n+1)-∑[A174145(n)]`
-/

namespace A002861.P10564786181020581166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124682 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002861.P10564786181020581166

/-! ## A002861.P16734537600722287997

`A002862(n+1)+A000081(n+1)`
-/

namespace A002861.P16734537600722287997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002862 (n + 1) + A000081 (n + 1)

end

end A002861.P16734537600722287997

/-! ## A002861.P8493269165916666381

`A124682(n+1)-A000081(n+1)`
-/

namespace A002861.P8493269165916666381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124682 (n + 1) - A000081 (n + 1)

end

end A002861.P8493269165916666381

/-! ## A002861.P13197470209049000820

`A038001(2*n+1)+A002862(n+1)`
-/

namespace A002861.P13197470209049000820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (2 * n + 1) + A002862 (n + 1)

end

end A002861.P13197470209049000820

/-! ## A002861.P2308274134511784770

`A001372(n+1)-A127912(n)`
-/

namespace A002861.P2308274134511784770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 (n + 1) - A127912 n

end

end A002861.P2308274134511784770

/-! ## A002861.P4627078323212005364

`A033185(A000124(n))+A002862(n+1)`
-/

namespace A002861.P4627078323212005364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A000124 n).toNat + A002862 (n + 1)

end

end A002861.P4627078323212005364

/-! ## A002861.P7956364217649409150

`A106234(A133263(n+1))+A002862(n+1)`
-/

namespace A002861.P7956364217649409150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A133263 (n + 1)).toNat + A002862 (n + 1)

end

end A002861.P7956364217649409150

/-! ## A002861.P11897751591655364718

`A127136(∑[n]+1)`
-/

namespace A002861.P11897751591655364718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127136 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002861.P11897751591655364718

/-!
# A002862: Number of nonisomorphic connected functions with no fixed points, or proper rings with n edges.

The programs for A002862, there is no canonical definition to state claims against.
-/

/-! ## A002862.P3583994215892316812

`A002861(n+1)-∑[A174145(n)]`
-/

namespace A002862.P3583994215892316812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002862.P3583994215892316812

/-! ## A002862.P14129998630129739879

`A002861(n+1)-A000081(n+1)`
-/

namespace A002862.P14129998630129739879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1) - A000081 (n + 1)

end

end A002862.P14129998630129739879

/-! ## A002862.P3946350377844879269

`A002861(n+1)-A038001(Δ[n²])`
-/

namespace A002862.P3946350377844879269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1) - A038001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002862.P3946350377844879269

/-! ## A002862.P296917741212963713

`A124682(n+1)-A000081(n+1)-∑[A174145(n)]`
-/

namespace A002862.P296917741212963713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124682 (n + 1) - A000081 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002862.P296917741212963713

/-! ## A002862.P2259879338940300168

`A002861(n+1)+A002861(n+1)-A124682(n+1)`
-/

namespace A002862.P2259879338940300168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1) + (A002861 (n + 1) - A124682 (n + 1))

end

end A002862.P2259879338940300168

/-! ## A002862.P8521328240180209989

`2*A002861(n+1)-A124682(n+1)`
-/

namespace A002862.P8521328240180209989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002861 (n + 1) - A124682 (n + 1)

end

end A002862.P8521328240180209989

/-! ## A002862.P3760038830217298681

`A001372(n+1)-(A127912(n)+A000081(n+1))`
-/

namespace A002862.P3760038830217298681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 (n + 1) - (A127912 n + A000081 (n + 1))

end

end A002862.P3760038830217298681

/-! ## A002862.P12411102322369232450

`A002861(n+1)-A033185(∑[n]+1)`
-/

namespace A002862.P12411102322369232450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1) - A033185 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002862.P12411102322369232450

/-! ## A002862.P2317220124740152889

`A002861(n+1)-A106236(A000124(n))`
-/

namespace A002862.P2317220124740152889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1) - A106236 (A000124 n).toNat

end

end A002862.P2317220124740152889

/-! ## A002862.P7267387303012151204

`A002861(n+1)-A339428(∑[n]+1)`
-/

namespace A002862.P7267387303012151204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1) - A339428 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002862.P7267387303012151204

/-!
# A002863: Number of prime knots with n crossings.

The programs for A002863, there is no canonical definition to state claims against.
-/

/-! ## A002863.P10608983020504781187

`A051766(n+1)+A051769(n+1)+A051767(n+1)+A051768(n+1)+A052400(n+1)`
-/

namespace A002863.P10608983020504781187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051766 (n + 1) + A051769 (n + 1) + A051767 (n + 1) + A051768 (n + 1) + A052400 (n + 1)

end

end A002863.P10608983020504781187

/-! ## A002863.P9167321568950901175

`A051763(n+1)+A002864(n+1)`
-/

namespace A002863.P9167321568950901175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051763 (n + 1) + A002864 (n + 1)

end

end A002863.P9167321568950901175

/-! ## A002863.P17250490373324841168

`A052408(n+1)+A052407(n+1)`
-/

namespace A002863.P17250490373324841168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052408 (n + 1) + A052407 (n + 1)

end

end A002863.P17250490373324841168

/-! ## A002863.P4389180200422296808

`A051764(n+1)+A052408(n+1)+A051765(n+1)`
-/

namespace A002863.P4389180200422296808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (n + 1) + (A052408 (n + 1) + A051765 (n + 1))

end

end A002863.P4389180200422296808

/-! ## A002863.P8512085363082520211

`Δ[A116584(round(acot(n)+n))]`
-/

namespace A002863.P8512085363082520211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116584 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002863.P8512085363082520211

/-!
# A002864: Number of alternating prime knots with n crossings.

The programs for A002864, there is no canonical definition to state claims against.
-/

/-! ## A002864.P12335625600025320417

`A002863(n+1)-A051763(n+1)`
-/

namespace A002864.P12335625600025320417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A051763 (n + 1)

end

end A002864.P12335625600025320417

/-! ## A002864.P9766620644621519715

`A052407(n+1)+A052408(n+1)-A051763(n+1)`
-/

namespace A002864.P9766620644621519715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052407 (n + 1) + (A052408 (n + 1) - A051763 (n + 1))

end

end A002864.P9766620644621519715

/-! ## A002864.P2915153408354055474

`A051764(n+1)+A052408(n+1)+A051765(n+1)-A051763(n+1)`
-/

namespace A002864.P2915153408354055474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (n + 1) + (A052408 (n + 1) + A051765 (n + 1)) - A051763 (n + 1)

end

end A002864.P2915153408354055474

/-! ## A002864.P11767874537459564736

`Δ[A116584(abs(1-n)+1)]-A051763(n+1)`
-/

namespace A002864.P11767874537459564736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116584 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A051763 (n + 1)

end

end A002864.P11767874537459564736

/-! ## A002864.P8479784734071453310

`A052402(n+1)+A052403(n+1)-A051763(n+1)`
-/

namespace A002864.P8479784734071453310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052402 (n + 1) + (A052403 (n + 1) - A051763 (n + 1))

end

end A002864.P8479784734071453310

/-!
# A002865: Number of partitions of n that do not contain 1 as a part.

The programs for A002865, there is no canonical definition to state claims against.
-/

/-! ## A002865.P8222406929825643689

`A085811(n+3)`
-/

namespace A002865.P8222406929825643689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

end

end A002865.P8222406929825643689

/-! ## A002865.P9758742479775307708

`A008483(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A002865.P9758742479775307708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008483 n + a (n - 2)

end

end A002865.P9758742479775307708

/-! ## A002865.P1802435583915801335

`A181531(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A002865.P1802435583915801335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A181531 n + a (n - 3)

end

end A002865.P1802435583915801335

/-! ## A002865.P6615802252631909986

`∑[A026796(n+3)-a(n-1)]` with `a(0)=1`
-/

namespace A002865.P6615802252631909986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A026796 (n + 3) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002865.P6615802252631909986

/-! ## A002865.P18364078849835792034

`A167928(n)+A032741(n)`
-/

namespace A002865.P18364078849835792034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167928 n + A032741 n

end

end A002865.P18364078849835792034

/-! ## A002865.P16652512509909361186

`A232697(n)+A057428(n)`
-/

namespace A002865.P16652512509909361186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n + A057428 n

end

end A002865.P16652512509909361186

/-! ## A002865.P17746410786298525988

`A232697(n)-A057427(n)`
-/

namespace A002865.P17746410786298525988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n - A057427 n

end

end A002865.P17746410786298525988

/-! ## A002865.P3636888497336548580

`A232697(n)-A320001(A303809(n+1))`
-/

namespace A002865.P3636888497336548580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n - A320001 (A303809 (n + 1)).toNat

end

end A002865.P3636888497336548580

/-! ## A002865.P9295462505686376217

`A187219(n+2)-A008483(n+2)`
-/

namespace A002865.P9295462505686376217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 2) - A008483 (n + 2)

end

end A002865.P9295462505686376217

/-! ## A002865.P11053821859416560072

`A027336(n)-a(n-1)` with `a(0)=1`
-/

namespace A002865.P11053821859416560072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027336 n - a (n - 1)

end

end A002865.P11053821859416560072

/-! ## A002865.P7830645888841246040

`A008483(n)+A027337(n)-A027336(n)`
-/

namespace A002865.P7830645888841246040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n + (A027337 n - A027336 n)

end

end A002865.P7830645888841246040

/-! ## A002865.P6119850413208530799

`A027337(n+2)-A027336(n+2)`
-/

namespace A002865.P6119850413208530799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 2) - A027336 (n + 2)

end

end A002865.P6119850413208530799

/-! ## A002865.P702350757600450069

`A027336(n+1)+A027343(n)-A027344(n+1)`
-/

namespace A002865.P702350757600450069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) + (A027343 n - A027344 (n + 1))

end

end A002865.P702350757600450069

/-! ## A002865.P12371044936101730465

`A087787(n)-A182712(n)`
-/

namespace A002865.P12371044936101730465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n - A182712 n

end

end A002865.P12371044936101730465

/-! ## A002865.P18173595548716662071

`A182712(n+2)-A182712(n)`
-/

namespace A002865.P18173595548716662071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 2) - A182712 n

end

end A002865.P18173595548716662071

/-! ## A002865.P465377324323610584

`Δ[A182712(n+1)+A182712(n)]`
-/

namespace A002865.P465377324323610584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1) + A182712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002865.P465377324323610584

/-! ## A002865.P18046294387283323606

`A000041(n)-(a(n-1)+A000041(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A002865.P18046294387283323606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A000041 n - (a (n - 1) + A000041 (n - 2))

end

end A002865.P18046294387283323606

/-! ## A002865.P2876038667660726799

`A000041(n+1)-A229816(n+1)`
-/

namespace A002865.P2876038667660726799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A229816 (n + 1)

end

end A002865.P2876038667660726799

/-! ## A002865.P17289818373472546688

`A139582(n)-A084376(n)`
-/

namespace A002865.P17289818373472546688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n - A084376 n

end

end A002865.P17289818373472546688

/-! ## A002865.P13873732887961970250

`A027194(n+2)+A027188(n+2)`
-/

namespace A002865.P13873732887961970250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027194 (n + 2) + A027188 (n + 2)

end

end A002865.P13873732887961970250

/-!
# A002866: a(0) = 1; for n > 0, a(n) = 2^(n-1)*n!.

The programs for A002866, the canonical program `A002866.P4480681267118433235` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002866 has offset 0).

The definition of A002866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002866.P4480681267118433235

`2*n*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002866

/-- `2*n*a(n-1)` -/
def P4480681267118433235.Spec : Prop :=
  ∀ n, (P4480681267118433235.a n : ℤ) = A002866 n

theorem P4480681267118433235.correct : P4480681267118433235.Spec := by
  intro n
  simp only [A002866]

end A002866

/-! ## A002866.P8089252641590345018

`n!*A011782(n)`
-/

namespace A002866.P8089252641590345018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A011782 n

end

end A002866.P8089252641590345018

namespace A002866

/-- `n!*A011782(n)` -/
def P8089252641590345018.Spec : Prop :=
  ∀ n, P8089252641590345018.a n = A002866 n

end A002866

/-! ## A002866.P7775216701618265632

`∏[(2*n)^floor(atan(n))]`
-/

namespace A002866.P7775216701618265632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002866.P7775216701618265632

namespace A002866

/-- `∏[(2*n)^floor(atan(n))]` -/
def P7775216701618265632.Spec : Prop :=
  ∀ n, P7775216701618265632.a n = (A002866 n : ℚ)

end A002866

/-! ## A002866.P4691120828053501106

`∏[C(2*n, floor(atan(n)))]`
-/

namespace A002866.P4691120828053501106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) ⌊Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002866.P4691120828053501106

namespace A002866

/-- `∏[C(2*n, floor(atan(n)))]` -/
def P4691120828053501106.Spec : Prop :=
  ∀ n, (P4691120828053501106.a n : ℤ) = A002866 n

end A002866

/-! ## A002866.P2693984396305649116

`ceil(2^(n-1)*n!)`
-/

namespace A002866.P2693984396305649116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ)⌉

end

end A002866.P2693984396305649116

namespace A002866

/-- `ceil(2^(n-1)*n!)` -/
def P2693984396305649116.Spec : Prop :=
  ∀ n, P2693984396305649116.a n = A002866 n

end A002866

/-! ## A002866.P16533045724525399565

`round(2^(n-1)*n!)`
-/

namespace A002866.P16533045724525399565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ))

end

end A002866.P16533045724525399565

namespace A002866

/-- `round(2^(n-1)*n!)` -/
def P16533045724525399565.Spec : Prop :=
  ∀ n, P16533045724525399565.a n = A002866 n

end A002866

/-! ## A002866.P13716376891615750025

`ceil(2^n*n!/2)`
-/

namespace A002866.P13716376891615750025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n * Nat.factorial n : ℚ) / 2⌉

end

end A002866.P13716376891615750025

namespace A002866

/-- `ceil(2^n*n!/2)` -/
def P13716376891615750025.Spec : Prop :=
  ∀ n, P13716376891615750025.a n = A002866 n

end A002866

/-! ## A002866.P8762876697797536475

`round(2^n*n!/2)`
-/

namespace A002866.P8762876697797536475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n * Nat.factorial n : ℚ) / 2)

end

end A002866.P8762876697797536475

namespace A002866

/-- `round(2^n*n!/2)` -/
def P8762876697797536475.Spec : Prop :=
  ∀ n, P8762876697797536475.a n = A002866 n

end A002866

/-! ## A002866.P9704724287915275277

`∏[gcd(2*n, n!%2)]`
-/

namespace A002866.P9704724287915275277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (Nat.factorial n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002866.P9704724287915275277

namespace A002866

/-- `∏[gcd(2*n, n!%2)]` -/
def P9704724287915275277.Spec : Prop :=
  ∀ n, (P9704724287915275277.a n : ℤ) = A002866 n

end A002866

/-! ## A002866.P4451192717489526792

`∏[xor(2*n, C(3, n²))]`
-/

namespace A002866.P4451192717489526792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (Nat.choose 3 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002866.P4451192717489526792

namespace A002866

/-- `∏[xor(2*n, C(3, n²))]` -/
def P4451192717489526792.Spec : Prop :=
  ∀ n, (P4451192717489526792.a n : ℤ) = A002866 n

end A002866

/-!
# A002867: a(n) = binomial(n,floor(n/2))*(n+1)!.

The programs for A002867, the canonical program `A002867.P6217921696521637256` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002867 has offset 0).

The definition of A002867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/2))*(n+1)!` (program `A002867.P6217921696521637256`, by `A002867.P6217921696521637256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002867.P6217921696521637256

`C(n, floor(n/2))*(n+1)!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002867

/-- `C(n, floor(n/2))*(n+1)!` -/
def P6217921696521637256.Spec : Prop :=
  ∀ n, (P6217921696521637256.a n : ℤ) = A002867 n

theorem P6217921696521637256.correct : P6217921696521637256.Spec := by
  intro n
  simp only [A002867]

end A002867

/-! ## A002867.P1787382038074850800

`2^n*A000246(n+1)`
-/

namespace A002867.P1787382038074850800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000246 (n + 1)

end

end A002867.P1787382038074850800

namespace A002867

/-- `2^n*A000246(n+1)` -/
def P1787382038074850800.Spec : Prop :=
  ∀ n, P1787382038074850800.a n = A002867 n

end A002867

/-! ## A002867.P8061646636819345197

`∏[2*or(1, n)]/2`
-/

namespace A002867.P8061646636819345197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A002867.P8061646636819345197

namespace A002867

/-- `∏[2*or(1, n)]/2` -/
def P8061646636819345197.Spec : Prop :=
  ∀ n, P8061646636819345197.a n = (A002867 n : ℚ)

end A002867

/-! ## A002867.P9700816181078951040

`2^n*∏[or(1, n)]`
-/

namespace A002867.P9700816181078951040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A002867.P9700816181078951040

namespace A002867

/-- `2^n*∏[or(1, n)]` -/
def P9700816181078951040.Spec : Prop :=
  ∀ n, (P9700816181078951040.a n : ℤ) = A002867 n

end A002867

/-! ## A002867.P2472428076054104498

`lcm(2^n, ∏[or(1, n)])`
-/

namespace A002867.P2472428076054104498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A002867.P2472428076054104498

namespace A002867

/-- `lcm(2^n, ∏[or(1, n)])` -/
def P2472428076054104498.Spec : Prop :=
  ∀ n, (P2472428076054104498.a n : ℤ) = A002867 n

end A002867

/-! ## A002867.P15383102765866661737

`∏[a(n-2)+4]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A002867.P15383102765866661737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002867.P15383102765866661737

namespace A002867

/-- `∏[a(n-2)+4]` -/
def P15383102765866661737.Spec : Prop :=
  ∀ n, (P15383102765866661737.a n : ℤ) = A002867 n

end A002867

/-! ## A002867.P3374992873350904142

`∏[xor(1, n)+1+n]/2`
-/

namespace A002867.P3374992873350904142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A002867.P3374992873350904142

namespace A002867

/-- `∏[xor(1, n)+1+n]/2` -/
def P3374992873350904142.Spec : Prop :=
  ∀ n, P3374992873350904142.a n = (A002867 n : ℚ)

end A002867

/-! ## A002867.P9895844682972199450

`∏[or(2*n, ceil(atan(n+1)))]`
-/

namespace A002867.P9895844682972199450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) ⌈Real.arctan (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002867.P9895844682972199450

namespace A002867

/-- `∏[or(2*n, ceil(atan(n+1)))]` -/
def P9895844682972199450.Spec : Prop :=
  ∀ n, P9895844682972199450.a n = A002867 n

end A002867

/-! ## A002867.P17371134772534709372

`2*or(1, n)*a(n-1)` with `a(0)=1`
-/

namespace A002867.P17371134772534709372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Nat.lor 1 n * a (n - 1))

end

end A002867.P17371134772534709372

namespace A002867

/-- `2*or(1, n)*a(n-1)` -/
def P17371134772534709372.Spec : Prop :=
  ∀ n, (P17371134772534709372.a n : ℤ) = A002867 n

end A002867

/-!
# A002868: Largest number in n-th row of triangle of Lah numbers (A008297 and A271703).

The programs for A002868, there is no canonical definition to state claims against.
-/

/-! ## A002868.P10289567247665961622

`A271703(A000196(n)+∑[n])`
-/

namespace A002868.P10289567247665961622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A000196 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A002868.P10289567247665961622

/-! ## A002868.P4858696898933921062

`A271703(A000217(n)+A000196(n))`
-/

namespace A002868.P4858696898933921062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A000217 n + A000196 n).toNat

end

end A002868.P4858696898933921062

/-! ## A002868.P902169652486016607

`A089231(A000124(n)-A000196(n))`
-/

namespace A002868.P902169652486016607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089231 (A000124 n - A000196 n).toNat

end

end A002868.P902169652486016607

/-! ## A002868.P2881599406306921940

`A271703(A000096(n)-A028391(n))`
-/

namespace A002868.P2881599406306921940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A000096 n - A028391 n).toNat

end

end A002868.P2881599406306921940

/-! ## A002868.P18185981350147629995

`A105278(A007318(A027379(n))-A028391(n))`
-/

namespace A002868.P18185981350147629995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A007318 (A027379 n).toNat - A028391 n).toNat

end

end A002868.P18185981350147629995

/-!
# A002869: Largest number in n-th row of triangle A019538.

The programs for A002869, there is no canonical definition to state claims against.
-/

/-! ## A002869.P4158034880338280875

`A139359(A000124(n)-A227568(n))`
-/

namespace A002869.P4158034880338280875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139359 (A000124 n - A227568 n).toNat

end

end A002869.P4158034880338280875

/-! ## A002869.P10329402080293772350

`A139359(A000124(n)-A186437(n+1))`
-/

namespace A002869.P10329402080293772350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139359 (A000124 n - A186437 (n + 1)).toNat

end

end A002869.P10329402080293772350

/-! ## A002869.P10624886381768657140

`A185048(A375799(n)+1)`
-/

namespace A002869.P10624886381768657140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A375799 n + 1).toNat

end

end A002869.P10624886381768657140

/-! ## A002869.P7502339412132142477

`filter[A375799(n), A105597(#)]`
-/

namespace A002869.P7502339412132142477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A002869.P7502339412132142477

/-!
# A002870: Largest Stirling numbers of second kind: a(n) = max_{k=1..n} S2(n,k).

The programs for A002870, there is no canonical definition to state claims against.
-/

/-! ## A002870.P12530413566252525139

`A008277(A024417(n+1)+∑[n])`
-/

namespace A002870.P12530413566252525139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A024417 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A002870.P12530413566252525139

/-! ## A002870.P11346461506446768005

`A048993(A024417(n+1)+∑[n+1])`
-/

namespace A002870.P11346461506446768005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A024417 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A002870.P11346461506446768005

/-! ## A002870.P14644309595632335907

`A024412(A024415(n+1)+1)`
-/

namespace A002870.P14644309595632335907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024412 (A024415 (n + 1) + 1).toNat

end

end A002870.P14644309595632335907

/-! ## A002870.P464358614833153520

`A151511(A372231(n+2))`
-/

namespace A002870.P464358614833153520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 (A372231 (n + 2)).toNat

end

end A002870.P464358614833153520

/-! ## A002870.P9776177680014440305

`A373173(A156324(n+2))`
-/

namespace A002870.P9776177680014440305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373173 (A156324 (n + 2)).toNat

end

end A002870.P9776177680014440305

/-!
# A002871: a(n) = max_{k=0..n} 2^k*A048993(n,k).

The programs for A002871, there is no canonical definition to state claims against.
-/

/-! ## A002871.P15138042737422510974

`A070939(A002845(2*(n+1)))*A204440(n)`
-/

namespace A002871.P15138042737422510974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A002845 (2 * (n + 1))).toNat * A204440 n

end

end A002871.P15138042737422510974

/-! ## A002871.P17968051378243498295

`n*A327331(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A002871.P17968051378243498295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * A327331 (a (n - 1)).toNat

end

end A002871.P17968051378243498295

/-!
# A002872: Number of partitions of {1..2n} that are invariant under a permutation consisting of n 2-cycles.

The programs for A002872, there is no canonical definition to state claims against.
-/

/-! ## A002872.P13813437456824197230

`A080107(2*n)`
-/

namespace A002872.P13813437456824197230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 (2 * n)

end

end A002872.P13813437456824197230

/-! ## A002872.P1370388702331109187

`record[A080107(A014681(n))]`
-/

namespace A002872.P1370388702331109187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002872.P1370388702331109187

/-! ## A002872.P18124084925073523634

`record[A080107(A186421(n))]`
-/

namespace A002872.P18124084925073523634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 (A186421 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002872.P18124084925073523634

/-! ## A002872.P3092355105538097913

`record[A080107(A026741(n)+1)]`
-/

namespace A002872.P3092355105538097913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002872.P3092355105538097913

/-! ## A002872.P7755468146629182733

`record[A080107(A088705(n)+n)]`
-/

namespace A002872.P7755468146629182733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 (A088705 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002872.P7755468146629182733

/-! ## A002872.P1481935622213786238

`record[A080107(n)/A033999(n)]`
-/

namespace A002872.P1481935622213786238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080107 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002872.P1481935622213786238

/-! ## A002872.P1972284605407747933

`record[gcd(A080107(n), A097331(n))]`
-/

namespace A002872.P1972284605407747933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080107 n) (A097331 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002872.P1972284605407747933

/-! ## A002872.P18348415125916756224

`record[and(A033999(n+1), A080107(n))]`
-/

namespace A002872.P18348415125916756224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (n + 1)) (A080107 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002872.P18348415125916756224

/-! ## A002872.P2742788326281638162

`A324013(2*n+1)+A324013(2*n)`
-/

namespace A002872.P2742788326281638162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324013 (2 * n + 1) + A324013 (2 * n)

end

end A002872.P2742788326281638162

/-! ## A002872.P1398304780757911030

`record[A080107(A163575(A005408(n)))]`
-/

namespace A002872.P1398304780757911030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 (A163575 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002872.P1398304780757911030

/-!
# A002873: The maximal number of partitions of {1..2n} that are invariant under a permutation consisting of n 2-cycles, and which have the same number of nonempty parts.

The programs for A002873, there is no canonical definition to state claims against.
-/

/-! ## A002873.P5429418033331713755

`A283550(A149049(n))`
-/

namespace A002873.P5429418033331713755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283550 (A149049 n).toNat

end

end A002873.P5429418033331713755

/-! ## A002873.P16262002429330722594

`xor(1, A073453(A343363(n)))`
-/

namespace A002873.P16262002429330722594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A073453 (A343363 n).toNat)

end

end A002873.P16262002429330722594

/-!
# A002874: The number of partitions of {1..3n} that are invariant under a permutation consisting of n 3-cycles.

The programs for A002874, there is no canonical definition to state claims against.
-/

/-! ## A002874.P1665310083679928946

`A162663(∑[n+3])`
-/

namespace A002874.P1665310083679928946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002874.P1665310083679928946

/-! ## A002874.P11710567948819376423

`record[A162663(A027379(A008611(n)))]`
-/

namespace A002874.P11710567948819376423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A027379 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002874.P11710567948819376423

/-! ## A002874.P7213089629027786814

`record[A162663(A027379(A008612(n)))]`
-/

namespace A002874.P7213089629027786814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A027379 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002874.P7213089629027786814

/-! ## A002874.P7508462825506155235

`record[A162663(A027379(A154958(n)))]`
-/

namespace A002874.P7508462825506155235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A027379 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002874.P7508462825506155235

/-! ## A002874.P14894455623122003062

`record[A162663(A027379(A003602(n+1)))]`
-/

namespace A002874.P14894455623122003062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A027379 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002874.P14894455623122003062

/-! ## A002874.P3639906779825442850

`record[A162663(A055998(A032742(n+1)))]`
-/

namespace A002874.P3639906779825442850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A055998 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002874.P3639906779825442850

/-! ## A002874.P2523754500839962772

`record[A162663(A055998(A026238(n+2)))]`
-/

namespace A002874.P2523754500839962772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A055998 (A026238 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002874.P2523754500839962772

/-!
# A002875: Number of partitions of {1..3n} that are invariant under a permutation consisting of n 3-cycles with k orbits of blocks, maximized over k.

The programs for A002875, there is no canonical definition to state claims against.
-/

/-! ## A002875.P14062944234452158190

`A033720(xor(A188083(n+1), A275758(n+1)))`
-/

namespace A002875.P14062944234452158190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033720 (Int.xor (A188083 (n + 1)) (A275758 (n + 1))).toNat

end

end A002875.P14062944234452158190

/-! ## A002875.P6430073633378474933

`A109388(n)*A156079(A000108(n))`
-/

namespace A002875.P6430073633378474933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109388 n * A156079 (A000108 n).toNat

end

end A002875.P6430073633378474933

/-!
# A002876: Number of weighted linear spaces of total weight n.

The programs for A002876, there is no canonical definition to state claims against.
-/

/-! ## A002876.P14049449591983319669

`A279911(n)+A148094(n)`
-/

namespace A002876.P14049449591983319669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279911 n + A148094 n

end

end A002876.P14049449591983319669

/-! ## A002876.P15162267133180090344

`A340069(n)+A333888(n)`
-/

namespace A002876.P15162267133180090344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340069 n + A333888 n

end

end A002876.P15162267133180090344

/-! ## A002876.P15446987849827253867

`A265548(n)+A003089(n+1)`
-/

namespace A002876.P15446987849827253867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265548 n + A003089 (n + 1)

end

end A002876.P15446987849827253867

/-! ## A002876.P13462494501236905110

`A265564(n)+A003089(n+1)`
-/

namespace A002876.P13462494501236905110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265564 n + A003089 (n + 1)

end

end A002876.P13462494501236905110

/-!
# A002877: Number of connected weighted linear spaces of total weight n.

The programs for A002877, there is no canonical definition to state claims against.
-/

/-! ## A002877.P17111757871612961944

`4*a(n-1)-∑[n]+4` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A002877.P17111757871612961944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  4 * a (n - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 4

end

end A002877.P17111757871612961944

/-! ## A002877.P651637477818289506

`floor(sqrt(A000719(n+2)))`
-/

namespace A002877.P651637477818289506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000719 (n + 2))

end

end A002877.P651637477818289506

/-! ## A002877.P7096610185765266966

`floor(root(A266422(n+1), 5))`
-/

namespace A002877.P7096610185765266966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266422 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A002877.P7096610185765266966

/-! ## A002877.P9356120792369653241

`ceil(∏[A328321(n+1)/6])`
-/

namespace A002877.P9356120792369653241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328321 (n + 1) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A002877.P9356120792369653241

/-!
# A002878: Bisection of Lucas sequence: a(n) = L(2*n+1).

The programs for A002878, the canonical program `A002878.P5799880328717481799` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002878 has offset 0).

The definition of A002878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002878.P5799880328717481799

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002878

/-- `3*a(n-1)-a(n-2)` -/
def P5799880328717481799.Spec : Prop :=
  ∀ n, P5799880328717481799.a n = A002878 n

theorem P5799880328717481799.correct : P5799880328717481799.Spec := by
  intro n
  simp only [A002878]

end A002878

/-! ## A002878.P3512045374901914525

`A014217(2*n+1)`
-/

namespace A002878.P3512045374901914525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (2 * n + 1)

end

end A002878.P3512045374901914525

namespace A002878

/-- `A014217(2*n+1)` -/
def P3512045374901914525.Spec : Prop :=
  ∀ n, P3512045374901914525.a n = A002878 n

end A002878

/-! ## A002878.P8256044003108805027

`A001906(n)+A001906(n+1)`
-/

namespace A002878.P8256044003108805027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n + A001906 (n + 1)

end

end A002878.P8256044003108805027

namespace A002878

/-- `A001906(n)+A001906(n+1)` -/
def P8256044003108805027.Spec : Prop :=
  ∀ n, P8256044003108805027.a n = A002878 n

end A002878

/-! ## A002878.P4573483379093126463

`A005248(n+1)-A005248(n)`
-/

namespace A002878.P4573483379093126463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) - A005248 n

end

end A002878.P4573483379093126463

namespace A002878

/-- `A005248(n+1)-A005248(n)` -/
def P4573483379093126463.Spec : Prop :=
  ∀ n, P4573483379093126463.a n = A002878 n

end A002878

/-! ## A002878.P3396543759515701970

`2^-n*A082762(n)`
-/

namespace A002878.P3396543759515701970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (-(n : ℤ) : ℤ) * (A082762 n : ℚ)

end

end A002878.P3396543759515701970

namespace A002878

/-- `2^-n*A082762(n)` -/
def P3396543759515701970.Spec : Prop :=
  ∀ n, P3396543759515701970.a n = (A002878 n : ℚ)

end A002878

/-! ## A002878.P968408359588894205

`Δ[floor((ϕ^n)²)]`
-/

namespace A002878.P968408359588894205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002878.P968408359588894205

namespace A002878

/-- `Δ[floor((ϕ^n)²)]` -/
def P968408359588894205.Spec : Prop :=
  ∀ n, P968408359588894205.a n = A002878 n

end A002878

/-! ## A002878.P18001854335290292934

`ceil(∑[record[(-ϕ)^n]])`
-/

namespace A002878.P18001854335290292934
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.goldenRatio) ^ n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A002878.P18001854335290292934

namespace A002878

/-- `ceil(∑[record[(-ϕ)^n]])` -/
def P18001854335290292934.Spec : Prop :=
  ∀ n, P18001854335290292934.a n = A002878 n

end A002878

/-! ## A002878.P15279900494029171783

`ogf((1+x)/(1-3x+x^2))`
-/

namespace A002878.P15279900494029171783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, 1] n

end

end A002878.P15279900494029171783

namespace A002878

/-- `ogf((1+x)/(1-3x+x^2))` -/
def P15279900494029171783.Spec : Prop :=
  ∀ n, P15279900494029171783.a n = A002878 n

end A002878

/-! ## A002878.P11999863842460057687

`ceil(ϕ²*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A002878.P11999863842460057687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A002878.P11999863842460057687

namespace A002878

/-- `ceil(ϕ²*a(n-1))` -/
def P11999863842460057687.Spec : Prop :=
  ∀ n, P11999863842460057687.a n = A002878 n

end A002878

/-! ## A002878.P12934570487193852615

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A002878.P12934570487193852615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A002878.P12934570487193852615

namespace A002878

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P12934570487193852615.Spec : Prop :=
  ∀ n, P12934570487193852615.a n = A002878 n

end A002878

/-! ## A002878.P14279691174382736068

`lcm(3, a(n-1))-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A002878.P14279691174382736068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - a (n - 2)

end

end A002878.P14279691174382736068

namespace A002878

/-- `lcm(3, a(n-1))-a(n-2)` -/
def P14279691174382736068.Spec : Prop :=
  ∀ n, P14279691174382736068.a n = A002878 n

end A002878

/-! ## A002878.P7115956228981019028

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A002878.P7115956228981019028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A002878.P7115956228981019028

namespace A002878

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P7115956228981019028.Spec : Prop :=
  ∀ n, P7115956228981019028.a n = A002878 n

theorem P7115956228981019028.correct : P7115956228981019028.Spec := by
  intro n
  simp only [A002878, Nat.add_sub_cancel, A002878.P7115956228981019028.a, A002878.P5799880328717481799.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002878

/-! ## A002878.P6138051824103381717

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A002878.P6138051824103381717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A002878.P6138051824103381717

namespace A002878

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P6138051824103381717.Spec : Prop :=
  ∀ n, P6138051824103381717.a n = A002878 n

theorem P6138051824103381717.correct : P6138051824103381717.Spec := by
  intro n
  simp only [A002878, Nat.add_sub_cancel, A002878.P6138051824103381717.a, A002878.P5799880328717481799.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002878

/-! ## A002878.P14745186721323913412

`record[A075193(n)]`
-/

namespace A002878.P14745186721323913412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002878.P14745186721323913412

namespace A002878

/-- `record[A075193(n)]` -/
def P14745186721323913412.Spec : Prop :=
  ∀ n, P14745186721323913412.a n = A002878 n

end A002878

/-! ## A002878.P12343430902627790903

`record[A154699(n)]`
-/

namespace A002878.P12343430902627790903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002878.P12343430902627790903

namespace A002878

/-- `record[A154699(n)]` -/
def P12343430902627790903.Spec : Prop :=
  ∀ n, P12343430902627790903.a n = A002878 n

end A002878

/-! ## A002878.P6355406493342732690

`A188378(n)-1`
-/

namespace A002878.P6355406493342732690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 n - 1

end

end A002878.P6355406493342732690

namespace A002878

/-- `A188378(n)-1` -/
def P6355406493342732690.Spec : Prop :=
  ∀ n, P6355406493342732690.a n = A002878 n

theorem P6355406493342732690.correct : P6355406493342732690.Spec := by
  intro n
  simp only [A002878, Nat.add_sub_cancel, A002878.P6355406493342732690.a, A002878.P5799880328717481799.a, A188378, A188378.P151460169206964493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002878

/-! ## A002878.P8731681556154735643

`A256233(n)+2`
-/

namespace A002878.P8731681556154735643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256233 n + 2

end

end A002878.P8731681556154735643

namespace A002878

/-- `A256233(n)+2` -/
def P8731681556154735643.Spec : Prop :=
  ∀ n, P8731681556154735643.a n = A002878 n

end A002878

/-! ## A002878.P17608879573146336060

`A162483(n)-2`
-/

namespace A002878.P17608879573146336060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162483 n - 2

end

end A002878.P17608879573146336060

namespace A002878

/-- `A162483(n)-2` -/
def P17608879573146336060.Spec : Prop :=
  ∀ n, P17608879573146336060.a n = A002878 n

end A002878

/-! ## A002878.P9707947757909188779

`A075193(2*n)`
-/

namespace A002878.P9707947757909188779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (2 * n)

end

end A002878.P9707947757909188779

namespace A002878

/-- `A075193(2*n)` -/
def P9707947757909188779.Spec : Prop :=
  ∀ n, P9707947757909188779.a n = A002878 n

end A002878

/-! ## A002878.P5204756960448567031

`A154699(2*n)`
-/

namespace A002878.P5204756960448567031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 (2 * n)

end

end A002878.P5204756960448567031

namespace A002878

/-- `A154699(2*n)` -/
def P5204756960448567031.Spec : Prop :=
  ∀ n, P5204756960448567031.a n = A002878 n

end A002878

/-!
# A002880: Number of 3-connected nets with n edges.

The programs for A002880, there is no canonical definition to state claims against.
-/

/-! ## A002880.P8188518674865717055

`A319628(n)-A181153(A181153(n))`
-/

namespace A002880.P8188518674865717055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319628 n - A181153 (A181153 n).toNat

end

end A002880.P8188518674865717055

/-! ## A002880.P12675773896222766070

`A334109(A000110(n))+A240085(n)`
-/

namespace A002880.P12675773896222766070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334109 (A000110 n).toNat + A240085 n

end

end A002880.P12675773896222766070

/-! ## A002880.P5248671378255572928

`A000360(∑[A258830(n)]-A258830(n))`
-/

namespace A002880.P5248671378255572928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (∑ j ∈ Finset.range (n + 1), f1 j - A258830 n).toNat

end

end A002880.P5248671378255572928

/-! ## A002880.P16031797764347416132

`A355776(A303167(n+1))+A240085(n)`
-/

namespace A002880.P16031797764347416132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355776 (A303167 (n + 1)).toNat + A240085 n

end

end A002880.P16031797764347416132

/-! ## A002880.P15166721826161541429

`A217043(n+1)%A205394(A212431(∑[n]))`
-/

namespace A002880.P15166721826161541429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217043 (n + 1)) (A205394 (A212431 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A002880.P15166721826161541429

/-!
# A002881: Number of simple imperfect squared rectangles of order n up to symmetry.

The programs for A002881, there is no canonical definition to state claims against.
-/

/-! ## A002881.P3921438901444443278

`A002962(n+1)+A220165(n+1)`
-/

namespace A002881.P3921438901444443278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002962 (n + 1) + A220165 (n + 1)

end

end A002881.P3921438901444443278

/-! ## A002881.P3590764019100665803

`A220165(n+1)+A002962(A031285(n))`
-/

namespace A002881.P3590764019100665803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220165 (n + 1) + A002962 (A031285 n).toNat

end

end A002881.P3590764019100665803

/-! ## A002881.P5754864137799120808

`A220164(n+1)+A220165(n+1)-A006983(n+1)`
-/

namespace A002881.P5754864137799120808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220164 (n + 1) + (A220165 (n + 1) - A006983 (n + 1))

end

end A002881.P5754864137799120808

/-! ## A002881.P3522846899036238119

`A002962(n+1)+A220166(n+1)-A219766(n+1)`
-/

namespace A002881.P3522846899036238119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002962 (n + 1) + (A220166 (n + 1) - A219766 (n + 1))

end

end A002881.P3522846899036238119

/-!
# A002882: Nearest integer to Bernoulli number B_{2n}.

The programs for A002882, there is no canonical definition to state claims against.
-/

/-! ## A002882.P7287110962987267946

`round(A000367(n)/A002445(n))`
-/

namespace A002882.P7287110962987267946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000367 n : ℚ) / (A002445 n : ℚ))

end

end A002882.P7287110962987267946

/-! ## A002882.P13262961969010700074

`round(A127188(n)/A005408(n))`
-/

namespace A002882.P13262961969010700074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127188 n : ℚ) / (A005408 n : ℚ))

end

end A002882.P13262961969010700074

/-! ## A002882.P1901519835522842781

`round(A000367(n)/A027642(2*n))`
-/

namespace A002882.P1901519835522842781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000367 n : ℚ) / (A027642 (2 * n) : ℚ))

end

end A002882.P1901519835522842781

/-! ## A002882.P615343769211024226

`round(A027641(2*n)/A002445(n))`
-/

namespace A002882.P615343769211024226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027641 (2 * n) : ℚ) / (A002445 n : ℚ))

end

end A002882.P615343769211024226

/-! ## A002882.P16759529544468013571

`round(A000367(n)/A106458(2*n))`
-/

namespace A002882.P16759529544468013571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000367 n : ℚ) / (A106458 (2 * n) : ℚ))

end

end A002882.P16759529544468013571

/-! ## A002882.P5349419966891679154

`round(A000367(n)/A141056(2*n))`
-/

namespace A002882.P5349419966891679154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000367 n : ℚ) / (A141056 (2 * n) : ℚ))

end

end A002882.P5349419966891679154

/-! ## A002882.P11872809008091501323

`round(A000367(n)/A164020(2*n))`
-/

namespace A002882.P11872809008091501323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000367 n : ℚ) / (A164020 (2 * n) : ℚ))

end

end A002882.P11872809008091501323

/-! ## A002882.P12394357574519401893

`round(A164555(2*n)/A002445(n))`
-/

namespace A002882.P12394357574519401893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A164555 (2 * n) : ℚ) / (A002445 n : ℚ))

end

end A002882.P12394357574519401893

/-! ## A002882.P14430999682499447439

`round(A000367(n)/A176289(2*n))`
-/

namespace A002882.P14430999682499447439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000367 n : ℚ) / (A176289 (2 * n) : ℚ))

end

end A002882.P14430999682499447439

/-! ## A002882.P3695336226078533106

`round(A000367(n)/A176591(2*n))`
-/

namespace A002882.P3695336226078533106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000367 n : ℚ) / (A176591 (2 * n) : ℚ))

end

end A002882.P3695336226078533106

/-!
# A002883: Number of allomorphic polyhedra with n nodes.

The programs for A002883, there is no canonical definition to state claims against.
-/

/-! ## A002883.P7408799561285282165

`∑[A065200(A002513(n))]`
-/

namespace A002883.P7408799561285282165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (A002513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002883.P7408799561285282165

/-! ## A002883.P14038274219160719084

`A117989(n+1)+A027631(n)`
-/

namespace A002883.P14038274219160719084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 1) + A027631 n

end

end A002883.P14038274219160719084

/-! ## A002883.P19940463298412396

`A381328(n)+A092264(n+1)`
-/

namespace A002883.P19940463298412396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381328 n + A092264 (n + 1)

end

end A002883.P19940463298412396

/-! ## A002883.P9231605674695474509

`∑[A055923(3*n+1)+A035457(n)]`
-/

namespace A002883.P9231605674695474509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055923 (3 * n + 1) + A035457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002883.P9231605674695474509

/-! ## A002883.P15817711431534947498

`A324925(3*n+1)-4%A330953(n+2)`
-/

namespace A002883.P15817711431534947498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324925 (3 * n + 1) - Int.tmod 4 (A330953 (n + 2))

end

end A002883.P15817711431534947498

/-!
# A002884: Number of nonsingular n X n matrices over GF(2) (order of the group GL(n,2)); order of Chevalley group A_n (2); order of projective special linear group PSL_n(2).

The programs for A002884, the canonical program `A002884.P11600545504919749635` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002884 has offset 0).

The definition of A002884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002884.P11600545504919749635

`A006125(n)*A005329(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002884

/-- `A006125(n)*A005329(n)` -/
def P11600545504919749635.Spec : Prop :=
  ∀ n, P11600545504919749635.a n = A002884 n

theorem P11600545504919749635.correct : P11600545504919749635.Spec := by
  intro n
  simp only [A002884]

end A002884

/-! ## A002884.P7958207813576453573

`∏[C(round(sqrt(4^n+2)), 2)]`
-/

namespace A002884.P7958207813576453573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (4 ^ n + 2 : ℝ))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002884.P7958207813576453573

namespace A002884

/-- `∏[C(round(sqrt(4^n+2)), 2)]` -/
def P7958207813576453573.Spec : Prop :=
  ∀ n, (P7958207813576453573.a n : ℤ) = A002884 n

end A002884

/-! ## A002884.P14810562583180425688

`C(2^n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A002884.P14810562583180425688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 ^ n) 2 * a (n - 1)

end

end A002884.P14810562583180425688

namespace A002884

/-- `C(2^n, 2)*a(n-1)` -/
def P14810562583180425688.Spec : Prop :=
  ∀ n, (P14810562583180425688.a n : ℤ) = A002884 n

end A002884

/-! ## A002884.P15361724781918081648

`∏[ceil(4^n/2)-floor(2^(n-1))]`
-/

namespace A002884.P15361724781918081648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉ - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002884.P15361724781918081648

namespace A002884

/-- `∏[ceil(4^n/2)-floor(2^(n-1))]` -/
def P15361724781918081648.Spec : Prop :=
  ∀ n, P15361724781918081648.a n = A002884 n

end A002884

/-! ## A002884.P14666759086369797424

`(4^n-2^n)/2*a(n-1)` with `a(0)=1`
-/

namespace A002884.P14666759086369797424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2 * a (n - 1)

end

end A002884.P14666759086369797424

namespace A002884

/-- `(4^n-2^n)/2*a(n-1)` -/
def P14666759086369797424.Spec : Prop :=
  ∀ n, P14666759086369797424.a n = (A002884 n : ℚ)

end A002884

/-!
# A002885: Number of cyclic Steiner triple systems of order 2n+1.

The programs for A002885, there is no canonical definition to state claims against.
-/

/-! ## A002885.P3139896647842280666

`A011991(n-(6-n)%(n+1)+7)`
-/

namespace A002885.P3139896647842280666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011991 ((n : ℤ) - Int.tmod (6 - (n : ℤ)) (n + 1 : ℤ) + 7).toNat

end

end A002885.P3139896647842280666

/-! ## A002885.P6348114483714774107

`and(A005428(n), A167383(A005428(n)))`
-/

namespace A002885.P6348114483714774107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005428 n) (A167383 (A005428 n).toNat)

end

end A002885.P6348114483714774107

/-! ## A002885.P6241573545684450362

`A000120(A091602(n+1)*A321956(n))`
-/

namespace A002885.P6241573545684450362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A091602 (n + 1) * A321956 n).toNat

end

end A002885.P6241573545684450362

/-! ## A002885.P3101981548691653028

`A331843(n)*A365545(A371788(2*n))`
-/

namespace A002885.P3101981548691653028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331843 n * A365545 (A371788 (2 * n)).toNat

end

end A002885.P3101981548691653028

/-! ## A002885.P5020811557573829987

`A317446(n)%A246688(A295950(n+4))`
-/

namespace A002885.P5020811557573829987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317446 n) (A246688 (A295950 (n + 4)).toNat)

end

end A002885.P5020811557573829987

/-!
# A002888: a(n) is the cutting number of the tree corresponding to A002887(n).

The programs for A002888, there is no canonical definition to state claims against.
-/

/-! ## A002888.P5704448600872684608

`A196244(comp[∑[and(2, n)]+n])`
-/

namespace A002888.P5704448600872684608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196244 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A002888.P5704448600872684608

/-!
# A002889: Arrays of dumbbells.

The programs for A002889, the canonical program `A002889.P5912892682402209234` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002889 has offset 1).

The definition of A002889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002889.P5912892682402209234

`2*a(n-1)-a(n-3)+A002941(n+1)+A002941(n)` with `a(0)=1, a(1)=10, a(2)=56`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002889

/-- `2*a(n-1)-a(n-3)+A002941(n+1)+A002941(n)` -/
def P5912892682402209234.Spec : Prop :=
  ∀ n, P5912892682402209234.a n = A002889 (n + 1)

theorem P5912892682402209234.correct : P5912892682402209234.Spec := by
  intro n
  simp only [A002889, Nat.add_sub_cancel]

end A002889

/-! ## A002889.P10293615997316692011

`abs(A308244(A167614(n+2)))`
-/

namespace A002889.P10293615997316692011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308244 (A167614 (n + 2)).toNat|

end

end A002889.P10293615997316692011

namespace A002889

/-- `abs(A308244(A167614(n+2)))` -/
def P10293615997316692011.Spec : Prop :=
  ∀ n, P10293615997316692011.a n = A002889 (n + 1)

end A002889

/-! ## A002889.P10314330145465193171

`A033999(n)*A308244(A167614(n+2))`
-/

namespace A002889.P10314330145465193171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A308244 (A167614 (n + 2)).toNat

end

end A002889.P10314330145465193171

namespace A002889

/-- `A033999(n)*A308244(A167614(n+2))` -/
def P10314330145465193171.Spec : Prop :=
  ∀ n, P10314330145465193171.a n = A002889 (n + 1)

end A002889

/-! ## A002889.P9380792183645741103

`gcd(A000038(n), A308244(A167614(n+2)))`
-/

namespace A002889.P9380792183645741103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A308244 (A167614 (n + 2)).toNat)

end

end A002889.P9380792183645741103

namespace A002889

/-- `gcd(A000038(n), A308244(A167614(n+2)))` -/
def P9380792183645741103.Spec : Prop :=
  ∀ n, (P9380792183645741103.a n : ℤ) = A002889 (n + 1)

end A002889

/-! ## A002889.P14651249101294710913

`lcm(A020985(n), A308244(A167614(n+2)))`
-/

namespace A002889.P14651249101294710913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A308244 (A167614 (n + 2)).toNat)

end

end A002889.P14651249101294710913

namespace A002889

/-- `lcm(A020985(n), A308244(A167614(n+2)))` -/
def P14651249101294710913.Spec : Prop :=
  ∀ n, (P14651249101294710913.a n : ℤ) = A002889 (n + 1)

end A002889

/-! ## A002889.P9309701760145296321

`A046741(∑[n+4]+2)`
-/

namespace A002889.P9309701760145296321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A002889.P9309701760145296321

namespace A002889

/-- `A046741(∑[n+4]+2)` -/
def P9309701760145296321.Spec : Prop :=
  ∀ n, P9309701760145296321.a n = A002889 (n + 1)

end A002889

/-! ## A002889.P6137045127700869317

`lcm(A000034(n), A046741(A155212(n)+4))`
-/

namespace A002889.P6137045127700869317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A046741 (A155212 n + 4).toNat)

end

end A002889.P6137045127700869317

namespace A002889

/-- `lcm(A000034(n), A046741(A155212(n)+4))` -/
def P6137045127700869317.Spec : Prop :=
  ∀ n, (P6137045127700869317.a n : ℤ) = A002889 (n + 1)

end A002889

/-! ## A002889.P4403727177088898460

`or(A000007(n), A046741(A155212(n)+4))`
-/

namespace A002889.P4403727177088898460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A046741 (A155212 n + 4).toNat)

end

end A002889.P4403727177088898460

namespace A002889

/-- `or(A000007(n), A046741(A155212(n)+4))` -/
def P4403727177088898460.Spec : Prop :=
  ∀ n, P4403727177088898460.a n = A002889 (n + 1)

end A002889

/-! ## A002889.P10104004836894466974

`A046741(A155212(n)+4)+A000007(n+1)`
-/

namespace A002889.P10104004836894466974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A155212 n + 4).toNat + A000007 (n + 1)

end

end A002889.P10104004836894466974

namespace A002889

/-- `A046741(A155212(n)+4)+A000007(n+1)` -/
def P10104004836894466974.Spec : Prop :=
  ∀ n, P10104004836894466974.a n = A002889 (n + 1)

end A002889

/-! ## A002889.P4903350256082162673

`A046741(A046691(n+2))%A301881(n+1)`
-/

namespace A002889.P4903350256082162673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046741 (A046691 (n + 2)).toNat) (A301881 (n + 1))

end

end A002889.P4903350256082162673

namespace A002889

/-- `A046741(A046691(n+2))%A301881(n+1)` -/
def P4903350256082162673.Spec : Prop :=
  ∀ n, P4903350256082162673.a n = A002889 (n + 1)

end A002889

/-! ## A002889.P15286556082510582167

`A046741(eq[2, A129713(n)])%A045748(n+1)`
-/

namespace A002889.P15286556082510582167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A045748 (n + 1))

end

end A002889.P15286556082510582167

namespace A002889

/-- `A046741(eq[2, A129713(n)])%A045748(n+1)` -/
def P15286556082510582167.Spec : Prop :=
  ∀ n, P15286556082510582167.a n = A002889 (n + 1)

end A002889

/-!
# A002890: Low temperature series for spin-1/2 Ising partition function on 2D square lattice.

The programs for A002890, there is no canonical definition to state claims against.
-/

/-! ## A002890.P8945718523029804674

`A328568(xor(A000246(n), A331282(3*n+1)))`
-/

namespace A002890.P8945718523029804674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328568 (Int.xor (A000246 n) (A331282 (3 * n + 1))).toNat

end

end A002890.P8945718523029804674

/-!
# A002893: a(n) = Sum_{k=0..n} binomial(n,k)^2 * binomial(2*k,k).

The programs for A002893, there is no canonical definition to state claims against.
-/

/-! ## A002893.P2869708250552627066

`A228514(n)+A086618(n)`
-/

namespace A002893.P2869708250552627066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228514 n + A086618 n

end

end A002893.P2869708250552627066

/-! ## A002893.P12411184595074489352

`A087457(n+1)-2*A228514(n)`
-/

namespace A002893.P12411184595074489352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087457 (n + 1) - 2 * A228514 n

end

end A002893.P12411184595074489352

/-! ## A002893.P8462966940372618868

`A086618(n)+(A087457(n+1)-A086618(n))/3`
-/

namespace A002893.P8462966940372618868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086618 n : ℚ) + (A087457 (n + 1) - A086618 n : ℚ) / 3

end

end A002893.P8462966940372618868

/-! ## A002893.P6920536928420853554

`A338934(∑[4*n])`
-/

namespace A002893.P6920536928420853554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338934 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002893.P6920536928420853554

/-! ## A002893.P9715521839221693734

`A002896(n)/record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A002893.P9715521839221693734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002893.P9715521839221693734

/-! ## A002893.P1163414594872423897

`A002896(n)/A000984(n)`
-/

namespace A002893.P1163414594872423897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / (A000984 n : ℚ)

end

end A002893.P1163414594872423897

/-! ## A002893.P7663838062592561159

`A002896(n)/sqrt(A002894(n))`
-/

namespace A002893.P7663838062592561159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℝ) / Real.sqrt (A002894 n : ℝ)

end

end A002893.P7663838062592561159

/-! ## A002893.P11524372014961246677

`A002896(n)/record[A081668(n)]`
-/

namespace A002893.P11524372014961246677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A002893.P11524372014961246677

/-! ## A002893.P17436572916004301671

`A002896(n)/record[A126869(n)]`
-/

namespace A002893.P17436572916004301671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A002893.P17436572916004301671

/-! ## A002893.P16246063623828272778

`A002896(n)/A001405(2*n)`
-/

namespace A002893.P16246063623828272778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / (A001405 (2 * n) : ℚ)

end

end A002893.P16246063623828272778

/-!
# A002894: a(n) = binomial(2n, n)^2.

The programs for A002894, the canonical program `A002894.P13776530332623719589` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002894 has offset 0).

The definition of A002894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, n)²` (program `A002894.P13776530332623719589`, by `A002894.P13776530332623719589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002894.P13776530332623719589

`C(2*n, n)²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002894

/-- `C(2*n, n)²` -/
def P13776530332623719589.Spec : Prop :=
  ∀ n, (P13776530332623719589.a n : ℤ) = A002894 n

theorem P13776530332623719589.correct : P13776530332623719589.Spec := by
  intro n
  simp only [A002894]

end A002894

/-! ## A002894.P1617164013389837685

`A000984(n)²`
-/

namespace A002894.P1617164013389837685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 2

end

end A002894.P1617164013389837685

namespace A002894

/-- `A000984(n)²` -/
def P1617164013389837685.Spec : Prop :=
  ∀ n, P1617164013389837685.a n = A002894 n

theorem P1617164013389837685.correct : P1617164013389837685.Spec := by
  intro n
  simp only [A002894, Nat.add_sub_cancel, A002894.P1617164013389837685.a, A002894.P13776530332623719589.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002894

/-! ## A002894.P1343420649882008498

`A241530(2*n)`
-/

namespace A002894.P1343420649882008498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241530 (2 * n)

end

end A002894.P1343420649882008498

namespace A002894

/-- `A241530(2*n)` -/
def P1343420649882008498.Spec : Prop :=
  ∀ n, P1343420649882008498.a n = A002894 n

end A002894

/-! ## A002894.P5080161430920374854

`C(2*n, n)^2`
-/

namespace A002894.P5080161430920374854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n ^ 2

end

end A002894.P5080161430920374854

namespace A002894

/-- `C(2*n, n)^2` -/
def P5080161430920374854.Spec : Prop :=
  ∀ n, (P5080161430920374854.a n : ℤ) = A002894 n

theorem P5080161430920374854.correct : P5080161430920374854.Spec := by
  intro n
  simp only [A002894, Nat.add_sub_cancel, A002894.P5080161430920374854.a, A002894.P13776530332623719589.a, SequenceMachineLib.memo_apply]

end A002894

/-! ## A002894.P8906413085275842781

`C(2*n, n)*C(2*n, n)`
-/

namespace A002894.P8906413085275842781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n * Nat.choose (2 * n) n

end

end A002894.P8906413085275842781

namespace A002894

/-- `C(2*n, n)*C(2*n, n)` -/
def P8906413085275842781.Spec : Prop :=
  ∀ n, (P8906413085275842781.a n : ℤ) = A002894 n

theorem P8906413085275842781.correct : P8906413085275842781.Spec := by
  intro n
  simp only [A002894, Nat.add_sub_cancel, A002894.P8906413085275842781.a, A002894.P13776530332623719589.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002894

/-! ## A002894.P3940195629083021433

`(2/n-4)²*a(n-1)` with `a(0)=1`
-/

namespace A002894.P3940195629083021433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 / (n : ℚ) - 4) ^ 2 * a (n - 1)

end

end A002894.P3940195629083021433

namespace A002894

/-- `(2/n-4)²*a(n-1)` -/
def P3940195629083021433.Spec : Prop :=
  ∀ n, P3940195629083021433.a n = (A002894 n : ℚ)

end A002894

/-! ## A002894.P4235010616912836927

`record[C(n, floor(n/2))²/(-1)^n]`
-/

namespace A002894.P4235010616912836927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002894.P4235010616912836927

namespace A002894

/-- `record[C(n, floor(n/2))²/(-1)^n]` -/
def P4235010616912836927.Spec : Prop :=
  ∀ n, P4235010616912836927.a n = (A002894 n : ℚ)

end A002894

/-! ## A002894.P9020528008528860460

`A018224(2*n)`
-/

namespace A002894.P9020528008528860460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018224 (2 * n)

end

end A002894.P9020528008528860460

namespace A002894

/-- `A018224(2*n)` -/
def P9020528008528860460.Spec : Prop :=
  ∀ n, P9020528008528860460.a n = A002894 n

end A002894

/-! ## A002894.P13823223241080201750

`A092266(2*n)`
-/

namespace A002894.P13823223241080201750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092266 (2 * n)

end

end A002894.P13823223241080201750

namespace A002894

/-- `A092266(2*n)` -/
def P13823223241080201750.Spec : Prop :=
  ∀ n, P13823223241080201750.a n = A002894 n

end A002894

/-! ## A002894.P6980595818151254263

`A046521(∑[n])²`
-/

namespace A002894.P6980595818151254263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A002894.P6980595818151254263

namespace A002894

/-- `A046521(∑[n])²` -/
def P6980595818151254263.Spec : Prop :=
  ∀ n, P6980595818151254263.a n = A002894 n

end A002894

/-!
# A002895: Domb numbers: number of 2n-step polygons on diamond lattice.

The programs for A002895, there is no canonical definition to state claims against.
-/

/-! ## A002895.P1086244125364447739

`A039699(n)/A000984(n)`
-/

namespace A002895.P1086244125364447739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039699 n : ℚ) / (A000984 n : ℚ)

end

end A002895.P1086244125364447739

/-! ## A002895.P7339426386012372424

`A039699(n)/record[A081668(n)]`
-/

namespace A002895.P7339426386012372424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039699 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A002895.P7339426386012372424

/-! ## A002895.P9816819097823436070

`A039699(n)/record[A092392(n)]`
-/

namespace A002895.P9816819097823436070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039699 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A002895.P9816819097823436070

/-! ## A002895.P5359927053243781346

`A039699(n)/record[A126869(n)]`
-/

namespace A002895.P5359927053243781346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039699 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A002895.P5359927053243781346

/-! ## A002895.P17319535996866482374

`A039699(n)/A001405(2*n)`
-/

namespace A002895.P17319535996866482374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039699 n : ℚ) / (A001405 (2 * n) : ℚ)

end

end A002895.P17319535996866482374

/-! ## A002895.P16779587998993355319

`A039699(n)/A056040(2*n)`
-/

namespace A002895.P16779587998993355319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039699 n : ℚ) / (A056040 (2 * n) : ℚ)

end

end A002895.P16779587998993355319

/-! ## A002895.P13484409037167469081

`A039699(n)/A063886(2*n)`
-/

namespace A002895.P13484409037167469081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039699 n : ℚ) / (A063886 (2 * n) : ℚ)

end

end A002895.P13484409037167469081

/-! ## A002895.P10928954870369854190

`A039699(n)/A081668(2*n)`
-/

namespace A002895.P10928954870369854190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039699 n : ℚ) / (A081668 (2 * n) : ℚ)

end

end A002895.P10928954870369854190

/-! ## A002895.P12061765841982850180

`A039699(n)/A126869(2*n)`
-/

namespace A002895.P12061765841982850180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039699 n : ℚ) / (A126869 (2 * n) : ℚ)

end

end A002895.P12061765841982850180

/-! ## A002895.P8760249956046059273

`A039699(n)/A007318(A046092(n))`
-/

namespace A002895.P8760249956046059273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039699 n : ℚ) / (A007318 (A046092 n).toNat : ℚ)

end

end A002895.P8760249956046059273

/-!
# A002896: Number of 2n-step polygons on cubic lattice.

The programs for A002896, there is no canonical definition to state claims against.
-/

/-! ## A002896.P6074808567268430128

`C(2*n, n)*A002893(n)`
-/

namespace A002896.P6074808567268430128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A002893 n

end

end A002896.P6074808567268430128

/-! ## A002896.P2077238497482873813

`A000984(n)*A002893(n)`
-/

namespace A002896.P2077238497482873813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A002893 n

end

end A002896.P2077238497482873813

/-! ## A002896.P652125710917539926

`sqrt(A002894(n))*A002893(n)`
-/

namespace A002896.P652125710917539926
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A002893 n : ℝ)

end

end A002896.P652125710917539926

/-! ## A002896.P5281700534800768397

`record[A081668(n)]*A002893(n)`
-/

namespace A002896.P5281700534800768397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002893 n

end

end A002896.P5281700534800768397

/-! ## A002896.P2357348231011893593

`record[A126869(n)]*A002893(n)`
-/

namespace A002896.P2357348231011893593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002893 n

end

end A002896.P2357348231011893593

/-! ## A002896.P15674854637977383384

`A001405(2*n)*A002893(n)`
-/

namespace A002896.P15674854637977383384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A002893 n

end

end A002896.P15674854637977383384

/-! ## A002896.P5610323033892445600

`A002893(n)*A081668(2*n)`
-/

namespace A002896.P5610323033892445600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n * A081668 (2 * n)

end

end A002896.P5610323033892445600

/-! ## A002896.P16505533932228778531

`A002893(n)*A126869(2*n)`
-/

namespace A002896.P16505533932228778531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n * A126869 (2 * n)

end

end A002896.P16505533932228778531

/-! ## A002896.P9565410088412822344

`A002893(n)*A007318(A046092(n))`
-/

namespace A002896.P9565410088412822344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n * A007318 (A046092 n).toNat

end

end A002896.P9565410088412822344

/-! ## A002896.P6093642614227480345

`A002893(n)/A169714(n)*A287317(n)`
-/

namespace A002896.P6093642614227480345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002893 n : ℚ) / (A169714 n : ℚ) * (A287317 n : ℚ)

end

end A002896.P6093642614227480345

/-!
# A002897: a(n) = binomial(2n,n)^3.

The programs for A002897, the canonical program `A002897.P4258650905158753039` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002897 has offset 0).

The definition of A002897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, n)^3` (program `A002897.P4258650905158753039`, by `A002897.P4258650905158753039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002897.P4258650905158753039

`C(2*n, n)^3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002897

/-- `C(2*n, n)^3` -/
def P4258650905158753039.Spec : Prop :=
  ∀ n, (P4258650905158753039.a n : ℤ) = A002897 n

theorem P4258650905158753039.correct : P4258650905158753039.Spec := by
  intro n
  simp only [A002897]

end A002897

/-! ## A002897.P1259354243734943458

`C(2*n, n)²*C(2*n, n)`
-/

namespace A002897.P1259354243734943458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n ^ 2 * Nat.choose (2 * n) n

end

end A002897.P1259354243734943458

namespace A002897

/-- `C(2*n, n)²*C(2*n, n)` -/
def P1259354243734943458.Spec : Prop :=
  ∀ n, (P1259354243734943458.a n : ℤ) = A002897 n

theorem P1259354243734943458.correct : P1259354243734943458.Spec := by
  intro n
  simp only [A002897, Nat.add_sub_cancel, A002897.P1259354243734943458.a, A002897.P4258650905158753039.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002897

/-! ## A002897.P212073044542783817

`(4-2/n)^3*a(n-1)` with `a(0)=1`
-/

namespace A002897.P212073044542783817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 2 / (n : ℚ)) ^ 3 * a (n - 1)

end

end A002897.P212073044542783817

namespace A002897

/-- `(4-2/n)^3*a(n-1)` -/
def P212073044542783817.Spec : Prop :=
  ∀ n, P212073044542783817.a n = (A002897 n : ℚ)

end A002897

/-! ## A002897.P654662118825609301

`sqrt(record[C(n, floor(n/2))²/(-1)^n])^3`
-/

namespace A002897.P654662118825609301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) ^ 3

end

end A002897.P654662118825609301

namespace A002897

/-- `sqrt(record[C(n, floor(n/2))²/(-1)^n])^3` -/
def P654662118825609301.Spec : Prop :=
  ∀ n, P654662118825609301.a n = (A002897 n : ℝ)

end A002897

/-! ## A002897.P6404999482170800043

`record[a(n-1)/(floor(n/2)/n-1)]^3` with `a(0)=1`
-/

namespace A002897.P6404999482170800043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3

end

end A002897.P6404999482170800043

namespace A002897

/-- `record[a(n-1)/(floor(n/2)/n-1)]^3` -/
def P6404999482170800043.Spec : Prop :=
  ∀ n, P6404999482170800043.a n = (A002897 n : ℚ)

end A002897

/-! ## A002897.P7099798826480461652

`A000984(n)^3`
-/

namespace A002897.P7099798826480461652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 3

end

end A002897.P7099798826480461652

namespace A002897

/-- `A000984(n)^3` -/
def P7099798826480461652.Spec : Prop :=
  ∀ n, P7099798826480461652.a n = A002897 n

theorem P7099798826480461652.correct : P7099798826480461652.Spec := by
  intro n
  simp only [A002897, Nat.add_sub_cancel, A002897.P7099798826480461652.a, A002897.P4258650905158753039.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002897

/-! ## A002897.P11943725699922749588

`sqrt(A002894(n))^3`
-/

namespace A002897.P11943725699922749588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) ^ 3

end

end A002897.P11943725699922749588

namespace A002897

/-- `sqrt(A002894(n))^3` -/
def P11943725699922749588.Spec : Prop :=
  ∀ n, P11943725699922749588.a n = (A002897 n : ℝ)

end A002897

/-! ## A002897.P5977063237404763634

`A181543(∑[4*n])`
-/

namespace A002897.P5977063237404763634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181543 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002897.P5977063237404763634

namespace A002897

/-- `A181543(∑[4*n])` -/
def P5977063237404763634.Spec : Prop :=
  ∀ n, P5977063237404763634.a n = A002897 n

end A002897

/-! ## A002897.P12952695835523639414

`A046521(∑[n])^3`
-/

namespace A002897.P12952695835523639414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A002897.P12952695835523639414

namespace A002897

/-- `A046521(∑[n])^3` -/
def P12952695835523639414.Spec : Prop :=
  ∀ n, P12952695835523639414.a n = A002897 n

end A002897

/-! ## A002897.P3083369261731364420

`A054335(∑[n])^3`
-/

namespace A002897.P3083369261731364420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A002897.P3083369261731364420

namespace A002897

/-- `A054335(∑[n])^3` -/
def P3083369261731364420.Spec : Prop :=
  ∀ n, P3083369261731364420.a n = A002897 n

end A002897

/-!
# A002898: Number of n-step closed paths on hexagonal lattice.

The programs for A002898, there is no canonical definition to state claims against.
-/

/-! ## A002898.P5079960458695168312

`A328748(∑[n+3]+n+3)`
-/

namespace A002898.P5079960458695168312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A002898.P5079960458695168312

/-! ## A002898.P12765519759399555431

`abs(A328748(eq[3, A025581(n)]))`
-/

namespace A002898.P12765519759399555431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A002898.P12765519759399555431

/-! ## A002898.P6950413751156370766

`A265089(∑[n+1]+3)`
-/

namespace A002898.P6950413751156370766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A002898.P6950413751156370766

/-!
# A002899: Number of n-step polygons on f.c.c. lattice.

The programs for A002899, there is no canonical definition to state claims against.
-/

/-! ## A002899.P15709654135751078637

`A049417(A394196(n+1))-char[1]`
-/

namespace A002899.P15709654135751078637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A394196 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002899.P15709654135751078637

/-! ## A002899.P3285989299431136307

`lcm(1-n, A034448(A093989(n+1)))`
-/

namespace A002899.P3285989299431136307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (A034448 (A093989 (n + 1)).toNat)

end

end A002899.P3285989299431136307

