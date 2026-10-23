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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C002
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A050500: Integer part of n/log(n).

The programs for A050500, the canonical program `A050500.P1188964391671252454` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050500 has offset 2).

The definition of A050500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050500.P1188964391671252454

`floor((n+2)/log(n+2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050500

/-- `floor((n+2)/log(n+2))` -/
def P1188964391671252454.Spec : Prop :=
  ∀ n, P1188964391671252454.a n = A050500 (n + 2)

theorem P1188964391671252454.correct : P1188964391671252454.Spec := by
  intro n
  simp only [A050500, Nat.add_sub_cancel]

end A050500

/-! ## A050500.P15867472602203529388

`A050501(n+2)-1`
-/

namespace A050500.P15867472602203529388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050501 (n + 2) - 1

end

end A050500.P15867472602203529388

namespace A050500

/-- `A050501(n+2)-1` -/
def P15867472602203529388.Spec : Prop :=
  ∀ n, P15867472602203529388.a n = A050500 (n + 2)

end A050500

/-! ## A050500.P5214475599586638940

`A000027(ceil((n+2)/log(n+2))-1)`
-/

namespace A050500.P5214475599586638940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌈(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌉ - 1).toNat

end

end A050500.P5214475599586638940

namespace A050500

/-- `A000027(ceil((n+2)/log(n+2))-1)` -/
def P5214475599586638940.Spec : Prop :=
  ∀ n, P5214475599586638940.a n = A050500 (n + 2)

end A050500

/-! ## A050500.P7846171115093427323

`A020725(ceil((n+2)/log(n+2))-2)`
-/

namespace A050500.P7846171115093427323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (⌈(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌉ - 2).toNat

end

end A050500.P7846171115093427323

namespace A050500

/-- `A020725(ceil((n+2)/log(n+2))-2)` -/
def P7846171115093427323.Spec : Prop :=
  ∀ n, P7846171115093427323.a n = A050500 (n + 2)

end A050500

/-! ## A050500.P9198369104986813191

`A000720(xor(1, A000040(A050501(n+2))))`
-/

namespace A050500.P9198369104986813191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A000040 (A050501 (n + 2)).toNat)).toNat

end

end A050500.P9198369104986813191

namespace A050500

/-- `A000720(xor(1, A000040(A050501(n+2))))` -/
def P9198369104986813191.Spec : Prop :=
  ∀ n, P9198369104986813191.a n = A050500 (n + 2)

end A050500

/-! ## A050500.P2799022100448399599

`A233583(A050501(n+2))`
-/

namespace A050500.P2799022100448399599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A050501 (n + 2)).toNat

end

end A050500.P2799022100448399599

namespace A050500

/-- `A233583(A050501(n+2))` -/
def P2799022100448399599.Spec : Prop :=
  ∀ n, P2799022100448399599.a n = A050500 (n + 2)

end A050500

/-! ## A050500.P11487529277315707599

`A003056(A008619(A050501(n+2)²))`
-/

namespace A050500.P11487529277315707599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A008619 (A050501 (n + 2) ^ 2).toNat).toNat

end

end A050500.P11487529277315707599

namespace A050500

/-- `A003056(A008619(A050501(n+2)²))` -/
def P11487529277315707599.Spec : Prop :=
  ∀ n, P11487529277315707599.a n = A050500 (n + 2)

end A050500

/-! ## A050500.P17827678013699025863

`A079782(n+1)%A050501(n+2)`
-/

namespace A050500.P17827678013699025863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A050501 (n + 2))

end

end A050500.P17827678013699025863

namespace A050500

/-- `A079782(n+1)%A050501(n+2)` -/
def P17827678013699025863.Spec : Prop :=
  ∀ n, P17827678013699025863.a n = A050500 (n + 2)

end A050500

/-! ## A050500.P15398533065468410191

`A273883(A050501(n+2))%A166046(n)`
-/

namespace A050500.P15398533065468410191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273883 (A050501 (n + 2)).toNat) (A166046 n)

end

end A050500.P15398533065468410191

namespace A050500

/-- `A273883(A050501(n+2))%A166046(n)` -/
def P15398533065468410191.Spec : Prop :=
  ∀ n, P15398533065468410191.a n = A050500 (n + 2)

end A050500

/-!
# A050501: a(n) = ceiling(n/log(n)).

The programs for A050501, the canonical program `A050501.P9725214682591786112` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050501 has offset 2).

The definition of A050501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+2)/log(n+2))` (program `A050501.P9725214682591786112`, by `A050501.P9725214682591786112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050501.P9725214682591786112

`ceil((n+2)/log(n+2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050501

/-- `ceil((n+2)/log(n+2))` -/
def P9725214682591786112.Spec : Prop :=
  ∀ n, P9725214682591786112.a n = A050501 (n + 2)

theorem P9725214682591786112.correct : P9725214682591786112.Spec := by
  intro n
  simp only [A050501, Nat.add_sub_cancel]

end A050501

/-! ## A050501.P1859591935711021386

`-xor(-1, floor((n+2)/log(n+2)))`
-/

namespace A050501.P1859591935711021386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A050501.P1859591935711021386

namespace A050501

/-- `-xor(-1, floor((n+2)/log(n+2)))` -/
def P1859591935711021386.Spec : Prop :=
  ∀ n, P1859591935711021386.a n = A050501 (n + 2)

end A050501

/-! ## A050501.P2320053573466404269

`floor((n+2)/log(n+2))+C(2, n+2)!`
-/

namespace A050501.P2320053573466404269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋ + (Nat.factorial (Nat.choose 2 (n + 2)) : ℤ)

end

end A050501.P2320053573466404269

namespace A050501

/-- `floor((n+2)/log(n+2))+C(2, n+2)!` -/
def P2320053573466404269.Spec : Prop :=
  ∀ n, P2320053573466404269.a n = A050501 (n + 2)

end A050501

/-! ## A050501.P7535342915321490024

`A050500(n+2)+1`
-/

namespace A050501.P7535342915321490024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (n + 2) + 1

end

end A050501.P7535342915321490024

namespace A050501

/-- `A050500(n+2)+1` -/
def P7535342915321490024.Spec : Prop :=
  ∀ n, P7535342915321490024.a n = A050501 (n + 2)

end A050501

/-! ## A050501.P16060059716992101341

`A000027(floor((n+2)/log(n+2))+1)`
-/

namespace A050501.P16060059716992101341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋ + 1).toNat

end

end A050501.P16060059716992101341

namespace A050501

/-- `A000027(floor((n+2)/log(n+2))+1)` -/
def P16060059716992101341.Spec : Prop :=
  ∀ n, P16060059716992101341.a n = A050501 (n + 2)

end A050501

/-! ## A050501.P5720449492986088146

`floor((n+2)/log(n+2))+A007318(C(2, n+2))`
-/

namespace A050501.P5720449492986088146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋ + A007318 (Nat.choose 2 (n + 2))

end

end A050501.P5720449492986088146

namespace A050501

/-- `floor((n+2)/log(n+2))+A007318(C(2, n+2))` -/
def P5720449492986088146.Spec : Prop :=
  ∀ n, P5720449492986088146.a n = A050501 (n + 2)

end A050501

/-! ## A050501.P12164134200355640647

`A013615(C(2, n+2))+floor((n+2)/log(n+2))`
-/

namespace A050501.P12164134200355640647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 (Nat.choose 2 (n + 2)) + ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A050501.P12164134200355640647

namespace A050501

/-- `A013615(C(2, n+2))+floor((n+2)/log(n+2))` -/
def P12164134200355640647.Spec : Prop :=
  ∀ n, P12164134200355640647.a n = A050501 (n + 2)

end A050501

/-! ## A050501.P14637525516786103205

`A017910(C(2, n+2))+floor((n+2)/log(n+2))`
-/

namespace A050501.P14637525516786103205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (Nat.choose 2 (n + 2)) + ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A050501.P14637525516786103205

namespace A050501

/-- `A017910(C(2, n+2))+floor((n+2)/log(n+2))` -/
def P14637525516786103205.Spec : Prop :=
  ∀ n, P14637525516786103205.a n = A050501 (n + 2)

end A050501

/-! ## A050501.P9840063455180469385

`A020725(A050500(n+2))`
-/

namespace A050501.P9840063455180469385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A050500 (n + 2)).toNat

end

end A050501.P9840063455180469385

namespace A050501

/-- `A020725(A050500(n+2))` -/
def P9840063455180469385.Spec : Prop :=
  ∀ n, P9840063455180469385.a n = A050501 (n + 2)

end A050501

/-! ## A050501.P8793263616983253333

`char[A004442(n)]+floor((n+2)/log(n+2))`
-/

namespace A050501.P8793263616983253333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A050501.P8793263616983253333

namespace A050501

/-- `char[A004442(n)]+floor((n+2)/log(n+2))` -/
def P8793263616983253333.Spec : Prop :=
  ∀ n, P8793263616983253333.a n = A050501 (n + 2)

end A050501

/-!
# A050502: a(n) = ceiling(n*log(n)).

The programs for A050502, the canonical program `A050502.P8059689843118801007` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050502 has offset 1).

The definition of A050502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)*log(n+1))` (program `A050502.P8059689843118801007`, by `A050502.P8059689843118801007.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050502.P8059689843118801007

`ceil((n+1)*log(n+1))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050502

/-- `ceil((n+1)*log(n+1))` -/
def P8059689843118801007.Spec : Prop :=
  ∀ n, P8059689843118801007.a n = A050502 (n + 1)

theorem P8059689843118801007.correct : P8059689843118801007.Spec := by
  intro n
  simp only [A050502, Nat.add_sub_cancel]

end A050502

/-! ## A050502.P11986876054437999808

`floor((n+1)*(acot(n+1)+log(n+1)))`
-/

namespace A050502.P11986876054437999808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (SequenceMachineLib.acot (n + 1 : ℝ) + Real.log (n + 1 : ℝ))⌋

end

end A050502.P11986876054437999808

namespace A050502

/-- `floor((n+1)*(acot(n+1)+log(n+1)))` -/
def P11986876054437999808.Spec : Prop :=
  ∀ n, P11986876054437999808.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P8865864664049883480

`(A050504(n+1)+1)%(n+1)²`
-/

namespace A050502.P8865864664049883480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050504 (n + 1) + 1) ((n + 1) ^ 2 : ℤ)

end

end A050502.P8865864664049883480

namespace A050502

/-- `(A050504(n+1)+1)%(n+1)²` -/
def P8865864664049883480.Spec : Prop :=
  ∀ n, P8865864664049883480.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P13437815820786565455

`A057427(n)+floor((n+1)*log(n+1))`
-/

namespace A050502.P13437815820786565455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ⌊(n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌋

end

end A050502.P13437815820786565455

namespace A050502

/-- `A057427(n)+floor((n+1)*log(n+1))` -/
def P13437815820786565455.Spec : Prop :=
  ∀ n, P13437815820786565455.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P16249398196670013074

`A050504(n+1)-A057428(n)`
-/

namespace A050502.P16249398196670013074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1) - A057428 n

end

end A050502.P16249398196670013074

namespace A050502

/-- `A050504(n+1)-A057428(n)` -/
def P16249398196670013074.Spec : Prop :=
  ∀ n, P16249398196670013074.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P6190398013452417891

`A050504(n+1)+A070747(n)²`
-/

namespace A050502.P6190398013452417891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1) + A070747 n ^ 2

end

end A050502.P6190398013452417891

namespace A050502

/-- `A050504(n+1)+A070747(n)²` -/
def P6190398013452417891.Spec : Prop :=
  ∀ n, P6190398013452417891.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P8847344804472381620

`Δ[A007504(n)]-A059111(n+1)`
-/

namespace A050502.P8847344804472381620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A059111 (n + 1)

end

end A050502.P8847344804472381620

namespace A050502

/-- `Δ[A007504(n)]-A059111(n+1)` -/
def P8847344804472381620.Spec : Prop :=
  ∀ n, P8847344804472381620.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P7633469105815271424

`A050504(n+1)+1-A000007(n)`
-/

namespace A050502.P7633469105815271424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1) + (1 - A000007 n)

end

end A050502.P7633469105815271424

namespace A050502

/-- `A050504(n+1)+1-A000007(n)` -/
def P7633469105815271424.Spec : Prop :=
  ∀ n, P7633469105815271424.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P493035561989986708

`A000040(n+1)-A059111(n+1)`
-/

namespace A050502.P493035561989986708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A059111 (n + 1)

end

end A050502.P493035561989986708

namespace A050502

/-- `A000040(n+1)-A059111(n+1)` -/
def P493035561989986708.Spec : Prop :=
  ∀ n, P493035561989986708.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P2130530864336813697

`A050504(n+1)+n/A028310(n)`
-/

namespace A050502.P2130530864336813697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050504 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A050502.P2130530864336813697

namespace A050502

/-- `A050504(n+1)+n/A028310(n)` -/
def P2130530864336813697.Spec : Prop :=
  ∀ n, P2130530864336813697.a n = (A050502 (n + 1) : ℚ)

end A050502

/-! ## A050502.P6191996497045962491

`A050504(n+1)+A000040(n+1)%2`
-/

namespace A050502.P6191996497045962491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A050502.P6191996497045962491

namespace A050502

/-- `A050504(n+1)+A000040(n+1)%2` -/
def P6191996497045962491.Spec : Prop :=
  ∀ n, P6191996497045962491.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P18370499233151707216

`A050504(n+1)+A000045(round(n/(n+1)))`
-/

namespace A050502.P18370499233151707216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1) + A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A050502.P18370499233151707216

namespace A050502

/-- `A050504(n+1)+A000045(round(n/(n+1)))` -/
def P18370499233151707216.Spec : Prop :=
  ∀ n, P18370499233151707216.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P7787367899384918899

`A305079(A020639(n+1))+A050504(n+1)`
-/

namespace A050502.P7787367899384918899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A020639 (n + 1)).toNat + A050504 (n + 1)

end

end A050502.P7787367899384918899

namespace A050502

/-- `A305079(A020639(n+1))+A050504(n+1)` -/
def P7787367899384918899.Spec : Prop :=
  ∀ n, P7787367899384918899.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P11295246472347568282

`A050503(n+1)+A064659(n+1)-A059111(n+1)`
-/

namespace A050502.P11295246472347568282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050503 (n + 1) + (A064659 (n + 1) - A059111 (n + 1))

end

end A050502.P11295246472347568282

namespace A050502

/-- `A050503(n+1)+A064659(n+1)-A059111(n+1)` -/
def P11295246472347568282.Spec : Prop :=
  ∀ n, P11295246472347568282.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P5219328235768467264

`A050504(n+1)+A000007(A000007(n)*A036234(n+1))`
-/

namespace A050502.P5219328235768467264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1) + A000007 (A000007 n * A036234 (n + 1)).toNat

end

end A050502.P5219328235768467264

namespace A050502

/-- `A050504(n+1)+A000007(A000007(n)*A036234(n+1))` -/
def P5219328235768467264.Spec : Prop :=
  ∀ n, P5219328235768467264.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P3188790251520464143

`A050504(n+1)+A000007(A000007(n)/A036234(n+1))`
-/

namespace A050502.P3188790251520464143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1) + A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A036234 (n + 1) : ℚ))).toNat

end

end A050502.P3188790251520464143

namespace A050502

/-- `A050504(n+1)+A000007(A000007(n)/A036234(n+1))` -/
def P3188790251520464143.Spec : Prop :=
  ∀ n, P3188790251520464143.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P4541435366108447685

`record[A006530(n+2)]-A059111(n+1)`
-/

namespace A050502.P4541435366108447685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A059111 (n + 1)

end

end A050502.P4541435366108447685

namespace A050502

/-- `record[A006530(n+2)]-A059111(n+1)` -/
def P4541435366108447685.Spec : Prop :=
  ∀ n, P4541435366108447685.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P1527807078202304246

`p?[A000026(n+1)]-A059111(n+1)`
-/

namespace A050502.P1527807078202304246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A059111 (n + 1)

end

end A050502.P1527807078202304246

namespace A050502

/-- `p?[A000026(n+1)]-A059111(n+1)` -/
def P1527807078202304246.Spec : Prop :=
  ∀ n, P1527807078202304246.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P18146727394109180521

`p?[n-A000463(n+1)]-A059111(n+1)`
-/

namespace A050502.P18146727394109180521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A059111 (n + 1)

end

end A050502.P18146727394109180521

namespace A050502

/-- `p?[n-A000463(n+1)]-A059111(n+1)` -/
def P18146727394109180521.Spec : Prop :=
  ∀ n, P18146727394109180521.a n = A050502 (n + 1)

end A050502

/-! ## A050502.P2337503392929083215

`p?[A000463(n+1)]-A059111(n+1)`
-/

namespace A050502.P2337503392929083215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A059111 (n + 1)

end

end A050502.P2337503392929083215

namespace A050502

/-- `p?[A000463(n+1)]-A059111(n+1)` -/
def P2337503392929083215.Spec : Prop :=
  ∀ n, P2337503392929083215.a n = A050502 (n + 1)

end A050502

/-!
# A050503: Nearest integer to n*log(n).

The programs for A050503, the canonical program `A050503.P17265030542435346836` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050503 has offset 1).

The definition of A050503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050503.P17265030542435346836

`round((n+1)*log(n+1))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050503

