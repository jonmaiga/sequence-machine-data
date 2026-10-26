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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A169900: Earliest sequence such that xy | a(x+y) for all x>=1, y>=1.

The programs for A169900, the canonical program `A169900.P3190041805646799674` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169900 has offset 1).

The definition of A169900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169900.P3190041805646799674

`A003418(n)*A048671(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A169900

/-- `A003418(n)*A048671(n+1)` -/
def P3190041805646799674.Spec : Prop :=
  ∀ n, P3190041805646799674.a n = A169900 (n + 1)

theorem P3190041805646799674.correct : P3190041805646799674.Spec := by
  intro n
  simp only [A169900, Nat.add_sub_cancel]

end A169900

/-! ## A169900.P14969921754249514730

`A048671(n+1)²*A002944(n+1)`
-/

namespace A169900.P14969921754249514730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) ^ 2 * A002944 (n + 1)

end

end A169900.P14969921754249514730

namespace A169900

/-- `A048671(n+1)²*A002944(n+1)` -/
def P14969921754249514730.Spec : Prop :=
  ∀ n, P14969921754249514730.a n = A169900 (n + 1)

end A169900

/-! ## A169900.P777625511960417143

`(n+1)/A014963(n+1)*A003418(n)`
-/

namespace A169900.P777625511960417143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014963 (n + 1) : ℚ) * (A003418 n : ℚ)

end

end A169900.P777625511960417143

namespace A169900

/-- `(n+1)/A014963(n+1)*A003418(n)` -/
def P777625511960417143.Spec : Prop :=
  ∀ n, P777625511960417143.a n = (A169900 (n + 1) : ℚ)

end A169900

/-! ## A169900.P13470514136635335683

`A003418(n)/A048619(n)*A263673(n)`
-/

namespace A169900.P13470514136635335683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A048619 n : ℚ) * (A263673 n : ℚ)

end

end A169900.P13470514136635335683

namespace A169900

/-- `A003418(n)/A048619(n)*A263673(n)` -/
def P13470514136635335683.Spec : Prop :=
  ∀ n, P13470514136635335683.a n = (A169900 (n + 1) : ℚ)

end A169900

/-! ## A169900.P7746365425835543921

`gcd(A003418(n), A131738(n))*A003418(n)`
-/

namespace A169900.P7746365425835543921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A003418 n) (A131738 n) : ℤ) * A003418 n

end

end A169900.P7746365425835543921

namespace A169900

/-- `gcd(A003418(n), A131738(n))*A003418(n)` -/
def P7746365425835543921.Spec : Prop :=
  ∀ n, P7746365425835543921.a n = A169900 (n + 1)

end A169900

/-! ## A169900.P13600183641296330336

`A048671(n+1)*A225558(n)*A000793(n)`
-/

namespace A169900.P13600183641296330336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) * A225558 n * A000793 n

end

end A169900.P13600183641296330336

namespace A169900

/-- `A048671(n+1)*A225558(n)*A000793(n)` -/
def P13600183641296330336.Spec : Prop :=
  ∀ n, P13600183641296330336.a n = A169900 (n + 1)

end A169900

/-! ## A169900.P1414322590063433591

`A003418(n)/A002944(n+1)*A003418(n)`
-/

namespace A169900.P1414322590063433591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A002944 (n + 1) : ℚ) * (A003418 n : ℚ)

end

end A169900.P1414322590063433591

namespace A169900

/-- `A003418(n)/A002944(n+1)*A003418(n)` -/
def P1414322590063433591.Spec : Prop :=
  ∀ n, P1414322590063433591.a n = (A169900 (n + 1) : ℚ)

end A169900

/-! ## A169900.P9901498216584852680

`(A100994(n+1)-A133937(n+1))*A003418(n)`
-/

namespace A169900.P9901498216584852680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100994 (n + 1) - A133937 (n + 1)) * A003418 n

end

end A169900.P9901498216584852680

namespace A169900

/-- `(A100994(n+1)-A133937(n+1))*A003418(n)` -/
def P9901498216584852680.Spec : Prop :=
  ∀ n, P9901498216584852680.a n = A169900 (n + 1)

theorem P9901498216584852680.correct : P9901498216584852680.Spec := by
  intro n
  simp only [A169900, Nat.add_sub_cancel, A169900.P9901498216584852680.a, A169900.P3190041805646799674.a, A003418, A003418.P6976248655893080794.a, A048671, A048671.P10271734858964489763.a, A100994, A100994.P12734037206336579450.a, A133937, A133937.P361040303253339586.a, A002944, A002944.P11615207776596987764.a, A014963, A014963.P5975177236000282614.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A080304, A080304.P9910366703239988167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169900

/-! ## A169900.P17402662440744395903

`A189914(n+1)/A066781(n+1)*A003418(n)`
-/

namespace A169900.P17402662440744395903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189914 (n + 1) : ℚ) / (A066781 (n + 1) : ℚ) * (A003418 n : ℚ)

end

end A169900.P17402662440744395903

namespace A169900

/-- `A189914(n+1)/A066781(n+1)*A003418(n)` -/
def P17402662440744395903.Spec : Prop :=
  ∀ n, P17402662440744395903.a n = (A169900 (n + 1) : ℚ)

end A169900

/-! ## A169900.P15367735635970067191

`∏[A014963(n+1)]/A014963(n+1)*A048671(n+1)`
-/

namespace A169900.P15367735635970067191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014963 (n + 1) : ℚ) * (A048671 (n + 1) : ℚ)

end

end A169900.P15367735635970067191

namespace A169900

/-- `∏[A014963(n+1)]/A014963(n+1)*A048671(n+1)` -/
def P15367735635970067191.Spec : Prop :=
  ∀ n, P15367735635970067191.a n = (A169900 (n + 1) : ℚ)

end A169900

/-! ## A169900.P2043510942223700115

`gcd(A081528(n+1), A169902(n+1))`
-/

namespace A169900.P2043510942223700115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081528 (n + 1)) (A169902 (n + 1))

end

end A169900.P2043510942223700115

namespace A169900

/-- `gcd(A081528(n+1), A169902(n+1))` -/
def P2043510942223700115.Spec : Prop :=
  ∀ n, (P2043510942223700115.a n : ℤ) = A169900 (n + 1)

end A169900

/-! ## A169900.P11513742685415933206

`A003418(n)²/A002944(n+1)`
-/

namespace A169900.P11513742685415933206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n ^ 2 : ℚ) / (A002944 (n + 1) : ℚ)

end

end A169900.P11513742685415933206

namespace A169900

/-- `A003418(n)²/A002944(n+1)` -/
def P11513742685415933206.Spec : Prop :=
  ∀ n, P11513742685415933206.a n = (A169900 (n + 1) : ℚ)

end A169900

/-!
# A169901: Earliest sequence such that (x+y) | a(xy) for all x>=1, y>=1.

The programs for A169901, there is no canonical definition to state claims against.
-/

/-! ## A169901.P9698955762081686388

`lcm(A005496(A085908(n+1)), A063655(n+1))`
-/

namespace A169901.P9698955762081686388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005496 (A085908 (n + 1)).toNat) (A063655 (n + 1))

end

end A169901.P9698955762081686388

/-! ## A169901.P12346167539738501638

`lcm(A000120(A002351(n+1)), A246078(n+2))`
-/

namespace A169901.P12346167539738501638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000120 (A002351 (n + 1)).toNat) (A246078 (n + 2))

end

end A169901.P12346167539738501638

/-! ## A169901.P14019715982123582695

`lcm(A001222(A052156(n+2)), A035486(2*n+2))`
-/

namespace A169901.P14019715982123582695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A052156 (n + 2)).toNat) (A035486 (2 * n + 2))

end

end A169901.P14019715982123582695

/-!
# A169902: Earliest sequence such that xy | a(x+y) and (x+y) | a(xy) for all x >= 1, y >= 1.

The programs for A169902, the canonical program `A169902.P8256414419473513103` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169902 has offset 1).

The definition of A169902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169902.P8256414419473513103

`lcm(n+2, A169900(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A169902

/-- `lcm(n+2, A169900(n+1))` -/
def P8256414419473513103.Spec : Prop :=
  ∀ n, (P8256414419473513103.a n : ℤ) = A169902 (n + 1)

theorem P8256414419473513103.correct : P8256414419473513103.Spec := by
  intro n
  simp only [A169902, Nat.add_sub_cancel]

end A169902

/-! ## A169902.P1882510555782617060

`A014963(n+2)*A169900(n+1)`
-/

namespace A169902.P1882510555782617060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A169900 (n + 1)

end

end A169902.P1882510555782617060

namespace A169902

/-- `A014963(n+2)*A169900(n+1)` -/
def P1882510555782617060.Spec : Prop :=
  ∀ n, P1882510555782617060.a n = A169902 (n + 1)

end A169902

/-! ## A169902.P4038149521096054791

`A014963(n+2)*A048671(n+1)*A003418(n)`
-/

namespace A169902.P4038149521096054791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A048671 (n + 1) * A003418 n

end

end A169902.P4038149521096054791

namespace A169902

/-- `A014963(n+2)*A048671(n+1)*A003418(n)` -/
def P4038149521096054791.Spec : Prop :=
  ∀ n, P4038149521096054791.a n = A169902 (n + 1)

end A169902

/-! ## A169902.P2169378866524812771

`lcm(A003418(n), A020725(n+1))*A048671(n+1)`
-/

namespace A169902.P2169378866524812771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003418 n) (A020725 (n + 1)) : ℤ) * A048671 (n + 1)

end

end A169902.P2169378866524812771

namespace A169902

/-- `lcm(A003418(n), A020725(n+1))*A048671(n+1)` -/
def P2169378866524812771.Spec : Prop :=
  ∀ n, P2169378866524812771.a n = A169902 (n + 1)

end A169902

/-! ## A169902.P7557852953434267413

`A048671(n+1)²*A002944(n+1)*A014963(n+2)`
-/

namespace A169902.P7557852953434267413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) ^ 2 * A002944 (n + 1) * A014963 (n + 2)

end

end A169902.P7557852953434267413

namespace A169902

/-- `A048671(n+1)²*A002944(n+1)*A014963(n+2)` -/
def P7557852953434267413.Spec : Prop :=
  ∀ n, P7557852953434267413.a n = A169902 (n + 1)

end A169902

/-! ## A169902.P3145669599436382969

`A003418(n)²/A002944(n+1)*A014963(n+2)`
-/

namespace A169902.P3145669599436382969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n ^ 2 : ℚ) / (A002944 (n + 1) : ℚ) * (A014963 (n + 2) : ℚ)

end

end A169902.P3145669599436382969

namespace A169902

/-- `A003418(n)²/A002944(n+1)*A014963(n+2)` -/
def P3145669599436382969.Spec : Prop :=
  ∀ n, P3145669599436382969.a n = (A169902 (n + 1) : ℚ)

end A169902

/-!
# A169905: Carryless products of exactly two carryless primes.

The programs for A169905, there is no canonical definition to state claims against.
-/

/-! ## A169905.P1428883791958099009

`eq[1, A169886(floor(n/10))]`
-/

namespace A169905.P1428883791958099009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169886 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169905.P1428883791958099009

/-! ## A169905.P7469511262418579810

`eq[0, A098381(A132272(n))]`
-/

namespace A169905.P7469511262418579810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098381 (A132272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169905.P7469511262418579810

/-! ## A169905.P11605778511362919639

`eq[0, A098381(A179051(n))]`
-/

namespace A169905.P11605778511362919639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098381 (A179051 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169905.P11605778511362919639

/-! ## A169905.P7806079089899688021

`eq[0, A098381(A324160(n))]`
-/

namespace A169905.P7806079089899688021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098381 (A324160 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169905.P7806079089899688021

/-! ## A169905.P5352908757113027131

`eq[7, A094819(A054899(n))]`
-/

namespace A169905.P5352908757113027131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094819 (A054899 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169905.P5352908757113027131

/-!
# A169906: Carryless products 2*A169887, sorted and duplicates removed.

The programs for A169906, there is no canonical definition to state claims against.
-/

/-! ## A169906.P14457656995190543758

`eq[A151878(A194161(n+1)), A196564(n)]`
-/

namespace A169906.P14457656995190543758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A194161 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169906.P14457656995190543758

/-!
# A169907: Carryless product 2*A169887(n).

The programs for A169907, there is no canonical definition to state claims against.
-/

/-! ## A169907.P5636674034516495883

`A004520(A169887(n+1))`
-/

namespace A169907.P5636674034516495883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (A169887 (n + 1)).toNat

end

end A169907.P5636674034516495883

/-! ## A169907.P3377472454358321207

`A004520(A163396(n+1)^C(n, ∑{digits}[n, #]))`
-/

namespace A169907.P3377472454358321207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (A163396 (n + 1) ^ Nat.choose n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum).toNat

end

end A169907.P3377472454358321207

/-! ## A169907.P17373017405369779669

`A004520(A143712(n+1)%A059802(2*(n+1)))`
-/

namespace A169907.P17373017405369779669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (Int.tmod (A143712 (n + 1)) (A059802 (2 * (n + 1)))).toNat

end

end A169907.P17373017405369779669

/-! ## A169907.P6422032826044657439

`A004520(A163396(n+1)%A059802(2*(n+1)))`
-/

namespace A169907.P6422032826044657439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (Int.tmod (A163396 (n + 1)) (A059802 (2 * (n + 1)))).toNat

end

end A169907.P6422032826044657439

/-!
# A169908: a(n) = n*n in carryless digital root arithmetic in base 10.

The programs for A169908, there is no canonical definition to state claims against.
-/

/-! ## A169908.P17611765819716764546

`A339023(n^2^∑{digits}[n, #%C(n, #)])`
-/

namespace A169908.P17611765819716764546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339023 (n ^ 2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

end

end A169908.P17611765819716764546

/-! ## A169908.P8407958106315855901

`A339023(n^A309864(n))`
-/

namespace A169908.P8407958106315855901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339023 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A309864 n : ℤ))).toNat

end

end A169908.P8407958106315855901

/-! ## A169908.P11152059164268464204

`A339023(n^A322283(n))`
-/

namespace A169908.P11152059164268464204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339023 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A322283 n : ℤ))).toNat

end

end A169908.P11152059164268464204

/-! ## A169908.P13760372999613941628

`A339023(n^dr(A139337(n)))`
-/

namespace A169908.P13760372999613941628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339023 (n ^ SequenceMachineLib.digitalRoot (A139337 n))

end

end A169908.P13760372999613941628

/-! ## A169908.P6402094473150941185

`A339023(n^A097154(n+1))`
-/

namespace A169908.P6402094473150941185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339023 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A097154 (n + 1) : ℤ))).toNat

end

end A169908.P6402094473150941185

/-!
# A169909: a(n) = n+n in carryless arithmetic mod 9 in base 10.

The programs for A169909, there is no canonical definition to state claims against.
-/

/-! ## A169909.P11722792912265636958

`A169910(n-Δ[A066568(n)])`
-/

namespace A169909.P11722792912265636958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169910 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A169909.P11722792912265636958

/-! ## A169909.P10768246189804530233

`A169910(n)+Δ[-A066568(n)]`
-/

namespace A169909.P10768246189804530233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A066568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169910 n + (f1 (n + 1) - f1 n)

end

end A169909.P10768246189804530233

/-! ## A169909.P16256802180034919335

`A169910(n-Δ[A160941(n+1)])`
-/

namespace A169909.P16256802180034919335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169910 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A169909.P16256802180034919335

/-! ## A169909.P14897550129758802578

`A169910(n)-A054899(Δ[A051022(n)])`
-/

namespace A169909.P14897550129758802578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169910 n - A054899 (f1 (n + 1) - f1 n).toNat

end

end A169909.P14897550129758802578

/-! ## A169909.P2237736515708752103

`A169910(n)-A059995(Δ[A051022(n)])`
-/

namespace A169909.P2237736515708752103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169910 n - A059995 (f1 (n + 1) - f1 n).toNat

end

end A169909.P2237736515708752103

/-! ## A169909.P2758298854028778716

`A169910(n)-A014681(Δ[A169932(n)])`
-/

namespace A169909.P2758298854028778716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169910 n - A014681 (f1 (n + 1) - f1 n).toNat

end

end A169909.P2758298854028778716

/-! ## A169909.P16383073518528976305

`A169910(n)-A028904(Δ[A169932(n)])`
-/

namespace A169909.P16383073518528976305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169910 n - A028904 (f1 (n + 1) - f1 n).toNat

end

end A169909.P16383073518528976305

/-! ## A169909.P5681845693098378475

`A249873(A133311(n-Δ[A066568(n)]))`
-/

namespace A169909.P5681845693098378475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249873 (A133311 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat).toNat

end

end A169909.P5681845693098378475

/-!
# A169910: a(n) = n+n in carryless digital root arithmetic in base 10.

The programs for A169910, there is no canonical definition to state claims against.
-/

/-! ## A169910.P8421865601797639926

`A249873(A133311(n))`
-/

namespace A169910.P8421865601797639926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249873 (A133311 n).toNat

end

end A169910.P8421865601797639926

/-! ## A169910.P410544302184795157

`A169909(n)+Δ[A066568(n)]`
-/

namespace A169910.P410544302184795157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169909 n + (f1 (n + 1) - f1 n)

end

end A169910.P410544302184795157

/-! ## A169910.P4274230741737919375

`A249873(10*A249873(n))/10`
-/

namespace A169910.P4274230741737919375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249873 (10 * A249873 n).toNat : ℚ) / 10

end

end A169910.P4274230741737919375

/-! ## A169910.P13378066881622340616

`A169909(n)+Δ[A160941(n+1)]`
-/

namespace A169910.P13378066881622340616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169909 n + (f1 (n + 1) - f1 n)

end

end A169910.P13378066881622340616

/-! ## A169910.P7717079294969976555

`A066568(A169909(n))+A004092(n)`
-/

namespace A169910.P7717079294969976555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A169909 n).toNat + A004092 n

end

end A169910.P7717079294969976555

/-! ## A169910.P11924472149081767291

`A066568(A249873(n))+A004092(n)`
-/

namespace A169910.P11924472149081767291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A249873 n).toNat + A004092 n

end

end A169910.P11924472149081767291

/-! ## A169910.P13197026613887616516

`A249873(A004092(n)+n-A093017(n))`
-/

namespace A169910.P13197026613887616516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249873 (A004092 n + ((n : ℤ) - A093017 n)).toNat

end

end A169910.P13197026613887616516

/-!
# A169911: Primes in carryless digital root arithmetic in base 10.

The programs for A169911, there is no canonical definition to state claims against.
-/

/-! ## A169911.P3546458558705423147

`lt[A101559(A289838(n)), A046929(n+1)]`
-/

namespace A169911.P3546458558705423147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101559 (A289838 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A169911.P3546458558705423147

/-! ## A169911.P954763195492517409

`lt[A035513(n+1), A182701(A227075(n))]`
-/

namespace A169911.P954763195492517409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182701 (A227075 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A169911.P954763195492517409

/-! ## A169911.P11985273641904442522

`lt[A101559(A289838(n)), A110566(n+1)]`
-/

namespace A169911.P11985273641904442522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101559 (A289838 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A169911.P11985273641904442522

/-! ## A169911.P4474230615513344048

`lt[A213999(A064597(n+1)), A032559(n+1)]`
-/

namespace A169911.P4474230615513344048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 (A064597 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A169911.P4474230615513344048

/-!
# A169912: Number of irreducible Boolean polynomials of degree n.

The programs for A169912, there is no canonical definition to state claims against.
-/

/-! ## A169912.P1599527362999053742

`2^n-A169913(n)`
-/

namespace A169912.P1599527362999053742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A169913 n

end

end A169912.P1599527362999053742

/-! ## A169912.P13309666158466133811

`abs(A000079(n)-A169913(n))`
-/

namespace A169912.P13309666158466133811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A169913 n|

end

end A169912.P13309666158466133811

/-! ## A169912.P5186882348691735985

`A000051(n)-(A169913(n)+1)`
-/

namespace A169912.P5186882348691735985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A169913 n + 1)

end

end A169912.P5186882348691735985

/-! ## A169912.P10490834991059056498

`A000225(n)+1-A169913(n)`
-/

namespace A169912.P10490834991059056498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A169913 n)

end

end A169912.P10490834991059056498

/-! ## A169912.P3717917195532282324

`A090129(n+1)-A169914(n)`
-/

namespace A169912.P3717917195532282324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (n + 1) - A169914 n

end

end A169912.P3717917195532282324

/-!
# A169913: Number of reducible Boolean polynomials of degree n.

The programs for A169913, there is no canonical definition to state claims against.
-/

/-! ## A169913.P4638362512397078016

`2^n-A169912(n)`
-/

namespace A169913.P4638362512397078016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A169912 n

end

end A169913.P4638362512397078016

/-! ## A169913.P8988171037507481606

`abs(A000079(n)-A169912(n))`
-/

namespace A169913.P8988171037507481606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A169912 n|

end

end A169913.P8988171037507481606

/-! ## A169913.P8447554072326545905

`and(-A169912(n), A000225(n))`
-/

namespace A169913.P8447554072326545905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A169912 n) (A000225 n)

end

end A169913.P8447554072326545905

/-! ## A169913.P6414573158529261354

`A000051(n)-(A169912(n)+1)`
-/

namespace A169913.P6414573158529261354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A169912 n + 1)

end

end A169913.P6414573158529261354

/-! ## A169913.P14963209365927172261

`A000918(n)+2-A169912(n)`
-/

namespace A169913.P14963209365927172261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A169912 n)

end

end A169913.P14963209365927172261

/-!
# A169914: Number of reducible Boolean polynomials of degree n with constant term 1.

The programs for A169914, there is no canonical definition to state claims against.
-/

/-! ## A169914.P9051928849905925875

`A169913(n)%ceil(2^(n-1))`
-/

namespace A169914.P9051928849905925875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169913 n) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A169914.P9051928849905925875

/-! ## A169914.P5546238972034298699

`ceil(2^(n-1))-A169912(round(acot(n)+n))`
-/

namespace A169914.P5546238972034298699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A169912 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A169914.P5546238972034298699

/-! ## A169914.P11873139206624110794

`and(A052549(n), A169913(n))`
-/

namespace A169914.P11873139206624110794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052549 n) (A169913 n)

end

end A169914.P11873139206624110794

/-! ## A169914.P15926515492939703333

`and(A055010(n), A169913(n))`
-/

namespace A169914.P15926515492939703333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055010 n) (A169913 n)

end

end A169914.P15926515492939703333

/-! ## A169914.P8830659660650132633

`and(A078485(n), A169913(n))`
-/

namespace A169914.P8830659660650132633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078485 n) (A169913 n)

end

end A169914.P8830659660650132633

/-!
# A169915: Numbers k such that 2*k+A067076(k) is prime.

The programs for A169915, there is no canonical definition to state claims against.
-/

/-! ## A169915.P9133305647222747811

`eq[1, A001222(A006254(n+1)+n+n)]+1`
-/

namespace A169915.P9133305647222747811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006254 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169915.P9133305647222747811

/-! ## A169915.P4227796194905951128

`lt[A000005(A006254(n+1)+n+n), 3]+1`
-/

namespace A169915.P4227796194905951128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006254 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A169915.P4227796194905951128

/-! ## A169915.P14591583160414889407

`eq[1, A054024(2*n+A005097(n+1)+1)]+1`
-/

