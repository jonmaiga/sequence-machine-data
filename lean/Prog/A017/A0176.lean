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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.B013.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A017600: a(n) = (12*n + 6)^8.

The programs for A017600, the canonical program `A017600.P10892471795768126131` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017600 has offset 0).

The definition of A017600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+6)^8` (program `A017600.P10892471795768126131`, by `A017600.P10892471795768126131.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017600.P10892471795768126131

`(12*n+6)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017600

/-- `(12*n+6)^8` -/
def P10892471795768126131.Spec : Prop :=
  ∀ n, (P10892471795768126131.a n : ℤ) = A017600 n

theorem P10892471795768126131.correct : P10892471795768126131.Spec := by
  intro n
  simp only [A017600]

end A017600

/-! ## A017600.P5824731854267276243

`lcm(4, (3*(2*n+1))²)²²`
-/

namespace A017600.P5824731854267276243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 ((3 * (2 * n + 1)) ^ 2) ^ 2) ^ 2

end

end A017600.P5824731854267276243

namespace A017600

/-- `lcm(4, (3*(2*n+1))²)²²` -/
def P5824731854267276243.Spec : Prop :=
  ∀ n, (P5824731854267276243.a n : ℤ) = A017600 n

end A017600

/-! ## A017600.P8544499733349502377

`A017596(n)²`
-/

namespace A017600.P8544499733349502377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017596 n ^ 2

end

end A017600.P8544499733349502377

namespace A017600

/-- `A017596(n)²` -/
def P8544499733349502377.Spec : Prop :=
  ∀ n, P8544499733349502377.a n = A017600 n

end A017600

/-! ## A017600.P14165766462030595785

`A017594(n)²²`
-/

namespace A017600.P14165766462030595785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017594 n ^ 2) ^ 2

end

end A017600.P14165766462030595785

namespace A017600

/-- `A017594(n)²²` -/
def P14165766462030595785.Spec : Prop :=
  ∀ n, P14165766462030595785.a n = A017600 n

end A017600

/-! ## A017600.P14267865734283171916

`lcm(48, A016948(n))²`
-/

namespace A017600.P14267865734283171916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 48 (A016948 n) ^ 2

end

end A017600.P14267865734283171916

namespace A017600

/-- `lcm(48, A016948(n))²` -/
def P14267865734283171916.Spec : Prop :=
  ∀ n, (P14267865734283171916.a n : ℤ) = A017600 n

end A017600

/-! ## A017600.P18425067153824370661

`A017593(n)²²²`
-/

namespace A017600.P18425067153824370661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017593 n ^ 2) ^ 2) ^ 2

end

end A017600.P18425067153824370661

namespace A017600

/-- `A017593(n)²²²` -/
def P18425067153824370661.Spec : Prop :=
  ∀ n, P18425067153824370661.a n = A017600 n

end A017600

/-! ## A017600.P5309212595991428499

`Δ[A033581(n)]²²²`
-/

namespace A017600.P5309212595991428499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017600.P5309212595991428499

namespace A017600

/-- `Δ[A033581(n)]²²²` -/
def P5309212595991428499.Spec : Prop :=
  ∀ n, P5309212595991428499.a n = A017600 n

end A017600

/-! ## A017600.P3486436631671000024

`(A017581(n)+1)²²²`
-/

namespace A017600.P3486436631671000024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017581 n + 1) ^ 2) ^ 2) ^ 2

end

end A017600.P3486436631671000024

namespace A017600

/-- `(A017581(n)+1)²²²` -/
def P3486436631671000024.Spec : Prop :=
  ∀ n, P3486436631671000024.a n = A017600 n

end A017600

/-! ## A017600.P7218058549540658950

`(A017569(n)+2)²²²`
-/

namespace A017600.P7218058549540658950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017569 n + 2) ^ 2) ^ 2) ^ 2

end

end A017600.P7218058549540658950

namespace A017600

/-- `(A017569(n)+2)²²²` -/
def P7218058549540658950.Spec : Prop :=
  ∀ n, P7218058549540658950.a n = A017600 n

end A017600

/-! ## A017600.P15210974346033486664

`(1-A017605(n))²²²`
-/

namespace A017600.P15210974346033486664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017605 n) ^ 2) ^ 2) ^ 2

end

end A017600.P15210974346033486664

namespace A017600

/-- `(1-A017605(n))²²²` -/
def P15210974346033486664.Spec : Prop :=
  ∀ n, P15210974346033486664.a n = A017600 n

end A017600

/-! ## A017600.P5261734569083949417

`(2-A017617(n))²²²`
-/

namespace A017600.P5261734569083949417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017617 n) ^ 2) ^ 2) ^ 2

end

end A017600.P5261734569083949417

namespace A017600

/-- `(2-A017617(n))²²²` -/
def P5261734569083949417.Spec : Prop :=
  ∀ n, P5261734569083949417.a n = A017600 n

end A017600

/-! ## A017600.P12764344925567901491

`(2*A016945(n))²²²`
-/

namespace A017600.P12764344925567901491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016945 n) ^ 2) ^ 2) ^ 2

end

end A017600.P12764344925567901491

namespace A017600

/-- `(2*A016945(n))²²²` -/
def P12764344925567901491.Spec : Prop :=
  ∀ n, P12764344925567901491.a n = A017600 n

end A017600

/-! ## A017600.P4762176084652029638

`(A017461(n)+n)²²²`
-/

namespace A017600.P4762176084652029638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017461 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017600.P4762176084652029638

namespace A017600

/-- `(A017461(n)+n)²²²` -/
def P4762176084652029638.Spec : Prop :=
  ∀ n, P4762176084652029638.a n = A017600 n

end A017600

/-! ## A017600.P3068350605796282144

`(n-A186113(n))²²²`
-/

namespace A017600.P3068350605796282144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A186113 n) ^ 2) ^ 2) ^ 2

end

end A017600.P3068350605796282144

namespace A017600

/-- `(n-A186113(n))²²²` -/
def P3068350605796282144.Spec : Prop :=
  ∀ n, P3068350605796282144.a n = A017600 n

end A017600

/-! ## A017600.P12230490084067268992

`A017594(n)*A017598(n)`
-/

namespace A017600.P12230490084067268992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017594 n * A017598 n

end

end A017600.P12230490084067268992

namespace A017600

/-- `A017594(n)*A017598(n)` -/
def P12230490084067268992.Spec : Prop :=
  ∀ n, P12230490084067268992.a n = A017600 n

end A017600

/-! ## A017600.P11070391082560812359

`A017595(n)*A017597(n)`
-/

namespace A017600.P11070391082560812359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017595 n * A017597 n

end

end A017600.P11070391082560812359

namespace A017600

/-- `A017595(n)*A017597(n)` -/
def P11070391082560812359.Spec : Prop :=
  ∀ n, P11070391082560812359.a n = A017600 n

end A017600

/-! ## A017600.P12955370200539943515

`Δ[A097803(n)]²²²`
-/

namespace A017600.P12955370200539943515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017600.P12955370200539943515

namespace A017600

/-- `Δ[A097803(n)]²²²` -/
def P12955370200539943515.Spec : Prop :=
  ∀ n, P12955370200539943515.a n = A017600 n

end A017600

/-! ## A017600.P3607352996754111313

`Δ[A140811(n)]²²²`
-/

namespace A017600.P3607352996754111313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017600.P3607352996754111313

namespace A017600

/-- `Δ[A140811(n)]²²²` -/
def P3607352996754111313.Spec : Prop :=
  ∀ n, P3607352996754111313.a n = A017600 n

end A017600

/-! ## A017600.P14849363198321596516

`Δ[A227776(n)]²²²`
-/

namespace A017600.P14849363198321596516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017600.P14849363198321596516

namespace A017600

/-- `Δ[A227776(n)]²²²` -/
def P14849363198321596516.Spec : Prop :=
  ∀ n, P14849363198321596516.a n = A017600 n

end A017600

/-! ## A017600.P11704737438946295530

`Δ[Δ[A152064(n)]]²²²`
-/

namespace A017600.P11704737438946295530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017600.P11704737438946295530

namespace A017600

/-- `Δ[Δ[A152064(n)]]²²²` -/
def P11704737438946295530.Spec : Prop :=
  ∀ n, P11704737438946295530.a n = A017600 n

end A017600

/-!
# A017601: a(n) = (12*n + 6)^9.

The programs for A017601, the canonical program `A017601.P6407831154382190577` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017601 has offset 0).

The definition of A017601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+6)^9` (program `A017601.P6407831154382190577`, by `A017601.P6407831154382190577.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017601.P6407831154382190577

`(12*n+6)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017601

/-- `(12*n+6)^9` -/
def P6407831154382190577.Spec : Prop :=
  ∀ n, (P6407831154382190577.a n : ℤ) = A017601 n

theorem P6407831154382190577.correct : P6407831154382190577.Spec := by
  intro n
  simp only [A017601]

end A017601

/-! ## A017601.P986069634337142787

`A017595(n)*A017598(n)`
-/

namespace A017601.P986069634337142787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017595 n * A017598 n

end

end A017601.P986069634337142787

namespace A017601

/-- `A017595(n)*A017598(n)` -/
def P986069634337142787.Spec : Prop :=
  ∀ n, P986069634337142787.a n = A017601 n

end A017601

/-! ## A017601.P17230789057800607151

`A017596(n)*A017597(n)`
-/

namespace A017601.P17230789057800607151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017596 n * A017597 n

end

end A017601.P17230789057800607151

namespace A017601

/-- `A017596(n)*A017597(n)` -/
def P17230789057800607151.Spec : Prop :=
  ∀ n, P17230789057800607151.a n = A017601 n

end A017601

/-! ## A017601.P6785007493501700098

`A017594(n)²*A017597(n)`
-/

namespace A017601.P6785007493501700098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017594 n ^ 2 * A017597 n

end

end A017601.P6785007493501700098

namespace A017601

/-- `A017594(n)²*A017597(n)` -/
def P6785007493501700098.Spec : Prop :=
  ∀ n, P6785007493501700098.a n = A017601 n

end A017601

/-! ## A017601.P9308439116525484615

`A016917(2*n+1)`
-/

namespace A017601.P9308439116525484615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016917 (2 * n + 1)

end

end A017601.P9308439116525484615

namespace A017601

/-- `A016917(2*n+1)` -/
def P9308439116525484615.Spec : Prop :=
  ∀ n, P9308439116525484615.a n = A017601 n

end A017601

/-! ## A017601.P4122140001281882807

`A016833(Δ[n²]+n)`
-/

namespace A017601.P4122140001281882807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016833 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat

end

end A017601.P4122140001281882807

namespace A017601

/-- `A016833(Δ[n²]+n)` -/
def P4122140001281882807.Spec : Prop :=
  ∀ n, P4122140001281882807.a n = A017601 n

end A017601

/-! ## A017601.P17015611463355551963

`A016749(3*(2*n+1))`
-/

namespace A017601.P17015611463355551963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016749 (3 * (2 * n + 1))

end

end A017601.P17015611463355551963

namespace A017601

/-- `A016749(3*(2*n+1))` -/
def P17015611463355551963.Spec : Prop :=
  ∀ n, P17015611463355551963.a n = A017601 n

end A017601

/-! ## A017601.P2830972320387953328

`A001017(6*(2*n+1))`
-/

namespace A017601.P2830972320387953328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (6 * (2 * n + 1))

end

end A017601.P2830972320387953328

namespace A017601

/-- `A001017(6*(2*n+1))` -/
def P2830972320387953328.Spec : Prop :=
  ∀ n, P2830972320387953328.a n = A017601 n

end A017601

/-!
# A017602: 

The programs for A017602, there is no canonical definition to state claims against.
-/

/-! ## A017602.P16234421217229870811

`Δ[6*n²]^10`
-/

namespace A017602.P16234421217229870811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 10

end

end A017602.P16234421217229870811

/-! ## A017602.P4877454164766936829

`A017597(n)²`
-/

namespace A017602.P4877454164766936829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017597 n ^ 2

end

end A017602.P4877454164766936829

/-! ## A017602.P9118040504158587596

`(A017593(n)^5)²`
-/

namespace A017602.P9118040504158587596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017593 n ^ 5) ^ 2

end

end A017602.P9118040504158587596

/-! ## A017602.P3876495463691518083

`(32*A016949(n))²`
-/

namespace A017602.P3876495463691518083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * A016949 n) ^ 2

end

end A017602.P3876495463691518083

/-! ## A017602.P14745553260395767674

`sqrt(A017596(n)^5)`
-/

namespace A017602.P14745553260395767674
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017596 n ^ 5 : ℝ)

end

end A017602.P14745553260395767674

/-! ## A017602.P18331936404271515268

`A016774(A016813(n)+1)`
-/

namespace A017602.P18331936404271515268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016774 (A016813 n + 1).toNat

end

end A017602.P18331936404271515268

/-! ## A017602.P12631272038220277269

`A016774(xor(3, A016813(n)))`
-/

namespace A017602.P12631272038220277269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016774 (Int.xor 3 (A016813 n)).toNat

end

end A017602.P12631272038220277269

/-! ## A017602.P1162505378915752283

`A016750(Δ[3*n²])`
-/

namespace A017602.P1162505378915752283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016750 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017602.P1162505378915752283

/-! ## A017602.P259765313968745238

`A008454(6*Δ[n²])`
-/

namespace A017602.P259765313968745238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (6 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A017602.P259765313968745238

/-!
# A017603: 

The programs for A017603, there is no canonical definition to state claims against.
-/

/-! ## A017603.P6090741614452144813

`Δ[A033581(n)]^11`
-/

namespace A017603.P6090741614452144813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 11

end

end A017603.P6090741614452144813

/-! ## A017603.P819339448748891453

`(A017569(n)+2)^11`
-/

namespace A017603.P819339448748891453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017569 n + 2) ^ 11

end

end A017603.P819339448748891453

/-! ## A017603.P17147311371370771770

`Δ[A097803(n)]^11`
-/

namespace A017603.P17147311371370771770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 11

end

end A017603.P17147311371370771770

/-! ## A017603.P9035468502324125717

`Δ[A140811(n)]^11`
-/

namespace A017603.P9035468502324125717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 11

end

end A017603.P9035468502324125717

/-! ## A017603.P968353077788639065

`A016825(A016777(n))^11`
-/

namespace A017603.P968353077788639065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A016777 n).toNat ^ 11

end

end A017603.P968353077788639065

/-! ## A017603.P13241657935084316744

`A008458(Δ[n²])^11`
-/

namespace A017603.P13241657935084316744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 11

end

end A017603.P13241657935084316744

/-! ## A017603.P10470835025343785457

`A004524(A073762(n+1))^11`
-/

namespace A017603.P10470835025343785457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A073762 (n + 1)).toNat ^ 11

end

end A017603.P10470835025343785457

/-!
# A017604: 

The programs for A017604, there is no canonical definition to state claims against.
-/

/-! ## A017604.P13495970626401476982

`(12*n+6)^12`
-/

namespace A017604.P13495970626401476982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (12 * n + 6) ^ 12

end

end A017604.P13495970626401476982

/-! ## A017604.P4758357771809561835

`A016911(Δ[n²])²²`
-/

namespace A017604.P4758357771809561835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016911 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A017604.P4758357771809561835

/-! ## A017604.P4138998474549184573

`A016914(2*n+1)²`
-/

namespace A017604.P4138998474549184573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016914 (2 * n + 1) ^ 2

end

end A017604.P4138998474549184573

/-! ## A017604.P7124826704707038476

`A016776(Δ[2*n²])`
-/

namespace A017604.P7124826704707038476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016776 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017604.P7124826704707038476

/-! ## A017604.P14449147412827132260

`A016752(Δ[3*n²])`
-/

namespace A017604.P14449147412827132260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016752 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017604.P14449147412827132260

/-! ## A017604.P4328648665066268613

`A000578(A017569(n)+2)²²`
-/

namespace A017604.P4328648665066268613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017569 n + 2).toNat ^ 2) ^ 2

end

end A017604.P4328648665066268613

/-! ## A017604.P16075413961634920400

`A000578(A017617(n)-2)²²`
-/

namespace A017604.P16075413961634920400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017617 n - 2).toNat ^ 2) ^ 2

end

end A017604.P16075413961634920400

/-!
# A017605: a(n) = 12*n + 7.

The programs for A017605, the canonical program `A017605.P12903970419572684084` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017605 has offset 0).

The definition of A017605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+7` (program `A017605.P12903970419572684084`, by `A017605.P12903970419572684084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017605.P12903970419572684084

`12*n+7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017605

/-- `12*n+7` -/
def P12903970419572684084.Spec : Prop :=
  ∀ n, (P12903970419572684084.a n : ℤ) = A017605 n

theorem P12903970419572684084.correct : P12903970419572684084.Spec := by
  intro n
  simp only [A017605]

end A017605

/-!
# A017606: a(n) = (12*n + 7)^2.

The programs for A017606, the canonical program `A017606.P7573199839791972629` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017606 has offset 0).

The definition of A017606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+7)²` (program `A017606.P7573199839791972629`, by `A017606.P7573199839791972629.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017606.P7573199839791972629

`(12*n+7)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017606

/-- `(12*n+7)²` -/
def P7573199839791972629.Spec : Prop :=
  ∀ n, (P7573199839791972629.a n : ℤ) = A017606 n

theorem P7573199839791972629.correct : P7573199839791972629.Spec := by
  intro n
  simp only [A017606]

end A017606

/-! ## A017606.P15457121096698054328

`a(n-1)+288*n+24` with `a(0)=49`
-/

namespace A017606.P15457121096698054328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [49] fun n a =>
  a (n - 1) + 288 * n + 24

end

end A017606.P15457121096698054328

namespace A017606

/-- `a(n-1)+288*n+24` -/
def P15457121096698054328.Spec : Prop :=
  ∀ n, (P15457121096698054328.a n : ℤ) = A017606 n

theorem P15457121096698054328.correct : P15457121096698054328.Spec := by
  intro n
  induction n with
  | zero => simp [A017606, A017606.P15457121096698054328.a, A017606.P7573199839791972629.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A017606, Nat.add_sub_cancel, A017606.P15457121096698054328.a, A017606.P7573199839791972629.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A017606

/-! ## A017606.P14060681550594686012

`or(2, 12*n+5)^2`
-/

namespace A017606.P14060681550594686012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (12 * n + 5) ^ 2

end

end A017606.P14060681550594686012

namespace A017606

/-- `or(2, 12*n+5)^2` -/
def P14060681550594686012.Spec : Prop :=
  ∀ n, (P14060681550594686012.a n : ℤ) = A017606 n

end A017606

/-! ## A017606.P11940138429804241034

`xor(1, 12*n+6)^2`
-/

namespace A017606.P11940138429804241034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (12 * n + 6) ^ 2

end

end A017606.P11940138429804241034

namespace A017606

/-- `xor(1, 12*n+6)^2` -/
def P11940138429804241034.Spec : Prop :=
  ∀ n, (P11940138429804241034.a n : ℤ) = A017606 n

end A017606

/-! ## A017606.P17121402394310469783

`record[(2-3*xor(3, n))²]`
-/

namespace A017606.P17121402394310469783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (3 * Nat.xor 3 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017606.P17121402394310469783

namespace A017606

/-- `record[(2-3*xor(3, n))²]` -/
def P17121402394310469783.Spec : Prop :=
  ∀ n, P17121402394310469783.a n = A017606 n

end A017606

/-! ## A017606.P4556472633164083671

`record[xor(1, 6*xor(1, n))²]`
-/

namespace A017606.P4556472633164083671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017606.P4556472633164083671

namespace A017606

/-- `record[xor(1, 6*xor(1, n))²]` -/
def P4556472633164083671.Spec : Prop :=
  ∀ n, (P4556472633164083671.a n : ℤ) = A017606 n

end A017606

/-! ## A017606.P3838738994545459105

`(2-3*or(3, 4*n))^2`
-/

namespace A017606.P3838738994545459105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (3 * Nat.lor 3 (4 * n) : ℤ)) ^ 2

end

end A017606.P3838738994545459105

namespace A017606

/-- `(2-3*or(3, 4*n))^2` -/
def P3838738994545459105.Spec : Prop :=
  ∀ n, P3838738994545459105.a n = A017606 n

end A017606

/-! ## A017606.P4152558736030668768

`sqrt(A017608(n))`
-/

namespace A017606.P4152558736030668768
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017608 n : ℝ)

end

end A017606.P4152558736030668768

namespace A017606

/-- `sqrt(A017608(n))` -/
def P4152558736030668768.Spec : Prop :=
  ∀ n, P4152558736030668768.a n = (A017606 n : ℝ)

end A017606

/-! ## A017606.P4223476136385007010

`sqrt(sqrt(A017612(n)))`
-/

namespace A017606.P4223476136385007010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017612 n : ℝ))

end

end A017606.P4223476136385007010

namespace A017606

/-- `sqrt(sqrt(A017612(n)))` -/
def P4223476136385007010.Spec : Prop :=
  ∀ n, P4223476136385007010.a n = (A017606 n : ℝ)

end A017606

/-! ## A017606.P3973652932853100928

`A017610(n)^(1/3)`
-/

namespace A017606.P3973652932853100928
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017610 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017606.P3973652932853100928

namespace A017606

/-- `A017610(n)^(1/3)` -/
def P3973652932853100928.Spec : Prop :=
  ∀ n, P3973652932853100928.a n = (A017606 n : ℝ)

end A017606

/-! ## A017606.P13492742685899949940

`A017607(n)^(2/3)`
-/

namespace A017606.P13492742685899949940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017607 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017606.P13492742685899949940

namespace A017606

/-- `A017607(n)^(2/3)` -/
def P13492742685899949940.Spec : Prop :=
  ∀ n, P13492742685899949940.a n = (A017606 n : ℝ)

end A017606

/-! ## A017606.P7296484323350746733

`A017605(n)*A017605(n)`
-/

namespace A017606.P7296484323350746733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n * A017605 n

end

end A017606.P7296484323350746733

namespace A017606

/-- `A017605(n)*A017605(n)` -/
def P7296484323350746733.Spec : Prop :=
  ∀ n, P7296484323350746733.a n = A017606 n

end A017606

/-! ## A017606.P7407978813375278699

`A017607(n)/A017605(n)`
-/

namespace A017606.P7407978813375278699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017607 n : ℚ) / (A017605 n : ℚ)

end

end A017606.P7407978813375278699

namespace A017606

/-- `A017607(n)/A017605(n)` -/
def P7407978813375278699.Spec : Prop :=
  ∀ n, P7407978813375278699.a n = (A017606 n : ℚ)

end A017606

/-! ## A017606.P9520885560176222416

`A017609(n)/A017607(n)`
-/

namespace A017606.P9520885560176222416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017609 n : ℚ) / (A017607 n : ℚ)

end

end A017606.P9520885560176222416

namespace A017606

/-- `A017609(n)/A017607(n)` -/
def P9520885560176222416.Spec : Prop :=
  ∀ n, P9520885560176222416.a n = (A017606 n : ℚ)

end A017606

/-! ## A017606.P1187943860448372669

`A017610(n)/A017608(n)`
-/

namespace A017606.P1187943860448372669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017610 n : ℚ) / (A017608 n : ℚ)

end

end A017606.P1187943860448372669

namespace A017606

/-- `A017610(n)/A017608(n)` -/
def P1187943860448372669.Spec : Prop :=
  ∀ n, P1187943860448372669.a n = (A017606 n : ℚ)

end A017606

/-! ## A017606.P4901022624933983991

`A017607(n)²/A017608(n)`
-/

namespace A017606.P4901022624933983991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017607 n ^ 2 : ℚ) / (A017608 n : ℚ)

end

end A017606.P4901022624933983991

namespace A017606

/-- `A017607(n)²/A017608(n)` -/
def P4901022624933983991.Spec : Prop :=
  ∀ n, P4901022624933983991.a n = (A017606 n : ℚ)

end A017606

/-! ## A017606.P4563799942789382326

`A156719(n+1)+A017029(n)`
-/

namespace A017606.P4563799942789382326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156719 (n + 1) + A017029 n

end

end A017606.P4563799942789382326

namespace A017606

/-- `A156719(n+1)+A017029(n)` -/
def P4563799942789382326.Spec : Prop :=
  ∀ n, P4563799942789382326.a n = A017606 n

end A017606

/-! ## A017606.P7796184021813232375

`A156639(n+1)-A016886(n)`
-/

namespace A017606.P7796184021813232375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156639 (n + 1) - A016886 n

end

end A017606.P7796184021813232375

namespace A017606

/-- `A156639(n+1)-A016886(n)` -/
def P7796184021813232375.Spec : Prop :=
  ∀ n, P7796184021813232375.a n = A017606 n

end A017606

/-! ## A017606.P7968415881601327732

`A017610(n)/A017605(n)²²`
-/

namespace A017606.P7968415881601327732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017610 n : ℚ) / ((A017605 n ^ 2) ^ 2 : ℚ)

end

end A017606.P7968415881601327732

namespace A017606

/-- `A017610(n)/A017605(n)²²` -/
def P7968415881601327732.Spec : Prop :=
  ∀ n, P7968415881601327732.a n = (A017606 n : ℚ)

end A017606

/-! ## A017606.P13891620904263467114

`A016922(Δ[n²])`
-/

namespace A017606.P13891620904263467114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017606.P13891620904263467114

namespace A017606

/-- `A016922(Δ[n²])` -/
def P13891620904263467114.Spec : Prop :=
  ∀ n, P13891620904263467114.a n = A017606 n

end A017606

/-!
# A017607: a(n) = (12*n + 7)^3.

The programs for A017607, the canonical program `A017607.P6598216907275806349` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017607 has offset 0).

The definition of A017607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+7)^3` (program `A017607.P6598216907275806349`, by `A017607.P6598216907275806349.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017607.P6598216907275806349

`(12*n+7)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017607

/-- `(12*n+7)^3` -/
def P6598216907275806349.Spec : Prop :=
  ∀ n, (P6598216907275806349.a n : ℤ) = A017607 n

theorem P6598216907275806349.correct : P6598216907275806349.Spec := by
  intro n
  simp only [A017607]

end A017607

/-! ## A017607.P16370112424448819225

`sqrt(A017610(n))`
-/

namespace A017607.P16370112424448819225
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017610 n : ℝ)

end

end A017607.P16370112424448819225

namespace A017607

/-- `sqrt(A017610(n))` -/
def P16370112424448819225.Spec : Prop :=
  ∀ n, P16370112424448819225.a n = (A017607 n : ℝ)

end A017607

/-! ## A017607.P5715640220386817649

`sqrt(A017606(n)^3)`
-/

namespace A017607.P5715640220386817649
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017606 n ^ 3 : ℝ)

end

end A017607.P5715640220386817649

namespace A017607

/-- `sqrt(A017606(n)^3)` -/
def P5715640220386817649.Spec : Prop :=
  ∀ n, P5715640220386817649.a n = (A017607 n : ℝ)

end A017607

/-! ## A017607.P17606858585215696873

`A017605(n)*A017606(n)`
-/

namespace A017607.P17606858585215696873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n * A017606 n

end

end A017607.P17606858585215696873

namespace A017607

/-- `A017605(n)*A017606(n)` -/
def P17606858585215696873.Spec : Prop :=
  ∀ n, P17606858585215696873.a n = A017607 n

end A017607

/-! ## A017607.P15228095087754448472

`A017608(n)/A017605(n)`
-/

namespace A017607.P15228095087754448472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017608 n : ℚ) / (A017605 n : ℚ)

end

end A017607.P15228095087754448472

namespace A017607

/-- `A017608(n)/A017605(n)` -/
def P15228095087754448472.Spec : Prop :=
  ∀ n, P15228095087754448472.a n = (A017607 n : ℚ)

end A017607

/-! ## A017607.P13620299979540726722

`A017609(n)/A017606(n)`
-/

namespace A017607.P13620299979540726722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017609 n : ℚ) / (A017606 n : ℚ)

end

end A017607.P13620299979540726722

namespace A017607

/-- `A017609(n)/A017606(n)` -/
def P13620299979540726722.Spec : Prop :=
  ∀ n, P13620299979540726722.a n = (A017607 n : ℚ)

end A017607

/-! ## A017607.P11765251646863829359

`A017609(n)/A017605(n)²`
-/

namespace A017607.P11765251646863829359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017609 n : ℚ) / (A017605 n ^ 2 : ℚ)

end

end A017607.P11765251646863829359

namespace A017607

/-- `A017609(n)/A017605(n)²` -/
def P11765251646863829359.Spec : Prop :=
  ∀ n, P11765251646863829359.a n = (A017607 n : ℚ)

end A017607

/-! ## A017607.P17655572822484693455

`A017611(n)/A017606(n)²`
-/

namespace A017607.P17655572822484693455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017611 n : ℚ) / (A017606 n ^ 2 : ℚ)

end

end A017607.P17655572822484693455

namespace A017607

/-- `A017611(n)/A017606(n)²` -/
def P17655572822484693455.Spec : Prop :=
  ∀ n, P17655572822484693455.a n = (A017607 n : ℚ)

end A017607

/-! ## A017607.P1560259271517146569

`A017611(n)/A017605(n)²²`
-/

namespace A017607.P1560259271517146569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017611 n : ℚ) / ((A017605 n ^ 2) ^ 2 : ℚ)

end

end A017607.P1560259271517146569

namespace A017607

/-- `A017611(n)/A017605(n)²²` -/
def P1560259271517146569.Spec : Prop :=
  ∀ n, P1560259271517146569.a n = (A017607 n : ℚ)

end A017607

/-! ## A017607.P219657595999861756

`A017610(n)/(A017605(n)²*A017605(n))`
-/

namespace A017607.P219657595999861756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017610 n : ℚ) / (A017605 n ^ 2 * A017605 n : ℚ)

end

end A017607.P219657595999861756

namespace A017607

/-- `A017610(n)/(A017605(n)²*A017605(n))` -/
def P219657595999861756.Spec : Prop :=
  ∀ n, P219657595999861756.a n = (A017607 n : ℚ)

end A017607

/-! ## A017607.P5438459509760733586

`A016923(Δ[n²])`
-/

namespace A017607.P5438459509760733586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017607.P5438459509760733586

namespace A017607

/-- `A016923(Δ[n²])` -/
def P5438459509760733586.Spec : Prop :=
  ∀ n, P5438459509760733586.a n = A017607 n

end A017607

/-! ## A017607.P13953324310354293267

`record[A166639(n)^3]`
-/

namespace A017607.P13953324310354293267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017607.P13953324310354293267

namespace A017607

/-- `record[A166639(n)^3]` -/
def P13953324310354293267.Spec : Prop :=
  ∀ n, P13953324310354293267.a n = A017607 n

end A017607

/-! ## A017607.P11493051009875557517

`sqrt(A016926(2*n+1))`
-/

namespace A017607.P11493051009875557517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016926 (2 * n + 1) : ℝ)

end

end A017607.P11493051009875557517

namespace A017607

/-- `sqrt(A016926(2*n+1))` -/
def P11493051009875557517.Spec : Prop :=
  ∀ n, P11493051009875557517.a n = (A017607 n : ℝ)

end A017607

/-! ## A017607.P18380317633908890046

`A017547(2*n+1)/8`
-/

namespace A017607.P18380317633908890046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017547 (2 * n + 1) : ℚ) / 8

end

end A017607.P18380317633908890046

namespace A017607

/-- `A017547(2*n+1)/8` -/
def P18380317633908890046.Spec : Prop :=
  ∀ n, P18380317633908890046.a n = (A017607 n : ℚ)

end A017607

/-! ## A017607.P8741193354839858462

`A016924(2*n+1)/(12*n+7)`
-/

namespace A017607.P8741193354839858462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016924 (2 * n + 1) : ℚ) / (12 * n + 7 : ℚ)

end

end A017607.P8741193354839858462

namespace A017607

/-- `A016924(2*n+1)/(12*n+7)` -/
def P8741193354839858462.Spec : Prop :=
  ∀ n, P8741193354839858462.a n = (A017607 n : ℚ)

end A017607

/-! ## A017607.P16539179392335528624

`A016925(2*n+1)/(12*n+7)²`
-/

namespace A017607.P16539179392335528624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016925 (2 * n + 1) : ℚ) / ((12 * n + 7) ^ 2 : ℚ)

end

end A017607.P16539179392335528624

namespace A017607

/-- `A016925(2*n+1)/(12*n+7)²` -/
def P16539179392335528624.Spec : Prop :=
  ∀ n, P16539179392335528624.a n = (A017607 n : ℚ)

end A017607

/-! ## A017607.P6936745896733582138

`A166639(2*n)²*A166639(2*n)`
-/

namespace A017607.P6936745896733582138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 (2 * n) ^ 2 * A166639 (2 * n)

end

end A017607.P6936745896733582138

namespace A017607

/-- `A166639(2*n)²*A166639(2*n)` -/
def P6936745896733582138.Spec : Prop :=
  ∀ n, P6936745896733582138.a n = A017607 n

end A017607

/-! ## A017607.P16544963900010302052

`A016921(2*n+1)*A016922(2*n+1)`
-/

namespace A017607.P16544963900010302052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n + 1) * A016922 (2 * n + 1)

end

end A017607.P16544963900010302052

namespace A017607

/-- `A016921(2*n+1)*A016922(2*n+1)` -/
def P16544963900010302052.Spec : Prop :=
  ∀ n, P16544963900010302052.a n = A017607 n

end A017607

/-! ## A017607.P4528471750196370121

`A016926(2*n+1)/A016923(2*n+1)`
-/

namespace A017607.P4528471750196370121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016926 (2 * n + 1) : ℚ) / (A016923 (2 * n + 1) : ℚ)

end

end A017607.P4528471750196370121

namespace A017607

/-- `A016926(2*n+1)/A016923(2*n+1)` -/
def P4528471750196370121.Spec : Prop :=
  ∀ n, P4528471750196370121.a n = (A017607 n : ℚ)

end A017607

/-! ## A017607.P4450153700945437718

`A016928(2*n+1)/A016925(2*n+1)`
-/

namespace A017607.P4450153700945437718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016928 (2 * n + 1) : ℚ) / (A016925 (2 * n + 1) : ℚ)

end

end A017607.P4450153700945437718

namespace A017607

/-- `A016928(2*n+1)/A016925(2*n+1)` -/
def P4450153700945437718.Spec : Prop :=
  ∀ n, P4450153700945437718.a n = (A017607 n : ℚ)

end A017607

/-!
# A017608: a(n) = (12*n + 7)^4.

The programs for A017608, the canonical program `A017608.P18292931235752520521` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017608 has offset 0).

The definition of A017608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+7)^4` (program `A017608.P18292931235752520521`, by `A017608.P18292931235752520521.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017608.P18292931235752520521

`(12*n+7)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017608

/-- `(12*n+7)^4` -/
def P18292931235752520521.Spec : Prop :=
  ∀ n, (P18292931235752520521.a n : ℤ) = A017608 n

theorem P18292931235752520521.correct : P18292931235752520521.Spec := by
  intro n
  simp only [A017608]

end A017608

/-! ## A017608.P13979856383556018448

`(lcm(2, 12*n)+7)²²`
-/

namespace A017608.P13979856383556018448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (12 * n) + 7) ^ 2) ^ 2

end

end A017608.P13979856383556018448

namespace A017608

/-- `(lcm(2, 12*n)+7)²²` -/
def P13979856383556018448.Spec : Prop :=
  ∀ n, (P13979856383556018448.a n : ℤ) = A017608 n

end A017608

/-! ## A017608.P17665525827419021244

`or(1, 12*n+6)²²`
-/

namespace A017608.P17665525827419021244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n + 6) ^ 2) ^ 2

end

end A017608.P17665525827419021244

namespace A017608

/-- `or(1, 12*n+6)²²` -/
def P17665525827419021244.Spec : Prop :=
  ∀ n, (P17665525827419021244.a n : ℤ) = A017608 n

end A017608

/-! ## A017608.P1839521589258316975

`xor(1, 12*n+6)²²`
-/

namespace A017608.P1839521589258316975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (12 * n + 6) ^ 2) ^ 2

end

end A017608.P1839521589258316975

namespace A017608

/-- `xor(1, 12*n+6)²²` -/
def P1839521589258316975.Spec : Prop :=
  ∀ n, (P1839521589258316975.a n : ℤ) = A017608 n

end A017608

/-! ## A017608.P17397932799781726315

`record[(2-3*xor(3, n))^4]`
-/

namespace A017608.P17397932799781726315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (3 * Nat.xor 3 n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017608.P17397932799781726315

namespace A017608

/-- `record[(2-3*xor(3, n))^4]` -/
def P17397932799781726315.Spec : Prop :=
  ∀ n, P17397932799781726315.a n = A017608 n

end A017608

/-! ## A017608.P17956318503868366842

`Δ[C(2*n+1, 2)+(2*n)²]²²`
-/

namespace A017608.P17956318503868366842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2 + (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017608.P17956318503868366842

namespace A017608

/-- `Δ[C(2*n+1, 2)+(2*n)²]²²` -/
def P17956318503868366842.Spec : Prop :=
  ∀ n, P17956318503868366842.a n = A017608 n

end A017608

/-! ## A017608.P15408808917258824056

`A017606(n)²`
-/

namespace A017608.P15408808917258824056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017606 n ^ 2

end

end A017608.P15408808917258824056

namespace A017608

/-- `A017606(n)²` -/
def P15408808917258824056.Spec : Prop :=
  ∀ n, P15408808917258824056.a n = A017608 n

end A017608

/-! ## A017608.P6890392098926125348

`sqrt(A017612(n))`
-/

namespace A017608.P6890392098926125348
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017612 n : ℝ)

end

end A017608.P6890392098926125348

namespace A017608

/-- `sqrt(A017612(n))` -/
def P6890392098926125348.Spec : Prop :=
  ∀ n, P6890392098926125348.a n = (A017608 n : ℝ)

end A017608

/-! ## A017608.P1987893960467425335

`A017605(n)²²`
-/

namespace A017608.P1987893960467425335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017605 n ^ 2) ^ 2

end

end A017608.P1987893960467425335

namespace A017608

/-- `A017605(n)²²` -/
def P1987893960467425335.Spec : Prop :=
  ∀ n, P1987893960467425335.a n = A017608 n

end A017608

/-! ## A017608.P18026083999599827485

`(A017593(n)+1)²²`
-/

namespace A017608.P18026083999599827485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017593 n + 1) ^ 2) ^ 2

end

end A017608.P18026083999599827485

namespace A017608

/-- `(A017593(n)+1)²²` -/
def P18026083999599827485.Spec : Prop :=
  ∀ n, P18026083999599827485.a n = A017608 n

end A017608

/-! ## A017608.P9059481240455490658

`(A017581(n)+2)²²`
-/

namespace A017608.P9059481240455490658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017581 n + 2) ^ 2) ^ 2

end

end A017608.P9059481240455490658

namespace A017608

/-- `(A017581(n)+2)²²` -/
def P9059481240455490658.Spec : Prop :=
  ∀ n, P9059481240455490658.a n = A017608 n

end A017608

/-! ## A017608.P1185134649199583725

`(1-A017617(n))²²`
-/

namespace A017608.P1185134649199583725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017617 n) ^ 2) ^ 2

end

end A017608.P1185134649199583725

namespace A017608

/-- `(1-A017617(n))²²` -/
def P1185134649199583725.Spec : Prop :=
  ∀ n, P1185134649199583725.a n = A017608 n

end A017608

/-! ## A017608.P17553408337204980674

`(A017569(n)+3)²²`
-/

namespace A017608.P17553408337204980674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017569 n + 3) ^ 2) ^ 2

end

end A017608.P17553408337204980674

namespace A017608

/-- `(A017569(n)+3)²²` -/
def P17553408337204980674.Spec : Prop :=
  ∀ n, P17553408337204980674.a n = A017608 n

end A017608

/-! ## A017608.P9678758572447171194

`(2-A017629(n))²²`
-/

namespace A017608.P9678758572447171194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017629 n) ^ 2) ^ 2

end

end A017608.P9678758572447171194

namespace A017608

/-- `(2-A017629(n))²²` -/
def P9678758572447171194.Spec : Prop :=
  ∀ n, P9678758572447171194.a n = A017608 n

end A017608

/-! ## A017608.P14266735629684648618

`(3-A017641(n))²²`
-/

namespace A017608.P14266735629684648618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017641 n) ^ 2) ^ 2

end

end A017608.P14266735629684648618

namespace A017608

/-- `(3-A017641(n))²²` -/
def P14266735629684648618.Spec : Prop :=
  ∀ n, P14266735629684648618.a n = A017608 n

end A017608

/-! ## A017608.P11502645319430441151

`(A142241(n)/2)²²`
-/

namespace A017608.P11502645319430441151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A142241 n : ℚ) / 2) ^ 2) ^ 2

end

end A017608.P11502645319430441151

namespace A017608

/-- `(A142241(n)/2)²²` -/
def P11502645319430441151.Spec : Prop :=
  ∀ n, P11502645319430441151.a n = (A017608 n : ℚ)

end A017608

/-! ## A017608.P2980688618947036470

`(A017473(n)+n)²²`
-/

namespace A017608.P2980688618947036470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017473 n + (n : ℤ)) ^ 2) ^ 2

end

end A017608.P2980688618947036470

namespace A017608

/-- `(A017473(n)+n)²²` -/
def P2980688618947036470.Spec : Prop :=
  ∀ n, P2980688618947036470.a n = A017608 n

end A017608

/-! ## A017608.P14705437483302045232

`(n-A269044(n))²²`
-/

namespace A017608.P14705437483302045232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A269044 n) ^ 2) ^ 2

end

end A017608.P14705437483302045232

namespace A017608

/-- `(n-A269044(n))²²` -/
def P14705437483302045232.Spec : Prop :=
  ∀ n, P14705437483302045232.a n = A017608 n

end A017608

/-! ## A017608.P16955223281663596161

`(sqrt(A017594(n))+1)²²`
-/

namespace A017608.P16955223281663596161
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017594 n : ℝ) + 1) ^ 2) ^ 2

end

end A017608.P16955223281663596161

namespace A017608

/-- `(sqrt(A017594(n))+1)²²` -/
def P16955223281663596161.Spec : Prop :=
  ∀ n, P16955223281663596161.a n = (A017608 n : ℝ)

end A017608

/-! ## A017608.P5623030593885409821

`(sqrt(A017582(n))+2)²²`
-/

namespace A017608.P5623030593885409821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017582 n : ℝ) + 2) ^ 2) ^ 2

end

end A017608.P5623030593885409821

namespace A017608

/-- `(sqrt(A017582(n))+2)²²` -/
def P5623030593885409821.Spec : Prop :=
  ∀ n, P5623030593885409821.a n = (A017608 n : ℝ)

end A017608

/-!
# A017609: a(n) = (12*n + 7)^5.

The programs for A017609, the canonical program `A017609.P16179523654443317798` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017609 has offset 0).

The definition of A017609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+7)^5` (program `A017609.P16179523654443317798`, by `A017609.P16179523654443317798.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017609.P16179523654443317798

`(12*n+7)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017609

/-- `(12*n+7)^5` -/
def P16179523654443317798.Spec : Prop :=
  ∀ n, (P16179523654443317798.a n : ℤ) = A017609 n

theorem P16179523654443317798.correct : P16179523654443317798.Spec := by
  intro n
  simp only [A017609]

end A017609

/-! ## A017609.P2139788585788555690

`record[xor(1, 6*xor(1, n))^5]`
-/

namespace A017609.P2139788585788555690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * Nat.xor 1 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017609.P2139788585788555690

namespace A017609

/-- `record[xor(1, 6*xor(1, n))^5]` -/
def P2139788585788555690.Spec : Prop :=
  ∀ n, (P2139788585788555690.a n : ℤ) = A017609 n

end A017609

/-! ## A017609.P5480615925789340700

`record[(7*or(1, n)-n)^5]`
-/

namespace A017609.P5480615925789340700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((7 * Nat.lor 1 n : ℤ) - (n : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017609.P5480615925789340700

namespace A017609

/-- `record[(7*or(1, n)-n)^5]` -/
def P5480615925789340700.Spec : Prop :=
  ∀ n, P5480615925789340700.a n = A017609 n

end A017609

/-! ## A017609.P1700665586952289690

`(lcm(2, 12*n)+7)*(lcm(2, 12*n)+7)²²`
-/

namespace A017609.P1700665586952289690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (12 * n) + 7) * ((Nat.lcm 2 (12 * n) + 7) ^ 2) ^ 2

end

end A017609.P1700665586952289690

namespace A017609

/-- `(lcm(2, 12*n)+7)*(lcm(2, 12*n)+7)²²` -/
def P1700665586952289690.Spec : Prop :=
  ∀ n, (P1700665586952289690.a n : ℤ) = A017609 n

end A017609

/-! ## A017609.P712749673897713159

`or(3, 12*n+4)²²*or(3, 12*n+4)`
-/

namespace A017609.P712749673897713159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (12 * n + 4) ^ 2) ^ 2 * Nat.lor 3 (12 * n + 4)

end

end A017609.P712749673897713159

namespace A017609

/-- `or(3, 12*n+4)²²*or(3, 12*n+4)` -/
def P712749673897713159.Spec : Prop :=
  ∀ n, (P712749673897713159.a n : ℤ) = A017609 n

end A017609

/-! ## A017609.P2008308980469556605

`A017605(n)*A017608(n)`
-/

namespace A017609.P2008308980469556605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n * A017608 n

end

end A017609.P2008308980469556605

namespace A017609

/-- `A017605(n)*A017608(n)` -/
def P2008308980469556605.Spec : Prop :=
  ∀ n, P2008308980469556605.a n = A017609 n

end A017609

/-! ## A017609.P14575791501006854303

`A017606(n)*A017607(n)`
-/

namespace A017609.P14575791501006854303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017606 n * A017607 n

end

end A017609.P14575791501006854303

namespace A017609

/-- `A017606(n)*A017607(n)` -/
def P14575791501006854303.Spec : Prop :=
  ∀ n, P14575791501006854303.a n = A017609 n

end A017609

/-! ## A017609.P11081544714015000671

`A017610(n)/A017605(n)`
-/

namespace A017609.P11081544714015000671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017610 n : ℚ) / (A017605 n : ℚ)

end

end A017609.P11081544714015000671

namespace A017609

/-- `A017610(n)/A017605(n)` -/
def P11081544714015000671.Spec : Prop :=
  ∀ n, P11081544714015000671.a n = (A017609 n : ℚ)

end A017609

/-! ## A017609.P14739850141750879188

`A017611(n)/A017606(n)`
-/

namespace A017609.P14739850141750879188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017611 n : ℚ) / (A017606 n : ℚ)

end

end A017609.P14739850141750879188

namespace A017609

/-- `A017611(n)/A017606(n)` -/
def P14739850141750879188.Spec : Prop :=
  ∀ n, P14739850141750879188.a n = (A017609 n : ℚ)

end A017609

/-! ## A017609.P5074607944496707469

`A017605(n)²*A017607(n)`
-/

namespace A017609.P5074607944496707469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n ^ 2 * A017607 n

end

end A017609.P5074607944496707469

namespace A017609

/-- `A017605(n)²*A017607(n)` -/
def P5074607944496707469.Spec : Prop :=
  ∀ n, P5074607944496707469.a n = A017609 n

end A017609

/-! ## A017609.P12774462042949424102

`A017606(n)²*A017605(n)`
-/

namespace A017609.P12774462042949424102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017606 n ^ 2 * A017605 n

end

end A017609.P12774462042949424102

namespace A017609

/-- `A017606(n)²*A017605(n)` -/
def P12774462042949424102.Spec : Prop :=
  ∀ n, P12774462042949424102.a n = A017609 n

end A017609

/-! ## A017609.P3615116900614223631

`A017608(n)²/A017607(n)`
-/

namespace A017609.P3615116900614223631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017608 n ^ 2 : ℚ) / (A017607 n : ℚ)

end

end A017609.P3615116900614223631

namespace A017609

/-- `A017608(n)²/A017607(n)` -/
def P3615116900614223631.Spec : Prop :=
  ∀ n, P3615116900614223631.a n = (A017609 n : ℚ)

end A017609

/-! ## A017609.P10540333450057483461

`A017611(n)/A017605(n)²`
-/

namespace A017609.P10540333450057483461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017611 n : ℚ) / (A017605 n ^ 2 : ℚ)

end

end A017609.P10540333450057483461

namespace A017609

/-- `A017611(n)/A017605(n)²` -/
def P10540333450057483461.Spec : Prop :=
  ∀ n, P10540333450057483461.a n = (A017609 n : ℚ)

end A017609

/-! ## A017609.P15173654795252701137

`abs((3-(A008592(n+1)+n)-n)^5)`
-/

namespace A017609.P15173654795252701137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 - (A008592 (n + 1) + (n : ℤ)) - (n : ℤ)) ^ 5|

end

end A017609.P15173654795252701137

namespace A017609

/-- `abs((3-(A008592(n+1)+n)-n)^5)` -/
def P15173654795252701137.Spec : Prop :=
  ∀ n, P15173654795252701137.a n = A017609 n

end A017609

/-! ## A017609.P8264737021553343107

`A016925(Δ[n²])`
-/

namespace A017609.P8264737021553343107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016925 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017609.P8264737021553343107

namespace A017609

/-- `A016925(Δ[n²])` -/
def P8264737021553343107.Spec : Prop :=
  ∀ n, P8264737021553343107.a n = A017609 n

end A017609

/-! ## A017609.P2013313780528016019

`record[A166639(n)^5]`
-/

namespace A017609.P2013313780528016019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017609.P2013313780528016019

namespace A017609

/-- `record[A166639(n)^5]` -/
def P2013313780528016019.Spec : Prop :=
  ∀ n, P2013313780528016019.a n = A017609 n

end A017609

/-! ## A017609.P15886282223141409764

`(12*n+7)*A016924(2*n+1)`
-/

namespace A017609.P15886282223141409764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 7 : ℤ) * A016924 (2 * n + 1)

end

end A017609.P15886282223141409764

namespace A017609

/-- `(12*n+7)*A016924(2*n+1)` -/
def P15886282223141409764.Spec : Prop :=
  ∀ n, P15886282223141409764.a n = A017609 n

end A017609

/-! ## A017609.P5263820063498614337

`A016926(2*n+1)/(12*n+7)`
-/

namespace A017609.P5263820063498614337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016926 (2 * n + 1) : ℚ) / (12 * n + 7 : ℚ)

end

end A017609.P5263820063498614337

namespace A017609

/-- `A016926(2*n+1)/(12*n+7)` -/
def P5263820063498614337.Spec : Prop :=
  ∀ n, P5263820063498614337.a n = (A017609 n : ℚ)

end A017609

/-! ## A017609.P15091022497432776105

`(12*n+7)²*A016923(2*n+1)`
-/

namespace A017609.P15091022497432776105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 7) ^ 2 : ℤ) * A016923 (2 * n + 1)

end

end A017609.P15091022497432776105

namespace A017609

/-- `(12*n+7)²*A016923(2*n+1)` -/
def P15091022497432776105.Spec : Prop :=
  ∀ n, P15091022497432776105.a n = A017609 n

end A017609

/-! ## A017609.P1445694928788104939

`A016927(2*n+1)/(12*n+7)²`
-/

namespace A017609.P1445694928788104939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016927 (2 * n + 1) : ℚ) / ((12 * n + 7) ^ 2 : ℚ)

end

end A017609.P1445694928788104939

namespace A017609

/-- `A016927(2*n+1)/(12*n+7)²` -/
def P1445694928788104939.Spec : Prop :=
  ∀ n, P1445694928788104939.a n = (A017609 n : ℚ)

end A017609

/-!
# A017610: a(n) = (12*n + 7)^6.

The programs for A017610, the canonical program `A017610.P2271946263891238381` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017610 has offset 0).

The definition of A017610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+7)^6` (program `A017610.P2271946263891238381`, by `A017610.P2271946263891238381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017610.P2271946263891238381

`(12*n+7)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017610

/-- `(12*n+7)^6` -/
def P2271946263891238381.Spec : Prop :=
  ∀ n, (P2271946263891238381.a n : ℤ) = A017610 n

theorem P2271946263891238381.correct : P2271946263891238381.Spec := by
  intro n
  simp only [A017610]

end A017610

/-! ## A017610.P16341076522343953172

`A017607(n)²`
-/

namespace A017610.P16341076522343953172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017607 n ^ 2

end

end A017610.P16341076522343953172

namespace A017610

/-- `A017607(n)²` -/
def P16341076522343953172.Spec : Prop :=
  ∀ n, P16341076522343953172.a n = A017610 n

end A017610

/-! ## A017610.P14457149120525746004

`(A017605(n)^3)²`
-/

namespace A017610.P14457149120525746004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017605 n ^ 3) ^ 2

end

end A017610.P14457149120525746004

namespace A017610

/-- `(A017605(n)^3)²` -/
def P14457149120525746004.Spec : Prop :=
  ∀ n, P14457149120525746004.a n = A017610 n

end A017610

/-! ## A017610.P72464247279197979

`A017605(n)*A017609(n)`
-/

namespace A017610.P72464247279197979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n * A017609 n

end

end A017610.P72464247279197979

namespace A017610

/-- `A017605(n)*A017609(n)` -/
def P72464247279197979.Spec : Prop :=
  ∀ n, P72464247279197979.a n = A017610 n

end A017610

/-! ## A017610.P2186248198248957176

`A017606(n)*A017608(n)`
-/

namespace A017610.P2186248198248957176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017606 n * A017608 n

end

end A017610.P2186248198248957176

namespace A017610

/-- `A017606(n)*A017608(n)` -/
def P2186248198248957176.Spec : Prop :=
  ∀ n, P2186248198248957176.a n = A017610 n

end A017610

/-! ## A017610.P10461642642323936090

`A017611(n)/A017605(n)`
-/

namespace A017610.P10461642642323936090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017611 n : ℚ) / (A017605 n : ℚ)

end

end A017610.P10461642642323936090

namespace A017610

/-- `A017611(n)/A017605(n)` -/
def P10461642642323936090.Spec : Prop :=
  ∀ n, P10461642642323936090.a n = (A017610 n : ℚ)

end A017610

/-! ## A017610.P2324917415366468270

`(A017605(n)*A017606(n))²`
-/

namespace A017610.P2324917415366468270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017605 n * A017606 n) ^ 2

end

end A017610.P2324917415366468270

namespace A017610

/-- `(A017605(n)*A017606(n))²` -/
def P2324917415366468270.Spec : Prop :=
  ∀ n, P2324917415366468270.a n = A017610 n

end A017610

/-! ## A017610.P9666854409922679573

`A017605(n)²*A017608(n)`
-/

namespace A017610.P9666854409922679573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n ^ 2 * A017608 n

end

end A017610.P9666854409922679573

namespace A017610

/-- `A017605(n)²*A017608(n)` -/
def P9666854409922679573.Spec : Prop :=
  ∀ n, P9666854409922679573.a n = A017610 n

end A017610

/-! ## A017610.P4018141414667914220

`(A017609(n)/A017606(n))²`
-/

namespace A017610.P4018141414667914220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017609 n : ℚ) / (A017606 n : ℚ)) ^ 2

end

end A017610.P4018141414667914220

namespace A017610

/-- `(A017609(n)/A017606(n))²` -/
def P4018141414667914220.Spec : Prop :=
  ∀ n, P4018141414667914220.a n = (A017610 n : ℚ)

end A017610

/-! ## A017610.P565424417500685858

`(A017611(n)/A017606(n)²)²`
-/

namespace A017610.P565424417500685858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017611 n : ℚ) / (A017606 n ^ 2 : ℚ)) ^ 2

end

end A017610.P565424417500685858

namespace A017610

/-- `(A017611(n)/A017606(n)²)²` -/
def P565424417500685858.Spec : Prop :=
  ∀ n, P565424417500685858.a n = (A017610 n : ℚ)

end A017610

/-! ## A017610.P1503221310827959128

`A017612(n)/sqrt(sqrt(A017612(n)))`
-/

namespace A017610.P1503221310827959128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017612 n : ℝ) / Real.sqrt (Real.sqrt (A017612 n : ℝ))

end

end A017610.P1503221310827959128

namespace A017610

/-- `A017612(n)/sqrt(sqrt(A017612(n)))` -/
def P1503221310827959128.Spec : Prop :=
  ∀ n, P1503221310827959128.a n = (A017610 n : ℝ)

end A017610

/-! ## A017610.P14441573655825035749

`(Δ[A049453(n)]^3)²`
-/

namespace A017610.P14441573655825035749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017610.P14441573655825035749

namespace A017610

/-- `(Δ[A049453(n)]^3)²` -/
def P14441573655825035749.Spec : Prop :=
  ∀ n, P14441573655825035749.a n = A017610 n

end A017610

/-! ## A017610.P3590862975114718958

`A016926(Δ[n²])`
-/

namespace A017610.P3590862975114718958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017610.P3590862975114718958

namespace A017610

/-- `A016926(Δ[n²])` -/
def P3590862975114718958.Spec : Prop :=
  ∀ n, P3590862975114718958.a n = A017610 n

end A017610

/-! ## A017610.P183113824040924162

`record[A166639(n)^6]`
-/

namespace A017610.P183113824040924162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 n ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017610.P183113824040924162

namespace A017610

/-- `record[A166639(n)^6]` -/
def P183113824040924162.Spec : Prop :=
  ∀ n, P183113824040924162.a n = A017610 n

end A017610

/-! ## A017610.P4518265706899256305

`A016923(Δ[n²])²`
-/

namespace A017610.P4518265706899256305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017610.P4518265706899256305

namespace A017610

/-- `A016923(Δ[n²])²` -/
def P4518265706899256305.Spec : Prop :=
  ∀ n, P4518265706899256305.a n = A017610 n

end A017610

/-! ## A017610.P8514978846965431176

`(12*n+7)*A016925(2*n+1)`
-/

namespace A017610.P8514978846965431176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 7 : ℤ) * A016925 (2 * n + 1)

end

end A017610.P8514978846965431176

namespace A017610

/-- `(12*n+7)*A016925(2*n+1)` -/
def P8514978846965431176.Spec : Prop :=
  ∀ n, P8514978846965431176.a n = A017610 n

end A017610

/-! ## A017610.P1551790452097352740

`A016927(2*n+1)/(12*n+7)`
-/

namespace A017610.P1551790452097352740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016927 (2 * n + 1) : ℚ) / (12 * n + 7 : ℚ)

end

end A017610.P1551790452097352740

namespace A017610

/-- `A016927(2*n+1)/(12*n+7)` -/
def P1551790452097352740.Spec : Prop :=
  ∀ n, P1551790452097352740.a n = (A017610 n : ℚ)

end A017610

/-! ## A017610.P9414623445240054239

`(12*n+7)²*A016924(2*n+1)`
-/

namespace A017610.P9414623445240054239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 7) ^ 2 : ℤ) * A016924 (2 * n + 1)

end

end A017610.P9414623445240054239

namespace A017610

/-- `(12*n+7)²*A016924(2*n+1)` -/
def P9414623445240054239.Spec : Prop :=
  ∀ n, P9414623445240054239.a n = A017610 n

end A017610

/-! ## A017610.P16307105229033291938

`A016928(2*n+1)/(12*n+7)²`
-/

namespace A017610.P16307105229033291938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016928 (2 * n + 1) : ℚ) / ((12 * n + 7) ^ 2 : ℚ)

end

end A017610.P16307105229033291938

namespace A017610

/-- `A016928(2*n+1)/(12*n+7)²` -/
def P16307105229033291938.Spec : Prop :=
  ∀ n, P16307105229033291938.a n = (A017610 n : ℚ)

end A017610

/-! ## A017610.P2485052976223938191

`A339012(2*n)+A016926(2*n+1)`
-/

namespace A017610.P2485052976223938191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 (2 * n) + A016926 (2 * n + 1)

end

end A017610.P2485052976223938191

namespace A017610

/-- `A339012(2*n)+A016926(2*n+1)` -/
def P2485052976223938191.Spec : Prop :=
  ∀ n, P2485052976223938191.a n = A017610 n

end A017610

/-!
# A017611: a(n) = (12*n + 7)^7.

The programs for A017611, the canonical program `A017611.P16438599766481199370` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017611 has offset 0).

The definition of A017611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+7)^7` (program `A017611.P16438599766481199370`, by `A017611.P16438599766481199370.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017611.P16438599766481199370

`(12*n+7)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017611

/-- `(12*n+7)^7` -/
def P16438599766481199370.Spec : Prop :=
  ∀ n, (P16438599766481199370.a n : ℤ) = A017611 n

theorem P16438599766481199370.correct : P16438599766481199370.Spec := by
  intro n
  simp only [A017611]

end A017611

/-! ## A017611.P16477695416776134931

`A017605(n)*A017610(n)`
-/

namespace A017611.P16477695416776134931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n * A017610 n

end

end A017611.P16477695416776134931

namespace A017611

/-- `A017605(n)*A017610(n)` -/
def P16477695416776134931.Spec : Prop :=
  ∀ n, P16477695416776134931.a n = A017611 n

end A017611

/-! ## A017611.P16827359052531196376

`A017606(n)*A017609(n)`
-/

namespace A017611.P16827359052531196376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017606 n * A017609 n

end

end A017611.P16827359052531196376

namespace A017611

/-- `A017606(n)*A017609(n)` -/
def P16827359052531196376.Spec : Prop :=
  ∀ n, P16827359052531196376.a n = A017611 n

end A017611

/-! ## A017611.P10969073896609875641

`A017607(n)*A017608(n)`
-/

namespace A017611.P10969073896609875641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017607 n * A017608 n

end

end A017611.P10969073896609875641

namespace A017611

/-- `A017607(n)*A017608(n)` -/
def P10969073896609875641.Spec : Prop :=
  ∀ n, P10969073896609875641.a n = A017611 n

end A017611

/-! ## A017611.P16599783858016754189

`A017605(n)²*A017609(n)`
-/

namespace A017611.P16599783858016754189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n ^ 2 * A017609 n

end

end A017611.P16599783858016754189

namespace A017611

/-- `A017605(n)²*A017609(n)` -/
def P16599783858016754189.Spec : Prop :=
  ∀ n, P16599783858016754189.a n = A017611 n

end A017611

/-! ## A017611.P5269483556582984635

`A017606(n)²*A017607(n)`
-/

namespace A017611.P5269483556582984635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017606 n ^ 2 * A017607 n

end

end A017611.P5269483556582984635

namespace A017611

/-- `A017606(n)²*A017607(n)` -/
def P5269483556582984635.Spec : Prop :=
  ∀ n, P5269483556582984635.a n = A017611 n

end A017611

/-! ## A017611.P4030491889462098272

`A017607(n)²*A017605(n)`
-/

namespace A017611.P4030491889462098272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017607 n ^ 2 * A017605 n

end

end A017611.P4030491889462098272

namespace A017611

/-- `A017607(n)²*A017605(n)` -/
def P4030491889462098272.Spec : Prop :=
  ∀ n, P4030491889462098272.a n = A017611 n

end A017611

/-! ## A017611.P17738634300370970301

`A017608(n)²/A017605(n)`
-/

namespace A017611.P17738634300370970301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017608 n ^ 2 : ℚ) / (A017605 n : ℚ)

end

end A017611.P17738634300370970301

namespace A017611

/-- `A017608(n)²/A017605(n)` -/
def P17738634300370970301.Spec : Prop :=
  ∀ n, P17738634300370970301.a n = (A017611 n : ℚ)

end A017611

/-! ## A017611.P6077693688856924620

`A017606(n)²²/A017605(n)`
-/

namespace A017611.P6077693688856924620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017606 n ^ 2) ^ 2 : ℚ) / (A017605 n : ℚ)

end

end A017611.P6077693688856924620

namespace A017611

/-- `A017606(n)²²/A017605(n)` -/
def P6077693688856924620.Spec : Prop :=
  ∀ n, P6077693688856924620.a n = (A017611 n : ℚ)

end A017611

/-! ## A017611.P15046107866931889952

`A017609(n)/A017607(n)*A017609(n)`
-/

namespace A017611.P15046107866931889952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017609 n : ℚ) / (A017607 n : ℚ) * (A017609 n : ℚ)

end

end A017611.P15046107866931889952

namespace A017611

/-- `A017609(n)/A017607(n)*A017609(n)` -/
def P15046107866931889952.Spec : Prop :=
  ∀ n, P15046107866931889952.a n = (A017611 n : ℚ)

end A017611

/-! ## A017611.P8747634393673354015

`A016927(Δ[n²])`
-/

namespace A017611.P8747634393673354015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017611.P8747634393673354015

namespace A017611

/-- `A016927(Δ[n²])` -/
def P8747634393673354015.Spec : Prop :=
  ∀ n, P8747634393673354015.a n = A017611 n

end A017611

/-! ## A017611.P6483742399713494011

`(12*n+7)*A016926(2*n+1)`
-/

namespace A017611.P6483742399713494011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 7 : ℤ) * A016926 (2 * n + 1)

end

end A017611.P6483742399713494011

namespace A017611

/-- `(12*n+7)*A016926(2*n+1)` -/
def P6483742399713494011.Spec : Prop :=
  ∀ n, P6483742399713494011.a n = A017611 n

end A017611

/-! ## A017611.P4483105041494473978

`A016928(2*n+1)/(12*n+7)`
-/

namespace A017611.P4483105041494473978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016928 (2 * n + 1) : ℚ) / (12 * n + 7 : ℚ)

end

end A017611.P4483105041494473978

namespace A017611

/-- `A016928(2*n+1)/(12*n+7)` -/
def P4483105041494473978.Spec : Prop :=
  ∀ n, P4483105041494473978.a n = (A017611 n : ℚ)

end A017611

/-! ## A017611.P15542985450909853751

`A016923(2*n+1)²*(12*n+7)`
-/

namespace A017611.P15542985450909853751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 (2 * n + 1) ^ 2 * (12 * n + 7 : ℤ)

end

end A017611.P15542985450909853751

namespace A017611

/-- `A016923(2*n+1)²*(12*n+7)` -/
def P15542985450909853751.Spec : Prop :=
  ∀ n, P15542985450909853751.a n = A017611 n

end A017611

/-! ## A017611.P10245677981152537416

`(12*n+7)²*A016925(2*n+1)`
-/

namespace A017611.P10245677981152537416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 7) ^ 2 : ℤ) * A016925 (2 * n + 1)

end

end A017611.P10245677981152537416

namespace A017611

/-- `(12*n+7)²*A016925(2*n+1)` -/
def P10245677981152537416.Spec : Prop :=
  ∀ n, P10245677981152537416.a n = A017611 n

end A017611

/-! ## A017611.P6219126262894266476

`A016924(2*n+1)²/(12*n+7)`
-/

namespace A017611.P6219126262894266476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016924 (2 * n + 1) ^ 2 : ℚ) / (12 * n + 7 : ℚ)

end

end A017611.P6219126262894266476

namespace A017611

/-- `A016924(2*n+1)²/(12*n+7)` -/
def P6219126262894266476.Spec : Prop :=
  ∀ n, P6219126262894266476.a n = (A017611 n : ℚ)

end A017611

/-! ## A017611.P11496437606775659550

`A016929(2*n+1)/(12*n+7)²`
-/

namespace A017611.P11496437606775659550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016929 (2 * n + 1) : ℚ) / ((12 * n + 7) ^ 2 : ℚ)

end

end A017611.P11496437606775659550

namespace A017611

/-- `A016929(2*n+1)/(12*n+7)²` -/
def P11496437606775659550.Spec : Prop :=
  ∀ n, P11496437606775659550.a n = (A017611 n : ℚ)

end A017611

/-! ## A017611.P9414658801877111615

`A016923(2*n+1)*A016924(2*n+1)`
-/

namespace A017611.P9414658801877111615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 (2 * n + 1) * A016924 (2 * n + 1)

end

end A017611.P9414658801877111615

namespace A017611

/-- `A016923(2*n+1)*A016924(2*n+1)` -/
def P9414658801877111615.Spec : Prop :=
  ∀ n, P9414658801877111615.a n = A017611 n

end A017611

/-! ## A017611.P16333409679963011260

`2*A016927(2*n+1)-A016927(2*n+1)`
-/

namespace A017611.P16333409679963011260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016927 (2 * n + 1) - A016927 (2 * n + 1)

end

end A017611.P16333409679963011260

namespace A017611

/-- `2*A016927(2*n+1)-A016927(2*n+1)` -/
def P16333409679963011260.Spec : Prop :=
  ∀ n, P16333409679963011260.a n = A017611 n

end A017611

/-! ## A017611.P16314347117887363266

`A016922(2*n+1)²²/A016921(2*n+1)`
-/

namespace A017611.P16314347117887363266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016922 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A016921 (2 * n + 1) : ℚ)

end

end A017611.P16314347117887363266

namespace A017611

/-- `A016922(2*n+1)²²/A016921(2*n+1)` -/
def P16314347117887363266.Spec : Prop :=
  ∀ n, P16314347117887363266.a n = (A017611 n : ℚ)

end A017611

/-!
# A017612: a(n) = (12*n + 7)^8.

The programs for A017612, the canonical program `A017612.P1039644243257757450` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017612 has offset 0).

The definition of A017612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+7)^8` (program `A017612.P1039644243257757450`, by `A017612.P1039644243257757450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017612.P1039644243257757450

`(12*n+7)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017612

/-- `(12*n+7)^8` -/
def P1039644243257757450.Spec : Prop :=
  ∀ n, (P1039644243257757450.a n : ℤ) = A017612 n

theorem P1039644243257757450.correct : P1039644243257757450.Spec := by
  intro n
  simp only [A017612]

end A017612

/-! ## A017612.P923743757927478991

`A017608(n)²`
-/

namespace A017612.P923743757927478991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017608 n ^ 2

end

end A017612.P923743757927478991

namespace A017612

/-- `A017608(n)²` -/
def P923743757927478991.Spec : Prop :=
  ∀ n, P923743757927478991.a n = A017612 n

end A017612

/-! ## A017612.P13487158667777133409

`A017606(n)²²`
-/

namespace A017612.P13487158667777133409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017606 n ^ 2) ^ 2

end

end A017612.P13487158667777133409

namespace A017612

/-- `A017606(n)²²` -/
def P13487158667777133409.Spec : Prop :=
  ∀ n, P13487158667777133409.a n = A017612 n

end A017612

/-! ## A017612.P9621809102630368076

`(A017605(n)^4)²`
-/

namespace A017612.P9621809102630368076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017605 n ^ 4) ^ 2

end

end A017612.P9621809102630368076

namespace A017612

/-- `(A017605(n)^4)²` -/
def P9621809102630368076.Spec : Prop :=
  ∀ n, P9621809102630368076.a n = A017612 n

end A017612

/-! ## A017612.P15056327543515465029

`(A017593(n)+1)²²²`
-/

namespace A017612.P15056327543515465029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017593 n + 1) ^ 2) ^ 2) ^ 2

end

end A017612.P15056327543515465029

namespace A017612

/-- `(A017593(n)+1)²²²` -/
def P15056327543515465029.Spec : Prop :=
  ∀ n, P15056327543515465029.a n = A017612 n

end A017612

/-! ## A017612.P16848023408966883920

`(A017581(n)+2)²²²`
-/

namespace A017612.P16848023408966883920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017581 n + 2) ^ 2) ^ 2) ^ 2

end

end A017612.P16848023408966883920

namespace A017612

/-- `(A017581(n)+2)²²²` -/
def P16848023408966883920.Spec : Prop :=
  ∀ n, P16848023408966883920.a n = A017612 n

end A017612

/-! ## A017612.P17613395236232989056

`(1-A017617(n))²²²`
-/

namespace A017612.P17613395236232989056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017617 n) ^ 2) ^ 2) ^ 2

end

end A017612.P17613395236232989056

namespace A017612

/-- `(1-A017617(n))²²²` -/
def P17613395236232989056.Spec : Prop :=
  ∀ n, P17613395236232989056.a n = A017612 n

end A017612

/-! ## A017612.P6207823651669472785

`(2-A017629(n))²²²`
-/

namespace A017612.P6207823651669472785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017629 n) ^ 2) ^ 2) ^ 2

end

end A017612.P6207823651669472785

namespace A017612

/-- `(2-A017629(n))²²²` -/
def P6207823651669472785.Spec : Prop :=
  ∀ n, P6207823651669472785.a n = A017612 n

end A017612

/-! ## A017612.P5118316138412468875

`(A142241(n)/2)²²²`
-/

namespace A017612.P5118316138412468875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A142241 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A017612.P5118316138412468875

namespace A017612

/-- `(A142241(n)/2)²²²` -/
def P5118316138412468875.Spec : Prop :=
  ∀ n, P5118316138412468875.a n = (A017612 n : ℚ)

end A017612

/-! ## A017612.P16784482968420041602

`(A017473(n)+n)²²²`
-/

namespace A017612.P16784482968420041602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017473 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017612.P16784482968420041602

namespace A017612

/-- `(A017473(n)+n)²²²` -/
def P16784482968420041602.Spec : Prop :=
  ∀ n, P16784482968420041602.a n = A017612 n

end A017612

/-! ## A017612.P1749500249047410691

`(n-A269044(n))²²²`
-/

namespace A017612.P1749500249047410691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A269044 n) ^ 2) ^ 2) ^ 2

end

end A017612.P1749500249047410691

namespace A017612

/-- `(n-A269044(n))²²²` -/
def P1749500249047410691.Spec : Prop :=
  ∀ n, P1749500249047410691.a n = A017612 n

end A017612

/-! ## A017612.P7453781997412382573

`A017605(n)*A017611(n)`
-/

namespace A017612.P7453781997412382573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n * A017611 n

end

end A017612.P7453781997412382573

namespace A017612

/-- `A017605(n)*A017611(n)` -/
def P7453781997412382573.Spec : Prop :=
  ∀ n, P7453781997412382573.a n = A017612 n

end A017612

/-! ## A017612.P3991983077513890376

`A017606(n)*A017610(n)`
-/

namespace A017612.P3991983077513890376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017606 n * A017610 n

end

end A017612.P3991983077513890376

namespace A017612

/-- `A017606(n)*A017610(n)` -/
def P3991983077513890376.Spec : Prop :=
  ∀ n, P3991983077513890376.a n = A017612 n

end A017612

/-! ## A017612.P4502252276410470613

`A017607(n)*A017609(n)`
-/

namespace A017612.P4502252276410470613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017607 n * A017609 n

end

end A017612.P4502252276410470613

namespace A017612

/-- `A017607(n)*A017609(n)` -/
def P4502252276410470613.Spec : Prop :=
  ∀ n, P4502252276410470613.a n = A017612 n

end A017612

/-! ## A017612.P2331113276313038129

`Δ[A049453(n)]²²²`
-/

namespace A017612.P2331113276313038129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017612.P2331113276313038129

namespace A017612

/-- `Δ[A049453(n)]²²²` -/
def P2331113276313038129.Spec : Prop :=
  ∀ n, P2331113276313038129.a n = A017612 n

end A017612

/-! ## A017612.P11191882543678786281

`A016928(Δ[n²])`
-/

namespace A017612.P11191882543678786281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017612.P11191882543678786281

namespace A017612

/-- `A016928(Δ[n²])` -/
def P11191882543678786281.Spec : Prop :=
  ∀ n, P11191882543678786281.a n = A017612 n

end A017612

/-! ## A017612.P8350257531352175355

`record[A166639(n)^8]`
-/

namespace A017612.P8350257531352175355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017612.P8350257531352175355

namespace A017612

/-- `record[A166639(n)^8]` -/
def P8350257531352175355.Spec : Prop :=
  ∀ n, P8350257531352175355.a n = A017612 n

end A017612

/-! ## A017612.P11167552871008812853

`A016924(Δ[n²])²`
-/

namespace A017612.P11167552871008812853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017612.P11167552871008812853

namespace A017612

/-- `A016924(Δ[n²])²` -/
def P11167552871008812853.Spec : Prop :=
  ∀ n, P11167552871008812853.a n = A017612 n

end A017612

/-! ## A017612.P9908496501632978248

`A016922(Δ[n²])²²`
-/

namespace A017612.P9908496501632978248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016922 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A017612.P9908496501632978248

namespace A017612

/-- `A016922(Δ[n²])²²` -/
def P9908496501632978248.Spec : Prop :=
  ∀ n, P9908496501632978248.a n = A017612 n

end A017612

/-! ## A017612.P9779686564849033539

`A166639(2*n)²²²`
-/

namespace A017612.P9779686564849033539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A166639 (2 * n) ^ 2) ^ 2) ^ 2

end

end A017612.P9779686564849033539

namespace A017612

/-- `A166639(2*n)²²²` -/
def P9779686564849033539.Spec : Prop :=
  ∀ n, P9779686564849033539.a n = A017612 n

end A017612

/-!
# A017613: a(n) = (12*n + 7)^9.

The programs for A017613, the canonical program `A017613.P8047388939406485267` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017613 has offset 0).

The definition of A017613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+7)^9` (program `A017613.P8047388939406485267`, by `A017613.P8047388939406485267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017613.P8047388939406485267

`(12*n+7)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017613

/-- `(12*n+7)^9` -/
def P8047388939406485267.Spec : Prop :=
  ∀ n, (P8047388939406485267.a n : ℤ) = A017613 n

theorem P8047388939406485267.correct : P8047388939406485267.Spec := by
  intro n
  simp only [A017613]

end A017613

/-! ## A017613.P7038410013994364835

`A017607(n)*A017610(n)`
-/

namespace A017613.P7038410013994364835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017607 n * A017610 n

end

end A017613.P7038410013994364835

namespace A017613

/-- `A017607(n)*A017610(n)` -/
def P7038410013994364835.Spec : Prop :=
  ∀ n, P7038410013994364835.a n = A017613 n

end A017613

/-! ## A017613.P13970008319900648020

`A017608(n)*A017609(n)`
-/

namespace A017613.P13970008319900648020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017608 n * A017609 n

end

end A017613.P13970008319900648020

namespace A017613

/-- `A017608(n)*A017609(n)` -/
def P13970008319900648020.Spec : Prop :=
  ∀ n, P13970008319900648020.a n = A017613 n

end A017613

/-! ## A017613.P7845201492370901166

`A016929(2*n+1)`
-/

namespace A017613.P7845201492370901166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016929 (2 * n + 1)

end

end A017613.P7845201492370901166

namespace A017613

/-- `A016929(2*n+1)` -/
def P7845201492370901166.Spec : Prop :=
  ∀ n, P7845201492370901166.a n = A017613 n

end A017613

/-! ## A017613.P6782751078627003745

`A016923(2*n+1)*A016926(2*n+1)`
-/

namespace A017613.P6782751078627003745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 (2 * n + 1) * A016926 (2 * n + 1)

end

end A017613.P6782751078627003745

namespace A017613

/-- `A016923(2*n+1)*A016926(2*n+1)` -/
def P6782751078627003745.Spec : Prop :=
  ∀ n, P6782751078627003745.a n = A017613 n

end A017613

/-! ## A017613.P2663862001407538736

`A016845(3*n+1)`
-/

namespace A017613.P2663862001407538736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016845 (3 * n + 1)

end

end A017613.P2663862001407538736

namespace A017613

/-- `A016845(3*n+1)` -/
def P2663862001407538736.Spec : Prop :=
  ∀ n, P2663862001407538736.a n = A017613 n

end A017613

/-! ## A017613.P11536628382444225086

`A016785(A016777(n)+n+1)`
-/

namespace A017613.P11536628382444225086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016785 (A016777 n + (n + 1 : ℤ)).toNat

end

end A017613.P11536628382444225086

namespace A017613

/-- `A016785(A016777(n)+n+1)` -/
def P11536628382444225086.Spec : Prop :=
  ∀ n, P11536628382444225086.a n = A017613 n

end A017613

/-! ## A017613.P2099050156016217354

`A016761(3*(2*n+1))`
-/

namespace A017613.P2099050156016217354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (3 * (2 * n + 1))

end

end A017613.P2099050156016217354

namespace A017613

/-- `A016761(3*(2*n+1))` -/
def P2099050156016217354.Spec : Prop :=
  ∀ n, P2099050156016217354.a n = A017613 n

end A017613

/-! ## A017613.P2249892121774369132

`A001017(A017605(n))`
-/

namespace A017613.P2249892121774369132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017605 n).toNat

end

end A017613.P2249892121774369132

namespace A017613

/-- `A001017(A017605(n))` -/
def P2249892121774369132.Spec : Prop :=
  ∀ n, P2249892121774369132.a n = A017613 n

end A017613

/-!
# A017614: 

The programs for A017614, there is no canonical definition to state claims against.
-/

/-! ## A017614.P17440263388058444093

`A017609(n)²`
-/

namespace A017614.P17440263388058444093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017609 n ^ 2

end

end A017614.P17440263388058444093

/-! ## A017614.P9403495363297064230

`A017606(n)^5`
-/

namespace A017614.P9403495363297064230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017606 n ^ 5

end

end A017614.P9403495363297064230

/-! ## A017614.P10701004333176925948

`(A017605(n)^5)²`
-/

namespace A017614.P10701004333176925948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017605 n ^ 5) ^ 2

end

end A017614.P10701004333176925948

/-! ## A017614.P1312898934539860234

`(A017473(n)+n)^10`
-/

namespace A017614.P1312898934539860234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017473 n + (n : ℤ)) ^ 10

end

end A017614.P1312898934539860234

/-! ## A017614.P13397089226085884203

`A008454(A016945(2*n+1)-2)`
-/

namespace A017614.P13397089226085884203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n + 1) - 2).toNat

end

end A017614.P13397089226085884203

/-! ## A017614.P13031992433948452206

`A008454(A016873(2*n+1)+2*n)`
-/

namespace A017614.P13031992433948452206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016873 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A017614.P13031992433948452206

/-!
# A017615: 

The programs for A017615, there is no canonical definition to state claims against.
-/

/-! ## A017615.P10115782814058823289

`(12*n+7)^11`
-/

namespace A017615.P10115782814058823289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (12 * n + 7) ^ 11

end

end A017615.P10115782814058823289

/-! ## A017615.P17749171432537850483

`A017608(n)*A017611(n)`
-/

namespace A017615.P17749171432537850483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017608 n * A017611 n

end

end A017615.P17749171432537850483

/-! ## A017615.P9693979809385162780

`A017609(n)*A017610(n)`
-/

namespace A017615.P9693979809385162780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017609 n * A017610 n

end

end A017615.P9693979809385162780

/-! ## A017615.P10830975461638314724

`A017610(n)²/A017605(n)`
-/

namespace A017615.P10830975461638314724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017610 n ^ 2 : ℚ) / (A017605 n : ℚ)

end

end A017615.P10830975461638314724

/-! ## A017615.P6555120031641939941

`A017612(n)²/A017609(n)`
-/

namespace A017615.P6555120031641939941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017612 n ^ 2 : ℚ) / (A017609 n : ℚ)

end

end A017615.P6555120031641939941

/-! ## A017615.P3849308012607816742

`A017613(n)²/A017611(n)`
-/

namespace A017615.P3849308012607816742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017613 n ^ 2 : ℚ) / (A017611 n : ℚ)

end

end A017615.P3849308012607816742

/-! ## A017615.P16188758846076052748

`A016931(2*n+1)`
-/

namespace A017615.P16188758846076052748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016931 (2 * n + 1)

end

end A017615.P16188758846076052748

/-! ## A017615.P3698024713998903812

`A016847(A016777(n))`
-/

namespace A017615.P3698024713998903812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016847 (A016777 n).toNat

end

end A017615.P3698024713998903812

/-! ## A017615.P15270755174530625656

`A016787(A016933(n)-2*n)`
-/

namespace A017615.P15270755174530625656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016787 (A016933 n - (2 * n : ℤ)).toNat

end

end A017615.P15270755174530625656

/-! ## A017615.P13226475213217843587

`A016763(6*n+3)`
-/

namespace A017615.P13226475213217843587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (6 * n + 3)

end

end A017615.P13226475213217843587

/-! ## A017615.P11882426725198466441

`A001017(A017605(n))*A017606(n)`
-/

namespace A017615.P11882426725198466441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017605 n).toNat * A017606 n

end

end A017615.P11882426725198466441

/-!
# A017616: 

The programs for A017616, there is no canonical definition to state claims against.
-/

/-! ## A017616.P8615855747772831560

`A017608(n)^3`
-/

namespace A017616.P8615855747772831560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017608 n ^ 3

end

end A017616.P8615855747772831560

/-! ## A017616.P11079000545017278492

`A017606(n)^6`
-/

namespace A017616.P11079000545017278492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017606 n ^ 6

end

end A017616.P11079000545017278492

/-! ## A017616.P13495071101033427231

`(A017605(n)^6)²`
-/

namespace A017616.P13495071101033427231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017605 n ^ 6) ^ 2

end

end A017616.P13495071101033427231

/-! ## A017616.P9139377841275384861

`((A017473(n)+n)^6)²`
-/

namespace A017616.P9139377841275384861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017473 n + (n : ℤ)) ^ 6) ^ 2

end

end A017616.P9139377841275384861

/-! ## A017616.P17022367488239410709

`A016923(2*n+1)²²`
-/

namespace A017616.P17022367488239410709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016923 (2 * n + 1) ^ 2) ^ 2

end

end A017616.P17022367488239410709

/-! ## A017616.P14688439803675968328

`A016924(A005408(n))^3`
-/

namespace A017616.P14688439803675968328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 (A005408 n).toNat ^ 3

end

end A017616.P14688439803675968328

/-!
# A017617: a(n) = 12*n + 8.

The programs for A017617, the canonical program `A017617.P15573883131522867575` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017617 has offset 0).

The definition of A017617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+8` (program `A017617.P15573883131522867575`, by `A017617.P15573883131522867575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017617.P15573883131522867575

`12*n+8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017617

/-- `12*n+8` -/
def P15573883131522867575.Spec : Prop :=
  ∀ n, (P15573883131522867575.a n : ℤ) = A017617 n

theorem P15573883131522867575.correct : P15573883131522867575.Spec := by
  intro n
  simp only [A017617]

end A017617

/-!
# A017618: a(n) = (12*n + 8)^2.

The programs for A017618, the canonical program `A017618.P8158784063693686004` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017618 has offset 0).

The definition of A017618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+8)²` (program `A017618.P8158784063693686004`, by `A017618.P8158784063693686004.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017618.P8158784063693686004

`(12*n+8)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017618

/-- `(12*n+8)²` -/
def P8158784063693686004.Spec : Prop :=
  ∀ n, (P8158784063693686004.a n : ℤ) = A017618 n

theorem P8158784063693686004.correct : P8158784063693686004.Spec := by
  intro n
  simp only [A017618]

end A017618

/-! ## A017618.P15862611196884397027

`lcm(2, (12*n+8)^2)`
-/

namespace A017618.P15862611196884397027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((12 * n + 8) ^ 2)

end

end A017618.P15862611196884397027

namespace A017618

/-- `lcm(2, (12*n+8)^2)` -/
def P15862611196884397027.Spec : Prop :=
  ∀ n, (P15862611196884397027.a n : ℤ) = A017618 n

end A017618

/-! ## A017618.P10466242470536701565

`(or(3, 12*n)+5)^2`
-/

namespace A017618.P10466242470536701565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (12 * n) + 5) ^ 2

end

end A017618.P10466242470536701565

namespace A017618

/-- `(or(3, 12*n)+5)^2` -/
def P10466242470536701565.Spec : Prop :=
  ∀ n, (P10466242470536701565.a n : ℤ) = A017618 n

end A017618

/-! ## A017618.P4779386766314411676

`record[(1-3*xor(3, n))²]`
-/

namespace A017618.P4779386766314411676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (3 * Nat.xor 3 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017618.P4779386766314411676

namespace A017618

/-- `record[(1-3*xor(3, n))²]` -/
def P4779386766314411676.Spec : Prop :=
  ∀ n, P4779386766314411676.a n = A017618 n

end A017618

/-! ## A017618.P5538453749836111147

`record[xor(1, 3*xor(3, n))²]`
-/

namespace A017618.P5538453749836111147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * Nat.xor 3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017618.P5538453749836111147

namespace A017618

/-- `record[xor(1, 3*xor(3, n))²]` -/
def P5538453749836111147.Spec : Prop :=
  ∀ n, (P5538453749836111147.a n : ℤ) = A017618 n

end A017618

/-! ## A017618.P16125002713175028300

`16*comp[n-gcd(3, n)]²`
-/

namespace A017618.P16125002713175028300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd 3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A017618.P16125002713175028300

namespace A017618

/-- `16*comp[n-gcd(3, n)]²` -/
def P16125002713175028300.Spec : Prop :=
  ∀ n, (P16125002713175028300.a n : ℤ) = A017618 n

end A017618

/-! ## A017618.P1807403907839655949

`(1-3*or(3, 4*n))^2`
-/

namespace A017618.P1807403907839655949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (3 * Nat.lor 3 (4 * n) : ℤ)) ^ 2

end

end A017618.P1807403907839655949

namespace A017618

/-- `(1-3*or(3, 4*n))^2` -/
def P1807403907839655949.Spec : Prop :=
  ∀ n, P1807403907839655949.a n = A017618 n

end A017618

/-! ## A017618.P12575854557065891416

`8*(3*∑[ogf((2+10x)/(1-2x+x^2))]+2)`
-/

namespace A017618.P12575854557065891416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 2)

end

end A017618.P12575854557065891416

namespace A017618

/-- `8*(3*∑[ogf((2+10x)/(1-2x+x^2))]+2)` -/
def P12575854557065891416.Spec : Prop :=
  ∀ n, P12575854557065891416.a n = A017618 n

end A017618

/-! ## A017618.P11482598227227322185

`sqrt(A017620(n))`
-/

namespace A017618.P11482598227227322185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017620 n : ℝ)

end

end A017618.P11482598227227322185

namespace A017618

/-- `sqrt(A017620(n))` -/
def P11482598227227322185.Spec : Prop :=
  ∀ n, P11482598227227322185.a n = (A017618 n : ℝ)

end A017618

/-! ## A017618.P10209824097219329802

`4*A016958(n)`
-/

namespace A017618.P10209824097219329802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016958 n

end

end A017618.P10209824097219329802

namespace A017618

/-- `4*A016958(n)` -/
def P10209824097219329802.Spec : Prop :=
  ∀ n, P10209824097219329802.a n = A017618 n

end A017618

/-! ## A017618.P13414218788516736559

`sqrt(sqrt(A017624(n)))`
-/

namespace A017618.P13414218788516736559
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017624 n : ℝ))

end

end A017618.P13414218788516736559

namespace A017618

/-- `sqrt(sqrt(A017624(n)))` -/
def P13414218788516736559.Spec : Prop :=
  ∀ n, P13414218788516736559.a n = (A017618 n : ℝ)

end A017618

/-! ## A017618.P4520871874196720627

`4*sqrt(A016960(n))`
-/

namespace A017618.P4520871874196720627
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016960 n : ℝ)

end

end A017618.P4520871874196720627

namespace A017618

/-- `4*sqrt(A016960(n))` -/
def P4520871874196720627.Spec : Prop :=
  ∀ n, P4520871874196720627.a n = (A017618 n : ℝ)

end A017618

/-! ## A017618.P12626131548244242530

`A017622(n)^(1/3)`
-/

namespace A017618.P12626131548244242530
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017622 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017618.P12626131548244242530

namespace A017618

/-- `A017622(n)^(1/3)` -/
def P12626131548244242530.Spec : Prop :=
  ∀ n, P12626131548244242530.a n = (A017618 n : ℝ)

end A017618

/-! ## A017618.P4333075975103570581

`A017619(n)^(2/3)`
-/

namespace A017618.P4333075975103570581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017619 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017618.P4333075975103570581

namespace A017618

/-- `A017619(n)^(2/3)` -/
def P4333075975103570581.Spec : Prop :=
  ∀ n, P4333075975103570581.a n = (A017618 n : ℝ)

end A017618

/-! ## A017618.P9195327325893657059

`A017630(n)-A350052(n)`
-/

namespace A017618.P9195327325893657059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017630 n - A350052 n

end

end A017618.P9195327325893657059

namespace A017618

/-- `A017630(n)-A350052(n)` -/
def P9195327325893657059.Spec : Prop :=
  ∀ n, P9195327325893657059.a n = A017618 n

end A017618

/-! ## A017618.P4689586169331422276

`A017617(n)*A017617(n)`
-/

namespace A017618.P4689586169331422276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n * A017617 n

end

end A017618.P4689586169331422276

namespace A017618

/-- `A017617(n)*A017617(n)` -/
def P4689586169331422276.Spec : Prop :=
  ∀ n, P4689586169331422276.a n = A017618 n

end A017618

/-! ## A017618.P11167524002821400727

`A017619(n)/A017617(n)`
-/

namespace A017618.P11167524002821400727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017619 n : ℚ) / (A017617 n : ℚ)

end

end A017618.P11167524002821400727

namespace A017618

/-- `A017619(n)/A017617(n)` -/
def P11167524002821400727.Spec : Prop :=
  ∀ n, P11167524002821400727.a n = (A017618 n : ℚ)

end A017618

/-! ## A017618.P16400904149071705337

`A017621(n)/A017619(n)`
-/

namespace A017618.P16400904149071705337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017621 n : ℚ) / (A017619 n : ℚ)

end

end A017618.P16400904149071705337

namespace A017618

/-- `A017621(n)/A017619(n)` -/
def P16400904149071705337.Spec : Prop :=
  ∀ n, P16400904149071705337.a n = (A017618 n : ℚ)

end A017618

/-! ## A017618.P8734711344618447716

`A017622(n)/A017620(n)`
-/

namespace A017618.P8734711344618447716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017622 n : ℚ) / (A017620 n : ℚ)

end

end A017618.P8734711344618447716

namespace A017618

/-- `A017622(n)/A017620(n)` -/
def P8734711344618447716.Spec : Prop :=
  ∀ n, P8734711344618447716.a n = (A017618 n : ℚ)

end A017618

/-! ## A017618.P11213043341756052063

`A017619(n)²/A017620(n)`
-/

namespace A017618.P11213043341756052063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017619 n ^ 2 : ℚ) / (A017620 n : ℚ)

end

end A017618.P11213043341756052063

namespace A017618

/-- `A017619(n)²/A017620(n)` -/
def P11213043341756052063.Spec : Prop :=
  ∀ n, P11213043341756052063.a n = (A017618 n : ℚ)

end A017618

/-!
# A017619: a(n) = (12*n + 8)^3.

The programs for A017619, the canonical program `A017619.P1557982836546569315` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017619 has offset 0).

The definition of A017619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+8)^3` (program `A017619.P1557982836546569315`, by `A017619.P1557982836546569315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017619.P1557982836546569315

`(12*n+8)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017619

/-- `(12*n+8)^3` -/
def P1557982836546569315.Spec : Prop :=
  ∀ n, (P1557982836546569315.a n : ℤ) = A017619 n

theorem P1557982836546569315.correct : P1557982836546569315.Spec := by
  intro n
  simp only [A017619]

end A017619

/-! ## A017619.P8133281009509339597

`64*A016791(n)`
-/

namespace A017619.P8133281009509339597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A016791 n

end

end A017619.P8133281009509339597

namespace A017619

/-- `64*A016791(n)` -/
def P8133281009509339597.Spec : Prop :=
  ∀ n, P8133281009509339597.a n = A017619 n

end A017619

/-! ## A017619.P7240251754926984100

`sqrt(A017622(n))`
-/

namespace A017619.P7240251754926984100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017622 n : ℝ)

end

end A017619.P7240251754926984100

namespace A017619

/-- `sqrt(A017622(n))` -/
def P7240251754926984100.Spec : Prop :=
  ∀ n, P7240251754926984100.a n = (A017619 n : ℝ)

end A017619

/-! ## A017619.P14921497788530963036

`8*A016959(n)`
-/

namespace A017619.P14921497788530963036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016959 n

end

end A017619.P14921497788530963036

namespace A017619

/-- `8*A016959(n)` -/
def P14921497788530963036.Spec : Prop :=
  ∀ n, P14921497788530963036.a n = A017619 n

end A017619

/-! ## A017619.P14993746092818133394

`8*sqrt(A016962(n))`
-/

namespace A017619.P14993746092818133394
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  8 * Real.sqrt (A016962 n : ℝ)

end

end A017619.P14993746092818133394

namespace A017619

/-- `8*sqrt(A016962(n))` -/
def P14993746092818133394.Spec : Prop :=
  ∀ n, P14993746092818133394.a n = (A017619 n : ℝ)

end A017619

/-! ## A017619.P4459894361314889585

`sqrt(A017618(n)^3)`
-/

namespace A017619.P4459894361314889585
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017618 n ^ 3 : ℝ)

end

end A017619.P4459894361314889585

namespace A017619

/-- `sqrt(A017618(n)^3)` -/
def P4459894361314889585.Spec : Prop :=
  ∀ n, P4459894361314889585.a n = (A017619 n : ℝ)

end A017619

/-! ## A017619.P12868967549116897354

`A017617(n)*A017618(n)`
-/

namespace A017619.P12868967549116897354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n * A017618 n

end

end A017619.P12868967549116897354

namespace A017619

/-- `A017617(n)*A017618(n)` -/
def P12868967549116897354.Spec : Prop :=
  ∀ n, P12868967549116897354.a n = A017619 n

end A017619

/-! ## A017619.P13865412655338489516

`A016962(n)/A016791(n)`
-/

namespace A017619.P13865412655338489516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016962 n : ℚ) / (A016791 n : ℚ)

end

end A017619.P13865412655338489516

namespace A017619

/-- `A016962(n)/A016791(n)` -/
def P13865412655338489516.Spec : Prop :=
  ∀ n, P13865412655338489516.a n = (A017619 n : ℚ)

end A017619

/-! ## A017619.P5510475616628858436

`A017620(n)/A017617(n)`
-/

namespace A017619.P5510475616628858436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017620 n : ℚ) / (A017617 n : ℚ)

end

end A017619.P5510475616628858436

namespace A017619

/-- `A017620(n)/A017617(n)` -/
def P5510475616628858436.Spec : Prop :=
  ∀ n, P5510475616628858436.a n = (A017619 n : ℚ)

end A017619

/-! ## A017619.P8788230687145840932

`A017621(n)/A017618(n)`
-/

namespace A017619.P8788230687145840932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017621 n : ℚ) / (A017618 n : ℚ)

end

end A017619.P8788230687145840932

namespace A017619

/-- `A017621(n)/A017618(n)` -/
def P8788230687145840932.Spec : Prop :=
  ∀ n, P8788230687145840932.a n = (A017619 n : ℚ)

end A017619

/-! ## A017619.P4659836336887487331

`A017621(n)/A017617(n)²`
-/

namespace A017619.P4659836336887487331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017621 n : ℚ) / (A017617 n ^ 2 : ℚ)

end

end A017619.P4659836336887487331

namespace A017619

/-- `A017621(n)/A017617(n)²` -/
def P4659836336887487331.Spec : Prop :=
  ∀ n, P4659836336887487331.a n = (A017619 n : ℚ)

end A017619

/-! ## A017619.P8469091964953579023

`A017623(n)/A017618(n)²`
-/

namespace A017619.P8469091964953579023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017623 n : ℚ) / (A017618 n ^ 2 : ℚ)

end

end A017619.P8469091964953579023

namespace A017619

/-- `A017623(n)/A017618(n)²` -/
def P8469091964953579023.Spec : Prop :=
  ∀ n, P8469091964953579023.a n = (A017619 n : ℚ)

end A017619

/-! ## A017619.P15000587568406720861

`A017623(n)/A017617(n)²²`
-/

namespace A017619.P15000587568406720861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017623 n : ℚ) / ((A017617 n ^ 2) ^ 2 : ℚ)

end

end A017619.P15000587568406720861

namespace A017619

/-- `A017623(n)/A017617(n)²²` -/
def P15000587568406720861.Spec : Prop :=
  ∀ n, P15000587568406720861.a n = (A017619 n : ℚ)

end A017619

/-! ## A017619.P3282092421149111227

`(2*A016958(n))²/A016789(n)`
-/

namespace A017619.P3282092421149111227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * A016958 n) ^ 2 : ℚ) / (A016789 n : ℚ)

end

end A017619.P3282092421149111227

namespace A017619

/-- `(2*A016958(n))²/A016789(n)` -/
def P3282092421149111227.Spec : Prop :=
  ∀ n, P3282092421149111227.a n = (A017619 n : ℚ)

end A017619

/-! ## A017619.P9884589582669068156

`8*A016957(n)*A016957(n)²`
-/

namespace A017619.P9884589582669068156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016957 n * A016957 n ^ 2

end

end A017619.P9884589582669068156

namespace A017619

/-- `8*A016957(n)*A016957(n)²` -/
def P9884589582669068156.Spec : Prop :=
  ∀ n, P9884589582669068156.a n = A017619 n

end A017619

/-! ## A017619.P6035336258635318106

`A016794(n)/A016797(n)*A016962(n)`
-/

namespace A017619.P6035336258635318106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016794 n : ℚ) / (A016797 n : ℚ) * (A016962 n : ℚ)

end

end A017619.P6035336258635318106

namespace A017619

/-- `A016794(n)/A016797(n)*A016962(n)` -/
def P6035336258635318106.Spec : Prop :=
  ∀ n, P6035336258635318106.a n = (A017619 n : ℚ)

end A017619

/-! ## A017619.P3487104033666622630

`A016796(n)/A016799(n)*A016962(n)`
-/

namespace A017619.P3487104033666622630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016796 n : ℚ) / (A016799 n : ℚ) * (A016962 n : ℚ)

end

end A017619.P3487104033666622630

namespace A017619

/-- `A016796(n)/A016799(n)*A016962(n)` -/
def P3487104033666622630.Spec : Prop :=
  ∀ n, P3487104033666622630.a n = (A017619 n : ℚ)

end A017619

/-! ## A017619.P7762771551203496798

`A016797(n)/A016800(n)*A016962(n)`
-/

namespace A017619.P7762771551203496798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016797 n : ℚ) / (A016800 n : ℚ) * (A016962 n : ℚ)

end

end A017619.P7762771551203496798

namespace A017619

/-- `A016797(n)/A016800(n)*A016962(n)` -/
def P7762771551203496798.Spec : Prop :=
  ∀ n, P7762771551203496798.a n = (A017619 n : ℚ)

end A017619

/-! ## A017619.P4285826599098889779

`A017622(n)/(A017617(n)²*A017617(n))`
-/

namespace A017619.P4285826599098889779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017622 n : ℚ) / (A017617 n ^ 2 * A017617 n : ℚ)

end

end A017619.P4285826599098889779

namespace A017619

/-- `A017622(n)/(A017617(n)²*A017617(n))` -/
def P4285826599098889779.Spec : Prop :=
  ∀ n, P4285826599098889779.a n = (A017619 n : ℚ)

end A017619

/-!
# A017620: a(n) = (12*n + 8)^4.

The programs for A017620, the canonical program `A017620.P4519593927974684346` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017620 has offset 0).

The definition of A017620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+8)^4` (program `A017620.P4519593927974684346`, by `A017620.P4519593927974684346.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017620.P4519593927974684346

`(12*n+8)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017620

/-- `(12*n+8)^4` -/
def P4519593927974684346.Spec : Prop :=
  ∀ n, (P4519593927974684346.a n : ℤ) = A017620 n

theorem P4519593927974684346.correct : P4519593927974684346.Spec := by
  intro n
  simp only [A017620]

end A017620

/-! ## A017620.P14263427417648079319

`lcm(2, (12*n+8)²²)`
-/

namespace A017620.P14263427417648079319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (((12 * n + 8) ^ 2) ^ 2)

end

end A017620.P14263427417648079319

namespace A017620

/-- `lcm(2, (12*n+8)²²)` -/
def P14263427417648079319.Spec : Prop :=
  ∀ n, (P14263427417648079319.a n : ℤ) = A017620 n

end A017620

/-! ## A017620.P15785318788173187510

`(or(1, 12*n)+7)²²`
-/

namespace A017620.P15785318788173187510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (12 * n) + 7) ^ 2) ^ 2

end

end A017620.P15785318788173187510

namespace A017620

/-- `(or(1, 12*n)+7)²²` -/
def P15785318788173187510.Spec : Prop :=
  ∀ n, (P15785318788173187510.a n : ℤ) = A017620 n

end A017620

/-! ## A017620.P4328816960222410832

`(xor(1, 12*n)+7)²²`
-/

namespace A017620.P4328816960222410832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (12 * n) + 7) ^ 2) ^ 2

end

end A017620.P4328816960222410832

namespace A017620

/-- `(xor(1, 12*n)+7)²²` -/
def P4328816960222410832.Spec : Prop :=
  ∀ n, (P4328816960222410832.a n : ℤ) = A017620 n

end A017620

/-! ## A017620.P2764565352427030445

`A017618(n)²`
-/

namespace A017620.P2764565352427030445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017618 n ^ 2

end

end A017620.P2764565352427030445

namespace A017620

/-- `A017618(n)²` -/
def P2764565352427030445.Spec : Prop :=
  ∀ n, P2764565352427030445.a n = A017620 n

end A017620

/-! ## A017620.P15919499921840903651

`sqrt(A017624(n))`
-/

namespace A017620.P15919499921840903651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017624 n : ℝ)

end

end A017620.P15919499921840903651

namespace A017620

/-- `sqrt(A017624(n))` -/
def P15919499921840903651.Spec : Prop :=
  ∀ n, P15919499921840903651.a n = (A017620 n : ℝ)

end A017620

/-! ## A017620.P5481829605972762626

`A017617(n)²²`
-/

namespace A017620.P5481829605972762626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017617 n ^ 2) ^ 2

end

end A017620.P5481829605972762626

namespace A017620

/-- `A017617(n)²²` -/
def P5481829605972762626.Spec : Prop :=
  ∀ n, P5481829605972762626.a n = A017620 n

end A017620

/-! ## A017620.P15938945924847511941

`(4*A016958(n))²`
-/

namespace A017620.P15938945924847511941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016958 n) ^ 2

end

end A017620.P15938945924847511941

namespace A017620

/-- `(4*A016958(n))²` -/
def P15938945924847511941.Spec : Prop :=
  ∀ n, P15938945924847511941.a n = A017620 n

end A017620

/-! ## A017620.P452809398712870895

`4*4*A016960(n)`
-/

namespace A017620.P452809398712870895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A016960 n)

end

end A017620.P452809398712870895

namespace A017620

/-- `4*4*A016960(n)` -/
def P452809398712870895.Spec : Prop :=
  ∀ n, P452809398712870895.a n = A017620 n

end A017620

/-! ## A017620.P6295295925403607853

`16*16*A016792(n)`
-/

namespace A017620.P6295295925403607853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (16 * A016792 n)

end

end A017620.P6295295925403607853

namespace A017620

/-- `16*16*A016792(n)` -/
def P6295295925403607853.Spec : Prop :=
  ∀ n, P6295295925403607853.a n = A017620 n

end A017620

/-! ## A017620.P2601259848264667852

`(A017605(n)+1)²²`
-/

namespace A017620.P2601259848264667852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017605 n + 1) ^ 2) ^ 2

end

end A017620.P2601259848264667852

namespace A017620

/-- `(A017605(n)+1)²²` -/
def P2601259848264667852.Spec : Prop :=
  ∀ n, P2601259848264667852.a n = A017620 n

end A017620

/-! ## A017620.P796193655406761930

`(A017593(n)+2)²²`
-/

namespace A017620.P796193655406761930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017593 n + 2) ^ 2) ^ 2

end

end A017620.P796193655406761930

namespace A017620

/-- `(A017593(n)+2)²²` -/
def P796193655406761930.Spec : Prop :=
  ∀ n, P796193655406761930.a n = A017620 n

end A017620

/-! ## A017620.P10356504543312518557

`(1-A017629(n))²²`
-/

namespace A017620.P10356504543312518557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017629 n) ^ 2) ^ 2

end

end A017620.P10356504543312518557

namespace A017620

/-- `(1-A017629(n))²²` -/
def P10356504543312518557.Spec : Prop :=
  ∀ n, P10356504543312518557.a n = A017620 n

end A017620

/-! ## A017620.P3420982758987052375

`(A017581(n)+3)²²`
-/

namespace A017620.P3420982758987052375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017581 n + 3) ^ 2) ^ 2

end

end A017620.P3420982758987052375

namespace A017620

/-- `(A017581(n)+3)²²` -/
def P3420982758987052375.Spec : Prop :=
  ∀ n, P3420982758987052375.a n = A017620 n

end A017620

/-! ## A017620.P14987481163693891354

`(2-A017641(n))²²`
-/

namespace A017620.P14987481163693891354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017641 n) ^ 2) ^ 2

end

end A017620.P14987481163693891354

namespace A017620

/-- `(2-A017641(n))²²` -/
def P14987481163693891354.Spec : Prop :=
  ∀ n, P14987481163693891354.a n = A017620 n

end A017620

/-! ## A017620.P5443709547783541423

`(2*A016957(n))²²`
-/

namespace A017620.P5443709547783541423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A016957 n) ^ 2) ^ 2

end

end A017620.P5443709547783541423

namespace A017620

/-- `(2*A016957(n))²²` -/
def P5443709547783541423.Spec : Prop :=
  ∀ n, P5443709547783541423.a n = A017620 n

end A017620

/-! ## A017620.P11585885171257049912

`(3-A017653(n))²²`
-/

namespace A017620.P11585885171257049912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017653 n) ^ 2) ^ 2

end

end A017620.P11585885171257049912

namespace A017620

/-- `(3-A017653(n))²²` -/
def P11585885171257049912.Spec : Prop :=
  ∀ n, P11585885171257049912.a n = A017620 n

end A017620

/-! ## A017620.P5246498370789802530

`(A017485(n)+n)²²`
-/

namespace A017620.P5246498370789802530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017485 n + (n : ℤ)) ^ 2) ^ 2

end

end A017620.P5246498370789802530

namespace A017620

/-- `(A017485(n)+n)²²` -/
def P5246498370789802530.Spec : Prop :=
  ∀ n, P5246498370789802530.a n = A017620 n

end A017620

/-! ## A017620.P3676864569732696289

`(sqrt(A017606(n))+1)²²`
-/

namespace A017620.P3676864569732696289
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017606 n : ℝ) + 1) ^ 2) ^ 2

end

end A017620.P3676864569732696289

namespace A017620

/-- `(sqrt(A017606(n))+1)²²` -/
def P3676864569732696289.Spec : Prop :=
  ∀ n, P3676864569732696289.a n = (A017620 n : ℝ)

end A017620

/-! ## A017620.P5522045731945979536

`(sqrt(A017594(n))+2)²²`
-/

namespace A017620.P5522045731945979536
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017594 n : ℝ) + 2) ^ 2) ^ 2

end

end A017620.P5522045731945979536

namespace A017620

/-- `(sqrt(A017594(n))+2)²²` -/
def P5522045731945979536.Spec : Prop :=
  ∀ n, P5522045731945979536.a n = (A017620 n : ℝ)

end A017620

/-!
# A017621: a(n) = (12*n + 8)^5.

The programs for A017621, the canonical program `A017621.P6697549991250319689` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017621 has offset 0).

The definition of A017621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+8)^5` (program `A017621.P6697549991250319689`, by `A017621.P6697549991250319689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017621.P6697549991250319689

`(12*n+8)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017621

/-- `(12*n+8)^5` -/
def P6697549991250319689.Spec : Prop :=
  ∀ n, (P6697549991250319689.a n : ℤ) = A017621 n

theorem P6697549991250319689.correct : P6697549991250319689.Spec := by
  intro n
  simp only [A017621]

end A017621

/-! ## A017621.P11473029381968606257

`record[xor(1, 3*xor(3, n))^5]`
-/

namespace A017621.P11473029381968606257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * Nat.xor 3 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017621.P11473029381968606257

namespace A017621

/-- `record[xor(1, 3*xor(3, n))^5]` -/
def P11473029381968606257.Spec : Prop :=
  ∀ n, (P11473029381968606257.a n : ℤ) = A017621 n

end A017621

/-! ## A017621.P18341345952760749604

`(xor(1, 12*n)+7)*(xor(1, 12*n)+7)²²`
-/

namespace A017621.P18341345952760749604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (12 * n) + 7) * ((Nat.xor 1 (12 * n) + 7) ^ 2) ^ 2

end

end A017621.P18341345952760749604

namespace A017621

/-- `(xor(1, 12*n)+7)*(xor(1, 12*n)+7)²²` -/
def P18341345952760749604.Spec : Prop :=
  ∀ n, (P18341345952760749604.a n : ℤ) = A017621 n

end A017621

/-! ## A017621.P4700986998980065459

`32*A016961(n)`
-/

namespace A017621.P4700986998980065459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A016961 n

end

end A017621.P4700986998980065459

namespace A017621

/-- `32*A016961(n)` -/
def P4700986998980065459.Spec : Prop :=
  ∀ n, P4700986998980065459.a n = A017621 n

end A017621

/-! ## A017621.P67433975097079080

`32*32*A016793(n)`
-/

namespace A017621.P67433975097079080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * (32 * A016793 n)

end

end A017621.P67433975097079080

namespace A017621

/-- `32*32*A016793(n)` -/
def P67433975097079080.Spec : Prop :=
  ∀ n, P67433975097079080.a n = A017621 n

end A017621

/-! ## A017621.P3247753078878136186

`A017622(n)/(12*n+8)`
-/

namespace A017621.P3247753078878136186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017622 n : ℚ) / (12 * n + 8 : ℚ)

end

end A017621.P3247753078878136186

namespace A017621

/-- `A017622(n)/(12*n+8)` -/
def P3247753078878136186.Spec : Prop :=
  ∀ n, P3247753078878136186.a n = (A017621 n : ℚ)

end A017621

/-! ## A017621.P17530399134230361460

`A017617(n)*A017620(n)`
-/

namespace A017621.P17530399134230361460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n * A017620 n

end

end A017621.P17530399134230361460

namespace A017621

/-- `A017617(n)*A017620(n)` -/
def P17530399134230361460.Spec : Prop :=
  ∀ n, P17530399134230361460.a n = A017621 n

end A017621

/-! ## A017621.P16984546718416114580

`A017618(n)*A017619(n)`
-/

namespace A017621.P16984546718416114580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017618 n * A017619 n

end

end A017621.P16984546718416114580

namespace A017621

/-- `A017618(n)*A017619(n)` -/
def P16984546718416114580.Spec : Prop :=
  ∀ n, P16984546718416114580.a n = A017621 n

end A017621

/-! ## A017621.P14461782146940005321

`A017623(n)/A017618(n)`
-/

namespace A017621.P14461782146940005321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017623 n : ℚ) / (A017618 n : ℚ)

end

end A017621.P14461782146940005321

namespace A017621

/-- `A017623(n)/A017618(n)` -/
def P14461782146940005321.Spec : Prop :=
  ∀ n, P14461782146940005321.a n = (A017621 n : ℚ)

end A017621

/-! ## A017621.P2623409799603328222

`A017617(n)²*A017619(n)`
-/

namespace A017621.P2623409799603328222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n ^ 2 * A017619 n

end

end A017621.P2623409799603328222

namespace A017621

/-- `A017617(n)²*A017619(n)` -/
def P2623409799603328222.Spec : Prop :=
  ∀ n, P2623409799603328222.a n = A017621 n

end A017621

/-! ## A017621.P17067051078982773954

`A017618(n)²*A017617(n)`
-/

namespace A017621.P17067051078982773954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017618 n ^ 2 * A017617 n

end

end A017621.P17067051078982773954

namespace A017621

/-- `A017618(n)²*A017617(n)` -/
def P17067051078982773954.Spec : Prop :=
  ∀ n, P17067051078982773954.a n = A017621 n

end A017621

/-! ## A017621.P12197477312528400282

`A017620(n)²/A017619(n)`
-/

namespace A017621.P12197477312528400282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017620 n ^ 2 : ℚ) / (A017619 n : ℚ)

end

end A017621.P12197477312528400282

namespace A017621

/-- `A017620(n)²/A017619(n)` -/
def P12197477312528400282.Spec : Prop :=
  ∀ n, P12197477312528400282.a n = (A017621 n : ℚ)

end A017621

/-! ## A017621.P11442231500646744320

`A017623(n)/A017617(n)²`
-/

namespace A017621.P11442231500646744320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017623 n : ℚ) / (A017617 n ^ 2 : ℚ)

end

end A017621.P11442231500646744320

namespace A017621

/-- `A017623(n)/A017617(n)²` -/
def P11442231500646744320.Spec : Prop :=
  ∀ n, P11442231500646744320.a n = (A017621 n : ℚ)

end A017621

/-! ## A017621.P13138715110334405624

`1/A017617(n)*A017622(n)`
-/

namespace A017621.P13138715110334405624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A017617 n : ℚ) * (A017622 n : ℚ)

end

end A017621.P13138715110334405624

namespace A017621

/-- `1/A017617(n)*A017622(n)` -/
def P13138715110334405624.Spec : Prop :=
  ∀ n, P13138715110334405624.a n = (A017621 n : ℚ)

end A017621

/-! ## A017621.P2339801944385618032

`A017624(n)/(A017617(n)²*A017617(n))`
-/

namespace A017621.P2339801944385618032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017624 n : ℚ) / (A017617 n ^ 2 * A017617 n : ℚ)

end

end A017621.P2339801944385618032

namespace A017621

/-- `A017624(n)/(A017617(n)²*A017617(n))` -/
def P2339801944385618032.Spec : Prop :=
  ∀ n, P2339801944385618032.a n = (A017621 n : ℚ)

end A017621

/-! ## A017621.P11167737177641117391

`A016961(n)²/gcd(A016961(n), A017237(n))`
-/

namespace A017621.P11167737177641117391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016961 n ^ 2 : ℚ) / (Int.gcd (A016961 n) (A017237 n) : ℚ)

end

end A017621.P11167737177641117391

namespace A017621

/-- `A016961(n)²/gcd(A016961(n), A017237(n))` -/
def P11167737177641117391.Spec : Prop :=
  ∀ n, P11167737177641117391.a n = (A017621 n : ℚ)

end A017621

/-! ## A017621.P16073683579772383858

`A016937(Δ[n²])`
-/

namespace A017621.P16073683579772383858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016937 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017621.P16073683579772383858

namespace A017621

/-- `A016937(Δ[n²])` -/
def P16073683579772383858.Spec : Prop :=
  ∀ n, P16073683579772383858.a n = A017621 n

end A017621

/-! ## A017621.P4287214515467405068

`record[A166138(n+1)^5]`
-/

namespace A017621.P4287214515467405068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166138 (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017621.P4287214515467405068

namespace A017621

/-- `record[A166138(n+1)^5]` -/
def P4287214515467405068.Spec : Prop :=
  ∀ n, P4287214515467405068.a n = A017621 n

end A017621

/-! ## A017621.P11334636855897190501

`lcm(2, A016937(2*n+1))`
-/

namespace A017621.P11334636855897190501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016937 (2 * n + 1))

end

end A017621.P11334636855897190501

namespace A017621

/-- `lcm(2, A016937(2*n+1))` -/
def P11334636855897190501.Spec : Prop :=
  ∀ n, (P11334636855897190501.a n : ℤ) = A017621 n

end A017621

/-! ## A017621.P11628777071679862007

`32*A016781(2*n+1)`
-/

namespace A017621.P11628777071679862007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A016781 (2 * n + 1)

end

end A017621.P11628777071679862007

namespace A017621

/-- `32*A016781(2*n+1)` -/
def P11628777071679862007.Spec : Prop :=
  ∀ n, P11628777071679862007.a n = A017621 n

end A017621

/-!
# A017622: a(n) = (12*n+8)^6.

The programs for A017622, the canonical program `A017622.P12646693684139379195` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017622 has offset 0).

The definition of A017622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+8)^6` (program `A017622.P12646693684139379195`, by `A017622.P12646693684139379195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017622.P12646693684139379195

`(12*n+8)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017622

/-- `(12*n+8)^6` -/
def P12646693684139379195.Spec : Prop :=
  ∀ n, (P12646693684139379195.a n : ℤ) = A017622 n

theorem P12646693684139379195.correct : P12646693684139379195.Spec := by
  intro n
  simp only [A017622]

end A017622

/-! ## A017622.P11789573628891917020

`A017619(n)²`
-/

namespace A017622.P11789573628891917020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017619 n ^ 2

end

end A017622.P11789573628891917020

namespace A017622

/-- `A017619(n)²` -/
def P11789573628891917020.Spec : Prop :=
  ∀ n, P11789573628891917020.a n = A017622 n

end A017622

/-! ## A017622.P4656451595590843681

`(8*A016959(n))²`
-/

namespace A017622.P4656451595590843681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * A016959 n) ^ 2

end

end A017622.P4656451595590843681

namespace A017622

/-- `(8*A016959(n))²` -/
def P4656451595590843681.Spec : Prop :=
  ∀ n, P4656451595590843681.a n = A017622 n

end A017622

/-! ## A017622.P13894710497191266782

`(A017617(n)^3)²`
-/

namespace A017622.P13894710497191266782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017617 n ^ 3) ^ 2

end

end A017622.P13894710497191266782

namespace A017622

/-- `(A017617(n)^3)²` -/
def P13894710497191266782.Spec : Prop :=
  ∀ n, P13894710497191266782.a n = A017622 n

end A017622

/-! ## A017622.P10258960120389767957

`8*8*A016962(n)`
-/

namespace A017622.P10258960120389767957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (8 * A016962 n)

end

end A017622.P10258960120389767957

namespace A017622

/-- `8*8*A016962(n)` -/
def P10258960120389767957.Spec : Prop :=
  ∀ n, P10258960120389767957.a n = A017622 n

end A017622

/-! ## A017622.P9393898919138051584

`64*64*A016794(n)`
-/

namespace A017622.P9393898919138051584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * (64 * A016794 n)

end

end A017622.P9393898919138051584

namespace A017622

/-- `64*64*A016794(n)` -/
def P9393898919138051584.Spec : Prop :=
  ∀ n, P9393898919138051584.a n = A017622 n

end A017622

/-! ## A017622.P13953754201870893179

`A017617(n)*A017621(n)`
-/

namespace A017622.P13953754201870893179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n * A017621 n

end

end A017622.P13953754201870893179

namespace A017622

/-- `A017617(n)*A017621(n)` -/
def P13953754201870893179.Spec : Prop :=
  ∀ n, P13953754201870893179.a n = A017622 n

end A017622

/-! ## A017622.P6424814574799748561

`A017618(n)*A017620(n)`
-/

namespace A017622.P6424814574799748561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017618 n * A017620 n

end

end A017622.P6424814574799748561

namespace A017622

/-- `A017618(n)*A017620(n)` -/
def P6424814574799748561.Spec : Prop :=
  ∀ n, P6424814574799748561.a n = A017622 n

end A017622

/-! ## A017622.P6476359057071843099

`A017623(n)/A017617(n)`
-/

namespace A017622.P6476359057071843099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017623 n : ℚ) / (A017617 n : ℚ)

end

end A017622.P6476359057071843099

namespace A017622

/-- `A017623(n)/A017617(n)` -/
def P6476359057071843099.Spec : Prop :=
  ∀ n, P6476359057071843099.a n = (A017622 n : ℚ)

end A017622

/-! ## A017622.P6255727446201943391

`(A017617(n)*A017618(n))²`
-/

namespace A017622.P6255727446201943391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017617 n * A017618 n) ^ 2

end

end A017622.P6255727446201943391

namespace A017622

/-- `(A017617(n)*A017618(n))²` -/
def P6255727446201943391.Spec : Prop :=
  ∀ n, P6255727446201943391.a n = A017622 n

end A017622

/-! ## A017622.P4320179427687566645

`A017617(n)²*A017620(n)`
-/

namespace A017622.P4320179427687566645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n ^ 2 * A017620 n

end

end A017622.P4320179427687566645

namespace A017622

/-- `A017617(n)²*A017620(n)` -/
def P4320179427687566645.Spec : Prop :=
  ∀ n, P4320179427687566645.a n = A017622 n

end A017622

/-! ## A017622.P2486654993136361486

`(A016962(n)/A016791(n))²`
-/

namespace A017622.P2486654993136361486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016962 n : ℚ) / (A016791 n : ℚ)) ^ 2

end

end A017622.P2486654993136361486

namespace A017622

/-- `(A016962(n)/A016791(n))²` -/
def P2486654993136361486.Spec : Prop :=
  ∀ n, P2486654993136361486.a n = (A017622 n : ℚ)

end A017622

/-! ## A017622.P17713902504407553667

`(A017621(n)/A017618(n))²`
-/

namespace A017622.P17713902504407553667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017621 n : ℚ) / (A017618 n : ℚ)) ^ 2

end

end A017622.P17713902504407553667

namespace A017622

/-- `(A017621(n)/A017618(n))²` -/
def P17713902504407553667.Spec : Prop :=
  ∀ n, P17713902504407553667.a n = (A017622 n : ℚ)

end A017622

/-! ## A017622.P372912028940797957

`A017624(n)/A017617(n)²`
-/

namespace A017622.P372912028940797957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017624 n : ℚ) / (A017617 n ^ 2 : ℚ)

end

end A017622.P372912028940797957

namespace A017622

/-- `A017624(n)/A017617(n)²` -/
def P372912028940797957.Spec : Prop :=
  ∀ n, P372912028940797957.a n = (A017622 n : ℚ)

end A017622

/-! ## A017622.P5252035224174621585

`(A017623(n)/A017618(n)²)²`
-/

namespace A017622.P5252035224174621585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017623 n : ℚ) / (A017618 n ^ 2 : ℚ)) ^ 2

end

end A017622.P5252035224174621585

namespace A017622

/-- `(A017623(n)/A017618(n)²)²` -/
def P5252035224174621585.Spec : Prop :=
  ∀ n, P5252035224174621585.a n = (A017622 n : ℚ)

end A017622

/-! ## A017622.P18299633190592558821

`(Δ[A033580(n)]^3)²`
-/

namespace A017622.P18299633190592558821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017622.P18299633190592558821

namespace A017622

/-- `(Δ[A033580(n)]^3)²` -/
def P18299633190592558821.Spec : Prop :=
  ∀ n, P18299633190592558821.a n = A017622 n

end A017622

/-! ## A017622.P2948394707445361767

`(Δ[A136392(n+1)]^3)²`
-/

namespace A017622.P2948394707445361767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017622.P2948394707445361767

namespace A017622

/-- `(Δ[A136392(n+1)]^3)²` -/
def P2948394707445361767.Spec : Prop :=
  ∀ n, P2948394707445361767.a n = A017622 n

end A017622

/-! ## A017622.P18095996500348462205

`A016938(Δ[n²])`
-/

namespace A017622.P18095996500348462205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016938 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017622.P18095996500348462205

namespace A017622

/-- `A016938(Δ[n²])` -/
def P18095996500348462205.Spec : Prop :=
  ∀ n, P18095996500348462205.a n = A017622 n

end A017622

/-! ## A017622.P9954186304679038031

`A016935(Δ[n²])²`
-/

namespace A017622.P9954186304679038031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017622.P9954186304679038031

namespace A017622

/-- `A016935(Δ[n²])²` -/
def P9954186304679038031.Spec : Prop :=
  ∀ n, P9954186304679038031.a n = A017622 n

end A017622

/-! ## A017622.P158643371120806431

`record[A166138(n+1)^6]`
-/

namespace A017622.P158643371120806431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166138 (n + 1) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017622.P158643371120806431

namespace A017622

/-- `record[A166138(n+1)^6]` -/
def P158643371120806431.Spec : Prop :=
  ∀ n, P158643371120806431.a n = A017622 n

end A017622

/-!
# A017623: a(n) = (12*n + 8)^7.

The programs for A017623, the canonical program `A017623.P17277640711637896884` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017623 has offset 0).

The definition of A017623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+8)^7` (program `A017623.P17277640711637896884`, by `A017623.P17277640711637896884.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017623.P17277640711637896884

`(12*n+8)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017623

/-- `(12*n+8)^7` -/
def P17277640711637896884.Spec : Prop :=
  ∀ n, (P17277640711637896884.a n : ℤ) = A017623 n

theorem P17277640711637896884.correct : P17277640711637896884.Spec := by
  intro n
  simp only [A017623]

end A017623

/-! ## A017623.P383884237341404313

`(12*n+8)*A017622(n)`
-/

namespace A017623.P383884237341404313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 8 : ℤ) * A017622 n

end

end A017623.P383884237341404313

namespace A017623

/-- `(12*n+8)*A017622(n)` -/
def P383884237341404313.Spec : Prop :=
  ∀ n, P383884237341404313.a n = A017623 n

end A017623

/-! ## A017623.P15968984092999325515

`A017618(n)*A017621(n)`
-/

namespace A017623.P15968984092999325515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017618 n * A017621 n

end

end A017623.P15968984092999325515

namespace A017623

/-- `A017618(n)*A017621(n)` -/
def P15968984092999325515.Spec : Prop :=
  ∀ n, P15968984092999325515.a n = A017623 n

end A017623

/-! ## A017623.P15106693852982554493

`A017619(n)*A017620(n)`
-/

namespace A017623.P15106693852982554493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017619 n * A017620 n

end

end A017623.P15106693852982554493

namespace A017623

/-- `A017619(n)*A017620(n)` -/
def P15106693852982554493.Spec : Prop :=
  ∀ n, P15106693852982554493.a n = A017623 n

end A017623

/-! ## A017623.P3799376775593420727

`A017624(n)/A017617(n)`
-/

namespace A017623.P3799376775593420727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017624 n : ℚ) / (A017617 n : ℚ)

end

end A017623.P3799376775593420727

namespace A017623

/-- `A017624(n)/A017617(n)` -/
def P3799376775593420727.Spec : Prop :=
  ∀ n, P3799376775593420727.a n = (A017623 n : ℚ)

end A017623

/-! ## A017623.P15581999949511999415

`A017617(n)²*A017621(n)`
-/

namespace A017623.P15581999949511999415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n ^ 2 * A017621 n

end

end A017623.P15581999949511999415

namespace A017623

/-- `A017617(n)²*A017621(n)` -/
def P15581999949511999415.Spec : Prop :=
  ∀ n, P15581999949511999415.a n = A017623 n

end A017623

/-! ## A017623.P2849374169324513109

`A017618(n)²*A017619(n)`
-/

namespace A017623.P2849374169324513109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017618 n ^ 2 * A017619 n

end

end A017623.P2849374169324513109

namespace A017623

/-- `A017618(n)²*A017619(n)` -/
def P2849374169324513109.Spec : Prop :=
  ∀ n, P2849374169324513109.a n = A017623 n

end A017623

/-! ## A017623.P14818122969546008971

`A017619(n)²*A017617(n)`
-/

namespace A017623.P14818122969546008971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017619 n ^ 2 * A017617 n

end

end A017623.P14818122969546008971

namespace A017623

/-- `A017619(n)²*A017617(n)` -/
def P14818122969546008971.Spec : Prop :=
  ∀ n, P14818122969546008971.a n = A017623 n

end A017623

/-! ## A017623.P8119661236825319232

`A017620(n)²/A017617(n)`
-/

namespace A017623.P8119661236825319232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017620 n ^ 2 : ℚ) / (A017617 n : ℚ)

end

end A017623.P8119661236825319232

namespace A017623

/-- `A017620(n)²/A017617(n)` -/
def P8119661236825319232.Spec : Prop :=
  ∀ n, P8119661236825319232.a n = (A017623 n : ℚ)

end A017623

/-! ## A017623.P15587054028170869334

`A017618(n)²²/A017617(n)`
-/

namespace A017623.P15587054028170869334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017618 n ^ 2) ^ 2 : ℚ) / (A017617 n : ℚ)

end

end A017623.P15587054028170869334

namespace A017623

/-- `A017618(n)²²/A017617(n)` -/
def P15587054028170869334.Spec : Prop :=
  ∀ n, P15587054028170869334.a n = (A017623 n : ℚ)

end A017623

/-! ## A017623.P3921474409388612209

`A016963(n)/A016795(n)*A016963(n)`
-/

namespace A017623.P3921474409388612209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016963 n : ℚ) / (A016795 n : ℚ) * (A016963 n : ℚ)

end

end A017623.P3921474409388612209

namespace A017623

/-- `A016963(n)/A016795(n)*A016963(n)` -/
def P3921474409388612209.Spec : Prop :=
  ∀ n, P3921474409388612209.a n = (A017623 n : ℚ)

end A017623

/-! ## A017623.P10355250109925508025

`A017621(n)/A017619(n)*A017621(n)`
-/

namespace A017623.P10355250109925508025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017621 n : ℚ) / (A017619 n : ℚ) * (A017621 n : ℚ)

end

end A017623.P10355250109925508025

namespace A017623

/-- `A017621(n)/A017619(n)*A017621(n)` -/
def P10355250109925508025.Spec : Prop :=
  ∀ n, P10355250109925508025.a n = (A017623 n : ℚ)

end A017623

/-! ## A017623.P11303913235602395784

`A016939(Δ[n²])`
-/

namespace A017623.P11303913235602395784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016939 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017623.P11303913235602395784

namespace A017623

/-- `A016939(Δ[n²])` -/
def P11303913235602395784.Spec : Prop :=
  ∀ n, P11303913235602395784.a n = A017623 n

end A017623

/-! ## A017623.P8617973573583362993

`lcm(2, A016939(2*n+1))`
-/

namespace A017623.P8617973573583362993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016939 (2 * n + 1))

end

end A017623.P8617973573583362993

namespace A017623

/-- `lcm(2, A016939(2*n+1))` -/
def P8617973573583362993.Spec : Prop :=
  ∀ n, (P8617973573583362993.a n : ℤ) = A017623 n

end A017623

/-! ## A017623.P11833635216211410929

`(12*n+8)*A016938(2*n+1)`
-/

namespace A017623.P11833635216211410929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 8 : ℤ) * A016938 (2 * n + 1)

end

end A017623.P11833635216211410929

namespace A017623

/-- `(12*n+8)*A016938(2*n+1)` -/
def P11833635216211410929.Spec : Prop :=
  ∀ n, P11833635216211410929.a n = A017623 n

end A017623

/-! ## A017623.P13306572083054330575

`A016940(2*n+1)/(12*n+8)`
-/

namespace A017623.P13306572083054330575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016940 (2 * n + 1) : ℚ) / (12 * n + 8 : ℚ)

end

end A017623.P13306572083054330575

namespace A017623

/-- `A016940(2*n+1)/(12*n+8)` -/
def P13306572083054330575.Spec : Prop :=
  ∀ n, P13306572083054330575.a n = (A017623 n : ℚ)

end A017623

/-! ## A017623.P12926000603991551028

`(12*n+8)²*A016937(2*n+1)`
-/

namespace A017623.P12926000603991551028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 8) ^ 2 : ℤ) * A016937 (2 * n + 1)

end

end A017623.P12926000603991551028

namespace A017623

/-- `(12*n+8)²*A016937(2*n+1)` -/
def P12926000603991551028.Spec : Prop :=
  ∀ n, P12926000603991551028.a n = A017623 n

end A017623

/-! ## A017623.P2416535861548032805

`A016936(2*n+1)²/(12*n+8)`
-/

namespace A017623.P2416535861548032805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016936 (2 * n + 1) ^ 2 : ℚ) / (12 * n + 8 : ℚ)

end

end A017623.P2416535861548032805

namespace A017623

/-- `A016936(2*n+1)²/(12*n+8)` -/
def P2416535861548032805.Spec : Prop :=
  ∀ n, P2416535861548032805.a n = (A017623 n : ℚ)

end A017623

/-! ## A017623.P4608402295795404583

`A016941(2*n+1)/(12*n+8)²`
-/

namespace A017623.P4608402295795404583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016941 (2 * n + 1) : ℚ) / ((12 * n + 8) ^ 2 : ℚ)

end

end A017623.P4608402295795404583

namespace A017623

/-- `A016941(2*n+1)/(12*n+8)²` -/
def P4608402295795404583.Spec : Prop :=
  ∀ n, P4608402295795404583.a n = (A017623 n : ℚ)

end A017623

/-!
# A017624: a(n) = (12*n + 8)^8.

The programs for A017624, the canonical program `A017624.P10381700271198295276` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017624 has offset 0).

The definition of A017624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+8)^8` (program `A017624.P10381700271198295276`, by `A017624.P10381700271198295276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017624.P10381700271198295276

`(12*n+8)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017624

/-- `(12*n+8)^8` -/
def P10381700271198295276.Spec : Prop :=
  ∀ n, (P10381700271198295276.a n : ℤ) = A017624 n

theorem P10381700271198295276.correct : P10381700271198295276.Spec := by
  intro n
  simp only [A017624]

end A017624

/-! ## A017624.P657035859877272335

`A017620(n)²`
-/

namespace A017624.P657035859877272335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017620 n ^ 2

end

end A017624.P657035859877272335

namespace A017624

/-- `A017620(n)²` -/
def P657035859877272335.Spec : Prop :=
  ∀ n, P657035859877272335.a n = A017624 n

end A017624

/-! ## A017624.P17976857149844262593

`A017618(n)²²`
-/

namespace A017624.P17976857149844262593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017618 n ^ 2) ^ 2

end

end A017624.P17976857149844262593

namespace A017624

/-- `A017618(n)²²` -/
def P17976857149844262593.Spec : Prop :=
  ∀ n, P17976857149844262593.a n = A017624 n

end A017624

/-! ## A017624.P6877062982921380652

`A017617(n)²²²`
-/

namespace A017624.P6877062982921380652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017617 n ^ 2) ^ 2) ^ 2

end

end A017624.P6877062982921380652

namespace A017624

/-- `A017617(n)²²²` -/
def P6877062982921380652.Spec : Prop :=
  ∀ n, P6877062982921380652.a n = A017624 n

end A017624

/-! ## A017624.P9317240402846900654

`(A017605(n)+1)²²²`
-/

namespace A017624.P9317240402846900654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017605 n + 1) ^ 2) ^ 2) ^ 2

end

end A017624.P9317240402846900654

namespace A017624

/-- `(A017605(n)+1)²²²` -/
def P9317240402846900654.Spec : Prop :=
  ∀ n, P9317240402846900654.a n = A017624 n

end A017624

/-! ## A017624.P3113462224465877486

`(A017593(n)+2)²²²`
-/

namespace A017624.P3113462224465877486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017593 n + 2) ^ 2) ^ 2) ^ 2

end

end A017624.P3113462224465877486

namespace A017624

/-- `(A017593(n)+2)²²²` -/
def P3113462224465877486.Spec : Prop :=
  ∀ n, P3113462224465877486.a n = A017624 n

end A017624

/-! ## A017624.P13611196492876228086

`(1-A017629(n))²²²`
-/

namespace A017624.P13611196492876228086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017629 n) ^ 2) ^ 2) ^ 2

end

end A017624.P13611196492876228086

namespace A017624

/-- `(1-A017629(n))²²²` -/
def P13611196492876228086.Spec : Prop :=
  ∀ n, P13611196492876228086.a n = A017624 n

end A017624

/-! ## A017624.P17210124723146254885

`(2-A017641(n))²²²`
-/

namespace A017624.P17210124723146254885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017641 n) ^ 2) ^ 2) ^ 2

end

end A017624.P17210124723146254885

namespace A017624

/-- `(2-A017641(n))²²²` -/
def P17210124723146254885.Spec : Prop :=
  ∀ n, P17210124723146254885.a n = A017624 n

end A017624

/-! ## A017624.P17476260669857457879

`(2*A016957(n))²²²`
-/

namespace A017624.P17476260669857457879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016957 n) ^ 2) ^ 2) ^ 2

end

end A017624.P17476260669857457879

namespace A017624

/-- `(2*A016957(n))²²²` -/
def P17476260669857457879.Spec : Prop :=
  ∀ n, P17476260669857457879.a n = A017624 n

end A017624

/-! ## A017624.P2672313603613343385

`(A017485(n)+n)²²²`
-/

namespace A017624.P2672313603613343385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017485 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017624.P2672313603613343385

namespace A017624

/-- `(A017485(n)+n)²²²` -/
def P2672313603613343385.Spec : Prop :=
  ∀ n, P2672313603613343385.a n = A017624 n

end A017624

/-! ## A017624.P1262611805097850991

`A017617(n)*A017623(n)`
-/

namespace A017624.P1262611805097850991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n * A017623 n

end

end A017624.P1262611805097850991

namespace A017624

/-- `A017617(n)*A017623(n)` -/
def P1262611805097850991.Spec : Prop :=
  ∀ n, P1262611805097850991.a n = A017624 n

end A017624

/-! ## A017624.P1607761519390972406

`A017618(n)*A017622(n)`
-/

namespace A017624.P1607761519390972406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017618 n * A017622 n

end

end A017624.P1607761519390972406

namespace A017624

/-- `A017618(n)*A017622(n)` -/
def P1607761519390972406.Spec : Prop :=
  ∀ n, P1607761519390972406.a n = A017624 n

end A017624

/-! ## A017624.P12587548446405932470

`A017619(n)*A017621(n)`
-/

namespace A017624.P12587548446405932470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017619 n * A017621 n

end

end A017624.P12587548446405932470

namespace A017624

/-- `A017619(n)*A017621(n)` -/
def P12587548446405932470.Spec : Prop :=
  ∀ n, P12587548446405932470.a n = A017624 n

end A017624

/-! ## A017624.P7543917353860702209

`A017617(n)*A017617(n)*A017622(n)`
-/

namespace A017624.P7543917353860702209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n * A017617 n * A017622 n

end

end A017624.P7543917353860702209

namespace A017624

/-- `A017617(n)*A017617(n)*A017622(n)` -/
def P7543917353860702209.Spec : Prop :=
  ∀ n, P7543917353860702209.a n = A017624 n

end A017624

/-! ## A017624.P6108288828179952531

`Δ[A033580(n)]²²²`
-/

namespace A017624.P6108288828179952531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017624.P6108288828179952531

namespace A017624

/-- `Δ[A033580(n)]²²²` -/
def P6108288828179952531.Spec : Prop :=
  ∀ n, P6108288828179952531.a n = A017624 n

end A017624

/-! ## A017624.P13045725944511781925

`Δ[A136392(n+1)]²²²`
-/

namespace A017624.P13045725944511781925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017624.P13045725944511781925

namespace A017624

/-- `Δ[A136392(n+1)]²²²` -/
def P13045725944511781925.Spec : Prop :=
  ∀ n, P13045725944511781925.a n = A017624 n

end A017624

/-! ## A017624.P14543410328516204067

`Δ[Δ[A059722(n)]]²²²`
-/

namespace A017624.P14543410328516204067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017624.P14543410328516204067

namespace A017624

/-- `Δ[Δ[A059722(n)]]²²²` -/
def P14543410328516204067.Spec : Prop :=
  ∀ n, P14543410328516204067.a n = A017624 n

end A017624

/-! ## A017624.P7248273813455366415

`A016940(Δ[n²])`
-/

namespace A017624.P7248273813455366415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016940 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017624.P7248273813455366415

namespace A017624

/-- `A016940(Δ[n²])` -/
def P7248273813455366415.Spec : Prop :=
  ∀ n, P7248273813455366415.a n = A017624 n

end A017624

/-! ## A017624.P16764721622598029700

`A016936(Δ[n²])²`
-/

namespace A017624.P16764721622598029700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016936 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017624.P16764721622598029700

namespace A017624

/-- `A016936(Δ[n²])²` -/
def P16764721622598029700.Spec : Prop :=
  ∀ n, P16764721622598029700.a n = A017624 n

end A017624

/-! ## A017624.P14253052987237558188

`A016934(Δ[n²])²²`
-/

namespace A017624.P14253052987237558188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016934 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A017624.P14253052987237558188

namespace A017624

/-- `A016934(Δ[n²])²²` -/
def P14253052987237558188.Spec : Prop :=
  ∀ n, P14253052987237558188.a n = A017624 n

end A017624

/-!
# A017625: a(n) = (12*n + 8)^9.

The programs for A017625, the canonical program `A017625.P15210611316471355861` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017625 has offset 0).

The definition of A017625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+8)^9` (program `A017625.P15210611316471355861`, by `A017625.P15210611316471355861.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017625.P15210611316471355861

`(12*n+8)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017625

/-- `(12*n+8)^9` -/
def P15210611316471355861.Spec : Prop :=
  ∀ n, (P15210611316471355861.a n : ℤ) = A017625 n

theorem P15210611316471355861.correct : P15210611316471355861.Spec := by
  intro n
  simp only [A017625]

end A017625

/-! ## A017625.P6765705001378964295

`A017619(n)*A017622(n)`
-/

namespace A017625.P6765705001378964295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017619 n * A017622 n

end

end A017625.P6765705001378964295

namespace A017625

/-- `A017619(n)*A017622(n)` -/
def P6765705001378964295.Spec : Prop :=
  ∀ n, P6765705001378964295.a n = A017625 n

end A017625

/-! ## A017625.P10450413226257550437

`A017620(n)*A017621(n)`
-/

namespace A017625.P10450413226257550437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017620 n * A017621 n

end

end A017625.P10450413226257550437

namespace A017625

/-- `A017620(n)*A017621(n)` -/
def P10450413226257550437.Spec : Prop :=
  ∀ n, P10450413226257550437.a n = A017625 n

end A017625

/-! ## A017625.P9409584854465854331

`A016941(2*n+1)`
-/

namespace A017625.P9409584854465854331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016941 (2 * n + 1)

end

end A017625.P9409584854465854331

namespace A017625

/-- `A016941(2*n+1)` -/
def P9409584854465854331.Spec : Prop :=
  ∀ n, P9409584854465854331.a n = A017625 n

end A017625

/-! ## A017625.P2638746378122930846

`A016933(2*n+1)*A016940(2*n+1)`
-/

namespace A017625.P2638746378122930846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (2 * n + 1) * A016940 (2 * n + 1)

end

end A017625.P2638746378122930846

namespace A017625

/-- `A016933(2*n+1)*A016940(2*n+1)` -/
def P2638746378122930846.Spec : Prop :=
  ∀ n, P2638746378122930846.a n = A017625 n

end A017625

/-! ## A017625.P11810614107547177766

`A016934(2*n+1)*A016939(2*n+1)`
-/

namespace A017625.P11810614107547177766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 (2 * n + 1) * A016939 (2 * n + 1)

end

end A017625.P11810614107547177766

namespace A017625

/-- `A016934(2*n+1)*A016939(2*n+1)` -/
def P11810614107547177766.Spec : Prop :=
  ∀ n, P11810614107547177766.a n = A017625 n

end A017625

/-! ## A017625.P16639528185865357040

`A016935(2*n+1)*A016938(2*n+1)`
-/

namespace A017625.P16639528185865357040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 (2 * n + 1) * A016938 (2 * n + 1)

end

end A017625.P16639528185865357040

namespace A017625

/-- `A016935(2*n+1)*A016938(2*n+1)` -/
def P16639528185865357040.Spec : Prop :=
  ∀ n, P16639528185865357040.a n = A017625 n

end A017625

/-! ## A017625.P13091290157704973802

`A016809(3*n+2)`
-/

namespace A017625.P13091290157704973802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016809 (3 * n + 2)

end

end A017625.P13091290157704973802

namespace A017625

/-- `A016809(3*n+2)` -/
def P13091290157704973802.Spec : Prop :=
  ∀ n, P13091290157704973802.a n = A017625 n

end A017625

/-! ## A017625.P7992576353696148456

`A016797(2*(2*n+1))`
-/

namespace A017625.P7992576353696148456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016797 (2 * (2 * n + 1))

end

end A017625.P7992576353696148456

namespace A017625

/-- `A016797(2*(2*n+1))` -/
def P7992576353696148456.Spec : Prop :=
  ∀ n, P7992576353696148456.a n = A017625 n

end A017625

/-! ## A017625.P11570170725435540149

`A016749(A016945(n)+1)`
-/

namespace A017625.P11570170725435540149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016749 (A016945 n + 1).toNat

end

end A017625.P11570170725435540149

namespace A017625

/-- `A016749(A016945(n)+1)` -/
def P11570170725435540149.Spec : Prop :=
  ∀ n, P11570170725435540149.a n = A017625 n

end A017625

/-! ## A017625.P17012168835407928992

`A001017(A017617(n))`
-/

namespace A017625.P17012168835407928992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017617 n).toNat

end

end A017625.P17012168835407928992

namespace A017625

/-- `A001017(A017617(n))` -/
def P17012168835407928992.Spec : Prop :=
  ∀ n, P17012168835407928992.a n = A017625 n

end A017625

/-!
# A017626: 

The programs for A017626, there is no canonical definition to state claims against.
-/

/-! ## A017626.P12646747719603163323

`A017621(n)²`
-/

namespace A017626.P12646747719603163323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017621 n ^ 2

end

end A017626.P12646747719603163323

/-! ## A017626.P13684116896836193888

`A017618(n)^5`
-/

namespace A017626.P13684116896836193888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017618 n ^ 5

end

end A017626.P13684116896836193888

/-! ## A017626.P915522179089898113

`A016937(A008615(A016933(2*n)))²`
-/

namespace A017626.P915522179089898113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016937 (A008615 (A016933 (2 * n)).toNat).toNat ^ 2

end

end A017626.P915522179089898113

/-! ## A017626.P8930990485215657926

`A008454(A016945(2*n+1)-1)`
-/

namespace A017626.P8930990485215657926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n + 1) - 1).toNat

end

end A017626.P8930990485215657926

/-! ## A017626.P11845849691437516979

`A008454(A004442(A016945(A004442(2*n))))`
-/

namespace A017626.P11845849691437516979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A004442 (A016945 (A004442 (2 * n)).toNat).toNat).toNat

end

end A017626.P11845849691437516979

/-!
# A017627: 

The programs for A017627, there is no canonical definition to state claims against.
-/

/-! ## A017627.P10120604365160563703

`(12*n+8)^11`
-/

namespace A017627.P10120604365160563703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (12 * n + 8) ^ 11

end

end A017627.P10120604365160563703

/-! ## A017627.P107396922115485912

`A017622(n)²/A017617(n)`
-/

namespace A017627.P107396922115485912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017622 n ^ 2 : ℚ) / (A017617 n : ℚ)

end

end A017627.P107396922115485912

/-! ## A017627.P7548764399085628954

`A016943(2*n+1)`
-/

namespace A017627.P7548764399085628954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016943 (2 * n + 1)

end

end A017627.P7548764399085628954

/-! ## A017627.P9218236509914271552

`A016811(3*n+2)`
-/

namespace A017627.P9218236509914271552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016811 (3 * n + 2)

end

end A017627.P9218236509914271552

/-! ## A017627.P2640865421939952546

`A016799(2*(2*n+1))`
-/

namespace A017627.P2640865421939952546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016799 (2 * (2 * n + 1))

end

end A017627.P2640865421939952546

/-!
# A017628: 

The programs for A017628, there is no canonical definition to state claims against.
-/

/-! ## A017628.P15145105878644381816

`A017620(n)^3`
-/

namespace A017628.P15145105878644381816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017620 n ^ 3

end

end A017628.P15145105878644381816

/-! ## A017628.P10117809223882076886

`A017618(n)^6`
-/

namespace A017628.P10117809223882076886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017618 n ^ 6

end

end A017628.P10117809223882076886

/-! ## A017628.P18210113462927929475

`A017617(n)^12`
-/

namespace A017628.P18210113462927929475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n ^ 12

end

end A017628.P18210113462927929475

/-! ## A017628.P128008991907140255

`A016933(2*n+1)^12`
-/

namespace A017628.P128008991907140255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (2 * n + 1) ^ 12

end

end A017628.P128008991907140255

/-! ## A017628.P16545891157780080488

`A004278(6*(n+1))^12`
-/

namespace A017628.P16545891157780080488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (6 * (n + 1)) ^ 12

end

end A017628.P16545891157780080488

/-!
# A017629: a(n) = 12*n + 9.

The programs for A017629, the canonical program `A017629.P13557474233053533782` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017629 has offset 0).

The definition of A017629 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+9` (program `A017629.P13557474233053533782`, by `A017629.P13557474233053533782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017629.P13557474233053533782

`12*n+9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017629

/-- `12*n+9` -/
def P13557474233053533782.Spec : Prop :=
  ∀ n, (P13557474233053533782.a n : ℤ) = A017629 n

theorem P13557474233053533782.correct : P13557474233053533782.Spec := by
  intro n
  simp only [A017629]

end A017629

/-!
# A017630: a(n) = (12*n + 9)^2.

The programs for A017630, the canonical program `A017630.P9317125267868918129` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017630 has offset 0).

The definition of A017630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+9)²` (program `A017630.P9317125267868918129`, by `A017630.P9317125267868918129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017630.P9317125267868918129

`(12*n+9)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017630

/-- `(12*n+9)²` -/
def P9317125267868918129.Spec : Prop :=
  ∀ n, (P9317125267868918129.a n : ℤ) = A017630 n

theorem P9317125267868918129.correct : P9317125267868918129.Spec := by
  intro n
  simp only [A017630]

end A017630

/-! ## A017630.P13784872322233769924

`9*A016838(n)`
-/

namespace A017630.P13784872322233769924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A016838 n

end

end A017630.P13784872322233769924

namespace A017630

/-- `9*A016838(n)` -/
def P13784872322233769924.Spec : Prop :=
  ∀ n, P13784872322233769924.a n = A017630 n

end A017630

/-! ## A017630.P3768866361509737706

`record[(3*xor(3, n))²]`
-/

namespace A017630.P3768866361509737706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017630.P3768866361509737706

namespace A017630

/-- `record[(3*xor(3, n))²]` -/
def P3768866361509737706.Spec : Prop :=
  ∀ n, (P3768866361509737706.a n : ℤ) = A017630 n

end A017630

/-! ## A017630.P5411505629770586819

`9*or(3, 4*n)²`
-/

namespace A017630.P5411505629770586819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.lor 3 (4 * n) ^ 2

end

end A017630.P5411505629770586819

namespace A017630

/-- `9*or(3, 4*n)²` -/
def P5411505629770586819.Spec : Prop :=
  ∀ n, (P5411505629770586819.a n : ℤ) = A017630 n

end A017630

/-! ## A017630.P1827384993549426620

`9*xor(3, 4*n)²`
-/

namespace A017630.P1827384993549426620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.xor 3 (4 * n) ^ 2

end

end A017630.P1827384993549426620

namespace A017630

/-- `9*xor(3, 4*n)²` -/
def P1827384993549426620.Spec : Prop :=
  ∀ n, (P1827384993549426620.a n : ℤ) = A017630 n

end A017630

/-! ## A017630.P2221169414553323733

`record[(3*xor(3, n))^2]`
-/

namespace A017630.P2221169414553323733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017630.P2221169414553323733

namespace A017630

/-- `record[(3*xor(3, n))^2]` -/
def P2221169414553323733.Spec : Prop :=
  ∀ n, (P2221169414553323733.a n : ℤ) = A017630 n

end A017630

/-! ## A017630.P15132060651711252073

`(3*or(3, 4*n))^2`
-/

namespace A017630.P15132060651711252073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lor 3 (4 * n)) ^ 2

end

end A017630.P15132060651711252073

namespace A017630

/-- `(3*or(3, 4*n))^2` -/
def P15132060651711252073.Spec : Prop :=
  ∀ n, (P15132060651711252073.a n : ℤ) = A017630 n

end A017630

/-! ## A017630.P2351915825638785977

`9*∑[a(n-1)+32]` with `a(0)=9, a(1)=40`
-/

namespace A017630.P2351915825638785977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 40] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A017630.P2351915825638785977

namespace A017630

/-- `9*∑[a(n-1)+32]` -/
def P2351915825638785977.Spec : Prop :=
  ∀ n, (P2351915825638785977.a n : ℤ) = A017630 n

end A017630

/-! ## A017630.P6768058676190935862

`sqrt(A017632(n))`
-/

namespace A017630.P6768058676190935862
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017632 n : ℝ)

end

end A017630.P6768058676190935862

namespace A017630

/-- `sqrt(A017632(n))` -/
def P6768058676190935862.Spec : Prop :=
  ∀ n, P6768058676190935862.a n = (A017630 n : ℝ)

end A017630

/-! ## A017630.P4381609983811453918

`sqrt(sqrt(A017636(n)))`
-/

namespace A017630.P4381609983811453918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017636 n : ℝ))

end

end A017630.P4381609983811453918

namespace A017630

/-- `sqrt(sqrt(A017636(n)))` -/
def P4381609983811453918.Spec : Prop :=
  ∀ n, P4381609983811453918.a n = (A017630 n : ℝ)

end A017630

/-! ## A017630.P17000195087735487768

`A017634(n)^(1/3)`
-/

namespace A017630.P17000195087735487768
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017634 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017630.P17000195087735487768

namespace A017630

/-- `A017634(n)^(1/3)` -/
def P17000195087735487768.Spec : Prop :=
  ∀ n, P17000195087735487768.a n = (A017630 n : ℝ)

end A017630

/-! ## A017630.P3505381193498478499

`A017631(n)^(2/3)`
-/

namespace A017630.P3505381193498478499
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017631 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017630.P3505381193498478499

namespace A017630

/-- `A017631(n)^(2/3)` -/
def P3505381193498478499.Spec : Prop :=
  ∀ n, P3505381193498478499.a n = (A017630 n : ℝ)

end A017630

/-! ## A017630.P16465652114275418057

`A350052(n)+A017618(n)`
-/

namespace A017630.P16465652114275418057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n + A017618 n

end

end A017630.P16465652114275418057

namespace A017630

/-- `A350052(n)+A017618(n)` -/
def P16465652114275418057.Spec : Prop :=
  ∀ n, P16465652114275418057.a n = A017630 n

end A017630

/-! ## A017630.P13117840331764957520

`A017642(n)-A350051(n)`
-/

namespace A017630.P13117840331764957520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017642 n - A350051 n

end

end A017630.P13117840331764957520

namespace A017630

/-- `A017642(n)-A350051(n)` -/
def P13117840331764957520.Spec : Prop :=
  ∀ n, P13117840331764957520.a n = A017630 n

end A017630

/-! ## A017630.P8731500142926646268

`A017629(n)*A017629(n)`
-/

namespace A017630.P8731500142926646268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n * A017629 n

end

end A017630.P8731500142926646268

namespace A017630

/-- `A017629(n)*A017629(n)` -/
def P8731500142926646268.Spec : Prop :=
  ∀ n, P8731500142926646268.a n = A017630 n

end A017630

/-! ## A017630.P8487988534351957045

`A017631(n)/A017629(n)`
-/

namespace A017630.P8487988534351957045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017631 n : ℚ) / (A017629 n : ℚ)

end

end A017630.P8487988534351957045

namespace A017630

/-- `A017631(n)/A017629(n)` -/
def P8487988534351957045.Spec : Prop :=
  ∀ n, P8487988534351957045.a n = (A017630 n : ℚ)

end A017630

/-! ## A017630.P3274251864979878841

`A017633(n)/A017631(n)`
-/

namespace A017630.P3274251864979878841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017633 n : ℚ) / (A017631 n : ℚ)

end

end A017630.P3274251864979878841

namespace A017630

/-- `A017633(n)/A017631(n)` -/
def P3274251864979878841.Spec : Prop :=
  ∀ n, P3274251864979878841.a n = (A017630 n : ℚ)

end A017630

/-! ## A017630.P9663686245418306027

`A017634(n)/A017632(n)`
-/

namespace A017630.P9663686245418306027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017634 n : ℚ) / (A017632 n : ℚ)

end

end A017630.P9663686245418306027

namespace A017630

/-- `A017634(n)/A017632(n)` -/
def P9663686245418306027.Spec : Prop :=
  ∀ n, P9663686245418306027.a n = (A017630 n : ℚ)

end A017630

/-! ## A017630.P9746976917171418581

`A017631(n)²/A017632(n)`
-/

namespace A017630.P9746976917171418581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017631 n ^ 2 : ℚ) / (A017632 n : ℚ)

end

end A017630.P9746976917171418581

namespace A017630

/-- `A017631(n)²/A017632(n)` -/
def P9746976917171418581.Spec : Prop :=
  ∀ n, P9746976917171418581.a n = (A017630 n : ℚ)

end A017630

/-! ## A017630.P10736500049127094296

`A017634(n)/A017629(n)²²`
-/

namespace A017630.P10736500049127094296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017634 n : ℚ) / ((A017629 n ^ 2) ^ 2 : ℚ)

end

end A017630.P10736500049127094296

namespace A017630

/-- `A017634(n)/A017629(n)²²` -/
def P10736500049127094296.Spec : Prop :=
  ∀ n, P10736500049127094296.a n = (A017630 n : ℚ)

end A017630

/-!
# A017631: a(n) = (12*n + 9)^3.

The programs for A017631, the canonical program `A017631.P9838545820884110638` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017631 has offset 0).

The definition of A017631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+9)^3` (program `A017631.P9838545820884110638`, by `A017631.P9838545820884110638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017631.P9838545820884110638

`(12*n+9)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017631

/-- `(12*n+9)^3` -/
def P9838545820884110638.Spec : Prop :=
  ∀ n, (P9838545820884110638.a n : ℤ) = A017631 n

theorem P9838545820884110638.correct : P9838545820884110638.Spec := by
  intro n
  simp only [A017631]

end A017631

/-! ## A017631.P1773979424509566817

`27*A016839(n)`
-/

namespace A017631.P1773979424509566817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A016839 n

end

end A017631.P1773979424509566817

namespace A017631

/-- `27*A016839(n)` -/
def P1773979424509566817.Spec : Prop :=
  ∀ n, P1773979424509566817.a n = A017631 n

end A017631

/-! ## A017631.P6934120410383699596

`record[(3*xor(3, n))^3]`
-/

namespace A017631.P6934120410383699596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 3 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017631.P6934120410383699596

namespace A017631

/-- `record[(3*xor(3, n))^3]` -/
def P6934120410383699596.Spec : Prop :=
  ∀ n, (P6934120410383699596.a n : ℤ) = A017631 n

end A017631

/-! ## A017631.P9913280356958306209

`27*or(3, 4*n)^3`
-/

namespace A017631.P9913280356958306209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * Nat.lor 3 (4 * n) ^ 3

end

end A017631.P9913280356958306209

namespace A017631

/-- `27*or(3, 4*n)^3` -/
def P9913280356958306209.Spec : Prop :=
  ∀ n, (P9913280356958306209.a n : ℤ) = A017631 n

end A017631

/-! ## A017631.P12017516310094028544

`record[3*xor(3, n)*(3*xor(3, n))²]`
-/

namespace A017631.P12017516310094028544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.xor 3 n * (3 * Nat.xor 3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017631.P12017516310094028544

namespace A017631

/-- `record[3*xor(3, n)*(3*xor(3, n))²]` -/
def P12017516310094028544.Spec : Prop :=
  ∀ n, (P12017516310094028544.a n : ℤ) = A017631 n

end A017631

/-! ## A017631.P15065347783086136422

`sqrt(A017634(n))`
-/

namespace A017631.P15065347783086136422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017634 n : ℝ)

end

end A017631.P15065347783086136422

namespace A017631

/-- `sqrt(A017634(n))` -/
def P15065347783086136422.Spec : Prop :=
  ∀ n, P15065347783086136422.a n = (A017631 n : ℝ)

end A017631

/-! ## A017631.P16347234199194926204

`sqrt(A017630(n)^3)`
-/

namespace A017631.P16347234199194926204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017630 n ^ 3 : ℝ)

end

end A017631.P16347234199194926204

namespace A017631

/-- `sqrt(A017630(n)^3)` -/
def P16347234199194926204.Spec : Prop :=
  ∀ n, P16347234199194926204.a n = (A017631 n : ℝ)

end A017631

/-! ## A017631.P17579969616195259786

`(12*n+9)²*A017629(n)`
-/

namespace A017631.P17579969616195259786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 9) ^ 2 : ℤ) * A017629 n

end

end A017631.P17579969616195259786

namespace A017631

/-- `(12*n+9)²*A017629(n)` -/
def P17579969616195259786.Spec : Prop :=
  ∀ n, P17579969616195259786.a n = A017631 n

end A017631

/-! ## A017631.P15924615848426083356

`A017629(n)*A017630(n)`
-/

namespace A017631.P15924615848426083356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n * A017630 n

end

end A017631.P15924615848426083356

namespace A017631

/-- `A017629(n)*A017630(n)` -/
def P15924615848426083356.Spec : Prop :=
  ∀ n, P15924615848426083356.a n = A017631 n

end A017631

/-! ## A017631.P1804452381674824045

`A017632(n)/A017629(n)`
-/

namespace A017631.P1804452381674824045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017632 n : ℚ) / (A017629 n : ℚ)

end

end A017631.P1804452381674824045

namespace A017631

/-- `A017632(n)/A017629(n)` -/
def P1804452381674824045.Spec : Prop :=
  ∀ n, P1804452381674824045.a n = (A017631 n : ℚ)

end A017631

/-! ## A017631.P3825199953266676970

`A017633(n)/A017630(n)`
-/

namespace A017631.P3825199953266676970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017633 n : ℚ) / (A017630 n : ℚ)

end

end A017631.P3825199953266676970

namespace A017631

/-- `A017633(n)/A017630(n)` -/
def P3825199953266676970.Spec : Prop :=
  ∀ n, P3825199953266676970.a n = (A017631 n : ℚ)

end A017631

/-! ## A017631.P4518096200465439752

`A017633(n)/A017629(n)²`
-/

namespace A017631.P4518096200465439752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017633 n : ℚ) / (A017629 n ^ 2 : ℚ)

end

end A017631.P4518096200465439752

namespace A017631

/-- `A017633(n)/A017629(n)²` -/
def P4518096200465439752.Spec : Prop :=
  ∀ n, P4518096200465439752.a n = (A017631 n : ℚ)

end A017631

/-! ## A017631.P11520545889970177741

`Δ[A195319(n)]²*Δ[A195319(n)]`
-/

namespace A017631.P11520545889970177741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017631.P11520545889970177741

namespace A017631

/-- `Δ[A195319(n)]²*Δ[A195319(n)]` -/
def P11520545889970177741.Spec : Prop :=
  ∀ n, P11520545889970177741.a n = A017631 n

end A017631

/-! ## A017631.P9508122933939146412

`A017634(n)/(A017629(n)²*A017629(n))`
-/

namespace A017631.P9508122933939146412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017634 n : ℚ) / (A017629 n ^ 2 * A017629 n : ℚ)

end

end A017631.P9508122933939146412

namespace A017631

/-- `A017634(n)/(A017629(n)²*A017629(n))` -/
def P9508122933939146412.Spec : Prop :=
  ∀ n, P9508122933939146412.a n = (A017631 n : ℚ)

end A017631

/-! ## A017631.P526824463753473521

`Δ[A085473(n)]²*Δ[A085473(n)]`
-/

namespace A017631.P526824463753473521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017631.P526824463753473521

namespace A017631

/-- `Δ[A085473(n)]²*Δ[A085473(n)]` -/
def P526824463753473521.Spec : Prop :=
  ∀ n, P526824463753473521.a n = A017631 n

end A017631

/-! ## A017631.P15884129619752091493

`record[Δ[xor(1, n+1)²]^3]`
-/

namespace A017631.P15884129619752091493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017631.P15884129619752091493

namespace A017631

/-- `record[Δ[xor(1, n+1)²]^3]` -/
def P15884129619752091493.Spec : Prop :=
  ∀ n, P15884129619752091493.a n = A017631 n

end A017631

/-! ## A017631.P9684931127423276307

`A016947(Δ[n²])`
-/

namespace A017631.P9684931127423276307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017631.P9684931127423276307

namespace A017631

/-- `A016947(Δ[n²])` -/
def P9684931127423276307.Spec : Prop :=
  ∀ n, P9684931127423276307.a n = A017631 n

end A017631

/-! ## A017631.P12548150333800347121

`sqrt(A016950(2*n+1))`
-/

namespace A017631.P12548150333800347121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016950 (2 * n + 1) : ℝ)

end

end A017631.P12548150333800347121

namespace A017631

/-- `sqrt(A016950(2*n+1))` -/
def P12548150333800347121.Spec : Prop :=
  ∀ n, P12548150333800347121.a n = (A017631 n : ℝ)

end A017631

/-! ## A017631.P15459043950699693241

`A017595(2*n+1)/8`
-/

namespace A017631.P15459043950699693241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017595 (2 * n + 1) : ℚ) / 8

end

end A017631.P15459043950699693241

namespace A017631

/-- `A017595(2*n+1)/8` -/
def P15459043950699693241.Spec : Prop :=
  ∀ n, P15459043950699693241.a n = (A017631 n : ℚ)

end A017631

/-! ## A017631.P4732328716785738036

`lcm(3, A016947(2*n+1))`
-/

namespace A017631.P4732328716785738036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A016947 (2 * n + 1))

end

end A017631.P4732328716785738036

namespace A017631

/-- `lcm(3, A016947(2*n+1))` -/
def P4732328716785738036.Spec : Prop :=
  ∀ n, (P4732328716785738036.a n : ℤ) = A017631 n

end A017631

/-!
# A017632: a(n) = (12*n + 9)^4.

The programs for A017632, the canonical program `A017632.P5205388345143507806` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017632 has offset 0).

The definition of A017632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+9)^4` (program `A017632.P5205388345143507806`, by `A017632.P5205388345143507806.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017632.P5205388345143507806

`(12*n+9)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017632

/-- `(12*n+9)^4` -/
def P5205388345143507806.Spec : Prop :=
  ∀ n, (P5205388345143507806.a n : ℤ) = A017632 n

theorem P5205388345143507806.correct : P5205388345143507806.Spec := by
  intro n
  simp only [A017632]

end A017632

/-! ## A017632.P335593900473767444

`record[(3*xor(3, n))^4]`
-/

namespace A017632.P335593900473767444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 3 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017632.P335593900473767444

namespace A017632

/-- `record[(3*xor(3, n))^4]` -/
def P335593900473767444.Spec : Prop :=
  ∀ n, (P335593900473767444.a n : ℤ) = A017632 n

end A017632

/-! ## A017632.P13355424511908795

`record[(3*xor(3, n))²²]`
-/

namespace A017632.P13355424511908795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.xor 3 n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017632.P13355424511908795

namespace A017632

/-- `record[(3*xor(3, n))²²]` -/
def P13355424511908795.Spec : Prop :=
  ∀ n, (P13355424511908795.a n : ℤ) = A017632 n

end A017632

/-! ## A017632.P17982139674580583850

`(3*or(3, 4*n))²²`
-/

namespace A017632.P17982139674580583850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.lor 3 (4 * n)) ^ 2) ^ 2

end

end A017632.P17982139674580583850

namespace A017632

/-- `(3*or(3, 4*n))²²` -/
def P17982139674580583850.Spec : Prop :=
  ∀ n, (P17982139674580583850.a n : ℤ) = A017632 n

end A017632

/-! ## A017632.P13189471773552391250

`(3*xor(3, 4*n))²²`
-/

namespace A017632.P13189471773552391250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.xor 3 (4 * n)) ^ 2) ^ 2

end

end A017632.P13189471773552391250

namespace A017632

/-- `(3*xor(3, 4*n))²²` -/
def P13189471773552391250.Spec : Prop :=
  ∀ n, (P13189471773552391250.a n : ℤ) = A017632 n

end A017632

/-! ## A017632.P9257621951949624268

`Δ[3*C(2*n+1, 2)]²²`
-/

namespace A017632.P9257621951949624268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017632.P9257621951949624268

namespace A017632

/-- `Δ[3*C(2*n+1, 2)]²²` -/
def P9257621951949624268.Spec : Prop :=
  ∀ n, P9257621951949624268.a n = A017632 n

end A017632

/-! ## A017632.P6456884709848785286

`Δ[3*lcm(n, 2*n+1)]²²`
-/

namespace A017632.P6456884709848785286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lcm n (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017632.P6456884709848785286

namespace A017632

/-- `Δ[3*lcm(n, 2*n+1)]²²` -/
def P6456884709848785286.Spec : Prop :=
  ∀ n, P6456884709848785286.a n = A017632 n

end A017632

/-! ## A017632.P11042602066503930694

`A017630(n)²`
-/

namespace A017632.P11042602066503930694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017630 n ^ 2

end

end A017632.P11042602066503930694

namespace A017632

/-- `A017630(n)²` -/
def P11042602066503930694.Spec : Prop :=
  ∀ n, P11042602066503930694.a n = A017632 n

end A017632

/-! ## A017632.P13636207572981751000

`sqrt(A017636(n))`
-/

namespace A017632.P13636207572981751000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017636 n : ℝ)

end

end A017632.P13636207572981751000

namespace A017632

/-- `sqrt(A017636(n))` -/
def P13636207572981751000.Spec : Prop :=
  ∀ n, P13636207572981751000.a n = (A017632 n : ℝ)

end A017632

/-! ## A017632.P4474995465670789932

`81*A016840(n)`
-/

namespace A017632.P4474995465670789932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A016840 n

end

end A017632.P4474995465670789932

namespace A017632

/-- `81*A016840(n)` -/
def P4474995465670789932.Spec : Prop :=
  ∀ n, P4474995465670789932.a n = A017632 n

end A017632

/-! ## A017632.P3655088249092987289

`A017629(n)²²`
-/

namespace A017632.P3655088249092987289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017629 n ^ 2) ^ 2

end

end A017632.P3655088249092987289

namespace A017632

/-- `A017629(n)²²` -/
def P3655088249092987289.Spec : Prop :=
  ∀ n, P3655088249092987289.a n = A017632 n

end A017632

/-! ## A017632.P5252968592617904511

`Δ[A195319(n)]²²`
-/

namespace A017632.P5252968592617904511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017632.P5252968592617904511

namespace A017632

/-- `Δ[A195319(n)]²²` -/
def P5252968592617904511.Spec : Prop :=
  ∀ n, P5252968592617904511.a n = A017632 n

end A017632

/-! ## A017632.P7082236175536438190

`(A017617(n)+1)²²`
-/

namespace A017632.P7082236175536438190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017617 n + 1) ^ 2) ^ 2

end

end A017632.P7082236175536438190

namespace A017632

/-- `(A017617(n)+1)²²` -/
def P7082236175536438190.Spec : Prop :=
  ∀ n, P7082236175536438190.a n = A017632 n

end A017632

/-! ## A017632.P7997349360520417951

`(A017605(n)+2)²²`
-/

namespace A017632.P7997349360520417951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017605 n + 2) ^ 2) ^ 2

end

end A017632.P7997349360520417951

namespace A017632

/-- `(A017605(n)+2)²²` -/
def P7997349360520417951.Spec : Prop :=
  ∀ n, P7997349360520417951.a n = A017632 n

end A017632

/-! ## A017632.P14094605927664876164

`(1-A017641(n))²²`
-/

namespace A017632.P14094605927664876164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017641 n) ^ 2) ^ 2

end

end A017632.P14094605927664876164

namespace A017632

/-- `(1-A017641(n))²²` -/
def P14094605927664876164.Spec : Prop :=
  ∀ n, P14094605927664876164.a n = A017632 n

end A017632

/-! ## A017632.P8686677138194924199

`(A017593(n)+3)²²`
-/

namespace A017632.P8686677138194924199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017593 n + 3) ^ 2) ^ 2

end

end A017632.P8686677138194924199

namespace A017632

/-- `(A017593(n)+3)²²` -/
def P8686677138194924199.Spec : Prop :=
  ∀ n, P8686677138194924199.a n = A017632 n

end A017632

/-! ## A017632.P4647328881544225445

`(2-A017653(n))²²`
-/

namespace A017632.P4647328881544225445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017653 n) ^ 2) ^ 2

end

end A017632.P4647328881544225445

namespace A017632

/-- `(2-A017653(n))²²` -/
def P4647328881544225445.Spec : Prop :=
  ∀ n, P4647328881544225445.a n = A017632 n

end A017632

/-! ## A017632.P15748824279493853877

`(3*A004767(n))²²`
-/

namespace A017632.P15748824279493853877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * A004767 n) ^ 2) ^ 2

end

end A017632.P15748824279493853877

namespace A017632

/-- `(3*A004767(n))²²` -/
def P15748824279493853877.Spec : Prop :=
  ∀ n, P15748824279493853877.a n = A017632 n

end A017632

/-! ## A017632.P1612669820270036644

`(A017497(n)+n)²²`
-/

namespace A017632.P1612669820270036644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017497 n + (n : ℤ)) ^ 2) ^ 2

end

end A017632.P1612669820270036644

namespace A017632

/-- `(A017497(n)+n)²²` -/
def P1612669820270036644.Spec : Prop :=
  ∀ n, P1612669820270036644.a n = A017632 n

end A017632

/-! ## A017632.P7327146192035840057

`(sqrt(A017618(n))+1)²²`
-/

namespace A017632.P7327146192035840057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017618 n : ℝ) + 1) ^ 2) ^ 2

end

end A017632.P7327146192035840057

namespace A017632

/-- `(sqrt(A017618(n))+1)²²` -/
def P7327146192035840057.Spec : Prop :=
  ∀ n, P7327146192035840057.a n = (A017632 n : ℝ)

end A017632

/-!
# A017633: a(n) = (12*n + 9)^5.

The programs for A017633, the canonical program `A017633.P11752561367971577997` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017633 has offset 0).

The definition of A017633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+9)^5` (program `A017633.P11752561367971577997`, by `A017633.P11752561367971577997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017633.P11752561367971577997

`(12*n+9)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017633

/-- `(12*n+9)^5` -/
def P11752561367971577997.Spec : Prop :=
  ∀ n, (P11752561367971577997.a n : ℤ) = A017633 n

theorem P11752561367971577997.correct : P11752561367971577997.Spec := by
  intro n
  simp only [A017633]

end A017633

/-! ## A017633.P14592869480284950354

`record[(3*xor(3, n))^5]`
-/

namespace A017633.P14592869480284950354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 3 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017633.P14592869480284950354

namespace A017633

/-- `record[(3*xor(3, n))^5]` -/
def P14592869480284950354.Spec : Prop :=
  ∀ n, (P14592869480284950354.a n : ℤ) = A017633 n

end A017633

/-! ## A017633.P6392215627930732494

`3*or(3, 4*n)*(3*or(3, 4*n))^4`
-/

namespace A017633.P6392215627930732494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 3 (4 * n) * (3 * Nat.lor 3 (4 * n)) ^ 4

end

end A017633.P6392215627930732494

namespace A017633

/-- `3*or(3, 4*n)*(3*or(3, 4*n))^4` -/
def P6392215627930732494.Spec : Prop :=
  ∀ n, (P6392215627930732494.a n : ℤ) = A017633 n

end A017633

/-! ## A017633.P6526727609939815836

`abs((A017509(n)+n-1)^5-1)+1`
-/

namespace A017633.P6526727609939815836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A017509 n + ((n : ℤ) - 1)) ^ 5 - 1| + 1

end

end A017633.P6526727609939815836

namespace A017633

/-- `abs((A017509(n)+n-1)^5-1)+1` -/
def P6526727609939815836.Spec : Prop :=
  ∀ n, P6526727609939815836.a n = A017633 n

end A017633

/-! ## A017633.P8696957348199601222

`A017629(n)*A017632(n)`
-/

namespace A017633.P8696957348199601222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n * A017632 n

end

end A017633.P8696957348199601222

namespace A017633

/-- `A017629(n)*A017632(n)` -/
def P8696957348199601222.Spec : Prop :=
  ∀ n, P8696957348199601222.a n = A017633 n

end A017633

/-! ## A017633.P7543182876082074190

`A017630(n)*A017631(n)`
-/

namespace A017633.P7543182876082074190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017630 n * A017631 n

end

end A017633.P7543182876082074190

namespace A017633

/-- `A017630(n)*A017631(n)` -/
def P7543182876082074190.Spec : Prop :=
  ∀ n, P7543182876082074190.a n = A017633 n

end A017633

/-! ## A017633.P270869678417723914

`A017634(n)/A017629(n)`
-/

namespace A017633.P270869678417723914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017634 n : ℚ) / (A017629 n : ℚ)

end

end A017633.P270869678417723914

namespace A017633

/-- `A017634(n)/A017629(n)` -/
def P270869678417723914.Spec : Prop :=
  ∀ n, P270869678417723914.a n = (A017633 n : ℚ)

end A017633

/-! ## A017633.P17228969688915541765

`A017629(n)²*A017631(n)`
-/

namespace A017633.P17228969688915541765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n ^ 2 * A017631 n

end

end A017633.P17228969688915541765

namespace A017633

/-- `A017629(n)²*A017631(n)` -/
def P17228969688915541765.Spec : Prop :=
  ∀ n, P17228969688915541765.a n = A017633 n

end A017633

/-! ## A017633.P1659783180333557833

`A017630(n)²*A017629(n)`
-/

namespace A017633.P1659783180333557833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017630 n ^ 2 * A017629 n

end

end A017633.P1659783180333557833

namespace A017633

/-- `A017630(n)²*A017629(n)` -/
def P1659783180333557833.Spec : Prop :=
  ∀ n, P1659783180333557833.a n = A017633 n

end A017633

/-! ## A017633.P9536432796955744957

`A017632(n)²/A017631(n)`
-/

namespace A017633.P9536432796955744957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017632 n ^ 2 : ℚ) / (A017631 n : ℚ)

end

end A017633.P9536432796955744957

namespace A017633

/-- `A017632(n)²/A017631(n)` -/
def P9536432796955744957.Spec : Prop :=
  ∀ n, P9536432796955744957.a n = (A017633 n : ℚ)

end A017633

/-! ## A017633.P15749107358851230433

`A017636(n)/(A017629(n)²*A017629(n))`
-/

namespace A017633.P15749107358851230433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017636 n : ℚ) / (A017629 n ^ 2 * A017629 n : ℚ)

end

end A017633.P15749107358851230433

namespace A017633

/-- `A017636(n)/(A017629(n)²*A017629(n))` -/
def P15749107358851230433.Spec : Prop :=
  ∀ n, P15749107358851230433.a n = (A017633 n : ℚ)

end A017633

/-! ## A017633.P3180911662416232399

`abs((1-(A008592(n+1)+n)-n)^5)`
-/

namespace A017633.P3180911662416232399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (A008592 (n + 1) + (n : ℤ)) - (n : ℤ)) ^ 5|

end

end A017633.P3180911662416232399

namespace A017633

/-- `abs((1-(A008592(n+1)+n)-n)^5)` -/
def P3180911662416232399.Spec : Prop :=
  ∀ n, P3180911662416232399.a n = A017633 n

end A017633

/-! ## A017633.P4683855215066592249

`record[Δ[xor(1, n+1)²]^5]`
-/

namespace A017633.P4683855215066592249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017633.P4683855215066592249

namespace A017633

/-- `record[Δ[xor(1, n+1)²]^5]` -/
def P4683855215066592249.Spec : Prop :=
  ∀ n, P4683855215066592249.a n = A017633 n

end A017633

/-! ## A017633.P12648017901363273676

`A016949(Δ[n²])`
-/

namespace A017633.P12648017901363273676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016949 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017633.P12648017901363273676

namespace A017633

/-- `A016949(Δ[n²])` -/
def P12648017901363273676.Spec : Prop :=
  ∀ n, P12648017901363273676.a n = A017633 n

end A017633

/-! ## A017633.P10020806685720469313

`lcm(3, A016949(2*n+1))`
-/

namespace A017633.P10020806685720469313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A016949 (2 * n + 1))

end

end A017633.P10020806685720469313

namespace A017633

/-- `lcm(3, A016949(2*n+1))` -/
def P10020806685720469313.Spec : Prop :=
  ∀ n, (P10020806685720469313.a n : ℤ) = A017633 n

end A017633

/-! ## A017633.P15111833103484171454

`(12*n+9)*A016948(2*n+1)`
-/

namespace A017633.P15111833103484171454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 9 : ℤ) * A016948 (2 * n + 1)

end

end A017633.P15111833103484171454

namespace A017633

/-- `(12*n+9)*A016948(2*n+1)` -/
def P15111833103484171454.Spec : Prop :=
  ∀ n, P15111833103484171454.a n = A017633 n

end A017633

/-! ## A017633.P13046113788389479306

`A016950(2*n+1)/(12*n+9)`
-/

namespace A017633.P13046113788389479306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016950 (2 * n + 1) : ℚ) / (12 * n + 9 : ℚ)

end

end A017633.P13046113788389479306

namespace A017633

/-- `A016950(2*n+1)/(12*n+9)` -/
def P13046113788389479306.Spec : Prop :=
  ∀ n, P13046113788389479306.a n = (A017633 n : ℚ)

end A017633

/-! ## A017633.P16829663367960480373

`(12*n+9)²*A016947(2*n+1)`
-/

namespace A017633.P16829663367960480373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 9) ^ 2 : ℤ) * A016947 (2 * n + 1)

end

end A017633.P16829663367960480373

namespace A017633

/-- `(12*n+9)²*A016947(2*n+1)` -/
def P16829663367960480373.Spec : Prop :=
  ∀ n, P16829663367960480373.a n = A017633 n

end A017633

/-! ## A017633.P2688855185441934222

`A016951(2*n+1)/(12*n+9)²`
-/

namespace A017633.P2688855185441934222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016951 (2 * n + 1) : ℚ) / ((12 * n + 9) ^ 2 : ℚ)

end

end A017633.P2688855185441934222

namespace A017633

/-- `A016951(2*n+1)/(12*n+9)²` -/
def P2688855185441934222.Spec : Prop :=
  ∀ n, P2688855185441934222.a n = (A017633 n : ℚ)

end A017633

/-! ## A017633.P10049463832908252040

`A016948(2*n+1)*A017629(n)`
-/

namespace A017633.P10049463832908252040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016948 (2 * n + 1) * A017629 n

end

end A017633.P10049463832908252040

namespace A017633

/-- `A016948(2*n+1)*A017629(n)` -/
def P10049463832908252040.Spec : Prop :=
  ∀ n, P10049463832908252040.a n = A017633 n

end A017633

/-!
# A017634: a(n) = (12*n + 9)^6.

The programs for A017634, the canonical program `A017634.P17286727230947489102` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017634 has offset 0).

The definition of A017634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+9)^6` (program `A017634.P17286727230947489102`, by `A017634.P17286727230947489102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017634.P17286727230947489102

`(12*n+9)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017634

/-- `(12*n+9)^6` -/
def P17286727230947489102.Spec : Prop :=
  ∀ n, (P17286727230947489102.a n : ℤ) = A017634 n

theorem P17286727230947489102.correct : P17286727230947489102.Spec := by
  intro n
  simp only [A017634]

end A017634

/-! ## A017634.P5562751769161869264

`record[(3*xor(3, n))^6]`
-/

namespace A017634.P5562751769161869264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 3 n) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017634.P5562751769161869264

namespace A017634

/-- `record[(3*xor(3, n))^6]` -/
def P5562751769161869264.Spec : Prop :=
  ∀ n, (P5562751769161869264.a n : ℤ) = A017634 n

end A017634

/-! ## A017634.P11434950443758798907

`A017631(n)²`
-/

namespace A017634.P11434950443758798907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017631 n ^ 2

end

end A017634.P11434950443758798907

namespace A017634

/-- `A017631(n)²` -/
def P11434950443758798907.Spec : Prop :=
  ∀ n, P11434950443758798907.a n = A017634 n

end A017634

/-! ## A017634.P3436117242697376366

`(A017629(n)^3)²`
-/

namespace A017634.P3436117242697376366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017629 n ^ 3) ^ 2

end

end A017634.P3436117242697376366

namespace A017634

/-- `(A017629(n)^3)²` -/
def P3436117242697376366.Spec : Prop :=
  ∀ n, P3436117242697376366.a n = A017634 n

end A017634

/-! ## A017634.P1585014353454132145

`(Δ[A195319(n)]^3)²`
-/

namespace A017634.P1585014353454132145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017634.P1585014353454132145

namespace A017634

/-- `(Δ[A195319(n)]^3)²` -/
def P1585014353454132145.Spec : Prop :=
  ∀ n, P1585014353454132145.a n = A017634 n

end A017634

/-! ## A017634.P2952739440198933839

`A017629(n)*A017633(n)`
-/

namespace A017634.P2952739440198933839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n * A017633 n

end

end A017634.P2952739440198933839

namespace A017634

/-- `A017629(n)*A017633(n)` -/
def P2952739440198933839.Spec : Prop :=
  ∀ n, P2952739440198933839.a n = A017634 n

end A017634

/-! ## A017634.P10436901345614068813

`A017630(n)*A017632(n)`
-/

namespace A017634.P10436901345614068813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017630 n * A017632 n

end

end A017634.P10436901345614068813

namespace A017634

/-- `A017630(n)*A017632(n)` -/
def P10436901345614068813.Spec : Prop :=
  ∀ n, P10436901345614068813.a n = A017634 n

end A017634

/-! ## A017634.P3343779100473684940

`(A017629(n)*A017630(n))²`
-/

namespace A017634.P3343779100473684940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017629 n * A017630 n) ^ 2

end

end A017634.P3343779100473684940

namespace A017634

/-- `(A017629(n)*A017630(n))²` -/
def P3343779100473684940.Spec : Prop :=
  ∀ n, P3343779100473684940.a n = A017634 n

end A017634

/-! ## A017634.P1731767587495364365

`A017629(n)²*A017632(n)`
-/

namespace A017634.P1731767587495364365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n ^ 2 * A017632 n

end

end A017634.P1731767587495364365

namespace A017634

/-- `A017629(n)²*A017632(n)` -/
def P1731767587495364365.Spec : Prop :=
  ∀ n, P1731767587495364365.a n = A017634 n

end A017634

/-! ## A017634.P15889473948297491709

`(A017633(n)/A017630(n))²`
-/

namespace A017634.P15889473948297491709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017633 n : ℚ) / (A017630 n : ℚ)) ^ 2

end

end A017634.P15889473948297491709

namespace A017634

/-- `(A017633(n)/A017630(n))²` -/
def P15889473948297491709.Spec : Prop :=
  ∀ n, P15889473948297491709.a n = (A017634 n : ℚ)

end A017634

/-! ## A017634.P17373358114396254051

`A017636(n)/A017629(n)²`
-/

namespace A017634.P17373358114396254051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017636 n : ℚ) / (A017629 n ^ 2 : ℚ)

end

end A017634.P17373358114396254051

namespace A017634

/-- `A017636(n)/A017629(n)²` -/
def P17373358114396254051.Spec : Prop :=
  ∀ n, P17373358114396254051.a n = (A017634 n : ℚ)

end A017634

/-! ## A017634.P15165527969722883705

`(Δ[A085473(n)]^3)²`
-/

namespace A017634.P15165527969722883705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017634.P15165527969722883705

namespace A017634

/-- `(Δ[A085473(n)]^3)²` -/
def P15165527969722883705.Spec : Prop :=
  ∀ n, P15165527969722883705.a n = A017634 n

end A017634

/-! ## A017634.P12576659172276080671

`record[Δ[xor(1, n+1)²]^6]`
-/

namespace A017634.P12576659172276080671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017634.P12576659172276080671

namespace A017634

/-- `record[Δ[xor(1, n+1)²]^6]` -/
def P12576659172276080671.Spec : Prop :=
  ∀ n, P12576659172276080671.a n = A017634 n

end A017634

/-! ## A017634.P10212337079418968847

`A016950(Δ[n²])`
-/

namespace A017634.P10212337079418968847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016950 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017634.P10212337079418968847

namespace A017634

/-- `A016950(Δ[n²])` -/
def P10212337079418968847.Spec : Prop :=
  ∀ n, P10212337079418968847.a n = A017634 n

end A017634

/-! ## A017634.P4856633946611651876

`A016947(Δ[n²])²`
-/

namespace A017634.P4856633946611651876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017634.P4856633946611651876

namespace A017634

/-- `A016947(Δ[n²])²` -/
def P4856633946611651876.Spec : Prop :=
  ∀ n, P4856633946611651876.a n = A017634 n

end A017634

/-! ## A017634.P660226111316264456

`lcm(3, A016950(2*n+1))`
-/

namespace A017634.P660226111316264456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A016950 (2 * n + 1))

end

end A017634.P660226111316264456

namespace A017634

/-- `lcm(3, A016950(2*n+1))` -/
def P660226111316264456.Spec : Prop :=
  ∀ n, (P660226111316264456.a n : ℤ) = A017634 n

end A017634

/-! ## A017634.P2580441608397742116

`(12*n+9)*A016949(2*n+1)`
-/

namespace A017634.P2580441608397742116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 9 : ℤ) * A016949 (2 * n + 1)

end

end A017634.P2580441608397742116

namespace A017634

/-- `(12*n+9)*A016949(2*n+1)` -/
def P2580441608397742116.Spec : Prop :=
  ∀ n, P2580441608397742116.a n = A017634 n

end A017634

/-! ## A017634.P5772361364537811070

`A016951(2*n+1)/(12*n+9)`
-/

namespace A017634.P5772361364537811070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016951 (2 * n + 1) : ℚ) / (12 * n + 9 : ℚ)

end

end A017634.P5772361364537811070

namespace A017634

/-- `A016951(2*n+1)/(12*n+9)` -/
def P5772361364537811070.Spec : Prop :=
  ∀ n, P5772361364537811070.a n = (A017634 n : ℚ)

end A017634

/-! ## A017634.P3563287776230769097

`(12*n+9)²*A016948(2*n+1)`
-/

namespace A017634.P3563287776230769097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 9) ^ 2 : ℤ) * A016948 (2 * n + 1)

end

end A017634.P3563287776230769097

namespace A017634

/-- `(12*n+9)²*A016948(2*n+1)` -/
def P3563287776230769097.Spec : Prop :=
  ∀ n, P3563287776230769097.a n = A017634 n

end A017634

/-! ## A017634.P6818173439380119585

`A016952(2*n+1)/(12*n+9)²`
-/

namespace A017634.P6818173439380119585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016952 (2 * n + 1) : ℚ) / ((12 * n + 9) ^ 2 : ℚ)

end

end A017634.P6818173439380119585

namespace A017634

/-- `A016952(2*n+1)/(12*n+9)²` -/
def P6818173439380119585.Spec : Prop :=
  ∀ n, P6818173439380119585.a n = (A017634 n : ℚ)

end A017634

/-!
# A017635: a(n) = (12*n + 9)^7.

The programs for A017635, the canonical program `A017635.P994009320100181613` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017635 has offset 0).

The definition of A017635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+9)^7` (program `A017635.P994009320100181613`, by `A017635.P994009320100181613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017635.P994009320100181613

`(12*n+9)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017635

/-- `(12*n+9)^7` -/
def P994009320100181613.Spec : Prop :=
  ∀ n, (P994009320100181613.a n : ℤ) = A017635 n

theorem P994009320100181613.correct : P994009320100181613.Spec := by
  intro n
  simp only [A017635]

end A017635

/-! ## A017635.P1630191724387122398

`record[(3*xor(3, n))^7]`
-/

namespace A017635.P1630191724387122398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 3 n) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017635.P1630191724387122398

namespace A017635

/-- `record[(3*xor(3, n))^7]` -/
def P1630191724387122398.Spec : Prop :=
  ∀ n, (P1630191724387122398.a n : ℤ) = A017635 n

end A017635

/-! ## A017635.P17485065233211933094

`A017629(n)*A017634(n)`
-/

namespace A017635.P17485065233211933094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n * A017634 n

end

end A017635.P17485065233211933094

namespace A017635

/-- `A017629(n)*A017634(n)` -/
def P17485065233211933094.Spec : Prop :=
  ∀ n, P17485065233211933094.a n = A017635 n

end A017635

/-! ## A017635.P6258637466180895399

`A017630(n)*A017633(n)`
-/

namespace A017635.P6258637466180895399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017630 n * A017633 n

end

end A017635.P6258637466180895399

namespace A017635

/-- `A017630(n)*A017633(n)` -/
def P6258637466180895399.Spec : Prop :=
  ∀ n, P6258637466180895399.a n = A017635 n

end A017635

/-! ## A017635.P2593543923469558327

`A017631(n)*A017632(n)`
-/

namespace A017635.P2593543923469558327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017631 n * A017632 n

end

end A017635.P2593543923469558327

namespace A017635

/-- `A017631(n)*A017632(n)` -/
def P2593543923469558327.Spec : Prop :=
  ∀ n, P2593543923469558327.a n = A017635 n

end A017635

/-! ## A017635.P12785671336365802437

`A017636(n)/A017629(n)`
-/

namespace A017635.P12785671336365802437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017636 n : ℚ) / (A017629 n : ℚ)

end

end A017635.P12785671336365802437

namespace A017635

/-- `A017636(n)/A017629(n)` -/
def P12785671336365802437.Spec : Prop :=
  ∀ n, P12785671336365802437.a n = (A017635 n : ℚ)

end A017635

/-! ## A017635.P15787328484305938956

`A017629(n)²*A017633(n)`
-/

namespace A017635.P15787328484305938956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n ^ 2 * A017633 n

end

end A017635.P15787328484305938956

namespace A017635

/-- `A017629(n)²*A017633(n)` -/
def P15787328484305938956.Spec : Prop :=
  ∀ n, P15787328484305938956.a n = A017635 n

end A017635

/-! ## A017635.P6175364276125157985

`A017630(n)²*A017631(n)`
-/

namespace A017635.P6175364276125157985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017630 n ^ 2 * A017631 n

end

end A017635.P6175364276125157985

namespace A017635

/-- `A017630(n)²*A017631(n)` -/
def P6175364276125157985.Spec : Prop :=
  ∀ n, P6175364276125157985.a n = A017635 n

end A017635

/-! ## A017635.P17022712958605786178

`A017631(n)²*A017629(n)`
-/

namespace A017635.P17022712958605786178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017631 n ^ 2 * A017629 n

end

end A017635.P17022712958605786178

namespace A017635

/-- `A017631(n)²*A017629(n)` -/
def P17022712958605786178.Spec : Prop :=
  ∀ n, P17022712958605786178.a n = A017635 n

end A017635

/-! ## A017635.P605480121142360022

`A017632(n)²/A017629(n)`
-/

namespace A017635.P605480121142360022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017632 n ^ 2 : ℚ) / (A017629 n : ℚ)

end

end A017635.P605480121142360022

namespace A017635

/-- `A017632(n)²/A017629(n)` -/
def P605480121142360022.Spec : Prop :=
  ∀ n, P605480121142360022.a n = (A017635 n : ℚ)

end A017635

/-! ## A017635.P10441263921748827559

`A017630(n)²²/A017629(n)`
-/

namespace A017635.P10441263921748827559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017630 n ^ 2) ^ 2 : ℚ) / (A017629 n : ℚ)

end

end A017635.P10441263921748827559

namespace A017635

/-- `A017630(n)²²/A017629(n)` -/
def P10441263921748827559.Spec : Prop :=
  ∀ n, P10441263921748827559.a n = (A017635 n : ℚ)

end A017635

/-! ## A017635.P1402376456869420866

`A017633(n)/A017631(n)*A017633(n)`
-/

namespace A017635.P1402376456869420866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017633 n : ℚ) / (A017631 n : ℚ) * (A017633 n : ℚ)

end

end A017635.P1402376456869420866

namespace A017635

/-- `A017633(n)/A017631(n)*A017633(n)` -/
def P1402376456869420866.Spec : Prop :=
  ∀ n, P1402376456869420866.a n = (A017635 n : ℚ)

end A017635

/-! ## A017635.P15899987760328460553

`record[Δ[xor(1, n+1)²]^7]`
-/

namespace A017635.P15899987760328460553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017635.P15899987760328460553

namespace A017635

/-- `record[Δ[xor(1, n+1)²]^7]` -/
def P15899987760328460553.Spec : Prop :=
  ∀ n, P15899987760328460553.a n = A017635 n

end A017635

/-! ## A017635.P7291713688068410966

`A016951(Δ[n²])`
-/

namespace A017635.P7291713688068410966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016951 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017635.P7291713688068410966

namespace A017635

/-- `A016951(Δ[n²])` -/
def P7291713688068410966.Spec : Prop :=
  ∀ n, P7291713688068410966.a n = A017635 n

end A017635

/-! ## A017635.P12965043576763044900

`lcm(3, A016951(2*n+1))`
-/

namespace A017635.P12965043576763044900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A016951 (2 * n + 1))

end

end A017635.P12965043576763044900

namespace A017635

/-- `lcm(3, A016951(2*n+1))` -/
def P12965043576763044900.Spec : Prop :=
  ∀ n, (P12965043576763044900.a n : ℤ) = A017635 n

end A017635

/-! ## A017635.P9075052511668344864

`(12*n+9)*A016950(2*n+1)`
-/

namespace A017635.P9075052511668344864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 9 : ℤ) * A016950 (2 * n + 1)

end

end A017635.P9075052511668344864

namespace A017635

/-- `(12*n+9)*A016950(2*n+1)` -/
def P9075052511668344864.Spec : Prop :=
  ∀ n, P9075052511668344864.a n = A017635 n

end A017635

/-! ## A017635.P9102929871980789010

`A016952(2*n+1)/(12*n+9)`
-/

namespace A017635.P9102929871980789010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016952 (2 * n + 1) : ℚ) / (12 * n + 9 : ℚ)

end

end A017635.P9102929871980789010

namespace A017635

/-- `A016952(2*n+1)/(12*n+9)` -/
def P9102929871980789010.Spec : Prop :=
  ∀ n, P9102929871980789010.a n = (A017635 n : ℚ)

end A017635

/-! ## A017635.P16222971113095462646

`(12*n+9)²*A016949(2*n+1)`
-/

namespace A017635.P16222971113095462646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 9) ^ 2 : ℤ) * A016949 (2 * n + 1)

end

end A017635.P16222971113095462646

namespace A017635

/-- `(12*n+9)²*A016949(2*n+1)` -/
def P16222971113095462646.Spec : Prop :=
  ∀ n, P16222971113095462646.a n = A017635 n

end A017635

/-! ## A017635.P14360215745334505953

`A016953(2*n+1)/(12*n+9)²`
-/

namespace A017635.P14360215745334505953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016953 (2 * n + 1) : ℚ) / ((12 * n + 9) ^ 2 : ℚ)

end

end A017635.P14360215745334505953

namespace A017635

/-- `A016953(2*n+1)/(12*n+9)²` -/
def P14360215745334505953.Spec : Prop :=
  ∀ n, P14360215745334505953.a n = (A017635 n : ℚ)

end A017635

/-! ## A017635.P8347009846998792575

`A016950(2*n+1)*A017629(n)`
-/

namespace A017635.P8347009846998792575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016950 (2 * n + 1) * A017629 n

end

end A017635.P8347009846998792575

namespace A017635

/-- `A016950(2*n+1)*A017629(n)` -/
def P8347009846998792575.Spec : Prop :=
  ∀ n, P8347009846998792575.a n = A017635 n

end A017635

/-!
# A017636: a(n) = (12*n + 9)^8.

The programs for A017636, the canonical program `A017636.P15737600093029950715` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017636 has offset 0).

The definition of A017636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+9)^8` (program `A017636.P15737600093029950715`, by `A017636.P15737600093029950715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017636.P15737600093029950715

`(12*n+9)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017636

/-- `(12*n+9)^8` -/
def P15737600093029950715.Spec : Prop :=
  ∀ n, (P15737600093029950715.a n : ℤ) = A017636 n

theorem P15737600093029950715.correct : P15737600093029950715.Spec := by
  intro n
  simp only [A017636]

end A017636

/-! ## A017636.P3825449795509213230

`A017632(n)²`
-/

namespace A017636.P3825449795509213230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017632 n ^ 2

end

end A017636.P3825449795509213230

namespace A017636

/-- `A017632(n)²` -/
def P3825449795509213230.Spec : Prop :=
  ∀ n, P3825449795509213230.a n = A017636 n

end A017636

/-! ## A017636.P9764696722809777071

`A017630(n)²²`
-/

namespace A017636.P9764696722809777071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017630 n ^ 2) ^ 2

end

end A017636.P9764696722809777071

namespace A017636

/-- `A017630(n)²²` -/
def P9764696722809777071.Spec : Prop :=
  ∀ n, P9764696722809777071.a n = A017636 n

end A017636

/-! ## A017636.P1091958136147474689

`A017629(n)²²²`
-/

namespace A017636.P1091958136147474689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017629 n ^ 2) ^ 2) ^ 2

end

end A017636.P1091958136147474689

namespace A017636

/-- `A017629(n)²²²` -/
def P1091958136147474689.Spec : Prop :=
  ∀ n, P1091958136147474689.a n = A017636 n

end A017636

/-! ## A017636.P4722296827572240393

`Δ[A195319(n)]²²²`
-/

namespace A017636.P4722296827572240393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017636.P4722296827572240393

namespace A017636

/-- `Δ[A195319(n)]²²²` -/
def P4722296827572240393.Spec : Prop :=
  ∀ n, P4722296827572240393.a n = A017636 n

end A017636

/-! ## A017636.P13999458401254236831

`(A017617(n)+1)²²²`
-/

namespace A017636.P13999458401254236831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017617 n + 1) ^ 2) ^ 2) ^ 2

end

end A017636.P13999458401254236831

namespace A017636

/-- `(A017617(n)+1)²²²` -/
def P13999458401254236831.Spec : Prop :=
  ∀ n, P13999458401254236831.a n = A017636 n

end A017636

/-! ## A017636.P18184819957922660352

`(A017605(n)+2)²²²`
-/

namespace A017636.P18184819957922660352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017605 n + 2) ^ 2) ^ 2) ^ 2

end

end A017636.P18184819957922660352

namespace A017636

/-- `(A017605(n)+2)²²²` -/
def P18184819957922660352.Spec : Prop :=
  ∀ n, P18184819957922660352.a n = A017636 n

end A017636

/-! ## A017636.P3462348924739488757

`(1-A017641(n))²²²`
-/

namespace A017636.P3462348924739488757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017641 n) ^ 2) ^ 2) ^ 2

end

end A017636.P3462348924739488757

namespace A017636

/-- `(1-A017641(n))²²²` -/
def P3462348924739488757.Spec : Prop :=
  ∀ n, P3462348924739488757.a n = A017636 n

end A017636

/-! ## A017636.P12303444880218096429

`(2-A017653(n))²²²`
-/

namespace A017636.P12303444880218096429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017653 n) ^ 2) ^ 2) ^ 2

end

end A017636.P12303444880218096429

namespace A017636

/-- `(2-A017653(n))²²²` -/
def P12303444880218096429.Spec : Prop :=
  ∀ n, P12303444880218096429.a n = A017636 n

end A017636

/-! ## A017636.P14113348433427146684

`(3*A004767(n))²²²`
-/

namespace A017636.P14113348433427146684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((3 * A004767 n) ^ 2) ^ 2) ^ 2

end

end A017636.P14113348433427146684

namespace A017636

/-- `(3*A004767(n))²²²` -/
def P14113348433427146684.Spec : Prop :=
  ∀ n, P14113348433427146684.a n = A017636 n

end A017636

/-! ## A017636.P7345030469365481126

`(A017497(n)+n)²²²`
-/

namespace A017636.P7345030469365481126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017497 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017636.P7345030469365481126

namespace A017636

/-- `(A017497(n)+n)²²²` -/
def P7345030469365481126.Spec : Prop :=
  ∀ n, P7345030469365481126.a n = A017636 n

end A017636

/-! ## A017636.P2064046011429809010

`A017630(n)*A017634(n)`
-/

namespace A017636.P2064046011429809010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017630 n * A017634 n

end

end A017636.P2064046011429809010

namespace A017636

/-- `A017630(n)*A017634(n)` -/
def P2064046011429809010.Spec : Prop :=
  ∀ n, P2064046011429809010.a n = A017636 n

end A017636

/-! ## A017636.P6628743358719094107

`A017631(n)*A017633(n)`
-/

namespace A017636.P6628743358719094107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017631 n * A017633 n

end

end A017636.P6628743358719094107

namespace A017636

/-- `A017631(n)*A017633(n)` -/
def P6628743358719094107.Spec : Prop :=
  ∀ n, P6628743358719094107.a n = A017636 n

end A017636

/-! ## A017636.P13387606296451487784

`(A350052(n)+A017618(n))²²`
-/

namespace A017636.P13387606296451487784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A350052 n + A017618 n) ^ 2) ^ 2

end

end A017636.P13387606296451487784

namespace A017636

/-- `(A350052(n)+A017618(n))²²` -/
def P13387606296451487784.Spec : Prop :=
  ∀ n, P13387606296451487784.a n = A017636 n

end A017636

/-! ## A017636.P9810684815400545745

`(A017642(n)-A350051(n))²²`
-/

namespace A017636.P9810684815400545745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017642 n - A350051 n) ^ 2) ^ 2

end

end A017636.P9810684815400545745

namespace A017636

/-- `(A017642(n)-A350051(n))²²` -/
def P9810684815400545745.Spec : Prop :=
  ∀ n, P9810684815400545745.a n = A017636 n

end A017636

/-! ## A017636.P14802803191149127797

`Δ[A085473(n)]²²²`
-/

namespace A017636.P14802803191149127797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017636.P14802803191149127797

namespace A017636

/-- `Δ[A085473(n)]²²²` -/
def P14802803191149127797.Spec : Prop :=
  ∀ n, P14802803191149127797.a n = A017636 n

end A017636

/-! ## A017636.P11554357632764010383

`A016952(Δ[n²])`
-/

namespace A017636.P11554357632764010383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016952 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017636.P11554357632764010383

namespace A017636

/-- `A016952(Δ[n²])` -/
def P11554357632764010383.Spec : Prop :=
  ∀ n, P11554357632764010383.a n = A017636 n

end A017636

/-! ## A017636.P15635310092978698023

`A016948(Δ[n²])²`
-/

namespace A017636.P15635310092978698023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016948 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017636.P15635310092978698023

namespace A017636

/-- `A016948(Δ[n²])²` -/
def P15635310092978698023.Spec : Prop :=
  ∀ n, P15635310092978698023.a n = A017636 n

end A017636

/-! ## A017636.P4579435560282820737

`A016946(Δ[n²])²²`
-/

namespace A017636.P4579435560282820737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016946 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A017636.P4579435560282820737

namespace A017636

/-- `A016946(Δ[n²])²²` -/
def P4579435560282820737.Spec : Prop :=
  ∀ n, P4579435560282820737.a n = A017636 n

end A017636

/-! ## A017636.P17200702997988717735

`lcm(3, A016952(2*n+1))`
-/

namespace A017636.P17200702997988717735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A016952 (2 * n + 1))

end

end A017636.P17200702997988717735

namespace A017636

/-- `lcm(3, A016952(2*n+1))` -/
def P17200702997988717735.Spec : Prop :=
  ∀ n, (P17200702997988717735.a n : ℤ) = A017636 n

end A017636

/-!
# A017637: a(n) = (12*n + 9)^9.

The programs for A017637, the canonical program `A017637.P2705741128950913705` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017637 has offset 0).

The definition of A017637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+9)^9` (program `A017637.P2705741128950913705`, by `A017637.P2705741128950913705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017637.P2705741128950913705

`(12*n+9)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017637

/-- `(12*n+9)^9` -/
def P2705741128950913705.Spec : Prop :=
  ∀ n, (P2705741128950913705.a n : ℤ) = A017637 n

theorem P2705741128950913705.correct : P2705741128950913705.Spec := by
  intro n
  simp only [A017637]

end A017637

/-! ## A017637.P18360521736054683447

`A017631(n)*A017634(n)`
-/

namespace A017637.P18360521736054683447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017631 n * A017634 n

end

end A017637.P18360521736054683447

namespace A017637

/-- `A017631(n)*A017634(n)` -/
def P18360521736054683447.Spec : Prop :=
  ∀ n, P18360521736054683447.a n = A017637 n

end A017637

/-! ## A017637.P11076457237475487161

`A017632(n)*A017633(n)`
-/

namespace A017637.P11076457237475487161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017632 n * A017633 n

end

end A017637.P11076457237475487161

namespace A017637

/-- `A017632(n)*A017633(n)` -/
def P11076457237475487161.Spec : Prop :=
  ∀ n, P11076457237475487161.a n = A017637 n

end A017637

/-! ## A017637.P7306377644283098592

`A016953(2*n+1)`
-/

namespace A017637.P7306377644283098592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016953 (2 * n + 1)

end

end A017637.P7306377644283098592

namespace A017637

/-- `A016953(2*n+1)` -/
def P7306377644283098592.Spec : Prop :=
  ∀ n, P7306377644283098592.a n = A017637 n

end A017637

/-! ## A017637.P14678604630706210636

`A016952(2*n+1)*A017629(n)`
-/

namespace A017637.P14678604630706210636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016952 (2 * n + 1) * A017629 n

end

end A017637.P14678604630706210636

namespace A017637

/-- `A016952(2*n+1)*A017629(n)` -/
def P14678604630706210636.Spec : Prop :=
  ∀ n, P14678604630706210636.a n = A017637 n

end A017637

/-! ## A017637.P14987057377072709842

`A016945(2*n+1)*A016952(2*n+1)`
-/

namespace A017637.P14987057377072709842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (2 * n + 1) * A016952 (2 * n + 1)

end

end A017637.P14987057377072709842

namespace A017637

/-- `A016945(2*n+1)*A016952(2*n+1)` -/
def P14987057377072709842.Spec : Prop :=
  ∀ n, P14987057377072709842.a n = A017637 n

end A017637

/-! ## A017637.P15212780489220298111

`A016946(2*n+1)*A016951(2*n+1)`
-/

namespace A017637.P15212780489220298111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 (2 * n + 1) * A016951 (2 * n + 1)

end

end A017637.P15212780489220298111

namespace A017637

/-- `A016946(2*n+1)*A016951(2*n+1)` -/
def P15212780489220298111.Spec : Prop :=
  ∀ n, P15212780489220298111.a n = A017637 n

end A017637

/-! ## A017637.P1031307807438237776

`A016947(2*n+1)*A016950(2*n+1)`
-/

namespace A017637.P1031307807438237776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 (2 * n + 1) * A016950 (2 * n + 1)

end

end A017637.P1031307807438237776

namespace A017637

/-- `A016947(2*n+1)*A016950(2*n+1)` -/
def P1031307807438237776.Spec : Prop :=
  ∀ n, P1031307807438237776.a n = A017637 n

end A017637

/-! ## A017637.P6739879294216537907

`A016954(2*n+1)/A016945(2*n+1)`
-/

namespace A017637.P6739879294216537907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016954 (2 * n + 1) : ℚ) / (A016945 (2 * n + 1) : ℚ)

end

end A017637.P6739879294216537907

namespace A017637

/-- `A016954(2*n+1)/A016945(2*n+1)` -/
def P6739879294216537907.Spec : Prop :=
  ∀ n, P6739879294216537907.a n = (A017637 n : ℚ)

end A017637

/-! ## A017637.P11718860279735687346

`A016821(3*n+2)`
-/

namespace A017637.P11718860279735687346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016821 (3 * n + 2)

end

end A017637.P11718860279735687346

namespace A017637

/-- `A016821(3*n+2)` -/
def P11718860279735687346.Spec : Prop :=
  ∀ n, P11718860279735687346.a n = A017637 n

end A017637

/-! ## A017637.P7599925249800822839

`A016761(A016945(n)+1)`
-/

namespace A017637.P7599925249800822839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (A016945 n + 1).toNat

end

end A017637.P7599925249800822839

namespace A017637

/-- `A016761(A016945(n)+1)` -/
def P7599925249800822839.Spec : Prop :=
  ∀ n, P7599925249800822839.a n = A017637 n

end A017637

/-! ## A017637.P6695719549723828252

`A001017(A017629(n))`
-/

namespace A017637.P6695719549723828252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017629 n).toNat

end

end A017637.P6695719549723828252

namespace A017637

/-- `A001017(A017629(n))` -/
def P6695719549723828252.Spec : Prop :=
  ∀ n, P6695719549723828252.a n = A017637 n

end A017637

/-! ## A017637.P12762178374543644385

`A001017(A017497(n)+n)`
-/

namespace A017637.P12762178374543644385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017497 n + (n : ℤ)).toNat

end

end A017637.P12762178374543644385

namespace A017637

/-- `A001017(A017497(n)+n)` -/
def P12762178374543644385.Spec : Prop :=
  ∀ n, P12762178374543644385.a n = A017637 n

end A017637

/-!
# A017638: 

The programs for A017638, there is no canonical definition to state claims against.
-/

/-! ## A017638.P16213751416770948436

`(12*n+9)^10`
-/

namespace A017638.P16213751416770948436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (12 * n + 9) ^ 10

end

end A017638.P16213751416770948436

/-! ## A017638.P4140386323336924158

`A017633(n)²`
-/

namespace A017638.P4140386323336924158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017633 n ^ 2

end

end A017638.P4140386323336924158

/-! ## A017638.P1051631250438612464

`(A017629(n)^5)²`
-/

namespace A017638.P1051631250438612464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017629 n ^ 5) ^ 2

end

end A017638.P1051631250438612464

/-! ## A017638.P6316563817439544314

`A016949(A005408(n))²`
-/

namespace A017638.P6316563817439544314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016949 (A005408 n).toNat ^ 2

end

end A017638.P6316563817439544314

/-! ## A017638.P6640962872213954583

`A016774(A016813(n)+2)`
-/

namespace A017638.P6640962872213954583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016774 (A016813 n + 2).toNat

end

end A017638.P6640962872213954583

/-! ## A017638.P982135651942809177

`A016774(or(2, A016813(n)))`
-/

namespace A017638.P982135651942809177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016774 (Int.lor 2 (A016813 n)).toNat

end

end A017638.P982135651942809177

/-! ## A017638.P3038314964587766576

`A008454(A016945(2*n+1))`
-/

namespace A017638.P3038314964587766576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n + 1)).toNat

end

end A017638.P3038314964587766576

/-!
# A017639: 

The programs for A017639, there is no canonical definition to state claims against.
-/

/-! ## A017639.P7501189429813619337

`A017629(n)^11`
-/

namespace A017639.P7501189429813619337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n ^ 11

end

end A017639.P7501189429813619337

/-! ## A017639.P12462502037885252008

`Δ[A085473(n)]^11`
-/

namespace A017639.P12462502037885252008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 11

end

end A017639.P12462502037885252008

/-! ## A017639.P11034178626929522089

`A016945(2*n+1)*A016954(2*n+1)`
-/

namespace A017639.P11034178626929522089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (2 * n + 1) * A016954 (2 * n + 1)

end

end A017639.P11034178626929522089

/-! ## A017639.P16616007923042237062

`A008585(record[xor(3, n)])^11`
-/

namespace A017639.P16616007923042237062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 11

end

end A017639.P16616007923042237062

/-! ## A017639.P7725081637111544712

`A004273(A016969(n))^11`
-/

namespace A017639.P7725081637111544712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A016969 n).toNat ^ 11

end

end A017639.P7725081637111544712

/-! ## A017639.P14758708235768858950

`A129527(A017137(n))^11`
-/

namespace A017639.P14758708235768858950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (A017137 n).toNat ^ 11

end

end A017639.P14758708235768858950

/-!
# A017640: 

The programs for A017640, there is no canonical definition to state claims against.
-/

/-! ## A017640.P3303443081599856914

`A017634(n)²`
-/

namespace A017640.P3303443081599856914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017634 n ^ 2

end

end A017640.P3303443081599856914

/-! ## A017640.P17689261464353947410

`A017632(n)^3`
-/

namespace A017640.P17689261464353947410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017632 n ^ 3

end

end A017640.P17689261464353947410

/-! ## A017640.P17081539762576588374

`A017631(n)^4`
-/

namespace A017640.P17081539762576588374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017631 n ^ 4

end

end A017640.P17081539762576588374

/-! ## A017640.P2937699825591057152

`A017630(n)^6`
-/

namespace A017640.P2937699825591057152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017630 n ^ 6

end

end A017640.P2937699825591057152

/-! ## A017640.P190264837321952603

`A000578(A016945(2*n+1))²²`
-/

namespace A017640.P190264837321952603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016945 (2 * n + 1)).toNat ^ 2) ^ 2

end

end A017640.P190264837321952603

/-!
# A017641: a(n) = 12*n + 10.

The programs for A017641, the canonical program `A017641.P7179824184075428685` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017641 has offset 0).

The definition of A017641 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+10` (program `A017641.P7179824184075428685`, by `A017641.P7179824184075428685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017641.P7179824184075428685

`12*n+10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017641

/-- `12*n+10` -/
def P7179824184075428685.Spec : Prop :=
  ∀ n, (P7179824184075428685.a n : ℤ) = A017641 n

theorem P7179824184075428685.correct : P7179824184075428685.Spec := by
  intro n
  simp only [A017641]

end A017641

/-!
# A017642: a(n) = (12*n+10)^2.

The programs for A017642, the canonical program `A017642.P329126741911215366` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017642 has offset 0).

The definition of A017642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+10)²` (program `A017642.P329126741911215366`, by `A017642.P329126741911215366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017642.P329126741911215366

`(12*n+10)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017642

/-- `(12*n+10)²` -/
def P329126741911215366.Spec : Prop :=
  ∀ n, (P329126741911215366.a n : ℤ) = A017642 n

theorem P329126741911215366.correct : P329126741911215366.Spec := by
  intro n
  simp only [A017642]

end A017642

/-! ## A017642.P8984364529916896681

`sqrt(A017644(n))`
-/

namespace A017642.P8984364529916896681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017644 n : ℝ)

end

end A017642.P8984364529916896681

namespace A017642

/-- `sqrt(A017644(n))` -/
def P8984364529916896681.Spec : Prop :=
  ∀ n, P8984364529916896681.a n = (A017642 n : ℝ)

end A017642

/-! ## A017642.P20607422936434841

`4*A016970(n)`
-/

namespace A017642.P20607422936434841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016970 n

end

end A017642.P20607422936434841

namespace A017642

/-- `4*A016970(n)` -/
def P20607422936434841.Spec : Prop :=
  ∀ n, P20607422936434841.a n = A017642 n

end A017642

/-! ## A017642.P15989696264589627852

`A017641(n)^2`
-/

namespace A017642.P15989696264589627852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n ^ 2

end

end A017642.P15989696264589627852

namespace A017642

/-- `A017641(n)^2` -/
def P15989696264589627852.Spec : Prop :=
  ∀ n, P15989696264589627852.a n = A017642 n

end A017642

/-! ## A017642.P989195880713010555

`sqrt(sqrt(A017648(n)))`
-/

namespace A017642.P989195880713010555
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017648 n : ℝ))

end

end A017642.P989195880713010555

namespace A017642

/-- `sqrt(sqrt(A017648(n)))` -/
def P989195880713010555.Spec : Prop :=
  ∀ n, P989195880713010555.a n = (A017642 n : ℝ)

end A017642

/-! ## A017642.P18063711185341901718

`4*A016969(n)²`
-/

namespace A017642.P18063711185341901718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016969 n ^ 2

end

end A017642.P18063711185341901718

namespace A017642

/-- `4*A016969(n)²` -/
def P18063711185341901718.Spec : Prop :=
  ∀ n, P18063711185341901718.a n = A017642 n

end A017642

/-! ## A017642.P7448269373294846291

`4*sqrt(A016972(n))`
-/

namespace A017642.P7448269373294846291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016972 n : ℝ)

end

end A017642.P7448269373294846291

namespace A017642

/-- `4*sqrt(A016972(n))` -/
def P7448269373294846291.Spec : Prop :=
  ∀ n, P7448269373294846291.a n = (A017642 n : ℝ)

end A017642

/-! ## A017642.P5332922430872372756

`A017646(n)^(1/3)`
-/

namespace A017642.P5332922430872372756
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017646 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017642.P5332922430872372756

namespace A017642

/-- `A017646(n)^(1/3)` -/
def P5332922430872372756.Spec : Prop :=
  ∀ n, P5332922430872372756.a n = (A017642 n : ℝ)

end A017642

/-! ## A017642.P341076637217904911

`A017643(n)^(2/3)`
-/

namespace A017642.P341076637217904911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017643 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017642.P341076637217904911

namespace A017642

/-- `A017643(n)^(2/3)` -/
def P341076637217904911.Spec : Prop :=
  ∀ n, P341076637217904911.a n = (A017642 n : ℝ)

end A017642

/-! ## A017642.P9206956567185286325

`A305073(n+1)/2+4`
-/

namespace A017642.P9206956567185286325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305073 (n + 1) : ℚ) / 2 + 4

end

end A017642.P9206956567185286325

namespace A017642

/-- `A305073(n+1)/2+4` -/
def P9206956567185286325.Spec : Prop :=
  ∀ n, P9206956567185286325.a n = (A017642 n : ℚ)

end A017642

/-! ## A017642.P3392314953490451360

`A350051(n)+A017630(n)`
-/

namespace A017642.P3392314953490451360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350051 n + A017630 n

end

end A017642.P3392314953490451360

namespace A017642

/-- `A350051(n)+A017630(n)` -/
def P3392314953490451360.Spec : Prop :=
  ∀ n, P3392314953490451360.a n = A017642 n

end A017642

/-! ## A017642.P1822278002487438044

`A017654(n)-A102603(n)`
-/

namespace A017642.P1822278002487438044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n - A102603 n

end

end A017642.P1822278002487438044

namespace A017642

/-- `A017654(n)-A102603(n)` -/
def P1822278002487438044.Spec : Prop :=
  ∀ n, P1822278002487438044.a n = A017642 n

end A017642

/-! ## A017642.P10948926283900725022

`A017643(n)/A017641(n)`
-/

namespace A017642.P10948926283900725022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017643 n : ℚ) / (A017641 n : ℚ)

end

end A017642.P10948926283900725022

namespace A017642

/-- `A017643(n)/A017641(n)` -/
def P10948926283900725022.Spec : Prop :=
  ∀ n, P10948926283900725022.a n = (A017642 n : ℚ)

end A017642

/-! ## A017642.P8489552859445772566

`A017645(n)/A017643(n)`
-/

namespace A017642.P8489552859445772566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017645 n : ℚ) / (A017643 n : ℚ)

end

end A017642.P8489552859445772566

namespace A017642

/-- `A017645(n)/A017643(n)` -/
def P8489552859445772566.Spec : Prop :=
  ∀ n, P8489552859445772566.a n = (A017642 n : ℚ)

end A017642

/-! ## A017642.P8402960481526723584

`A017646(n)/A017644(n)`
-/

namespace A017642.P8402960481526723584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017646 n : ℚ) / (A017644 n : ℚ)

end

end A017642.P8402960481526723584

namespace A017642

/-- `A017646(n)/A017644(n)` -/
def P8402960481526723584.Spec : Prop :=
  ∀ n, P8402960481526723584.a n = (A017642 n : ℚ)

end A017642

/-! ## A017642.P13090720073973853784

`A017643(n)²/A017644(n)`
-/

namespace A017642.P13090720073973853784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017643 n ^ 2 : ℚ) / (A017644 n : ℚ)

end

end A017642.P13090720073973853784

namespace A017642

/-- `A017643(n)²/A017644(n)` -/
def P13090720073973853784.Spec : Prop :=
  ∀ n, P13090720073973853784.a n = (A017642 n : ℚ)

end A017642

/-! ## A017642.P14060081254864265159

`A157331(n+1)+A001539(n)`
-/

namespace A017642.P14060081254864265159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (n + 1) + A001539 n

end

end A017642.P14060081254864265159

namespace A017642

/-- `A157331(n+1)+A001539(n)` -/
def P14060081254864265159.Spec : Prop :=
  ∀ n, P14060081254864265159.a n = A017642 n

end A017642

/-! ## A017642.P3483177129667325485

`A158774(n+1)+A146301(n)`
-/

namespace A017642.P3483177129667325485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158774 (n + 1) + A146301 n

end

end A017642.P3483177129667325485

namespace A017642

/-- `A158774(n+1)+A146301(n)` -/
def P3483177129667325485.Spec : Prop :=
  ∀ n, P3483177129667325485.a n = A017642 n

end A017642

/-! ## A017642.P15974185798866918663

`A017646(n)/A017641(n)²²`
-/

namespace A017642.P15974185798866918663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017646 n : ℚ) / ((A017641 n ^ 2) ^ 2 : ℚ)

end

end A017642.P15974185798866918663

namespace A017642

/-- `A017646(n)/A017641(n)²²` -/
def P15974185798866918663.Spec : Prop :=
  ∀ n, P15974185798866918663.a n = (A017642 n : ℚ)

end A017642

/-! ## A017642.P7436938410204931654

`(2*A016972(n))²/A016974(n)`
-/

namespace A017642.P7436938410204931654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * A016972 n) ^ 2 : ℚ) / (A016974 n : ℚ)

end

end A017642.P7436938410204931654

namespace A017642

/-- `(2*A016972(n))²/A016974(n)` -/
def P7436938410204931654.Spec : Prop :=
  ∀ n, P7436938410204931654.a n = (A017642 n : ℚ)

end A017642

/-!
# A017643: a(n) = (12*n + 10)^3.

The programs for A017643, the canonical program `A017643.P6451620853756470988` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017643 has offset 0).

The definition of A017643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+10)^3` (program `A017643.P6451620853756470988`, by `A017643.P6451620853756470988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017643.P6451620853756470988

`(12*n+10)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017643

/-- `(12*n+10)^3` -/
def P6451620853756470988.Spec : Prop :=
  ∀ n, (P6451620853756470988.a n : ℤ) = A017643 n

theorem P6451620853756470988.correct : P6451620853756470988.Spec := by
  intro n
  simp only [A017643]

end A017643

/-! ## A017643.P12224667369723057452

`A000578(A017641(n))`
-/

namespace A017643.P12224667369723057452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017641 n).toNat

end

end A017643.P12224667369723057452

namespace A017643

/-- `A000578(A017641(n))` -/
def P12224667369723057452.Spec : Prop :=
  ∀ n, P12224667369723057452.a n = A017643 n

end A017643

/-! ## A017643.P3600907733403552364

`lcm(2, 6*n+5)²*lcm(2, 6*n+5)`
-/

namespace A017643.P3600907733403552364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (6 * n + 5) ^ 2 * Nat.lcm 2 (6 * n + 5)

end

end A017643.P3600907733403552364

namespace A017643

/-- `lcm(2, 6*n+5)²*lcm(2, 6*n+5)` -/
def P3600907733403552364.Spec : Prop :=
  ∀ n, (P3600907733403552364.a n : ℤ) = A017643 n

end A017643

/-! ## A017643.P7571081776976442942

`(or(1, 12*n)+9)*(or(1, 12*n)+9)²`
-/

namespace A017643.P7571081776976442942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n) + 9) * (Nat.lor 1 (12 * n) + 9) ^ 2

end

end A017643.P7571081776976442942

namespace A017643

/-- `(or(1, 12*n)+9)*(or(1, 12*n)+9)²` -/
def P7571081776976442942.Spec : Prop :=
  ∀ n, (P7571081776976442942.a n : ℤ) = A017643 n

end A017643

/-! ## A017643.P13027350649128259271

`sqrt(A017646(n))`
-/

namespace A017643.P13027350649128259271
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017646 n : ℝ)

end

end A017643.P13027350649128259271

namespace A017643

/-- `sqrt(A017646(n))` -/
def P13027350649128259271.Spec : Prop :=
  ∀ n, P13027350649128259271.a n = (A017643 n : ℝ)

end A017643

/-! ## A017643.P1708065174816354731

`8*A016971(n)`
-/

namespace A017643.P1708065174816354731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016971 n

end

end A017643.P1708065174816354731

namespace A017643

/-- `8*A016971(n)` -/
def P1708065174816354731.Spec : Prop :=
  ∀ n, P1708065174816354731.a n = A017643 n

end A017643

/-! ## A017643.P10663177385963181811

`8*sqrt(A016974(n))`
-/

namespace A017643.P10663177385963181811
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  8 * Real.sqrt (A016974 n : ℝ)

end

end A017643.P10663177385963181811

namespace A017643

/-- `8*sqrt(A016974(n))` -/
def P10663177385963181811.Spec : Prop :=
  ∀ n, P10663177385963181811.a n = (A017643 n : ℝ)

end A017643

/-! ## A017643.P11513779899393935942

`sqrt(A017642(n)^3)`
-/

namespace A017643.P11513779899393935942
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017642 n ^ 3 : ℝ)

end

end A017643.P11513779899393935942

namespace A017643

/-- `sqrt(A017642(n)^3)` -/
def P11513779899393935942.Spec : Prop :=
  ∀ n, P11513779899393935942.a n = (A017643 n : ℝ)

end A017643

/-! ## A017643.P5075697505047282060

`A017644(n)/(12*n+10)`
-/

namespace A017643.P5075697505047282060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017644 n : ℚ) / (12 * n + 10 : ℚ)

end

end A017643.P5075697505047282060

namespace A017643

/-- `A017644(n)/(12*n+10)` -/
def P5075697505047282060.Spec : Prop :=
  ∀ n, P5075697505047282060.a n = (A017643 n : ℚ)

end A017643

/-! ## A017643.P17657818985878448813

`A017641(n)*A017642(n)`
-/

namespace A017643.P17657818985878448813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n * A017642 n

end

end A017643.P17657818985878448813

namespace A017643

/-- `A017641(n)*A017642(n)` -/
def P17657818985878448813.Spec : Prop :=
  ∀ n, P17657818985878448813.a n = A017643 n

end A017643

/-! ## A017643.P12815949046289014154

`A017645(n)/A017642(n)`
-/

namespace A017643.P12815949046289014154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017645 n : ℚ) / (A017642 n : ℚ)

end

end A017643.P12815949046289014154

namespace A017643

/-- `A017645(n)/A017642(n)` -/
def P12815949046289014154.Spec : Prop :=
  ∀ n, P12815949046289014154.a n = (A017643 n : ℚ)

end A017643

/-! ## A017643.P7403322302090148900

`A017645(n)/A017641(n)²`
-/

namespace A017643.P7403322302090148900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017645 n : ℚ) / (A017641 n ^ 2 : ℚ)

end

end A017643.P7403322302090148900

namespace A017643

/-- `A017645(n)/A017641(n)²` -/
def P7403322302090148900.Spec : Prop :=
  ∀ n, P7403322302090148900.a n = (A017643 n : ℚ)

end A017643

/-! ## A017643.P12698836235955429150

`2*A016969(n)*A017642(n)`
-/

namespace A017643.P12698836235955429150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016969 n * A017642 n)

end

end A017643.P12698836235955429150

namespace A017643

/-- `2*A016969(n)*A017642(n)` -/
def P12698836235955429150.Spec : Prop :=
  ∀ n, P12698836235955429150.a n = A017643 n

end A017643

/-! ## A017643.P15114761003143562608

`sqrt(sqrt(A017644(n))*A017644(n))`
-/

namespace A017643.P15114761003143562608
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017644 n : ℝ) * (A017644 n : ℝ))

end

end A017643.P15114761003143562608

namespace A017643

/-- `sqrt(sqrt(A017644(n))*A017644(n))` -/
def P15114761003143562608.Spec : Prop :=
  ∀ n, P15114761003143562608.a n = (A017643 n : ℝ)

end A017643

/-! ## A017643.P2473280535345900392

`(1-A017653(n))²*A017641(n)`
-/

namespace A017643.P2473280535345900392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A017653 n) ^ 2 * A017641 n

end

end A017643.P2473280535345900392

namespace A017643

/-- `(1-A017653(n))²*A017641(n)` -/
def P2473280535345900392.Spec : Prop :=
  ∀ n, P2473280535345900392.a n = A017643 n

end A017643

/-! ## A017643.P13195029342922014144

`2*A016969(n)*A017641(n)²`
-/

namespace A017643.P13195029342922014144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016969 n * A017641 n ^ 2

end

end A017643.P13195029342922014144

namespace A017643

/-- `2*A016969(n)*A017641(n)²` -/
def P13195029342922014144.Spec : Prop :=
  ∀ n, P13195029342922014144.a n = A017643 n

end A017643

/-! ## A017643.P1218540022856163786

`A017646(n)/(A017641(n)²*A017641(n))`
-/

namespace A017643.P1218540022856163786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017646 n : ℚ) / (A017641 n ^ 2 * A017641 n : ℚ)

end

end A017643.P1218540022856163786

namespace A017643

/-- `A017646(n)/(A017641(n)²*A017641(n))` -/
def P1218540022856163786.Spec : Prop :=
  ∀ n, P1218540022856163786.a n = (A017643 n : ℚ)

end A017643

/-! ## A017643.P5730792602459373787

`Δ[A080859(n)]²*Δ[A080859(n)]`
-/

namespace A017643.P5730792602459373787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017643.P5730792602459373787

namespace A017643

/-- `Δ[A080859(n)]²*Δ[A080859(n)]` -/
def P5730792602459373787.Spec : Prop :=
  ∀ n, P5730792602459373787.a n = A017643 n

end A017643

/-! ## A017643.P13506258978456699823

`Δ[A202804(n)]²*Δ[A202804(n)]`
-/

namespace A017643.P13506258978456699823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017643.P13506258978456699823

namespace A017643

/-- `Δ[A202804(n)]²*Δ[A202804(n)]` -/
def P13506258978456699823.Spec : Prop :=
  ∀ n, P13506258978456699823.a n = A017643 n

end A017643

/-! ## A017643.P5929144678722093966

`A016959(Δ[n²])`
-/

namespace A017643.P5929144678722093966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017643.P5929144678722093966

namespace A017643

/-- `A016959(Δ[n²])` -/
def P5929144678722093966.Spec : Prop :=
  ∀ n, P5929144678722093966.a n = A017643 n

end A017643

/-!
# A017644: a(n) = (12*n + 10)^4.

The programs for A017644, the canonical program `A017644.P10857734079315447972` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017644 has offset 0).

The definition of A017644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+10)^4` (program `A017644.P10857734079315447972`, by `A017644.P10857734079315447972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017644.P10857734079315447972

`(12*n+10)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017644

/-- `(12*n+10)^4` -/
def P10857734079315447972.Spec : Prop :=
  ∀ n, (P10857734079315447972.a n : ℤ) = A017644 n

theorem P10857734079315447972.correct : P10857734079315447972.Spec := by
  intro n
  simp only [A017644]

end A017644

/-! ## A017644.P10400145768659346216

`lcm(2, 6*n+5)²²`
-/

namespace A017644.P10400145768659346216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (6 * n + 5) ^ 2) ^ 2

end

end A017644.P10400145768659346216

namespace A017644

/-- `lcm(2, 6*n+5)²²` -/
def P10400145768659346216.Spec : Prop :=
  ∀ n, (P10400145768659346216.a n : ℤ) = A017644 n

end A017644

/-! ## A017644.P8971024915917396826

`(or(1, 12*n)+9)²²`
-/

namespace A017644.P8971024915917396826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (12 * n) + 9) ^ 2) ^ 2

end

end A017644.P8971024915917396826

namespace A017644

/-- `(or(1, 12*n)+9)²²` -/
def P8971024915917396826.Spec : Prop :=
  ∀ n, (P8971024915917396826.a n : ℤ) = A017644 n

end A017644

/-! ## A017644.P14772717761400083705

`A017642(n)²`
-/

namespace A017644.P14772717761400083705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017642 n ^ 2

end

end A017644.P14772717761400083705

namespace A017644

/-- `A017642(n)²` -/
def P14772717761400083705.Spec : Prop :=
  ∀ n, P14772717761400083705.a n = A017644 n

end A017644

/-! ## A017644.P6723411706965786076

`sqrt(A017648(n))`
-/

namespace A017644.P6723411706965786076
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017648 n : ℝ)

end

end A017644.P6723411706965786076

namespace A017644

/-- `sqrt(A017648(n))` -/
def P6723411706965786076.Spec : Prop :=
  ∀ n, P6723411706965786076.a n = (A017644 n : ℝ)

end A017644

/-! ## A017644.P5756174453155671209

`A017641(n)²²`
-/

namespace A017644.P5756174453155671209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017641 n ^ 2) ^ 2

end

end A017644.P5756174453155671209

namespace A017644

/-- `A017641(n)²²` -/
def P5756174453155671209.Spec : Prop :=
  ∀ n, P5756174453155671209.a n = A017644 n

end A017644

/-! ## A017644.P13159533574731149857

`(4*A016970(n))²`
-/

namespace A017644.P13159533574731149857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016970 n) ^ 2

end

end A017644.P13159533574731149857

namespace A017644

/-- `(4*A016970(n))²` -/
def P13159533574731149857.Spec : Prop :=
  ∀ n, P13159533574731149857.a n = A017644 n

end A017644

/-! ## A017644.P6509019553291670190

`4*4*A016972(n)`
-/

namespace A017644.P6509019553291670190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A016972 n)

end

end A017644.P6509019553291670190

namespace A017644

/-- `4*4*A016972(n)` -/
def P6509019553291670190.Spec : Prop :=
  ∀ n, P6509019553291670190.a n = A017644 n

end A017644

/-! ## A017644.P16376826331916306227

`(A017629(n)+1)²²`
-/

namespace A017644.P16376826331916306227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017629 n + 1) ^ 2) ^ 2

end

end A017644.P16376826331916306227

namespace A017644

/-- `(A017629(n)+1)²²` -/
def P16376826331916306227.Spec : Prop :=
  ∀ n, P16376826331916306227.a n = A017644 n

end A017644

/-! ## A017644.P5089755186198890802

`(A017617(n)+2)²²`
-/

namespace A017644.P5089755186198890802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017617 n + 2) ^ 2) ^ 2

end

end A017644.P5089755186198890802

namespace A017644

/-- `(A017617(n)+2)²²` -/
def P5089755186198890802.Spec : Prop :=
  ∀ n, P5089755186198890802.a n = A017644 n

end A017644

/-! ## A017644.P8685612465274684060

`(1-A017653(n))²²`
-/

namespace A017644.P8685612465274684060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017653 n) ^ 2) ^ 2

end

end A017644.P8685612465274684060

namespace A017644

/-- `(1-A017653(n))²²` -/
def P8685612465274684060.Spec : Prop :=
  ∀ n, P8685612465274684060.a n = A017644 n

end A017644

/-! ## A017644.P9201419433407325142

`(A017605(n)+3)²²`
-/

namespace A017644.P9201419433407325142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017605 n + 3) ^ 2) ^ 2

end

end A017644.P9201419433407325142

namespace A017644

/-- `(A017605(n)+3)²²` -/
def P9201419433407325142.Spec : Prop :=
  ∀ n, P9201419433407325142.a n = A017644 n

end A017644

/-! ## A017644.P5187794183639963751

`(2*A016969(n))²²`
-/

namespace A017644.P5187794183639963751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A016969 n) ^ 2) ^ 2

end

end A017644.P5187794183639963751

namespace A017644

/-- `(2*A016969(n))²²` -/
def P5187794183639963751.Spec : Prop :=
  ∀ n, P5187794183639963751.a n = A017644 n

end A017644

/-! ## A017644.P315714764131088882

`(A017509(n)+n)²²`
-/

namespace A017644.P315714764131088882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017509 n + (n : ℤ)) ^ 2) ^ 2

end

end A017644.P315714764131088882

namespace A017644

/-- `(A017509(n)+n)²²` -/
def P315714764131088882.Spec : Prop :=
  ∀ n, P315714764131088882.a n = A017644 n

end A017644

/-! ## A017644.P9426601158153745596

`(sqrt(A017630(n))+1)²²`
-/

namespace A017644.P9426601158153745596
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017630 n : ℝ) + 1) ^ 2) ^ 2

end

end A017644.P9426601158153745596

namespace A017644

/-- `(sqrt(A017630(n))+1)²²` -/
def P9426601158153745596.Spec : Prop :=
  ∀ n, P9426601158153745596.a n = (A017644 n : ℝ)

end A017644

/-! ## A017644.P13453694509533199795

`(sqrt(A017618(n))+2)²²`
-/

namespace A017644.P13453694509533199795
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017618 n : ℝ) + 2) ^ 2) ^ 2

end

end A017644.P13453694509533199795

namespace A017644

/-- `(sqrt(A017618(n))+2)²²` -/
def P13453694509533199795.Spec : Prop :=
  ∀ n, P13453694509533199795.a n = (A017644 n : ℝ)

end A017644

/-! ## A017644.P16187223246754274760

`(1-sqrt(A017654(n)))²²`
-/

namespace A017644.P16187223246754274760
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017654 n : ℝ)) ^ 2) ^ 2

end

end A017644.P16187223246754274760

namespace A017644

/-- `(1-sqrt(A017654(n)))²²` -/
def P16187223246754274760.Spec : Prop :=
  ∀ n, P16187223246754274760.a n = (A017644 n : ℝ)

end A017644

/-! ## A017644.P3326373447056778505

`(Δ[A195319(n)]+1)²²`
-/

namespace A017644.P3326373447056778505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n + 1) ^ 2) ^ 2

end

end A017644.P3326373447056778505

namespace A017644

/-- `(Δ[A195319(n)]+1)²²` -/
def P3326373447056778505.Spec : Prop :=
  ∀ n, P3326373447056778505.a n = A017644 n

end A017644

/-! ## A017644.P16929608123177434727

`(1-Δ[A033570(n)])²²`
-/

namespace A017644.P16929608123177434727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (f1 (n + 1) - f1 n)) ^ 2) ^ 2

end

end A017644.P16929608123177434727

namespace A017644

/-- `(1-Δ[A033570(n)])²²` -/
def P16929608123177434727.Spec : Prop :=
  ∀ n, P16929608123177434727.a n = A017644 n

end A017644

/-! ## A017644.P18172259285338529393

`(2-A008594(n+1))²²`
-/

namespace A017644.P18172259285338529393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A008594 (n + 1)) ^ 2) ^ 2

end

end A017644.P18172259285338529393

namespace A017644

/-- `(2-A008594(n+1))²²` -/
def P18172259285338529393.Spec : Prop :=
  ∀ n, P18172259285338529393.a n = A017644 n

end A017644

/-!
# A017645: a(n) = (12*n + 10)^5.

The programs for A017645, the canonical program `A017645.P2908215339894729574` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017645 has offset 0).

The definition of A017645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+10)^5` (program `A017645.P2908215339894729574`, by `A017645.P2908215339894729574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017645.P2908215339894729574

`(12*n+10)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017645

/-- `(12*n+10)^5` -/
def P2908215339894729574.Spec : Prop :=
  ∀ n, (P2908215339894729574.a n : ℤ) = A017645 n

theorem P2908215339894729574.correct : P2908215339894729574.Spec := by
  intro n
  simp only [A017645]

end A017645

/-! ## A017645.P2787955252900488421

`32*A016973(n)`
-/

namespace A017645.P2787955252900488421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A016973 n

end

end A017645.P2787955252900488421

namespace A017645

/-- `32*A016973(n)` -/
def P2787955252900488421.Spec : Prop :=
  ∀ n, P2787955252900488421.a n = A017645 n

end A017645

/-! ## A017645.P11605217719214248862

`(12*n+10)*A017644(n)`
-/

namespace A017645.P11605217719214248862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 10 : ℤ) * A017644 n

end

end A017645.P11605217719214248862

namespace A017645

/-- `(12*n+10)*A017644(n)` -/
def P11605217719214248862.Spec : Prop :=
  ∀ n, P11605217719214248862.a n = A017645 n

end A017645

/-! ## A017645.P3220087755806815520

`A017646(n)/(12*n+10)`
-/

namespace A017645.P3220087755806815520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017646 n : ℚ) / (12 * n + 10 : ℚ)

end

end A017645.P3220087755806815520

namespace A017645

/-- `A017646(n)/(12*n+10)` -/
def P3220087755806815520.Spec : Prop :=
  ∀ n, P3220087755806815520.a n = (A017645 n : ℚ)

end A017645

/-! ## A017645.P2099714821346516586

`abs((A017509(n)+n)^5-1)+1`
-/

namespace A017645.P2099714821346516586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A017509 n + (n : ℤ)) ^ 5 - 1| + 1

end

end A017645.P2099714821346516586

namespace A017645

/-- `abs((A017509(n)+n)^5-1)+1` -/
def P2099714821346516586.Spec : Prop :=
  ∀ n, P2099714821346516586.a n = A017645 n

end A017645

/-! ## A017645.P17478586218484236818

`A017642(n)*A017643(n)`
-/

namespace A017645.P17478586218484236818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017642 n * A017643 n

end

end A017645.P17478586218484236818

namespace A017645

/-- `A017642(n)*A017643(n)` -/
def P17478586218484236818.Spec : Prop :=
  ∀ n, P17478586218484236818.a n = A017645 n

end A017645

/-! ## A017645.P17444134361328909820

`A017641(n)²*A017643(n)`
-/

namespace A017645.P17444134361328909820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n ^ 2 * A017643 n

end

end A017645.P17444134361328909820

namespace A017645

/-- `A017641(n)²*A017643(n)` -/
def P17444134361328909820.Spec : Prop :=
  ∀ n, P17444134361328909820.a n = A017645 n

end A017645

/-! ## A017645.P17473023898696017016

`A017642(n)²*A017641(n)`
-/

namespace A017645.P17473023898696017016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017642 n ^ 2 * A017641 n

end

end A017645.P17473023898696017016

namespace A017645

/-- `A017642(n)²*A017641(n)` -/
def P17473023898696017016.Spec : Prop :=
  ∀ n, P17473023898696017016.a n = A017645 n

end A017645

/-! ## A017645.P12983737807960784916

`A017644(n)²/A017643(n)`
-/

namespace A017645.P12983737807960784916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017644 n ^ 2 : ℚ) / (A017643 n : ℚ)

end

end A017645.P12983737807960784916

namespace A017645

/-- `A017644(n)²/A017643(n)` -/
def P12983737807960784916.Spec : Prop :=
  ∀ n, P12983737807960784916.a n = (A017645 n : ℚ)

end A017645

/-! ## A017645.P9356570620012699349

`2*A016969(n)*A017644(n)`
-/

namespace A017645.P9356570620012699349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016969 n * A017644 n)

end

end A017645.P9356570620012699349

namespace A017645

/-- `2*A016969(n)*A017644(n)` -/
def P9356570620012699349.Spec : Prop :=
  ∀ n, P9356570620012699349.a n = A017645 n

end A017645

/-! ## A017645.P2372549305765493059

`2*A016969(n)*A017642(n)²`
-/

namespace A017645.P2372549305765493059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016969 n * A017642 n ^ 2

end

end A017645.P2372549305765493059

namespace A017645

/-- `2*A016969(n)*A017642(n)²` -/
def P2372549305765493059.Spec : Prop :=
  ∀ n, P2372549305765493059.a n = A017645 n

end A017645

/-! ## A017645.P11810866976001377512

`A017641(n)*A017646(n)/A017642(n)`
-/

namespace A017645.P11810866976001377512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017641 n * A017646 n : ℚ) / (A017642 n : ℚ)

end

end A017645.P11810866976001377512

namespace A017645

/-- `A017641(n)*A017646(n)/A017642(n)` -/
def P11810866976001377512.Spec : Prop :=
  ∀ n, P11810866976001377512.a n = (A017645 n : ℚ)

end A017645

/-! ## A017645.P12595055531020497033

`A017642(n)*A017644(n)/A017641(n)`
-/

namespace A017645.P12595055531020497033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017642 n * A017644 n : ℚ) / (A017641 n : ℚ)

end

end A017645.P12595055531020497033

namespace A017645

/-- `A017642(n)*A017644(n)/A017641(n)` -/
def P12595055531020497033.Spec : Prop :=
  ∀ n, P12595055531020497033.a n = (A017645 n : ℚ)

end A017645

/-! ## A017645.P3935605130653941482

`A016961(Δ[n²])`
-/

namespace A017645.P3935605130653941482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016961 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017645.P3935605130653941482

namespace A017645

/-- `A016961(Δ[n²])` -/
def P3935605130653941482.Spec : Prop :=
  ∀ n, P3935605130653941482.a n = A017645 n

end A017645

/-! ## A017645.P10804888826252600402

`32*A016793(Δ[n²])`
-/

namespace A017645.P10804888826252600402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A016793 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017645.P10804888826252600402

namespace A017645

/-- `32*A016793(Δ[n²])` -/
def P10804888826252600402.Spec : Prop :=
  ∀ n, P10804888826252600402.a n = A017645 n

end A017645

/-! ## A017645.P14377513202938996068

`lcm(2, A016961(2*n+1))`
-/

namespace A017645.P14377513202938996068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016961 (2 * n + 1))

end

end A017645.P14377513202938996068

namespace A017645

/-- `lcm(2, A016961(2*n+1))` -/
def P14377513202938996068.Spec : Prop :=
  ∀ n, (P14377513202938996068.a n : ℤ) = A017645 n

end A017645

/-! ## A017645.P13572134959725248333

`(12*n+10)*A016960(2*n+1)`
-/

namespace A017645.P13572134959725248333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 10 : ℤ) * A016960 (2 * n + 1)

end

end A017645.P13572134959725248333

namespace A017645

/-- `(12*n+10)*A016960(2*n+1)` -/
def P13572134959725248333.Spec : Prop :=
  ∀ n, P13572134959725248333.a n = A017645 n

end A017645

/-! ## A017645.P17604171602091293641

`A016962(2*n+1)/(12*n+10)`
-/

namespace A017645.P17604171602091293641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016962 (2 * n + 1) : ℚ) / (12 * n + 10 : ℚ)

end

end A017645.P17604171602091293641

namespace A017645

/-- `A016962(2*n+1)/(12*n+10)` -/
def P17604171602091293641.Spec : Prop :=
  ∀ n, P17604171602091293641.a n = (A017645 n : ℚ)

end A017645

/-! ## A017645.P9512016022909363179

`(12*n+10)²*A016959(2*n+1)`
-/

namespace A017645.P9512016022909363179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 10) ^ 2 : ℤ) * A016959 (2 * n + 1)

end

end A017645.P9512016022909363179

namespace A017645

/-- `(12*n+10)²*A016959(2*n+1)` -/
def P9512016022909363179.Spec : Prop :=
  ∀ n, P9512016022909363179.a n = A017645 n

end A017645

/-! ## A017645.P15712203497900390324

`A016963(2*n+1)/(12*n+10)²`
-/

namespace A017645.P15712203497900390324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016963 (2 * n + 1) : ℚ) / ((12 * n + 10) ^ 2 : ℚ)

end

end A017645.P15712203497900390324

namespace A017645

/-- `A016963(2*n+1)/(12*n+10)²` -/
def P15712203497900390324.Spec : Prop :=
  ∀ n, P15712203497900390324.a n = (A017645 n : ℚ)

end A017645

/-!
# A017646: a(n) = (12*n + 10)^6.

The programs for A017646, the canonical program `A017646.P1759128380887062929` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017646 has offset 0).

The definition of A017646 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+10)^6` (program `A017646.P1759128380887062929`, by `A017646.P1759128380887062929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017646.P1759128380887062929

`(12*n+10)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017646

/-- `(12*n+10)^6` -/
def P1759128380887062929.Spec : Prop :=
  ∀ n, (P1759128380887062929.a n : ℤ) = A017646 n

theorem P1759128380887062929.correct : P1759128380887062929.Spec := by
  intro n
  simp only [A017646]

end A017646

/-! ## A017646.P4241710899224061511

`A017643(n)²`
-/

namespace A017646.P4241710899224061511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017643 n ^ 2

end

end A017646.P4241710899224061511

namespace A017646

/-- `A017643(n)²` -/
def P4241710899224061511.Spec : Prop :=
  ∀ n, P4241710899224061511.a n = A017646 n

end A017646

/-! ## A017646.P6324124841686038592

`A017641(n)*A017645(n)`
-/

namespace A017646.P6324124841686038592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n * A017645 n

end

end A017646.P6324124841686038592

namespace A017646

/-- `A017641(n)*A017645(n)` -/
def P6324124841686038592.Spec : Prop :=
  ∀ n, P6324124841686038592.a n = A017646 n

end A017646

/-! ## A017646.P9506080268931090535

`A017642(n)*A017644(n)`
-/

namespace A017646.P9506080268931090535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017642 n * A017644 n

end

end A017646.P9506080268931090535

namespace A017646

/-- `A017642(n)*A017644(n)` -/
def P9506080268931090535.Spec : Prop :=
  ∀ n, P9506080268931090535.a n = A017646 n

end A017646

/-! ## A017646.P525274177691077038

`(A017641(n)*A017642(n))²`
-/

namespace A017646.P525274177691077038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017641 n * A017642 n) ^ 2

end

end A017646.P525274177691077038

namespace A017646

/-- `(A017641(n)*A017642(n))²` -/
def P525274177691077038.Spec : Prop :=
  ∀ n, P525274177691077038.a n = A017646 n

end A017646

/-! ## A017646.P13215567910955277237

`A017641(n)²*A017644(n)`
-/

namespace A017646.P13215567910955277237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n ^ 2 * A017644 n

end

end A017646.P13215567910955277237

namespace A017646

/-- `A017641(n)²*A017644(n)` -/
def P13215567910955277237.Spec : Prop :=
  ∀ n, P13215567910955277237.a n = A017646 n

end A017646

/-! ## A017646.P5990459065790571556

`(A017645(n)/A017642(n))²`
-/

namespace A017646.P5990459065790571556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017645 n : ℚ) / (A017642 n : ℚ)) ^ 2

end

end A017646.P5990459065790571556

namespace A017646

/-- `(A017645(n)/A017642(n))²` -/
def P5990459065790571556.Spec : Prop :=
  ∀ n, P5990459065790571556.a n = (A017646 n : ℚ)

end A017646

/-! ## A017646.P15397787760588324496

`A017648(n)/sqrt(sqrt(A017648(n)))`
-/

namespace A017646.P15397787760588324496
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017648 n : ℝ) / Real.sqrt (Real.sqrt (A017648 n : ℝ))

end

end A017646.P15397787760588324496

namespace A017646

/-- `A017648(n)/sqrt(sqrt(A017648(n)))` -/
def P15397787760588324496.Spec : Prop :=
  ∀ n, P15397787760588324496.a n = (A017646 n : ℝ)

end A017646

/-! ## A017646.P14432974311571113277

`(2*A016969(n))²*A017644(n)`
-/

namespace A017646.P14432974311571113277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A016969 n) ^ 2 * A017644 n

end

end A017646.P14432974311571113277

namespace A017646

/-- `(2*A016969(n))²*A017644(n)` -/
def P14432974311571113277.Spec : Prop :=
  ∀ n, P14432974311571113277.a n = A017646 n

end A017646

/-! ## A017646.P17408486678088993020

`A017643(n)*A017644(n)/A017641(n)`
-/

namespace A017646.P17408486678088993020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017643 n * A017644 n : ℚ) / (A017641 n : ℚ)

end

end A017646.P17408486678088993020

namespace A017646

/-- `A017643(n)*A017644(n)/A017641(n)` -/
def P17408486678088993020.Spec : Prop :=
  ∀ n, P17408486678088993020.a n = (A017646 n : ℚ)

end A017646

/-! ## A017646.P13261726854396219576

`(Δ[A080859(n)]^3)²`
-/

namespace A017646.P13261726854396219576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017646.P13261726854396219576

namespace A017646

/-- `(Δ[A080859(n)]^3)²` -/
def P13261726854396219576.Spec : Prop :=
  ∀ n, P13261726854396219576.a n = A017646 n

end A017646

/-! ## A017646.P5147133035061319254

`(Δ[A202804(n)]^3)²`
-/

namespace A017646.P5147133035061319254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017646.P5147133035061319254

namespace A017646

/-- `(Δ[A202804(n)]^3)²` -/
def P5147133035061319254.Spec : Prop :=
  ∀ n, P5147133035061319254.a n = A017646 n

end A017646

/-! ## A017646.P13151509520571416853

`A016962(Δ[n²])`
-/

namespace A017646.P13151509520571416853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016962 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017646.P13151509520571416853

namespace A017646

/-- `A016962(Δ[n²])` -/
def P13151509520571416853.Spec : Prop :=
  ∀ n, P13151509520571416853.a n = A017646 n

end A017646

/-! ## A017646.P9664959842632563537

`A016959(Δ[n²])²`
-/

namespace A017646.P9664959842632563537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017646.P9664959842632563537

namespace A017646

/-- `A016959(Δ[n²])²` -/
def P9664959842632563537.Spec : Prop :=
  ∀ n, P9664959842632563537.a n = A017646 n

end A017646

/-! ## A017646.P12185052044340897939

`lcm(2, A016962(2*n+1))`
-/

namespace A017646.P12185052044340897939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016962 (2 * n + 1))

end

end A017646.P12185052044340897939

namespace A017646

/-- `lcm(2, A016962(2*n+1))` -/
def P12185052044340897939.Spec : Prop :=
  ∀ n, (P12185052044340897939.a n : ℤ) = A017646 n

end A017646

/-! ## A017646.P12838089636048997451

`(12*n+10)*A016961(2*n+1)`
-/

namespace A017646.P12838089636048997451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 10 : ℤ) * A016961 (2 * n + 1)

end

end A017646.P12838089636048997451

namespace A017646

/-- `(12*n+10)*A016961(2*n+1)` -/
def P12838089636048997451.Spec : Prop :=
  ∀ n, P12838089636048997451.a n = A017646 n

end A017646

/-! ## A017646.P13763127967822754632

`A016963(2*n+1)/(12*n+10)`
-/

namespace A017646.P13763127967822754632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016963 (2 * n + 1) : ℚ) / (12 * n + 10 : ℚ)

end

end A017646.P13763127967822754632

namespace A017646

/-- `A016963(2*n+1)/(12*n+10)` -/
def P13763127967822754632.Spec : Prop :=
  ∀ n, P13763127967822754632.a n = (A017646 n : ℚ)

end A017646

/-! ## A017646.P3989736924559059958

`(12*n+10)²*A016960(2*n+1)`
-/

namespace A017646.P3989736924559059958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 10) ^ 2 : ℤ) * A016960 (2 * n + 1)

end

end A017646.P3989736924559059958

namespace A017646

/-- `(12*n+10)²*A016960(2*n+1)` -/
def P3989736924559059958.Spec : Prop :=
  ∀ n, P3989736924559059958.a n = A017646 n

end A017646

/-! ## A017646.P9949224757826387313

`A016964(2*n+1)/(12*n+10)²`
-/

namespace A017646.P9949224757826387313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016964 (2 * n + 1) : ℚ) / ((12 * n + 10) ^ 2 : ℚ)

end

end A017646.P9949224757826387313

namespace A017646

/-- `A016964(2*n+1)/(12*n+10)²` -/
def P9949224757826387313.Spec : Prop :=
  ∀ n, P9949224757826387313.a n = (A017646 n : ℚ)

end A017646

/-! ## A017646.P14631343927105536598

`A016959(2*n+1)*A016959(2*n+1)`
-/

namespace A017646.P14631343927105536598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 (2 * n + 1) * A016959 (2 * n + 1)

end

end A017646.P14631343927105536598

namespace A017646

/-- `A016959(2*n+1)*A016959(2*n+1)` -/
def P14631343927105536598.Spec : Prop :=
  ∀ n, P14631343927105536598.a n = A017646 n

end A017646

/-!
# A017647: a(n) = (12*n+10)^7.

The programs for A017647, the canonical program `A017647.P15512805353568125059` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017647 has offset 0).

The definition of A017647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+10)^7` (program `A017647.P15512805353568125059`, by `A017647.P15512805353568125059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017647.P15512805353568125059

`(12*n+10)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017647

/-- `(12*n+10)^7` -/
def P15512805353568125059.Spec : Prop :=
  ∀ n, (P15512805353568125059.a n : ℤ) = A017647 n

theorem P15512805353568125059.correct : P15512805353568125059.Spec := by
  intro n
  simp only [A017647]

end A017647

/-! ## A017647.P1180704149610023812

`(12*n+10)*A017646(n)`
-/

namespace A017647.P1180704149610023812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 10 : ℤ) * A017646 n

end

end A017647.P1180704149610023812

namespace A017647

/-- `(12*n+10)*A017646(n)` -/
def P1180704149610023812.Spec : Prop :=
  ∀ n, P1180704149610023812.a n = A017647 n

end A017647

/-! ## A017647.P9360910368176440292

`A017642(n)*A017645(n)`
-/

namespace A017647.P9360910368176440292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017642 n * A017645 n

end

end A017647.P9360910368176440292

namespace A017647

/-- `A017642(n)*A017645(n)` -/
def P9360910368176440292.Spec : Prop :=
  ∀ n, P9360910368176440292.a n = A017647 n

end A017647

/-! ## A017647.P6164800283772381814

`A017643(n)*A017644(n)`
-/

namespace A017647.P6164800283772381814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017643 n * A017644 n

end

end A017647.P6164800283772381814

namespace A017647

/-- `A017643(n)*A017644(n)` -/
def P6164800283772381814.Spec : Prop :=
  ∀ n, P6164800283772381814.a n = A017647 n

end A017647

/-! ## A017647.P5428618806153270646

`A017641(n)²*A017645(n)`
-/

namespace A017647.P5428618806153270646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n ^ 2 * A017645 n

end

end A017647.P5428618806153270646

namespace A017647

/-- `A017641(n)²*A017645(n)` -/
def P5428618806153270646.Spec : Prop :=
  ∀ n, P5428618806153270646.a n = A017647 n

end A017647

/-! ## A017647.P5285617038490999155

`A017642(n)²*A017643(n)`
-/

namespace A017647.P5285617038490999155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017642 n ^ 2 * A017643 n

end

end A017647.P5285617038490999155

namespace A017647

/-- `A017642(n)²*A017643(n)` -/
def P5285617038490999155.Spec : Prop :=
  ∀ n, P5285617038490999155.a n = A017647 n

end A017647

/-! ## A017647.P12672895240108368116

`A017643(n)²*A017641(n)`
-/

namespace A017647.P12672895240108368116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017643 n ^ 2 * A017641 n

end

end A017647.P12672895240108368116

namespace A017647

/-- `A017643(n)²*A017641(n)` -/
def P12672895240108368116.Spec : Prop :=
  ∀ n, P12672895240108368116.a n = A017647 n

end A017647

/-! ## A017647.P17082145726230919865

`A017644(n)²/A017641(n)`
-/

namespace A017647.P17082145726230919865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017644 n ^ 2 : ℚ) / (A017641 n : ℚ)

end

end A017647.P17082145726230919865

namespace A017647

/-- `A017644(n)²/A017641(n)` -/
def P17082145726230919865.Spec : Prop :=
  ∀ n, P17082145726230919865.a n = (A017647 n : ℚ)

end A017647

/-! ## A017647.P10662542911546642117

`A017642(n)²²/A017641(n)`
-/

namespace A017647.P10662542911546642117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017642 n ^ 2) ^ 2 : ℚ) / (A017641 n : ℚ)

end

end A017647.P10662542911546642117

namespace A017647

/-- `A017642(n)²²/A017641(n)` -/
def P10662542911546642117.Spec : Prop :=
  ∀ n, P10662542911546642117.a n = (A017647 n : ℚ)

end A017647

/-! ## A017647.P3147679466117677377

`A017644(n)²/(2*A016969(n))`
-/

namespace A017647.P3147679466117677377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017644 n ^ 2 : ℚ) / (2 * A016969 n : ℚ)

end

end A017647.P3147679466117677377

namespace A017647

/-- `A017644(n)²/(2*A016969(n))` -/
def P3147679466117677377.Spec : Prop :=
  ∀ n, P3147679466117677377.a n = (A017647 n : ℚ)

end A017647

/-! ## A017647.P16295600055948592040

`A017641(n)*A017642(n)*A017644(n)`
-/

namespace A017647.P16295600055948592040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n * A017642 n * A017644 n

end

end A017647.P16295600055948592040

namespace A017647

/-- `A017641(n)*A017642(n)*A017644(n)` -/
def P16295600055948592040.Spec : Prop :=
  ∀ n, P16295600055948592040.a n = A017647 n

end A017647

/-! ## A017647.P14311631688691965948

`A017642(n)*A017646(n)/A017641(n)`
-/

namespace A017647.P14311631688691965948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017642 n * A017646 n : ℚ) / (A017641 n : ℚ)

end

end A017647.P14311631688691965948

namespace A017647

/-- `A017642(n)*A017646(n)/A017641(n)` -/
def P14311631688691965948.Spec : Prop :=
  ∀ n, P14311631688691965948.a n = (A017647 n : ℚ)

end A017647

/-! ## A017647.P4740549656256589274

`A017645(n)/A017643(n)*A017645(n)`
-/

namespace A017647.P4740549656256589274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017645 n : ℚ) / (A017643 n : ℚ) * (A017645 n : ℚ)

end

end A017647.P4740549656256589274

namespace A017647

/-- `A017645(n)/A017643(n)*A017645(n)` -/
def P4740549656256589274.Spec : Prop :=
  ∀ n, P4740549656256589274.a n = (A017647 n : ℚ)

end A017647

/-! ## A017647.P8804615801717281778

`A016963(Δ[n²])`
-/

namespace A017647.P8804615801717281778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017647.P8804615801717281778

namespace A017647

/-- `A016963(Δ[n²])` -/
def P8804615801717281778.Spec : Prop :=
  ∀ n, P8804615801717281778.a n = A017647 n

end A017647

/-! ## A017647.P6509538528508760916

`lcm(2, A016963(2*n+1))`
-/

namespace A017647.P6509538528508760916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016963 (2 * n + 1))

end

end A017647.P6509538528508760916

namespace A017647

/-- `lcm(2, A016963(2*n+1))` -/
def P6509538528508760916.Spec : Prop :=
  ∀ n, (P6509538528508760916.a n : ℤ) = A017647 n

end A017647

/-! ## A017647.P17098954103049460808

`(12*n+10)*A016962(2*n+1)`
-/

namespace A017647.P17098954103049460808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 10 : ℤ) * A016962 (2 * n + 1)

end

end A017647.P17098954103049460808

namespace A017647

/-- `(12*n+10)*A016962(2*n+1)` -/
def P17098954103049460808.Spec : Prop :=
  ∀ n, P17098954103049460808.a n = A017647 n

end A017647

/-! ## A017647.P3897903348573338831

`A016964(2*n+1)/(12*n+10)`
-/

namespace A017647.P3897903348573338831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016964 (2 * n + 1) : ℚ) / (12 * n + 10 : ℚ)

end

end A017647.P3897903348573338831

namespace A017647

/-- `A016964(2*n+1)/(12*n+10)` -/
def P3897903348573338831.Spec : Prop :=
  ∀ n, P3897903348573338831.a n = (A017647 n : ℚ)

end A017647

/-! ## A017647.P5610926735101207892

`(12*n+10)²*A016961(2*n+1)`
-/

namespace A017647.P5610926735101207892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 10) ^ 2 : ℤ) * A016961 (2 * n + 1)

end

end A017647.P5610926735101207892

namespace A017647

/-- `(12*n+10)²*A016961(2*n+1)` -/
def P5610926735101207892.Spec : Prop :=
  ∀ n, P5610926735101207892.a n = A017647 n

end A017647

/-! ## A017647.P8229187124787193075

`A016965(2*n+1)/(12*n+10)²`
-/

namespace A017647.P8229187124787193075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016965 (2 * n + 1) : ℚ) / ((12 * n + 10) ^ 2 : ℚ)

end

end A017647.P8229187124787193075

namespace A017647

/-- `A016965(2*n+1)/(12*n+10)²` -/
def P8229187124787193075.Spec : Prop :=
  ∀ n, P8229187124787193075.a n = (A017647 n : ℚ)

end A017647

/-! ## A017647.P15419323084430854487

`(12*n+10)²²*A016959(2*n+1)`
-/

namespace A017647.P15419323084430854487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((12 * n + 10) ^ 2) ^ 2 : ℤ) * A016959 (2 * n + 1)

end

end A017647.P15419323084430854487

namespace A017647

/-- `(12*n+10)²²*A016959(2*n+1)` -/
def P15419323084430854487.Spec : Prop :=
  ∀ n, P15419323084430854487.a n = A017647 n

end A017647

/-!
# A017648: a(n) = (12*n + 10)^8.

The programs for A017648, the canonical program `A017648.P6352884312682230679` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017648 has offset 0).

The definition of A017648 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+10)^8` (program `A017648.P6352884312682230679`, by `A017648.P6352884312682230679.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017648.P6352884312682230679

`(12*n+10)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017648

/-- `(12*n+10)^8` -/
def P6352884312682230679.Spec : Prop :=
  ∀ n, (P6352884312682230679.a n : ℤ) = A017648 n

theorem P6352884312682230679.correct : P6352884312682230679.Spec := by
  intro n
  simp only [A017648]

end A017648

/-! ## A017648.P15554053939092732182

`A017644(n)²`
-/

namespace A017648.P15554053939092732182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017644 n ^ 2

end

end A017648.P15554053939092732182

namespace A017648

/-- `A017644(n)²` -/
def P15554053939092732182.Spec : Prop :=
  ∀ n, P15554053939092732182.a n = A017648 n

end A017648

/-! ## A017648.P12651589730106742840

`A017642(n)²²`
-/

namespace A017648.P12651589730106742840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017642 n ^ 2) ^ 2

end

end A017648.P12651589730106742840

namespace A017648

/-- `A017642(n)²²` -/
def P12651589730106742840.Spec : Prop :=
  ∀ n, P12651589730106742840.a n = A017648 n

end A017648

/-! ## A017648.P10528530419901022227

`A017641(n)²²²`
-/

namespace A017648.P10528530419901022227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017641 n ^ 2) ^ 2) ^ 2

end

end A017648.P10528530419901022227

namespace A017648

/-- `A017641(n)²²²` -/
def P10528530419901022227.Spec : Prop :=
  ∀ n, P10528530419901022227.a n = A017648 n

end A017648

/-! ## A017648.P7947699564710736213

`(A017629(n)+1)²²²`
-/

namespace A017648.P7947699564710736213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017629 n + 1) ^ 2) ^ 2) ^ 2

end

end A017648.P7947699564710736213

namespace A017648

/-- `(A017629(n)+1)²²²` -/
def P7947699564710736213.Spec : Prop :=
  ∀ n, P7947699564710736213.a n = A017648 n

end A017648

/-! ## A017648.P9659515156599786283

`(A017617(n)+2)²²²`
-/

namespace A017648.P9659515156599786283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017617 n + 2) ^ 2) ^ 2) ^ 2

end

end A017648.P9659515156599786283

namespace A017648

/-- `(A017617(n)+2)²²²` -/
def P9659515156599786283.Spec : Prop :=
  ∀ n, P9659515156599786283.a n = A017648 n

end A017648

/-! ## A017648.P10274043928284342423

`(1-A017653(n))²²²`
-/

namespace A017648.P10274043928284342423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017653 n) ^ 2) ^ 2) ^ 2

end

end A017648.P10274043928284342423

namespace A017648

/-- `(1-A017653(n))²²²` -/
def P10274043928284342423.Spec : Prop :=
  ∀ n, P10274043928284342423.a n = A017648 n

end A017648

/-! ## A017648.P3458152993600254137

`(2*A016969(n))²²²`
-/

namespace A017648.P3458152993600254137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016969 n) ^ 2) ^ 2) ^ 2

end

end A017648.P3458152993600254137

namespace A017648

/-- `(2*A016969(n))²²²` -/
def P3458152993600254137.Spec : Prop :=
  ∀ n, P3458152993600254137.a n = A017648 n

end A017648

/-! ## A017648.P8754630246881796954

`(A017509(n)+n)²²²`
-/

namespace A017648.P8754630246881796954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017509 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017648.P8754630246881796954

namespace A017648

/-- `(A017509(n)+n)²²²` -/
def P8754630246881796954.Spec : Prop :=
  ∀ n, P8754630246881796954.a n = A017648 n

end A017648

/-! ## A017648.P5133623131127279048

`A017642(n)*A017646(n)`
-/

namespace A017648.P5133623131127279048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017642 n * A017646 n

end

end A017648.P5133623131127279048

namespace A017648

/-- `A017642(n)*A017646(n)` -/
def P5133623131127279048.Spec : Prop :=
  ∀ n, P5133623131127279048.a n = A017648 n

end A017648

/-! ## A017648.P6046525900387955328

`A017643(n)*A017645(n)`
-/

namespace A017648.P6046525900387955328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017643 n * A017645 n

end

end A017648.P6046525900387955328

namespace A017648

/-- `A017643(n)*A017645(n)` -/
def P6046525900387955328.Spec : Prop :=
  ∀ n, P6046525900387955328.a n = A017648 n

end A017648

/-! ## A017648.P6398711744548591628

`A017641(n)*A017641(n)*A017646(n)`
-/

namespace A017648.P6398711744548591628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n * A017641 n * A017646 n

end

end A017648.P6398711744548591628

namespace A017648

/-- `A017641(n)*A017641(n)*A017646(n)` -/
def P6398711744548591628.Spec : Prop :=
  ∀ n, P6398711744548591628.a n = A017648 n

end A017648

/-! ## A017648.P17628597712791751634

`A017642(n)*A017643(n)*A017643(n)`
-/

namespace A017648.P17628597712791751634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017642 n * A017643 n * A017643 n

end

end A017648.P17628597712791751634

namespace A017648

/-- `A017642(n)*A017643(n)*A017643(n)` -/
def P17628597712791751634.Spec : Prop :=
  ∀ n, P17628597712791751634.a n = A017648 n

end A017648

/-! ## A017648.P11848299665130822392

`Δ[A080859(n)]²²²`
-/

namespace A017648.P11848299665130822392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017648.P11848299665130822392

namespace A017648

/-- `Δ[A080859(n)]²²²` -/
def P11848299665130822392.Spec : Prop :=
  ∀ n, P11848299665130822392.a n = A017648 n

end A017648

/-! ## A017648.P15042167163802247733

`Δ[A202804(n)]²²²`
-/

namespace A017648.P15042167163802247733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017648.P15042167163802247733

namespace A017648

/-- `Δ[A202804(n)]²²²` -/
def P15042167163802247733.Spec : Prop :=
  ∀ n, P15042167163802247733.a n = A017648 n

end A017648

/-! ## A017648.P1954823086485544370

`Δ[Δ[A084060(n)]]²²²`
-/

namespace A017648.P1954823086485544370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017648.P1954823086485544370

namespace A017648

/-- `Δ[Δ[A084060(n)]]²²²` -/
def P1954823086485544370.Spec : Prop :=
  ∀ n, P1954823086485544370.a n = A017648 n

end A017648

/-! ## A017648.P3977452493455182103

`Δ[Δ[A015237(n)]]²²²`
-/

namespace A017648.P3977452493455182103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017648.P3977452493455182103

namespace A017648

/-- `Δ[Δ[A015237(n)]]²²²` -/
def P3977452493455182103.Spec : Prop :=
  ∀ n, P3977452493455182103.a n = A017648 n

end A017648

/-! ## A017648.P10064066817398864620

`A016825(A016789(n))²²²`
-/

namespace A017648.P10064066817398864620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016825 (A016789 n).toNat ^ 2) ^ 2) ^ 2

end

end A017648.P10064066817398864620

namespace A017648

/-- `A016825(A016789(n))²²²` -/
def P10064066817398864620.Spec : Prop :=
  ∀ n, P10064066817398864620.a n = A017648 n

end A017648

/-! ## A017648.P11852749489455722118

`A016964(Δ[n²])`
-/

namespace A017648.P11852749489455722118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016964 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017648.P11852749489455722118

namespace A017648

/-- `A016964(Δ[n²])` -/
def P11852749489455722118.Spec : Prop :=
  ∀ n, P11852749489455722118.a n = A017648 n

end A017648

/-! ## A017648.P18391386081477123800

`A016960(Δ[n²])²`
-/

namespace A017648.P18391386081477123800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016960 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017648.P18391386081477123800

namespace A017648

/-- `A016960(Δ[n²])²` -/
def P18391386081477123800.Spec : Prop :=
  ∀ n, P18391386081477123800.a n = A017648 n

end A017648

/-!
# A017649: a(n) = (12*n + 10)^9.

The programs for A017649, the canonical program `A017649.P12866049979460903288` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017649 has offset 0).

The definition of A017649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+10)^9` (program `A017649.P12866049979460903288`, by `A017649.P12866049979460903288.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017649.P12866049979460903288

`(12*n+10)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017649

/-- `(12*n+10)^9` -/
def P12866049979460903288.Spec : Prop :=
  ∀ n, (P12866049979460903288.a n : ℤ) = A017649 n

theorem P12866049979460903288.correct : P12866049979460903288.Spec := by
  intro n
  simp only [A017649]

end A017649

/-! ## A017649.P866046957737621064

`A017643(n)*A017646(n)`
-/

namespace A017649.P866046957737621064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017643 n * A017646 n

end

end A017649.P866046957737621064

namespace A017649

/-- `A017643(n)*A017646(n)` -/
def P866046957737621064.Spec : Prop :=
  ∀ n, P866046957737621064.a n = A017649 n

end A017649

/-! ## A017649.P18391798197423654513

`A017644(n)*A017645(n)`
-/

namespace A017649.P18391798197423654513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017644 n * A017645 n

end

end A017649.P18391798197423654513

namespace A017649

/-- `A017644(n)*A017645(n)` -/
def P18391798197423654513.Spec : Prop :=
  ∀ n, P18391798197423654513.a n = A017649 n

end A017649

/-! ## A017649.P1712086490883534338

`A016965(2*n+1)`
-/

namespace A017649.P1712086490883534338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016965 (2 * n + 1)

end

end A017649.P1712086490883534338

namespace A017649

/-- `A016965(2*n+1)` -/
def P1712086490883534338.Spec : Prop :=
  ∀ n, P1712086490883534338.a n = A017649 n

end A017649

/-! ## A017649.P7955389792641423877

`A016959(2*n+1)*A016962(2*n+1)`
-/

namespace A017649.P7955389792641423877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 (2 * n + 1) * A016962 (2 * n + 1)

end

end A017649.P7955389792641423877

namespace A017649

/-- `A016959(2*n+1)*A016962(2*n+1)` -/
def P7955389792641423877.Spec : Prop :=
  ∀ n, P7955389792641423877.a n = A017649 n

end A017649

/-! ## A017649.P2951952766337719723

`A016833(3*n+2)`
-/

namespace A017649.P2951952766337719723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016833 (3 * n + 2)

end

end A017649.P2951952766337719723

namespace A017649

/-- `A016833(3*n+2)` -/
def P2951952766337719723.Spec : Prop :=
  ∀ n, P2951952766337719723.a n = A017649 n

end A017649

/-! ## A017649.P2515520576638625433

`A016785(A016777(n)+n+2)`
-/

namespace A017649.P2515520576638625433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016785 (A016777 n + (n + 2 : ℤ)).toNat

end

end A017649.P2515520576638625433

namespace A017649

/-- `A016785(A016777(n)+n+2)` -/
def P2515520576638625433.Spec : Prop :=
  ∀ n, P2515520576638625433.a n = A017649 n

end A017649

/-! ## A017649.P17494109932244655234

`A016749(A016945(n)+2)`
-/

namespace A017649.P17494109932244655234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016749 (A016945 n + 2).toNat

end

end A017649.P17494109932244655234

namespace A017649

/-- `A016749(A016945(n)+2)` -/
def P17494109932244655234.Spec : Prop :=
  ∀ n, P17494109932244655234.a n = A017649 n

end A017649

/-! ## A017649.P2941983840819363406

`A001017(A017641(n))`
-/

namespace A017649.P2941983840819363406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017641 n).toNat

end

end A017649.P2941983840819363406

namespace A017649

/-- `A001017(A017641(n))` -/
def P2941983840819363406.Spec : Prop :=
  ∀ n, P2941983840819363406.a n = A017649 n

end A017649

/-!
# A017650: 

The programs for A017650, there is no canonical definition to state claims against.
-/

/-! ## A017650.P9065276050790187815

`A017645(n)²`
-/

namespace A017650.P9065276050790187815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017645 n ^ 2

end

end A017650.P9065276050790187815

/-! ## A017650.P5145999687807723450

`A017642(n)^5`
-/

namespace A017650.P5145999687807723450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017642 n ^ 5

end

end A017650.P5145999687807723450

/-! ## A017650.P4413341071271408854

`((A017497(n)+n+1)^5)²`
-/

namespace A017650.P4413341071271408854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017497 n + (n + 1 : ℤ)) ^ 5) ^ 2

end

end A017650.P4413341071271408854

/-! ## A017650.P6384954031586579903

`A004277(A016969(n))^10`
-/

namespace A017650.P6384954031586579903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A016969 n).toNat ^ 10

end

end A017650.P6384954031586579903

/-! ## A017650.P2392177007949698094

`A008454(A016945(2*n+1)+1)`
-/

namespace A017650.P2392177007949698094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n + 1) + 1).toNat

end

end A017650.P2392177007949698094

/-!
# A017651: 

The programs for A017651, there is no canonical definition to state claims against.
-/

/-! ## A017651.P8191038978346872085

`A017641(n)^11`
-/

namespace A017651.P8191038978346872085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n ^ 11

end

end A017651.P8191038978346872085

/-! ## A017651.P10298819410103759793

`sqrt(A017642(n)^11)`
-/

namespace A017651.P10298819410103759793
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017642 n ^ 11 : ℝ)

end

end A017651.P10298819410103759793

/-! ## A017651.P9394912229610080373

`A005843(A016969(n))^11`
-/

namespace A017651.P9394912229610080373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A016969 n).toNat ^ 11

end

end A017651.P9394912229610080373

/-! ## A017651.P3071559197977192715

`A075884(A017137(n))^11`
-/

namespace A017651.P3071559197977192715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075884 (A017137 n).toNat ^ 11

end

end A017651.P3071559197977192715

/-! ## A017651.P14158963416568908149

`A023443(A017653(n))^11`
-/

namespace A017651.P14158963416568908149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A017653 n).toNat ^ 11

end

end A017651.P14158963416568908149

/-!
# A017652: 

The programs for A017652, there is no canonical definition to state claims against.
-/

/-! ## A017652.P5119198925447206356

`(12*n+10)^12`
-/

namespace A017652.P5119198925447206356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (12 * n + 10) ^ 12

end

end A017652.P5119198925447206356

/-! ## A017652.P5504289869721030990

`A017646(n)²`
-/

namespace A017652.P5504289869721030990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017646 n ^ 2

end

end A017652.P5504289869721030990

/-! ## A017652.P4453322703416126157

`A017643(n)²²`
-/

namespace A017652.P4453322703416126157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017643 n ^ 2) ^ 2

end

end A017652.P4453322703416126157

/-! ## A017652.P18260332549578734541

`(A017642(n)^3)²`
-/

namespace A017652.P18260332549578734541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017642 n ^ 3) ^ 2

end

end A017652.P18260332549578734541

/-! ## A017652.P8884496939396722851

`A000578(A016957(2*n+1))²²`
-/

namespace A017652.P8884496939396722851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016957 (2 * n + 1)).toNat ^ 2) ^ 2

end

end A017652.P8884496939396722851

/-!
# A017653: a(n) = 12*n + 11.

The programs for A017653, the canonical program `A017653.P10378373051193972998` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017653 has offset 0).

The definition of A017653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+11` (program `A017653.P10378373051193972998`, by `A017653.P10378373051193972998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017653.P10378373051193972998

`12*n+11`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017653

/-- `12*n+11` -/
def P10378373051193972998.Spec : Prop :=
  ∀ n, (P10378373051193972998.a n : ℤ) = A017653 n

theorem P10378373051193972998.correct : P10378373051193972998.Spec := by
  intro n
  simp only [A017653]

end A017653

/-!
# A017654: a(n) = (12*n + 11)^2.

The programs for A017654, the canonical program `A017654.P15848109358674397371` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017654 has offset 0).

The definition of A017654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+11)²` (program `A017654.P15848109358674397371`, by `A017654.P15848109358674397371.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017654.P15848109358674397371

`(12*n+11)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017654

/-- `(12*n+11)²` -/
def P15848109358674397371.Spec : Prop :=
  ∀ n, (P15848109358674397371.a n : ℤ) = A017654 n

theorem P15848109358674397371.correct : P15848109358674397371.Spec := by
  intro n
  simp only [A017654]

end A017654

/-! ## A017654.P6270973339742018558

`or(3, 12*n+8)^2`
-/

namespace A017654.P6270973339742018558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (12 * n + 8) ^ 2

end

end A017654.P6270973339742018558

namespace A017654

/-- `or(3, 12*n+8)^2` -/
def P6270973339742018558.Spec : Prop :=
  ∀ n, (P6270973339742018558.a n : ℤ) = A017654 n

end A017654

/-! ## A017654.P14871444293049334437

`record[or(2, 3*xor(3, n))²]`
-/

namespace A017654.P14871444293049334437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * Nat.xor 3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017654.P14871444293049334437

namespace A017654

/-- `record[or(2, 3*xor(3, n))²]` -/
def P14871444293049334437.Spec : Prop :=
  ∀ n, (P14871444293049334437.a n : ℤ) = A017654 n

end A017654

/-! ## A017654.P17984973123807755649

`record[xor(2, 3*xor(3, n))²]`
-/

namespace A017654.P17984973123807755649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (3 * Nat.xor 3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017654.P17984973123807755649

namespace A017654

/-- `record[xor(2, 3*xor(3, n))²]` -/
def P17984973123807755649.Spec : Prop :=
  ∀ n, (P17984973123807755649.a n : ℤ) = A017654 n

end A017654

/-! ## A017654.P1213630601307529954

`4*2*C(6*(n+1), 2)+1`
-/

namespace A017654.P1213630601307529954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * Nat.choose (6 * (n + 1)) 2) + 1

end

end A017654.P1213630601307529954

namespace A017654

/-- `4*2*C(6*(n+1), 2)+1` -/
def P1213630601307529954.Spec : Prop :=
  ∀ n, (P1213630601307529954.a n : ℤ) = A017654 n

end A017654

/-! ## A017654.P1687082340033759528

`sqrt(A017656(n))`
-/

namespace A017654.P1687082340033759528
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017656 n : ℝ)

end

end A017654.P1687082340033759528

namespace A017654

/-- `sqrt(A017656(n))` -/
def P1687082340033759528.Spec : Prop :=
  ∀ n, P1687082340033759528.a n = (A017654 n : ℝ)

end A017654

/-! ## A017654.P1756149679356653538

`sqrt(sqrt(A017660(n)))`
-/

namespace A017654.P1756149679356653538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017660 n : ℝ))

end

end A017654.P1756149679356653538

namespace A017654

/-- `sqrt(sqrt(A017660(n)))` -/
def P1756149679356653538.Spec : Prop :=
  ∀ n, P1756149679356653538.a n = (A017654 n : ℝ)

end A017654

/-! ## A017654.P8539662121989044852

`A305072(n+1)+1`
-/

namespace A017654.P8539662121989044852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305072 (n + 1) + 1

end

end A017654.P8539662121989044852

namespace A017654

/-- `A305072(n+1)+1` -/
def P8539662121989044852.Spec : Prop :=
  ∀ n, P8539662121989044852.a n = A017654 n

end A017654

/-! ## A017654.P13744906227770525724

`A017658(n)^(1/3)`
-/

namespace A017654.P13744906227770525724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017658 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017654.P13744906227770525724

namespace A017654

/-- `A017658(n)^(1/3)` -/
def P13744906227770525724.Spec : Prop :=
  ∀ n, P13744906227770525724.a n = (A017654 n : ℝ)

end A017654

/-! ## A017654.P10497321327332817957

`A017655(n)^(2/3)`
-/

namespace A017654.P10497321327332817957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017655 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017654.P10497321327332817957

namespace A017654

/-- `A017655(n)^(2/3)` -/
def P10497321327332817957.Spec : Prop :=
  ∀ n, P10497321327332817957.a n = (A017654 n : ℝ)

end A017654

/-! ## A017654.P14047526807969902217

`4*A291582(n+1)+1`
-/

namespace A017654.P14047526807969902217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A291582 (n + 1) + 1

end

end A017654.P14047526807969902217

namespace A017654

/-- `4*A291582(n+1)+1` -/
def P14047526807969902217.Spec : Prop :=
  ∀ n, P14047526807969902217.a n = A017654 n

end A017654

/-! ## A017654.P12684482487897323009

`A396288(n+1)²/(n+1)²`
-/

namespace A017654.P12684482487897323009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396288 (n + 1) ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017654.P12684482487897323009

namespace A017654

/-- `A396288(n+1)²/(n+1)²` -/
def P12684482487897323009.Spec : Prop :=
  ∀ n, P12684482487897323009.a n = (A017654 n : ℚ)

end A017654

/-! ## A017654.P9264932157213109932

`A102603(n)+A017642(n)`
-/

namespace A017654.P9264932157213109932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102603 n + A017642 n

end

end A017654.P9264932157213109932

namespace A017654

/-- `A102603(n)+A017642(n)` -/
def P9264932157213109932.Spec : Prop :=
  ∀ n, P9264932157213109932.a n = A017654 n

end A017654

/-! ## A017654.P11616329166894616843

`A017653(n)*A017653(n)`
-/

namespace A017654.P11616329166894616843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n * A017653 n

end

end A017654.P11616329166894616843

namespace A017654

/-- `A017653(n)*A017653(n)` -/
def P11616329166894616843.Spec : Prop :=
  ∀ n, P11616329166894616843.a n = A017654 n

end A017654

/-! ## A017654.P16827686980558051376

`A017655(n)/A017653(n)`
-/

namespace A017654.P16827686980558051376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017655 n : ℚ) / (A017653 n : ℚ)

end

end A017654.P16827686980558051376

namespace A017654

/-- `A017655(n)/A017653(n)` -/
def P16827686980558051376.Spec : Prop :=
  ∀ n, P16827686980558051376.a n = (A017654 n : ℚ)

end A017654

/-! ## A017654.P3329305065559889133

`A017657(n)/A017655(n)`
-/

namespace A017654.P3329305065559889133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017657 n : ℚ) / (A017655 n : ℚ)

end

end A017654.P3329305065559889133

namespace A017654

/-- `A017657(n)/A017655(n)` -/
def P3329305065559889133.Spec : Prop :=
  ∀ n, P3329305065559889133.a n = (A017654 n : ℚ)

end A017654

/-! ## A017654.P11801116641353713920

`A017658(n)/A017656(n)`
-/

namespace A017654.P11801116641353713920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017658 n : ℚ) / (A017656 n : ℚ)

end

end A017654.P11801116641353713920

namespace A017654

/-- `A017658(n)/A017656(n)` -/
def P11801116641353713920.Spec : Prop :=
  ∀ n, P11801116641353713920.a n = (A017654 n : ℚ)

end A017654

/-! ## A017654.P645727604856015456

`A017655(n)²/A017656(n)`
-/

namespace A017654.P645727604856015456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017655 n ^ 2 : ℚ) / (A017656 n : ℚ)

end

end A017654.P645727604856015456

namespace A017654

/-- `A017655(n)²/A017656(n)` -/
def P645727604856015456.Spec : Prop :=
  ∀ n, P645727604856015456.a n = (A017654 n : ℚ)

end A017654

/-! ## A017654.P16775675239290599988

`A158543(n+1)-A348845(n)`
-/

namespace A017654.P16775675239290599988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158543 (n + 1) - A348845 n

end

end A017654.P16775675239290599988

namespace A017654

/-- `A158543(n+1)-A348845(n)` -/
def P16775675239290599988.Spec : Prop :=
  ∀ n, P16775675239290599988.a n = A017654 n

end A017654

/-! ## A017654.P7311238493884983346

`A017658(n)/A017653(n)²²`
-/

namespace A017654.P7311238493884983346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017658 n : ℚ) / ((A017653 n ^ 2) ^ 2 : ℚ)

end

end A017654.P7311238493884983346

namespace A017654

/-- `A017658(n)/A017653(n)²²` -/
def P7311238493884983346.Spec : Prop :=
  ∀ n, P7311238493884983346.a n = (A017654 n : ℚ)

end A017654

/-!
# A017655: a(n) = (12*n + 11)^3.

The programs for A017655, the canonical program `A017655.P17498876050136259958` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017655 has offset 0).

The definition of A017655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+11)^3` (program `A017655.P17498876050136259958`, by `A017655.P17498876050136259958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017655.P17498876050136259958

`(12*n+11)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017655

/-- `(12*n+11)^3` -/
def P17498876050136259958.Spec : Prop :=
  ∀ n, (P17498876050136259958.a n : ℤ) = A017655 n

theorem P17498876050136259958.correct : P17498876050136259958.Spec := by
  intro n
  simp only [A017655]

end A017655

/-! ## A017655.P8204724688338839710

`record[or(2, 3*xor(3, n))^3]`
-/

namespace A017655.P8204724688338839710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * Nat.xor 3 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017655.P8204724688338839710

namespace A017655

/-- `record[or(2, 3*xor(3, n))^3]` -/
def P8204724688338839710.Spec : Prop :=
  ∀ n, (P8204724688338839710.a n : ℤ) = A017655 n

end A017655

/-! ## A017655.P11360330735635408435

`(or(1, 12*n)+10)*(or(1, 12*n)+10)²`
-/

namespace A017655.P11360330735635408435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n) + 10) * (Nat.lor 1 (12 * n) + 10) ^ 2

end

end A017655.P11360330735635408435

namespace A017655

/-- `(or(1, 12*n)+10)*(or(1, 12*n)+10)²` -/
def P11360330735635408435.Spec : Prop :=
  ∀ n, (P11360330735635408435.a n : ℤ) = A017655 n

end A017655

/-! ## A017655.P16792422066193492962

`sqrt(A017658(n))`
-/

namespace A017655.P16792422066193492962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017658 n : ℝ)

end

end A017655.P16792422066193492962

namespace A017655

/-- `sqrt(A017658(n))` -/
def P16792422066193492962.Spec : Prop :=
  ∀ n, P16792422066193492962.a n = (A017655 n : ℝ)

end A017655

/-! ## A017655.P17675391214526339180

`sqrt(A017654(n)^3)`
-/

namespace A017655.P17675391214526339180
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017654 n ^ 3 : ℝ)

end

end A017655.P17675391214526339180

namespace A017655

/-- `sqrt(A017654(n)^3)` -/
def P17675391214526339180.Spec : Prop :=
  ∀ n, P17675391214526339180.a n = (A017655 n : ℝ)

end A017655

/-! ## A017655.P8173430931161523173

`A017653(n)*A017654(n)`
-/

namespace A017655.P8173430931161523173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n * A017654 n

end

end A017655.P8173430931161523173

namespace A017655

/-- `A017653(n)*A017654(n)` -/
def P8173430931161523173.Spec : Prop :=
  ∀ n, P8173430931161523173.a n = A017655 n

end A017655

/-! ## A017655.P15457795256296015411

`A017656(n)/A017653(n)`
-/

namespace A017655.P15457795256296015411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017656 n : ℚ) / (A017653 n : ℚ)

end

end A017655.P15457795256296015411

namespace A017655

/-- `A017656(n)/A017653(n)` -/
def P15457795256296015411.Spec : Prop :=
  ∀ n, P15457795256296015411.a n = (A017655 n : ℚ)

end A017655

/-! ## A017655.P10064440130247659791

`A017657(n)/A017654(n)`
-/

namespace A017655.P10064440130247659791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017657 n : ℚ) / (A017654 n : ℚ)

end

end A017655.P10064440130247659791

namespace A017655

/-- `A017657(n)/A017654(n)` -/
def P10064440130247659791.Spec : Prop :=
  ∀ n, P10064440130247659791.a n = (A017655 n : ℚ)

end A017655

/-! ## A017655.P9540842587505656733

`A017657(n)/A017653(n)²`
-/

namespace A017655.P9540842587505656733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017657 n : ℚ) / (A017653 n ^ 2 : ℚ)

end

end A017655.P9540842587505656733

namespace A017655

/-- `A017657(n)/A017653(n)²` -/
def P9540842587505656733.Spec : Prop :=
  ∀ n, P9540842587505656733.a n = (A017655 n : ℚ)

end A017655

/-! ## A017655.P17193992595628493708

`A017659(n)/A017653(n)²²`
-/

namespace A017655.P17193992595628493708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017659 n : ℚ) / ((A017653 n ^ 2) ^ 2 : ℚ)

end

end A017655.P17193992595628493708

namespace A017655

/-- `A017659(n)/A017653(n)²²` -/
def P17193992595628493708.Spec : Prop :=
  ∀ n, P17193992595628493708.a n = (A017655 n : ℚ)

end A017655

/-! ## A017655.P306700812634318782

`Δ[A033570(n)]²*Δ[A033570(n)]`
-/

namespace A017655.P306700812634318782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017655.P306700812634318782

namespace A017655

/-- `Δ[A033570(n)]²*Δ[A033570(n)]` -/
def P306700812634318782.Spec : Prop :=
  ∀ n, P306700812634318782.a n = A017655 n

end A017655

/-! ## A017655.P5960250066852448053

`A017658(n)/(A017653(n)²*A017653(n))`
-/

namespace A017655.P5960250066852448053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017658 n : ℚ) / (A017653 n ^ 2 * A017653 n : ℚ)

end

end A017655.P5960250066852448053

namespace A017655

/-- `A017658(n)/(A017653(n)²*A017653(n))` -/
def P5960250066852448053.Spec : Prop :=
  ∀ n, P5960250066852448053.a n = (A017655 n : ℚ)

end A017655

/-! ## A017655.P17966266224545441780

`or(1, (Δ[12*∑[n]]-1)^3)`
-/

namespace A017655.P17966266224545441780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1) ^ 3)

end

end A017655.P17966266224545441780

namespace A017655

/-- `or(1, (Δ[12*∑[n]]-1)^3)` -/
def P17966266224545441780.Spec : Prop :=
  ∀ n, P17966266224545441780.a n = A017655 n

end A017655

/-! ## A017655.P1368646026488230200

`Δ[A211014(n)]²*Δ[A211014(n)]`
-/

namespace A017655.P1368646026488230200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017655.P1368646026488230200

namespace A017655

/-- `Δ[A211014(n)]²*Δ[A211014(n)]` -/
def P1368646026488230200.Spec : Prop :=
  ∀ n, P1368646026488230200.a n = A017655 n

end A017655

/-! ## A017655.P8138386408495090187

`A016971(Δ[n²])`
-/

namespace A017655.P8138386408495090187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017655.P8138386408495090187

namespace A017655

/-- `A016971(Δ[n²])` -/
def P8138386408495090187.Spec : Prop :=
  ∀ n, P8138386408495090187.a n = A017655 n

end A017655

/-! ## A017655.P1715454691110656760

`sqrt(A016974(2*n+1))`
-/

namespace A017655.P1715454691110656760
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016974 (2 * n + 1) : ℝ)

end

end A017655.P1715454691110656760

namespace A017655

/-- `sqrt(A016974(2*n+1))` -/
def P1715454691110656760.Spec : Prop :=
  ∀ n, P1715454691110656760.a n = (A017655 n : ℝ)

end A017655

/-! ## A017655.P7772428167975354663

`A017643(2*n+1)/8`
-/

namespace A017655.P7772428167975354663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017643 (2 * n + 1) : ℚ) / 8

end

end A017655.P7772428167975354663

namespace A017655

/-- `A017643(2*n+1)/8` -/
def P7772428167975354663.Spec : Prop :=
  ∀ n, P7772428167975354663.a n = (A017655 n : ℚ)

end A017655

/-! ## A017655.P14635435958704360275

`A016972(2*n+1)/(12*n+11)`
-/

namespace A017655.P14635435958704360275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016972 (2 * n + 1) : ℚ) / (12 * n + 11 : ℚ)

end

end A017655.P14635435958704360275

namespace A017655

/-- `A016972(2*n+1)/(12*n+11)` -/
def P14635435958704360275.Spec : Prop :=
  ∀ n, P14635435958704360275.a n = (A017655 n : ℚ)

end A017655

/-! ## A017655.P4252803341025153370

`A016973(2*n+1)/(12*n+11)²`
-/

namespace A017655.P4252803341025153370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016973 (2 * n + 1) : ℚ) / ((12 * n + 11) ^ 2 : ℚ)

end

end A017655.P4252803341025153370

namespace A017655

/-- `A016973(2*n+1)/(12*n+11)²` -/
def P4252803341025153370.Spec : Prop :=
  ∀ n, P4252803341025153370.a n = (A017655 n : ℚ)

end A017655

/-! ## A017655.P16244028070117785362

`A016969(2*n+1)*A016970(2*n+1)`
-/

namespace A017655.P16244028070117785362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (2 * n + 1) * A016970 (2 * n + 1)

end

end A017655.P16244028070117785362

namespace A017655

/-- `A016969(2*n+1)*A016970(2*n+1)` -/
def P16244028070117785362.Spec : Prop :=
  ∀ n, P16244028070117785362.a n = A017655 n

end A017655

/-!
# A017656: a(n) = (12*n + 11)^4.

The programs for A017656, the canonical program `A017656.P18381239513307268979` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017656 has offset 0).

The definition of A017656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+11)^4` (program `A017656.P18381239513307268979`, by `A017656.P18381239513307268979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017656.P18381239513307268979

`(12*n+11)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017656

/-- `(12*n+11)^4` -/
def P18381239513307268979.Spec : Prop :=
  ∀ n, (P18381239513307268979.a n : ℤ) = A017656 n

theorem P18381239513307268979.correct : P18381239513307268979.Spec := by
  intro n
  simp only [A017656]

end A017656

/-! ## A017656.P17688701661512072813

`(or(1, 12*n)+10)²²`
-/

namespace A017656.P17688701661512072813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (12 * n) + 10) ^ 2) ^ 2

end

end A017656.P17688701661512072813

namespace A017656

/-- `(or(1, 12*n)+10)²²` -/
def P17688701661512072813.Spec : Prop :=
  ∀ n, (P17688701661512072813.a n : ℤ) = A017656 n

end A017656

/-! ## A017656.P2323905192253657066

`(xor(3, 12*n)+8)²²`
-/

namespace A017656.P2323905192253657066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 (12 * n) + 8) ^ 2) ^ 2

end

end A017656.P2323905192253657066

namespace A017656

/-- `(xor(3, 12*n)+8)²²` -/
def P2323905192253657066.Spec : Prop :=
  ∀ n, (P2323905192253657066.a n : ℤ) = A017656 n

end A017656

/-! ## A017656.P17459709673875514311

`record[or(2, 3*xor(3, n))²²]`
-/

namespace A017656.P17459709673875514311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * Nat.xor 3 n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017656.P17459709673875514311

namespace A017656

/-- `record[or(2, 3*xor(3, n))²²]` -/
def P17459709673875514311.Spec : Prop :=
  ∀ n, (P17459709673875514311.a n : ℤ) = A017656 n

end A017656

/-! ## A017656.P4987407960495053059

`record[xor(2, 3*xor(3, n))²²]`
-/

namespace A017656.P4987407960495053059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (3 * Nat.xor 3 n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017656.P4987407960495053059

namespace A017656

/-- `record[xor(2, 3*xor(3, n))²²]` -/
def P4987407960495053059.Spec : Prop :=
  ∀ n, (P4987407960495053059.a n : ℤ) = A017656 n

end A017656

/-! ## A017656.P5495712143655074393

`Δ[lcm(2*n+1, 2*n+1+n)]²²`
-/

namespace A017656.P5495712143655074393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017656.P5495712143655074393

namespace A017656

/-- `Δ[lcm(2*n+1, 2*n+1+n)]²²` -/
def P5495712143655074393.Spec : Prop :=
  ∀ n, P5495712143655074393.a n = A017656 n

end A017656

/-! ## A017656.P14296845109221752531

`Δ[C(2*n+1, 2)+(2*n+1)²]²²`
-/

namespace A017656.P14296845109221752531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2 + (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017656.P14296845109221752531

namespace A017656

/-- `Δ[C(2*n+1, 2)+(2*n+1)²]²²` -/
def P14296845109221752531.Spec : Prop :=
  ∀ n, P14296845109221752531.a n = A017656 n

end A017656

/-! ## A017656.P18354440416610326536

`A017654(n)²`
-/

namespace A017656.P18354440416610326536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n ^ 2

end

end A017656.P18354440416610326536

namespace A017656

/-- `A017654(n)²` -/
def P18354440416610326536.Spec : Prop :=
  ∀ n, P18354440416610326536.a n = A017656 n

end A017656

/-! ## A017656.P21165916199527453

`sqrt(A017660(n))`
-/

namespace A017656.P21165916199527453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017660 n : ℝ)

end

end A017656.P21165916199527453

namespace A017656

/-- `sqrt(A017660(n))` -/
def P21165916199527453.Spec : Prop :=
  ∀ n, P21165916199527453.a n = (A017656 n : ℝ)

end A017656

/-! ## A017656.P9430633474330522224

`A017653(n)²²`
-/

namespace A017656.P9430633474330522224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017653 n ^ 2) ^ 2

end

end A017656.P9430633474330522224

namespace A017656

/-- `A017653(n)²²` -/
def P9430633474330522224.Spec : Prop :=
  ∀ n, P9430633474330522224.a n = A017656 n

end A017656

/-! ## A017656.P13352909033794177929

`Δ[A033570(n)]²²`
-/

namespace A017656.P13352909033794177929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017656.P13352909033794177929

namespace A017656

/-- `Δ[A033570(n)]²²` -/
def P13352909033794177929.Spec : Prop :=
  ∀ n, P13352909033794177929.a n = A017656 n

end A017656

/-! ## A017656.P11868004503553605075

`(A017641(n)+1)²²`
-/

namespace A017656.P11868004503553605075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017641 n + 1) ^ 2) ^ 2

end

end A017656.P11868004503553605075

namespace A017656

/-- `(A017641(n)+1)²²` -/
def P11868004503553605075.Spec : Prop :=
  ∀ n, P11868004503553605075.a n = A017656 n

end A017656

/-! ## A017656.P9422808246253396748

`(A017629(n)+2)²²`
-/

namespace A017656.P9422808246253396748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017629 n + 2) ^ 2) ^ 2

end

end A017656.P9422808246253396748

namespace A017656

/-- `(A017629(n)+2)²²` -/
def P9422808246253396748.Spec : Prop :=
  ∀ n, P9422808246253396748.a n = A017656 n

end A017656

/-! ## A017656.P16909088088778996670

`(A017617(n)+3)²²`
-/

namespace A017656.P16909088088778996670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017617 n + 3) ^ 2) ^ 2

end

end A017656.P16909088088778996670

namespace A017656

/-- `(A017617(n)+3)²²` -/
def P16909088088778996670.Spec : Prop :=
  ∀ n, P16909088088778996670.a n = A017656 n

end A017656

/-! ## A017656.P3207595868896958045

`(n-A269100(n))²²`
-/

namespace A017656.P3207595868896958045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A269100 n) ^ 2) ^ 2

end

end A017656.P3207595868896958045

namespace A017656

/-- `(n-A269100(n))²²` -/
def P3207595868896958045.Spec : Prop :=
  ∀ n, P3207595868896958045.a n = A017656 n

end A017656

/-! ## A017656.P9362702000133493920

`(A305072(n+1)+1)²`
-/

namespace A017656.P9362702000133493920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A305072 (n + 1) + 1) ^ 2

end

end A017656.P9362702000133493920

namespace A017656

/-- `(A305072(n+1)+1)²` -/
def P9362702000133493920.Spec : Prop :=
  ∀ n, P9362702000133493920.a n = A017656 n

end A017656

/-! ## A017656.P732101705443612022

`(sqrt(A017642(n))+1)²²`
-/

namespace A017656.P732101705443612022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017642 n : ℝ) + 1) ^ 2) ^ 2

end

end A017656.P732101705443612022

namespace A017656

/-- `(sqrt(A017642(n))+1)²²` -/
def P732101705443612022.Spec : Prop :=
  ∀ n, P732101705443612022.a n = (A017656 n : ℝ)

end A017656

/-! ## A017656.P17594551793938553316

`(sqrt(A017630(n))+2)²²`
-/

namespace A017656.P17594551793938553316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017630 n : ℝ) + 2) ^ 2) ^ 2

end

end A017656.P17594551793938553316

namespace A017656

/-- `(sqrt(A017630(n))+2)²²` -/
def P17594551793938553316.Spec : Prop :=
  ∀ n, P17594551793938553316.a n = (A017656 n : ℝ)

end A017656

/-! ## A017656.P17374838544753707693

`(Δ[A195319(n)]+2)²²`
-/

namespace A017656.P17374838544753707693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n + 2) ^ 2) ^ 2

end

end A017656.P17374838544753707693

namespace A017656

/-- `(Δ[A195319(n)]+2)²²` -/
def P17374838544753707693.Spec : Prop :=
  ∀ n, P17374838544753707693.a n = A017656 n

end A017656

/-! ## A017656.P10132627787833338061

`(1-A008594(n+1))²²`
-/

namespace A017656.P10132627787833338061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A008594 (n + 1)) ^ 2) ^ 2

end

end A017656.P10132627787833338061

namespace A017656

/-- `(1-A008594(n+1))²²` -/
def P10132627787833338061.Spec : Prop :=
  ∀ n, P10132627787833338061.a n = A017656 n

end A017656

/-!
# A017657: a(n) = (12*n + 11)^5.

The programs for A017657, the canonical program `A017657.P3020622578637594929` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017657 has offset 0).

The definition of A017657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+11)^5` (program `A017657.P3020622578637594929`, by `A017657.P3020622578637594929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017657.P3020622578637594929

`(12*n+11)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017657

/-- `(12*n+11)^5` -/
def P3020622578637594929.Spec : Prop :=
  ∀ n, (P3020622578637594929.a n : ℤ) = A017657 n

theorem P3020622578637594929.correct : P3020622578637594929.Spec := by
  intro n
  simp only [A017657]

end A017657

/-! ## A017657.P14628622599733653868

`record[or(2, 3*xor(3, n))^5]`
-/

namespace A017657.P14628622599733653868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * Nat.xor 3 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017657.P14628622599733653868

namespace A017657

/-- `record[or(2, 3*xor(3, n))^5]` -/
def P14628622599733653868.Spec : Prop :=
  ∀ n, (P14628622599733653868.a n : ℤ) = A017657 n

end A017657

/-! ## A017657.P5286663793029334615

`abs((A017509(n)+1+n)^5-1)+1`
-/

namespace A017657.P5286663793029334615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A017509 n + 1 + (n : ℤ)) ^ 5 - 1| + 1

end

end A017657.P5286663793029334615

namespace A017657

/-- `abs((A017509(n)+1+n)^5-1)+1` -/
def P5286663793029334615.Spec : Prop :=
  ∀ n, P5286663793029334615.a n = A017657 n

end A017657

/-! ## A017657.P17604106145858578838

`A017653(n)*A017656(n)`
-/

namespace A017657.P17604106145858578838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n * A017656 n

end

end A017657.P17604106145858578838

namespace A017657

/-- `A017653(n)*A017656(n)` -/
def P17604106145858578838.Spec : Prop :=
  ∀ n, P17604106145858578838.a n = A017657 n

end A017657

/-! ## A017657.P17733049245457488558

`A017654(n)*A017655(n)`
-/

namespace A017657.P17733049245457488558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n * A017655 n

end

end A017657.P17733049245457488558

namespace A017657

/-- `A017654(n)*A017655(n)` -/
def P17733049245457488558.Spec : Prop :=
  ∀ n, P17733049245457488558.a n = A017657 n

end A017657

/-! ## A017657.P12552040652887089404

`A017658(n)/A017653(n)`
-/

namespace A017657.P12552040652887089404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017658 n : ℚ) / (A017653 n : ℚ)

end

end A017657.P12552040652887089404

namespace A017657

/-- `A017658(n)/A017653(n)` -/
def P12552040652887089404.Spec : Prop :=
  ∀ n, P12552040652887089404.a n = (A017657 n : ℚ)

end A017657

/-! ## A017657.P10814125682111949241

`A017653(n)²*A017655(n)`
-/

namespace A017657.P10814125682111949241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n ^ 2 * A017655 n

end

end A017657.P10814125682111949241

namespace A017657

/-- `A017653(n)²*A017655(n)` -/
def P10814125682111949241.Spec : Prop :=
  ∀ n, P10814125682111949241.a n = A017657 n

end A017657

/-! ## A017657.P10631156448998067431

`A017654(n)²*A017653(n)`
-/

namespace A017657.P10631156448998067431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n ^ 2 * A017653 n

end

end A017657.P10631156448998067431

namespace A017657

/-- `A017654(n)²*A017653(n)` -/
def P10631156448998067431.Spec : Prop :=
  ∀ n, P10631156448998067431.a n = A017657 n

end A017657

/-! ## A017657.P615322741203039001

`A017656(n)²/A017655(n)`
-/

namespace A017657.P615322741203039001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017656 n ^ 2 : ℚ) / (A017655 n : ℚ)

end

end A017657.P615322741203039001

namespace A017657

/-- `A017656(n)²/A017655(n)` -/
def P615322741203039001.Spec : Prop :=
  ∀ n, P615322741203039001.a n = (A017657 n : ℚ)

end A017657

/-! ## A017657.P89094368673926147

`A017659(n)/A017653(n)²`
-/

namespace A017657.P89094368673926147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017659 n : ℚ) / (A017653 n ^ 2 : ℚ)

end

end A017657.P89094368673926147

namespace A017657

/-- `A017659(n)/A017653(n)²` -/
def P89094368673926147.Spec : Prop :=
  ∀ n, P89094368673926147.a n = (A017657 n : ℚ)

end A017657

/-! ## A017657.P5939511107268369492

`A016973(Δ[n²])`
-/

namespace A017657.P5939511107268369492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017657.P5939511107268369492

namespace A017657

/-- `A016973(Δ[n²])` -/
def P5939511107268369492.Spec : Prop :=
  ∀ n, P5939511107268369492.a n = A017657 n

end A017657

/-! ## A017657.P16945838931820522023

`(12*n+11)*A016972(2*n+1)`
-/

namespace A017657.P16945838931820522023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 11 : ℤ) * A016972 (2 * n + 1)

end

end A017657.P16945838931820522023

namespace A017657

/-- `(12*n+11)*A016972(2*n+1)` -/
def P16945838931820522023.Spec : Prop :=
  ∀ n, P16945838931820522023.a n = A017657 n

end A017657

/-! ## A017657.P9173983863262238299

`A016974(2*n+1)/(12*n+11)`
-/

namespace A017657.P9173983863262238299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016974 (2 * n + 1) : ℚ) / (12 * n + 11 : ℚ)

end

end A017657.P9173983863262238299

namespace A017657

/-- `A016974(2*n+1)/(12*n+11)` -/
def P9173983863262238299.Spec : Prop :=
  ∀ n, P9173983863262238299.a n = (A017657 n : ℚ)

end A017657

/-! ## A017657.P6127245756625793268

`(12*n+11)²*A016971(2*n+1)`
-/

namespace A017657.P6127245756625793268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 11) ^ 2 : ℤ) * A016971 (2 * n + 1)

end

end A017657.P6127245756625793268

namespace A017657

/-- `(12*n+11)²*A016971(2*n+1)` -/
def P6127245756625793268.Spec : Prop :=
  ∀ n, P6127245756625793268.a n = A017657 n

end A017657

/-! ## A017657.P3506721039487730098

`A016975(2*n+1)/(12*n+11)²`
-/

namespace A017657.P3506721039487730098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016975 (2 * n + 1) : ℚ) / ((12 * n + 11) ^ 2 : ℚ)

end

end A017657.P3506721039487730098

namespace A017657

/-- `A016975(2*n+1)/(12*n+11)²` -/
def P3506721039487730098.Spec : Prop :=
  ∀ n, P3506721039487730098.a n = (A017657 n : ℚ)

end A017657

/-! ## A017657.P15089862379163787977

`A016976(2*n+1)/A016971(2*n+1)`
-/

namespace A017657.P15089862379163787977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016976 (2 * n + 1) : ℚ) / (A016971 (2 * n + 1) : ℚ)

end

end A017657.P15089862379163787977

namespace A017657

/-- `A016976(2*n+1)/A016971(2*n+1)` -/
def P15089862379163787977.Spec : Prop :=
  ∀ n, P15089862379163787977.a n = (A017657 n : ℚ)

end A017657

/-! ## A017657.P1309292804115184016

`gcd(A016974(2*n+1), A017645(2*n+1))`
-/

namespace A017657.P1309292804115184016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016974 (2 * n + 1)) (A017645 (2 * n + 1))

end

end A017657.P1309292804115184016

namespace A017657

/-- `gcd(A016974(2*n+1), A017645(2*n+1))` -/
def P1309292804115184016.Spec : Prop :=
  ∀ n, (P1309292804115184016.a n : ℤ) = A017657 n

end A017657

/-! ## A017657.P15356008637156574365

`A016970(2*n+1)²*A016969(2*n+1)`
-/

namespace A017657.P15356008637156574365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 (2 * n + 1) ^ 2 * A016969 (2 * n + 1)

end

end A017657.P15356008637156574365

namespace A017657

/-- `A016970(2*n+1)²*A016969(2*n+1)` -/
def P15356008637156574365.Spec : Prop :=
  ∀ n, P15356008637156574365.a n = A017657 n

end A017657

/-! ## A017657.P18444854933202012484

`A091998(2*(n+1))²²*A091998(2*(n+1))`
-/

namespace A017657.P18444854933202012484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091998 (2 * (n + 1)) ^ 2) ^ 2 * A091998 (2 * (n + 1))

end

end A017657.P18444854933202012484

namespace A017657

/-- `A091998(2*(n+1))²²*A091998(2*(n+1))` -/
def P18444854933202012484.Spec : Prop :=
  ∀ n, P18444854933202012484.a n = A017657 n

end A017657

/-! ## A017657.P5420590435405474748

`A168489(2*(n+1))²²*A168489(2*(n+1))`
-/

namespace A017657.P5420590435405474748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168489 (2 * (n + 1)) ^ 2) ^ 2 * A168489 (2 * (n + 1))

end

end A017657.P5420590435405474748

namespace A017657

/-- `A168489(2*(n+1))²²*A168489(2*(n+1))` -/
def P5420590435405474748.Spec : Prop :=
  ∀ n, P5420590435405474748.a n = A017657 n

end A017657

/-!
# A017658: a(n) = (12*n + 11)^6.

The programs for A017658, the canonical program `A017658.P14252425101977125742` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017658 has offset 0).

The definition of A017658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+11)^6` (program `A017658.P14252425101977125742`, by `A017658.P14252425101977125742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017658.P14252425101977125742

`(12*n+11)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017658

/-- `(12*n+11)^6` -/
def P14252425101977125742.Spec : Prop :=
  ∀ n, (P14252425101977125742.a n : ℤ) = A017658 n

theorem P14252425101977125742.correct : P14252425101977125742.Spec := by
  intro n
  simp only [A017658]

end A017658

/-! ## A017658.P6839535518833800204

`A017655(n)²`
-/

namespace A017658.P6839535518833800204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017655 n ^ 2

end

end A017658.P6839535518833800204

namespace A017658

/-- `A017655(n)²` -/
def P6839535518833800204.Spec : Prop :=
  ∀ n, P6839535518833800204.a n = A017658 n

end A017658

/-! ## A017658.P9893155679178585909

`(A017653(n)^3)²`
-/

namespace A017658.P9893155679178585909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017653 n ^ 3) ^ 2

end

end A017658.P9893155679178585909

namespace A017658

/-- `(A017653(n)^3)²` -/
def P9893155679178585909.Spec : Prop :=
  ∀ n, P9893155679178585909.a n = A017658 n

end A017658

/-! ## A017658.P5902074325487503345

`(Δ[A033570(n)]^3)²`
-/

namespace A017658.P5902074325487503345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017658.P5902074325487503345

namespace A017658

/-- `(Δ[A033570(n)]^3)²` -/
def P5902074325487503345.Spec : Prop :=
  ∀ n, P5902074325487503345.a n = A017658 n

end A017658

/-! ## A017658.P1961254387352122931

`A017653(n)*A017657(n)`
-/

namespace A017658.P1961254387352122931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n * A017657 n

end

end A017658.P1961254387352122931

namespace A017658

/-- `A017653(n)*A017657(n)` -/
def P1961254387352122931.Spec : Prop :=
  ∀ n, P1961254387352122931.a n = A017658 n

end A017658

/-! ## A017658.P12454604068784680650

`A017654(n)*A017656(n)`
-/

namespace A017658.P12454604068784680650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n * A017656 n

end

end A017658.P12454604068784680650

namespace A017658

/-- `A017654(n)*A017656(n)` -/
def P12454604068784680650.Spec : Prop :=
  ∀ n, P12454604068784680650.a n = A017658 n

end A017658

/-! ## A017658.P17994315783243380415

`A017659(n)/A017653(n)`
-/

namespace A017658.P17994315783243380415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017659 n : ℚ) / (A017653 n : ℚ)

end

end A017658.P17994315783243380415

namespace A017658

/-- `A017659(n)/A017653(n)` -/
def P17994315783243380415.Spec : Prop :=
  ∀ n, P17994315783243380415.a n = (A017658 n : ℚ)

end A017658

/-! ## A017658.P17456266755097404445

`(A017653(n)*A017654(n))²`
-/

namespace A017658.P17456266755097404445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017653 n * A017654 n) ^ 2

end

end A017658.P17456266755097404445

namespace A017658

/-- `(A017653(n)*A017654(n))²` -/
def P17456266755097404445.Spec : Prop :=
  ∀ n, P17456266755097404445.a n = A017658 n

end A017658

/-! ## A017658.P9828162666721053581

`A017653(n)²*A017656(n)`
-/

namespace A017658.P9828162666721053581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n ^ 2 * A017656 n

end

end A017658.P9828162666721053581

namespace A017658

/-- `A017653(n)²*A017656(n)` -/
def P9828162666721053581.Spec : Prop :=
  ∀ n, P9828162666721053581.a n = A017658 n

end A017658

/-! ## A017658.P12894946815054919764

`(A017657(n)/A017654(n))²`
-/

namespace A017658.P12894946815054919764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017657 n : ℚ) / (A017654 n : ℚ)) ^ 2

end

end A017658.P12894946815054919764

namespace A017658

/-- `(A017657(n)/A017654(n))²` -/
def P12894946815054919764.Spec : Prop :=
  ∀ n, P12894946815054919764.a n = (A017658 n : ℚ)

end A017658

/-! ## A017658.P496558830162761167

`A017660(n)/sqrt(sqrt(A017660(n)))`
-/

namespace A017658.P496558830162761167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017660 n : ℝ) / Real.sqrt (Real.sqrt (A017660 n : ℝ))

end

end A017658.P496558830162761167

namespace A017658

/-- `A017660(n)/sqrt(sqrt(A017660(n)))` -/
def P496558830162761167.Spec : Prop :=
  ∀ n, P496558830162761167.a n = (A017658 n : ℝ)

end A017658

/-! ## A017658.P1906827422192505968

`A017533(n)/A001538(n)*A017659(n)`
-/

namespace A017658.P1906827422192505968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017533 n : ℚ) / (A001538 n : ℚ) * (A017659 n : ℚ)

end

end A017658.P1906827422192505968

namespace A017658

/-- `A017533(n)/A001538(n)*A017659(n)` -/
def P1906827422192505968.Spec : Prop :=
  ∀ n, P1906827422192505968.a n = (A017658 n : ℚ)

end A017658

/-! ## A017658.P3444412572304403861

`(Δ[A211014(n)]^3)²`
-/

namespace A017658.P3444412572304403861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017658.P3444412572304403861

namespace A017658

/-- `(Δ[A211014(n)]^3)²` -/
def P3444412572304403861.Spec : Prop :=
  ∀ n, P3444412572304403861.a n = A017658 n

end A017658

/-! ## A017658.P12159986039250086635

`A016974(Δ[n²])`
-/

namespace A017658.P12159986039250086635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016974 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017658.P12159986039250086635

namespace A017658

/-- `A016974(Δ[n²])` -/
def P12159986039250086635.Spec : Prop :=
  ∀ n, P12159986039250086635.a n = A017658 n

end A017658

/-! ## A017658.P1778574862799700551

`A016971(Δ[n²])²`
-/

namespace A017658.P1778574862799700551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017658.P1778574862799700551

namespace A017658

/-- `A016971(Δ[n²])²` -/
def P1778574862799700551.Spec : Prop :=
  ∀ n, P1778574862799700551.a n = A017658 n

end A017658

/-! ## A017658.P9513423076230452958

`(12*n+11)*A016973(2*n+1)`
-/

namespace A017658.P9513423076230452958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 11 : ℤ) * A016973 (2 * n + 1)

end

end A017658.P9513423076230452958

namespace A017658

/-- `(12*n+11)*A016973(2*n+1)` -/
def P9513423076230452958.Spec : Prop :=
  ∀ n, P9513423076230452958.a n = A017658 n

end A017658

/-! ## A017658.P14162404949406553206

`A016975(2*n+1)/(12*n+11)`
-/

namespace A017658.P14162404949406553206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016975 (2 * n + 1) : ℚ) / (12 * n + 11 : ℚ)

end

end A017658.P14162404949406553206

namespace A017658

/-- `A016975(2*n+1)/(12*n+11)` -/
def P14162404949406553206.Spec : Prop :=
  ∀ n, P14162404949406553206.a n = (A017658 n : ℚ)

end A017658

/-! ## A017658.P6480548155708218340

`A016972(2*n+1)*(12*n+11)²`
-/

namespace A017658.P6480548155708218340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016972 (2 * n + 1) * ((12 * n + 11) ^ 2 : ℤ)

end

end A017658.P6480548155708218340

namespace A017658

/-- `A016972(2*n+1)*(12*n+11)²` -/
def P6480548155708218340.Spec : Prop :=
  ∀ n, P6480548155708218340.a n = A017658 n

end A017658

/-! ## A017658.P14538202489603567369

`A016976(2*n+1)/(12*n+11)²`
-/

namespace A017658.P14538202489603567369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016976 (2 * n + 1) : ℚ) / ((12 * n + 11) ^ 2 : ℚ)

end

end A017658.P14538202489603567369

namespace A017658

/-- `A016976(2*n+1)/(12*n+11)²` -/
def P14538202489603567369.Spec : Prop :=
  ∀ n, P14538202489603567369.a n = (A017658 n : ℚ)

end A017658

/-! ## A017658.P2984178824178197307

`A017659(n)/A016969(2*n+1)`
-/

namespace A017658.P2984178824178197307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017659 n : ℚ) / (A016969 (2 * n + 1) : ℚ)

end

end A017658.P2984178824178197307

namespace A017658

/-- `A017659(n)/A016969(2*n+1)` -/
def P2984178824178197307.Spec : Prop :=
  ∀ n, P2984178824178197307.a n = (A017658 n : ℚ)

end A017658

/-!
# A017659: a(n) = (12*n + 11)^7.

The programs for A017659, the canonical program `A017659.P888766249931893130` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017659 has offset 0).

The definition of A017659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+11)^7` (program `A017659.P888766249931893130`, by `A017659.P888766249931893130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017659.P888766249931893130

`(12*n+11)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017659

/-- `(12*n+11)^7` -/
def P888766249931893130.Spec : Prop :=
  ∀ n, (P888766249931893130.a n : ℤ) = A017659 n

theorem P888766249931893130.correct : P888766249931893130.Spec := by
  intro n
  simp only [A017659]

end A017659

/-! ## A017659.P17816553400245667636

`A001015(A017653(n))`
-/

namespace A017659.P17816553400245667636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A017653 n).toNat

end

end A017659.P17816553400245667636

namespace A017659

/-- `A001015(A017653(n))` -/
def P17816553400245667636.Spec : Prop :=
  ∀ n, P17816553400245667636.a n = A017659 n

end A017659

/-! ## A017659.P8576492735927663112

`A017653(n)*A017658(n)`
-/

namespace A017659.P8576492735927663112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n * A017658 n

end

end A017659.P8576492735927663112

namespace A017659

/-- `A017653(n)*A017658(n)` -/
def P8576492735927663112.Spec : Prop :=
  ∀ n, P8576492735927663112.a n = A017659 n

end A017659

/-! ## A017659.P4845614500087522109

`A017654(n)*A017657(n)`
-/

namespace A017659.P4845614500087522109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n * A017657 n

end

end A017659.P4845614500087522109

namespace A017659

/-- `A017654(n)*A017657(n)` -/
def P4845614500087522109.Spec : Prop :=
  ∀ n, P4845614500087522109.a n = A017659 n

end A017659

/-! ## A017659.P4241367641893543197

`A017655(n)*A017656(n)`
-/

namespace A017659.P4241367641893543197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017655 n * A017656 n

end

end A017659.P4241367641893543197

namespace A017659

/-- `A017655(n)*A017656(n)` -/
def P4241367641893543197.Spec : Prop :=
  ∀ n, P4241367641893543197.a n = A017659 n

end A017659

/-! ## A017659.P16459506158461883259

`A017653(n)²*A017657(n)`
-/

namespace A017659.P16459506158461883259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n ^ 2 * A017657 n

end

end A017659.P16459506158461883259

namespace A017659

/-- `A017653(n)²*A017657(n)` -/
def P16459506158461883259.Spec : Prop :=
  ∀ n, P16459506158461883259.a n = A017659 n

end A017659

/-! ## A017659.P333206142940221287

`A017654(n)²*A017655(n)`
-/

namespace A017659.P333206142940221287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n ^ 2 * A017655 n

end

end A017659.P333206142940221287

namespace A017659

/-- `A017654(n)²*A017655(n)` -/
def P333206142940221287.Spec : Prop :=
  ∀ n, P333206142940221287.a n = A017659 n

end A017659

/-! ## A017659.P1438324026926343811

`A017655(n)²*A017653(n)`
-/

namespace A017659.P1438324026926343811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017655 n ^ 2 * A017653 n

end

end A017659.P1438324026926343811

namespace A017659

/-- `A017655(n)²*A017653(n)` -/
def P1438324026926343811.Spec : Prop :=
  ∀ n, P1438324026926343811.a n = A017659 n

end A017659

/-! ## A017659.P14891749447134542989

`A017656(n)²/A017653(n)`
-/

namespace A017659.P14891749447134542989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017656 n ^ 2 : ℚ) / (A017653 n : ℚ)

end

end A017659.P14891749447134542989

namespace A017659

/-- `A017656(n)²/A017653(n)` -/
def P14891749447134542989.Spec : Prop :=
  ∀ n, P14891749447134542989.a n = (A017659 n : ℚ)

end A017659

/-! ## A017659.P13282116429496023638

`A017654(n)²²/A017653(n)`
-/

namespace A017659.P13282116429496023638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017654 n ^ 2) ^ 2 : ℚ) / (A017653 n : ℚ)

end

end A017659.P13282116429496023638

namespace A017659

/-- `A017654(n)²²/A017653(n)` -/
def P13282116429496023638.Spec : Prop :=
  ∀ n, P13282116429496023638.a n = (A017659 n : ℚ)

end A017659

/-! ## A017659.P1997100401013220637

`A017657(n)/A017655(n)*A017657(n)`
-/

namespace A017659.P1997100401013220637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017657 n : ℚ) / (A017655 n : ℚ) * (A017657 n : ℚ)

end

end A017659.P1997100401013220637

namespace A017659

/-- `A017657(n)/A017655(n)*A017657(n)` -/
def P1997100401013220637.Spec : Prop :=
  ∀ n, P1997100401013220637.a n = (A017659 n : ℚ)

end A017659

/-! ## A017659.P483282539341841483

`A016975(Δ[n²])`
-/

namespace A017659.P483282539341841483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016975 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017659.P483282539341841483

namespace A017659

/-- `A016975(Δ[n²])` -/
def P483282539341841483.Spec : Prop :=
  ∀ n, P483282539341841483.a n = A017659 n

end A017659

/-! ## A017659.P16822391155349261531

`(12*n+11)*A016974(2*n+1)`
-/

namespace A017659.P16822391155349261531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 11 : ℤ) * A016974 (2 * n + 1)

end

end A017659.P16822391155349261531

namespace A017659

/-- `(12*n+11)*A016974(2*n+1)` -/
def P16822391155349261531.Spec : Prop :=
  ∀ n, P16822391155349261531.a n = A017659 n

end A017659

/-! ## A017659.P10256210229414984591

`A016976(2*n+1)/(12*n+11)`
-/

namespace A017659.P10256210229414984591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016976 (2 * n + 1) : ℚ) / (12 * n + 11 : ℚ)

end

end A017659.P10256210229414984591

namespace A017659

/-- `A016976(2*n+1)/(12*n+11)` -/
def P10256210229414984591.Spec : Prop :=
  ∀ n, P10256210229414984591.a n = (A017659 n : ℚ)

end A017659

/-! ## A017659.P11918789461264416954

`A016971(2*n+1)²*(12*n+11)`
-/

namespace A017659.P11918789461264416954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 (2 * n + 1) ^ 2 * (12 * n + 11 : ℤ)

end

end A017659.P11918789461264416954

namespace A017659

/-- `A016971(2*n+1)²*(12*n+11)` -/
def P11918789461264416954.Spec : Prop :=
  ∀ n, P11918789461264416954.a n = A017659 n

end A017659

/-! ## A017659.P6892018894627336609

`(12*n+11)²*A016973(2*n+1)`
-/

namespace A017659.P6892018894627336609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((12 * n + 11) ^ 2 : ℤ) * A016973 (2 * n + 1)

end

end A017659.P6892018894627336609

namespace A017659

/-- `(12*n+11)²*A016973(2*n+1)` -/
def P6892018894627336609.Spec : Prop :=
  ∀ n, P6892018894627336609.a n = A017659 n

end A017659

/-! ## A017659.P15582699277489270646

`A016972(2*n+1)²/(12*n+11)`
-/

namespace A017659.P15582699277489270646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016972 (2 * n + 1) ^ 2 : ℚ) / (12 * n + 11 : ℚ)

end

end A017659.P15582699277489270646

namespace A017659

/-- `A016972(2*n+1)²/(12*n+11)` -/
def P15582699277489270646.Spec : Prop :=
  ∀ n, P15582699277489270646.a n = (A017659 n : ℚ)

end A017659

/-! ## A017659.P1985737514998338656

`A016977(2*n+1)/(12*n+11)²`
-/

namespace A017659.P1985737514998338656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016977 (2 * n + 1) : ℚ) / ((12 * n + 11) ^ 2 : ℚ)

end

end A017659.P1985737514998338656

namespace A017659

/-- `A016977(2*n+1)/(12*n+11)²` -/
def P1985737514998338656.Spec : Prop :=
  ∀ n, P1985737514998338656.a n = (A017659 n : ℚ)

end A017659

/-! ## A017659.P1908188446347992922

`A016971(2*n+1)*A016972(2*n+1)`
-/

namespace A017659.P1908188446347992922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 (2 * n + 1) * A016972 (2 * n + 1)

end

end A017659.P1908188446347992922

namespace A017659

/-- `A016971(2*n+1)*A016972(2*n+1)` -/
def P1908188446347992922.Spec : Prop :=
  ∀ n, P1908188446347992922.a n = A017659 n

end A017659

/-! ## A017659.P9857317354969860688

`2*A016975(2*n+1)-A016975(2*n+1)`
-/

namespace A017659.P9857317354969860688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016975 (2 * n + 1) - A016975 (2 * n + 1)

end

end A017659.P9857317354969860688

namespace A017659

/-- `2*A016975(2*n+1)-A016975(2*n+1)` -/
def P9857317354969860688.Spec : Prop :=
  ∀ n, P9857317354969860688.a n = A017659 n

end A017659

/-!
# A017660: a(n) = (12*n + 11)^8.

The programs for A017660, the canonical program `A017660.P11146905308087399730` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017660 has offset 0).

The definition of A017660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+11)^8` (program `A017660.P11146905308087399730`, by `A017660.P11146905308087399730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017660.P11146905308087399730

`(12*n+11)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017660

/-- `(12*n+11)^8` -/
def P11146905308087399730.Spec : Prop :=
  ∀ n, (P11146905308087399730.a n : ℤ) = A017660 n

theorem P11146905308087399730.correct : P11146905308087399730.Spec := by
  intro n
  simp only [A017660]

end A017660

/-! ## A017660.P11540175043859402490

`Δ[lcm(2*n+1, 2*n+1+n)]²²²`
-/

namespace A017660.P11540175043859402490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017660.P11540175043859402490

namespace A017660

/-- `Δ[lcm(2*n+1, 2*n+1+n)]²²²` -/
def P11540175043859402490.Spec : Prop :=
  ∀ n, P11540175043859402490.a n = A017660 n

end A017660

/-! ## A017660.P638135359589676222

`A017656(n)²`
-/

namespace A017660.P638135359589676222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017656 n ^ 2

end

end A017660.P638135359589676222

namespace A017660

/-- `A017656(n)²` -/
def P638135359589676222.Spec : Prop :=
  ∀ n, P638135359589676222.a n = A017660 n

end A017660

/-! ## A017660.P7106477655640161134

`A017654(n)²²`
-/

namespace A017660.P7106477655640161134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017654 n ^ 2) ^ 2

end

end A017660.P7106477655640161134

namespace A017660

/-- `A017654(n)²²` -/
def P7106477655640161134.Spec : Prop :=
  ∀ n, P7106477655640161134.a n = A017660 n

end A017660

/-! ## A017660.P1467163287060745293

`A017653(n)²²²`
-/

namespace A017660.P1467163287060745293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017653 n ^ 2) ^ 2) ^ 2

end

end A017660.P1467163287060745293

namespace A017660

/-- `A017653(n)²²²` -/
def P1467163287060745293.Spec : Prop :=
  ∀ n, P1467163287060745293.a n = A017660 n

end A017660

/-! ## A017660.P4870042645222337518

`Δ[A033570(n)]²²²`
-/

namespace A017660.P4870042645222337518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017660.P4870042645222337518

namespace A017660

/-- `Δ[A033570(n)]²²²` -/
def P4870042645222337518.Spec : Prop :=
  ∀ n, P4870042645222337518.a n = A017660 n

end A017660

/-! ## A017660.P18254987076267717091

`(A017641(n)+1)²²²`
-/

namespace A017660.P18254987076267717091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017641 n + 1) ^ 2) ^ 2) ^ 2

end

end A017660.P18254987076267717091

namespace A017660

/-- `(A017641(n)+1)²²²` -/
def P18254987076267717091.Spec : Prop :=
  ∀ n, P18254987076267717091.a n = A017660 n

end A017660

/-! ## A017660.P7958622198608582803

`(A017629(n)+2)²²²`
-/

namespace A017660.P7958622198608582803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017629 n + 2) ^ 2) ^ 2) ^ 2

end

end A017660.P7958622198608582803

namespace A017660

/-- `(A017629(n)+2)²²²` -/
def P7958622198608582803.Spec : Prop :=
  ∀ n, P7958622198608582803.a n = A017660 n

end A017660

/-! ## A017660.P17342453955483259110

`(n-A269100(n))²²²`
-/

namespace A017660.P17342453955483259110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A269100 n) ^ 2) ^ 2) ^ 2

end

end A017660.P17342453955483259110

namespace A017660

/-- `(n-A269100(n))²²²` -/
def P17342453955483259110.Spec : Prop :=
  ∀ n, P17342453955483259110.a n = A017660 n

end A017660

/-! ## A017660.P13550416703386216413

`(A305072(n+1)+1)²²`
-/

namespace A017660.P13550416703386216413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A305072 (n + 1) + 1) ^ 2) ^ 2

end

end A017660.P13550416703386216413

namespace A017660

/-- `(A305072(n+1)+1)²²` -/
def P13550416703386216413.Spec : Prop :=
  ∀ n, P13550416703386216413.a n = A017660 n

end A017660

/-! ## A017660.P7280665284461150532

`(12*n+11)*A017659(n)`
-/

namespace A017660.P7280665284461150532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 11 : ℤ) * A017659 n

end

end A017660.P7280665284461150532

namespace A017660

/-- `(12*n+11)*A017659(n)` -/
def P7280665284461150532.Spec : Prop :=
  ∀ n, P7280665284461150532.a n = A017660 n

end A017660

/-! ## A017660.P871480983244843541

`A017654(n)*A017658(n)`
-/

namespace A017660.P871480983244843541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n * A017658 n

end

end A017660.P871480983244843541

namespace A017660

/-- `A017654(n)*A017658(n)` -/
def P871480983244843541.Spec : Prop :=
  ∀ n, P871480983244843541.a n = A017660 n

end A017660

/-! ## A017660.P14936317196718802634

`A017655(n)*A017657(n)`
-/

namespace A017660.P14936317196718802634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017655 n * A017657 n

end

end A017660.P14936317196718802634

namespace A017660

/-- `A017655(n)*A017657(n)` -/
def P14936317196718802634.Spec : Prop :=
  ∀ n, P14936317196718802634.a n = A017660 n

end A017660

/-! ## A017660.P8071130372286780862

`Δ[A211014(n)]²²²`
-/

namespace A017660.P8071130372286780862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017660.P8071130372286780862

namespace A017660

/-- `Δ[A211014(n)]²²²` -/
def P8071130372286780862.Spec : Prop :=
  ∀ n, P8071130372286780862.a n = A017660 n

end A017660

/-! ## A017660.P1714109643661440645

`A016976(Δ[n²])`
-/

namespace A017660.P1714109643661440645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016976 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017660.P1714109643661440645

namespace A017660

/-- `A016976(Δ[n²])` -/
def P1714109643661440645.Spec : Prop :=
  ∀ n, P1714109643661440645.a n = A017660 n

end A017660

/-! ## A017660.P8026614518540942201

`A016972(Δ[n²])²`
-/

namespace A017660.P8026614518540942201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016972 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017660.P8026614518540942201

namespace A017660

/-- `A016972(Δ[n²])²` -/
def P8026614518540942201.Spec : Prop :=
  ∀ n, P8026614518540942201.a n = A017660 n

end A017660

/-! ## A017660.P6364848716318173797

`A016970(Δ[n²])²²`
-/

namespace A017660.P6364848716318173797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016970 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A017660.P6364848716318173797

namespace A017660

/-- `A016970(Δ[n²])²²` -/
def P6364848716318173797.Spec : Prop :=
  ∀ n, P6364848716318173797.a n = A017660 n

end A017660

/-! ## A017660.P9246967560340094528

`A016969(comp[2*n])²²²`
-/

namespace A017660.P9246967560340094528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016969 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2) ^ 2) ^ 2

end

end A017660.P9246967560340094528

namespace A017660

/-- `A016969(comp[2*n])²²²` -/
def P9246967560340094528.Spec : Prop :=
  ∀ n, P9246967560340094528.a n = A017660 n

end A017660

/-! ## A017660.P1426178864276268657

`A091998(2*(n+1))²²²`
-/

namespace A017660.P1426178864276268657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A091998 (2 * (n + 1)) ^ 2) ^ 2) ^ 2

end

end A017660.P1426178864276268657

namespace A017660

/-- `A091998(2*(n+1))²²²` -/
def P1426178864276268657.Spec : Prop :=
  ∀ n, P1426178864276268657.a n = A017660 n

end A017660

/-! ## A017660.P6069238116384216954

`A168489(2*(n+1))²²²`
-/

namespace A017660.P6069238116384216954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A168489 (2 * (n + 1)) ^ 2) ^ 2) ^ 2

end

end A017660.P6069238116384216954

namespace A017660

/-- `A168489(2*(n+1))²²²` -/
def P6069238116384216954.Spec : Prop :=
  ∀ n, P6069238116384216954.a n = A017660 n

end A017660

/-!
# A017661: a(n) = (12*n + 11)^9.

The programs for A017661, the canonical program `A017661.P340601510657935575` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017661 has offset 0).

The definition of A017661 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+11)^9` (program `A017661.P340601510657935575`, by `A017661.P340601510657935575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017661.P340601510657935575

`(12*n+11)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017661

/-- `(12*n+11)^9` -/
def P340601510657935575.Spec : Prop :=
  ∀ n, (P340601510657935575.a n : ℤ) = A017661 n

theorem P340601510657935575.correct : P340601510657935575.Spec := by
  intro n
  simp only [A017661]

end A017661

/-! ## A017661.P7219768376042181467

`A017655(n)*A017658(n)`
-/

namespace A017661.P7219768376042181467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017655 n * A017658 n

end

end A017661.P7219768376042181467

namespace A017661

/-- `A017655(n)*A017658(n)` -/
def P7219768376042181467.Spec : Prop :=
  ∀ n, P7219768376042181467.a n = A017661 n

end A017661

/-! ## A017661.P2903865134959535394

`A017656(n)*A017657(n)`
-/

namespace A017661.P2903865134959535394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017656 n * A017657 n

end

end A017661.P2903865134959535394

namespace A017661

/-- `A017656(n)*A017657(n)` -/
def P2903865134959535394.Spec : Prop :=
  ∀ n, P2903865134959535394.a n = A017661 n

end A017661

/-! ## A017661.P16962501008443720091

`A016977(2*n+1)`
-/

namespace A017661.P16962501008443720091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016977 (2 * n + 1)

end

end A017661.P16962501008443720091

namespace A017661

/-- `A016977(2*n+1)` -/
def P16962501008443720091.Spec : Prop :=
  ∀ n, P16962501008443720091.a n = A017661 n

end A017661

/-! ## A017661.P8865429822599999115

`A016970(2*n+1)*A016975(2*n+1)`
-/

namespace A017661.P8865429822599999115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 (2 * n + 1) * A016975 (2 * n + 1)

end

end A017661.P8865429822599999115

namespace A017661

/-- `A016970(2*n+1)*A016975(2*n+1)` -/
def P8865429822599999115.Spec : Prop :=
  ∀ n, P8865429822599999115.a n = A017661 n

end A017661

/-! ## A017661.P11911003639875245126

`A016971(2*n+1)*A016974(2*n+1)`
-/

namespace A017661.P11911003639875245126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 (2 * n + 1) * A016974 (2 * n + 1)

end

end A017661.P11911003639875245126

namespace A017661

/-- `A016971(2*n+1)*A016974(2*n+1)` -/
def P11911003639875245126.Spec : Prop :=
  ∀ n, P11911003639875245126.a n = A017661 n

end A017661

/-! ## A017661.P5482042277475889687

`A016845(3*n+2)`
-/

namespace A017661.P5482042277475889687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016845 (3 * n + 2)

end

end A017661.P5482042277475889687

namespace A017661

/-- `A016845(3*n+2)` -/
def P5482042277475889687.Spec : Prop :=
  ∀ n, P5482042277475889687.a n = A017661 n

end A017661

/-! ## A017661.P10252962901587872558

`A016797(A016789(n)+n+1)`
-/

namespace A017661.P10252962901587872558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016797 (A016789 n + (n + 1 : ℤ)).toNat

end

end A017661.P10252962901587872558

namespace A017661

/-- `A016797(A016789(n)+n+1)` -/
def P10252962901587872558.Spec : Prop :=
  ∀ n, P10252962901587872558.a n = A017661 n

end A017661

/-! ## A017661.P10267787657817176100

`A016761(A016945(n)+2)`
-/

namespace A017661.P10267787657817176100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (A016945 n + 2).toNat

end

end A017661.P10267787657817176100

namespace A017661

/-- `A016761(A016945(n)+2)` -/
def P10267787657817176100.Spec : Prop :=
  ∀ n, P10267787657817176100.a n = A017661 n

end A017661

/-! ## A017661.P13155142133114141921

`A001017(A017653(n))`
-/

namespace A017661.P13155142133114141921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017653 n).toNat

end

end A017661.P13155142133114141921

namespace A017661

/-- `A001017(A017653(n))` -/
def P13155142133114141921.Spec : Prop :=
  ∀ n, P13155142133114141921.a n = A017661 n

end A017661

/-!
# A017662: 

The programs for A017662, there is no canonical definition to state claims against.
-/

/-! ## A017662.P2987800144199266660

`(12*n+11)²^5`
-/

namespace A017662.P2987800144199266660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((12 * n + 11) ^ 2) ^ 5

end

end A017662.P2987800144199266660

/-! ## A017662.P17827229681513943528

`A017657(n)²`
-/

namespace A017662.P17827229681513943528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017657 n ^ 2

end

end A017662.P17827229681513943528

/-! ## A017662.P1983254757031934419

`(A017653(n)^5)²`
-/

namespace A017662.P1983254757031934419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017653 n ^ 5) ^ 2

end

end A017662.P1983254757031934419

/-! ## A017662.P18314930504769883013

`A016973(A005408(n))²`
-/

namespace A017662.P18314930504769883013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016973 (A005408 n).toNat ^ 2

end

end A017662.P18314930504769883013

/-! ## A017662.P3998332690904579323

`A008454(A016945(2*n+1)+2)`
-/

namespace A017662.P3998332690904579323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 (2 * n + 1) + 2).toNat

end

end A017662.P3998332690904579323

/-!
# A017663: 

The programs for A017663, there is no canonical definition to state claims against.
-/

/-! ## A017663.P2199701925322886085

`(12*n+11)^11`
-/

namespace A017663.P2199701925322886085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (12 * n + 11) ^ 11

end

end A017663.P2199701925322886085

/-! ## A017663.P11510791882600522516

`A017656(n)*A017659(n)`
-/

namespace A017663.P11510791882600522516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017656 n * A017659 n

end

end A017663.P11510791882600522516

/-! ## A017663.P4542447226289186139

`A017657(n)*A017658(n)`
-/

namespace A017663.P4542447226289186139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017657 n * A017658 n

end

end A017663.P4542447226289186139

/-! ## A017663.P8237260103194301415

`A017660(n)²/A017657(n)`
-/

namespace A017663.P8237260103194301415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017660 n ^ 2 : ℚ) / (A017657 n : ℚ)

end

end A017663.P8237260103194301415

/-! ## A017663.P8550900105130991165

`A016847(A016777(n)+1)`
-/

namespace A017663.P8550900105130991165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016847 (A016777 n + 1).toNat

end

end A017663.P8550900105130991165

/-! ## A017663.P4869580414358743965

`A016847(A004767(n)-(n+1))`
-/

namespace A017663.P4869580414358743965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016847 (A004767 n - (n + 1 : ℤ)).toNat

end

end A017663.P4869580414358743965

/-! ## A017663.P2034826215484475962

`sqrt(A017654(n)^11)`
-/

namespace A017663.P2034826215484475962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017654 n ^ 11 : ℝ)

end

end A017663.P2034826215484475962

/-! ## A017663.P18217787626982762389

`A016799(4*n+3)`
-/

namespace A017663.P18217787626982762389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016799 (4 * n + 3)

end

end A017663.P18217787626982762389

/-! ## A017663.P1072432448794963209

`A008454(A017653(n))*A017653(n)`
-/

namespace A017663.P1072432448794963209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017653 n).toNat * A017653 n

end

end A017663.P1072432448794963209

/-!
# A017664: 

The programs for A017664, there is no canonical definition to state claims against.
-/

/-! ## A017664.P18326788038339852955

`A017658(n)²`
-/

namespace A017664.P18326788038339852955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017658 n ^ 2

end

end A017664.P18326788038339852955

/-! ## A017664.P4263499442252246969

`A017656(n)^3`
-/

namespace A017664.P4263499442252246969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017656 n ^ 3

end

end A017664.P4263499442252246969

/-! ## A017664.P7993332515976029404

`A017655(n)^4`
-/

namespace A017664.P7993332515976029404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017655 n ^ 4

end

end A017664.P7993332515976029404

/-! ## A017664.P17588114834742402744

`A017654(n)^6`
-/

namespace A017664.P17588114834742402744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n ^ 6

end

end A017664.P17588114834742402744

/-! ## A017664.P9197657420684557148

`(A017653(n)^6)²`
-/

namespace A017664.P9197657420684557148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017653 n ^ 6) ^ 2

end

end A017664.P9197657420684557148

/-! ## A017664.P9301118003142637055

`A016972(2*n+1)^3`
-/

namespace A017664.P9301118003142637055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016972 (2 * n + 1) ^ 3

end

end A017664.P9301118003142637055

/-! ## A017664.P12336461500925860978

`A016971(2*n+1)^4`
-/

namespace A017664.P12336461500925860978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 (2 * n + 1) ^ 4

end

end A017664.P12336461500925860978

/-!
# A017665: Numerator of sum of reciprocals of divisors of n.

The programs for A017665, the canonical program `A017665.P1720905539505039507` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017665 has offset 1).

The definition of A017665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017665.P1720905539505039507

`lcm(n+1, ∑{d}[n+1, #])/(n+1)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017665

/-- `lcm(n+1, ∑{d}[n+1, #])/(n+1)` -/
def P1720905539505039507.Spec : Prop :=
  ∀ n, P1720905539505039507.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P13489933196597805915

`A009242(n+1)/(n+1)`
-/

namespace A017665.P13489933196597805915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A017665.P13489933196597805915

namespace A017665

/-- `A009242(n+1)/(n+1)` -/
def P13489933196597805915.Spec : Prop :=
  ∀ n, P13489933196597805915.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P6521335631339466099

`lcm(n+1, A000203(n+1))/(n+1)`
-/

namespace A017665.P6521335631339466099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000203 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A017665.P6521335631339466099

namespace A017665

/-- `lcm(n+1, A000203(n+1))/(n+1)` -/
def P6521335631339466099.Spec : Prop :=
  ∀ n, P6521335631339466099.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P16404639988814701115

`Δ[A160664(n)]/A009194(n+1)`
-/

namespace A017665.P16404639988814701115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A009194 (n + 1) : ℚ)

end

end A017665.P16404639988814701115

namespace A017665

/-- `Δ[A160664(n)]/A009194(n+1)` -/
def P16404639988814701115.Spec : Prop :=
  ∀ n, P16404639988814701115.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P5162826686449970504

`A243473(n+1)+A017666(n+1)`
-/

namespace A017665.P5162826686449970504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (n + 1) + A017666 (n + 1)

end

end A017665.P5162826686449970504

namespace A017665

/-- `A243473(n+1)+A017666(n+1)` -/
def P5162826686449970504.Spec : Prop :=
  ∀ n, P5162826686449970504.a n = A017665 (n + 1)

end A017665

/-! ## A017665.P3627930153708222144

`A000203(n+1)/A009194(n+1)`
-/

namespace A017665.P3627930153708222144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A017665.P3627930153708222144

namespace A017665

/-- `A000203(n+1)/A009194(n+1)` -/
def P3627930153708222144.Spec : Prop :=
  ∀ n, P3627930153708222144.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P11873043457013427816

`A249670(n+1)/A017666(n+1)`
-/

namespace A017665.P11873043457013427816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249670 (n + 1) : ℚ) / (A017666 (n + 1) : ℚ)

end

end A017665.P11873043457013427816

namespace A017665

/-- `A249670(n+1)/A017666(n+1)` -/
def P11873043457013427816.Spec : Prop :=
  ∀ n, P11873043457013427816.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P14903717881108330682

`A064840(n+1)/A388270(n+1)`
-/

namespace A017665.P14903717881108330682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A388270 (n + 1) : ℚ)

end

end A017665.P14903717881108330682

namespace A017665

/-- `A064840(n+1)/A388270(n+1)` -/
def P14903717881108330682.Spec : Prop :=
  ∀ n, P14903717881108330682.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P8708998381301926770

`A074400(n+1)/(2*A009194(n+1))`
-/

namespace A017665.P8708998381301926770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (2 * A009194 (n + 1) : ℚ)

end

end A017665.P8708998381301926770

namespace A017665

/-- `A074400(n+1)/(2*A009194(n+1))` -/
def P8708998381301926770.Spec : Prop :=
  ∀ n, P8708998381301926770.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P3490801138200239737

`A064987(n+1)/((n+1)*A009194(n+1))`
-/

namespace A017665.P3490801138200239737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / ((n + 1 : ℤ) * A009194 (n + 1) : ℚ)

end

end A017665.P3490801138200239737

namespace A017665

/-- `A064987(n+1)/((n+1)*A009194(n+1))` -/
def P3490801138200239737.Spec : Prop :=
  ∀ n, P3490801138200239737.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P11886764039692375174

`A000203(n+1)/gcd(n+1, A155085(n+1))`
-/

namespace A017665.P11886764039692375174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A155085 (n + 1)) : ℚ)

end

end A017665.P11886764039692375174

namespace A017665

/-- `A000203(n+1)/gcd(n+1, A155085(n+1))` -/
def P11886764039692375174.Spec : Prop :=
  ∀ n, P11886764039692375174.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P3951866161493259163

`A240923(n+1)+A000203(A017666(n+1))`
-/

namespace A017665.P3951866161493259163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (n + 1) + A000203 (A017666 (n + 1)).toNat

end

end A017665.P3951866161493259163

namespace A017665

/-- `A240923(n+1)+A000203(A017666(n+1))` -/
def P3951866161493259163.Spec : Prop :=
  ∀ n, P3951866161493259163.a n = A017665 (n + 1)

end A017665

/-! ## A017665.P11024857321639779633

`A000203(n+1)/gcd(A000203(n+1), A131738(n))`
-/

namespace A017665.P11024857321639779633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A131738 n) : ℚ)

end

end A017665.P11024857321639779633

namespace A017665

/-- `A000203(n+1)/gcd(A000203(n+1), A131738(n))` -/
def P11024857321639779633.Spec : Prop :=
  ∀ n, P11024857321639779633.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P8100026435125959352

`A272008(n+1)+A017666(n+1)*A108775(n+1)`
-/

namespace A017665.P8100026435125959352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1) + A017666 (n + 1) * A108775 (n + 1)

end

end A017665.P8100026435125959352

namespace A017665

/-- `A272008(n+1)+A017666(n+1)*A108775(n+1)` -/
def P8100026435125959352.Spec : Prop :=
  ∀ n, P8100026435125959352.a n = A017665 (n + 1)

end A017665

/-! ## A017665.P10673229449544352829

`(A048146(n+1)+A034448(n+1))/A009194(n+1)`
-/

namespace A017665.P10673229449544352829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A017665.P10673229449544352829

namespace A017665

/-- `(A048146(n+1)+A034448(n+1))/A009194(n+1)` -/
def P10673229449544352829.Spec : Prop :=
  ∀ n, P10673229449544352829.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P6859344868487167393

`(A146076(n+1)+A000593(n+1))/A009194(n+1)`
-/

namespace A017665.P6859344868487167393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (n + 1) + A000593 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A017665.P6859344868487167393

namespace A017665

/-- `(A146076(n+1)+A000593(n+1))/A009194(n+1)` -/
def P6859344868487167393.Spec : Prop :=
  ∀ n, P6859344868487167393.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P7214061786663182263

`(A088001(n+1)+A088000(n+1))/A009194(n+1)`
-/

namespace A017665.P7214061786663182263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088001 (n + 1) + A088000 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A017665.P7214061786663182263

namespace A017665

/-- `(A088001(n+1)+A088000(n+1))/A009194(n+1)` -/
def P7214061786663182263.Spec : Prop :=
  ∀ n, P7214061786663182263.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P8660511965814803715

`(A117004(n+1)+A079667(n+1))/A009194(n+1)`
-/

namespace A017665.P8660511965814803715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117004 (n + 1) + A079667 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A017665.P8660511965814803715

namespace A017665

/-- `(A117004(n+1)+A079667(n+1))/A009194(n+1)` -/
def P8660511965814803715.Spec : Prop :=
  ∀ n, P8660511965814803715.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P12340046769860737781

`(A178637(n+1)+A023889(n+1))/A009194(n+1)`
-/

namespace A017665.P12340046769860737781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178637 (n + 1) + A023889 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A017665.P12340046769860737781

namespace A017665

/-- `(A178637(n+1)+A023889(n+1))/A009194(n+1)` -/
def P12340046769860737781.Spec : Prop :=
  ∀ n, P12340046769860737781.a n = (A017665 (n + 1) : ℚ)

end A017665

/-! ## A017665.P13323610646249267577

`(A162296(n+1)+A048250(n+1))/A009194(n+1)`
-/

namespace A017665.P13323610646249267577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162296 (n + 1) + A048250 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A017665.P13323610646249267577

namespace A017665

/-- `(A162296(n+1)+A048250(n+1))/A009194(n+1)` -/
def P13323610646249267577.Spec : Prop :=
  ∀ n, P13323610646249267577.a n = (A017665 (n + 1) : ℚ)

end A017665

/-!
# A017666: Denominator of sum of reciprocals of divisors of n.

The programs for A017666, the canonical program `A017666.P11271370801176685649` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017666 has offset 1).

The definition of A017666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017666.P11271370801176685649

`(n+1)/gcd(n+1, ∑{d}[n+1, #])`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017666

/-- `(n+1)/gcd(n+1, ∑{d}[n+1, #])` -/
def P11271370801176685649.Spec : Prop :=
  ∀ n, P11271370801176685649.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P17071502855514032741

`(n+1)/A009194(n+1)`
-/

namespace A017666.P17071502855514032741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A009194 (n + 1) : ℚ)

end

end A017666.P17071502855514032741

namespace A017666

/-- `(n+1)/A009194(n+1)` -/
def P17071502855514032741.Spec : Prop :=
  ∀ n, P17071502855514032741.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P15483780705143287591

`A009242(n+1)/∑{d}[n+1, #]`
-/

namespace A017666.P15483780705143287591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)

end

end A017666.P15483780705143287591

namespace A017666

/-- `A009242(n+1)/∑{d}[n+1, #]` -/
def P15483780705143287591.Spec : Prop :=
  ∀ n, P15483780705143287591.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P7589391282814515047

`(n+1)/gcd(n+1, Δ[A160664(n)])`
-/

namespace A017666.P7589391282814515047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n) : ℚ)

end

end A017666.P7589391282814515047

namespace A017666

/-- `(n+1)/gcd(n+1, Δ[A160664(n)])` -/
def P7589391282814515047.Spec : Prop :=
  ∀ n, P7589391282814515047.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P8487561919054936107

`(n+1)/gcd(n²+n, A306682(n+1))`
-/

namespace A017666.P8487561919054936107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n ^ 2 + n : ℤ) (A306682 (n + 1)) : ℚ)

end

end A017666.P8487561919054936107

namespace A017666

/-- `(n+1)/gcd(n²+n, A306682(n+1))` -/
def P8487561919054936107.Spec : Prop :=
  ∀ n, P8487561919054936107.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P10460347041766185250

`A390582(n+1)+A243473(n+1)`
-/

namespace A017666.P10460347041766185250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390582 (n + 1) + A243473 (n + 1)

end

end A017666.P10460347041766185250

namespace A017666

/-- `A390582(n+1)+A243473(n+1)` -/
def P10460347041766185250.Spec : Prop :=
  ∀ n, P10460347041766185250.a n = A017666 (n + 1)

end A017666

/-! ## A017666.P2288878549054696389

`A017665(n+1)-A243473(n+1)`
-/

namespace A017666.P2288878549054696389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A243473 (n + 1)

end

end A017666.P2288878549054696389

namespace A017666

/-- `A017665(n+1)-A243473(n+1)` -/
def P2288878549054696389.Spec : Prop :=
  ∀ n, P2288878549054696389.a n = A017666 (n + 1)

end A017666

/-! ## A017666.P16572893466817104564

`A388283(n+1)-A390582(n+1)`
-/

namespace A017666.P16572893466817104564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (n + 1) - A390582 (n + 1)

end

end A017666.P16572893466817104564

namespace A017666

/-- `A388283(n+1)-A390582(n+1)` -/
def P16572893466817104564.Spec : Prop :=
  ∀ n, P16572893466817104564.a n = A017666 (n + 1)

end A017666

/-! ## A017666.P3632093533938697459

`A009242(n+1)/A000203(n+1)`
-/

namespace A017666.P3632093533938697459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A017666.P3632093533938697459

namespace A017666

/-- `A009242(n+1)/A000203(n+1)` -/
def P3632093533938697459.Spec : Prop :=
  ∀ n, P3632093533938697459.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P13767868202136282275

`A249670(n+1)/A017665(n+1)`
-/

namespace A017666.P13767868202136282275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249670 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ)

end

end A017666.P13767868202136282275

namespace A017666

/-- `A249670(n+1)/A017665(n+1)` -/
def P13767868202136282275.Spec : Prop :=
  ∀ n, P13767868202136282275.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P5071155964200987581

`A038040(n+1)/A388270(n+1)`
-/

namespace A017666.P5071155964200987581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A388270 (n + 1) : ℚ)

end

end A017666.P5071155964200987581

namespace A017666

/-- `A038040(n+1)/A388270(n+1)` -/
def P5071155964200987581.Spec : Prop :=
  ∀ n, P5071155964200987581.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P13331479694380376648

`lcm(n+1, A000203(2*n+1-n))/A000203(n+1)`
-/

namespace A017666.P13331479694380376648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000203 (2 * n + 1 - n)) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A017666.P13331479694380376648

namespace A017666

/-- `lcm(n+1, A000203(2*n+1-n))/A000203(n+1)` -/
def P13331479694380376648.Spec : Prop :=
  ∀ n, P13331479694380376648.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P13148299569015236223

`(A017665(n+1)-A272008(n+1))/A108775(n+1)`
-/

namespace A017666.P13148299569015236223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017665 (n + 1) - A272008 (n + 1) : ℚ) / (A108775 (n + 1) : ℚ)

end

end A017666.P13148299569015236223

namespace A017666

/-- `(A017665(n+1)-A272008(n+1))/A108775(n+1)` -/
def P13148299569015236223.Spec : Prop :=
  ∀ n, P13148299569015236223.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P4130555506088454378

`A000005(n+1)*A009242(n+1)/A064840(n+1)`
-/

namespace A017666.P4130555506088454378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A009242 (n + 1) : ℚ) / (A064840 (n + 1) : ℚ)

end

end A017666.P4130555506088454378

namespace A017666

/-- `A000005(n+1)*A009242(n+1)/A064840(n+1)` -/
def P4130555506088454378.Spec : Prop :=
  ∀ n, P4130555506088454378.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P2623020403361502931

`A000027(n+1)/gcd(A000027(n+1), A000203(n+1))`
-/

namespace A017666.P2623020403361502931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A000203 (n + 1)) : ℚ)

end

end A017666.P2623020403361502931

namespace A017666

/-- `A000027(n+1)/gcd(A000027(n+1), A000203(n+1))` -/
def P2623020403361502931.Spec : Prop :=
  ∀ n, P2623020403361502931.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P14972368211233474884

`(n+1)/A324544(A250245(n+1))`
-/

namespace A017666.P14972368211233474884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A324544 (A250245 (n + 1)).toNat : ℚ)

end

end A017666.P14972368211233474884

namespace A017666

/-- `(n+1)/A324544(A250245(n+1))` -/
def P14972368211233474884.Spec : Prop :=
  ∀ n, P14972368211233474884.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P6823548546659184522

`A009242(n+1)/A262610(Δ[n²])`
-/

namespace A017666.P6823548546659184522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (n + 1) : ℚ) / (A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A017666.P6823548546659184522

namespace A017666

/-- `A009242(n+1)/A262610(Δ[n²])` -/
def P6823548546659184522.Spec : Prop :=
  ∀ n, P6823548546659184522.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P4241033888509509089

`(n+1)/A004736(A286591(n+1))`
-/

namespace A017666.P4241033888509509089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A004736 (A286591 (n + 1)).toNat : ℚ)

end

end A017666.P4241033888509509089

namespace A017666

/-- `(n+1)/A004736(A286591(n+1))` -/
def P4241033888509509089.Spec : Prop :=
  ∀ n, P4241033888509509089.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P1008270053892452957

`(n+1)/A324396(A005940(n+2))`
-/

namespace A017666.P1008270053892452957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A324396 (A005940 (n + 2)).toNat : ℚ)

end

end A017666.P1008270053892452957

namespace A017666

/-- `(n+1)/A324396(A005940(n+2))` -/
def P1008270053892452957.Spec : Prop :=
  ∀ n, P1008270053892452957.a n = (A017666 (n + 1) : ℚ)

end A017666

/-! ## A017666.P3068008127947330894

`A372833(A053024(n+1))`
-/

namespace A017666.P3068008127947330894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372833 (A053024 (n + 1)).toNat

end

end A017666.P3068008127947330894

namespace A017666

/-- `A372833(A053024(n+1))` -/
def P3068008127947330894.Spec : Prop :=
  ∀ n, P3068008127947330894.a n = A017666 (n + 1)

end A017666

/-!
# A017667: Numerator of sum of -2nd powers of divisors of n.

The programs for A017667, the canonical program `A017667.P15037752217627688769` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017667 has offset 1).

The definition of A017667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017667.P15037752217627688769

`∑{d}[n+1, #²]/gcd((n+1)², ∑{d}[n+1, #²])`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017667

/-- `∑{d}[n+1, #²]/gcd((n+1)², ∑{d}[n+1, #²])` -/
def P15037752217627688769.Spec : Prop :=
  ∀ n, P15037752217627688769.a n = (A017667 (n + 1) : ℚ)

end A017667

/-! ## A017667.P4191908774271149020

`lcm((n+1)², A001157(n+1))/(n+1)²`
-/

namespace A017667.P4191908774271149020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A001157 (n + 1)) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017667.P4191908774271149020

namespace A017667

/-- `lcm((n+1)², A001157(n+1))/(n+1)²` -/
def P4191908774271149020.Spec : Prop :=
  ∀ n, P4191908774271149020.a n = (A017667 (n + 1) : ℚ)

end A017667

/-! ## A017667.P8656468577495162054

`A001157(n+1)/gcd(A001157(n+1), A067558(n+1))`
-/

namespace A017667.P8656468577495162054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (Int.gcd (A001157 (n + 1)) (A067558 (n + 1)) : ℚ)

end

end A017667.P8656468577495162054

namespace A017667

/-- `A001157(n+1)/gcd(A001157(n+1), A067558(n+1))` -/
def P8656468577495162054.Spec : Prop :=
  ∀ n, P8656468577495162054.a n = (A017667 (n + 1) : ℚ)

end A017667

/-! ## A017667.P7659261733771838117

`lcm(Δ[A153057(n)], ∑{d}[n+1, #²])/(n+1)²`
-/

namespace A017667.P7659261733771838117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153057 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (f1 (n + 1) - f1 n) ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017667.P7659261733771838117

namespace A017667

/-- `lcm(Δ[A153057(n)], ∑{d}[n+1, #²])/(n+1)²` -/
def P7659261733771838117.Spec : Prop :=
  ∀ n, P7659261733771838117.a n = (A017667 (n + 1) : ℚ)

end A017667

/-! ## A017667.P13874213673878680131

`A373439((n+1)²)`
-/

namespace A017667.P13874213673878680131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373439 ((n + 1) ^ 2)

end

end A017667.P13874213673878680131

namespace A017667

/-- `A373439((n+1)²)` -/
def P13874213673878680131.Spec : Prop :=
  ∀ n, P13874213673878680131.a n = A017667 (n + 1)

end A017667

/-! ## A017667.P475792001508221467

`A322263(A034856(n+2))`
-/

namespace A017667.P475792001508221467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322263 (A034856 (n + 2)).toNat

end

end A017667.P475792001508221467

namespace A017667

/-- `A322263(A034856(n+2))` -/
def P475792001508221467.Spec : Prop :=
  ∀ n, P475792001508221467.a n = A017667 (n + 1)

end A017667

/-!
# A017668: Denominator of sum of -2nd powers of divisors of n.

The programs for A017668, the canonical program `A017668.P8249679024800371669` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017668 has offset 1).

The definition of A017668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017668.P8249679024800371669

`(n+1)²/gcd((n+1)², ∑{d}[n+1, #²])`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017668

/-- `(n+1)²/gcd((n+1)², ∑{d}[n+1, #²])` -/
def P8249679024800371669.Spec : Prop :=
  ∀ n, P8249679024800371669.a n = (A017668 (n + 1) : ℚ)

end A017668

/-! ## A017668.P13479258292063710740

`lcm((n+1)², ∑{d}[n+1, #²])/∑{d}[n+1, #²]`
-/

namespace A017668.P13479258292063710740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm ((n + 1) ^ 2) (∑ d ∈ Nat.divisors (f1 n), d ^ 2) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℚ)

end

end A017668.P13479258292063710740

namespace A017668

/-- `lcm((n+1)², ∑{d}[n+1, #²])/∑{d}[n+1, #²]` -/
def P13479258292063710740.Spec : Prop :=
  ∀ n, P13479258292063710740.a n = (A017668 (n + 1) : ℚ)

end A017668

/-! ## A017668.P1845601070384095461

`(n+1)²/gcd((n+1)², A001157(n+1))`
-/

namespace A017668.P1845601070384095461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A001157 (n + 1)) : ℚ)

end

end A017668.P1845601070384095461

namespace A017668

/-- `(n+1)²/gcd((n+1)², A001157(n+1))` -/
def P1845601070384095461.Spec : Prop :=
  ∀ n, P1845601070384095461.a n = (A017668 (n + 1) : ℚ)

end A017668

/-! ## A017668.P12428118607848494143

`(n+1)²/A001157(n+1)*A017667(n+1)`
-/

namespace A017668.P12428118607848494143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A001157 (n + 1) : ℚ) * (A017667 (n + 1) : ℚ)

end

end A017668.P12428118607848494143

namespace A017668

/-- `(n+1)²/A001157(n+1)*A017667(n+1)` -/
def P12428118607848494143.Spec : Prop :=
  ∀ n, P12428118607848494143.a n = (A017668 (n + 1) : ℚ)

end A017668

/-! ## A017668.P9936008053328274314

`lcm(A001157(n+1), A162395(n+1))/A001157(n+1)`
-/

namespace A017668.P9936008053328274314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001157 (n + 1)) (A162395 (n + 1)) : ℚ) / (A001157 (n + 1) : ℚ)

end

end A017668.P9936008053328274314

namespace A017668

/-- `lcm(A001157(n+1), A162395(n+1))/A001157(n+1)` -/
def P9936008053328274314.Spec : Prop :=
  ∀ n, P9936008053328274314.a n = (A017668 (n + 1) : ℚ)

end A017668

/-! ## A017668.P431519775903493318

`A373440((n+1)²)`
-/

namespace A017668.P431519775903493318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373440 ((n + 1) ^ 2)

end

end A017668.P431519775903493318

namespace A017668

/-- `A373440((n+1)²)` -/
def P431519775903493318.Spec : Prop :=
  ∀ n, P431519775903493318.a n = A017668 (n + 1)

end A017668

/-! ## A017668.P948168949346965583

`A322264(A034856(n+2))`
-/

namespace A017668.P948168949346965583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322264 (A034856 (n + 2)).toNat

end

end A017668.P948168949346965583

namespace A017668

/-- `A322264(A034856(n+2))` -/
def P948168949346965583.Spec : Prop :=
  ∀ n, P948168949346965583.a n = A017668 (n + 1)

end A017668

/-!
# A017669: Numerator of sum of -3rd powers of divisors of n.

The programs for A017669, the canonical program `A017669.P15127690478664038271` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017669 has offset 1).

The definition of A017669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017669.P15127690478664038271

`∑{d}[n+1, #^3]/gcd(∑{d}[n+1, #^3], ∑{d}[n+1, (#%(n+1))^3])`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017669

/-- `∑{d}[n+1, #^3]/gcd(∑{d}[n+1, #^3], ∑{d}[n+1, (#%(n+1))^3])` -/
def P15127690478664038271.Spec : Prop :=
  ∀ n, P15127690478664038271.a n = (A017669 (n + 1) : ℚ)

end A017669

/-! ## A017669.P3531976741199778658

`A001158(n+1)/gcd(A001158(n+1), A276634(n+1))`
-/

namespace A017669.P3531976741199778658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (Int.gcd (A001158 (n + 1)) (A276634 (n + 1)) : ℚ)

end

end A017669.P3531976741199778658

namespace A017669

/-- `A001158(n+1)/gcd(A001158(n+1), A276634(n+1))` -/
def P3531976741199778658.Spec : Prop :=
  ∀ n, P3531976741199778658.a n = (A017669 (n + 1) : ℚ)

end A017669

/-! ## A017669.P15206879798356406021

`lcm(A001158(n+1), A184628(n+1))/A184628(n+1)`
-/

namespace A017669.P15206879798356406021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001158 (n + 1)) (A184628 (n + 1)) : ℚ) / (A184628 (n + 1) : ℚ)

end

end A017669.P15206879798356406021

namespace A017669

/-- `lcm(A001158(n+1), A184628(n+1))/A184628(n+1)` -/
def P15206879798356406021.Spec : Prop :=
  ∀ n, P15206879798356406021.a n = (A017669 (n + 1) : ℚ)

end A017669

/-! ## A017669.P9142758066769917226

`A322263(A155212(n)+5)`
-/

namespace A017669.P9142758066769917226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322263 (A155212 n + 5).toNat

end

end A017669.P9142758066769917226

namespace A017669

/-- `A322263(A155212(n)+5)` -/
def P9142758066769917226.Spec : Prop :=
  ∀ n, P9142758066769917226.a n = A017669 (n + 1)

end A017669

/-! ## A017669.P14069818982051170223

`gcd(∑{d}[n+1, #^3], A185344(∏{p}[n+1, #+2]))`
-/

namespace A017669.P14069818982051170223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) (A185344 (∏ p ∈ Nat.primeFactors (f2 n), (p + 2)))

end

end A017669.P14069818982051170223

namespace A017669

/-- `gcd(∑{d}[n+1, #^3], A185344(∏{p}[n+1, #+2]))` -/
def P14069818982051170223.Spec : Prop :=
  ∀ n, (P14069818982051170223.a n : ℤ) = A017669 (n + 1)

end A017669

/-!
# A017670: Denominator of sum of -3rd powers of divisors of n.

The programs for A017670, the canonical program `A017670.P10675654441448400355` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017670 has offset 1).

The definition of A017670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017670.P10675654441448400355

`(n+1)^3/gcd(A001158(n+1), A276634(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A017670

/-- `(n+1)^3/gcd(A001158(n+1), A276634(n+1))` -/
def P10675654441448400355.Spec : Prop :=
  ∀ n, P10675654441448400355.a n = (A017670 (n + 1) : ℚ)

end A017670

/-! ## A017670.P1948956514172427543

`lcm(A000578(n+1), A001158(n+1))/A001158(n+1)`
-/

namespace A017670.P1948956514172427543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000578 (n + 1)) (A001158 (n + 1)) : ℚ) / (A001158 (n + 1) : ℚ)

end

end A017670.P1948956514172427543

namespace A017670

/-- `lcm(A000578(n+1), A001158(n+1))/A001158(n+1)` -/
def P1948956514172427543.Spec : Prop :=
  ∀ n, P1948956514172427543.a n = (A017670 (n + 1) : ℚ)

end A017670

/-! ## A017670.P5426659771206833862

`A322264(A155212(n)+5)`
-/

namespace A017670.P5426659771206833862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322264 (A155212 n + 5).toNat

end

end A017670.P5426659771206833862

namespace A017670

/-- `A322264(A155212(n)+5)` -/
def P5426659771206833862.Spec : Prop :=
  ∀ n, P5426659771206833862.a n = A017670 (n + 1)

end A017670

/-! ## A017670.P826622660954126520

`A322264(A000217(n+3)+n+1)`
-/

namespace A017670.P826622660954126520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322264 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A017670.P826622660954126520

namespace A017670

/-- `A322264(A000217(n+3)+n+1)` -/
def P826622660954126520.Spec : Prop :=
  ∀ n, P826622660954126520.a n = A017670 (n + 1)

end A017670

/-! ## A017670.P12974521430040851190

`A332883(A001222(2^(n+1))^3)`
-/

namespace A017670.P12974521430040851190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332883 (A001222 (2 ^ (n + 1)) ^ 3).toNat

end

end A017670.P12974521430040851190

namespace A017670

/-- `A332883(A001222(2^(n+1))^3)` -/
def P12974521430040851190.Spec : Prop :=
  ∀ n, P12974521430040851190.a n = A017670 (n + 1)

end A017670

/-!
# A017671: Numerator of sum of -4th powers of divisors of n.

The programs for A017671, the canonical program `A017671.P13542887879619195653` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017671 has offset 1).

The definition of A017671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017671.P13542887879619195653

`A001159(n+1)/gcd(A001159(n+1), A279363(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A017671

/-- `A001159(n+1)/gcd(A001159(n+1), A279363(n+1))` -/
def P13542887879619195653.Spec : Prop :=
  ∀ n, P13542887879619195653.a n = (A017671 (n + 1) : ℚ)

end A017671

/-! ## A017671.P781101891359462452

`lcm((n+1)², A351307((n+1)²))/(n+1)²`
-/

namespace A017671.P781101891359462452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A351307 ((n + 1) ^ 2)) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017671.P781101891359462452

namespace A017671

/-- `lcm((n+1)², A351307((n+1)²))/(n+1)²` -/
def P781101891359462452.Spec : Prop :=
  ∀ n, P781101891359462452.a n = (A017671 (n + 1) : ℚ)

end A017671

/-! ## A017671.P2727917164102947942

`A001159(n+1)/A007913(A017672(n+1))`
-/

namespace A017671.P2727917164102947942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001159 (n + 1) : ℚ) / (A007913 (A017672 (n + 1)).toNat : ℚ)

end

end A017671.P2727917164102947942

namespace A017671

/-- `A001159(n+1)/A007913(A017672(n+1))` -/
def P2727917164102947942.Spec : Prop :=
  ∀ n, P2727917164102947942.a n = (A017671 (n + 1) : ℚ)

end A017671

/-! ## A017671.P12960670775770941815

`A001159(n+1)/A323409(A187829(n+1))`
-/

namespace A017671.P12960670775770941815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001159 (n + 1) : ℚ) / (A323409 (A187829 (n + 1)).toNat : ℚ)

end

end A017671.P12960670775770941815

namespace A017671

/-- `A001159(n+1)/A323409(A187829(n+1))` -/
def P12960670775770941815.Spec : Prop :=
  ∀ n, P12960670775770941815.a n = (A017671 (n + 1) : ℚ)

end A017671

/-!
# A017672: Denominator of sum of -4th powers of divisors of n.

The programs for A017672, there is no canonical definition to state claims against.
-/

/-! ## A017672.P5232812223137892799

`A001222(2^(n+1))²²/A323409(n+1)`
-/

namespace A017672.P5232812223137892799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001222 (2 ^ (n + 1)) ^ 2) ^ 2 : ℚ) / (A323409 (n + 1) : ℚ)

end

end A017672.P5232812223137892799

/-! ## A017672.P6344909060402137159

`(n+1)^3*A319677(A187829(n+1))`
-/

namespace A017672.P6344909060402137159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A319677 (A187829 (n + 1)).toNat

end

end A017672.P6344909060402137159

/-! ## A017672.P5887240325379506876

`A000578(A187829(n+1))*A319677(n+1)`
-/

namespace A017672.P5887240325379506876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A187829 (n + 1)).toNat * A319677 (n + 1)

end

end A017672.P5887240325379506876

/-! ## A017672.P6789414328232811449

`A017680(n+1)/A000583(A187829(n+1))`
-/

namespace A017672.P6789414328232811449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017680 (n + 1) : ℚ) / (A000583 (A187829 (n + 1)).toNat : ℚ)

end

end A017672.P6789414328232811449

/-! ## A017672.P18153008718957530234

`A000583(A187829(n+1))/A323409(n+1)`
-/

namespace A017672.P18153008718957530234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 (A187829 (n + 1)).toNat : ℚ) / (A323409 (n + 1) : ℚ)

end

end A017672.P18153008718957530234

/-!
# A017673: Numerator of sum of -5th powers of divisors of n.

The programs for A017673, the canonical program `A017673.P9522703608986306210` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017673 has offset 1).

The definition of A017673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017673.P9522703608986306210

`∑{d}[n+1, #^5]/gcd(∑{d}[n+1, #^5], ∑{d}[n+1, (#%(n+1))^5])`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017673

/-- `∑{d}[n+1, #^5]/gcd(∑{d}[n+1, #^5], ∑{d}[n+1, (#%(n+1))^5])` -/
def P9522703608986306210.Spec : Prop :=
  ∀ n, P9522703608986306210.a n = (A017673 (n + 1) : ℚ)

end A017673

/-! ## A017673.P3242126175034806359

`A001160(n+1)/gcd(A001160(n+1), A279364(n+1))`
-/

namespace A017673.P3242126175034806359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001160 (n + 1) : ℚ) / (Int.gcd (A001160 (n + 1)) (A279364 (n + 1)) : ℚ)

end

end A017673.P3242126175034806359

namespace A017673

/-- `A001160(n+1)/gcd(A001160(n+1), A279364(n+1))` -/
def P3242126175034806359.Spec : Prop :=
  ∀ n, P3242126175034806359.a n = (A017673 (n + 1) : ℚ)

end A017673

/-! ## A017673.P15209502958776984239

`A001160(n+1)/A000584(n+1)*A017674(n+1)`
-/

namespace A017673.P15209502958776984239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001160 (n + 1) : ℚ) / (A000584 (n + 1) : ℚ) * (A017674 (n + 1) : ℚ)

end

end A017673.P15209502958776984239

namespace A017673

/-- `A001160(n+1)/A000584(n+1)*A017674(n+1)` -/
def P15209502958776984239.Spec : Prop :=
  ∀ n, P15209502958776984239.a n = (A017673 (n + 1) : ℚ)

end A017673

/-! ## A017673.P15483235043891437614

`lcm(A001160(n+1), A067911(n+1))/A067911(n+1)`
-/

namespace A017673.P15483235043891437614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001160 (n + 1)) (A067911 (n + 1)) : ℚ) / (A067911 (n + 1) : ℚ)

end

end A017673.P15483235043891437614

namespace A017673

/-- `lcm(A001160(n+1), A067911(n+1))/A067911(n+1)` -/
def P15483235043891437614.Spec : Prop :=
  ∀ n, P15483235043891437614.a n = (A017673 (n + 1) : ℚ)

end A017673

/-!
# A017674: Denominator of sum of -5th powers of divisors of n.

The programs for A017674, the canonical program `A017674.P17821829466119099200` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017674 has offset 1).

The definition of A017674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017674.P17821829466119099200

`A000584(n+1)/A001160(n+1)*A017673(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017674

/-- `A000584(n+1)/A001160(n+1)*A017673(n+1)` -/
def P17821829466119099200.Spec : Prop :=
  ∀ n, P17821829466119099200.a n = (A017674 (n + 1) : ℚ)

end A017674

/-! ## A017674.P9717168135441604828

`A322264(A055999(n+3)+1)`
-/

namespace A017674.P9717168135441604828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322264 (A055999 (n + 3) + 1).toNat

end

end A017674.P9717168135441604828

namespace A017674

/-- `A322264(A055999(n+3)+1)` -/
def P9717168135441604828.Spec : Prop :=
  ∀ n, P9717168135441604828.a n = A017674 (n + 1)

end A017674

/-! ## A017674.P3067862296817375540

`A017678(n+1)/A000005(2^n)²`
-/

namespace A017674.P3067862296817375540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017678 (n + 1) : ℚ) / (A000005 (2 ^ n) ^ 2 : ℚ)

end

end A017674.P3067862296817375540

namespace A017674

/-- `A017678(n+1)/A000005(2^n)²` -/
def P3067862296817375540.Spec : Prop :=
  ∀ n, P3067862296817375540.a n = (A017674 (n + 1) : ℚ)

end A017674

/-! ## A017674.P6783117572993448621

`A017678(n+1)/A001222(Δ[A048578(n)])²`
-/

namespace A017674.P6783117572993448621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017678 (n + 1) : ℚ) / (A001222 (f1 (n + 1) - f1 n).toNat ^ 2 : ℚ)

end

end A017674.P6783117572993448621

namespace A017674

/-- `A017678(n+1)/A001222(Δ[A048578(n)])²` -/
def P6783117572993448621.Spec : Prop :=
  ∀ n, P6783117572993448621.a n = (A017674 (n + 1) : ℚ)

end A017674

/-! ## A017674.P14055709920398564341

`A000027(A017678(n+1)/(n+1)²)`
-/

namespace A017674.P14055709920398564341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A017678 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ))).toNat

end

end A017674.P14055709920398564341

namespace A017674

/-- `A000027(A017678(n+1)/(n+1)²)` -/
def P14055709920398564341.Spec : Prop :=
  ∀ n, P14055709920398564341.a n = A017674 (n + 1)

end A017674

/-!
# A017675: Numerator of sum of -6th powers of divisors of n.

The programs for A017675, there is no canonical definition to state claims against.
-/

/-! ## A017675.P14306441545326607991

`A013954(n+1)/gcd(A013954(n+1), A017680(n+1))`
-/

namespace A017675.P14306441545326607991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013954 (n + 1) : ℚ) / (Int.gcd (A013954 (n + 1)) (A017680 (n + 1)) : ℚ)

end

end A017675.P14306441545326607991

/-! ## A017675.P8724581718455722311

`A322263(A155212(n+3)+2)`
-/

namespace A017675.P8724581718455722311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322263 (A155212 (n + 3) + 2).toNat

end

end A017675.P8724581718455722311

/-! ## A017675.P4401523932460899841

`A013954(n+1)/A179930(A187829(n+1))`
-/

namespace A017675.P4401523932460899841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013954 (n + 1) : ℚ) / (A179930 (A187829 (n + 1)).toNat : ℚ)

end

end A017675.P4401523932460899841

/-! ## A017675.P10072979565844940920

`∑{d}[n+1, #^6]/A082063(n+1)!!`
-/

namespace A017675.P10072979565844940920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 6 : ℕ) : ℚ) / (Nat.factorial (Nat.factorial (A082063 (n + 1)).toNat) : ℚ)

end

end A017675.P10072979565844940920

/-!
# A017676: Denominator of sum of -6th powers of divisors of n.

The programs for A017676, there is no canonical definition to state claims against.
-/

/-! ## A017676.P15232788703469550481

`A322264(A055999(n+4))`
-/

namespace A017676.P15232788703469550481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322264 (A055999 (n + 4)).toNat

end

end A017676.P15232788703469550481

/-! ## A017676.P10489384645198089810

`A322264(A155212(n+3)+2)`
-/

namespace A017676.P10489384645198089810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322264 (A155212 (n + 3) + 2).toNat

end

end A017676.P10489384645198089810

/-! ## A017676.P16041898133795302024

`A000290((n+1)^3)/A179930(n+1)`
-/

namespace A017676.P16041898133795302024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 ((n + 1) ^ 3) : ℚ) / (A179930 (n + 1) : ℚ)

end

end A017676.P16041898133795302024

/-! ## A017676.P2945392634808289446

`A000583(A187829(n+1))*A017668(n+1)`
-/

namespace A017676.P2945392634808289446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A187829 (n + 1)).toNat * A017668 (n + 1)

end

end A017676.P2945392634808289446

/-! ## A017676.P2962912368847029190

`A001014(A187829(n+1))/A179930(n+1)`
-/

namespace A017676.P2962912368847029190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 (A187829 (n + 1)).toNat : ℚ) / (A179930 (n + 1) : ℚ)

end

end A017676.P2962912368847029190

/-!
# A017677: Numerator of sum of -7th powers of divisors of n.

The programs for A017677, there is no canonical definition to state claims against.
-/

/-! ## A017677.P11399990810575481159

`∑{d}[n+1, #^7]/A132442(A367112(n))`
-/

namespace A017677.P11399990810575481159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 7 : ℕ) : ℚ) / (A132442 (A367112 n).toNat : ℚ)

end

end A017677.P11399990810575481159

/-! ## A017677.P3266790110994749453

`A013955(n+1)/A015096(A244143(n))`
-/

namespace A017677.P3266790110994749453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013955 (n + 1) : ℚ) / (A015096 (A244143 n).toNat : ℚ)

end

end A017677.P3266790110994749453

/-!
# A017678: Denominator of sum of -7th powers of divisors of n.

The programs for A017678, there is no canonical definition to state claims against.
-/

/-! ## A017678.P8692151809382681840

`A017690(n+1)/A000290((n+1)^3)`
-/

namespace A017678.P8692151809382681840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017690 (n + 1) : ℚ) / (A000290 ((n + 1) ^ 3) : ℚ)

end

end A017678.P8692151809382681840

/-! ## A017678.P16373327670860475296

`(n+1)²%A317863(A167614(n+2)+1)*A017674(n+1)`
-/

namespace A017678.P16373327670860475296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A317863 (A167614 (n + 2) + 1).toNat) * A017674 (n + 1)

end

end A017678.P16373327670860475296

/-! ## A017678.P4300980430988869168

`A017674(n+1)*A187046(A000124(n))`
-/

namespace A017678.P4300980430988869168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017674 (n + 1) * A187046 (A000124 n).toNat

end

end A017678.P4300980430988869168

/-! ## A017678.P9827215328029338630

`A135523(A000079(n))²*A017674(n+1)`
-/

namespace A017678.P9827215328029338630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A000079 n).toNat ^ 2 * A017674 (n + 1)

end

end A017678.P9827215328029338630

/-! ## A017678.P6760089791668414707

`A000005(Δ[A000225(n)])²*A017674(n+1)`
-/

namespace A017678.P6760089791668414707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat ^ 2 * A017674 (n + 1)

end

end A017678.P6760089791668414707

/-!
# A017679: Numerator of sum of -8th powers of divisors of n.

The programs for A017679, the canonical program `A017679.P5256545410646879571` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017679 has offset 1).

The definition of A017679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017679.P6453140146753628000

`A013956(n+1)/gcd(A013956(n+1), A017692(n+1))`
-/

namespace A017679.P6453140146753628000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013956 (n + 1) : ℚ) / (Int.gcd (A013956 (n + 1)) (A017692 (n + 1)) : ℚ)

end

end A017679.P6453140146753628000

namespace A017679

/-- `A013956(n+1)/gcd(A013956(n+1), A017692(n+1))` -/
def P6453140146753628000.Spec : Prop :=
  ∀ n, P6453140146753628000.a n = (A017679 (n + 1) : ℚ)

end A017679

/-! ## A017679.P5256545410646879571

`lcm(A013956(n+1), A053167(n+1))/A053167(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A017679

/-- `lcm(A013956(n+1), A053167(n+1))/A053167(n+1)` -/
def P5256545410646879571.Spec : Prop :=
  ∀ n, P5256545410646879571.a n = (A017679 (n + 1) : ℚ)

end A017679

/-! ## A017679.P15418228656228494307

`A013956(n+1)/A333175(A067911(n+1))`
-/

namespace A017679.P15418228656228494307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013956 (n + 1) : ℚ) / (A333175 (A067911 (n + 1)).toNat : ℚ)

end

end A017679.P15418228656228494307

namespace A017679

/-- `A013956(n+1)/A333175(A067911(n+1))` -/
def P15418228656228494307.Spec : Prop :=
  ∀ n, P15418228656228494307.a n = (A017679 (n + 1) : ℚ)

end A017679

/-! ## A017679.P13102490576808475651

`A013956(n+1)/A358105(A339320(n+1))`
-/

namespace A017679.P13102490576808475651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013956 (n + 1) : ℚ) / (A358105 (A339320 (n + 1)).toNat : ℚ)

end

end A017679.P13102490576808475651

namespace A017679

/-- `A013956(n+1)/A358105(A339320(n+1))` -/
def P13102490576808475651.Spec : Prop :=
  ∀ n, P13102490576808475651.a n = (A017679 (n + 1) : ℚ)

end A017679

/-! ## A017679.P3365753043210175820

`record[A351309(n+1)/A046951(A294875(n+1))]`
-/

namespace A017679.P3365753043210175820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351309 (n + 1) : ℚ) / (A046951 (A294875 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017679.P3365753043210175820

namespace A017679

/-- `record[A351309(n+1)/A046951(A294875(n+1))]` -/
def P3365753043210175820.Spec : Prop :=
  ∀ n, P3365753043210175820.a n = (A017679 (n + 1) : ℚ)

end A017679

/-!
# A017680: Denominator of sum of -8th powers of divisors of n.

The programs for A017680, there is no canonical definition to state claims against.
-/

/-! ## A017680.P5414876957834653354

`(n+1)²²*A000027(A017672(n+1))`
-/

namespace A017680.P5414876957834653354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) * A000027 (A017672 (n + 1)).toNat

end

end A017680.P5414876957834653354

/-! ## A017680.P10883484606377522648

`A000027(A017672(n+1))*A000583(n+1)`
-/

namespace A017680.P10883484606377522648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A017672 (n + 1)).toNat * A000583 (n + 1)

end

end A017680.P10883484606377522648

/-! ## A017680.P14644042265356700859

`(A001222(2^(n+1))²²/A323409(n+1))²*A323409(n+1)`
-/

namespace A017680.P14644042265356700859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A001222 (2 ^ (n + 1)) ^ 2) ^ 2 : ℚ) / (A323409 (n + 1) : ℚ)) ^ 2 * (A323409 (n + 1) : ℚ)

end

end A017680.P14644042265356700859

/-! ## A017680.P6300730341032930829

`A000583(A187829(n+1))*A017672(n+1)`
-/

namespace A017680.P6300730341032930829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A187829 (n + 1)).toNat * A017672 (n + 1)

end

end A017680.P6300730341032930829

/-! ## A017680.P16476026054145023354

`A017688(n+1)/A000583(A187829(n+1))`
-/

namespace A017680.P16476026054145023354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017688 (n + 1) : ℚ) / (A000583 (A187829 (n + 1)).toNat : ℚ)

end

end A017680.P16476026054145023354

/-!
# A017682: Denominator of sum of -9th powers of divisors of n.

The programs for A017682, there is no canonical definition to state claims against.
-/

/-! ## A017682.P17361235832957469509

`A073093(7^n)^9`
-/

namespace A017682.P17361235832957469509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (7 ^ n) ^ 9

end

end A017682.P17361235832957469509

/-!
# A017683: Numerator of sum of -10th powers of divisors of n.

The programs for A017683, there is no canonical definition to state claims against.
-/

/-! ## A017683.P3535215113718417988

`∑{d}[n+1, #^10]/A323163(A162548(n))`
-/

namespace A017683.P3535215113718417988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 10 : ℕ) : ℚ) / (A323163 (A162548 n).toNat : ℚ)

end

end A017683.P3535215113718417988

/-! ## A017683.P7455714446500696744

`∑{d}[n+1, #^10]/A252940(A324741(n))`
-/

namespace A017683.P7455714446500696744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 10 : ℕ) : ℚ) / (A252940 (A324741 n).toNat : ℚ)

end

end A017683.P7455714446500696744

/-! ## A017683.P4303833546955998804

`∑{d}[n+1, #^10]/A000002(A344219(n+1))`
-/

namespace A017683.P4303833546955998804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 10 : ℕ) : ℚ) / (A000002 (A344219 (n + 1)).toNat : ℚ)

end

end A017683.P4303833546955998804

/-! ## A017683.P11461531403470214566

`A013958(n+1)/A006466(A038205(n))`
-/

namespace A017683.P11461531403470214566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013958 (n + 1) : ℚ) / (A006466 (A038205 n).toNat : ℚ)

end

end A017683.P11461531403470214566

/-! ## A017683.P5461416807441909944

`A013958(n+1)/A138904(A000170(n))`
-/

namespace A017683.P5461416807441909944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013958 (n + 1) : ℚ) / (A138904 (A000170 n).toNat : ℚ)

end

end A017683.P5461416807441909944

/-!
# A017684: Denominator of sum of -10th powers of divisors of n.

The programs for A017684, there is no canonical definition to state claims against.
-/

/-! ## A017684.P3661017063970570603

`(n+1)^10/A336722(A054362(n))`
-/

namespace A017684.P3661017063970570603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 10 : ℚ) / (A336722 (A054362 n).toNat : ℚ)

end

end A017684.P3661017063970570603

/-! ## A017684.P13712679550678285647

`A008454(n+1)/A030599(A015443(n))`
-/

namespace A017684.P13712679550678285647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008454 (n + 1) : ℚ) / (A030599 (A015443 n).toNat : ℚ)

end

end A017684.P13712679550678285647

/-! ## A017684.P5230339728110467833

`A008454(A032555(n+1))/A277873(n)`
-/

namespace A017684.P5230339728110467833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008454 (A032555 (n + 1)).toNat : ℚ) / (A277873 n : ℚ)

end

end A017684.P5230339728110467833

/-! ## A017684.P5362883638712637913

`A008454(A078213(n+1))/A277873(n)`
-/

namespace A017684.P5362883638712637913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008454 (A078213 (n + 1)).toNat : ℚ) / (A277873 n : ℚ)

end

end A017684.P5362883638712637913

/-!
# A017685: Numerator of sum of -11th powers of divisors of n.

The programs for A017685, there is no canonical definition to state claims against.
-/

/-! ## A017685.P13159476306115747053

`A013959(n+1)/A189225(A286024(n))`
-/

namespace A017685.P13159476306115747053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013959 (n + 1) : ℚ) / (A189225 (A286024 n).toNat : ℚ)

end

end A017685.P13159476306115747053

/-! ## A017685.P2222177764622061254

`∑{d}[n+1, #^11]/A048996(A205568(2*n+1))`
-/

namespace A017685.P2222177764622061254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 11 : ℕ) : ℚ) / (A048996 (A205568 (2 * n + 1)).toNat : ℚ)

end

end A017685.P2222177764622061254

/-!
# A017686: Denominator of sum of -11th powers of divisors of n.

The programs for A017686, there is no canonical definition to state claims against.
-/

/-! ## A017686.P1078263787605941995

`A017702(n+1)/record[A020703(n+1)²²]`
-/

namespace A017686.P1078263787605941995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020703 (n + 1) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017702 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A017686.P1078263787605941995

/-! ## A017686.P11211277435046653438

`A000027((n+1)²²)*A017678(n+1)`
-/

namespace A017686.P11211277435046653438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((n + 1) ^ 2) ^ 2) * A017678 (n + 1)

end

end A017686.P11211277435046653438

/-! ## A017686.P15468765827518440419

`A123726(A007283(n))²*A017678(n+1)`
-/

namespace A017686.P15468765827518440419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 (A007283 n).toNat ^ 2 * A017678 (n + 1)

end

end A017686.P15468765827518440419

/-! ## A017686.P5640099671726304961

`A017690(n+1)/A325012(A000124(n))`
-/

namespace A017686.P5640099671726304961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017690 (n + 1) : ℚ) / (A325012 (A000124 n).toNat : ℚ)

end

end A017686.P5640099671726304961

/-! ## A017686.P5756210519906986034

`∑[2*n+1]^A020639(A014345(n))*A017678(n+1)`
-/

namespace A017686.P5756210519906986034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A020639 (A014345 n).toNat : ℤ) * (A017678 (n + 1) : ℚ)

end

end A017686.P5756210519906986034

/-!
# A017687: Numerator of sum of -12th powers of divisors of n.

The programs for A017687, there is no canonical definition to state claims against.
-/

/-! ## A017687.P18348083701443572242

`A013960(n+1)/gcd(A013960(n+1), A017684(n+1))`
-/

namespace A017687.P18348083701443572242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013960 (n + 1) : ℚ) / (Int.gcd (A013960 (n + 1)) (A017684 (n + 1)) : ℚ)

end

end A017687.P18348083701443572242

/-! ## A017687.P3578534556458477435

`A013960(n+1)/A053164(A007837(n))`
-/

namespace A017687.P3578534556458477435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013960 (n + 1) : ℚ) / (A053164 (A007837 n).toNat : ℚ)

end

end A017687.P3578534556458477435

/-! ## A017687.P14832954083307093275

`A013960(n+1)/A051903(A237930(n))`
-/

namespace A017687.P14832954083307093275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013960 (n + 1) : ℚ) / (A051903 (A237930 n).toNat : ℚ)

end

end A017687.P14832954083307093275

/-! ## A017687.P13330538728000068135

`∑{d}[n+1, #^12]/A318809(lcm(1-(4/2+n), ∏{p}[n+1, #²]))`
-/

namespace A017687.P13330538728000068135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 12 : ℕ) : ℚ) / (A318809 (Int.lcm (SequenceMachineLib.roundAway (1 - ((4 : ℚ) / 2 + (n : ℚ)))) ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℤ)) : ℚ)

end

end A017687.P13330538728000068135

/-! ## A017687.P18099633351027818929

`∑{d}[n+1, #^12]/A046951(A051295(n))`
-/

namespace A017687.P18099633351027818929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 12 : ℕ) : ℚ) / (A046951 (A051295 n).toNat : ℚ)

end

end A017687.P18099633351027818929

/-!
# A017688: Denominator of sum of -12th powers of divisors of n.

The programs for A017688, there is no canonical definition to state claims against.
-/

/-! ## A017688.P12279187511723641220

`A000583(A187829(n+1))*A017680(n+1)`
-/

namespace A017688.P12279187511723641220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A187829 (n + 1)).toNat * A017680 (n + 1)

end

end A017688.P12279187511723641220

/-! ## A017688.P15627894061931898124

`A000583(A187829(n+1)²)*A017672(n+1)`
-/

namespace A017688.P15627894061931898124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A187829 (n + 1) ^ 2).toNat * A017672 (n + 1)

end

end A017688.P15627894061931898124

/-! ## A017688.P10685906773822397305

`A008456(n+1)/A050361(A057351(n+1))`
-/

namespace A017688.P10685906773822397305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008456 (n + 1) : ℚ) / (A050361 (A057351 (n + 1)).toNat : ℚ)

end

end A017688.P10685906773822397305

/-! ## A017688.P14739716369702743613

`A000583((n+1)²)*A332883(A000583(n+1))`
-/

namespace A017688.P14739716369702743613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 ((n + 1) ^ 2) * A332883 (A000583 (n + 1)).toNat

end

end A017688.P14739716369702743613

/-! ## A017688.P14900265368248689361

`A000578((n+1)^4)/A259936(n+1)`
-/

namespace A017688.P14900265368248689361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 ((n + 1) ^ 4) : ℚ) / (A259936 (n + 1) : ℚ)

end

end A017688.P14900265368248689361

/-!
# A017689: Numerator of sum of -13th powers of divisors of n.

The programs for A017689, there is no canonical definition to state claims against.
-/

/-! ## A017689.P9567234968842584309

`A013961(n+1)/A000072(A375558(n))`
-/

namespace A017689.P9567234968842584309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013961 (n + 1) : ℚ) / (A000072 (A375558 n).toNat : ℚ)

end

end A017689.P9567234968842584309

/-! ## A017689.P1810870584963772960

`A013961(n+1)/A157383(A350010(n+1))`
-/

namespace A017689.P1810870584963772960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013961 (n + 1) : ℚ) / (A157383 (A350010 (n + 1)).toNat : ℚ)

end

end A017689.P1810870584963772960

/-!
# A017690: Denominator of sum of -13th powers of divisors of n.

The programs for A017690, there is no canonical definition to state claims against.
-/

/-! ## A017690.P499663046780298680

`record[A020703(n+1)]*A017686(n+1)`
-/

namespace A017690.P499663046780298680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A017686 (n + 1)

end

end A017690.P499663046780298680

/-! ## A017690.P11908903951279399068

`A017686(n+1)*A048761(A002522(n))`
-/

namespace A017690.P11908903951279399068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017686 (n + 1) * A048761 (A002522 n).toNat

end

end A017690.P11908903951279399068

/-! ## A017690.P9940191101355169032

`A004526(∑[A016825(n)])*A017686(n+1)`
-/

namespace A017690.P9940191101355169032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A017686 (n + 1)

end

end A017690.P9940191101355169032

/-! ## A017690.P4438714809539637223

`A017686(n+1)*A246277(∑[A016825(n)])`
-/

namespace A017690.P4438714809539637223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017686 (n + 1) * A246277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A017690.P4438714809539637223

/-! ## A017690.P14277773991759917100

`A003963(A011757(n+1))*A017686(n+1)`
-/

namespace A017690.P14277773991759917100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A011757 (n + 1)).toNat * A017686 (n + 1)

end

end A017690.P14277773991759917100

/-!
# A017691: Numerator of sum of -14th powers of divisors of n.

The programs for A017691, there is no canonical definition to state claims against.
-/

/-! ## A017691.P8607674531475957881

`∑{d}[n+1, #^14]/A340034(A032555(n+1))`
-/

namespace A017691.P8607674531475957881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 14 : ℕ) : ℚ) / (A340034 (A032555 (n + 1)).toNat : ℚ)

end

end A017691.P8607674531475957881

/-! ## A017691.P2607471259166922481

`A013962(n+1)/A110141(A375558(n))`
-/

namespace A017691.P2607471259166922481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013962 (n + 1) : ℚ) / (A110141 (A375558 n).toNat : ℚ)

end

end A017691.P2607471259166922481

/-! ## A017691.P3782330312945248046

`A013962(n+1)/A111616(A133900(n+1))`
-/

namespace A017691.P3782330312945248046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013962 (n + 1) : ℚ) / (A111616 (A133900 (n + 1)).toNat : ℚ)

end

end A017691.P3782330312945248046

/-! ## A017691.P9003440493426203138

`A013962(n+1)/A329314(A001037(n+1))`
-/

namespace A017691.P9003440493426203138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013962 (n + 1) : ℚ) / (A329314 (A001037 (n + 1)).toNat : ℚ)

end

end A017691.P9003440493426203138

/-! ## A017691.P1329913942875435387

`A013962(n+1)/A329314(A059966(n+1))`
-/

namespace A017691.P1329913942875435387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013962 (n + 1) : ℚ) / (A329314 (A059966 (n + 1)).toNat : ℚ)

end

end A017691.P1329913942875435387

/-!
# A017692: Denominator of sum of -14th powers of divisors of n.

The programs for A017692, there is no canonical definition to state claims against.
-/

/-! ## A017692.P17695734957225808950

`A000583(A000583(n+1))/A133900(n+1)`
-/

namespace A017692.P17695734957225808950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 (A000583 (n + 1)).toNat : ℚ) / (A133900 (n + 1) : ℚ)

end

end A017692.P17695734957225808950

/-! ## A017692.P11907694171645859104

`A008456(A032555(n+1))/A345938(n+1)*A034894(n)²`
-/

namespace A017692.P11907694171645859104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008456 (A032555 (n + 1)).toNat : ℚ) / (A345938 (n + 1) : ℚ) * (A034894 n ^ 2 : ℚ)

end

end A017692.P11907694171645859104

/-! ## A017692.P4247625503446429319

`A008455(A032559(n+1))*A235602(n+1)*A000027(n+1)²`
-/

namespace A017692.P4247625503446429319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A032559 (n + 1)).toNat * A235602 (n + 1) * A000027 (n + 1) ^ 2

end

end A017692.P4247625503446429319

/-! ## A017692.P13177920564084506261

`A008455(A032559(n+1))*A235602(n+1)*A044917(n+1)²`
-/

namespace A017692.P13177920564084506261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A032559 (n + 1)).toNat * A235602 (n + 1) * A044917 (n + 1) ^ 2

end

end A017692.P13177920564084506261

/-! ## A017692.P16986498203823569366

`A008455(A032559(n+1))*A235602(n+1)*A276142(n+1)²`
-/

namespace A017692.P16986498203823569366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A032559 (n + 1)).toNat * A235602 (n + 1) * A276142 (n + 1) ^ 2

end

end A017692.P16986498203823569366

/-!
# A017693: Numerator of sum of -15th powers of divisors of n.

The programs for A017693, there is no canonical definition to state claims against.
-/

/-! ## A017693.P16815800655213006452

`A013963(n+1)/A191525(A111297(n))`
-/

namespace A017693.P16815800655213006452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013963 (n + 1) : ℚ) / (A191525 (A111297 n).toNat : ℚ)

end

end A017693.P16815800655213006452

/-!
# A017694: Denominator of sum of -15th powers of divisors of n.

The programs for A017694, there is no canonical definition to state claims against.
-/

/-! ## A017694.P14720112133187264606

`A017670((n+1)²²)*A017670(n+1)`
-/

namespace A017694.P14720112133187264606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017670 (((n + 1) ^ 2) ^ 2) * A017670 (n + 1)

end

end A017694.P14720112133187264606

/-! ## A017694.P17401673048140390248

`A017670(n+1)^A092101(A179930(n+1))`
-/

namespace A017694.P17401673048140390248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017670 (n + 1) : ℚ) ^ (A092101 (A179930 (n + 1)).toNat : ℤ)

end

end A017694.P17401673048140390248

/-! ## A017694.P8512511154755918103

`(n+1)^A342400(A098194(n+1))`
-/

namespace A017694.P8512511154755918103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A342400 (A098194 (n + 1)).toNat : ℤ)

end

end A017694.P8512511154755918103

/-! ## A017694.P18283025701922947748

`A250246(n+1)^A115408(A264097(n))`
-/

namespace A017694.P18283025701922947748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) ^ (A115408 (A264097 n).toNat : ℤ)

end

end A017694.P18283025701922947748

/-!
# A017695: Numerator of sum of -16th powers of divisors of n.

The programs for A017695, there is no canonical definition to state claims against.
-/

/-! ## A017695.P13404243087043060141

`record[A351314(n+1)/A111616(n+1)]`
-/

namespace A017695.P13404243087043060141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351314 (n + 1) : ℚ) / (A111616 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017695.P13404243087043060141

/-! ## A017695.P644163835731840994

`∑{d}[n+1, #^16]/A318809(lcm(1-(4/2+n), ∏{p}[n+1, #²]))`
-/

namespace A017695.P644163835731840994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 16 : ℕ) : ℚ) / (A318809 (Int.lcm (SequenceMachineLib.roundAway (1 - ((4 : ℚ) / 2 + (n : ℚ)))) ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℤ)) : ℚ)

end

end A017695.P644163835731840994

/-! ## A017695.P9612438579781779692

`∑{d}[n+1, #^16]/A046951(A051295(n))`
-/

namespace A017695.P9612438579781779692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 16 : ℕ) : ℚ) / (A046951 (A051295 n).toNat : ℚ)

end

end A017695.P9612438579781779692

/-! ## A017695.P12753836316262106846

`A013964(n+1)/A309004(A042117(n))`
-/

namespace A017695.P12753836316262106846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013964 (n + 1) : ℚ) / (A309004 (A042117 n).toNat : ℚ)

end

end A017695.P12753836316262106846

/-!
# A017696: Denominator of sum of -16th powers of divisors of n.

The programs for A017696, there is no canonical definition to state claims against.
-/

/-! ## A017696.P17418007440874499697

`A000583(A187829(n+1))*A017688(n+1)`
-/

namespace A017696.P17418007440874499697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A187829 (n + 1)).toNat * A017688 (n + 1)

end

end A017696.P17418007440874499697

/-! ## A017696.P324827388080057709

`A000583(A187829(n+1)²)*A017680(n+1)`
-/

namespace A017696.P324827388080057709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A187829 (n + 1) ^ 2).toNat * A017680 (n + 1)

end

end A017696.P324827388080057709

/-! ## A017696.P14160002962837242476

`A000583(A077168(n))*A017688(n+1)`
-/

namespace A017696.P14160002962837242476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A077168 n).toNat * A017688 (n + 1)

end

end A017696.P14160002962837242476

/-! ## A017696.P8827709988827414778

`A008456(A034894(n))*A217434((n+1)^4)`
-/

namespace A017696.P8827709988827414778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A034894 n).toNat * A217434 ((n + 1) ^ 4)

end

end A017696.P8827709988827414778

/-! ## A017696.P5085945095359058695

`A008456(A246086(n+1))*A217434((n+1)^4)`
-/

namespace A017696.P5085945095359058695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A246086 (n + 1)).toNat * A217434 ((n + 1) ^ 4)

end

end A017696.P5085945095359058695

/-!
# A017697: Numerator of sum of -17th powers of divisors of n.

The programs for A017697, there is no canonical definition to state claims against.
-/

/-! ## A017697.P9117175833193157438

`A013965(n+1)/A000072(A375558(n))`
-/

namespace A017697.P9117175833193157438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013965 (n + 1) : ℚ) / (A000072 (A375558 n).toNat : ℚ)

end

end A017697.P9117175833193157438

/-! ## A017697.P12481719121345003252

`A013965(n+1)/A337798(A143815(n))`
-/

namespace A017697.P12481719121345003252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013965 (n + 1) : ℚ) / (A337798 (A143815 n).toNat : ℚ)

end

end A017697.P12481719121345003252

/-!
# A017698: Denominator of sum of -17th powers of divisors of n.

The programs for A017698, there is no canonical definition to state claims against.
-/

/-! ## A017698.P11254816670909640834

`A017702(n+1)/record[A020703(n+1)]`
-/

namespace A017698.P11254816670909640834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017702 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A017698.P11254816670909640834

/-! ## A017698.P11471088992754932511

`A000290(A000290(n+1))*A017690(n+1)`
-/

namespace A017698.P11471088992754932511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000290 (n + 1)).toNat * A017690 (n + 1)

end

end A017698.P11471088992754932511

/-! ## A017698.P16863080316287947121

`A017702(n+1)/A325012(A000124(n))`
-/

namespace A017698.P16863080316287947121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017702 (n + 1) : ℚ) / (A325012 (A000124 n).toNat : ℚ)

end

end A017698.P16863080316287947121

/-! ## A017698.P12917167165041888882

`A325012(A000124(n))²*A017690(n+1)`
-/

namespace A017698.P12917167165041888882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325012 (A000124 n).toNat ^ 2 * A017690 (n + 1)

end

end A017698.P12917167165041888882

/-! ## A017698.P6296156504436279690

`A000583(A000583(n+1))/A124279(n+2)*A332883(n+1)`
-/

namespace A017698.P6296156504436279690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 (A000583 (n + 1)).toNat : ℚ) / (A124279 (n + 2) : ℚ) * (A332883 (n + 1) : ℚ)

end

end A017698.P6296156504436279690

/-!
# A017699: Numerator of sum of -18th powers of divisors of n.

The programs for A017699, there is no canonical definition to state claims against.
-/

/-! ## A017699.P17936390425371292258

`record[A351315(n+1)/A351202(n+1)]`
-/

namespace A017699.P17936390425371292258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351315 (n + 1) : ℚ) / (A351202 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017699.P17936390425371292258

/-! ## A017699.P11864461110014338991

`A013966(n+1)/A002186(A029526(n+1))`
-/

namespace A017699.P11864461110014338991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013966 (n + 1) : ℚ) / (A002186 (A029526 (n + 1)).toNat : ℚ)

end

end A017699.P11864461110014338991

/-! ## A017699.P4787707930085681296

`A013966(n+1)/A177704(A013991(n))`
-/

namespace A017699.P4787707930085681296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013966 (n + 1) : ℚ) / (A177704 (A013991 n).toNat : ℚ)

end

end A017699.P4787707930085681296