/-- `round((n+1)*log(n+1))` -/
def P17265030542435346836.Spec : Prop :=
  ∀ n, P17265030542435346836.a n = A050503 (n + 1)

theorem P17265030542435346836.correct : P17265030542435346836.Spec := by
  intro n
  simp only [A050503, Nat.add_sub_cancel]

end A050503

/-! ## A050503.P13340231085724789006

`Δ[A007504(n)]-A064659(n+1)`
-/

namespace A050503.P13340231085724789006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064659 (n + 1)

end

end A050503.P13340231085724789006

namespace A050503

/-- `Δ[A007504(n)]-A064659(n+1)` -/
def P13340231085724789006.Spec : Prop :=
  ∀ n, P13340231085724789006.a n = A050503 (n + 1)

end A050503

/-! ## A050503.P12493808553369196382

`A000040(n+1)-A064659(n+1)`
-/

namespace A050503.P12493808553369196382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A064659 (n + 1)

end

end A050503.P12493808553369196382

namespace A050503

/-- `A000040(n+1)-A064659(n+1)` -/
def P12493808553369196382.Spec : Prop :=
  ∀ n, P12493808553369196382.a n = A050503 (n + 1)

end A050503

/-! ## A050503.P17571188751120054032

`A050502(n+1)+A059111(n+1)-A064659(n+1)`
-/

namespace A050503.P17571188751120054032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (n + 1) + (A059111 (n + 1) - A064659 (n + 1))

end

end A050503.P17571188751120054032

namespace A050503

/-- `A050502(n+1)+A059111(n+1)-A064659(n+1)` -/
def P17571188751120054032.Spec : Prop :=
  ∀ n, P17571188751120054032.a n = A050503 (n + 1)

end A050503

/-! ## A050503.P7283694324749948231

`A250621(n+1)-(A250622(n+1)+A064659(n+1))`
-/

namespace A050503.P7283694324749948231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - (A250622 (n + 1) + A064659 (n + 1))

end

end A050503.P7283694324749948231

namespace A050503

/-- `A250621(n+1)-(A250622(n+1)+A064659(n+1))` -/
def P7283694324749948231.Spec : Prop :=
  ∀ n, P7283694324749948231.a n = A050503 (n + 1)

end A050503

/-! ## A050503.P1668317501609909547

`p?[A014681(n)]-A064659(n+1)`
-/

namespace A050503.P1668317501609909547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064659 (n + 1)

end

end A050503.P1668317501609909547

namespace A050503

/-- `p?[A014681(n)]-A064659(n+1)` -/
def P1668317501609909547.Spec : Prop :=
  ∀ n, P1668317501609909547.a n = A050503 (n + 1)

end A050503

/-! ## A050503.P14964092180312290481

`p?[A064429(n)]-A064659(n+1)`
-/

namespace A050503.P14964092180312290481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064659 (n + 1)

end

end A050503.P14964092180312290481

namespace A050503

/-- `p?[A064429(n)]-A064659(n+1)` -/
def P14964092180312290481.Spec : Prop :=
  ∀ n, P14964092180312290481.a n = A050503 (n + 1)

end A050503

/-! ## A050503.P16244044689681789304

`p?[A001057(n)]-A064659(n+1)`
-/

namespace A050503.P16244044689681789304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064659 (n + 1)

end

end A050503.P16244044689681789304

namespace A050503

/-- `p?[A001057(n)]-A064659(n+1)` -/
def P16244044689681789304.Spec : Prop :=
  ∀ n, P16244044689681789304.a n = A050503 (n + 1)

end A050503

/-! ## A050503.P8521621053915704987

`p?[A006370(n)]-A064659(n+1)`
-/

namespace A050503.P8521621053915704987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064659 (n + 1)

end

end A050503.P8521621053915704987

namespace A050503

/-- `p?[A006370(n)]-A064659(n+1)` -/
def P8521621053915704987.Spec : Prop :=
  ∀ n, P8521621053915704987.a n = A050503 (n + 1)

end A050503

/-! ## A050503.P15660431778204092666

`ceil(log(A294506(n))+n)`
-/

namespace A050503.P15660431778204092666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A294506 n : ℝ) + (n : ℝ)⌉

end

end A050503.P15660431778204092666

namespace A050503

/-- `ceil(log(A294506(n))+n)` -/
def P15660431778204092666.Spec : Prop :=
  ∀ n, P15660431778204092666.a n = A050503 (n + 1)

end A050503

/-!
# A050504: Integer part of n*log(n).

The programs for A050504, the canonical program `A050504.P7182449098746103055` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050504 has offset 1).

The definition of A050504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050504.P7182449098746103055

`floor((n+1)*log(n+1))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050504

/-- `floor((n+1)*log(n+1))` -/
def P7182449098746103055.Spec : Prop :=
  ∀ n, P7182449098746103055.a n = A050504 (n + 1)

theorem P7182449098746103055.correct : P7182449098746103055.Spec := by
  intro n
  simp only [A050504, Nat.add_sub_cancel]

end A050504

/-! ## A050504.P2062606616927554055

`A057428(n)+A050502(n+1)`
-/

namespace A050504.P2062606616927554055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A050502 (n + 1)

end

end A050504.P2062606616927554055

namespace A050504

/-- `A057428(n)+A050502(n+1)` -/
def P2062606616927554055.Spec : Prop :=
  ∀ n, P2062606616927554055.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P6747731675140875790

`A050502(n+1)-A057427(n)`
-/

namespace A050504.P6747731675140875790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (n + 1) - A057427 n

end

end A050504.P6747731675140875790

namespace A050504

/-- `A050502(n+1)-A057427(n)` -/
def P6747731675140875790.Spec : Prop :=
  ∀ n, P6747731675140875790.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P2710182387100927073

`A050502(n+1)+A000007(n)-1`
-/

namespace A050504.P2710182387100927073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (n + 1) + (A000007 n - 1)

end

end A050504.P2710182387100927073

namespace A050504

/-- `A050502(n+1)+A000007(n)-1` -/
def P2710182387100927073.Spec : Prop :=
  ∀ n, P2710182387100927073.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P8686626588433924703

`A000040(n+1)-A064658(n+1)`
-/

namespace A050504.P8686626588433924703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A064658 (n + 1)

end

end A050504.P8686626588433924703

namespace A050504

/-- `A000040(n+1)-A064658(n+1)` -/
def P8686626588433924703.Spec : Prop :=
  ∀ n, P8686626588433924703.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P14627147701161004308

`(A050502(n+1)-1)%A054519(n)`
-/

namespace A050504.P14627147701161004308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050502 (n + 1) - 1) (A054519 n)

end

end A050504.P14627147701161004308

namespace A050504

/-- `(A050502(n+1)-1)%A054519(n)` -/
def P14627147701161004308.Spec : Prop :=
  ∀ n, P14627147701161004308.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P18236781018344559032

`∑[A217865(n+1)]-A217865(n+1)`
-/

namespace A050504.P18236781018344559032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A217865 (n + 1)

end

end A050504.P18236781018344559032

namespace A050504

/-- `∑[A217865(n+1)]-A217865(n+1)` -/
def P18236781018344559032.Spec : Prop :=
  ∀ n, P18236781018344559032.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P10571928310797786798

`A050502(n+1)-A294648(A034444(n+1))`
-/

namespace A050504.P10571928310797786798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (n + 1) - A294648 (A034444 (n + 1)).toNat

end

end A050504.P10571928310797786798

namespace A050504

/-- `A050502(n+1)-A294648(A034444(n+1))` -/
def P10571928310797786798.Spec : Prop :=
  ∀ n, P10571928310797786798.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P9524831835952060820

`A025201(n+1)+A050502(n+1)-A066026(n+1)`
-/

namespace A050504.P9524831835952060820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025201 (n + 1) + (A050502 (n + 1) - A066026 (n + 1))

end

end A050504.P9524831835952060820

namespace A050504

/-- `A025201(n+1)+A050502(n+1)-A066026(n+1)` -/
def P9524831835952060820.Spec : Prop :=
  ∀ n, P9524831835952060820.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P12730856433686935182

`A050502(n+1)+A059111(n+1)-A064658(n+1)`
-/

namespace A050504.P12730856433686935182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (n + 1) + (A059111 (n + 1) - A064658 (n + 1))

end

end A050504.P12730856433686935182

namespace A050504

/-- `A050502(n+1)+A059111(n+1)-A064658(n+1)` -/
def P12730856433686935182.Spec : Prop :=
  ∀ n, P12730856433686935182.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P6487513127256512057

`A050503(n+1)+A064659(n+1)-A064658(n+1)`
-/

namespace A050504.P6487513127256512057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050503 (n + 1) + (A064659 (n + 1) - A064658 (n + 1))

end

end A050504.P6487513127256512057

namespace A050504

/-- `A050503(n+1)+A064659(n+1)-A064658(n+1)` -/
def P6487513127256512057.Spec : Prop :=
  ∀ n, P6487513127256512057.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P12738690714368104593

`A250621(n+1)-(A250622(n+1)+A064658(n+1))`
-/

namespace A050504.P12738690714368104593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - (A250622 (n + 1) + A064658 (n + 1))

end

end A050504.P12738690714368104593

namespace A050504

/-- `A250621(n+1)-(A250622(n+1)+A064658(n+1))` -/
def P12738690714368104593.Spec : Prop :=
  ∀ n, P12738690714368104593.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P6199423639271366315

`p?[A089237(n+1)]-A064658(n+1)`
-/

namespace A050504.P6199423639271366315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064658 (n + 1)

end

end A050504.P6199423639271366315

namespace A050504

/-- `p?[A089237(n+1)]-A064658(n+1)` -/
def P6199423639271366315.Spec : Prop :=
  ∀ n, P6199423639271366315.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P1653358943645948970

`p?[A090332(n+1)]-A064658(n+1)`
-/

namespace A050504.P1653358943645948970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064658 (n + 1)

end

end A050504.P1653358943645948970

namespace A050504

/-- `p?[A090332(n+1)]-A064658(n+1)` -/
def P1653358943645948970.Spec : Prop :=
  ∀ n, P1653358943645948970.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P1334215430442449501

`A065033(2*A050502(n+1))-1`
-/

namespace A050504.P1334215430442449501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A050502 (n + 1)).toNat - 1

end

end A050504.P1334215430442449501

namespace A050504

/-- `A065033(2*A050502(n+1))-1` -/
def P1334215430442449501.Spec : Prop :=
  ∀ n, P1334215430442449501.a n = A050504 (n + 1)

end A050504

/-! ## A050504.P4991931561768078311

`p?[A280866(n+1)]-A064658(n+1)`
-/

namespace A050504.P4991931561768078311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064658 (n + 1)

end

end A050504.P4991931561768078311

namespace A050504

/-- `p?[A280866(n+1)]-A064658(n+1)` -/
def P4991931561768078311.Spec : Prop :=
  ∀ n, P4991931561768078311.a n = A050504 (n + 1)

end A050504

/-!
# A050505: Unlucky numbers.

The programs for A050505, there is no canonical definition to state claims against.
-/

/-! ## A050505.P14269995897244514709

`eq[0, A145649(n+1)]+1`
-/

namespace A050505.P14269995897244514709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050505.P14269995897244514709

/-! ## A050505.P5888140606409317154

`comp[A000959(n+1)-1]+1`
-/

namespace A050505.P5888140606409317154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A050505.P5888140606409317154

/-! ## A050505.P9123598661236979094

`comp[Δ[A046279(n+1)]-2]+2`
-/

namespace A050505.P9123598661236979094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046279 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A050505.P9123598661236979094

/-! ## A050505.P10155104081348805699

`a(n-1)+A145649(a(n-1)+1)+1` with `a(0)=2`
-/

namespace A050505.P10155104081348805699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A145649 (a (n - 1) + 1).toNat + 1)

end

end A050505.P10155104081348805699

/-! ## A050505.P14696615096209283833

`∪[A032583(n+1), A166744(n+1)]`
-/

namespace A050505.P14696615096209283833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050505.P14696615096209283833

/-! ## A050505.P15881200581666956479

`lt[0, A260437(n+1)]+1`
-/

namespace A050505.P15881200581666956479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050505.P15881200581666956479

/-! ## A050505.P6623963257338497979

`lt[1, A260429(n+1)]+1`
-/

namespace A050505.P6623963257338497979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050505.P6623963257338497979

/-! ## A050505.P9560853564545446131

`lt[0, A264940(n+1)]+1`
-/

namespace A050505.P9560853564545446131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050505.P9560853564545446131

/-! ## A050505.P12500041794579141380

`A109497(a(n-1))+1+n` with `a(0)=2`
-/

namespace A050505.P12500041794579141380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A109497 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A050505.P12500041794579141380

/-! ## A050505.P15127607739964603667

`eq[0, A145649(A028310(n))]`
-/

namespace A050505.P15127607739964603667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050505.P15127607739964603667

/-! ## A050505.P16002515938006207928

`eq[1, A145649(A257088(n))+1]`
-/

namespace A050505.P16002515938006207928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A257088 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050505.P16002515938006207928

/-! ## A050505.P8254721604261943797

`A282738(eq[0, A145649(A282738(n))])`
-/

namespace A050505.P8254721604261943797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A282738 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050505.P8254721604261943797

/-! ## A050505.P17853376717125015302

`A257731(A002808(A257732(n+1)))`
-/

namespace A050505.P17853376717125015302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257731 (A002808 (A257732 (n + 1)).toNat).toNat

end

end A050505.P17853376717125015302

/-! ## A050505.P10451395386046997625

`A257731(A002808(A257730(A257802(n+1))))`
-/

namespace A050505.P10451395386046997625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257731 (A002808 (A257730 (A257802 (n + 1)).toNat).toNat).toNat

end

end A050505.P10451395386046997625

/-! ## A050505.P3423007741812434913

`A257733(A192607(A257734(n+1)))`
-/

namespace A050505.P3423007741812434913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257733 (A192607 (A257734 (n + 1)).toNat).toNat

end

end A050505.P3423007741812434913

/-! ## A050505.P5046529168782372154

`eq[2, A040001(A257725(n))]`
-/

namespace A050505.P5046529168782372154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A257725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050505.P5046529168782372154

/-!
# A050506: Nearest integer to log(Fibonacci(n)).

The programs for A050506, the canonical program `A050506.P16313634226855108801` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050506 has offset 3).

The definition of A050506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050506.P16313634226855108801

`round(log(A020695(n)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A050506

/-- `round(log(A020695(n)))` -/
def P16313634226855108801.Spec : Prop :=
  ∀ n, P16313634226855108801.a n = A050506 (n + 3)

theorem P16313634226855108801.correct : P16313634226855108801.Spec := by
  intro n
  simp only [A050506, Nat.add_sub_cancel]

end A050506

/-! ## A050506.P11072007833268951666

`round(log(A048577(n)))`
-/

namespace A050506.P11072007833268951666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A048577 n : ℝ))