namespace A169915.P14591583160414889407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 ((2 * n : ℤ) + (A005097 (n + 1) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169915.P14591583160414889407

/-! ## A169915.P5804142321328187445

`lt[A248008(A005097(n+1)+A000027(2*n+1)), 2]+1`
-/

namespace A169915.P5804142321328187445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248008 (A005097 (n + 1) + A000027 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A169915.P5804142321328187445

/-! ## A169915.P9386611452977289115

`∑[A028334(A031142(n+1)+A006094(3*n+1))]-1`
-/

namespace A169915.P9386611452977289115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (A031142 (n + 1) + A006094 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A169915.P9386611452977289115

/-!
# A169916: Squares in carryless arithmetic mod 10 with addition and multiplication of digits both defined to be addition mod 10.

The programs for A169916, there is no canonical definition to state claims against.
-/

/-! ## A169916.P14801757170709756989

`A107130(A348798(n)+A169919(n))`
-/

namespace A169916.P14801757170709756989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (A348798 n + A169919 n).toNat

end

end A169916.P14801757170709756989

/-! ## A169916.P5509971096047693234

`A004520(n)*A309863(A001306(2*n+1))`
-/

namespace A169916.P5509971096047693234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n * A309863 (A001306 (2 * n + 1)).toNat

end

end A169916.P5509971096047693234

/-! ## A169916.P1036071504695626736

`xor(A169918(n), A185284(A133311(3*(n+1))))`
-/

namespace A169916.P1036071504695626736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169918 n) (A185284 (A133311 (3 * (n + 1))).toNat)

end

end A169916.P1036071504695626736

/-! ## A169916.P7354433655474162891

`A169918(A055649(n))+n-n%10`
-/

namespace A169916.P7354433655474162891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169918 (A055649 n).toNat + ((n : ℤ) - ((n % 10 : ℕ) : ℤ))

end

end A169916.P7354433655474162891

/-! ## A169916.P11968531053939650523

`A169918(A062399(n))+10*floor(n/10)`
-/

namespace A169916.P11968531053939650523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169918 (A062399 n).toNat + 10 * ⌊(n : ℚ) / 10⌋

end

end A169916.P11968531053939650523

/-!
# A169917: Squares in carryless arithmetic mod 10 with addition and multiplication of digits both defined to be multiplication mod 10.

The programs for A169917, there is no canonical definition to state claims against.
-/

/-! ## A169917.P14866264620189806136

`A059729(n)-A169932(A185284((5-n)²))`
-/

namespace A169917.P14866264620189806136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059729 n - A169932 (A185284 ((5 - (n : ℤ)) ^ 2).toNat).toNat

end

end A169917.P14866264620189806136

/-! ## A169917.P5801085800687865734

`n²%A008592(A143573(n))-A169932(A185284((5-n)²))`
-/

namespace A169917.P5801085800687865734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A008592 (A143573 n).toNat) - A169932 (A185284 ((5 - (n : ℤ)) ^ 2).toNat).toNat

end

end A169917.P5801085800687865734

/-!
# A169918: Squares in carryless arithmetic mod 10 with addition of digits defined to be multiplication mod 10 and multiplication of digits defined to be addition mod 10.

The programs for A169918, there is no canonical definition to state claims against.
-/

/-! ## A169918.P7110472870409731560

`xor(A169916(n), A185284(A133311(3*(n+1))))`
-/

namespace A169918.P7110472870409731560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169916 n) (A185284 (A133311 (3 * (n + 1))).toNat)

end

end A169918.P7110472870409731560

/-! ## A169918.P7018535869295310258

`xor(A169916(n), A185284((4-n)²))`
-/

namespace A169918.P7018535869295310258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169916 n) (A185284 ((4 - (n : ℤ)) ^ 2).toNat)

end

end A169918.P7018535869295310258

/-! ## A169918.P5772563959169232217

`A169916(A055649(n))-(n-n%10)`
-/

namespace A169918.P5772563959169232217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169916 (A055649 n).toNat - ((n : ℤ) - ((n % 10 : ℕ) : ℤ))

end

end A169918.P5772563959169232217

/-! ## A169918.P8792509761410851599

`A169916(A062399(n))-10*floor(n/10)`
-/

namespace A169918.P8792509761410851599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169916 (A062399 n).toNat - 10 * ⌊(n : ℚ) / 10⌋

end

end A169918.P8792509761410851599

/-! ## A169918.P15524425705364935350

`A087027(((n+5)%10-5+n)*A212389(n))`
-/

namespace A169918.P15524425705364935350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087027 (((((n + 5) % 10 : ℕ) : ℤ) - 5 + (n : ℤ)) * A212389 n).toNat

end

end A169918.P15524425705364935350

/-!
# A169919: a(n) = n*n in the arithmetic where digits are added in base 10 (as usual) but when digits are to be multiplied they are also added in base 10.

The programs for A169919, there is no canonical definition to state claims against.
-/

/-! ## A169919.P2068210342036807566

`2*n*A064770(A065031(n))`
-/

namespace A169919.P2068210342036807566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A064770 (A065031 n).toNat

end

end A169919.P2068210342036807566

/-!
# A169920: a(n) = n*n in the arithmetic where digits are multiplied in base 10 (as usual) but when digits are to be added they are also multiplied in base 10.

The programs for A169920, there is no canonical definition to state claims against.
-/

/-! ## A169920.P8003881761314855378

`n²-A010894(3*n+7)`
-/

namespace A169920.P8003881761314855378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A010894 (3 * n + 7 + 21)

end

end A169920.P8003881761314855378

/-! ## A169920.P6048010972041482620

`n²-A185255(A121663(n))`
-/

namespace A169920.P6048010972041482620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A185255 (A121663 n).toNat

end

end A169920.P6048010972041482620

/-! ## A169920.P4645869581364995476

`n²-A185255(A122456(n))`
-/

namespace A169920.P4645869581364995476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A185255 (A122456 n).toNat

end

end A169920.P4645869581364995476

/-! ## A169920.P14707341590650610085

`n²-A185255(A140482(n+1))`
-/

namespace A169920.P14707341590650610085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A185255 (A140482 (n + 1)).toNat

end

end A169920.P14707341590650610085

/-! ## A169920.P14034713241622556207

`n²-A186733(A270831(n+1))`
-/

namespace A169920.P14034713241622556207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186733 (A270831 (n + 1)).toNat

end

end A169920.P14034713241622556207

/-!
# A169921: a(n) = n*n in the arithmetic where when digits are to be added they are multiplied, and when they are to be multiplied they are added.

The programs for A169921, there is no canonical definition to state claims against.
-/

/-! ## A169921.P4509831012336885555

`record[A059995(n)*A059995(A213217(n))]`
-/

namespace A169921.P4509831012336885555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n * A059995 (A213217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169921.P4509831012336885555

/-! ## A169921.P7506462053820294006

`A169919(n)-A010894(A179799(n+2))`
-/

namespace A169921.P7506462053820294006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169919 n - A010894 ((A179799 (n + 2)).toNat + 21)

end

end A169921.P7506462053820294006

/-! ## A169921.P8387103652565054794

`2*n*A064770(A065031(n))-A010894(A179799(n+2))`
-/

namespace A169921.P8387103652565054794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A064770 (A065031 n).toNat - A010894 ((A179799 (n + 2)).toNat + 21)

end

end A169921.P8387103652565054794

/-! ## A169921.P17940384997481817604

`lcm(n, 1-A110548(2*n+1))`
-/

namespace A169921.P17940384997481817604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - A110548 (2 * n + 1))

end

end A169921.P17940384997481817604

/-! ## A169921.P14882484090192880534

`n*A123044(A208059(n))`
-/

namespace A169921.P14882484090192880534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123044 ((A208059 n).toNat + 21)

end

end A169921.P14882484090192880534

/-!
# A169922: Values of n >= 0 such that 3*n-36+360/(n+10) is an integer.

The programs for A169922, there is no canonical definition to state claims against.
-/

/-! ## A169922.P1832206432322902957

`A169924(n+2)-1`
-/

namespace A169922.P1832206432322902957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169924 (n + 2) - 1

end

end A169922.P1832206432322902957

/-! ## A169922.P11091393549730952674

`A169928(n+3)-10`
-/

namespace A169922.P11091393549730952674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169928 (n + 3) - 10

end

end A169922.P11091393549730952674

/-! ## A169922.P13154357713534734925

`A023443(A169924(n+2))`
-/

namespace A169922.P13154357713534734925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A169924 (n + 2)).toNat

end

end A169922.P13154357713534734925

/-! ## A169922.P12032739964784024966

`A018412(A004498(n))-10`
-/

namespace A169922.P12032739964784024966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (A004498 n).toNat - 10

end

end A169922.P12032739964784024966

/-! ## A169922.P13256097197783115480

`A169925(n+2)-A169923(n+1)`
-/

namespace A169922.P13256097197783115480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169925 (n + 2) - A169923 (n + 1)

end

end A169922.P13256097197783115480

/-!
# A169923: Integer values of 3*n-36+360/(n+10) (see A169922).

The programs for A169923, there is no canonical definition to state claims against.
-/

/-! ## A169923.P7224763678770444252

`A169925(n+2)-A169922(n+1)`
-/

namespace A169923.P7224763678770444252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169925 (n + 2) - A169922 (n + 1)

end

end A169923.P7224763678770444252

/-! ## A169923.P4552591939268922057

`A169925(n+2)+1-A169924(n+2)`
-/

namespace A169923.P4552591939268922057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169925 (n + 2) + (1 - A169924 (n + 2))

end

end A169923.P4552591939268922057

/-! ## A169923.P4659407216466636098

`A169925(n+2)-(A169928(n+3)-10)`
-/

namespace A169923.P4659407216466636098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169925 (n + 2) - (A169928 (n + 3) - 10)

end

end A169923.P4659407216466636098

/-! ## A169923.P16947261349521264353

`A169925(n+2)-A023443(A169924(n+2))`
-/

namespace A169923.P16947261349521264353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169925 (n + 2) - A023443 (A169924 (n + 2)).toNat

end

end A169923.P16947261349521264353

/-! ## A169923.P10835083011861415477

`A169925(n+2)-(A018412(A004498(n))-10)`
-/

namespace A169923.P10835083011861415477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169925 (n + 2) - (A018412 (A004498 n).toNat - 10)

end

end A169923.P10835083011861415477

/-!
# A169924: Values of n >= 0 such that 4*n-40+360/(n+9) is an integer.

The programs for A169924, there is no canonical definition to state claims against.
-/

/-! ## A169924.P9886917966506209582

`A169928(n+2)-9`
-/

namespace A169924.P9886917966506209582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169928 (n + 2) - 9

end

end A169924.P9886917966506209582

/-! ## A169924.P4120733156040708726

`∑[Δ[A169928(n+1)]%(2^n)]`
-/

namespace A169924.P4120733156040708726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169928 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169924.P4120733156040708726

/-! ## A169924.P18154647688795027330

`A018412(A020722(n))-9`
-/

namespace A169924.P18154647688795027330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (A020722 n).toNat - 9

end

end A169924.P18154647688795027330

/-! ## A169924.P15246690405541899501

`eq[4, A214028(A175182(n+9))]`
-/

namespace A169924.P15246690405541899501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (A175182 (n + 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169924.P15246690405541899501

/-! ## A169924.P344743814091345601

`A169922(A028310(n))+ceil(sin(n)²)`
-/

namespace A169924.P344743814091345601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169922 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A169924.P344743814091345601

/-!
# A169926: Values of n >= 0 such that 3*n-45+360/(n/2+8) is an integer.

The programs for A169926, there is no canonical definition to state claims against.
-/

/-! ## A169926.P2351154141175508773

`record[A018609(n+1)-A232503(2*n+1)]`
-/

namespace A169926.P2351154141175508773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018609 (n + 1) - A232503 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169926.P2351154141175508773

/-! ## A169926.P7665077659803622645

`record[A008574(A008574(n))%A346089(n+1)]`
-/

namespace A169926.P7665077659803622645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A008574 n).toNat) (A346089 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169926.P7665077659803622645

/-! ## A169926.P8093236211486319112

`∑[A091822(floor(10^(n/4)))]+n+n`
-/

namespace A169926.P8093236211486319112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091822 ⌊(10 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + (n : ℤ)

end

end A169926.P8093236211486319112

/-! ## A169926.P2469380405164106949

`A003002(n*A118550(n))`
-/

namespace A169926.P2469380405164106949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 ((n : ℤ) * A118550 n).toNat

end

end A169926.P2469380405164106949

/-! ## A169926.P14942288907665080188

`lt[A268448(n+1), A324886((n+1)/2^val(n+1, 2))]`
-/

namespace A169926.P14942288907665080188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A169926.P14942288907665080188

/-!
# A169928: Values of n >= 7 such that 10*n-122+360/n is an integer.

The programs for A169928, there is no canonical definition to state claims against.
-/

/-! ## A169928.P11248717001645838112

`A018412(n+7)`
-/

namespace A169928.P11248717001645838112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (n + 7)

end

end A169928.P11248717001645838112

/-! ## A169928.P2112522035751606830

`A129644(n+39)`
-/

namespace A169928.P2112522035751606830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129644 (n + 39)

end

end A169928.P2112522035751606830

/-! ## A169928.P1713678255198187078

`record[gcd(A038608(n+8), A315303(10*n+5))]`
-/

namespace A169928.P1713678255198187078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 (n + 8)) (A315303 (10 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169928.P1713678255198187078

/-! ## A169928.P8461067943625994145

`A228363(A003596(n+1)+4)`
-/

namespace A169928.P8461067943625994145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228363 (A003596 (n + 1) + 4).toNat

end

end A169928.P8461067943625994145

/-! ## A169928.P5131663085265214032

`A228363(A228361(n+7)-1)`
-/

namespace A169928.P5131663085265214032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228363 (A228361 (n + 7) - 1).toNat

end

end A169928.P5131663085265214032

/-!
# A169931: a(n) = 2*n in the arithmetic defined in A169918.

The programs for A169931, there is no canonical definition to state claims against.
-/

/-! ## A169931.P9867431455720370447

`A048379(A048379(n))`
-/

namespace A169931.P9867431455720370447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A048379 n).toNat

end

end A169931.P9867431455720370447

/-! ## A169931.P4089723708407071445

`A055120(A061601(A055120(A061601(n))))`
-/

namespace A169931.P4089723708407071445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A061601 (A055120 (A061601 n).toNat).toNat).toNat

end

end A169931.P4089723708407071445

/-! ## A169931.P16668978913474820069

`A216556(A216556(n))%A348783(A212389(n))`
-/

namespace A169931.P16668978913474820069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216556 (A216556 n).toNat) (A348783 (A212389 n).toNat)

end

end A169931.P16668978913474820069

/-! ## A169931.P12256183515827357229

`A087019(n+2)%A031131(A279093(n+1))`
-/

namespace A169931.P12256183515827357229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087019 (n + 2)) (A031131 (A279093 (n + 1)).toNat)

end

end A169931.P12256183515827357229

/-! ## A169931.P3279354793056539613

`A309590(A062567(n+2))`
-/

namespace A169931.P3279354793056539613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309590 (A062567 (n + 2)).toNat

end

end A169931.P3279354793056539613

/-!
# A169932: a(n) = 0+n in the arithmetic defined in A169918.

The programs for A169932, the canonical program `A169932.P13000639427075025417` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169932 has offset 0).

The definition of A169932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169932.P13000639427075025417

`n-n%10`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169932

/-- `n-n%10` -/
def P13000639427075025417.Spec : Prop :=
  ∀ n, P13000639427075025417.a n = A169932 n

theorem P13000639427075025417.correct : P13000639427075025417.Spec := by
  intro n
  simp only [A169932]

end A169932

/-! ## A169932.P7865628004992295810

`10*floor(n/10)`
-/

namespace A169932.P7865628004992295810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(n : ℚ) / 10⌋

end

end A169932.P7865628004992295810

namespace A169932

/-- `10*floor(n/10)` -/
def P7865628004992295810.Spec : Prop :=
  ∀ n, P7865628004992295810.a n = A169932 n

end A169932

/-! ## A169932.P15672090434433780202

`-n%10+n`
-/

namespace A169932.P15672090434433780202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 10 + (n : ℤ)

end

end A169932.P15672090434433780202

namespace A169932

/-- `-n%10+n` -/
def P15672090434433780202.Spec : Prop :=
  ∀ n, P15672090434433780202.a n = A169932 n

end A169932

/-! ## A169932.P11317884550620212460

`∑[10*char[lcm(10, n+1)]]`
-/

namespace A169932.P11317884550620212460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169932.P11317884550620212460

namespace A169932

/-- `∑[10*char[lcm(10, n+1)]]` -/
def P11317884550620212460.Spec : Prop :=
  ∀ n, (P11317884550620212460.a n : ℤ) = A169932 n

end A169932

/-! ## A169932.P12820115873545383974

`n-A010879(n)`
-/

namespace A169932.P12820115873545383974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A010879 n

end

end A169932.P12820115873545383974

namespace A169932

/-- `n-A010879(n)` -/
def P12820115873545383974.Spec : Prop :=
  ∀ n, P12820115873545383974.a n = A169932 n

end A169932

/-! ## A169932.P12342646579387939539

`A008592(floor(n/10))`
-/

namespace A169932.P12342646579387939539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 ⌊(n : ℚ) / 10⌋.toNat

end

end A169932.P12342646579387939539

namespace A169932

/-- `A008592(floor(n/10))` -/
def P12342646579387939539.Spec : Prop :=
  ∀ n, P12342646579387939539.a n = A169932 n

end A169932

/-! ## A169932.P11398141062588468935

`1-A010889(n)+n`
-/

namespace A169932.P11398141062588468935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010889 n + (n : ℤ)

end

end A169932.P11398141062588468935

namespace A169932

/-- `1-A010889(n)+n` -/
def P11398141062588468935.Spec : Prop :=
  ∀ n, P11398141062588468935.a n = A169932 n

theorem P11398141062588468935.correct : P11398141062588468935.Spec := by
  intro n
  simp only [A169932, Nat.add_sub_cancel, A169932.P11398141062588468935.a, A169932.P13000639427075025417.a, A010889, A010889.P1573864007865661006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169932

/-! ## A169932.P15735993535298367075

`n-val(A054842(n), 2)`
-/

namespace A169932.P15735993535298367075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A054842 n).toNat 2 : ℤ)

end

end A169932.P15735993535298367075

namespace A169932

/-- `n-val(A054842(n), 2)` -/
def P15735993535298367075.Spec : Prop :=
  ∀ n, P15735993535298367075.a n = A169932 n

end A169932

/-! ## A169932.P11328756335284015641

`A187844(n-a(n-1))+n` with `a(0)=0`
-/

namespace A169932.P11328756335284015641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A187844 ((n : ℤ) - a (n - 1)).toNat + (n : ℤ)

end

end A169932.P11328756335284015641

namespace A169932

/-- `A187844(n-a(n-1))+n` -/
def P11328756335284015641.Spec : Prop :=
  ∀ n, P11328756335284015641.a n = A169932 n

end A169932

/-! ## A169932.P16240796652323306734

`n-A004426(n-a(n-1))` with `a(0)=0`
-/

namespace A169932.P16240796652323306734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A004426 ((n : ℤ) - a (n - 1)).toNat

end

end A169932.P16240796652323306734

namespace A169932

/-- `n-A004426(n-a(n-1))` -/
def P16240796652323306734.Spec : Prop :=
  ∀ n, P16240796652323306734.a n = A169932 n

end A169932

/-! ## A169932.P389833848686814725

`n-A004428(n-a(n-1))` with `a(0)=0`
-/

namespace A169932.P389833848686814725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A004428 ((n : ℤ) - a (n - 1)).toNat

end

end A169932.P389833848686814725

namespace A169932

/-- `n-A004428(n-a(n-1))` -/
def P389833848686814725.Spec : Prop :=
  ∀ n, P389833848686814725.a n = A169932 n

end A169932

/-! ## A169932.P14468994879335386324

`n-A004429(n-a(n-1))` with `a(0)=0`
-/

namespace A169932.P14468994879335386324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A004429 ((n : ℤ) - a (n - 1)).toNat

end

end A169932.P14468994879335386324

namespace A169932

/-- `n-A004429(n-a(n-1))` -/
def P14468994879335386324.Spec : Prop :=
  ∀ n, P14468994879335386324.a n = A169932 n

end A169932

/-! ## A169932.P14823265680636161829

`n-A004430(n-a(n-1))` with `a(0)=0`
-/

namespace A169932.P14823265680636161829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A004430 ((n : ℤ) - a (n - 1)).toNat

end

end A169932.P14823265680636161829

namespace A169932

/-- `n-A004430(n-a(n-1))` -/
def P14823265680636161829.Spec : Prop :=
  ∀ n, P14823265680636161829.a n = A169932 n

end A169932

/-! ## A169932.P660546040560825654

`n-A007954(n-a(n-1))` with `a(0)=0`
-/

namespace A169932.P660546040560825654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A007954 ((n : ℤ) - a (n - 1)).toNat

end

end A169932.P660546040560825654

namespace A169932

/-- `n-A007954(n-a(n-1))` -/
def P660546040560825654.Spec : Prop :=
  ∀ n, P660546040560825654.a n = A169932 n

end A169932

/-! ## A169932.P3112326185305215465

`n-A020485(n-a(n-1))` with `a(0)=0`
-/

namespace A169932.P3112326185305215465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A020485 ((n : ℤ) - a (n - 1)).toNat

end

end A169932.P3112326185305215465

namespace A169932

/-- `n-A020485(n-a(n-1))` -/
def P3112326185305215465.Spec : Prop :=
  ∀ n, P3112326185305215465.a n = A169932 n

end A169932

/-! ## A169932.P10085230756020021112

`n-A031298(n-a(n-1))` with `a(0)=0`
-/

namespace A169932.P10085230756020021112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A031298 ((n : ℤ) - a (n - 1)).toNat

end

end A169932.P10085230756020021112

namespace A169932

/-- `n-A031298(n-a(n-1))` -/
def P10085230756020021112.Spec : Prop :=
  ∀ n, P10085230756020021112.a n = A169932 n

end A169932

/-! ## A169932.P9678270533571792791

`n-A031347(n-a(n-1))` with `a(0)=0`
-/

namespace A169932.P9678270533571792791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A031347 ((n : ℤ) - a (n - 1)).toNat

end

end A169932.P9678270533571792791

namespace A169932

/-- `n-A031347(n-a(n-1))` -/
def P9678270533571792791.Spec : Prop :=
  ∀ n, P9678270533571792791.a n = A169932 n

end A169932

/-! ## A169932.P17780842893491745106

`n-A054054(n-a(n-1))` with `a(0)=0`
-/

namespace A169932.P17780842893491745106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A054054 ((n : ℤ) - a (n - 1)).toNat

end

end A169932.P17780842893491745106

namespace A169932

/-- `n-A054054(n-a(n-1))` -/
def P17780842893491745106.Spec : Prop :=
  ∀ n, P17780842893491745106.a n = A169932 n

end A169932

/-! ## A169932.P3781099556090551791

`A081600(n)+A076313(n)`
-/

namespace A169932.P3781099556090551791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 n + A076313 n

end

end A169932.P3781099556090551791

namespace A169932

/-- `A081600(n)+A076313(n)` -/
def P3781099556090551791.Spec : Prop :=
  ∀ n, P3781099556090551791.a n = A169932 n

theorem P3781099556090551791.correct : P3781099556090551791.Spec := by
  intro n
  simp only [A169932, Nat.add_sub_cancel, A169932.P3781099556090551791.a, A169932.P13000639427075025417.a, A076313, A076313.P303993799641302673.a, A081600, A081600.P18279744681221534616.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169932

/-! ## A169932.P8813810909838477310

`n-A007376(A065650(n))`
-/

namespace A169932.P8813810909838477310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007376 (A065650 n).toNat

end

end A169932.P8813810909838477310

namespace A169932

/-- `n-A007376(A065650(n))` -/
def P8813810909838477310.Spec : Prop :=
  ∀ n, P8813810909838477310.a n = A169932 n

end A169932

/-!
# A169933: a(n) = 2+n in the arithmetic defined in A169918.

The programs for A169933, the canonical program `A169933.P7569064102418934676` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169933 has offset 0).

The definition of A169933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169933.P7569064102418934676

`n-n%10+(n*2)%10`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169933

/-- `n-n%10+(n*2)%10` -/
def P7569064102418934676.Spec : Prop :=
  ∀ n, P7569064102418934676.a n = A169933 n

theorem P7569064102418934676.correct : P7569064102418934676.Spec := by
  intro n
  simp only [A169933]

end A169933

/-! ## A169933.P12178885453240435518