end

end A050506.P11072007833268951666

namespace A050506

/-- `round(log(A048577(n)))` -/
def P11072007833268951666.Spec : Prop :=
  ∀ n, P11072007833268951666.a n = A050506 (n + 3)

end A050506

/-! ## A050506.P2397669378698164761

`round(log(A005625(n+2)))`
-/

namespace A050506.P2397669378698164761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A005625 (n + 2) : ℝ))

end

end A050506.P2397669378698164761

namespace A050506

/-- `round(log(A005625(n+2)))` -/
def P2397669378698164761.Spec : Prop :=
  ∀ n, P2397669378698164761.a n = A050506 (n + 3)

end A050506

/-! ## A050506.P14151955889111033914

`round(log(A052959(n+2)))`
-/

namespace A050506.P14151955889111033914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A052959 (n + 2) : ℝ))

end

end A050506.P14151955889111033914

namespace A050506

/-- `round(log(A052959(n+2)))` -/
def P14151955889111033914.Spec : Prop :=
  ∀ n, P14151955889111033914.a n = A050506 (n + 3)

end A050506

/-! ## A050506.P1407243319241461253

`round(log(A115008(n+2)))`
-/

namespace A050506.P1407243319241461253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A115008 (n + 2) : ℝ))

end

end A050506.P1407243319241461253

namespace A050506

/-- `round(log(A115008(n+2)))` -/
def P1407243319241461253.Spec : Prop :=
  ∀ n, P1407243319241461253.a n = A050506 (n + 3)

end A050506

/-! ## A050506.P11007205486003189490

`round(log(A127968(n+2)))`
-/

namespace A050506.P11007205486003189490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A127968 (n + 2) : ℝ))

end

end A050506.P11007205486003189490

namespace A050506

/-- `round(log(A127968(n+2)))` -/
def P11007205486003189490.Spec : Prop :=
  ∀ n, P11007205486003189490.a n = A050506 (n + 3)

end A050506

/-! ## A050506.P5715090902884666199

`round(log(A222437(n+2)))`
-/

namespace A050506.P5715090902884666199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A222437 (n + 2) : ℝ))

end

end A050506.P5715090902884666199

namespace A050506

/-- `round(log(A222437(n+2)))` -/
def P5715090902884666199.Spec : Prop :=
  ∀ n, P5715090902884666199.a n = A050506 (n + 3)

end A050506

/-! ## A050506.P17955802582562613675

`round(log(A000045(n+3)))`
-/

namespace A050506.P17955802582562613675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A000045 (n + 3) : ℝ))

end

end A050506.P17955802582562613675

namespace A050506

/-- `round(log(A000045(n+3)))` -/
def P17955802582562613675.Spec : Prop :=
  ∀ n, P17955802582562613675.a n = A050506 (n + 3)

end A050506

/-! ## A050506.P13324503972779608580

`round(log(A212804(n+4)))`
-/

namespace A050506.P13324503972779608580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A212804 (n + 4) : ℝ))

end

end A050506.P13324503972779608580

namespace A050506

/-- `round(log(A212804(n+4)))` -/
def P13324503972779608580.Spec : Prop :=
  ∀ n, P13324503972779608580.a n = A050506 (n + 3)

end A050506

/-! ## A050506.P5229491589702352289

`round(log(record[A000045(abs(3-n))]))`
-/

namespace A050506.P5229491589702352289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A050506.P5229491589702352289

namespace A050506

/-- `round(log(record[A000045(abs(3-n))]))` -/
def P5229491589702352289.Spec : Prop :=
  ∀ n, P5229491589702352289.a n = A050506 (n + 3)

end A050506

/-!
# A050508: Golden rectangle numbers: n * A007067(n).

The programs for A050508, the canonical program `A050508.P10501546453218380659` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050508 has offset 0).

The definition of A050508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050508.P13315529493107159767

`n*round(n*ϕ)`
-/

namespace A050508.P13315529493107159767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio)

end

end A050508.P13315529493107159767

namespace A050508

/-- `n*round(n*ϕ)` -/
def P13315529493107159767.Spec : Prop :=
  ∀ n, P13315529493107159767.a n = A050508 n

end A050508

/-! ## A050508.P10501546453218380659

`n*A007067(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A050508

/-- `n*A007067(n)` -/
def P10501546453218380659.Spec : Prop :=
  ∀ n, P10501546453218380659.a n = A050508 n

theorem P10501546453218380659.correct : P10501546453218380659.Spec := by
  intro n
  simp only [A050508]

end A050508

/-! ## A050508.P1259249682334894600

`abs(n*(2*n-A334415(n)))`
-/

namespace A050508.P1259249682334894600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((2 * n : ℤ) - A334415 n)|

end

end A050508.P1259249682334894600

namespace A050508

/-- `abs(n*(2*n-A334415(n)))` -/
def P1259249682334894600.Spec : Prop :=
  ∀ n, P1259249682334894600.a n = A050508 n

end A050508

/-! ## A050508.P5903644087147523187

`n*(A101803(n)+1+n)-n`
-/

namespace A050508.P5903644087147523187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A101803 n + 1 + (n : ℤ)) - (n : ℤ)

end

end A050508.P5903644087147523187

namespace A050508

/-- `n*(A101803(n)+1+n)-n` -/
def P5903644087147523187.Spec : Prop :=
  ∀ n, P5903644087147523187.a n = A050508 n

end A050508

/-! ## A050508.P6537476511238488674

`A050510(n)/A026355(A007067(n))`
-/

namespace A050508.P6537476511238488674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050510 n : ℚ) / (A026355 (A007067 n).toNat : ℚ)

end

end A050508.P6537476511238488674

namespace A050508

/-- `A050510(n)/A026355(A007067(n))` -/
def P6537476511238488674.Spec : Prop :=
  ∀ n, P6537476511238488674.a n = (A050508 n : ℚ)

end A050508

/-! ## A050508.P11709702441393441297

`A293688(A007067(n))-A002251(A002251(n))`
-/

namespace A050508.P11709702441393441297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 (A007067 n).toNat - A002251 (A002251 n).toNat

end

end A050508.P11709702441393441297

namespace A050508

/-- `A293688(A007067(n))-A002251(A002251(n))` -/
def P11709702441393441297.Spec : Prop :=
  ∀ n, P11709702441393441297.a n = A050508 n

end A050508

/-! ## A050508.P2450225976586756707

`record[A004526(A026351(n))*A142150(n)]`
-/

namespace A050508.P2450225976586756707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026351 n).toNat * A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050508.P2450225976586756707

namespace A050508

/-- `record[A004526(A026351(n))*A142150(n)]` -/
def P2450225976586756707.Spec : Prop :=
  ∀ n, P2450225976586756707.a n = A050508 n

end A050508

/-!
# A050509: House numbers (version 2): a(n) = (n+1)^3 + (n+1)*Sum_{i=0..n} i.

The programs for A050509, the canonical program `A050509.P15381801912782848536` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050509 has offset 0).

The definition of A050509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050509.P2012387215324202889

`(1+n)²*(2+3*n)/2`
-/

namespace A050509.P2012387215324202889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n) ^ 2 * (2 + 3 * n) : ℚ) / 2

end

end A050509.P2012387215324202889

namespace A050509

/-- `(1+n)²*(2+3*n)/2` -/
def P2012387215324202889.Spec : Prop :=
  ∀ n, P2012387215324202889.a n = (A050509 n : ℚ)

theorem P2012387215324202889.correct : P2012387215324202889.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A050509, Nat.add_sub_cancel, A050509.P2012387215324202889.a, A050509.P15381801912782848536.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A050509, Nat.add_sub_cancel, A050509.P2012387215324202889.a, A050509.P15381801912782848536.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A050509

/-! ## A050509.P15381801912782848536

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=36, a(3)=88`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050509

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15381801912782848536.Spec : Prop :=
  ∀ n, P15381801912782848536.a n = A050509 n

theorem P15381801912782848536.correct : P15381801912782848536.Spec := by
  intro n
  simp only [A050509]

end A050509

/-! ## A050509.P9610162088955546370

`A000578(n+1)+(n+1)*A000217(n)`
-/

namespace A050509.P9610162088955546370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (n + 1 : ℤ) * A000217 n

end

end A050509.P9610162088955546370

namespace A050509

/-- `A000578(n+1)+(n+1)*A000217(n)` -/
def P9610162088955546370.Spec : Prop :=
  ∀ n, P9610162088955546370.a n = A050509 n

end A050509

/-! ## A050509.P899679298929791771

`∑[C(n, 2)+Δ[n²]²]`
-/

namespace A050509.P899679298929791771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050509.P899679298929791771

namespace A050509

/-- `∑[C(n, 2)+Δ[n²]²]` -/
def P899679298929791771.Spec : Prop :=
  ∀ n, P899679298929791771.a n = A050509 n

end A050509

/-! ## A050509.P9426127154707230904

`∑[∑[a(n-1)+9]]` with `a(0)=1, a(1)=8`
-/

namespace A050509.P9426127154707230904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050509.P9426127154707230904

namespace A050509

/-- `∑[∑[a(n-1)+9]]` -/
def P9426127154707230904.Spec : Prop :=
  ∀ n, (P9426127154707230904.a n : ℤ) = A050509 n

end A050509

/-! ## A050509.P7014564989763635122

`∑[∑[ogf((1+6x+2x^2)/(1-2x+x^2))]]`
-/

namespace A050509.P7014564989763635122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050509.P7014564989763635122

namespace A050509

/-- `∑[∑[ogf((1+6x+2x^2)/(1-2x+x^2))]]` -/
def P7014564989763635122.Spec : Prop :=
  ∀ n, P7014564989763635122.a n = A050509 n

end A050509

/-! ## A050509.P16751437945271511033

`ogf((1+6x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A050509.P16751437945271511033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 2] [1, -4, 6, -4, 1] n

end

end A050509.P16751437945271511033

namespace A050509

/-- `ogf((1+6x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P16751437945271511033.Spec : Prop :=
  ∀ n, P16751437945271511033.a n = A050509 n

end A050509

/-! ## A050509.P8307517181570173099

`∑[2-∑[a(n-1)-9]]` with `a(0)=1`
-/

namespace A050509.P8307517181570173099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050509.P8307517181570173099

namespace A050509

/-- `∑[2-∑[a(n-1)-9]]` -/
def P8307517181570173099.Spec : Prop :=
  ∀ n, P8307517181570173099.a n = A050509 n

end A050509

/-! ## A050509.P9593081464225411909

`(n+1)*C(n+1, 2)+(n+1)^3`
-/

namespace A050509.P9593081464225411909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 1) 2 + (n + 1) ^ 3

end

end A050509.P9593081464225411909

namespace A050509

/-- `(n+1)*C(n+1, 2)+(n+1)^3` -/
def P9593081464225411909.Spec : Prop :=
  ∀ n, (P9593081464225411909.a n : ℤ) = A050509 n

end A050509

/-! ## A050509.P9147024281272551850

`(2*n+1)²+a(n-1)+C(n, 2)` with `a(0)=1`
-/

namespace A050509.P9147024281272551850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) ^ 2 + (a (n - 1) + Nat.choose n 2)

end

end A050509.P9147024281272551850

namespace A050509

/-- `(2*n+1)²+a(n-1)+C(n, 2)` -/
def P9147024281272551850.Spec : Prop :=
  ∀ n, (P9147024281272551850.a n : ℤ) = A050509 n

end A050509

/-! ## A050509.P14956507515020054854

`∑[A081267(n)]`
-/

namespace A050509.P14956507515020054854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050509.P14956507515020054854

namespace A050509

/-- `∑[A081267(n)]` -/
def P14956507515020054854.Spec : Prop :=
  ∀ n, P14956507515020054854.a n = A050509 n

end A050509

/-! ## A050509.P5164984489928134334