`a(n-10)+10` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6, a(4)=8, a(5)=0, a(6)=2, a(7)=4, a(8)=6, a(9)=8`
-/

namespace A169933.P12178885453240435518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 6, 8, 0, 2, 4, 6, 8] fun n a =>
  a (n - 10) + 10

end

end A169933.P12178885453240435518

namespace A169933

/-- `a(n-10)+10` -/
def P12178885453240435518.Spec : Prop :=
  ∀ n, (P12178885453240435518.a n : ℤ) = A169933 n

end A169933

/-! ## A169933.P3139033171083611040

`(n+5)%10-5+n`
-/

namespace A169933.P3139033171083611040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 5) % 10 : ℕ) : ℤ) - 5 + (n : ℤ)

end

end A169933.P3139033171083611040

namespace A169933

/-- `(n+5)%10-5+n` -/
def P3139033171083611040.Spec : Prop :=
  ∀ n, P3139033171083611040.a n = A169933 n

theorem P3139033171083611040.correct : P3139033171083611040.Spec := by
  intro n
  simp only [A169933, Nat.add_sub_cancel, A169933.P3139033171083611040.a, A169933.P7569064102418934676.a, SequenceMachineLib.memo_apply]
  try push_cast
  try omega

end A169933

/-! ## A169933.P4304646289746760323

`and(-2, A133311(n))`
-/

namespace A169933.P4304646289746760323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A133311 n)

end

end A169933.P4304646289746760323

namespace A169933

/-- `and(-2, A133311(n))` -/
def P4304646289746760323.Spec : Prop :=
  ∀ n, P4304646289746760323.a n = A169933 n

end A169933

/-! ## A169933.P18369031505068804753

`A052928(A133311(n))`
-/

namespace A169933.P18369031505068804753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A133311 n).toNat

end

end A169933.P18369031505068804753

namespace A169933

/-- `A052928(A133311(n))` -/
def P18369031505068804753.Spec : Prop :=
  ∀ n, P18369031505068804753.a n = A169933 n

end A169933

/-! ## A169933.P17215329230594519854

`A017581(n)%A204454(n+1)`
-/

namespace A169933.P17215329230594519854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A204454 (n + 1))

end

end A169933.P17215329230594519854

namespace A169933

/-- `A017581(n)%A204454(n+1)` -/
def P17215329230594519854.Spec : Prop :=
  ∀ n, P17215329230594519854.a n = A169933 n

end A169933

/-! ## A169933.P2664191504787998705

`2*(A081596(n+5)-5)`
-/

namespace A169933.P2664191504787998705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081596 (n + 5) - 5)

end

end A169933.P2664191504787998705

namespace A169933

/-- `2*(A081596(n+5)-5)` -/
def P2664191504787998705.Spec : Prop :=
  ∀ n, P2664191504787998705.a n = A169933 n

end A169933

/-! ## A169933.P8154005338071115493

`A010879(n+5)-5+n`
-/

namespace A169933.P8154005338071115493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (n + 5) - 5 + (n : ℤ)

end

end A169933.P8154005338071115493

namespace A169933

/-- `A010879(n+5)-5+n` -/
def P8154005338071115493.Spec : Prop :=
  ∀ n, P8154005338071115493.a n = A169933 n

end A169933

/-! ## A169933.P9596497240691138633

`A169932(n)+A010879(2*n)`
-/

namespace A169933.P9596497240691138633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169932 n + A010879 (2 * n)

end

end A169933.P9596497240691138633

namespace A169933

/-- `A169932(n)+A010879(2*n)` -/
def P9596497240691138633.Spec : Prop :=
  ∀ n, P9596497240691138633.a n = A169933 n

theorem P9596497240691138633.correct : P9596497240691138633.Spec := by
  intro n
  simp only [A169933, Nat.add_sub_cancel, A169933.P9596497240691138633.a, A169933.P7569064102418934676.a, A010879, A010879.P10561743211919002802.a, A169932, A169932.P13000639427075025417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169933

/-! ## A169933.P17347399474143583202

`3*n+1-∑[gcd(11, A000032(n))]`
-/

namespace A169933.P17347399474143583202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A169933.P17347399474143583202

namespace A169933

/-- `3*n+1-∑[gcd(11, A000032(n))]` -/
def P17347399474143583202.Spec : Prop :=
  ∀ n, P17347399474143583202.a n = A169933 n

end A169933

/-! ## A169933.P6021694560053277129

`and(A133311(n), A134067(n))`
-/

namespace A169933.P6021694560053277129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133311 n) (A134067 n)

end

end A169933.P6021694560053277129

namespace A169933

/-- `and(A133311(n), A134067(n))` -/
def P6021694560053277129.Spec : Prop :=
  ∀ n, P6021694560053277129.a n = A169933 n

end A169933

/-! ## A169933.P773628635680866016

`and(A133311(n), A307457(n+1))`
-/

namespace A169933.P773628635680866016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133311 n) (A307457 (n + 1))

end

end A169933.P773628635680866016

namespace A169933

/-- `and(A133311(n), A307457(n+1))` -/
def P773628635680866016.Spec : Prop :=
  ∀ n, P773628635680866016.a n = A169933 n

end A169933

/-! ## A169933.P15214165999692601873

`and(A133311(n), A217528(n+1))`
-/

namespace A169933.P15214165999692601873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133311 n) (A217528 (n + 1))

end

end A169933.P15214165999692601873

namespace A169933

/-- `and(A133311(n), A217528(n+1))` -/
def P15214165999692601873.Spec : Prop :=
  ∀ n, P15214165999692601873.a n = A169933 n

end A169933

/-!
# A169934: Number of permutations of [n] with the number moved left exceeding the number moved right by 2.

The programs for A169934, there is no canonical definition to state claims against.
-/

/-! ## A169934.P8456760273545506838

`A062866(A103505(n))%A062871(n)`
-/

namespace A169934.P8456760273545506838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062866 (A103505 n).toNat) (A062871 n)

end

end A169934.P8456760273545506838

/-! ## A169934.P14330759536224046451

`A179568(n+1)-A179569(n+1)`
-/

namespace A169934.P14330759536224046451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179568 (n + 1) - A179569 (n + 1)

end

end A169934.P14330759536224046451

/-! ## A169934.P12141053531542907660

`A179567(n+1)-(A179569(n+1)+A179562(n+1))`
-/

namespace A169934.P12141053531542907660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179567 (n + 1) - (A179569 (n + 1) + A179562 (n + 1))

end

end A169934.P12141053531542907660

/-! ## A169934.P12397505278466836929

`A179568(n+1)-(A179570(n+1)+A179564(n+1))`
-/

namespace A169934.P12397505278466836929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179568 (n + 1) - (A179570 (n + 1) + A179564 (n + 1))

end

end A169934.P12397505278466836929

/-! ## A169934.P1497323478955669603

`A263787((n+1)²+n²)`
-/

namespace A169934.P1497323478955669603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 ((n + 1) ^ 2 + n ^ 2)

end

end A169934.P1497323478955669603

/-!
# A169935: Numbers n such that for some k>0, n*k=1 in the arithmetic defined in A169918.

The programs for A169935, there is no canonical definition to state claims against.
-/

/-! ## A169935.P17276869988123483954

`∑[A160385(A148847(A057979(n)))]`
-/

namespace A169935.P17276869988123483954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A148847 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169935.P17276869988123483954

/-!
# A169937: a(n) = binomial(m+n-1,n)^2 - binomial(m+n,n+1)*binomial(m+n-2,n-1) with m = 14.

The programs for A169937, the canonical program `A169937.P16709949569279902629` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169937 has offset 0).

The definition of A169937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169937.P16709949569279902629

`1/13*C(n+12, 12)²*(n+13)/(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169937

/-- `1/13*C(n+12, 12)²*(n+13)/(n+1)` -/
def P16709949569279902629.Spec : Prop :=
  ∀ n, P16709949569279902629.a n = (A169937 n : ℚ)

end A169937

/-! ## A169937.P9982676280992684185

`A001263(A000124(n+12)+12)`
-/

namespace A169937.P9982676280992684185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000124 (n + 12) + 12).toNat

end

end A169937.P9982676280992684185

namespace A169937

/-- `A001263(A000124(n+12)+12)` -/
def P9982676280992684185.Spec : Prop :=
  ∀ n, P9982676280992684185.a n = A169937 n

end A169937

/-! ## A169937.P15889751490071220525

`A001263(A000096(n+11)+14)`
-/

namespace A169937.P15889751490071220525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000096 (n + 11) + 14).toNat

end

end A169937.P15889751490071220525

namespace A169937

/-- `A001263(A000096(n+11)+14)` -/
def P15889751490071220525.Spec : Prop :=
  ∀ n, P15889751490071220525.a n = A169937 n

end A169937

/-! ## A169937.P16830980348572585758

`A001263(A000217(n+12)+13)`
-/

namespace A169937.P16830980348572585758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000217 (n + 12) + 13).toNat

end

end A169937.P16830980348572585758

namespace A169937

/-- `A001263(A000217(n+12)+13)` -/
def P16830980348572585758.Spec : Prop :=
  ∀ n, P16830980348572585758.a n = A169937 n

end A169937

/-! ## A169937.P9721484184016935081

`A001263(A253145(n+12)-n)`
-/

namespace A169937.P9721484184016935081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A253145 (n + 12) - (n : ℤ)).toNat

end

end A169937.P9721484184016935081

namespace A169937

/-- `A001263(A253145(n+12)-n)` -/
def P9721484184016935081.Spec : Prop :=
  ∀ n, P9721484184016935081.a n = A169937 n

end A169937

/-! ## A169937.P17103214757703897460

`A001263(Δ[A103145(A020715(n))])`
-/

namespace A169937.P17103214757703897460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 (A020715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (f1 (n + 1) - f1 n).toNat

end

end A169937.P17103214757703897460

namespace A169937

/-- `A001263(Δ[A103145(A020715(n))])` -/
def P17103214757703897460.Spec : Prop :=
  ∀ n, P17103214757703897460.a n = A169937 n

end A169937

/-!
# A169938: a(n) = n*(n+1)*(n*(n+1)+1).

The programs for A169938, there is no canonical definition to state claims against.
-/

/-! ## A169938.P10556618419907302200

`(n-1)*n*((n-1)*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169938.P10556618419907302200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (n : ℤ) * (((n : ℤ) - 1) * (n : ℤ) + 1)

end

end A169938.P10556618419907302200

/-! ## A169938.P4485003995109031744

`A002061(A002061(n))-1`
-/

namespace A169938.P4485003995109031744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A002061 n).toNat - 1

end

end A169938.P4485003995109031744

/-! ## A169938.P5136924017920505494

`xor(1, Δ[(n-1)^5])/5`
-/

namespace A169938.P5136924017920505494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (f1 (n + 1) - f1 n) : ℚ) / 5

end

end A169938.P5136924017920505494

/-! ## A169938.P10237635011809062900

`C((1-n)², 2)+C(n², 2)`
-/

namespace A169938.P10237635011809062900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - (n : ℤ)) ^ 2).toNat 2 + Nat.choose (n ^ 2) 2

end

end A169938.P10237635011809062900

/-! ## A169938.P5876727297103738456

`lcm((1-n)²+n, n-n²)`
-/

namespace A169938.P5876727297103738456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) ((n : ℤ) - (n ^ 2 : ℤ))

end

end A169938.P5876727297103738456

/-! ## A169938.P824301615815852855

`(2*C(n, 2))²+2*C(n, 2)`
-/

namespace A169938.P824301615815852855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose n 2) ^ 2 + 2 * Nat.choose n 2

end

end A169938.P824301615815852855

/-! ## A169938.P13621638281258267893

`((C(2*n, 2)-(n-1))²-1)/4`
-/

namespace A169938.P13621638281258267893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (2 * n) 2 : ℤ) - ((n : ℤ) - 1)) ^ 2 - 1 : ℚ) / 4

end

end A169938.P13621638281258267893

/-! ## A169938.P6874933074621889719

`Δ[A134327(abs(1-n))]`
-/

namespace A169938.P6874933074621889719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134327 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169938.P6874933074621889719

/-! ## A169938.P16701333123092626514

`n²²-A059722(n)`
-/

namespace A169938.P16701333123092626514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A059722 n

end

end A169938.P16701333123092626514

/-! ## A169938.P5889679952878488626

`n²*A160457(n)-n`
-/

namespace A169938.P5889679952878488626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A160457 n - (n : ℤ)

end

end A169938.P5889679952878488626

/-! ## A169938.P14713846912653587179

`A071252(n)+A019582(n)`
-/

namespace A169938.P14713846912653587179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 n + A019582 n

end

end A169938.P14713846912653587179

/-! ## A169938.P7157772494047610318

`A060884(n)-A100104(n)`
-/

namespace A169938.P7157772494047610318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n - A100104 n

end

end A169938.P7157772494047610318

/-! ## A169938.P18336508698787887606

`A133071(n)-A191012(n)`
-/

namespace A169938.P18336508698787887606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133071 n - A191012 n

end

end A169938.P18336508698787887606

/-! ## A169938.P11965605482329585698

`A277977(n)-A071230(n)`
-/

namespace A169938.P11965605482329585698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277977 n - A071230 n

end

end A169938.P11965605482329585698

/-! ## A169938.P8783143375558251182

`A133499(n)/A069778(n)`
-/

namespace A169938.P8783143375558251182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133499 n : ℚ) / (A069778 n : ℚ)

end

end A169938.P8783143375558251182

/-! ## A169938.P2725845673281330710

`A133071(n)%A060884(n)`
-/

namespace A169938.P2725845673281330710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133071 n) (A060884 n)

end

end A169938.P2725845673281330710

/-! ## A169938.P599473056990355216

`A037251(n)%A271208(n)`
-/

namespace A169938.P599473056990355216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037251 n) (A271208 n)

end

end A169938.P599473056990355216

/-! ## A169938.P6525056535674849087

`A382612(n)%A058031(n)`
-/

namespace A169938.P6525056535674849087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382612 n) (A058031 n)

end

end A169938.P6525056535674849087

/-! ## A169938.P15979641825803889680

`A002061(n)*A128796(n)/A000079(n)`
-/

namespace A169938.P15979641825803889680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 n * A128796 n : ℚ) / (A000079 n : ℚ)

end

end A169938.P15979641825803889680

/-! ## A169938.P14005152797791177246

`A257841(A019442(n+1))`
-/

namespace A169938.P14005152797791177246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257841 (A019442 (n + 1)).toNat

end

end A169938.P14005152797791177246

/-!
# A169939: Skinny numbers (A061909) containing no 2's.

The programs for A169939, there is no canonical definition to state claims against.
-/

/-! ## A169939.P16540697086470173404

`∩[A061909(n+1), A007284(n)]`
-/

namespace A169939.P16540697086470173404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169939.P16540697086470173404

/-! ## A169939.P7446143081590905054

`∩[A039129(n+1), A061909(n+1)]`
-/

namespace A169939.P7446143081590905054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169939.P7446143081590905054

/-! ## A169939.P5346049535131400228

`∩[A039130(n+1), A061909(n+1)]`
-/

namespace A169939.P5346049535131400228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169939.P5346049535131400228

/-! ## A169939.P6700756383976718946

`∩[A039131(n+1), A061909(n+1)]`
-/

namespace A169939.P6700756383976718946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169939.P6700756383976718946

/-! ## A169939.P15686781549435544107

`∩[A039132(n+1), A061909(n+1)]`
-/

namespace A169939.P15686781549435544107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169939.P15686781549435544107

/-!
# A169940: Consider the 2^(n-1) monic polynomials f(x) with coefficients 0 or 1, degree n and f(0)=1. Sequence gives triangle read by rows, in which T(n,k) (n>=1) is the number of such polynomials of thickness k (2 <= k <= n+1).

The programs for A169940, there is no canonical definition to state claims against.
-/

/-! ## A169940.P4319442623967528483

`A169941(∑[char[∑[n]]]²-n)`
-/

namespace A169940.P4319442623967528483
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169941 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A169940.P4319442623967528483

/-! ## A169940.P1625704032928335986

`or(char[1], A169941(A038722(n+1)))`
-/

namespace A169940.P1625704032928335986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A169941 (A038722 (n + 1)).toNat)

end

end A169940.P1625704032928335986

/-! ## A169940.P9666139995905789556

`A169941(A038722(n+1))^A051340(n)`
-/

namespace A169940.P9666139995905789556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169941 (A038722 (n + 1)).toNat : ℚ) ^ (A051340 n : ℤ)

end

end A169940.P9666139995905789556

/-! ## A169940.P2430470635871939119

`A169941(A038722(n+1))%A014206(n)`
-/

namespace A169940.P2430470635871939119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169941 (A038722 (n + 1)).toNat) (A014206 n)

end

end A169940.P2430470635871939119

/-! ## A169940.P5490678809524007426

`gcd(A000038(n), A169941(A038722(n+1)))`
-/

namespace A169940.P5490678809524007426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A169941 (A038722 (n + 1)).toNat)

end

end A169940.P5490678809524007426

/-! ## A169940.P6819072452258596747

`lcm(A033999(n), A169941(A038722(n+1)))`
-/

namespace A169940.P6819072452258596747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A169941 (A038722 (n + 1)).toNat)

end

end A169940.P6819072452258596747

/-! ## A169940.P4320484382590666198

`A169941(A038722(n+1))+A008683(8*(n+1))`
-/

namespace A169940.P4320484382590666198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169941 (A038722 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A169940.P4320484382590666198

/-! ## A169940.P1521695899700931348

`A169941(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A169940.P1521695899700931348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169941 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A169940.P1521695899700931348

/-! ## A169940.P14373930665151670282

`∑{d}[A169941(A038722(n+1)), 5*A000010(#)]/5`
-/

namespace A169940.P14373930665151670282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169941 (A038722 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, 5 * A000010 d : ℤ) : ℚ) / 5

end

end A169940.P14373930665151670282

/-! ## A169940.P13249662924310727336

`A000203(gcd(n, n+1))*A169941(A038722(n+1))`
-/

namespace A169940.P13249662924310727336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A169941 (A038722 (n + 1)).toNat

end

end A169940.P13249662924310727336

/-!
# A169941: Triangle read by rows: A169940 with rows reversed.

The programs for A169941, there is no canonical definition to state claims against.
-/

/-! ## A169941.P17792878336863932780

`A169940(gcd(A038722(n+1), A198954(n)))`
-/

namespace A169941.P17792878336863932780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169940 (Int.gcd (A038722 (n + 1)) (A198954 n))

end

end A169941.P17792878336863932780

/-! ## A169941.P16095448086387373759

`A169940(A038722(n+1)%A172292(n+1))`
-/

namespace A169941.P16095448086387373759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169940 (Int.tmod (A038722 (n + 1)) (A172292 (n + 1))).toNat

end

end A169941.P16095448086387373759

/-! ## A169941.P7824589964214544401

`A169940(∑[char[∑[n]]]²-n)`
-/

namespace A169941.P7824589964214544401
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169940 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A169941.P7824589964214544401

/-! ## A169941.P12583517257031594120

`A169940(A038722(n+1))%A001513(n)`
-/

namespace A169941.P12583517257031594120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169940 (A038722 (n + 1)).toNat) (A001513 n)

end

end A169941.P12583517257031594120

/-! ## A169941.P1520592371360755773

`gcd(A000038(n), A169940(A038722(n+1)))`
-/

namespace A169941.P1520592371360755773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A169940 (A038722 (n + 1)).toNat)

end

end A169941.P1520592371360755773

/-! ## A169941.P7555827304360527793

`lcm(A158388(n), A169940(A038722(n+1)))`
-/

namespace A169941.P7555827304360527793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A169940 (A038722 (n + 1)).toNat)

end

end A169941.P7555827304360527793

/-! ## A169941.P6426834561655179080

`or(A000007(n), A169940(A038722(n+1)))`
-/

namespace A169941.P6426834561655179080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A169940 (A038722 (n + 1)).toNat)

end

end A169941.P6426834561655179080

/-! ## A169941.P1513855319553354407

`A169940(A038722(n+1))^A130296(n+1)`
-/

namespace A169941.P1513855319553354407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169940 (A038722 (n + 1)).toNat : ℚ) ^ (A130296 (n + 1) : ℤ)

end

end A169941.P1513855319553354407

/-!
# A169942: Number of Golomb rulers of length n.

The programs for A169942, there is no canonical definition to state claims against.
-/

/-! ## A169942.P6006378402600098307

`Δ[A308251(n)]`
-/

namespace A169942.P6006378402600098307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169942.P6006378402600098307

/-! ## A169942.P14337418594186810527

`Δ[Δ[A143823(n)]]`
-/

namespace A169942.P14337418594186810527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169942.P14337418594186810527

/-! ## A169942.P12498837601595872242

`or(1, Δ[A169952(A028310(n))])`
-/

namespace A169942.P12498837601595872242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169952 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A169942.P12498837601595872242

/-! ## A169942.P4115313596586816321

`A308251(n+1)-A308251(n)`
-/

namespace A169942.P4115313596586816321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 (n + 1) - A308251 n

end

end A169942.P4115313596586816321

/-! ## A169942.P14155971082680240750

`A169952(n+1)%A308251(n)+1`
-/

namespace A169942.P14155971082680240750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169952 (n + 1)) (A308251 n) + 1

end

end A169942.P14155971082680240750

/-! ## A169942.P7831003967375663052

`A000007(n)+Δ[A169952(A028310(n))]`
-/

namespace A169942.P7831003967375663052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169952 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A169942.P7831003967375663052

/-! ## A169942.P12121536182667860069

`Δ[A169952(A028310(n))%A000580(n+7)]`
-/

namespace A169942.P12121536182667860069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169952 (A028310 n).toNat) (A000580 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169942.P12121536182667860069

/-! ## A169942.P5533292702372982234

`or(1, A169952(n+1)-A169952(A028310(n)))`
-/

namespace A169942.P5533292702372982234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A169952 (n + 1) - A169952 (A028310 n).toNat)

end

end A169942.P5533292702372982234

/-! ## A169942.P5575841832375713081

`A169952(n+1)+A143823(n)-A054578(n+1)`
-/

namespace A169942.P5575841832375713081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169952 (n + 1) + (A143823 n - A054578 (n + 1))

end

end A169942.P5575841832375713081

/-! ## A169942.P11065922668237609462

`A169952(n+1)+A000007(n)-A169952(A028310(n))`
-/

namespace A169942.P11065922668237609462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169952 (n + 1) + (A000007 n - A169952 (A028310 n).toNat)

end

end A169942.P11065922668237609462

/-!
# A169943: Second entry in row n of triangle in A169940.

The programs for A169943, there is no canonical definition to state claims against.
-/

/-! ## A169943.P852634385150555358

`Δ[Δ[A196723(n+1)-A143823(n+1)]]`
-/

namespace A169943.P852634385150555358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196723 (n + 1) - A143823 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169943.P852634385150555358

/-! ## A169943.P3786884238484761856

`A169940(∑[n+1]+2)`
-/

namespace A169943.P3786884238484761856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169940 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A169943.P3786884238484761856

/-! ## A169943.P6624973819375749711

`A169941(∑[n+2])`
-/

namespace A169943.P6624973819375749711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169941 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A169943.P6624973819375749711

/-!
# A169944: Maximal entry in row n of triangle in A169940.

The programs for A169944, there is no canonical definition to state claims against.
-/

/-! ## A169944.P8372055351108626494

`A364350(A093005(n+1)+A001221(n+1))`
-/

namespace A169944.P8372055351108626494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (A093005 (n + 1) + A001221 (n + 1)).toNat

end

end A169944.P8372055351108626494

/-! ## A169944.P13287097789181566019

`A364350(A339890(3*n+1)+A093005(n+1))`
-/

namespace A169944.P13287097789181566019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (A339890 (3 * n + 1) + A093005 (n + 1)).toNat

end

end A169944.P13287097789181566019

/-!
# A169945: Consider the 2^(n+1) polynomials f(x) with coefficients 0 or 1 and degree <= n. Sequence gives triangle read by rows, in which T(n,k) (n>=0) is the number of such polynomials of thickness k (0 <= k <= n+1).

The programs for A169945, there is no canonical definition to state claims against.
-/

/-! ## A169945.P16558548787059013250

`A169946(A061579(n+1)-1)`
-/

namespace A169945.P16558548787059013250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169946 (A061579 (n + 1) - 1).toNat

end

end A169945.P16558548787059013250

/-! ## A169945.P171778769229973891

`A169946(A114327(n+1)+n)`
-/

namespace A169945.P171778769229973891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169946 (A114327 (n + 1) + (n : ℤ)).toNat

end

end A169945.P171778769229973891

/-! ## A169945.P10142584503372584607

`A169946(A061579(n+2)%A080036(n))`
-/

namespace A169945.P10142584503372584607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169946 (Int.tmod (A061579 (n + 2)) (A080036 n)).toNat

end

end A169945.P10142584503372584607

/-! ## A169945.P976699815270191196

`A169946(A061579(n+2))`
-/

namespace A169945.P976699815270191196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169946 (A061579 (n + 2)).toNat

end

end A169945.P976699815270191196

/-! ## A169945.P13205386625455714047

`A101164(n+1)+A062157(A157156(n))`
-/

namespace A169945.P13205386625455714047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101164 (n + 1) + A062157 (A157156 n).toNat

end

end A169945.P13205386625455714047

/-!
# A169946: Triangle read by rows: A169945 with rows reversed.

The programs for A169946, there is no canonical definition to state claims against.
-/

/-! ## A169946.P17550107002239781588

`A169945(A061579(n+1)-1)`
-/

namespace A169946.P17550107002239781588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 (A061579 (n + 1) - 1).toNat

end

end A169946.P17550107002239781588

/-! ## A169946.P14767318246595166836

`A169945(A038722(n+2)-2)`
-/

namespace A169946.P14767318246595166836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 (A038722 (n + 2) - 2).toNat

end

end A169946.P14767318246595166836

/-! ## A169946.P8221569028637070221

`A169945(A114327(n+1)+n)`
-/

namespace A169946.P8221569028637070221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 (A114327 (n + 1) + (n : ℤ)).toNat

end

end A169946.P8221569028637070221

/-! ## A169946.P2091222437357880038

`A169945(A061579(n+2))`
-/

namespace A169946.P2091222437357880038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 (A061579 (n + 2)).toNat

end

end A169946.P2091222437357880038

/-! ## A169946.P11153638597347982095

`A104564(A267990(n+2))`
-/

namespace A169946.P11153638597347982095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104564 (A267990 (n + 2)).toNat

end

end A169946.P11153638597347982095

/-!
# A169947: Third entry in row n of triangle in A169945.

The programs for A169947, there is no canonical definition to state claims against.
-/

/-! ## A169947.P7548013401839194186

`A143823(n+2)-(n+1)-2`
-/

namespace A169947.P7548013401839194186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (n + 2) - (n + 1 : ℤ) - 2

end

end A169947.P7548013401839194186

/-! ## A169947.P11666259536422401076

`∑[A169952(n+1)]`
-/

namespace A169947.P11666259536422401076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169947.P11666259536422401076

/-! ## A169947.P9367767047096143567

`∑[∑[A169942(n+1)]]`
-/

namespace A169947.P9367767047096143567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169947.P9367767047096143567

/-! ## A169947.P9612013036467006859

`∑[∑[abs(Δ[A308251(n)])]]`
-/

namespace A169947.P9612013036467006859
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f3 (n + 1) - f3 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169947.P9612013036467006859

/-! ## A169947.P16974821421477582282

`∑[A308251(n+1)-1]`
-/

namespace A169947.P16974821421477582282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169947.P16974821421477582282

/-! ## A169947.P7513283323739977686

`A054578(n+2)-(n+2)`
-/

namespace A169947.P7513283323739977686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054578 (n + 2) - (n + 2 : ℤ)

end

end A169947.P7513283323739977686

/-! ## A169947.P10725097594762632728

`A143823(n+2)-(n+3)`
-/

namespace A169947.P10725097594762632728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (n + 2) - (n + 3 : ℤ)

end

end A169947.P10725097594762632728

/-!
# A169948: Fourth entry in row n of triangle in A169945.

The programs for A169948, there is no canonical definition to state claims against.
-/

/-! ## A169948.P11491835538651566971

`A196723(n+3)-A143823(n+3)`
-/

namespace A169948.P11491835538651566971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196723 (n + 3) - A143823 (n + 3)

end

end A169948.P11491835538651566971

/-! ## A169948.P7723856925441631455

`∑[A169953(n+2)]`
-/

namespace A169948.P7723856925441631455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169953 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169948.P7723856925441631455

/-! ## A169948.P1604039280725249887

`∑[∑[A169943(n+2)]]`
-/

namespace A169948.P1604039280725249887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169943 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169948.P1604039280725249887

/-! ## A169948.P3115857981455822992

`record[A196723(A028310(n))-A143823(n)]`
-/

namespace A169948.P3115857981455822992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196723 (A028310 n).toNat - A143823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169948.P3115857981455822992

/-! ## A169948.P9204270294354880211

`∑[A169950(∑[n+2]+3)]`
-/

namespace A169948.P9204270294354880211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169950 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169948.P9204270294354880211

/-!
# A169949: Maximal entry in row n of triangle in A169945.

The programs for A169949, there is no canonical definition to state claims against.
-/

/-! ## A169949.P1940612659425779902

`record[A169945(A267518(n))]`
-/

namespace A169949.P1940612659425779902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 (A267518 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169949.P1940612659425779902

/-! ## A169949.P10702820374431494040

`record[A169946(A059292(n+1))]`
-/

namespace A169949.P10702820374431494040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169946 (A059292 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169949.P10702820374431494040

/-! ## A169949.P7244281516736270825

`record[gcd(A151668(n), A169946(n))]`
-/

namespace A169949.P7244281516736270825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151668 n) (A169946 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169949.P7244281516736270825

/-! ## A169949.P8752689476949411075

`record[A169945(A227350(n)+A105514(n))]`
-/

namespace A169949.P8752689476949411075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 (A227350 n + A105514 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169949.P8752689476949411075

/-! ## A169949.P8848676567592944422

`record[A169946(n)/A169946(A159953(n+1))]`
-/

namespace A169949.P8848676567592944422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169946 n : ℚ) / (A169946 (A159953 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169949.P8848676567592944422

/-!
# A169950: Consider the 2^n monic polynomials f(x) with coefficients 0 or 1 and degree n. Sequence gives triangle read by rows, in which T(n,k) (n>=0) is the number of such polynomials of thickness k (1 <= k <= n+1).

The programs for A169950, there is no canonical definition to state claims against.
-/

/-! ## A169950.P18125598619748410242

`A169951(A061579(n)%(n+10))`
-/

namespace A169950.P18125598619748410242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (Int.tmod (A061579 n) (n + 10 : ℤ)).toNat

end

end A169950.P18125598619748410242

/-! ## A169950.P13804225635055647228

`A169951(∑[A198954(n)-1]%(n+10))`
-/

namespace A169950.P13804225635055647228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 10 : ℤ)).toNat

end

end A169950.P13804225635055647228

/-! ## A169950.P16442316079792795978

`A169951(A002378(n)%A080036(n))`
-/

namespace A169950.P16442316079792795978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A169950.P16442316079792795978

/-! ## A169950.P16713877846881124055

`A169951(gcd(A061579(n), A198954(n)))`
-/

namespace A169950.P16713877846881124055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (Int.gcd (A061579 n) (A198954 n))

end

end A169950.P16713877846881124055

/-! ## A169950.P13482825543980534621

`A169951(A061579(n)-A144217(n+1))`
-/

namespace A169950.P13482825543980534621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (A061579 n - A144217 (n + 1)).toNat

end

end A169950.P13482825543980534621

/-! ## A169950.P16786100757666452104

`A169951(A038722(n+1)-A130296(n+1))`
-/

namespace A169950.P16786100757666452104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (A038722 (n + 1) - A130296 (n + 1)).toNat

end

end A169950.P16786100757666452104

/-! ## A169950.P13662988949343652120

`A169951(A061579(n)+1-A130296(n+1))`
-/

namespace A169950.P13662988949343652120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (A061579 n + 1 - A130296 (n + 1)).toNat

end

end A169950.P13662988949343652120

/-! ## A169950.P2530066769177570906

`A169951((A114327(n)+n)%A172292(n+1))`
-/

namespace A169950.P2530066769177570906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (Int.tmod (A114327 n + (n : ℤ)) (A172292 (n + 1))).toNat

end

end A169950.P2530066769177570906

/-! ## A169950.P10446707777522881927

`A169951(A061579(n))`
-/

namespace A169950.P10446707777522881927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (A061579 n).toNat

end

end A169950.P10446707777522881927

/-! ## A169950.P15319187791253477664

`A169951(A114327(n)+n)`
-/

namespace A169950.P15319187791253477664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (A114327 n + (n : ℤ)).toNat

end

end A169950.P15319187791253477664

/-!
# A169951: Triangle read by rows: A169950 with rows reversed.

The programs for A169951, there is no canonical definition to state claims against.
-/

/-! ## A169951.P15531901767638798744

`A169950(∑[2*n]%comp[∑[n]])`
-/

namespace A169951.P15531901767638798744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169950 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A169951.P15531901767638798744

/-! ## A169951.P7059945307945163746

`A169950(∑[char[∑[n]]]²-(n+1))`
-/

namespace A169951.P7059945307945163746
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169950 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A169951.P7059945307945163746

/-! ## A169951.P13368159690415711356

`or(char[1], A169950(A061579(n)))`
-/

namespace A169951.P13368159690415711356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A169950 (A061579 n).toNat)

end

end A169951.P13368159690415711356

/-! ## A169951.P10321874224288787767

`A169950(A061579(n))^A051340(n)`
-/

namespace A169951.P10321874224288787767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169950 (A061579 n).toNat : ℚ) ^ (A051340 n : ℤ)

end

end A169951.P10321874224288787767

/-! ## A169951.P2479707120849368809

`A169950(A061579(n))%A001513(n)`
-/

namespace A169951.P2479707120849368809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169950 (A061579 n).toNat) (A001513 n)

end

end A169951.P2479707120849368809

/-! ## A169951.P4030608929563421501

`gcd(A000038(n), A169950(A061579(n)))`
-/

namespace A169951.P4030608929563421501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A169950 (A061579 n).toNat)

end

end A169951.P4030608929563421501

/-! ## A169951.P5308080601466211233

`lcm(A158388(n), A169950(A061579(n)))`
-/

namespace A169951.P5308080601466211233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A169950 (A061579 n).toNat)

end

end A169951.P5308080601466211233

/-! ## A169951.P10539504732589311007

`A169950(A061579(n))^A130296(n+1)`
-/

namespace A169951.P10539504732589311007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169950 (A061579 n).toNat : ℚ) ^ (A130296 (n + 1) : ℤ)

end

end A169951.P10539504732589311007

/-!
# A169952: Second entry in row n of triangle in A169950.

The programs for A169952, there is no canonical definition to state claims against.
-/

/-! ## A169952.P14414859444482412277

`∑[A169942(n+1)]`
-/

namespace A169952.P14414859444482412277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169952.P14414859444482412277

/-! ## A169952.P15305373991066218301

`∑[abs(Δ[A308251(n)])]`
-/

namespace A169952.P15305373991066218301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169952.P15305373991066218301

/-! ## A169952.P8219808974583357297

`A308251(n+1)-1`
-/

namespace A169952.P8219808974583357297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 (n + 1) - 1

end

end A169952.P8219808974583357297

/-! ## A169952.P15499721161398227678

`Δ[A054578(n+1)]-1`
-/

namespace A169952.P15499721161398227678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A169952.P15499721161398227678

/-! ## A169952.P8959752444478312823

`Δ[A143823(n+1)]-1`
-/

namespace A169952.P8959752444478312823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A169952.P8959752444478312823

/-! ## A169952.P375719020410689045

`A169942(2*n-n+1)+a(n-1)` with `a(0)=1`
-/

namespace A169952.P375719020410689045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169942 ((2 * n : ℤ) - (n : ℤ) + 1).toNat + a (n - 1)

end

end A169952.P375719020410689045

/-! ## A169952.P14807444869401008078

`A054578(n+2)-A143823(n+1)`
-/

namespace A169952.P14807444869401008078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054578 (n + 2) - A143823 (n + 1)

end

end A169952.P14807444869401008078

/-! ## A169952.P6057701165247834867

`A169947(n+2)-(A169947(n+1)+A169942(n+2))`
-/

namespace A169952.P6057701165247834867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169947 (n + 2) - (A169947 (n + 1) + A169942 (n + 2))

end

end A169952.P6057701165247834867

/-!
# A169953: Third entry in row n of triangle in A169950.

The programs for A169953, there is no canonical definition to state claims against.
-/

/-! ## A169953.P9928386300860700370

`A196723(n+3)-A196723(n+2)-A143823(n+3)+A143823(n+2)`
-/

namespace A169953.P9928386300860700370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196723 (n + 3) - A196723 (n + 2) - A143823 (n + 3) + A143823 (n + 2)

end

end A169953.P9928386300860700370

/-! ## A169953.P15005144653996049000

`∑[A169943(n+2)]`
-/

namespace A169953.P15005144653996049000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169953.P15005144653996049000

/-! ## A169953.P8096039808606185382

`Δ[A196723(n+2)-A143823(n+2)]`
-/

namespace A169953.P8096039808606185382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196723 (n + 2) - A143823 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169953.P8096039808606185382

/-! ## A169953.P7254197972798338810

`a(n-1)+A169943(n+2)+A151622(n)` with `a(0)=1`
-/

namespace A169953.P7254197972798338810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A169943 (n + 2) + A151622 n)

end

end A169953.P7254197972798338810

/-! ## A169953.P11649193780530107889

`a(n-1)+A007318(C(2, n))*A169943(n+2)` with `a(0)=1`
-/

namespace A169953.P11649193780530107889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (Nat.choose 2 n) * A169943 (n + 2)

end

end A169953.P11649193780530107889

/-!
# A169954: Maximal entry in row n of triangle in A169950.

The programs for A169954, there is no canonical definition to state claims against.
-/

/-! ## A169954.P16976632633359703843

`A169951(∑[A033999(floor(n/3)+1)^n+n])`
-/

namespace A169954.P16976632633359703843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (⌊(n : ℚ) / 3⌋ + 1).toNat ^ n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A169954.P16976632633359703843

/-!
# A169956: Lexicographically earliest sequence with positive integers satisfying a(a(n)) = 2*n+2.

The programs for A169956, there is no canonical definition to state claims against.
-/

/-! ## A169956.P11696035569209322149

`A169957(n+2)-1`
-/

namespace A169956.P11696035569209322149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169957 (n + 2) - 1

end

end A169956.P11696035569209322149

/-! ## A169956.P16980243486370402254

`xor(A169957(n+2)/A260196(n+1), A260196(n+1))`
-/

namespace A169956.P16980243486370402254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A169957 (n + 2) : ℚ) / (A260196 (n + 1) : ℚ))) (A260196 (n + 1))

end

end A169956.P16980243486370402254

/-! ## A169956.P14072836860643467612

`A023443(A169957(n+2))`
-/

namespace A169956.P14072836860643467612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A169957 (n + 2)).toNat

end

end A169956.P14072836860643467612

/-! ## A169956.P12224522283362778110

`abs(A169957(n+2)+A057428(3*(n+1)))`
-/

namespace A169956.P12224522283362778110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A169957 (n + 2) + A057428 (3 * (n + 1))|

end

end A169956.P12224522283362778110

/-! ## A169956.P6607772612451332633

`A260196(A169957(2*(n+1)))+A169957(n+2)`
-/

namespace A169956.P6607772612451332633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A169957 (2 * (n + 1))).toNat + A169957 (n + 2)

end

end A169956.P6607772612451332633

/-! ## A169956.P204765349766204764

`A192852(n+1)+2+n`
-/

namespace A169956.P204765349766204764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192852 (n + 1) + 2 + (n : ℤ)

end

end A169956.P204765349766204764

/-! ## A169956.P1972585975367419260

`A260196(A169957(n+2)²)+A169957(n+2)`
-/

namespace A169956.P1972585975367419260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A169957 (n + 2) ^ 2).toNat + A169957 (n + 2)

end

end A169956.P1972585975367419260

/-!
# A169957: a(1) = 1, then a(n) is the smallest number such that a(a(n)) = 2n+1.

The programs for A169957, there is no canonical definition to state claims against.
-/

/-! ## A169957.P8802588324280027726

`A078898(A169956(2*(n+1))%A007616(n+1))`
-/

namespace A169957.P8802588324280027726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A169956 (2 * (n + 1))) (A007616 (n + 1))).toNat

end

end A169957.P8802588324280027726

/-!
# A169958: a(n) = binomial(9*n, n).

The programs for A169958, the canonical program `A169958.P15888421625415122270` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169958 has offset 0).

The definition of A169958 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(9*n, n)` (program `A169958.P15888421625415122270`, by `A169958.P15888421625415122270.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169958.P15888421625415122270

`C(9*n, n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169958

/-- `C(9*n, n)` -/
def P15888421625415122270.Spec : Prop :=
  ∀ n, (P15888421625415122270.a n : ℤ) = A169958 n

theorem P15888421625415122270.correct : P15888421625415122270.Spec := by
  intro n
  simp only [A169958]

end A169958

/-! ## A169958.P13191990118366020042

`record[C(A195312(n), ceil(n/2))]`
-/

namespace A169958.P13191990118366020042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A195312 n).toNat ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169958.P13191990118366020042

namespace A169958

/-- `record[C(A195312(n), ceil(n/2))]` -/
def P13191990118366020042.Spec : Prop :=
  ∀ n, (P13191990118366020042.a n : ℤ) = A169958 n

end A169958

/-! ## A169958.P18294317102686743874

`record[C(A168221(n), floor(n/4))]`
-/

namespace A169958.P18294317102686743874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A168221 n).toNat ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169958.P18294317102686743874

namespace A169958

/-- `record[C(A168221(n), floor(n/4))]` -/
def P18294317102686743874.Spec : Prop :=
  ∀ n, (P18294317102686743874.a n : ℤ) = A169958 n

end A169958

/-! ## A169958.P14090698485996368827

`record[C(n, A130724(A130724(n)))]`
-/

namespace A169958.P14090698485996368827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A130724 (A130724 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169958.P14090698485996368827

namespace A169958

/-- `record[C(n, A130724(A130724(n)))]` -/
def P14090698485996368827.Spec : Prop :=
  ∀ n, (P14090698485996368827.a n : ℤ) = A169958 n

end A169958

/-! ## A169958.P10566413092641916857

`record[C(A187318(n), A283442(n))]`
-/

namespace A169958.P10566413092641916857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A187318 n).toNat (A283442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169958.P10566413092641916857

namespace A169958

/-- `record[C(A187318(n), A283442(n))]` -/
def P10566413092641916857.Spec : Prop :=
  ∀ n, (P10566413092641916857.a n : ℤ) = A169958 n

end A169958

/-!
# A169959: a(n) = binomial(10*n, n).

The programs for A169959, the canonical program `A169959.P17680082808753415407` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169959 has offset 0).

The definition of A169959 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(10*n, n)` (program `A169959.P17680082808753415407`, by `A169959.P17680082808753415407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169959.P17680082808753415407

`C(10*n, n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169959

/-- `C(10*n, n)` -/
def P17680082808753415407.Spec : Prop :=
  ∀ n, (P17680082808753415407.a n : ℤ) = A169959 n

theorem P17680082808753415407.correct : P17680082808753415407.Spec := by
  intro n
  simp only [A169959]

end A169959

/-! ## A169959.P1772575226289830681

`Δ[A051682(n)]*A059968(n)`
-/

namespace A169959.P1772575226289830681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A059968 n

end

end A169959.P1772575226289830681

namespace A169959

/-- `Δ[A051682(n)]*A059968(n)` -/
def P1772575226289830681.Spec : Prop :=
  ∀ n, P1772575226289830681.a n = A169959 n

end A169959

/-! ## A169959.P17128712151870560525

`A001651(A016921(n))*A059968(n)`
-/

namespace A169959.P17128712151870560525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A016921 n).toNat * A059968 n

end

end A169959.P17128712151870560525

namespace A169959

/-- `A001651(A016921(n))*A059968(n)` -/
def P17128712151870560525.Spec : Prop :=
  ∀ n, P17128712151870560525.a n = A169959 n

end A169959

/-! ## A169959.P7505621253232099108

`abs(C(A008592(n), n)-n)+n`
-/

namespace A169959.P7505621253232099108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A008592 n).toNat n : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A169959.P7505621253232099108

namespace A169959

/-- `abs(C(A008592(n), n)-n)+n` -/
def P7505621253232099108.Spec : Prop :=
  ∀ n, P7505621253232099108.a n = A169959 n

end A169959

/-! ## A169959.P11810474335838628650

`record[C(A004277(n), A283442(n))]`
-/

namespace A169959.P11810474335838628650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004277 n).toNat (A283442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169959.P11810474335838628650

namespace A169959

/-- `record[C(A004277(n), A283442(n))]` -/
def P11810474335838628650.Spec : Prop :=
  ∀ n, (P11810474335838628650.a n : ℤ) = A169959 n

end A169959

/-! ## A169959.P15548695374431966210

`record[C(A187333(n), A187318(n))]`
-/

namespace A169959.P15548695374431966210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A187333 n).toNat (A187318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169959.P15548695374431966210

namespace A169959

/-- `record[C(A187333(n), A187318(n))]` -/
def P15548695374431966210.Spec : Prop :=
  ∀ n, (P15548695374431966210.a n : ℤ) = A169959 n

end A169959

/-! ## A169959.P8715374397902648278

`record[C(A187333(n), A283442(n))]`
-/

namespace A169959.P8715374397902648278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A187333 n).toNat (A283442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169959.P8715374397902648278

namespace A169959

/-- `record[C(A187333(n), A283442(n))]` -/
def P8715374397902648278.Spec : Prop :=
  ∀ n, (P8715374397902648278.a n : ℤ) = A169959 n

end A169959

/-!
# A169960: a(n) = binomial(11*n,n).

The programs for A169960, the canonical program `A169960.P14545505494576632549` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169960 has offset 0).

The definition of A169960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(11*n, n)` (program `A169960.P14545505494576632549`, by `A169960.P14545505494576632549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169960.P14545505494576632549

`C(11*n, n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169960

/-- `C(11*n, n)` -/
def P14545505494576632549.Spec : Prop :=
  ∀ n, (P14545505494576632549.a n : ℤ) = A169960 n

theorem P14545505494576632549.correct : P14545505494576632549.Spec := by
  intro n
  simp only [A169960]

end A169960

/-! ## A169960.P12471774618737107289

`(A017173(n)+n)*A230388(n)`
-/

namespace A169960.P12471774618737107289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017173 n + (n : ℤ)) * A230388 n

end

end A169960.P12471774618737107289

namespace A169960

/-- `(A017173(n)+n)*A230388(n)` -/
def P12471774618737107289.Spec : Prop :=
  ∀ n, P12471774618737107289.a n = A169960 n

end A169960

/-! ## A169960.P14869901680932787606

`record[C(n, A106612(n))]`
-/

namespace A169960.P14869901680932787606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A106612 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169960.P14869901680932787606

namespace A169960

/-- `record[C(n, A106612(n))]` -/
def P14869901680932787606.Spec : Prop :=
  ∀ n, (P14869901680932787606.a n : ℤ) = A169960 n

end A169960

/-! ## A169960.P6626162530865146247

`A159965(A139277(n))`
-/

namespace A169960.P6626162530865146247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A139277 n).toNat

end

end A169960.P6626162530865146247

namespace A169960

/-- `A159965(A139277(n))` -/
def P6626162530865146247.Spec : Prop :=
  ∀ n, P6626162530865146247.a n = A169960 n

end A169960

/-! ## A169960.P15316795836366297040

`A193635(A139276(n))`
-/

namespace A169960.P15316795836366297040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A139276 n).toNat

end

end A169960.P15316795836366297040

namespace A169960

/-- `A193635(A139276(n))` -/
def P15316795836366297040.Spec : Prop :=
  ∀ n, P15316795836366297040.a n = A169960 n

end A169960

/-!
# A169961: a(n) = binomial(12*n, n).

The programs for A169961, the canonical program `A169961.P16205334389465150825` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169961 has offset 0).

The definition of A169961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(12*n, n)` (program `A169961.P16205334389465150825`, by `A169961.P16205334389465150825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169961.P16205334389465150825

`C(12*n, n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169961

/-- `C(12*n, n)` -/
def P16205334389465150825.Spec : Prop :=
  ∀ n, (P16205334389465150825.a n : ℤ) = A169961 n

theorem P16205334389465150825.correct : P16205334389465150825.Spec := by
  intro n
  simp only [A169961]

end A169961

/-! ## A169961.P15905161602603757432

`record[C(A008458(n), A142150(n))]`
-/

namespace A169961.P15905161602603757432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008458 n).toNat (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169961.P15905161602603757432

namespace A169961

/-- `record[C(A008458(n), A142150(n))]` -/
def P15905161602603757432.Spec : Prop :=
  ∀ n, (P15905161602603757432.a n : ℤ) = A169961 n

end A169961

/-! ## A169961.P8056001853789144819

`record[C(A016969(n)+1, A318518(n+1))]`
-/

namespace A169961.P8056001853789144819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016969 n + 1).toNat (A318518 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169961.P8056001853789144819

namespace A169961

/-- `record[C(A016969(n)+1, A318518(n+1))]` -/
def P8056001853789144819.Spec : Prop :=
  ∀ n, (P8056001853789144819.a n : ℤ) = A169961 n

end A169961

/-! ## A169961.P9408908263580857470

`A116089(A144312(n)+A008586(n))`
-/

namespace A169961.P9408908263580857470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A144312 n + A008586 n).toNat

end

end A169961.P9408908263580857470

namespace A169961

/-- `A116089(A144312(n)+A008586(n))` -/
def P9408908263580857470.Spec : Prop :=
  ∀ n, P9408908263580857470.a n = A169961 n

end A169961

/-! ## A169961.P15404363202987642493

`A116089(A139276(n)+A062728(n))`
-/

namespace A169961.P15404363202987642493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A139276 n + A062728 n).toNat