`∑[A062728(n)+1]`
-/

namespace A050509.P5164984489928134334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050509.P5164984489928134334

namespace A050509

/-- `∑[A062728(n)+1]` -/
def P5164984489928134334.Spec : Prop :=
  ∀ n, P5164984489928134334.a n = A050509 n

end A050509

/-! ## A050509.P15349886861573794791

`A005920(n)+∑[n]`
-/

namespace A050509.P15349886861573794791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A050509.P15349886861573794791

namespace A050509

/-- `A005920(n)+∑[n]` -/
def P15349886861573794791.Spec : Prop :=
  ∀ n, P15349886861573794791.a n = A050509 n

end A050509

/-! ## A050509.P3403959383960018111

`∑[A064225(n)+n]`
-/

namespace A050509.P3403959383960018111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050509.P3403959383960018111

namespace A050509

/-- `∑[A064225(n)+n]` -/
def P3403959383960018111.Spec : Prop :=
  ∀ n, P3403959383960018111.a n = A050509 n

end A050509

/-! ## A050509.P16641110405384605974

`A051662(n)+∑[∑[n]]`
-/

namespace A050509.P16641110405384605974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A050509.P16641110405384605974

namespace A050509

/-- `A051662(n)+∑[∑[n]]` -/
def P16641110405384605974.Spec : Prop :=
  ∀ n, P16641110405384605974.a n = A050509 n

end A050509

/-! ## A050509.P11271208903417166955

`∑[A062725(n)+n+1]`
-/

namespace A050509.P11271208903417166955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050509.P11271208903417166955

namespace A050509

/-- `∑[A062725(n)+n+1]` -/
def P11271208903417166955.Spec : Prop :=
  ∀ n, P11271208903417166955.a n = A050509 n

end A050509

/-! ## A050509.P3054543505957018515

`∑[A060544(n+1)-n]`
-/

namespace A050509.P3054543505957018515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050509.P3054543505957018515

namespace A050509

/-- `∑[A060544(n+1)-n]` -/
def P3054543505957018515.Spec : Prop :=
  ∀ n, P3054543505957018515.a n = A050509 n

end A050509

/-! ## A050509.P13805227128214988117

`∑[A062123(n)-(n+1)]`
-/

namespace A050509.P13805227128214988117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050509.P13805227128214988117

namespace A050509

/-- `∑[A062123(n)-(n+1)]` -/
def P13805227128214988117.Spec : Prop :=
  ∀ n, P13805227128214988117.a n = A050509 n

end A050509

/-! ## A050509.P6316282709372023312

`(n+1)*∑[A016777(n)]`
-/

namespace A050509.P6316282709372023312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050509.P6316282709372023312

namespace A050509

/-- `(n+1)*∑[A016777(n)]` -/
def P6316282709372023312.Spec : Prop :=
  ∀ n, P6316282709372023312.a n = A050509 n

end A050509

/-! ## A050509.P2485217511144178670

`A004188(n)+Δ[n²]²`
-/

namespace A050509.P2485217511144178670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A050509.P2485217511144178670

namespace A050509

/-- `A004188(n)+Δ[n²]²` -/
def P2485217511144178670.Spec : Prop :=
  ∀ n, P2485217511144178670.a n = A050509 n

end A050509

/-!
# A050510: Golden rectangular box numbers: a(n) = n*A007067(n)*A007067(A007067(n)).

The programs for A050510, the canonical program `A050510.P11714962708089619267` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050510 has offset 0).

The definition of A050510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050510.P16532410455894382053

`n*round(n*(1+sqrt(5))/2)*round(round(n*(1+sqrt(5))/2)*(1+sqrt(5))/2)`
-/

namespace A050510.P16532410455894382053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((n : ℝ) * (1 + Real.sqrt (5 : ℝ)) / 2) * SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((n : ℝ) * (1 + Real.sqrt (5 : ℝ)) / 2) : ℝ) * (1 + Real.sqrt (5 : ℝ)) / 2)

end

end A050510.P16532410455894382053

namespace A050510

/-- `n*round(n*(1+sqrt(5))/2)*round(round(n*(1+sqrt(5))/2)*(1+sqrt(5))/2)` -/
def P16532410455894382053.Spec : Prop :=
  ∀ n, P16532410455894382053.a n = A050510 n

end A050510

/-! ## A050510.P11714962708089619267

`n*A007067(n)*A007067(A007067(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A050510

/-- `n*A007067(n)*A007067(A007067(n))` -/
def P11714962708089619267.Spec : Prop :=
  ∀ n, P11714962708089619267.a n = A050510 n

theorem P11714962708089619267.correct : P11714962708089619267.Spec := by
  intro n
  simp only [A050510]

end A050510

/-! ## A050510.P707051653528523513

`abs((n*(A101803(n)+1+n)-n)*A004937(n))`
-/

namespace A050510.P707051653528523513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) * (A101803 n + 1 + (n : ℤ)) - (n : ℤ)) * A004937 n|

end

end A050510.P707051653528523513

namespace A050510

/-- `abs((n*(A101803(n)+1+n)-n)*A004937(n))` -/
def P707051653528523513.Spec : Prop :=
  ∀ n, P707051653528523513.a n = A050510 n

end A050510

/-! ## A050510.P18084897473591966561

`A166447(n*A004937(n))`
-/

namespace A050510.P18084897473591966561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166447 ((n : ℤ) * A004937 n).toNat

end

end A050510.P18084897473591966561

namespace A050510

/-- `A166447(n*A004937(n))` -/
def P18084897473591966561.Spec : Prop :=
  ∀ n, P18084897473591966561.a n = A050510 n

end A050510

/-!
# A050511: a(n) = (-1)^n * Sum_{i=0..n} binomial(n+1,i+1)*Catalan(i).

The programs for A050511, the canonical program `A050511.P14007568891087998806` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050511 has offset 0).

The definition of A050511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050511.P14007568891087998806

`(-1)^n*∑[∑[A002212(n)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A050511

/-- `(-1)^n*∑[∑[A002212(n)]]` -/
def P14007568891087998806.Spec : Prop :=
  ∀ n, P14007568891087998806.a n = A050511 n

theorem P14007568891087998806.correct : P14007568891087998806.Spec := by
  intro n
  simp only [A050511]

end A050511

/-! ## A050511.P7025833868486001090

`(-1)^n*∑[A007317(n+1)]`
-/

namespace A050511.P7025833868486001090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050511.P7025833868486001090

namespace A050511

/-- `(-1)^n*∑[A007317(n+1)]` -/
def P7025833868486001090.Spec : Prop :=
  ∀ n, P7025833868486001090.a n = A050511 n

end A050511

/-! ## A050511.P17944256822817519883

`∑[∑[A002212(n)]]*A033999(n)`
-/

namespace A050511.P17944256822817519883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A050511.P17944256822817519883

namespace A050511

/-- `∑[∑[A002212(n)]]*A033999(n)` -/
def P17944256822817519883.Spec : Prop :=
  ∀ n, P17944256822817519883.a n = A050511 n

end A050511

/-! ## A050511.P2848584554316779488

`∑[A007317(n+1)]*A033999(n)`
-/

namespace A050511.P2848584554316779488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A050511.P2848584554316779488

namespace A050511

/-- `∑[A007317(n+1)]*A033999(n)` -/
def P2848584554316779488.Spec : Prop :=
  ∀ n, P2848584554316779488.a n = A050511 n

end A050511

/-! ## A050511.P4844219943384036551

`∑[A055879(2*(n+1))]*A009001(2*n)`
-/

namespace A050511.P4844219943384036551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A050511.P4844219943384036551

namespace A050511

/-- `∑[A055879(2*(n+1))]*A009001(2*n)` -/
def P4844219943384036551.Spec : Prop :=
  ∀ n, P4844219943384036551.a n = A050511 n

end A050511

/-! ## A050511.P5564646878799584821

`A091698(∑[n+1]+1)`
-/

namespace A050511.P5564646878799584821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A050511.P5564646878799584821

namespace A050511

/-- `A091698(∑[n+1]+1)` -/
def P5564646878799584821.Spec : Prop :=
  ∀ n, P5564646878799584821.a n = A050511 n

end A050511

/-!
# A050512: a(n) = (a(n-1)*a(n-3) - a(n-2)^2) / a(n-4), with a(0) = 0, a(1) = a(2) = a(3) = 1, a(4) = -1.

The programs for A050512, the canonical program `A050512.P2908211721261138996` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050512 has offset 0).

The definition of A050512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050512.P2908211721261138996

`(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050512

/-- `(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` -/
def P2908211721261138996.Spec : Prop :=
  ∀ n, P2908211721261138996.a n = (A050512 n : ℚ)

end A050512

/-!
# A050513: a(n) = (-1)^n * Sum_{i=0..n} binomial(n+1,i+1)*prime(i+1).

The programs for A050513, there is no canonical definition to state claims against.
-/

/-! ## A050513.P10142325101058978268

`(-1)^n*∑[A007443(n+1)]`
-/

namespace A050513.P10142325101058978268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050513.P10142325101058978268

/-! ## A050513.P15875926337498988684

`∑[A007443(n+1)]*A033999(n)`
-/

namespace A050513.P15875926337498988684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A050513.P15875926337498988684

/-! ## A050513.P12646630366861063650

`∑[A007443(n+1)]*A057077(2*(n+2))`
-/

namespace A050513.P12646630366861063650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * (n + 2))

end

end A050513.P12646630366861063650

/-! ## A050513.P2294653318523244297

`∑[A287919(∑[n]+n)]*A033999(n)`
-/

namespace A050513.P2294653318523244297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287919 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A050513.P2294653318523244297

/-!
# A050514: Cards left over after dealing evenly to n people.

The programs for A050514, the canonical program `A050514.P14931833447149312849` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050514 has offset 1).

The definition of A050514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050514.P14931833447149312849

`-(-52%-(n+1))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050514

/-- `-(-52%-(n+1))` -/
def P14931833447149312849.Spec : Prop :=
  ∀ n, P14931833447149312849.a n = A050514 (n + 1)

theorem P14931833447149312849.correct : P14931833447149312849.Spec := by
  intro n
  simp only [A050514, Nat.add_sub_cancel]

end A050514

/-!
# A050518: An arithmetic progression of at least 6 terms having the same value of phi starts at these numbers.

The programs for A050518, there is no canonical definition to state claims against.
-/

/-! ## A050518.P8560807484516087689

`(n+1)*A143207(A007947(A147571(n+1)))`
-/

namespace A050518.P8560807484516087689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143207 (A007947 (A147571 (n + 1)).toNat).toNat

end

end A050518.P8560807484516087689

/-! ## A050518.P2380617240253695981

`Δ[A010015(Δ[A158646(n)])]`
-/

namespace A050518.P2380617240253695981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010015 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050518.P2380617240253695981

/-! ## A050518.P17050348418223528742

`Δ[A008706(Δ[A158646(n)])²]`
-/

namespace A050518.P17050348418223528742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (f2 (n + 1) - f2 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050518.P17050348418223528742

/-! ## A050518.P8386021045678746481

`A096472(9*A008588(3*(n+1)))`
-/

namespace A050518.P8386021045678746481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096472 (9 * A008588 (3 * (n + 1))).toNat

end

end A050518.P8386021045678746481

/-! ## A050518.P8610700771110771890

`Δ[A247792(Δ[10*A247792(n)])]`
-/

namespace A050518.P8610700771110771890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A247792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050518.P8610700771110771890

/-! ## A050518.P16889057236739647569

`A195321(A066164(n+3))/(n+1)`
-/

namespace A050518.P16889057236739647569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195321 (A066164 (n + 3)).toNat : ℚ) / (n + 1 : ℚ)

end

end A050518.P16889057236739647569

/-!
# A050519: Increments of arithmetic progression of at least 6 terms having the same value of phi in A050518.

The programs for A050519, the canonical program `A050519.P7924138531578403938` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050519 has offset 1).

The definition of A050519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050519.P7590219835691440206

`30*A086416(A022330(n))`
-/

namespace A050519.P7590219835691440206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A086416 (A022330 n).toNat

end

end A050519.P7590219835691440206

namespace A050519

/-- `30*A086416(A022330(n))` -/
def P7590219835691440206.Spec : Prop :=
  ∀ n, P7590219835691440206.a n = A050519 (n + 1)

end A050519

/-! ## A050519.P4559216773871199938

`A032742(A139280(n+1))+27`
-/

namespace A050519.P4559216773871199938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A139280 (n + 1)).toNat + 27

end

end A050519.P4559216773871199938

namespace A050519

/-- `A032742(A139280(n+1))+27` -/
def P4559216773871199938.Spec : Prop :=
  ∀ n, P4559216773871199938.a n = A050519 (n + 1)

end A050519

/-! ## A050519.P5157149563500034694

`30*A100617(A000960(n+1))`
-/

namespace A050519.P5157149563500034694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A100617 (A000960 (n + 1)).toNat

end

end A050519.P5157149563500034694

namespace A050519

/-- `30*A100617(A000960(n+1))` -/
def P5157149563500034694.Spec : Prop :=
  ∀ n, P5157149563500034694.a n = A050519 (n + 1)

end A050519

/-! ## A050519.P10583663135359003113

`15*A261104(A262502(2*(n+1)))`
-/

namespace A050519.P10583663135359003113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A261104 (A262502 (2 * (n + 1))).toNat

end

end A050519.P10583663135359003113

namespace A050519

/-- `15*A261104(A262502(2*(n+1)))` -/
def P10583663135359003113.Spec : Prop :=
  ∀ n, P10583663135359003113.a n = A050519 (n + 1)

end A050519

/-! ## A050519.P10160490051620889425

`15*A274640(A324481(2*n+1))`
-/

namespace A050519.P10160490051620889425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A274640 (A324481 (2 * n + 1)).toNat

end

end A050519.P10160490051620889425

namespace A050519

/-- `15*A274640(A324481(2*n+1))` -/
def P10160490051620889425.Spec : Prop :=
  ∀ n, P10160490051620889425.a n = A050519 (n + 1)

end A050519

/-! ## A050519.P8285793731685153238

`record[gcd(A050518(n+1), A249674(n+1))]`
-/

namespace A050519.P8285793731685153238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050518 (n + 1)) (A249674 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050519.P8285793731685153238

namespace A050519

/-- `record[gcd(A050518(n+1), A249674(n+1))]` -/
def P8285793731685153238.Spec : Prop :=
  ∀ n, (P8285793731685153238.a n : ℤ) = A050519 (n + 1)

end A050519

/-! ## A050519.P13210800629160149112

`10*(n+1)*A010693(A007529(n+1))`
-/

namespace A050519.P13210800629160149112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) * A010693 (A007529 (n + 1)).toNat

end

end A050519.P13210800629160149112

namespace A050519

/-- `10*(n+1)*A010693(A007529(n+1))` -/
def P13210800629160149112.Spec : Prop :=
  ∀ n, P13210800629160149112.a n = A050519 (n + 1)

end A050519

/-! ## A050519.P7924138531578403938

`A000007(3*A007318(n))+30*(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A050519

/-- `A000007(3*A007318(n))+30*(n+1)` -/
def P7924138531578403938.Spec : Prop :=
  ∀ n, P7924138531578403938.a n = A050519 (n + 1)

theorem P7924138531578403938.correct : P7924138531578403938.Spec := by
  intro n
  simp only [A050519, Nat.add_sub_cancel]

end A050519

/-! ## A050519.P9846053589670173486

`A000038(3*A007318(n))+30*(n+1)`
-/

namespace A050519.P9846053589670173486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (3 * A007318 n).toNat + (30 * (n + 1) : ℤ)

end

end A050519.P9846053589670173486

namespace A050519

/-- `A000038(3*A007318(n))+30*(n+1)` -/
def P9846053589670173486.Spec : Prop :=
  ∀ n, P9846053589670173486.a n = A050519 (n + 1)

end A050519

/-! ## A050519.P14447882671876688268

`30*(n+1)*A057427(3*A007318(n))`
-/

namespace A050519.P14447882671876688268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (30 * (n + 1) : ℤ) * A057427 (3 * A007318 n).toNat

end

end A050519.P14447882671876688268

namespace A050519

/-- `30*(n+1)*A057427(3*A007318(n))` -/
def P14447882671876688268.Spec : Prop :=
  ∀ n, P14447882671876688268.a n = A050519 (n + 1)

end A050519

/-! ## A050519.P10714922126797033249

`A005131(90*(n+1)+1)/2`
-/

namespace A050519.P10714922126797033249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005131 (90 * (n + 1) + 1) : ℚ) / 2

end

end A050519.P10714922126797033249

namespace A050519

/-- `A005131(90*(n+1)+1)/2` -/
def P10714922126797033249.Spec : Prop :=
  ∀ n, P10714922126797033249.a n = (A050519 (n + 1) : ℚ)

end A050519

/-!
# A050520: Values of phi in arithmetic progression of at least 6 terms having the same value of phi in A050518.

The programs for A050520, there is no canonical definition to state claims against.
-/

/-! ## A050520.P9917692085621085743

`A050517(A277675(n+2))`
-/

namespace A050520.P9917692085621085743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050517 (A277675 (n + 2)).toNat

end

end A050520.P9917692085621085743

/-! ## A050520.P13231782004923213558

`A050517(A037144(3*(n+1))+n)`
-/

namespace A050520.P13231782004923213558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050517 (A037144 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A050520.P13231782004923213558

/-! ## A050520.P6471072291704839700

`A050517(A050499(n+2)+A008586(n))`
-/

namespace A050520.P6471072291704839700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050517 (A050499 (n + 2) + A008586 n).toNat

end

end A050520.P6471072291704839700

/-!
# A050521: Number of factorizations of (n,2*n) into pairs (k,l).

The programs for A050521, there is no canonical definition to state claims against.
-/

/-! ## A050521.P6790547709787570919

`A108455(A117625(n+1)+A000007(n))`
-/

namespace A050521.P6790547709787570919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108455 (A117625 (n + 1) + A000007 n).toNat

end

end A050521.P6790547709787570919

/-!
# A050522: Primes of form 5*2^k-1.

The programs for A050522, there is no canonical definition to state claims against.
-/

/-! ## A050522.P10711145644248157643

`5*2^A001770(n+1)-1`
-/

namespace A050522.P10711145644248157643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (2 : ℚ) ^ (A001770 (n + 1) : ℤ) - 1

end

end A050522.P10711145644248157643

/-! ## A050522.P8739793836729172801

`A153894(A001770(n+1))`
-/

namespace A050522.P8739793836729172801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 (A001770 (n + 1)).toNat

end

end A050522.P8739793836729172801

/-! ## A050522.P10654025118436786840

`A052549(A001770(n+1)+1)`
-/

namespace A050522.P10654025118436786840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 (A001770 (n + 1) + 1).toNat

end

end A050522.P10654025118436786840

/-! ## A050522.P3864776145277589475

`A010737(2*A001770(n+1))`
-/

namespace A050522.P3864776145277589475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 (2 * A001770 (n + 1)).toNat

end

end A050522.P3864776145277589475

/-! ## A050522.P3352303411279400891

`A156760(A001770(n+1)/2)`
-/

namespace A050522.P3352303411279400891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156760 (SequenceMachineLib.roundAway ((A001770 (n + 1) : ℚ) / 2)).toNat

end

end A050522.P3352303411279400891

/-!
# A050523: Primes of the form 7*2^k - 1.

The programs for A050523, there is no canonical definition to state claims against.
-/

/-! ## A050523.P8560484053247722418

`A086224(A001771(n+1))`
-/

namespace A050523.P8560484053247722418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 (A001771 (n + 1)).toNat

end

end A050523.P8560484053247722418

/-! ## A050523.P13682727721882783477

`A267604(A001771(n+1)+2)`
-/

namespace A050523.P13682727721882783477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 (A001771 (n + 1) + 2).toNat

end

end A050523.P13682727721882783477

/-! ## A050523.P7881683733547861550

`∩[A010737(n), A077314(n+1)]`
-/

namespace A050523.P7881683733547861550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050523.P7881683733547861550

/-! ## A050523.P1389618883505916509

`∩[A095078(n+1), A010737(n)]`
-/

namespace A050523.P1389618883505916509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050523.P1389618883505916509

/-!
# A050524: Primes of the form 9*2^n-1.

The programs for A050524, there is no canonical definition to state claims against.
-/

/-! ## A050524.P17033024774673796070

`A176449(A002236(n+1))+1`
-/

namespace A050524.P17033024774673796070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176449 (A002236 (n + 1)).toNat + 1

end

end A050524.P17033024774673796070

/-! ## A050524.P12444525521482873597

`A052996(A002236(n+1)+2)`
-/

namespace A050524.P12444525521482873597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 (A002236 (n + 1) + 2).toNat

end

end A050524.P12444525521482873597

/-! ## A050524.P14766582768046393362

`∩[A052996(n), A239712(n+1)]`
-/

namespace A050524.P14766582768046393362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050524.P14766582768046393362

/-! ## A050524.P16375002491265823081

`∩[A052996(n), A268640(n+1)]`
-/

namespace A050524.P16375002491265823081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050524.P16375002491265823081

/-! ## A050524.P16778584141499536905

`floor(3*sqrt(A330412(n+1)))`
-/

namespace A050524.P16778584141499536905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * Real.sqrt (A330412 (n + 1) : ℝ)⌋

end

end A050524.P16778584141499536905

/-!
# A050526: Primes of form 5*2^n+1.

The programs for A050526, there is no canonical definition to state claims against.
-/

/-! ## A050526.P10010806467729265686

`A083575(A002254(n+1))`
-/

namespace A050526.P10010806467729265686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 (A002254 (n + 1)).toNat

end

end A050526.P10010806467729265686

/-! ## A050526.P10254581164776779690

`∩[A002200(n+1), A083575(n)]`
-/

namespace A050526.P10254581164776779690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050526.P10254581164776779690

/-! ## A050526.P1656006808397181542

`∩[A061599(n+1), A082605(n)]`
-/

namespace A050526.P1656006808397181542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050526.P1656006808397181542

/-! ## A050526.P3698191837764365002

`∩[A068801(n+1), A082605(n)]`
-/

namespace A050526.P3698191837764365002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050526.P3698191837764365002

/-! ## A050526.P14080743540832438740

`∩[A068801(n+1), A083575(n)]`
-/

namespace A050526.P14080743540832438740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050526.P14080743540832438740

/-!
# A050527: Primes of form 7*2^n+1.

The programs for A050527, there is no canonical definition to state claims against.
-/

/-! ## A050527.P6271937025579069267

`A083686(A032353(n+1))`
-/

namespace A050527.P6271937025579069267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083686 (A032353 (n + 1)).toNat

end

end A050527.P6271937025579069267

/-! ## A050527.P10729444805457310074

`A199207(A002255(n+1))`
-/

namespace A050527.P10729444805457310074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199207 (A002255 (n + 1)).toNat

end

end A050527.P10729444805457310074

/-! ## A050527.P12360275342356200864

`A083686(2*A002255(n+1))`
-/

namespace A050527.P12360275342356200864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083686 (2 * A002255 (n + 1)).toNat

end

end A050527.P12360275342356200864

/-! ## A050527.P14394241367903844176

`A199207(A032353(n+1)/2)`
-/

namespace A050527.P14394241367903844176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199207 (SequenceMachineLib.roundAway ((A032353 (n + 1) : ℚ) / 2)).toNat

end

end A050527.P14394241367903844176

/-! ## A050527.P11899297669024132655

`∩[A077498(n+1), A083686(n)]`
-/

namespace A050527.P11899297669024132655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083686 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050527.P11899297669024132655

/-!
# A050528: Primes of the form 9*2^n+1.

The programs for A050528, there is no canonical definition to state claims against.
-/

/-! ## A050528.P4285341597672470155

`A083705(A002256(n+1))`
-/

namespace A050528.P4285341597672470155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083705 (A002256 (n + 1)).toNat

end

end A050528.P4285341597672470155

/-! ## A050528.P9314405254773339748

`∩[A005109(n+1), A083705(n)]`
-/

namespace A050528.P9314405254773339748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050528.P9314405254773339748

/-! ## A050528.P6921470711213944949

`∩[A058383(n+1), A083705(n)]`
-/

namespace A050528.P6921470711213944949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050528.P6921470711213944949

/-! ## A050528.P6907528981385288575

`∩[A070739(n+1), A083705(n)]`
-/

namespace A050528.P6907528981385288575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050528.P6907528981385288575

/-! ## A050528.P4705261213318705060

`∩[A081091(n+1), A083705(n)]`
-/

namespace A050528.P4705261213318705060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050528.P4705261213318705060

/-!
# A050529: Primes of the form 11*2^k + 1.

The programs for A050529, there is no canonical definition to state claims against.
-/

/-! ## A050529.P11937222035010420081

`A083683(A002261(n+1))`
-/

namespace A050529.P11937222035010420081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083683 (A002261 (n + 1)).toNat

end

end A050529.P11937222035010420081

/-! ## A050529.P4019752434862680486

`∩[A077499(n+1), A083683(n)]`
-/

namespace A050529.P4019752434862680486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050529.P4019752434862680486

/-! ## A050529.P9103569275498472244

`∩[A077499(n+1), A122041(n+1)]`
-/

namespace A050529.P9103569275498472244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050529.P9103569275498472244

/-! ## A050529.P727297852001074497

`∩[A083683(n), A147545(n+1)]`
-/

namespace A050529.P727297852001074497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050529.P727297852001074497

/-!
# A050530: Numbers k such that k - phi(k) is prime.

The programs for A050530, the canonical program `A050530.P8340804989317235602` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050530 has offset 1).

The definition of A050530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3742 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050530.P8340804989317235602

`eq[1, A001222(n+2-A000010(n+2))]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A050530

/-- `eq[1, A001222(n+2-A000010(n+2))]+2` -/
def P8340804989317235602.Spec : Prop :=
  ∀ n, (P8340804989317235602.a n : ℤ) = A050530 (n + 1)

theorem P8340804989317235602.correct : P8340804989317235602.Spec := by
  intro n
  simp only [A050530, Nat.add_sub_cancel]

end A050530

/-! ## A050530.P8782534747311366303

`eq[2, A000005(n+2-A000010(n+2))]+2`
-/

namespace A050530.P8782534747311366303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2 : ℤ) - A000010 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A050530.P8782534747311366303

namespace A050530

/-- `eq[2, A000005(n+2-A000010(n+2))]+2` -/
def P8782534747311366303.Spec : Prop :=
  ∀ n, (P8782534747311366303.a n : ℤ) = A050530 (n + 1)

end A050530

/-! ## A050530.P6157174392413893434

`eq[1, A053470(n+1)]+1`
-/

namespace A050530.P6157174392413893434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050530.P6157174392413893434

namespace A050530

/-- `eq[1, A053470(n+1)]+1` -/
def P6157174392413893434.Spec : Prop :=
  ∀ n, (P6157174392413893434.a n : ℤ) = A050530 (n + 1)

end A050530

/-! ## A050530.P2708121916015999224

`eq[3, A326198(n+1)]+1`
-/

namespace A050530.P2708121916015999224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050530.P2708121916015999224

namespace A050530

/-- `eq[3, A326198(n+1)]+1` -/
def P2708121916015999224.Spec : Prop :=
  ∀ n, (P2708121916015999224.a n : ℤ) = A050530 (n + 1)

end A050530

/-! ## A050530.P15814032662357828851

`eq[2, A071575(n+1)]+1`
-/

namespace A050530.P15814032662357828851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071575 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050530.P15814032662357828851

namespace A050530

/-- `eq[2, A071575(n+1)]+1` -/
def P15814032662357828851.Spec : Prop :=
  ∀ n, (P15814032662357828851.a n : ℤ) = A050530 (n + 1)

end A050530

/-! ## A050530.P8231225750340392634

`eq[4, A053475(n+1)]+1`
-/

namespace A050530.P8231225750340392634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050530.P8231225750340392634

namespace A050530

/-- `eq[4, A053475(n+1)]+1` -/
def P8231225750340392634.Spec : Prop :=
  ∀ n, (P8231225750340392634.a n : ℤ) = A050530 (n + 1)

end A050530

/-! ## A050530.P10640683543250397337

`eq[1, A001065(A016035(n+1)+1)]+1`
-/

namespace A050530.P10640683543250397337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A016035 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050530.P10640683543250397337

namespace A050530

/-- `eq[1, A001065(A016035(n+1)+1)]+1` -/
def P10640683543250397337.Spec : Prop :=
  ∀ n, (P10640683543250397337.a n : ℤ) = A050530 (n + 1)

end A050530

/-! ## A050530.P15464542722093260212

`eq[A054571(n+1), A219428(n+1)]+1`
-/

namespace A050530.P15464542722093260212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050530.P15464542722093260212

namespace A050530

/-- `eq[A054571(n+1), A219428(n+1)]+1` -/
def P15464542722093260212.Spec : Prop :=
  ∀ n, (P15464542722093260212.a n : ℤ) = A050530 (n + 1)

end A050530

/-! ## A050530.P1458617524347115769

`eq[1, A054024(A016035(abs(1-n)+1)+1)]`
-/