end

end A169961.P15404363202987642493

namespace A169961

/-- `A116089(A139276(n)+A062728(n))` -/
def P15404363202987642493.Spec : Prop :=
  ∀ n, P15404363202987642493.a n = A169961 n

end A169961

/-!
# A169962: Number of n-digit primes in carryless arithmetic mod 10.

The programs for A169962, there is no canonical definition to state claims against.
-/

/-! ## A169962.P17385767876611286085

`A004247(or(A209988(n), A350888(n+1)))`
-/

namespace A169962.P17385767876611286085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (Int.lor (A209988 n) (A350888 (n + 1))).toNat

end

end A169962.P17385767876611286085

/-! ## A169962.P747166229387553889

`xor(A291278(A087803(n+1)), A291278(n+1))`
-/

namespace A169962.P747166229387553889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A291278 (A087803 (n + 1)).toNat) (A291278 (n + 1))

end

end A169962.P747166229387553889

/-!
# A169963: Number of (2n+1)-digit squares in carryless arithmetic mod 10.

The programs for A169963, the canonical program `A169963.P17890844278293069774` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169963 has offset 0).

The definition of A169963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169963.P17890844278293069774

`12*a(n-1)-20*a(n-2)` with `a(0)=5, a(1)=46`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169963

/-- `12*a(n-1)-20*a(n-2)` -/
def P17890844278293069774.Spec : Prop :=
  ∀ n, P17890844278293069774.a n = A169963 n

theorem P17890844278293069774.correct : P17890844278293069774.Spec := by
  intro n
  simp only [A169963]

end A169963

/-! ## A169963.P14959068082358072172

`ogf((5-14x)/(1-12x+20x^2))`
-/

namespace A169963.P14959068082358072172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -14] [1, -12, 20] n

end

end A169963.P14959068082358072172

namespace A169963

/-- `ogf((5-14x)/(1-12x+20x^2))` -/
def P14959068082358072172.Spec : Prop :=
  ∀ n, P14959068082358072172.a n = A169963 n

end A169963

/-! ## A169963.P13844853040327900208

`2*(5*a(n-1)-2^n)` with `a(0)=5`
-/

namespace A169963.P13844853040327900208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  2 * (5 * a (n - 1) - (2 ^ n : ℤ))

end

end A169963.P13844853040327900208

namespace A169963

/-- `2*(5*a(n-1)-2^n)` -/
def P13844853040327900208.Spec : Prop :=
  ∀ n, P13844853040327900208.a n = A169963 n

end A169963

/-! ## A169963.P11745398430842875496

`2^n*A199312(n)`
-/

namespace A169963.P11745398430842875496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A199312 n

end

end A169963.P11745398430842875496

namespace A169963

/-- `2^n*A199312(n)` -/
def P11745398430842875496.Spec : Prop :=
  ∀ n, P11745398430842875496.a n = A169963 n

end A169963

/-! ## A169963.P13059981123072318914

`(A052268(n+1)+∑[ceil(2^(n-1))])/2`
-/

namespace A169963.P13059981123072318914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A052268 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A169963.P13059981123072318914

namespace A169963

/-- `(A052268(n+1)+∑[ceil(2^(n-1))])/2` -/
def P13059981123072318914.Spec : Prop :=
  ∀ n, P13059981123072318914.a n = (A169963 n : ℚ)

end A169963

/-! ## A169963.P4040416821697885908

`or(Δ[A093143(n)], A000225(n))+1`
-/

namespace A169963.P4040416821697885908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A000225 n) + 1

end

end A169963.P4040416821697885908

namespace A169963

/-- `or(Δ[A093143(n)], A000225(n))+1` -/
def P4040416821697885908.Spec : Prop :=
  ∀ n, P4040416821697885908.a n = A169963 n

end A169963

/-! ## A169963.P14852782266602823906

`A131577(n)+Δ[A000351(n)*A131577(n)]`
-/

namespace A169963.P14852782266602823906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + (f1 (n + 1) - f1 n)

end

end A169963.P14852782266602823906

namespace A169963

/-- `A131577(n)+Δ[A000351(n)*A131577(n)]` -/
def P14852782266602823906.Spec : Prop :=
  ∀ n, P14852782266602823906.a n = A169963 n

end A169963

/-! ## A169963.P5923405105122892266

`A093143(n+1)+A011782(n)-A093143(n)`
-/

namespace A169963.P5923405105122892266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 (n + 1) + (A011782 n - A093143 n)

end

end A169963.P5923405105122892266

namespace A169963

/-- `A093143(n+1)+A011782(n)-A093143(n)` -/
def P5923405105122892266.Spec : Prop :=
  ∀ n, P5923405105122892266.a n = A169963 n

end A169963

/-! ## A169963.P4115970817010427216

`(A083065(n+1)+A083065(n))*A000079(n)`
-/

namespace A169963.P4115970817010427216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083065 (n + 1) + A083065 n) * A000079 n

end

end A169963.P4115970817010427216

namespace A169963

/-- `(A083065(n+1)+A083065(n))*A000079(n)` -/
def P4115970817010427216.Spec : Prop :=
  ∀ n, P4115970817010427216.a n = A169963 n

end A169963

/-! ## A169963.P15132169185516633131

`Δ[(2^n+10^n)/2]`
-/

namespace A169963.P15132169185516633131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 10 ^ n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169963.P15132169185516633131

namespace A169963

/-- `Δ[(2^n+10^n)/2]` -/
def P15132169185516633131.Spec : Prop :=
  ∀ n, P15132169185516633131.a n = (A169963 n : ℚ)

theorem P15132169185516633131.correct : P15132169185516633131.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A169963, Nat.add_sub_cancel, A169963.P15132169185516633131.f1, A169963.P15132169185516633131.a, A169963.P17890844278293069774.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A169963, Nat.add_sub_cancel, A169963.P15132169185516633131.f1, A169963.P15132169185516633131.a, A169963.P17890844278293069774.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A169963

/-!
# A169964: Numbers whose decimal expansion contains only 0's and 5's.

The programs for A169964, the canonical program `A169964.P5476345950802300353` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169964 has offset 1).

The definition of A169964 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A169964.P5476345950802300353

`5*A007088(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A169964

/-- `5*A007088(n)` -/
def P5476345950802300353.Spec : Prop :=
  ∀ n, P5476345950802300353.a n = A169964 (n + 1)

theorem P5476345950802300353.correct : P5476345950802300353.Spec := by
  intro n
  simp only [A169964, Nat.add_sub_cancel]

end A169964

/-! ## A169964.P10215445234549427369

`5*(n-2*(floor(n/2)-a(floor(n/2))))` with `a(0)=0`
-/

namespace A169964.P10215445234549427369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * ((n : ℤ) - 2 * (⌊(n : ℚ) / 2⌋ - a ⌊(n : ℚ) / 2⌋.toNat))

end

end A169964.P10215445234549427369

namespace A169964

/-- `5*(n-2*(floor(n/2)-a(floor(n/2))))` -/
def P10215445234549427369.Spec : Prop :=
  ∀ n, P10215445234549427369.a n = A169964 (n + 1)

end A169964

/-! ## A169964.P16071974916124005856

`A099820(n)/2`
-/

namespace A169964.P16071974916124005856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 n : ℚ) / 2

end

end A169964.P16071974916124005856

namespace A169964

/-- `A099820(n)/2` -/
def P16071974916124005856.Spec : Prop :=
  ∀ n, P16071974916124005856.a n = (A169964 (n + 1) : ℚ)

end A169964

/-! ## A169964.P2671825327355603880

`5*sqrt(A063009(n))`
-/

namespace A169964.P2671825327355603880
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  5 * Real.sqrt (A063009 n : ℝ)

end

end A169964.P2671825327355603880

namespace A169964

/-- `5*sqrt(A063009(n))` -/
def P2671825327355603880.Spec : Prop :=
  ∀ n, P2671825327355603880.a n = (A169964 (n + 1) : ℝ)

end A169964

/-! ## A169964.P3678622200821968915

`5/6*A204093(n)`
-/

namespace A169964.P3678622200821968915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 6 * (A204093 n : ℚ)

end

end A169964.P3678622200821968915

namespace A169964

/-- `5/6*A204093(n)` -/
def P3678622200821968915.Spec : Prop :=
  ∀ n, P3678622200821968915.a n = (A169964 (n + 1) : ℚ)

theorem P3678622200821968915.correct : P3678622200821968915.Spec := by
  intro n
  simp only [A169964, Nat.add_sub_cancel, A169964.P3678622200821968915.a, A169964.P5476345950802300353.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169964

/-! ## A169964.P258797370428703027

`5/9*A097256(n)`
-/

namespace A169964.P258797370428703027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 9 * (A097256 n : ℚ)

end

end A169964.P258797370428703027

namespace A169964

/-- `5/9*A097256(n)` -/
def P258797370428703027.Spec : Prop :=
  ∀ n, P258797370428703027.a n = (A169964 (n + 1) : ℚ)

end A169964

/-! ## A169964.P4266322448903263447

`5*(A228071(n)+n)`
-/

namespace A169964.P4266322448903263447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A228071 n + (n : ℤ))

end

end A169964.P4266322448903263447

namespace A169964

/-- `5*(A228071(n)+n)` -/
def P4266322448903263447.Spec : Prop :=
  ∀ n, P4266322448903263447.a n = A169964 (n + 1)

theorem P4266322448903263447.correct : P4266322448903263447.Spec := by
  intro n
  simp only [A169964, Nat.add_sub_cancel, A169964.P4266322448903263447.a, A169964.P5476345950802300353.a, A007088, A007088.P12432121332583687413.a, A228071, A228071.P9444289082571793754.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169964

/-! ## A169964.P12859737335319496168

`5*(A269130(n)-n)`
-/

namespace A169964.P12859737335319496168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A269130 n - (n : ℤ))

end

end A169964.P12859737335319496168

namespace A169964

/-- `5*(A269130(n)-n)` -/
def P12859737335319496168.Spec : Prop :=
  ∀ n, P12859737335319496168.a n = A169964 (n + 1)

theorem P12859737335319496168.correct : P12859737335319496168.Spec := by
  intro n
  simp only [A169964, Nat.add_sub_cancel, A169964.P12859737335319496168.a, A169964.P5476345950802300353.a, A007088, A007088.P12432121332583687413.a, A269130, A269130.P11293985648693636355.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169964

/-! ## A169964.P15025450990833335885

`5/4*A169967(n+1)`
-/

namespace A169964.P15025450990833335885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A169967 (n + 1) : ℚ)

end

end A169964.P15025450990833335885

namespace A169964

/-- `5/4*A169967(n+1)` -/
def P15025450990833335885.Spec : Prop :=
  ∀ n, P15025450990833335885.a n = (A169964 (n + 1) : ℚ)

theorem P15025450990833335885.correct : P15025450990833335885.Spec := by
  intro n
  simp only [A169964, Nat.add_sub_cancel, A169964.P15025450990833335885.a, A169964.P5476345950802300353.a, A007088, A007088.P12432121332583687413.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169964

/-! ## A169964.P11537804162866951113

`A007088(A005843(n))/2`
-/

namespace A169964.P11537804162866951113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (A005843 n).toNat : ℚ) / 2

end

end A169964.P11537804162866951113

namespace A169964

/-- `A007088(A005843(n))/2` -/
def P11537804162866951113.Spec : Prop :=
  ∀ n, P11537804162866951113.a n = (A169964 (n + 1) : ℚ)

end A169964

/-! ## A169964.P1014048655792251656

`A204093(n)-A007088(n)`
-/

namespace A169964.P1014048655792251656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204093 n - A007088 n

end

end A169964.P1014048655792251656

namespace A169964

/-- `A204093(n)-A007088(n)` -/
def P1014048655792251656.Spec : Prop :=
  ∀ n, P1014048655792251656.a n = A169964 (n + 1)

theorem P1014048655792251656.correct : P1014048655792251656.Spec := by
  intro n
  simp only [A169964, Nat.add_sub_cancel, A169964.P1014048655792251656.a, A169964.P5476345950802300353.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169964

/-! ## A169964.P15197714746272755757

`A204093(n)-sqrt(A063009(n))`
-/

namespace A169964.P15197714746272755757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204093 n : ℝ) - Real.sqrt (A063009 n : ℝ)

end

end A169964.P15197714746272755757

namespace A169964

/-- `A204093(n)-sqrt(A063009(n))` -/
def P15197714746272755757.Spec : Prop :=
  ∀ n, P15197714746272755757.a n = (A169964 (n + 1) : ℝ)

end A169964

/-! ## A169964.P16648583370639226624

`(A007088(A005408(n))-1)/2`
-/

namespace A169964.P16648583370639226624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (A005408 n).toNat - 1 : ℚ) / 2

end

end A169964.P16648583370639226624

namespace A169964

/-- `(A007088(A005408(n))-1)/2` -/
def P16648583370639226624.Spec : Prop :=
  ∀ n, P16648583370639226624.a n = (A169964 (n + 1) : ℚ)

end A169964

/-! ## A169964.P8365697382592243518

`A169967(n+1)+A007088(n)`
-/

namespace A169964.P8365697382592243518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169967 (n + 1) + A007088 n

end

end A169964.P8365697382592243518

namespace A169964

/-- `A169967(n+1)+A007088(n)` -/
def P8365697382592243518.Spec : Prop :=
  ∀ n, P8365697382592243518.a n = A169964 (n + 1)

theorem P8365697382592243518.correct : P8365697382592243518.Spec := by
  intro n
  simp only [A169964, Nat.add_sub_cancel, A169964.P8365697382592243518.a, A169964.P5476345950802300353.a, A007088, A007088.P12432121332583687413.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169964

/-! ## A169964.P12582199283767783333

`A097256(n)-A169967(n+1)`
-/

namespace A169964.P12582199283767783333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n - A169967 (n + 1)

end

end A169964.P12582199283767783333

namespace A169964

/-- `A097256(n)-A169967(n+1)` -/
def P12582199283767783333.Spec : Prop :=
  ∀ n, P12582199283767783333.a n = A169964 (n + 1)

end A169964

/-! ## A169964.P3164465776520752054

`A204094(n)-A169965(n+1)`
-/

namespace A169964.P3164465776520752054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204094 n - A169965 (n + 1)

end

end A169964.P3164465776520752054

namespace A169964

/-- `A204094(n)-A169965(n+1)` -/
def P3164465776520752054.Spec : Prop :=
  ∀ n, P3164465776520752054.a n = A169964 (n + 1)

theorem P3164465776520752054.correct : P3164465776520752054.Spec := by
  intro n
  simp only [A169964, Nat.add_sub_cancel, A169964.P3164465776520752054.a, A169964.P5476345950802300353.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169964

/-! ## A169964.P9940246357065749465

`A204095(n)-A169966(n+1)`
-/

namespace A169964.P9940246357065749465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 n - A169966 (n + 1)

end

end A169964.P9940246357065749465

namespace A169964

/-- `A204095(n)-A169966(n+1)` -/
def P9940246357065749465.Spec : Prop :=
  ∀ n, P9940246357065749465.a n = A169964 (n + 1)

theorem P9940246357065749465.correct : P9940246357065749465.Spec := by
  intro n
  simp only [A169964, Nat.add_sub_cancel, A169964.P9940246357065749465.a, A169964.P5476345950802300353.a, A007088, A007088.P12432121332583687413.a, A169966, A169966.P17934816075476850432.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169964

/-! ## A169964.P906822236818800545

`(A097256(n)+A007088(n))/2`
-/

namespace A169964.P906822236818800545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 n + A007088 n : ℚ) / 2

end

end A169964.P906822236818800545

namespace A169964

/-- `(A097256(n)+A007088(n))/2` -/
def P906822236818800545.Spec : Prop :=
  ∀ n, P906822236818800545.a n = (A169964 (n + 1) : ℚ)

end A169964

/-! ## A169964.P16915932202059383909

`A007088(n)+A204095(n)/2`
-/

namespace A169964.P16915932202059383909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 n : ℚ) + (A204095 n : ℚ) / 2

end

end A169964.P16915932202059383909

namespace A169964

/-- `A007088(n)+A204095(n)/2` -/
def P16915932202059383909.Spec : Prop :=
  ∀ n, P16915932202059383909.a n = (A169964 (n + 1) : ℚ)

theorem P16915932202059383909.correct : P16915932202059383909.Spec := by
  intro n
  simp only [A169964, Nat.add_sub_cancel, A169964.P16915932202059383909.a, A169964.P5476345950802300353.a, A007088, A007088.P12432121332583687413.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169964

/-! ## A169964.P11314280680887784698

`A169966(n+1)+A169965(n+1)`
-/

namespace A169964.P11314280680887784698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169966 (n + 1) + A169965 (n + 1)

end

end A169964.P11314280680887784698

namespace A169964

/-- `A169966(n+1)+A169965(n+1)` -/
def P11314280680887784698.Spec : Prop :=
  ∀ n, P11314280680887784698.a n = A169964 (n + 1)

theorem P11314280680887784698.correct : P11314280680887784698.Spec := by
  intro n
  simp only [A169964, Nat.add_sub_cancel, A169964.P11314280680887784698.a, A169964.P5476345950802300353.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A169966, A169966.P17934816075476850432.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169964

/-!
# A169965: Numbers whose decimal expansion contains only 0's and 2's.

The programs for A169965, the canonical program `A169965.P4332122273764269296` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169965 has offset 1).

The definition of A169965 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A169965.P4332122273764269296

`2*A007088(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A169965

/-- `2*A007088(n)` -/
def P4332122273764269296.Spec : Prop :=
  ∀ n, P4332122273764269296.a n = A169965 (n + 1)

theorem P4332122273764269296.correct : P4332122273764269296.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel]

end A169965

/-! ## A169965.P6412624130089778096

`A204093(n)/3`
-/

namespace A169965.P6412624130089778096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 n : ℚ) / 3

end

end A169965.P6412624130089778096

namespace A169965

/-- `A204093(n)/3` -/
def P6412624130089778096.Spec : Prop :=
  ∀ n, P6412624130089778096.a n = (A169965 (n + 1) : ℚ)

theorem P6412624130089778096.correct : P6412624130089778096.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P6412624130089778096.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P701325631026060990

`A204095(n)/4`
-/

namespace A169965.P701325631026060990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 n : ℚ) / 4

end

end A169965.P701325631026060990

namespace A169965

/-- `A204095(n)/4` -/
def P701325631026060990.Spec : Prop :=
  ∀ n, P701325631026060990.a n = (A169965 (n + 1) : ℚ)

theorem P701325631026060990.correct : P701325631026060990.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P701325631026060990.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P16584602192980472295

`A099820(n)/5`
-/

namespace A169965.P16584602192980472295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 n : ℚ) / 5

end

end A169965.P16584602192980472295

namespace A169965

/-- `A099820(n)/5` -/
def P16584602192980472295.Spec : Prop :=
  ∀ n, P16584602192980472295.a n = (A169965 (n + 1) : ℚ)

end A169965

/-! ## A169965.P10815800618881353782

`2*sqrt(A063009(n))`
-/

namespace A169965.P10815800618881353782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A063009 n : ℝ)

end

end A169965.P10815800618881353782

namespace A169965

/-- `2*sqrt(A063009(n))` -/
def P10815800618881353782.Spec : Prop :=
  ∀ n, P10815800618881353782.a n = (A169965 (n + 1) : ℝ)

end A169965

/-! ## A169965.P12906978809268099288

`A169967(n+1)/2`
-/

namespace A169965.P12906978809268099288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (n + 1) : ℚ) / 2

end

end A169965.P12906978809268099288

namespace A169965

/-- `A169967(n+1)/2` -/
def P12906978809268099288.Spec : Prop :=
  ∀ n, P12906978809268099288.a n = (A169965 (n + 1) : ℚ)

theorem P12906978809268099288.correct : P12906978809268099288.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P12906978809268099288.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P2378113994092368654

`2*(A228071(n)+n)`
-/

namespace A169965.P2378113994092368654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A228071 n + (n : ℤ))

end

end A169965.P2378113994092368654

namespace A169965

/-- `2*(A228071(n)+n)` -/
def P2378113994092368654.Spec : Prop :=
  ∀ n, P2378113994092368654.a n = A169965 (n + 1)

theorem P2378113994092368654.correct : P2378113994092368654.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P2378113994092368654.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A228071, A228071.P9444289082571793754.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P15767304652706948350

`2*(A269130(n)-n)`
-/

namespace A169965.P15767304652706948350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A269130 n - (n : ℤ))

end

end A169965.P15767304652706948350

namespace A169965

/-- `2*(A269130(n)-n)` -/
def P15767304652706948350.Spec : Prop :=
  ∀ n, P15767304652706948350.a n = A169965 (n + 1)

theorem P15767304652706948350.correct : P15767304652706948350.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P15767304652706948350.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A269130, A269130.P11293985648693636355.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P5696297436433682775

`2/3*A169966(n+1)`
-/

namespace A169965.P5696297436433682775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A169966 (n + 1) : ℚ)

end

end A169965.P5696297436433682775

namespace A169965

/-- `2/3*A169966(n+1)` -/
def P5696297436433682775.Spec : Prop :=
  ∀ n, P5696297436433682775.a n = (A169965 (n + 1) : ℚ)

theorem P5696297436433682775.correct : P5696297436433682775.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P5696297436433682775.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A169966, A169966.P17934816075476850432.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P632634447123358880

`2/5*A169964(n+1)`
-/

namespace A169965.P632634447123358880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A169964 (n + 1) : ℚ)

end

end A169965.P632634447123358880

namespace A169965

/-- `2/5*A169964(n+1)` -/
def P632634447123358880.Spec : Prop :=
  ∀ n, P632634447123358880.a n = (A169965 (n + 1) : ℚ)

theorem P632634447123358880.correct : P632634447123358880.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P632634447123358880.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P1922031930776447876

`2*A303596(A372060(n))`
-/

namespace A169965.P1922031930776447876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303596 (A372060 n).toNat

end

end A169965.P1922031930776447876

namespace A169965

/-- `2*A303596(A372060(n))` -/
def P1922031930776447876.Spec : Prop :=
  ∀ n, P1922031930776447876.a n = A169965 (n + 1)

end A169965

/-! ## A169965.P12284804036728648258

`A269130(n)+A228071(n)`
-/

namespace A169965.P12284804036728648258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269130 n + A228071 n

end

end A169965.P12284804036728648258

namespace A169965

/-- `A269130(n)+A228071(n)` -/
def P12284804036728648258.Spec : Prop :=
  ∀ n, P12284804036728648258.a n = A169965 (n + 1)

theorem P12284804036728648258.correct : P12284804036728648258.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P12284804036728648258.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A228071, A228071.P9444289082571793754.a, A269130, A269130.P11293985648693636355.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P9334959889228691472

`A097256(n)-A204094(n)`
-/

namespace A169965.P9334959889228691472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n - A204094 n

end

end A169965.P9334959889228691472

namespace A169965

/-- `A097256(n)-A204094(n)` -/
def P9334959889228691472.Spec : Prop :=
  ∀ n, P9334959889228691472.a n = A169965 (n + 1)

end A169965

/-! ## A169965.P3755984431947209442

`A099820(n)-A204095(n)`
-/

namespace A169965.P3755984431947209442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n - A204095 n

end

end A169965.P3755984431947209442

namespace A169965

/-- `A099820(n)-A204095(n)` -/
def P3755984431947209442.Spec : Prop :=
  ∀ n, P3755984431947209442.a n = A169965 (n + 1)

end A169965

/-! ## A169965.P15772436856452936599

`A204095(n)-A204093(n)`
-/

namespace A169965.P15772436856452936599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 n - A204093 n

end

end A169965.P15772436856452936599

namespace A169965

/-- `A204095(n)-A204093(n)` -/
def P15772436856452936599.Spec : Prop :=
  ∀ n, P15772436856452936599.a n = A169965 (n + 1)

theorem P15772436856452936599.correct : P15772436856452936599.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P15772436856452936599.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P6338352064772963821

`gcd(A099820(n), A204093(n))`
-/

namespace A169965.P6338352064772963821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099820 n) (A204093 n)

end

end A169965.P6338352064772963821

namespace A169965

/-- `gcd(A099820(n), A204093(n))` -/
def P6338352064772963821.Spec : Prop :=
  ∀ n, (P6338352064772963821.a n : ℤ) = A169965 (n + 1)

end A169965

/-! ## A169965.P15151313665164537335

`A169966(n+1)-A007088(n)`
-/

namespace A169965.P15151313665164537335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169966 (n + 1) - A007088 n

end

end A169965.P15151313665164537335

namespace A169965

/-- `A169966(n+1)-A007088(n)` -/
def P15151313665164537335.Spec : Prop :=
  ∀ n, P15151313665164537335.a n = A169965 (n + 1)

theorem P15151313665164537335.correct : P15151313665164537335.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P15151313665164537335.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A169966, A169966.P17934816075476850432.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P7507688704793802483

`A204093(n)-A169967(n+1)`
-/

namespace A169965.P7507688704793802483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204093 n - A169967 (n + 1)

end

end A169965.P7507688704793802483

namespace A169965

/-- `A204093(n)-A169967(n+1)` -/
def P7507688704793802483.Spec : Prop :=
  ∀ n, P7507688704793802483.a n = A169965 (n + 1)

theorem P7507688704793802483.correct : P7507688704793802483.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P7507688704793802483.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A169967, A169967.P11381469564767287368.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P15236412528313468312

`A204094(n)-A169964(n+1)`
-/

namespace A169965.P15236412528313468312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204094 n - A169964 (n + 1)

end

end A169965.P15236412528313468312

namespace A169965

/-- `A204094(n)-A169964(n+1)` -/
def P15236412528313468312.Spec : Prop :=
  ∀ n, P15236412528313468312.a n = A169965 (n + 1)

theorem P15236412528313468312.correct : P15236412528313468312.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P15236412528313468312.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-! ## A169965.P18153347780977529635

`A169964(n+1)-A169966(n+1)`
-/

namespace A169965.P18153347780977529635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1) - A169966 (n + 1)

end

end A169965.P18153347780977529635

namespace A169965

/-- `A169964(n+1)-A169966(n+1)` -/
def P18153347780977529635.Spec : Prop :=
  ∀ n, P18153347780977529635.a n = A169965 (n + 1)

theorem P18153347780977529635.correct : P18153347780977529635.Spec := by
  intro n
  simp only [A169965, Nat.add_sub_cancel, A169965.P18153347780977529635.a, A169965.P4332122273764269296.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A169966, A169966.P17934816075476850432.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169965

/-!
# A169966: Numbers whose decimal expansion contains only 0's and 3's.

The programs for A169966, the canonical program `A169966.P17934816075476850432` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169966 has offset 1).

The definition of A169966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A169966.P17934816075476850432

`3*A007088(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A169966

/-- `3*A007088(n)` -/
def P17934816075476850432.Spec : Prop :=
  ∀ n, P17934816075476850432.a n = A169966 (n + 1)

theorem P17934816075476850432.correct : P17934816075476850432.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel]

end A169966

/-! ## A169966.P6195123461622127259

`A204093(n)/2`
-/

namespace A169966.P6195123461622127259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 n : ℚ) / 2

end

end A169966.P6195123461622127259

namespace A169966

/-- `A204093(n)/2` -/
def P6195123461622127259.Spec : Prop :=
  ∀ n, P6195123461622127259.a n = (A169966 (n + 1) : ℚ)

theorem P6195123461622127259.correct : P6195123461622127259.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P6195123461622127259.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P10708096752482469639

`A097256(n)/3`
-/

namespace A169966.P10708096752482469639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 n : ℚ) / 3

end

end A169966.P10708096752482469639

namespace A169966

/-- `A097256(n)/3` -/
def P10708096752482469639.Spec : Prop :=
  ∀ n, P10708096752482469639.a n = (A169966 (n + 1) : ℚ)

end A169966

/-! ## A169966.P3770693288908270794

`3*sqrt(A063009(n))`
-/

namespace A169966.P3770693288908270794
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A063009 n : ℝ)

end

end A169966.P3770693288908270794

namespace A169966

/-- `3*sqrt(A063009(n))` -/
def P3770693288908270794.Spec : Prop :=
  ∀ n, P3770693288908270794.a n = (A169966 (n + 1) : ℝ)

end A169966

/-! ## A169966.P15076061463523491167

`3/7*A204094(n)`
-/

namespace A169966.P15076061463523491167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 7 * (A204094 n : ℚ)

end

end A169966.P15076061463523491167

namespace A169966

/-- `3/7*A204094(n)` -/
def P15076061463523491167.Spec : Prop :=
  ∀ n, P15076061463523491167.a n = (A169966 (n + 1) : ℚ)

theorem P15076061463523491167.correct : P15076061463523491167.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P15076061463523491167.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P4073576615833781679

`3/8*A204095(n)`
-/

namespace A169966.P4073576615833781679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 8 * (A204095 n : ℚ)

end

end A169966.P4073576615833781679

namespace A169966

/-- `3/8*A204095(n)` -/
def P4073576615833781679.Spec : Prop :=
  ∀ n, P4073576615833781679.a n = (A169966 (n + 1) : ℚ)

theorem P4073576615833781679.correct : P4073576615833781679.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P4073576615833781679.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P16834541496123142646

`3/10*A099820(n)`
-/

namespace A169966.P16834541496123142646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 10 * (A099820 n : ℚ)

end

end A169966.P16834541496123142646

namespace A169966

/-- `3/10*A099820(n)` -/
def P16834541496123142646.Spec : Prop :=
  ∀ n, P16834541496123142646.a n = (A169966 (n + 1) : ℚ)

end A169966

/-! ## A169966.P12151997763917026579

`3*(A228071(n)+n)`
-/

namespace A169966.P12151997763917026579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A228071 n + (n : ℤ))

end

end A169966.P12151997763917026579

namespace A169966

/-- `3*(A228071(n)+n)` -/
def P12151997763917026579.Spec : Prop :=
  ∀ n, P12151997763917026579.a n = A169966 (n + 1)

theorem P12151997763917026579.correct : P12151997763917026579.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P12151997763917026579.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A228071, A228071.P9444289082571793754.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P11405554100971861961

`3*(A269130(n)-n)`
-/

namespace A169966.P11405554100971861961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A269130 n - (n : ℤ))

end

end A169966.P11405554100971861961

namespace A169966

/-- `3*(A269130(n)-n)` -/
def P11405554100971861961.Spec : Prop :=
  ∀ n, P11405554100971861961.a n = A169966 (n + 1)

theorem P11405554100971861961.correct : P11405554100971861961.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P11405554100971861961.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A269130, A269130.P11293985648693636355.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P15295866038623551662

`3/2*A169965(n+1)`
-/

namespace A169966.P15295866038623551662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A169965 (n + 1) : ℚ)

end

end A169966.P15295866038623551662

namespace A169966

/-- `3/2*A169965(n+1)` -/
def P15295866038623551662.Spec : Prop :=
  ∀ n, P15295866038623551662.a n = (A169966 (n + 1) : ℚ)

theorem P15295866038623551662.correct : P15295866038623551662.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P15295866038623551662.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P3075135902906188474

`3/4*A169967(n+1)`
-/

namespace A169966.P3075135902906188474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A169967 (n + 1) : ℚ)

end

end A169966.P3075135902906188474

namespace A169966

/-- `3/4*A169967(n+1)` -/
def P3075135902906188474.Spec : Prop :=
  ∀ n, P3075135902906188474.a n = (A169966 (n + 1) : ℚ)

theorem P3075135902906188474.correct : P3075135902906188474.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P3075135902906188474.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P1949229237544935162

`3/5*A169964(n+1)`
-/

namespace A169966.P1949229237544935162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A169964 (n + 1) : ℚ)

end

end A169966.P1949229237544935162

namespace A169966

/-- `3/5*A169964(n+1)` -/
def P1949229237544935162.Spec : Prop :=
  ∀ n, P1949229237544935162.a n = (A169966 (n + 1) : ℚ)

theorem P1949229237544935162.correct : P1949229237544935162.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P1949229237544935162.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P15523728778603113199

`A097256(n)-A204093(n)`
-/

namespace A169966.P15523728778603113199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n - A204093 n

end

end A169966.P15523728778603113199

namespace A169966

/-- `A097256(n)-A204093(n)` -/
def P15523728778603113199.Spec : Prop :=
  ∀ n, P15523728778603113199.a n = A169966 (n + 1)

end A169966

/-! ## A169966.P16519604183701848845

`A099820(n)-A204094(n)`
-/

namespace A169966.P16519604183701848845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n - A204094 n

end

end A169966.P16519604183701848845

namespace A169966

/-- `A099820(n)-A204094(n)` -/
def P16519604183701848845.Spec : Prop :=
  ∀ n, P16519604183701848845.a n = A169966 (n + 1)

end A169966

/-! ## A169966.P9661620982220861036

`A169965(n+1)+A007088(n)`
-/

namespace A169966.P9661620982220861036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1) + A007088 n

end

end A169966.P9661620982220861036

namespace A169966

/-- `A169965(n+1)+A007088(n)` -/
def P9661620982220861036.Spec : Prop :=
  ∀ n, P9661620982220861036.a n = A169966 (n + 1)

theorem P9661620982220861036.correct : P9661620982220861036.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P9661620982220861036.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P3295448943780615240

`A169967(n+1)-A007088(n)`
-/

namespace A169966.P3295448943780615240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169967 (n + 1) - A007088 n

end

end A169966.P3295448943780615240

namespace A169966

/-- `A169967(n+1)-A007088(n)` -/
def P3295448943780615240.Spec : Prop :=
  ∀ n, P3295448943780615240.a n = A169966 (n + 1)

theorem P3295448943780615240.correct : P3295448943780615240.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P3295448943780615240.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P7275806882387426641

`A204094(n)-A169967(n+1)`
-/

namespace A169966.P7275806882387426641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204094 n - A169967 (n + 1)

end

end A169966.P7275806882387426641

namespace A169966

/-- `A204094(n)-A169967(n+1)` -/
def P7275806882387426641.Spec : Prop :=
  ∀ n, P7275806882387426641.a n = A169966 (n + 1)

theorem P7275806882387426641.correct : P7275806882387426641.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P7275806882387426641.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A169967, A169967.P11381469564767287368.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P11068671747230632046

`A204095(n)-A169964(n+1)`
-/

namespace A169966.P11068671747230632046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 n - A169964 (n + 1)

end

end A169966.P11068671747230632046

namespace A169966

/-- `A204095(n)-A169964(n+1)` -/
def P11068671747230632046.Spec : Prop :=
  ∀ n, P11068671747230632046.a n = A169966 (n + 1)

theorem P11068671747230632046.correct : P11068671747230632046.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P11068671747230632046.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P7662698904366260006

`(A204094(n)-A007088(n))/2`
-/

namespace A169966.P7662698904366260006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 n - A007088 n : ℚ) / 2

end

end A169966.P7662698904366260006

namespace A169966

/-- `(A204094(n)-A007088(n))/2` -/
def P7662698904366260006.Spec : Prop :=
  ∀ n, P7662698904366260006.a n = (A169966 (n + 1) : ℚ)

theorem P7662698904366260006.correct : P7662698904366260006.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P7662698904366260006.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-! ## A169966.P5404994178595918771

`A169964(n+1)-A169965(n+1)`
-/

namespace A169966.P5404994178595918771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1) - A169965 (n + 1)

end

end A169966.P5404994178595918771

namespace A169966

/-- `A169964(n+1)-A169965(n+1)` -/
def P5404994178595918771.Spec : Prop :=
  ∀ n, P5404994178595918771.a n = A169966 (n + 1)

theorem P5404994178595918771.correct : P5404994178595918771.Spec := by
  intro n
  simp only [A169966, Nat.add_sub_cancel, A169966.P5404994178595918771.a, A169966.P17934816075476850432.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A169965, A169965.P4332122273764269296.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169966

/-!
# A169967: Numbers whose decimal expansion contains only 0's and 4's.

The programs for A169967, the canonical program `A169967.P11381469564767287368` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169967 has offset 1).

The definition of A169967 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A169967.P11381469564767287368

`4*A007088(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A169967

/-- `4*A007088(n)` -/
def P11381469564767287368.Spec : Prop :=
  ∀ n, P11381469564767287368.a n = A169967 (n + 1)

theorem P11381469564767287368.correct : P11381469564767287368.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel]

end A169967

/-! ## A169967.P11456207400518028579

`and(5*(n-2*(floor(n/2)-a(floor(n/2)))), -2)` with `a(0)=0`
-/

namespace A169967.P11456207400518028579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (5 * ((n : ℤ) - 2 * (⌊(n : ℚ) / 2⌋ - a ⌊(n : ℚ) / 2⌋.toNat))) (-2)

end

end A169967.P11456207400518028579

namespace A169967

/-- `and(5*(n-2*(floor(n/2)-a(floor(n/2)))), -2)` -/
def P11456207400518028579.Spec : Prop :=
  ∀ n, P11456207400518028579.a n = A169967 (n + 1)

end A169967

/-! ## A169967.P6647562735971466044

`A204095(n)/2`
-/

namespace A169967.P6647562735971466044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 n : ℚ) / 2

end

end A169967.P6647562735971466044

namespace A169967

/-- `A204095(n)/2` -/
def P6647562735971466044.Spec : Prop :=
  ∀ n, P6647562735971466044.a n = (A169967 (n + 1) : ℚ)

theorem P6647562735971466044.correct : P6647562735971466044.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P6647562735971466044.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P14946471534265564572

`4*sqrt(A063009(n))`
-/

namespace A169967.P14946471534265564572
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A063009 n : ℝ)

end

end A169967.P14946471534265564572

namespace A169967

/-- `4*sqrt(A063009(n))` -/
def P14946471534265564572.Spec : Prop :=
  ∀ n, P14946471534265564572.a n = (A169967 (n + 1) : ℝ)

end A169967

/-! ## A169967.P3750004374545434102

`2*A169965(n+1)`
-/

namespace A169967.P3750004374545434102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169965 (n + 1)

end

end A169967.P3750004374545434102

namespace A169967

/-- `2*A169965(n+1)` -/
def P3750004374545434102.Spec : Prop :=
  ∀ n, P3750004374545434102.a n = A169967 (n + 1)

theorem P3750004374545434102.correct : P3750004374545434102.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P3750004374545434102.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P7895761262549686757

`2/3*A204093(n)`
-/

namespace A169967.P7895761262549686757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A204093 n : ℚ)

end

end A169967.P7895761262549686757

namespace A169967

/-- `2/3*A204093(n)` -/
def P7895761262549686757.Spec : Prop :=
  ∀ n, P7895761262549686757.a n = (A169967 (n + 1) : ℚ)

theorem P7895761262549686757.correct : P7895761262549686757.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P7895761262549686757.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P537542901002872925

`2/5*A099820(n)`
-/

namespace A169967.P537542901002872925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A099820 n : ℚ)

end

end A169967.P537542901002872925

namespace A169967

/-- `2/5*A099820(n)` -/
def P537542901002872925.Spec : Prop :=
  ∀ n, P537542901002872925.a n = (A169967 (n + 1) : ℚ)

end A169967

/-! ## A169967.P9572227080127247785

`4/9*A097256(n)`
-/

namespace A169967.P9572227080127247785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 9 * (A097256 n : ℚ)

end

end A169967.P9572227080127247785

namespace A169967

/-- `4/9*A097256(n)` -/
def P9572227080127247785.Spec : Prop :=
  ∀ n, P9572227080127247785.a n = (A169967 (n + 1) : ℚ)

end A169967

/-! ## A169967.P5714872100190212757

`4*(A228071(n)+n)`
-/

namespace A169967.P5714872100190212757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A228071 n + (n : ℤ))

end

end A169967.P5714872100190212757

namespace A169967

/-- `4*(A228071(n)+n)` -/
def P5714872100190212757.Spec : Prop :=
  ∀ n, P5714872100190212757.a n = A169967 (n + 1)

theorem P5714872100190212757.correct : P5714872100190212757.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P5714872100190212757.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A228071, A228071.P9444289082571793754.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P5659458592967404715

`4*(A269130(n)-n)`
-/

namespace A169967.P5659458592967404715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A269130 n - (n : ℤ))

end

end A169967.P5659458592967404715

namespace A169967

/-- `4*(A269130(n)-n)` -/
def P5659458592967404715.Spec : Prop :=
  ∀ n, P5659458592967404715.a n = A169967 (n + 1)

theorem P5659458592967404715.correct : P5659458592967404715.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P5659458592967404715.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A269130, A269130.P11293985648693636355.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P16878014452323363884

`4/3*A169966(n+1)`
-/

namespace A169967.P16878014452323363884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A169966 (n + 1) : ℚ)

end

end A169967.P16878014452323363884

namespace A169967

/-- `4/3*A169966(n+1)` -/
def P16878014452323363884.Spec : Prop :=
  ∀ n, P16878014452323363884.a n = (A169967 (n + 1) : ℚ)

theorem P16878014452323363884.correct : P16878014452323363884.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P16878014452323363884.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A169966, A169966.P17934816075476850432.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P4714578538229571792

`4/5*A169964(n+1)`
-/

namespace A169967.P4714578538229571792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A169964 (n + 1) : ℚ)

end

end A169967.P4714578538229571792

namespace A169967

/-- `4/5*A169964(n+1)` -/
def P4714578538229571792.Spec : Prop :=
  ∀ n, P4714578538229571792.a n = (A169967 (n + 1) : ℚ)

theorem P4714578538229571792.correct : P4714578538229571792.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P4714578538229571792.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P9708730113899571422

`A099820(n)-A204093(n)`
-/

namespace A169967.P9708730113899571422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n - A204093 n

end

end A169967.P9708730113899571422

namespace A169967

/-- `A099820(n)-A204093(n)` -/
def P9708730113899571422.Spec : Prop :=
  ∀ n, P9708730113899571422.a n = A169967 (n + 1)

end A169967

/-! ## A169967.P16410426613157621063

`A169966(n+1)+A007088(n)`
-/

namespace A169967.P16410426613157621063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169966 (n + 1) + A007088 n

end

end A169967.P16410426613157621063

namespace A169967

/-- `A169966(n+1)+A007088(n)` -/
def P16410426613157621063.Spec : Prop :=
  ∀ n, P16410426613157621063.a n = A169967 (n + 1)

theorem P16410426613157621063.correct : P16410426613157621063.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P16410426613157621063.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A169966, A169966.P17934816075476850432.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P17734018360534619469

`A169964(n+1)-A007088(n)`
-/

namespace A169967.P17734018360534619469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1) - A007088 n

end

end A169967.P17734018360534619469

namespace A169967

/-- `A169964(n+1)-A007088(n)` -/
def P17734018360534619469.Spec : Prop :=
  ∀ n, P17734018360534619469.a n = A169967 (n + 1)

theorem P17734018360534619469.correct : P17734018360534619469.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P17734018360534619469.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P2619122198150864035

`A097256(n)-A169964(n+1)`
-/

namespace A169967.P2619122198150864035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n - A169964 (n + 1)

end

end A169967.P2619122198150864035

namespace A169967

/-- `A097256(n)-A169964(n+1)` -/
def P2619122198150864035.Spec : Prop :=
  ∀ n, P2619122198150864035.a n = A169967 (n + 1)

end A169967

/-! ## A169967.P5692665521968746670

`A204093(n)-A169965(n+1)`
-/

namespace A169967.P5692665521968746670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204093 n - A169965 (n + 1)

end

end A169967.P5692665521968746670

namespace A169967

/-- `A204093(n)-A169965(n+1)` -/
def P5692665521968746670.Spec : Prop :=
  ∀ n, P5692665521968746670.a n = A169967 (n + 1)

theorem P5692665521968746670.correct : P5692665521968746670.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P5692665521968746670.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P14401663320997315078

`A204094(n)-A169966(n+1)`
-/

namespace A169967.P14401663320997315078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204094 n - A169966 (n + 1)

end

end A169967.P14401663320997315078

namespace A169967

/-- `A204094(n)-A169966(n+1)` -/
def P14401663320997315078.Spec : Prop :=
  ∀ n, P14401663320997315078.a n = A169967 (n + 1)

theorem P14401663320997315078.correct : P14401663320997315078.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P14401663320997315078.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A169966, A169966.P17934816075476850432.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P2620630766676701479

`A007088(n)+A204093(n)/2`
-/

namespace A169967.P2620630766676701479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 n : ℚ) + (A204093 n : ℚ) / 2

end

end A169967.P2620630766676701479

namespace A169967

/-- `A007088(n)+A204093(n)/2` -/
def P2620630766676701479.Spec : Prop :=
  ∀ n, P2620630766676701479.a n = (A169967 (n + 1) : ℚ)

theorem P2620630766676701479.correct : P2620630766676701479.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P2620630766676701479.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-! ## A169967.P15720950997990446321

`A204093(n)+A204093(n)-A204095(n)`
-/

namespace A169967.P15720950997990446321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204093 n + (A204093 n - A204095 n)

end

end A169967.P15720950997990446321

namespace A169967

/-- `A204093(n)+A204093(n)-A204095(n)` -/
def P15720950997990446321.Spec : Prop :=
  ∀ n, P15720950997990446321.a n = A169967 (n + 1)

theorem P15720950997990446321.correct : P15720950997990446321.Spec := by
  intro n
  simp only [A169967, Nat.add_sub_cancel, A169967.P15720950997990446321.a, A169967.P11381469564767287368.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169967

/-!
# A169968: Positive integers not in A169884.

The programs for A169968, the canonical program `A169968.P10176697459246325094` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169968 has offset 1).

The definition of A169968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169968.P10176697459246325094