namespace A050530.P1458617524347115769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A016035 (|1 - (n : ℤ)| + 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050530.P1458617524347115769

namespace A050530

/-- `eq[1, A054024(A016035(abs(1-n)+1)+1)]` -/
def P1458617524347115769.Spec : Prop :=
  ∀ n, (P1458617524347115769.a n : ℤ) = A050530 (n + 1)

end A050530

/-!
# A050531: Number of multigraphs with loops on 3 nodes with n edges.

The programs for A050531, the canonical program `A050531.P14066139163259779683` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050531 has offset 0).

The definition of A050531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050531.P14066139163259779683

`A037240(n)+A000292(A110654(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050531

/-- `A037240(n)+A000292(A110654(n))` -/
def P14066139163259779683.Spec : Prop :=
  ∀ n, P14066139163259779683.a n = A050531 n

theorem P14066139163259779683.correct : P14066139163259779683.Spec := by
  intro n
  simp only [A050531]

end A050531

/-! ## A050531.P13320422206454259104

`A037240(n)+A000292(∑[A000035(n)])`
-/

namespace A050531.P13320422206454259104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n + A000292 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050531.P13320422206454259104

namespace A050531

/-- `A037240(n)+A000292(∑[A000035(n)])` -/
def P13320422206454259104.Spec : Prop :=
  ∀ n, P13320422206454259104.a n = A050531 n

end A050531

/-! ## A050531.P5435255913045293772

`A037240(n)+A000292(Δ[A002620(n)])`
-/

namespace A050531.P5435255913045293772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n + A000292 (f1 (n + 1) - f1 n).toNat

end

end A050531.P5435255913045293772

namespace A050531

/-- `A037240(n)+A000292(Δ[A002620(n)])` -/
def P5435255913045293772.Spec : Prop :=
  ∀ n, P5435255913045293772.a n = A050531 n

end A050531

/-! ## A050531.P6789655253539038224

`A002727(n+1)+A005783(n)-A055484(n+2)`
-/

namespace A050531.P6789655253539038224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 (n + 1) + (A005783 n - A055484 (n + 2))

end

end A050531.P6789655253539038224

namespace A050531

/-- `A002727(n+1)+A005783(n)-A055484(n+2)` -/
def P6789655253539038224.Spec : Prop :=
  ∀ n, P6789655253539038224.a n = A050531 n

end A050531

/-! ## A050531.P10722328420643113148

`Δ[A055484(n+2)-A002727(n+1)]`
-/

namespace A050531.P10722328420643113148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055484 (n + 2) - A002727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050531.P10722328420643113148

namespace A050531

/-- `Δ[A055484(n+2)-A002727(n+1)]` -/
def P10722328420643113148.Spec : Prop :=
  ∀ n, P10722328420643113148.a n = A050531 n

end A050531

/-! ## A050531.P9704648271497601776

`Δ[A055484(n+2)]-A005783(n+2)`
-/

namespace A050531.P9704648271497601776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055484 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005783 (n + 2)

end

end A050531.P9704648271497601776

namespace A050531

/-- `Δ[A055484(n+2)]-A005783(n+2)` -/
def P9704648271497601776.Spec : Prop :=
  ∀ n, P9704648271497601776.a n = A050531 n

end A050531

/-! ## A050531.P9795756194867305044

`A089353(∑[n+2]+4)`
-/

namespace A050531.P9795756194867305044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A050531.P9795756194867305044

namespace A050531

/-- `A089353(∑[n+2]+4)` -/
def P9795756194867305044.Spec : Prop :=
  ∀ n, P9795756194867305044.a n = A050531 n

end A050531

/-!
# A050532: Number of multigraphs with loops on 4 nodes with n edges.

The programs for A050532, there is no canonical definition to state claims against.
-/

/-! ## A050532.P166310346632122928

`A290428(∑[n+5]+5)`
-/

namespace A050532.P166310346632122928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290428 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A050532.P166310346632122928

/-! ## A050532.P1814708873941413114

`record[A290428(A052905(n))]`
-/

namespace A050532.P1814708873941413114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290428 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050532.P1814708873941413114

/-! ## A050532.P13490471923735253910

`A290428(A052905(n+2))+A000007(n+1)`
-/

namespace A050532.P13490471923735253910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290428 (A052905 (n + 2)).toNat + A000007 (n + 1)

end

end A050532.P13490471923735253910

/-! ## A050532.P364207353436689566

`A290428(A052905(n+2))%A000043(n+1)²`
-/

namespace A050532.P364207353436689566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290428 (A052905 (n + 2)).toNat) (A000043 (n + 1) ^ 2)

end

end A050532.P364207353436689566

/-!
# A050533: Thickened pyramidal numbers: a(n) = 2*(n+1)*n + Sum_{i=1..n} (4*i*(i-1) + 1).

The programs for A050533, the canonical program `A050533.P9050323563996792105` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050533 has offset 0).

The definition of A050533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050533.P12694061583203183327

`n*(4*n²+6*n+5)/3`
-/

namespace A050533.P12694061583203183327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (4 * n ^ 2 + 6 * n + 5) : ℚ) / 3

end

end A050533.P12694061583203183327

namespace A050533

/-- `n*(4*n²+6*n+5)/3` -/
def P12694061583203183327.Spec : Prop :=
  ∀ n, P12694061583203183327.a n = (A050533 n : ℚ)

theorem P12694061583203183327.correct : P12694061583203183327.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A050533, Nat.add_sub_cancel, A050533.P12694061583203183327.a, A050533.P9050323563996792105.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A050533, Nat.add_sub_cancel, A050533.P12694061583203183327.a, A050533.P9050323563996792105.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A050533

/-! ## A050533.P9155022791241957477

`C(2*n+1, 3)+2*(n+1)*n`
-/

namespace A050533.P9155022791241957477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3 + 2 * (n + 1) * n

end

end A050533.P9155022791241957477

namespace A050533

/-- `C(2*n+1, 3)+2*(n+1)*n` -/
def P9155022791241957477.Spec : Prop :=
  ∀ n, (P9155022791241957477.a n : ℤ) = A050533 n

end A050533

/-! ## A050533.P9050323563996792105

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=22, a(3)=59`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050533

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9050323563996792105.Spec : Prop :=
  ∀ n, P9050323563996792105.a n = A050533 n

theorem P9050323563996792105.correct : P9050323563996792105.Spec := by
  intro n
  simp only [A050533]

end A050533

/-! ## A050533.P9267763683400804267

`A000447(n)+4*A000217(n)`
-/

namespace A050533.P9267763683400804267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n + 4 * A000217 n

end

end A050533.P9267763683400804267

namespace A050533

/-- `A000447(n)+4*A000217(n)` -/
def P9267763683400804267.Spec : Prop :=
  ∀ n, P9267763683400804267.a n = A050533 n

end A050533

/-! ## A050533.P16026934701764197631

`∑[ceil(2*n/acot(2*n))]`
-/

namespace A050533.P16026934701764197631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050533.P16026934701764197631

namespace A050533

/-- `∑[ceil(2*n/acot(2*n))]` -/
def P16026934701764197631.Spec : Prop :=
  ∀ n, P16026934701764197631.a n = A050533 n

end A050533

/-! ## A050533.P14113052831535933231

`(2*n)²+a(n-1)+1` with `a(0)=0`
-/

namespace A050533.P14113052831535933231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n) ^ 2 + (a (n - 1) + 1)

end

end A050533.P14113052831535933231

namespace A050533

/-- `(2*n)²+a(n-1)+1` -/
def P14113052831535933231.Spec : Prop :=
  ∀ n, (P14113052831535933231.a n : ℤ) = A050533 n

end A050533

/-! ## A050533.P5295771662542215316

`a(n-1)+4*n*n+1` with `a(0)=0`
-/

namespace A050533.P5295771662542215316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (4 * (n * n) + 1)

end

end A050533.P5295771662542215316

namespace A050533

/-- `a(n-1)+4*n*n+1` -/
def P5295771662542215316.Spec : Prop :=
  ∀ n, (P5295771662542215316.a n : ℤ) = A050533 n

end A050533

/-! ## A050533.P13603668596679903450

`∑[1-(C(2, n+2)-(2*n)²)]`
-/

namespace A050533.P13603668596679903450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose 2 (n + 2) : ℤ) - ((2 * n) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050533.P13603668596679903450

namespace A050533

/-- `∑[1-(C(2, n+2)-(2*n)²)]` -/
def P13603668596679903450.Spec : Prop :=
  ∀ n, P13603668596679903450.a n = A050533 n

end A050533

/-! ## A050533.P15071761592249894560

`round(sqrt(2*C(∑[(2*n)²+1], 2)))`
-/

namespace A050533.P15071761592249894560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℝ))

end

end A050533.P15071761592249894560

namespace A050533

/-- `round(sqrt(2*C(∑[(2*n)²+1], 2)))` -/
def P15071761592249894560.Spec : Prop :=
  ∀ n, P15071761592249894560.a n = A050533 n

end A050533

/-! ## A050533.P13827914320848911375

`n+A002492(n)`
-/

namespace A050533.P13827914320848911375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A002492 n

end

end A050533.P13827914320848911375

namespace A050533

/-- `n+A002492(n)` -/
def P13827914320848911375.Spec : Prop :=
  ∀ n, P13827914320848911375.a n = A050533 n

end A050533

/-! ## A050533.P18133885794733104650

`floor(A057813(n)/2)`
-/

namespace A050533.P18133885794733104650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057813 n : ℚ) / 2⌋

end

end A050533.P18133885794733104650

namespace A050533

/-- `floor(A057813(n)/2)` -/
def P18133885794733104650.Spec : Prop :=
  ∀ n, P18133885794733104650.a n = A050533 n

end A050533

/-! ## A050533.P842849179135121656

`∑[A005899(n)-1]`
-/

namespace A050533.P842849179135121656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050533.P842849179135121656

namespace A050533

/-- `∑[A005899(n)-1]` -/
def P842849179135121656.Spec : Prop :=
  ∀ n, P842849179135121656.a n = A050533 n

end A050533

/-! ## A050533.P5582047504760464357

`∑[A053755(n)]-1`
-/

namespace A050533.P5582047504760464357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A050533.P5582047504760464357

namespace A050533

/-- `∑[A053755(n)]-1` -/
def P5582047504760464357.Spec : Prop :=
  ∀ n, P5582047504760464357.a n = A050533 n

end A050533

/-! ## A050533.P16605112402643062757

`∑[A016742(n)]+n`
-/

namespace A050533.P16605112402643062757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A050533.P16605112402643062757

namespace A050533

/-- `∑[A016742(n)]+n` -/
def P16605112402643062757.Spec : Prop :=
  ∀ n, P16605112402643062757.a n = A050533 n

end A050533

/-! ## A050533.P9788945913909211067

`A332698(n)-∑[n]`
-/

namespace A050533.P9788945913909211067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332698 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A050533.P9788945913909211067

namespace A050533

/-- `A332698(n)-∑[n]` -/
def P9788945913909211067.Spec : Prop :=
  ∀ n, P9788945913909211067.a n = A050533 n

end A050533

/-! ## A050533.P7012083165699590517

`A001845(n)-(n+1)`
-/

namespace A050533.P7012083165699590517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n - (n + 1 : ℤ)

end

end A050533.P7012083165699590517

namespace A050533

/-- `A001845(n)-(n+1)` -/
def P7012083165699590517.Spec : Prop :=
  ∀ n, P7012083165699590517.a n = A050533 n

end A050533

/-! ## A050533.P5379866686954458064

`A166464(n)-1+n`
-/

namespace A050533.P5379866686954458064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166464 n - 1 + (n : ℤ)

end

end A050533.P5379866686954458064

namespace A050533

/-- `A166464(n)-1+n` -/
def P5379866686954458064.Spec : Prop :=
  ∀ n, P5379866686954458064.a n = A050533 n

end A050533

/-! ## A050533.P15010744471621258526

`A100504(n)-(n+2)`
-/

namespace A050533.P15010744471621258526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100504 n - (n + 2 : ℤ)

end

end A050533.P15010744471621258526

namespace A050533

/-- `A100504(n)-(n+2)` -/
def P15010744471621258526.Spec : Prop :=
  ∀ n, P15010744471621258526.a n = A050533 n

end A050533

/-! ## A050533.P8515244896792286004

`2*A006331(n)+n`
-/

namespace A050533.P8515244896792286004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006331 n + (n : ℤ)

end

end A050533.P8515244896792286004

namespace A050533

/-- `2*A006331(n)+n` -/
def P8515244896792286004.Spec : Prop :=
  ∀ n, P8515244896792286004.a n = A050533 n

end A050533

/-! ## A050533.P12511739612728170267

`4*A000330(n)+n`
-/

namespace A050533.P12511739612728170267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000330 n + (n : ℤ)

end

end A050533.P12511739612728170267

namespace A050533

/-- `4*A000330(n)+n` -/
def P12511739612728170267.Spec : Prop :=
  ∀ n, P12511739612728170267.a n = A050533 n

end A050533

/-!
# A050534: Tritriangular numbers: a(n) = binomial(binomial(n,2),2) = n*(n+1)*(n-1)*(n-2)/8.

The programs for A050534, the canonical program `A050534.P12216670126680451922` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050534 has offset 0).

The definition of A050534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n, 2), 2)` (program `A050534.P12216670126680451922`, by `A050534.P12216670126680451922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050534.P12216670126680451922

`C(C(n, 2), 2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050534

/-- `C(C(n, 2), 2)` -/
def P12216670126680451922.Spec : Prop :=
  ∀ n, (P12216670126680451922.a n : ℤ) = A050534 n

theorem P12216670126680451922.correct : P12216670126680451922.Spec := by
  intro n
  simp only [A050534]

end A050534

/-! ## A050534.P15586534972028640226

`n*(n+1)*(n-1)*(n-2)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050534.P15586534972028640226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) : ℚ) / 8

end

end A050534.P15586534972028640226

namespace A050534

/-- `n*(n+1)*(n-1)*(n-2)/8` -/
def P15586534972028640226.Spec : Prop :=
  ∀ n, P15586534972028640226.a n = (A050534 n : ℚ)

end A050534