`comp[A169884(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A169968

/-- `comp[A169884(n+1)]` -/
def P10176697459246325094.Spec : Prop :=
  ∀ n, (P10176697459246325094.a n : ℤ) = A169968 (n + 1)

theorem P10176697459246325094.correct : P10176697459246325094.Spec := by
  intro n
  simp only [A169968, Nat.add_sub_cancel]

end A169968

/-! ## A169968.P46640473913349613

`comp[Δ[A169884(A152271(n))]]`
-/

namespace A169968.P46640473913349613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169968.P46640473913349613

namespace A169968

/-- `comp[Δ[A169884(A152271(n))]]` -/
def P46640473913349613.Spec : Prop :=
  ∀ n, (P46640473913349613.a n : ℤ) = A169968 (n + 1)

end A169968

/-! ## A169968.P14451418373987440040

`lt[0, A004180(n)*A045841(n)]`
-/

namespace A169968.P14451418373987440040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n * A045841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169968.P14451418373987440040

namespace A169968

/-- `lt[0, A004180(n)*A045841(n)]` -/
def P14451418373987440040.Spec : Prop :=
  ∀ n, (P14451418373987440040.a n : ℤ) = A169968 (n + 1)

end A169968

/-! ## A169968.P8032517906303925546

`lt[0, A004520(n)*A045841(n)]`
-/

namespace A169968.P8032517906303925546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n * A045841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169968.P8032517906303925546

namespace A169968

/-- `lt[0, A004520(n)*A045841(n)]` -/
def P8032517906303925546.Spec : Prop :=
  ∀ n, (P8032517906303925546.a n : ℤ) = A169968 (n + 1)

end A169968

/-! ## A169968.P9475688178706861584

`lt[0, A004180(n)*A103181(n)]`
-/

namespace A169968.P9475688178706861584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n * A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169968.P9475688178706861584

namespace A169968

/-- `lt[0, A004180(n)*A103181(n)]` -/
def P9475688178706861584.Spec : Prop :=
  ∀ n, (P9475688178706861584.a n : ℤ) = A169968 (n + 1)

end A169968

/-! ## A169968.P17700902267560877598

`eq[1, gcd(10, A289508(A113581(n)))]`
-/

namespace A169968.P17700902267560877598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A289508 (A113581 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169968.P17700902267560877598

namespace A169968

/-- `eq[1, gcd(10, A289508(A113581(n)))]` -/
def P17700902267560877598.Spec : Prop :=
  ∀ n, (P17700902267560877598.a n : ℤ) = A169968 (n + 1)

end A169968

/-!
# A169969: Locations of row maxima in "crushed" version of Stern's diatomic array.

The programs for A169969, the canonical program `A169969.P6467119531999406792` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169969 has offset 1).

The definition of A169969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169969.P6467119531999406792

`a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=11`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169969

/-- `a(n-2)+2*a(n-4)` -/
def P6467119531999406792.Spec : Prop :=
  ∀ n, (P6467119531999406792.a n : ℤ) = A169969 (n + 1)

theorem P6467119531999406792.correct : P6467119531999406792.Spec := by
  intro n
  simp only [A169969, Nat.add_sub_cancel]

end A169969

/-! ## A169969.P1211547997798783966

`xor(and(2, n+1), a(n-2))+a(n-2)+1` with `a(0)=1, a(1)=3`
-/

namespace A169969.P1211547997798783966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor (Nat.land 2 (n + 1)) (a (n - 2)) + (a (n - 2) + 1)

end

end A169969.P1211547997798783966

namespace A169969

/-- `xor(and(2, n+1), a(n-2))+a(n-2)+1` -/
def P1211547997798783966.Spec : Prop :=
  ∀ n, (P1211547997798783966.a n : ℤ) = A169969 (n + 1)

end A169969

/-! ## A169969.P16185957132419190295

`a(n-2)-xor(and(2, n-1)-3, a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A169969.P16185957132419190295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - Int.xor (Int.land 2 ((n : ℤ) - 1) - 3) (a (n - 2))

end

end A169969.P16185957132419190295

namespace A169969

/-- `a(n-2)-xor(and(2, n-1)-3, a(n-2))` -/
def P16185957132419190295.Spec : Prop :=
  ∀ n, P16185957132419190295.a n = A169969 (n + 1)

end A169969

/-! ## A169969.P8245205462324620837

`a(n-2)-xor(or(2, n-3)-n, a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A169969.P8245205462324620837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - Int.xor (Int.lor 2 ((n : ℤ) - 3) - (n : ℤ)) (a (n - 2))

end

end A169969.P8245205462324620837

namespace A169969

/-- `a(n-2)-xor(or(2, n-3)-n, a(n-2))` -/
def P8245205462324620837.Spec : Prop :=
  ∀ n, P8245205462324620837.a n = A169969 (n + 1)

end A169969

/-! ## A169969.P16659640620881622943

`or(A001045(A028242(n)), A063759(n))`
-/

namespace A169969.P16659640620881622943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 (A028242 n).toNat) (A063759 n)

end

end A169969.P16659640620881622943

namespace A169969

/-- `or(A001045(A028242(n)), A063759(n))` -/
def P16659640620881622943.Spec : Prop :=
  ∀ n, P16659640620881622943.a n = A169969 (n + 1)

end A169969

/-! ## A169969.P2723124955384632506

`record[A140513(n)-A284130(n+1)]`
-/

namespace A169969.P2723124955384632506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - A284130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169969.P2723124955384632506

namespace A169969

/-- `record[A140513(n)-A284130(n+1)]` -/
def P2723124955384632506.Spec : Prop :=
  ∀ n, P2723124955384632506.a n = A169969 (n + 1)

end A169969

/-! ## A169969.P14267532301197652132

`record[or(1, A191665(n+1))]`
-/

namespace A169969.P14267532301197652132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A191665 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169969.P14267532301197652132

namespace A169969

/-- `record[or(1, A191665(n+1))]` -/
def P14267532301197652132.Spec : Prop :=
  ∀ n, P14267532301197652132.a n = A169969 (n + 1)

end A169969

/-!
# A169973: a(n) = number of ways to write n as a sum of distinct numbers <= n, where the addition is carryless mod 10.

The programs for A169973, there is no canonical definition to state claims against.
-/

/-! ## A169973.P608219743156319673

`A133137(A109070(n+1))`
-/

namespace A169973.P608219743156319673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A109070 (n + 1)).toNat

end

end A169973.P608219743156319673

/-! ## A169973.P8728608176453188054

`A325785(A092483(n+1))`
-/

namespace A169973.P8728608176453188054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325785 (A092483 (n + 1)).toNat

end

end A169973.P8728608176453188054

/-! ## A169973.P10026275654945263002

`A325457(A032162(n+2))`
-/

namespace A169973.P10026275654945263002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (A032162 (n + 2)).toNat

end

end A169973.P10026275654945263002

/-! ## A169973.P2859463412806150097

`A024327(A318231(n+1)+6)`
-/

namespace A169973.P2859463412806150097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A318231 (n + 1) + 6).toNat

end

end A169973.P2859463412806150097

/-! ## A169973.P2361234929295016004

`A135662(A297531(n)+A289597(n))`
-/

namespace A169973.P2361234929295016004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A297531 n + A289597 n).toNat

end

end A169973.P2361234929295016004

/-!
# A169974: Sum_{i=0..n} { 2^C(n,i) } - n.

The programs for A169974, there is no canonical definition to state claims against.
-/

/-! ## A169974.P17290640736404267617

`A306020(n)+1`
-/

namespace A169974.P17290640736404267617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306020 n + 1

end

end A169974.P17290640736404267617

/-! ## A169974.P16183386755620915407

`A001315(n)-n`
-/

namespace A169974.P16183386755620915407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001315 n - (n : ℤ)

end

end A169974.P16183386755620915407

/-! ## A169974.P12904678147931609133

`A302546(n)+2-n`
-/

namespace A169974.P12904678147931609133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302546 n + (2 - (n : ℤ))

end

end A169974.P12904678147931609133

/-! ## A169974.P11101884931566626754

`A001489(n)+A001315(n)`
-/

namespace A169974.P11101884931566626754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A001315 n

end

end A169974.P11101884931566626754

/-! ## A169974.P18211088442025545787

`A024000(n+1)+A001315(n)`
-/

namespace A169974.P18211088442025545787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + A001315 n

end

end A169974.P18211088442025545787

/-!
# A169975: Expansion of Product_{i>=0} (1 + x^(4*i+1)).

The programs for A169975, there is no canonical definition to state claims against.
-/

/-! ## A169975.P15996351539921484527

`abs(A284313(n))`
-/

namespace A169975.P15996351539921484527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284313 n|

end

end A169975.P15996351539921484527

/-! ## A169975.P6472383927063059256

`A033999(n)*A284313(n)`
-/

namespace A169975.P6472383927063059256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284313 n

end

end A169975.P6472383927063059256

/-! ## A169975.P12379840300655621380

`gcd(A000038(n), A284313(n))`
-/

namespace A169975.P12379840300655621380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A284313 n)

end

end A169975.P12379840300655621380

/-! ## A169975.P12035784107551067146

`lcm(A020985(n), A284313(n))`
-/

namespace A169975.P12035784107551067146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A284313 n)

end

end A169975.P12035784107551067146

/-! ## A169975.P1509534376642944911

`A284313(Δ[A004526(n)])*A284313(n)`
-/

namespace A169975.P1509534376642944911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284313 (f1 (n + 1) - f1 n).toNat * A284313 n

end

end A169975.P1509534376642944911

/-! ## A169975.P22929471010852860

`A284313(n)/A284313(Δ[A004526(n)]²)`
-/

namespace A169975.P22929471010852860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284313 n : ℚ) / (A284313 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A169975.P22929471010852860

/-! ## A169975.P8529716894023318070

`∑{d}[A284313(n), A000010(#)]`
-/

namespace A169975.P8529716894023318070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A169975.P8529716894023318070

/-! ## A169975.P17784884564890939508

`A094267(n²)*A284313(n)`
-/

namespace A169975.P17784884564890939508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n ^ 2) * A284313 n

end

end A169975.P17784884564890939508

/-!
# A169976: Expansion of (psi(x)^24 + psi(-x)^24) / 2 in powers of x^2 where psi() is a Ramanujan theta function.

The programs for A169976, there is no canonical definition to state claims against.
-/

/-! ## A169976.P15044048375971620587

`A014809(2*n)`
-/

namespace A169976.P15044048375971620587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014809 (2 * n)

end

end A169976.P15044048375971620587

/-! ## A169976.P738519386535194045

`record[A014809(n)/(-1)^n]`
-/

namespace A169976.P738519386535194045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014809 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169976.P738519386535194045

/-! ## A169976.P6236296265627272234

`record[gcd(A000217(n)%(n+1), A014809(n))]`
-/

namespace A169976.P6236296265627272234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A000217 n) (n + 1 : ℤ)) (A014809 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169976.P6236296265627272234

/-! ## A169976.P1493410466174605612

`A014809(n+n)%A014809(n+1+n)`
-/

namespace A169976.P1493410466174605612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014809 (n + n)) (A014809 (n + 1 + n))

end

end A169976.P1493410466174605612

/-! ## A169976.P4969355443764028326

`A300858(A136019(n+1))+A014809(n+n)`
-/

namespace A169976.P4969355443764028326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (A136019 (n + 1)).toNat + A014809 (n + n)

end

end A169976.P4969355443764028326

/-! ## A169976.P9605635143253544781

`A300858(A136548(n+1))+A014809(n+n)`
-/

namespace A169976.P9605635143253544781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (A136548 (n + 1)).toNat + A014809 (n + n)

end

end A169976.P9605635143253544781

/-!
# A169980: Numerator(Bernoulli(2n)) mod denominator(Bernoulli(2n)).

The programs for A169980, there is no canonical definition to state claims against.
-/

/-! ## A169980.P9413621975047035586

`A158505(A004277(n))%A002445(n)`
-/

namespace A169980.P9413621975047035586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158505 (A004277 n).toNat) (A002445 n)

end

end A169980.P9413621975047035586

/-! ## A169980.P2771706161073297132

`A158505(A005843(n))%A002445(n)`
-/

namespace A169980.P2771706161073297132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158505 (A005843 n).toNat) (A002445 n)

end

end A169980.P2771706161073297132

/-! ## A169980.P11260628698937722291

`(A120081(2*(n+1))+A000367(n))%A002445(n)`
-/

namespace A169980.P11260628698937722291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120081 (2 * (n + 1)) + A000367 n) (A002445 n)

end

end A169980.P11260628698937722291

/-! ## A169980.P12099978668778855875

`(A120087(2*(n+1))+A000367(n))%A002445(n)`
-/

namespace A169980.P12099978668778855875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120087 (2 * (n + 1)) + A000367 n) (A002445 n)

end

end A169980.P12099978668778855875

/-! ## A169980.P15304378187604791097

`A000367(n)-A002445(n)*A134825(n)`
-/

namespace A169980.P15304378187604791097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n - A002445 n * A134825 n

end

end A169980.P15304378187604791097

/-!
# A169981: Positions of records in A175432.

The programs for A169981, there is no canonical definition to state claims against.
-/

/-! ## A169981.P10892418869767370955

`record[A180162(n)%2*A180162(n)]`
-/

namespace A169981.P10892418869767370955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180162 n) 2 * A180162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169981.P10892418869767370955

/-! ## A169981.P4685261396341643396

`record[char[A048947(n+1)]*A180162(n)]`
-/

namespace A169981.P4685261396341643396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048947 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169981.P4685261396341643396

/-! ## A169981.P1383836695304562096

`record[A180162(n+1)^and(1, A180162(n+1))]`
-/