/-! ## A050534.P5364314856636162671

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3, a(4)=15`
-/

namespace A050534.P5364314856636162671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 3, 15] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A050534.P5364314856636162671

namespace A050534

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5364314856636162671.Spec : Prop :=
  ∀ n, P5364314856636162671.a n = A050534 n

end A050534

/-! ## A050534.P3206880659201277395

`A002817(n)-A002411(n)`
-/

namespace A050534.P3206880659201277395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - A002411 n

end

end A050534.P3206880659201277395

namespace A050534

/-- `A002817(n)-A002411(n)` -/
def P3206880659201277395.Spec : Prop :=
  ∀ n, P3206880659201277395.a n = A050534 n

end A050534

/-! ## A050534.P9722346743945165969

`A006528(n)-A002817(n)`
-/

namespace A050534.P9722346743945165969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n - A002817 n

end

end A050534.P9722346743945165969

namespace A050534

/-- `A006528(n)-A002817(n)` -/
def P9722346743945165969.Spec : Prop :=
  ∀ n, P9722346743945165969.a n = A050534 n

end A050534

/-! ## A050534.P6144150644105153626

`3*A000332(n+1)`
-/

namespace A050534.P6144150644105153626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000332 (n + 1)

end

end A050534.P6144150644105153626

namespace A050534

/-- `3*A000332(n+1)` -/
def P6144150644105153626.Spec : Prop :=
  ∀ n, P6144150644105153626.a n = A050534 n

end A050534

/-! ## A050534.P15105326502045405326

`C(∑[ogf(x^2/(1-2x+x^2))], 2)`
-/

namespace A050534.P15105326502045405326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, 1] n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A050534.P15105326502045405326

namespace A050534

/-- `C(∑[ogf(x^2/(1-2x+x^2))], 2)` -/
def P15105326502045405326.Spec : Prop :=
  ∀ n, (P15105326502045405326.a n : ℤ) = A050534 n

end A050534

/-! ## A050534.P8933265663012925026

`∑[∑[∑[a(n-1)+3]]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A050534.P8933265663012925026
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050534.P8933265663012925026

namespace A050534

/-- `∑[∑[∑[a(n-1)+3]]]` -/
def P8933265663012925026.Spec : Prop :=
  ∀ n, (P8933265663012925026.a n : ℤ) = A050534 n

end A050534

/-! ## A050534.P13386355996064727245

`a(n-1)-∑[∑[a(n-1)-3]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A050534.P13386355996064727245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050534.P13386355996064727245

namespace A050534

/-- `a(n-1)-∑[∑[a(n-1)-3]]` -/
def P13386355996064727245.Spec : Prop :=
  ∀ n, P13386355996064727245.a n = A050534 n

end A050534

/-! ## A050534.P4441549167533020601

`C(A161680(n), 2)`
-/

namespace A050534.P4441549167533020601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161680 n).toNat 2

end

end A050534.P4441549167533020601

namespace A050534

/-- `C(A161680(n), 2)` -/
def P4441549167533020601.Spec : Prop :=
  ∀ n, (P4441549167533020601.a n : ℤ) = A050534 n

end A050534

/-! ## A050534.P11157715383961066874

`∑[A007531(n)/2]`
-/

namespace A050534.P11157715383961066874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050534.P11157715383961066874

namespace A050534

/-- `∑[A007531(n)/2]` -/
def P11157715383961066874.Spec : Prop :=
  ∀ n, P11157715383961066874.a n = (A050534 n : ℚ)

end A050534

/-! ## A050534.P14093514843117911294

`∑[A280058(n)/4]`
-/

namespace A050534.P14093514843117911294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280058 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050534.P14093514843117911294

namespace A050534

/-- `∑[A280058(n)/4]` -/
def P14093514843117911294.Spec : Prop :=
  ∀ n, P14093514843117911294.a n = (A050534 n : ℚ)

end A050534

/-! ## A050534.P7881162948972163523

`A037255(n)-n²`
-/

namespace A050534.P7881162948972163523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037255 n - (n ^ 2 : ℤ)

end

end A050534.P7881162948972163523

namespace A050534

/-- `A037255(n)-n²` -/
def P7881162948972163523.Spec : Prop :=
  ∀ n, P7881162948972163523.a n = A050534 n

end A050534

/-! ## A050534.P3864513841834637964

`∑[A060354(n)-n]`
-/

namespace A050534.P3864513841834637964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050534.P3864513841834637964

namespace A050534

/-- `∑[A060354(n)-n]` -/
def P3864513841834637964.Spec : Prop :=
  ∀ n, P3864513841834637964.a n = A050534 n

end A050534

/-! ## A050534.P5765320156124480468

`A101357(n)-∑[n]`
-/

namespace A050534.P5765320156124480468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101357 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A050534.P5765320156124480468

namespace A050534

/-- `A101357(n)-∑[n]` -/
def P5765320156124480468.Spec : Prop :=
  ∀ n, P5765320156124480468.a n = A050534 n

end A050534

/-! ## A050534.P16043983621918289635

`∑[A135503(abs(1-n))]`
-/

namespace A050534.P16043983621918289635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050534.P16043983621918289635

namespace A050534

/-- `∑[A135503(abs(1-n))]` -/
def P16043983621918289635.Spec : Prop :=
  ∀ n, P16043983621918289635.a n = A050534 n

end A050534

/-! ## A050534.P11832450273322836830

`∑[n]²-∑[A256857(n)]`
-/

namespace A050534.P11832450273322836830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A050534.P11832450273322836830

namespace A050534

/-- `∑[n]²-∑[A256857(n)]` -/
def P11832450273322836830.Spec : Prop :=
  ∀ n, P11832450273322836830.a n = A050534 n

end A050534

/-! ## A050534.P6040820994220815883

`∑[A158498(n+1)-(n+1)]`
-/

namespace A050534.P6040820994220815883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158498 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050534.P6040820994220815883

namespace A050534

/-- `∑[A158498(n+1)-(n+1)]` -/
def P6040820994220815883.Spec : Prop :=
  ∀ n, P6040820994220815883.a n = A050534 n

end A050534

/-! ## A050534.P11001346556815160076

`3*(A014626(n+1)-(n+1))`
-/

namespace A050534.P11001346556815160076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A014626 (n + 1) - (n + 1 : ℤ))

end

end A050534.P11001346556815160076

namespace A050534

/-- `3*(A014626(n+1)-(n+1))` -/
def P11001346556815160076.Spec : Prop :=
  ∀ n, P11001346556815160076.a n = A050534 n

end A050534

/-! ## A050534.P2673977491334824472

`A117662(n)+A000332(n)`
-/

namespace A050534.P2673977491334824472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 n + A000332 n

end

end A050534.P2673977491334824472

namespace A050534

/-- `A117662(n)+A000332(n)` -/
def P2673977491334824472.Spec : Prop :=
  ∀ n, P2673977491334824472.a n = A050534 n

end A050534

/-!
# A050535: Number of loopless multigraphs on infinite set of nodes with n edges.

The programs for A050535, there is no canonical definition to state claims against.
-/

/-! ## A050535.P17664799867203924218

`A369287(n*(n+2))`
-/

namespace A050535.P17664799867203924218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369287 (n * (n + 2))

end

end A050535.P17664799867203924218

/-! ## A050535.P2092092442715964494

`A192517(A064225(n))`
-/

namespace A050535.P2092092442715964494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A064225 n).toNat

end

end A050535.P2092092442715964494

/-! ## A050535.P15449233700436073617

`A192517(A276819(n))`
-/

namespace A050535.P15449233700436073617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A276819 n).toNat

end

end A050535.P15449233700436073617

/-! ## A050535.P7539768500924383920

`A192517(A022266(n)+1)`
-/

namespace A050535.P7539768500924383920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A022266 n + 1).toNat

end

end A050535.P7539768500924383920

/-! ## A050535.P13328996133393858554

`A192517(A062725(n)+1)`
-/

namespace A050535.P13328996133393858554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A062725 n + 1).toNat

end

end A050535.P13328996133393858554

/-!
# A050536: Iterated triangular numbers with seed 8.

The programs for A050536, the canonical program `A050536.P3580399618924798472` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050536 has offset 0).

The definition of A050536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050536.P3580399618924798472

`C(a(n-1)+1, 2)` with `a(0)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050536

/-- `C(a(n-1)+1, 2)` -/
def P3580399618924798472.Spec : Prop :=
  ∀ n, (P3580399618924798472.a n : ℤ) = A050536 n

theorem P3580399618924798472.correct : P3580399618924798472.Spec := by
  intro n
  simp only [A050536]

end A050536

/-! ## A050536.P573445469859461571

`(a(n-1)+a(n-1)²)/2` with `a(0)=8`
-/

namespace A050536.P573445469859461571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  (a (n - 1) + a (n - 1) ^ 2) / 2

end

end A050536.P573445469859461571

namespace A050536

/-- `(a(n-1)+a(n-1)²)/2` -/
def P573445469859461571.Spec : Prop :=
  ∀ n, P573445469859461571.a n = (A050536 n : ℚ)

end A050536

/-! ## A050536.P76331780508348460

`a(n-1)*(a(n-1)+1)/2` with `a(0)=8`
-/

namespace A050536.P76331780508348460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) * ((a (n - 1) + 1) / 2)

end

end A050536.P76331780508348460

namespace A050536

/-- `a(n-1)*(a(n-1)+1)/2` -/
def P76331780508348460.Spec : Prop :=
  ∀ n, P76331780508348460.a n = (A050536 n : ℚ)

end A050536

/-! ## A050536.P9036936257730216734

`a(n-1)-(a(n-1)-a(n-1)²)/2` with `a(0)=8`
-/

namespace A050536.P9036936257730216734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - (a (n - 1) - a (n - 1) ^ 2) / 2

end

end A050536.P9036936257730216734

namespace A050536

/-- `a(n-1)-(a(n-1)-a(n-1)²)/2` -/
def P9036936257730216734.Spec : Prop :=
  ∀ n, P9036936257730216734.a n = (A050536 n : ℚ)

end A050536

/-!
# A050539: Numbers k such that 27*2^k-1 is prime.

The programs for A050539, there is no canonical definition to state claims against.
-/

/-! ## A050539.P12423619223559702260

`val(Δ[A083201(n+5)], 2)`
-/

namespace A050539.P12423619223559702260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083201 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A050539.P12423619223559702260

/-! ## A050539.P1835772779098782946

`record[A010766(A246163(n+1))]`
-/

namespace A050539.P1835772779098782946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A246163 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050539.P1835772779098782946

/-! ## A050539.P536711572636263987

`A303601(A129578(n)+A000070(n))`
-/

namespace A050539.P536711572636263987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303601 (A129578 n + A000070 n).toNat

end

end A050539.P536711572636263987

/-! ## A050539.P12101700589037150236

`A001651(eq[A005136(n), A306682(n+1)])`
-/

namespace A050539.P12101700589037150236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050539.P12101700589037150236

/-!
# A050540: Numbers n such that 29*2^n-1 is prime.

The programs for A050540, there is no canonical definition to state claims against.
-/

/-! ## A050540.P4434176841657202806

`A060018(p?[A086640(n+1)])`
-/

namespace A050540.P4434176841657202806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A050540.P4434176841657202806

/-!
# A050542: Iterated triangular numbers with seed 5.

The programs for A050542, the canonical program `A050542.P1367645471516134622` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050542 has offset 0).

The definition of A050542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050542.P1367645471516134622

`C(a(n-1)+1, 2)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050542

/-- `C(a(n-1)+1, 2)` -/
def P1367645471516134622.Spec : Prop :=
  ∀ n, (P1367645471516134622.a n : ℤ) = A050542 n

theorem P1367645471516134622.correct : P1367645471516134622.Spec := by
  intro n
  simp only [A050542]

end A050542

/-! ## A050542.P5471759123463097759

`C(1-floor(-a(n-1)), 2)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A050542.P5471759123463097759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.choose (1 - (-(a (n - 1) : ℤ))).toNat 2

end

end A050542.P5471759123463097759

namespace A050542

/-- `C(1-floor(-a(n-1)), 2)` -/
def P5471759123463097759.Spec : Prop :=
  ∀ n, (P5471759123463097759.a n : ℤ) = A050542 n

end A050542

/-! ## A050542.P9226493049843500043

`floor((a(n-1)+1/2)²/2)` with `a(0)=5`
-/

namespace A050542.P9226493049843500043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊((a (n - 1) : ℚ) + (1 : ℚ) / 2) ^ 2 / 2⌋

end

end A050542.P9226493049843500043

namespace A050542

/-- `floor((a(n-1)+1/2)²/2)` -/
def P9226493049843500043.Spec : Prop :=
  ∀ n, P9226493049843500043.a n = A050542 n

end A050542

/-! ## A050542.P13849322557312755667

`(a(n-1)+a(n-1)²)/2` with `a(0)=5`
-/

namespace A050542.P13849322557312755667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (a (n - 1) + a (n - 1) ^ 2) / 2

end

end A050542.P13849322557312755667

namespace A050542

/-- `(a(n-1)+a(n-1)²)/2` -/
def P13849322557312755667.Spec : Prop :=
  ∀ n, P13849322557312755667.a n = (A050542 n : ℚ)

end A050542

/-!
# A050543: Numbers n such that 35*2^n-1 is prime.

The programs for A050543, there is no canonical definition to state claims against.
-/

/-! ## A050543.P11630042763130206932

`A094748(A000636(n+1))`
-/

namespace A050543.P11630042763130206932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094748 (A000636 (n + 1)).toNat

end

end A050543.P11630042763130206932

/-! ## A050543.P8169162525008085390

`∑[A213592(A001003(n+2))]`
-/

namespace A050543.P8169162525008085390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213592 (A001003 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050543.P8169162525008085390

/-!
# A050544: Numbers k such that 37*2^k-1 is prime.

The programs for A050544, there is no canonical definition to state claims against.
-/

/-! ## A050544.P12960755752971945339

`A050413(n+1)+1`
-/

namespace A050544.P12960755752971945339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050413 (n + 1) + 1

end

end A050544.P12960755752971945339

/-! ## A050544.P16710609827242354631

`or(1, A050413(Δ[n²]-n))`
-/

namespace A050544.P16710609827242354631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A050413 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A050544.P16710609827242354631

/-! ## A050544.P14398969861682902845

`xor(1, A050413(lt[∑{e}[n, n^#], (2*n)²]))`
-/

namespace A050544.P14398969861682902845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), n ^ Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A050413 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n))

end

end A050544.P14398969861682902845

/-!
# A050545: Numbers n such that 39*2^n-1 is a prime.

The programs for A050545, there is no canonical definition to state claims against.
-/

/-! ## A050545.P10101926149218142443

`A354676(n+1)-A058348(A001358(3*n+1))`
-/

namespace A050545.P10101926149218142443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354676 (n + 1) - A058348 (A001358 (3 * n + 1)).toNat

end

end A050545.P10101926149218142443

/-!
# A050546: Numbers n such that 41*2^n-1 is prime.

The programs for A050546, there is no canonical definition to state claims against.
-/

/-! ## A050546.P4458777755605805066

`∑[A046644(A153889(n+1)+1)]`
-/