namespace A169981.P1383836695304562096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180162 (n + 1) : ℚ) ^ (Int.land 1 (A180162 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169981.P1383836695304562096

/-! ## A169981.P11834851604091339501

`record[A180162(A048947(n+1)-A025469(n))]`
-/

namespace A169981.P11834851604091339501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180162 (A048947 (n + 1) - A025469 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169981.P11834851604091339501

/-! ## A169981.P18183950202491347785

`record[A180162(A048947(n+1)%A114522(n+1))]`
-/

namespace A169981.P18183950202491347785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180162 (Int.tmod (A048947 (n + 1)) (A114522 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169981.P18183950202491347785

/-! ## A169981.P2301608964486430805

`record[A247956(n)]`
-/

namespace A169981.P2301608964486430805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169981.P2301608964486430805

/-!
# A169982: Maximal number of lunar divisors of any 9-ish number with n digits.

The programs for A169982, there is no canonical definition to state claims against.
-/

/-! ## A169982.P12329355295978677935

`or(floor(6^(n-2))+n+1, 2*n)`
-/

namespace A169982.P12329355295978677935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (⌊(6 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ + (n + 1 : ℤ)) (2 * n : ℤ)

end

end A169982.P12329355295978677935

/-!
# A169983: Number of lunar divisors of the number 999...9 (with n 9's).

The programs for A169983, there is no canonical definition to state claims against.
-/

/-! ## A169983.P18336701383669023282

`A334054(A051603(n))`
-/

namespace A169983.P18336701383669023282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334054 (A051603 n).toNat

end

end A169983.P18336701383669023282

/-! ## A169983.P4644254030287942781

`A267758(A017984(∑[n]))`
-/

namespace A169983.P4644254030287942781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267758 (A017984 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A169983.P4644254030287942781

/-!
# A169984: Primes in carryless arithmetic mod 10 in which all digits except the rightmost are zero or five.

The programs for A169984, there is no canonical definition to state claims against.
-/

/-! ## A169984.P13403382668854009166

`∩[A169887(n+1), A024660(n)]`
-/

namespace A169984.P13403382668854009166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024660 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169984.P13403382668854009166

/-! ## A169984.P2722592384130140273

`∩[A144162(n+1), A169887(n+1)]`
-/

namespace A169984.P2722592384130140273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169984.P2722592384130140273

/-!
# A169985: Round phi^n to the nearest integer.

The programs for A169985, the canonical program `A169985.P13523150891568961358` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169985 has offset 0).

The definition of A169985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169985.P13523150891568961358

`round(ϕ^n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169985

/-- `round(ϕ^n)` -/
def P13523150891568961358.Spec : Prop :=
  ∀ n, P13523150891568961358.a n = A169985 n

theorem P13523150891568961358.correct : P13523150891568961358.Spec := by
  intro n
  simp only [A169985]

end A169985

/-! ## A169985.P12474238764145499422

`floor(cos(1)+ϕ^n)`
-/

namespace A169985.P12474238764145499422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (1 : ℝ) + Real.goldenRatio ^ n⌋

end

end A169985.P12474238764145499422

namespace A169985

/-- `floor(cos(1)+ϕ^n)` -/
def P12474238764145499422.Spec : Prop :=
  ∀ n, P12474238764145499422.a n = A169985 n

end A169985

/-! ## A169985.P14187414169810380681

`ceil(cos(2)+ϕ^n)`
-/

namespace A169985.P14187414169810380681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (2 : ℝ) + Real.goldenRatio ^ n⌉

end

end A169985.P14187414169810380681

namespace A169985

/-- `ceil(cos(2)+ϕ^n)` -/
def P14187414169810380681.Spec : Prop :=
  ∀ n, P14187414169810380681.a n = A169985 n

end A169985

/-! ## A169985.P10668182097410948268

`ceil(ϕ^n-cos(1))`
-/

namespace A169985.P10668182097410948268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ n - Real.cos (1 : ℝ)⌉

end

end A169985.P10668182097410948268

namespace A169985

/-- `ceil(ϕ^n-cos(1))` -/
def P10668182097410948268.Spec : Prop :=
  ∀ n, P10668182097410948268.a n = A169985 n

end A169985

/-! ## A169985.P8816178891505383084

`floor(ϕ^n-cos(2))`
-/

namespace A169985.P8816178891505383084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n - Real.cos (2 : ℝ)⌋

end

end A169985.P8816178891505383084

namespace A169985

/-- `floor(ϕ^n-cos(2))` -/
def P8816178891505383084.Spec : Prop :=
  ∀ n, P8816178891505383084.a n = A169985 n

end A169985

/-! ## A169985.P16749879277215466075

`floor(ϕ^n-sin(4))`
-/

namespace A169985.P16749879277215466075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n - Real.sin (4 : ℝ)⌋

end

end A169985.P16749879277215466075

namespace A169985

/-- `floor(ϕ^n-sin(4))` -/
def P16749879277215466075.Spec : Prop :=
  ∀ n, P16749879277215466075.a n = A169985 n

end A169985

/-! ## A169985.P11607552878622097486

`ceil(sin(6)+ϕ^n)`
-/

namespace A169985.P11607552878622097486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (6 : ℝ) + Real.goldenRatio ^ n⌉

end

end A169985.P11607552878622097486

namespace A169985

/-- `ceil(sin(6)+ϕ^n)` -/
def P11607552878622097486.Spec : Prop :=
  ∀ n, P11607552878622097486.a n = A169985 n

end A169985

/-! ## A169985.P6503987669791958708

`floor(sin(7)+ϕ^n)`
-/

namespace A169985.P6503987669791958708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (7 : ℝ) + Real.goldenRatio ^ n⌋

end

end A169985.P6503987669791958708

namespace A169985

/-- `floor(sin(7)+ϕ^n)` -/
def P6503987669791958708.Spec : Prop :=
  ∀ n, P6503987669791958708.a n = A169985 n

end A169985

/-! ## A169985.P14548966645896689750

`floor(tanh(1)+ϕ^n)`
-/

namespace A169985.P14548966645896689750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (1 : ℝ) + Real.goldenRatio ^ n⌋

end

end A169985.P14548966645896689750

namespace A169985

/-- `floor(tanh(1)+ϕ^n)` -/
def P14548966645896689750.Spec : Prop :=
  ∀ n, P14548966645896689750.a n = A169985 n

end A169985

/-! ## A169985.P2722094069418260140

`ceil(tan(6)+ϕ^n)`
-/

namespace A169985.P2722094069418260140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (6 : ℝ) + Real.goldenRatio ^ n⌉

end

end A169985.P2722094069418260140

namespace A169985

/-- `ceil(tan(6)+ϕ^n)` -/
def P2722094069418260140.Spec : Prop :=
  ∀ n, P2722094069418260140.a n = A169985 n

end A169985

/-! ## A169985.P82103457953314326

`floor(cot(1)+ϕ^n)`
-/

namespace A169985.P82103457953314326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (1 : ℝ) + Real.goldenRatio ^ n⌋

end

end A169985.P82103457953314326

namespace A169985

/-- `floor(cot(1)+ϕ^n)` -/
def P82103457953314326.Spec : Prop :=
  ∀ n, P82103457953314326.a n = A169985 n

end A169985

/-! ## A169985.P1524625348842821926

`ceil(cot(2)+ϕ^n)`
-/

namespace A169985.P1524625348842821926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 : ℝ) + Real.goldenRatio ^ n⌉

end

end A169985.P1524625348842821926

namespace A169985

/-- `ceil(cot(2)+ϕ^n)` -/
def P1524625348842821926.Spec : Prop :=
  ∀ n, P1524625348842821926.a n = A169985 n

end A169985

/-! ## A169985.P10240384440300648172

`floor(acot(2)+ϕ^n)`
-/

namespace A169985.P10240384440300648172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (2 : ℝ) + Real.goldenRatio ^ n⌋

end

end A169985.P10240384440300648172

namespace A169985

/-- `floor(acot(2)+ϕ^n)` -/
def P10240384440300648172.Spec : Prop :=
  ∀ n, P10240384440300648172.a n = A169985 n

end A169985

/-! ## A169985.P1067898038215012221

`floor(tan(10)+ϕ^n)`
-/

namespace A169985.P1067898038215012221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (10 : ℝ) + Real.goldenRatio ^ n⌋

end

end A169985.P1067898038215012221

namespace A169985

/-- `floor(tan(10)+ϕ^n)` -/
def P1067898038215012221.Spec : Prop :=
  ∀ n, P1067898038215012221.a n = A169985 n

end A169985

/-! ## A169985.P18050090397185816851

`floor(ϕ^n-cot(2))`
-/

namespace A169985.P18050090397185816851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n - Real.cot (2 : ℝ)⌋

end

end A169985.P18050090397185816851

namespace A169985

/-- `floor(ϕ^n-cot(2))` -/
def P18050090397185816851.Spec : Prop :=
  ∀ n, P18050090397185816851.a n = A169985 n

end A169985

/-! ## A169985.P832995471211490877

`ceil(ϕ^n-sin(9))`
-/

namespace A169985.P832995471211490877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ n - Real.sin (9 : ℝ)⌉

end

end A169985.P832995471211490877

namespace A169985

/-- `ceil(ϕ^n-sin(9))` -/
def P832995471211490877.Spec : Prop :=
  ∀ n, P832995471211490877.a n = A169985 n

end A169985

/-! ## A169985.P4591448580659155232

`floor(ϕ^n-tan(9))`
-/

namespace A169985.P4591448580659155232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n - Real.tan (9 : ℝ)⌋

end

end A169985.P4591448580659155232

namespace A169985

/-- `floor(ϕ^n-tan(9))` -/
def P4591448580659155232.Spec : Prop :=
  ∀ n, P4591448580659155232.a n = A169985 n

end A169985

/-! ## A169985.P13396774816884758506

`ceil(ϕ^n-acot(2))`
-/

namespace A169985.P13396774816884758506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ n - SequenceMachineLib.acot (2 : ℝ)⌉

end

end A169985.P13396774816884758506

namespace A169985

/-- `ceil(ϕ^n-acot(2))` -/
def P13396774816884758506.Spec : Prop :=
  ∀ n, P13396774816884758506.a n = A169985 n

end A169985

/-! ## A169985.P6149354836751180711

`ogf((1+x-x^3)/(1-x-x^2))`
-/

namespace A169985.P6149354836751180711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -1] [1, -1, -1] n

end

end A169985.P6149354836751180711

namespace A169985

/-- `ogf((1+x-x^3)/(1-x-x^2))` -/
def P6149354836751180711.Spec : Prop :=
  ∀ n, P6149354836751180711.a n = A169985 n

end A169985

/-! ## A169985.P5106504620447087170

`floor(∑[ϕ*a(n-1)])` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A169985.P5106504620447087170
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  Real.goldenRatio * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A169985.P5106504620447087170

namespace A169985

/-- `floor(∑[ϕ*a(n-1)])` -/
def P5106504620447087170.Spec : Prop :=
  ∀ n, P5106504620447087170.a n = A169985 n

end A169985

/-!
# A169986: Ceiling(phi^n) where phi = (1+sqrt(5))/2.

The programs for A169986, the canonical program `A169986.P10622536737824008834` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169986 has offset 0).

The definition of A169986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169986.P10622536737824008834

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169986

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P10622536737824008834.Spec : Prop :=
  ∀ n, P10622536737824008834.a n = A169986 n

theorem P10622536737824008834.correct : P10622536737824008834.Spec := by
  intro n
  simp only [A169986]

end A169986

/-! ## A169986.P14426136549191073231

`round(a(n-2)+ϕ^(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A169986.P14426136549191073231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) + Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ))

end

end A169986.P14426136549191073231

namespace A169986

/-- `round(a(n-2)+ϕ^(n-1))` -/
def P14426136549191073231.Spec : Prop :=
  ∀ n, P14426136549191073231.a n = A169986 n

end A169986

/-! ## A169986.P17113399108476389701

`a(n-1)+a(n-2)-(n+1)%2` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A169986.P17113399108476389701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + (a (n - 2) - (((n + 1) % 2 : ℕ) : ℤ))

end

end A169986.P17113399108476389701

namespace A169986

/-- `a(n-1)+a(n-2)-(n+1)%2` -/
def P17113399108476389701.Spec : Prop :=
  ∀ n, P17113399108476389701.a n = A169986 n

end A169986

/-! ## A169986.P14216448497095523139

`char[3]+2*a(n-2)+a(n-3)-1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A169986.P14216448497095523139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (2 * a (n - 2) + (a (n - 3) - 1))

end

end A169986.P14216448497095523139

namespace A169986

/-- `char[3]+2*a(n-2)+a(n-3)-1` -/
def P14216448497095523139.Spec : Prop :=
  ∀ n, P14216448497095523139.a n = A169986 n

end A169986

/-! ## A169986.P13728581681498567166

`A254729(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A169986.P13728581681498567166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A254729 n + a (n - 2)

end

end A169986.P13728581681498567166

namespace A169986

/-- `A254729(n)+a(n-2)` -/
def P13728581681498567166.Spec : Prop :=
  ∀ n, P13728581681498567166.a n = A169986 n

end A169986

/-! ## A169986.P7693707590750087359

`A181716(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A169986.P7693707590750087359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A181716 (n - 1) + a (n - 1)

end

end A169986.P7693707590750087359

namespace A169986

/-- `A181716(n-1)+a(n-1)` -/
def P7693707590750087359.Spec : Prop :=
  ∀ n, P7693707590750087359.a n = A169986 n

end A169986

/-! ## A169986.P7978911402605775695

`A098600(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A169986.P7978911402605775695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A098600 (n - 2) + a (n - 1)

end

end A169986.P7978911402605775695

namespace A169986

/-- `A098600(n-2)+a(n-1)` -/
def P7978911402605775695.Spec : Prop :=
  ∀ n, P7978911402605775695.a n = A169986 n

end A169986

/-! ## A169986.P18373672900755018362

`A000032(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A169986.P18373672900755018362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A000032 (n - 1) + a (n - 2)

end

end A169986.P18373672900755018362

namespace A169986

/-- `A000032(n-1)+a(n-2)` -/
def P18373672900755018362.Spec : Prop :=
  ∀ n, P18373672900755018362.a n = A169986 n

end A169986

/-! ## A169986.P2994195844122791115

`A040001(n)+A001350(n)`
-/

namespace A169986.P2994195844122791115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + A001350 n

end

end A169986.P2994195844122791115

namespace A169986

/-- `A040001(n)+A001350(n)` -/
def P2994195844122791115.Spec : Prop :=
  ∀ n, P2994195844122791115.a n = A169986 n

end A169986

/-! ## A169986.P4932127657522773502

`A057427(n)+A014217(n)`
-/

namespace A169986.P4932127657522773502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A014217 n

end

end A169986.P4932127657522773502

namespace A169986

/-- `A057427(n)+A014217(n)` -/
def P4932127657522773502.Spec : Prop :=
  ∀ n, P4932127657522773502.a n = A169986 n

end A169986

/-! ## A169986.P16110496919982292059

`A109522(n)+A006355(n)`
-/

namespace A169986.P16110496919982292059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 n + A006355 n

end

end A169986.P16110496919982292059

namespace A169986

/-- `A109522(n)+A006355(n)` -/
def P16110496919982292059.Spec : Prop :=
  ∀ n, P16110496919982292059.a n = A169986 n

end A169986

/-! ## A169986.P3932743401236379678

`A062724(n)-A000007(n)`
-/

namespace A169986.P3932743401236379678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 n - A000007 n

end

end A169986.P3932743401236379678

namespace A169986

/-- `A062724(n)-A000007(n)` -/
def P3932743401236379678.Spec : Prop :=
  ∀ n, P3932743401236379678.a n = A169986 n

end A169986

/-! ## A169986.P5835043347519496597

`A014217(n)-A057428(n)`
-/

namespace A169986.P5835043347519496597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n - A057428 n

end

end A169986.P5835043347519496597

namespace A169986

/-- `A014217(n)-A057428(n)` -/
def P5835043347519496597.Spec : Prop :=
  ∀ n, P5835043347519496597.a n = A169986 n

end A169986

/-! ## A169986.P4846508849277037129

`A062724(n)/A054977(n)`
-/

namespace A169986.P4846508849277037129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062724 n : ℚ) / (A054977 n : ℚ)

end

end A169986.P4846508849277037129

namespace A169986

/-- `A062724(n)/A054977(n)` -/
def P4846508849277037129.Spec : Prop :=
  ∀ n, P4846508849277037129.a n = (A169986 n : ℚ)

end A169986

/-! ## A169986.P14596628516572318155

`A000032(n)+Δ[A123108(n)]`
-/

namespace A169986.P14596628516572318155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (f1 (n + 1) - f1 n)

end

end A169986.P14596628516572318155

namespace A169986

/-- `A000032(n)+Δ[A123108(n)]` -/
def P14596628516572318155.Spec : Prop :=
  ∀ n, P14596628516572318155.a n = A169986 n

end A169986

/-! ## A169986.P11783454858328202953

`A014217(n)+1-A000007(n)`
-/

namespace A169986.P11783454858328202953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n + (1 - A000007 n)

end

end A169986.P11783454858328202953

namespace A169986

/-- `A014217(n)+1-A000007(n)` -/
def P11783454858328202953.Spec : Prop :=
  ∀ n, P11783454858328202953.a n = A169986 n

end A169986

/-! ## A169986.P5533472114514233396

`A020878(n)-A135528(n+1)`
-/

namespace A169986.P5533472114514233396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020878 n - A135528 (n + 1)

end

end A169986.P5533472114514233396

namespace A169986

/-- `A020878(n)-A135528(n+1)` -/
def P5533472114514233396.Spec : Prop :=
  ∀ n, P5533472114514233396.a n = A169986 n

end A169986

/-! ## A169986.P14954160181554977428

`A000032(A028310(n))+and(1, n)`
-/

namespace A169986.P14954160181554977428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A028310 n).toNat + (Nat.land 1 n : ℤ)

end

end A169986.P14954160181554977428

namespace A169986

/-- `A000032(A028310(n))+and(1, n)` -/
def P14954160181554977428.Spec : Prop :=
  ∀ n, P14954160181554977428.a n = A169986 n

end A169986

/-! ## A169986.P7708137960380727162

`A000032(n)-floor(1/A083365(n))`
-/

namespace A169986.P7708137960380727162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - ⌊1 / (A083365 n : ℚ)⌋

end

end A169986.P7708137960380727162

namespace A169986

/-- `A000032(n)-floor(1/A083365(n))` -/
def P7708137960380727162.Spec : Prop :=
  ∀ n, P7708137960380727162.a n = A169986 n

end A169986

/-! ## A169986.P2045799602573256566

`A062724(n)-char[A274756(n+1)]`
-/

namespace A169986.P2045799602573256566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274756 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A169986.P2045799602573256566

namespace A169986

/-- `A062724(n)-char[A274756(n+1)]` -/
def P2045799602573256566.Spec : Prop :=
  ∀ n, P2045799602573256566.a n = A169986 n

end A169986

/-!
# A169988: Expansion of Product_{i=0..m-1} (1 + x^(2*i+1)) for m=5.

The programs for A169988, there is no canonical definition to state claims against.
-/

/-! ## A169988.P16080091650854772223

`(A102422(n)-3)%2+1`
-/

namespace A169988.P16080091650854772223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102422 n - 3) 2 + 1

end

end A169988.P16080091650854772223

/-! ## A169988.P17346872069668099860

`A000700(n)-A064459(∑[A005044(n)])`
-/

namespace A169988.P17346872069668099860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A064459 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A169988.P17346872069668099860

/-! ## A169988.P14036857841847842580

`A027356(A052905(n+9)-A004273(n+4))`
-/

namespace A169988.P14036857841847842580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A052905 (n + 9) - A004273 (n + 4)).toNat

end

end A169988.P14036857841847842580

/-!
# A169989: Expansion of Product_{i=0..m-1} 1 + x^(2*i+1) for m=6.

The programs for A169989, there is no canonical definition to state claims against.
-/

/-! ## A169989.P10456543053041602140

`A027356(A000217(n+12)+13)`
-/

namespace A169989.P10456543053041602140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A000217 (n + 12) + 13).toNat

end

end A169989.P10456543053041602140

/-! ## A169989.P16909981472342781703

`A178687(abs(1-n))+A178687(n)`
-/

namespace A169989.P16909981472342781703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178687 |1 - (n : ℤ)|.toNat + A178687 n

end

end A169989.P16909981472342781703

/-!
# A169990: Expansion of Product_{i=0..m-1} (1 + x^(2*i+1)) for m=7.

The programs for A169990, there is no canonical definition to state claims against.
-/

/-! ## A169990.P17848461496278104548

`A027356(A167499(n+13)+10)`
-/

namespace A169990.P17848461496278104548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A167499 (n + 13) + 10).toNat

end

end A169990.P17848461496278104548

/-! ## A169990.P4776829275385928891

`A178691(abs(1-n))+A178691(n)`
-/

namespace A169990.P4776829275385928891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 |1 - (n : ℤ)|.toNat + A178691 n

end

end A169990.P4776829275385928891

/-!
# A169991: Expansion of Product_{i=0..m-1} (1 + x^(2*i+1)) for m=8.

The programs for A169991, there is no canonical definition to state claims against.
-/

/-! ## A169991.P6578927482267444916

`A178692(abs(1-n))+A178692(n)`
-/

namespace A169991.P6578927482267444916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178692 |1 - (n : ℤ)|.toNat + A178692 n

end

end A169991.P6578927482267444916

/-!
# A169992: Expansion of Product_{i=0..m-1} (1 + x^(2*i+1)) for m=9.

The programs for A169992, there is no canonical definition to state claims against.
-/

/-! ## A169992.P4375956654566863489

`A178695(abs(1-n))+A178695(n)`
-/

namespace A169992.P4375956654566863489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178695 |1 - (n : ℤ)|.toNat + A178695 n

end

end A169992.P4375956654566863489

/-! ## A169992.P15500950732486241871

`A000700(n)-A010888(A034487(2*n+1))`
-/

namespace A169992.P15500950732486241871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A010888 (A034487 (2 * n + 1)).toNat

end

end A169992.P15500950732486241871

/-!
# A169993: Expansion of Product_{i=0..m-1} (1 + x^(2*i+1)) for m=10.

The programs for A169993, there is no canonical definition to state claims against.
-/

/-! ## A169993.P2296224241472858016

`A178696(abs(1-n))+A178696(n)`
-/

namespace A169993.P2296224241472858016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178696 |1 - (n : ℤ)|.toNat + A178696 n

end

end A169993.P2296224241472858016

/-! ## A169993.P12548404380394916312

`A322358(A110682(n))+A265359(A169995(n))`
-/

namespace A169993.P12548404380394916312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A110682 n).toNat + A265359 (A169995 n).toNat

end

end A169993.P12548404380394916312

/-! ## A169993.P6940501578205459892

`A265359(A000700(n))%A335463(2*n+3)`
-/

namespace A169993.P6940501578205459892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265359 (A000700 n).toNat) (A335463 (2 * n + 3))

end

end A169993.P6940501578205459892

/-! ## A169993.P12120482635651486390

`A265359(A169995(n))+A161130(A322308(n))`
-/

namespace A169993.P12120482635651486390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A169995 n).toNat + A161130 (A322308 n).toNat

end

end A169993.P12120482635651486390

/-!
# A169994: Expansion of Product_{i=0..m-1} (1 + x^(2*i+1)) for m=11.

The programs for A169994, there is no canonical definition to state claims against.
-/

/-! ## A169994.P12099225241779524361

`A178697(abs(1-n))+A178697(n)`
-/

namespace A169994.P12099225241779524361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178697 |1 - (n : ℤ)|.toNat + A178697 n

end

end A169994.P12099225241779524361

/-! ## A169994.P12081227316486494788

`A000700(n)+∑[A178798(A239239(n))]`
-/

namespace A169994.P12081227316486494788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A239239 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169994.P12081227316486494788

/-! ## A169994.P14882639594642964987

`A000700(n)-A010054(A079735(n+3))`
-/

namespace A169994.P14882639594642964987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A010054 (A079735 (n + 3)).toNat

end

end A169994.P14882639594642964987

/-!
# A169995: Expansion of Product_{i=0..m-1} (1 + x^(2*i+1)) for m=12.

The programs for A169995, there is no canonical definition to state claims against.
-/

/-! ## A169995.P1537457484948465209

`A000700(n)-A178226(A322308(n))`
-/

namespace A169995.P1537457484948465209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A178226 (A322308 n).toNat

end

end A169995.P1537457484948465209

/-! ## A169995.P8383264988816468630

`A000700(n)-A327222(A185037(n))`
-/

namespace A169995.P8383264988816468630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A327222 (A185037 n).toNat

end

end A169995.P8383264988816468630

/-! ## A169995.P782182731749122432

`abs(A081362(n))-A178226(A322308(n))`
-/

namespace A169995.P782182731749122432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 n| - A178226 (A322308 n).toNat

end

end A169995.P782182731749122432

/-! ## A169995.P5259192837347655052

`abs(A081362(n))-A327222(A185037(n))`
-/

namespace A169995.P5259192837347655052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 n| - A327222 (A185037 n).toNat

end

end A169995.P5259192837347655052

/-! ## A169995.P6687850003301355948

`A000700(n)-∑[A102683(A339502(n+3))]`
-/

namespace A169995.P6687850003301355948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A339502 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169995.P6687850003301355948

/-!
# A169998: a(0)=1, a(1)=1; thereafter a(n) = -a(n-1) - 2*a(n-2).

The programs for A169998, the canonical program `A169998.P15842103652807418110` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169998 has offset 0).

The definition of A169998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)-2*a(n-2)` (program `A169998.P15842103652807418110`, by `A169998.P15842103652807418110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169998.P15842103652807418110

`-a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169998

/-- `-a(n-1)-2*a(n-2)` -/
def P15842103652807418110.Spec : Prop :=
  ∀ n, P15842103652807418110.a n = A169998 n

theorem P15842103652807418110.correct : P15842103652807418110.Spec := by
  intro n
  simp only [A169998]

end A169998

/-! ## A169998.P16595497646171403574

`ogf((1+2x)/(1+x+2x^2))`
-/

namespace A169998.P16595497646171403574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 1, 2] n

end

end A169998.P16595497646171403574

namespace A169998

/-- `ogf((1+2x)/(1+x+2x^2))` -/
def P16595497646171403574.Spec : Prop :=
  ∀ n, P16595497646171403574.a n = A169998 n

end A169998

/-! ## A169998.P1107995980285977694

`2*a(n-3)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=-3`
-/

namespace A169998.P1107995980285977694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -3] fun n a =>
  2 * a (n - 3) - a (n - 2)

end

end A169998.P1107995980285977694

namespace A169998

/-- `2*a(n-3)-a(n-2)` -/
def P1107995980285977694.Spec : Prop :=
  ∀ n, P1107995980285977694.a n = A169998 n

end A169998

/-! ## A169998.P1801173114254477816

`a(n-2)/(1/2-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A169998.P1801173114254477816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2 - 1) - a (n - 1)

end

end A169998.P1801173114254477816

namespace A169998

/-- `a(n-2)/(1/2-1)-a(n-1)` -/
def P1801173114254477816.Spec : Prop :=
  ∀ n, P1801173114254477816.a n = (A169998 n : ℚ)

end A169998

/-! ## A169998.P9507444591083054115

`-(a(n-2)+a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A169998.P9507444591083054115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -(a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A169998.P9507444591083054115

namespace A169998

/-- `-(a(n-2)+a(n-1)+a(n-2))` -/
def P9507444591083054115.Spec : Prop :=
  ∀ n, P9507444591083054115.a n = A169998 n

end A169998

/-! ## A169998.P9074693500099939536

`a(n-3)+a(n-3)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=-3`
-/

namespace A169998.P9074693500099939536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -3] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 2))

end

end A169998.P9074693500099939536

namespace A169998

/-- `a(n-3)+a(n-3)-a(n-2)` -/
def P9074693500099939536.Spec : Prop :=
  ∀ n, P9074693500099939536.a n = A169998 n

end A169998

/-! ## A169998.P1349731421717598260

`floor(a(n-3)-(a(n-2)-a(n-3)))` with `a(0)=1, a(1)=1, a(2)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A169998.P1349731421717598260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -3] fun n a =>
  a (n - 3) - (a (n - 2) - a (n - 3))

end

end A169998.P1349731421717598260

namespace A169998

/-- `floor(a(n-3)-(a(n-2)-a(n-3)))` -/
def P1349731421717598260.Spec : Prop :=
  ∀ n, P1349731421717598260.a n = A169998 n

end A169998

/-! ## A169998.P17976668573762571631

`Δ[-A077912(n)]`
-/

namespace A169998.P17976668573762571631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169998.P17976668573762571631

namespace A169998

/-- `Δ[-A077912(n)]` -/
def P17976668573762571631.Spec : Prop :=
  ∀ n, P17976668573762571631.a n = A169998 n

end A169998

/-! ## A169998.P3034147150104390920

`-A001607(n+2)`
-/

namespace A169998.P3034147150104390920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001607 (n + 2)

end

end A169998.P3034147150104390920

namespace A169998

/-- `-A001607(n+2)` -/
def P3034147150104390920.Spec : Prop :=
  ∀ n, P3034147150104390920.a n = A169998 n

end A169998

/-! ## A169998.P9406376019617087526

`A110512(n+3)/2`
-/

namespace A169998.P9406376019617087526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110512 (n + 3) : ℚ) / 2

end

end A169998.P9406376019617087526

namespace A169998

/-- `A110512(n+3)/2` -/
def P9406376019617087526.Spec : Prop :=
  ∀ n, P9406376019617087526.a n = (A169998 n : ℚ)

end A169998

/-! ## A169998.P10396184459854677963

`∑[2*A110512(n)]-1`
-/

namespace A169998.P10396184459854677963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A169998.P10396184459854677963

namespace A169998

/-- `∑[2*A110512(n)]-1` -/
def P10396184459854677963.Spec : Prop :=
  ∀ n, P10396184459854677963.a n = A169998 n

end A169998

/-! ## A169998.P6828717207717135779

`A110512(n)+A001607(n)`
-/

namespace A169998.P6828717207717135779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n + A001607 n

end

end A169998.P6828717207717135779

namespace A169998

/-- `A110512(n)+A001607(n)` -/
def P6828717207717135779.Spec : Prop :=
  ∀ n, P6828717207717135779.a n = A169998 n

end A169998

/-! ## A169998.P1163232277765482246

`A077912(n)-Δ[A077887(n)]`
-/

namespace A169998.P1163232277765482246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077912 n - (f1 (n + 1) - f1 n)

end

end A169998.P1163232277765482246

namespace A169998

/-- `A077912(n)-Δ[A077887(n)]` -/
def P1163232277765482246.Spec : Prop :=
  ∀ n, P1163232277765482246.a n = A169998 n

end A169998

/-! ## A169998.P16703281820424047925

`A077912(n)-A077912(n+1)`
-/

namespace A169998.P16703281820424047925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077912 n - A077912 (n + 1)

end

end A169998.P16703281820424047925

namespace A169998

/-- `A077912(n)-A077912(n+1)` -/
def P16703281820424047925.Spec : Prop :=
  ∀ n, P16703281820424047925.a n = A169998 n

end A169998

/-! ## A169998.P7676961742361704496

`A033999(n)*A107920(n+2)`
-/

namespace A169998.P7676961742361704496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A107920 (n + 2)

end

end A169998.P7676961742361704496

namespace A169998

/-- `A033999(n)*A107920(n+2)` -/
def P7676961742361704496.Spec : Prop :=
  ∀ n, P7676961742361704496.a n = A169998 n

end A169998

/-! ## A169998.P11979633721584228930

`∑[(A057427(n)+1)*A110512(n)]`
-/

namespace A169998.P11979633721584228930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A110512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169998.P11979633721584228930

namespace A169998

/-- `∑[(A057427(n)+1)*A110512(n)]` -/
def P11979633721584228930.Spec : Prop :=
  ∀ n, P11979633721584228930.a n = A169998 n

end A169998

/-! ## A169998.P2395359746068740601

`A000007(n+1)-A001607(n+2)`
-/

namespace A169998.P2395359746068740601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A001607 (n + 2)

end

end A169998.P2395359746068740601

namespace A169998

/-- `A000007(n+1)-A001607(n+2)` -/
def P2395359746068740601.Spec : Prop :=
  ∀ n, P2395359746068740601.a n = A169998 n

end A169998

/-! ## A169998.P1603125837482049149

`A001607(n+1)+2*A001607(n)`
-/

namespace A169998.P1603125837482049149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (n + 1) + 2 * A001607 n

end

end A169998.P1603125837482049149

namespace A169998

/-- `A001607(n+1)+2*A001607(n)` -/
def P1603125837482049149.Spec : Prop :=
  ∀ n, P1603125837482049149.a n = A169998 n

end A169998

/-! ## A169998.P11751603268091205395

`∑[A110512(n)+A110512(A000007(n)+n)]`
-/

namespace A169998.P11751603268091205395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n + A110512 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169998.P11751603268091205395

namespace A169998

/-- `∑[A110512(n)+A110512(A000007(n)+n)]` -/
def P11751603268091205395.Spec : Prop :=
  ∀ n, P11751603268091205395.a n = A169998 n

end A169998

/-! ## A169998.P11389171573283778859

`a(n-1)-A078050(n+1)` with `a(0)=1`
-/

namespace A169998.P11389171573283778859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A078050 (n + 1)

end

end A169998.P11389171573283778859

namespace A169998

/-- `a(n-1)-A078050(n+1)` -/
def P11389171573283778859.Spec : Prop :=
  ∀ n, P11389171573283778859.a n = A169998 n

end A169998

/-!
# A169999: Carryless product n X n in base 3.

The programs for A169999, there is no canonical definition to state claims against.
-/

/-! ## A169999.P9940426432854247752

`A325820(∑[4*n])`
-/

namespace A169999.P9940426432854247752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A169999.P9940426432854247752

/-! ## A169999.P8310180922508007888

`or(char[1], A325820(2*(n²+n)))`
-/

namespace A169999.P8310180922508007888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A325820 (2 * (n ^ 2 + n)))

end

end A169999.P8310180922508007888

/-! ## A169999.P3407351173947355073

`A330740(A325820((n+1)*2*n))`
-/

namespace A169999.P3407351173947355073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 (A325820 ((n + 1) * (2 * n))).toNat

end

end A169999.P3407351173947355073

/-! ## A169999.P17388983376563422815

`A325820(2*(n²+n))%A000032(n+2)`
-/

namespace A169999.P17388983376563422815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325820 (2 * (n ^ 2 + n))) (A000032 (n + 2))

end

end A169999.P17388983376563422815

/-! ## A169999.P17178413315021847158

`A007318(C(2, n))*A325820(2*(n²+n))`
-/

namespace A169999.P17178413315021847158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A325820 (2 * (n ^ 2 + n))

end

end A169999.P17178413315021847158

/-! ## A169999.P2675644186167622397

`A325820(2*(n²+n))^A000108(C(2, n))`
-/

namespace A169999.P2675644186167622397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325820 (2 * (n ^ 2 + n)) : ℚ) ^ (A000108 (Nat.choose 2 n) : ℤ)

end

end A169999.P2675644186167622397

/-! ## A169999.P8922560932963133325

`A325820(2*(n²+n))+char[A000041(n+16)]`
-/

namespace A169999.P8922560932963133325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 16)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (2 * (n ^ 2 + n)) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A169999.P8922560932963133325

/-! ## A169999.P18219511528473880565

`A325820(2*(n²+n))/A014963(12*(n+1))`
-/

namespace A169999.P18219511528473880565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325820 (2 * (n ^ 2 + n)) : ℚ) / (A014963 (12 * (n + 1)) : ℚ)

end

end A169999.P18219511528473880565

/-! ## A169999.P6499766263955655348

`A000041(C(2, n+2))*A325820(2*(n²+n))`
-/

namespace A169999.P6499766263955655348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A325820 (2 * (n ^ 2 + n))

end

end A169999.P6499766263955655348

/-! ## A169999.P5476932635868128148

`A000108(C(2, n+2))*A325820(2*(n²+n))`
-/

namespace A169999.P5476932635868128148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A325820 (2 * (n ^ 2 + n))

end

end A169999.P5476932635868128148