namespace A050546.P4458777755605805066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A153889 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050546.P4458777755605805066

/-! ## A050546.P10240612625168425531

`∑[and(A018226(n+1), A163473(n))]`
-/

namespace A050546.P10240612625168425531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018226 (n + 1)) (A163473 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050546.P10240612625168425531

/-! ## A050546.P16366769247011079682

`∑[A048896(A179328(n+1)-A070939(n))]`
-/

namespace A050546.P16366769247011079682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A179328 (n + 1) - A070939 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050546.P16366769247011079682

/-!
# A050547: Numbers n such that 43*2^n-1 is prime.

The programs for A050547, there is no canonical definition to state claims against.
-/

/-! ## A050547.P16244977883995794551

`A241835(A052955(3*(n+1)))-A134150(n+2)`
-/

namespace A050547.P16244977883995794551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241835 (A052955 (3 * (n + 1))).toNat - A134150 (n + 2)

end

end A050547.P16244977883995794551

/-!
# A050548: Iterated triangular numbers with seed 7.

The programs for A050548, the canonical program `A050548.P14802874570318310710` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050548 has offset 0).

The definition of A050548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050548.P14802874570318310710

`C(a(n-1)+1, 2)` with `a(0)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050548

/-- `C(a(n-1)+1, 2)` -/
def P14802874570318310710.Spec : Prop :=
  ∀ n, (P14802874570318310710.a n : ℤ) = A050548 n

theorem P14802874570318310710.correct : P14802874570318310710.Spec := by
  intro n
  simp only [A050548]

end A050548

/-! ## A050548.P7863430432322060779

`(a(n-1)+a(n-1)²)/2` with `a(0)=7`
-/

namespace A050548.P7863430432322060779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  (a (n - 1) + a (n - 1) ^ 2) / 2

end

end A050548.P7863430432322060779

namespace A050548

/-- `(a(n-1)+a(n-1)²)/2` -/
def P7863430432322060779.Spec : Prop :=
  ∀ n, P7863430432322060779.a n = (A050548 n : ℚ)

end A050548

/-! ## A050548.P16805842303870918857

`(a(n-1)+1)/2*a(n-1)` with `a(0)=7`
-/

namespace A050548.P16805842303870918857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  (a (n - 1) + 1) / 2 * a (n - 1)

end

end A050548.P16805842303870918857

namespace A050548

/-- `(a(n-1)+1)/2*a(n-1)` -/
def P16805842303870918857.Spec : Prop :=
  ∀ n, P16805842303870918857.a n = (A050548 n : ℚ)

end A050548

/-! ## A050548.P9820228758680036126

`a(n-1)-(a(n-1)-a(n-1)²)/2` with `a(0)=7`
-/

namespace A050548.P9820228758680036126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - (a (n - 1) - a (n - 1) ^ 2) / 2

end

end A050548.P9820228758680036126

namespace A050548

/-- `a(n-1)-(a(n-1)-a(n-1)²)/2` -/
def P9820228758680036126.Spec : Prop :=
  ∀ n, P9820228758680036126.a n = (A050548 n : ℚ)

end A050548

/-!
# A050550: Numbers n such that 49*2^n-1 is prime.

The programs for A050550, there is no canonical definition to state claims against.
-/

/-! ## A050550.P6799060440730468695

`record[or(1, A000203(A272120(n+1)))]`
-/

namespace A050550.P6799060440730468695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000203 (A272120 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050550.P6799060440730468695

/-! ## A050550.P15572387935235124430

`or(A282863(A298672(n)), A284742(n+1))`
-/

namespace A050550.P15572387935235124430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A282863 (A298672 n).toNat) (A284742 (n + 1))

end

end A050550.P15572387935235124430

/-! ## A050550.P17335760176751435437

`lt[A215456(n+3), A006530(A215459(n+1))]`
-/

namespace A050550.P17335760176751435437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215456 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A215459 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050550.P17335760176751435437

/-! ## A050550.P16501384524159709830

`eq[A057427(A086810(n+4)), A077610(3*(n+1))]`
-/

namespace A050550.P16501384524159709830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A086810 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050550.P16501384524159709830

/-!
# A050555: Numbers n such that 59*2^n-1 is prime.

The programs for A050555, there is no canonical definition to state claims against.
-/

/-! ## A050555.P16481880232987902692

`A073806(A250142(n+2))`
-/

namespace A050555.P16481880232987902692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073806 (A250142 (n + 2)).toNat

end

end A050555.P16481880232987902692

/-!
# A050557: Numbers k such that 63*2^k-1 is prime.

The programs for A050557, there is no canonical definition to state claims against.
-/

/-! ## A050557.P2324490321563841762

`∑[and(A093545(n+1), A093552(n))]`
-/

namespace A050557.P2324490321563841762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093545 (n + 1)) (A093552 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050557.P2324490321563841762

/-!
# A050560: Numbers n such that 69*2^n-1 is prime.

The programs for A050560, there is no canonical definition to state claims against.
-/

/-! ## A050560.P8642553605162034469

`eq[A231367(n), A337599(n)]`
-/

namespace A050560.P8642553605162034469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231367 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050560.P8642553605162034469

/-! ## A050560.P14432679750987199620

`lt[A337983(n), A007305(A003188(n))]`
-/

namespace A050560.P14432679750987199620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337983 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050560.P14432679750987199620

/-! ## A050560.P16463331375967437032

`eq[A000034(A319254(n+1)), A078898(n)]`
-/

namespace A050560.P16463331375967437032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A319254 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050560.P16463331375967437032

/-! ## A050560.P8895134420998301248

`eq[A084360(n+1), A178334(A226874(n))]`
-/

namespace A050560.P8895134420998301248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A226874 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050560.P8895134420998301248

/-! ## A050560.P1107511672996653066

`A181440(lt[A337604(n), A025689(n+1)])`
-/

namespace A050560.P1107511672996653066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050560.P1107511672996653066

/-!
# A050562: Numbers n such that 73*2^n-1 is prime.

The programs for A050562, there is no canonical definition to state claims against.
-/

/-! ## A050562.P17955206078282775728

`A179874(A215320(n+1)+1)`
-/

namespace A050562.P17955206078282775728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179874 (A215320 (n + 1) + 1).toNat

end

end A050562.P17955206078282775728

/-! ## A050562.P17847202526310935466

`p?[A191894(n+1)*A305391(n)]`
-/

namespace A050562.P17847202526310935466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191894 (n + 1) * A305391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050562.P17847202526310935466

/-!
# A050567: Numbers n such that 83*2^n-1 is prime.

The programs for A050567, there is no canonical definition to state claims against.
-/

/-! ## A050567.P4819880047199841931

`∑[A005361(A324736(n+1)²)]`
-/

namespace A050567.P4819880047199841931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A324736 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050567.P4819880047199841931

/-! ## A050567.P3835864380766880467

`∑[A068068(∑[A035342(n+5)])]`
-/

namespace A050567.P3835864380766880467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050567.P3835864380766880467

/-! ## A050567.P100925362998874267

`∑[A195051(record[A080510(n+1)])]`
-/

namespace A050567.P100925362998874267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195051 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050567.P100925362998874267

/-! ## A050567.P18178694835190644604

`∑[A083533(A124227(3*n+4))]`
-/

namespace A050567.P18178694835190644604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083533 (A124227 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050567.P18178694835190644604

/-! ## A050567.P6555752368043354823

`∑[A068068(A187142(2*n+3)+1)]+1`
-/

namespace A050567.P6555752368043354823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (A187142 (2 * n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A050567.P6555752368043354823

/-!
# A050571: Numbers n such that 91*2^n-1 is prime.

The programs for A050571, there is no canonical definition to state claims against.
-/

/-! ## A050571.P467601319419178546

`∑[A293442(A196118(Δ[n²]))]`
-/

namespace A050571.P467601319419178546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A196118 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050571.P467601319419178546

/-! ## A050571.P17999537274042314156

`lt[A097465(A097502(n+2)), A097467(n+1)]`
-/

namespace A050571.P17999537274042314156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097465 (A097502 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050571.P17999537274042314156

/-!
# A050573: Numbers k such that 95*2^k-1 is prime.

The programs for A050573, there is no canonical definition to state claims against.
-/

/-! ## A050573.P7687263931221406

`A318950(A059294(n))+A029988(n+3)`
-/

namespace A050573.P7687263931221406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318950 (A059294 n).toNat + A029988 (n + 3)

end

end A050573.P7687263931221406

/-!
# A050574: Numbers n such that 97*2^n-1 is prime.

The programs for A050574, there is no canonical definition to state claims against.
-/

/-! ## A050574.P12342799148453175487

`A063954(∑[∑[2*n]+1])`
-/

namespace A050574.P12342799148453175487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063954 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050574.P12342799148453175487

/-!
# A050576: Numbers n such that 101*2^n-1 is prime.

The programs for A050576, there is no canonical definition to state claims against.
-/

/-! ## A050576.P4466085910855028414

`A260391(A060125(3*n+4)+A052129(n))`
-/

namespace A050576.P4466085910855028414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (A060125 (3 * n + 4) + A052129 n).toNat

end

end A050576.P4466085910855028414

/-!
# A050578: Numbers n such that 105*2^n-1 is prime.

The programs for A050578, there is no canonical definition to state claims against.
-/

/-! ## A050578.P17092548699153002636

`A117929(A071255(n+1))+A085266(n+1)`
-/

namespace A050578.P17092548699153002636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (A071255 (n + 1)).toNat + A085266 (n + 1)

end

end A050578.P17092548699153002636

/-!
# A050582: Numbers k such that 113*2^k-1 is prime.

The programs for A050582, there is no canonical definition to state claims against.
-/

/-! ## A050582.P13534745709204048063

`A007376(2*n+3)+A007401(A000108(n))+A007361(n+4)`
-/

namespace A050582.P13534745709204048063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (2 * n + 3) + (A007401 (A000108 n).toNat + A007361 (n + 4))

end

end A050582.P13534745709204048063

/-!
# A050583: Numbers n such that 115*2^n-1 is prime.

The programs for A050583, there is no canonical definition to state claims against.
-/

/-! ## A050583.P10987708978109786365

`lt[A246851(3*(n+1)), A326773(A006530(n+5))]`
-/

namespace A050583.P10987708978109786365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246851 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326773 (A006530 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050583.P10987708978109786365

/-! ## A050583.P3749267097269090413

`eq[A353805(A353793(n+5)), A353817(3*n+4)]`
-/

namespace A050583.P3749267097269090413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353805 (A353793 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353817 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050583.P3749267097269090413

/-!
# A050584: Numbers n such that 117*2^n-1 is prime.

The programs for A050584, there is no canonical definition to state claims against.
-/

/-! ## A050584.P16386589778129198056

`eq[Δ[A321292(n+1)], A173442(n+1)]`
-/

namespace A050584.P16386589778129198056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A050584.P16386589778129198056

/-! ## A050584.P10169395819601944665

`eq[A076479(A057568(n+1)), A333381(n)]`
-/

namespace A050584.P10169395819601944665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A057568 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050584.P10169395819601944665

/-!
# A050585: Numbers n such that 119*2^n-1 is prime.

The programs for A050585, there is no canonical definition to state claims against.
-/

/-! ## A050585.P8851390717085398826

`A225530(A222962(n+1)+A000217(n))`
-/

namespace A050585.P8851390717085398826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A222962 (n + 1) + A000217 n).toNat

end

end A050585.P8851390717085398826

/-!
# A050588: Numbers n such that 125*2^n-1 is prime.

The programs for A050588, there is no canonical definition to state claims against.
-/

/-! ## A050588.P15107673614977618781

`A356664(A000041(n+2)*A002061(n))`
-/

namespace A050588.P15107673614977618781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356664 (A000041 (n + 2) * A002061 n).toNat

end

end A050588.P15107673614977618781

/-!
# A050595: Numbers k such that 139*2^k-1 is prime.

The programs for A050595, there is no canonical definition to state claims against.
-/

/-! ## A050595.P8910587503774615805

`lt[A335422(3*n), A046523(A090381(n))]`
-/

namespace A050595.P8910587503774615805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335422 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A090381 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050595.P8910587503774615805

/-! ## A050595.P18008731020356553282

`lt[2^(∑[n+1]%(n+2))-1, A266253(A136069(n+1))]`
-/

namespace A050595.P18008731020356553282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2)) : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266253 (A136069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050595.P18008731020356553282

/-! ## A050595.P14565330540159072025

`eq[A005234(A370050(3*n+1)), A280193(n+1)]`
-/

namespace A050595.P14565330540159072025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005234 (A370050 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050595.P14565330540159072025

/-! ## A050595.P17684688143448252800

`A335074(A209934(n+1)+1+n)`
-/

namespace A050595.P17684688143448252800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335074 (A209934 (n + 1) + 1 + (n : ℤ)).toNat

end

end A050595.P17684688143448252800

/-! ## A050595.P5861068071160116323

`eq[A015910(A110180(n)), A249122(n+5)]`
-/

namespace A050595.P5861068071160116323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (A110180 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050595.P5861068071160116323

/-!
# A050597: Numbers n such that 143*2^n-1 is prime.

The programs for A050597, there is no canonical definition to state claims against.
-/

/-! ## A050597.P3996600754547891224

`record[and(A023978(n+1), A103653(n+1))]`
-/

namespace A050597.P3996600754547891224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023978 (n + 1)) (A103653 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050597.P3996600754547891224

/-! ## A050597.P17247255305500420686

`∑[A000689(A335720(n))]+1`
-/

namespace A050597.P17247255305500420686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 (A335720 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A050597.P17247255305500420686

/-! ## A050597.P9890605733679024548

`record[A088680(A100826(n+1)²)]`
-/

namespace A050597.P9890605733679024548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (A100826 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050597.P9890605733679024548

/-! ## A050597.P5620027694684711133

`∑[A136164(∑[A089503(n+3)])]`
-/

namespace A050597.P5620027694684711133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089503 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136164 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050597.P5620027694684711133

/-! ## A050597.P11891251698702294311

`∑[A049234(record[A090545(n+1)])]`
-/

namespace A050597.P11891251698702294311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049234 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050597.P11891251698702294311

/-!
# A050598: Numbers n such that 145*2^n-1 is prime.

The programs for A050598, there is no canonical definition to state claims against.
-/

/-! ## A050598.P826185802723462912

`or(5, A169898(A001844(n)))`
-/

namespace A050598.P826185802723462912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (A169898 (A001844 n).toNat)

end

end A050598.P826185802723462912

/-! ## A050598.P4313635689327055196

`or(5, A169898(∑[A008574(n)]))`
-/

namespace A050598.P4313635689327055196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (A169898 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A050598.P4313635689327055196

