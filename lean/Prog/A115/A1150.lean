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
import Seq.B000.C014
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
import Seq.B000.C039
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A115000: a(n) = J_2(n) / 24.

The programs for A115000, the canonical program `A115000.P14466011705002378707` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115000 has offset 5).

The definition of A115000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115000.P14466011705002378707

`Δ[A115001(n+4)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A115000

/-- `Δ[A115001(n+4)]` -/
def P14466011705002378707.Spec : Prop :=
  ∀ n, P14466011705002378707.a n = A115000 (n + 5)

theorem P14466011705002378707.correct : P14466011705002378707.Spec := by
  intro n
  simp only [A115000, Nat.add_sub_cancel]

end A115000

/-! ## A115000.P12821050275894064997

`A115001(n+5)-A115001(n+4)`
-/

namespace A115000.P12821050275894064997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115001 (n + 5) - A115001 (n + 4)

end

end A115000.P12821050275894064997

namespace A115000

/-- `A115001(n+5)-A115001(n+4)` -/
def P12821050275894064997.Spec : Prop :=
  ∀ n, P12821050275894064997.a n = A115000 (n + 5)

theorem P12821050275894064997.correct : P12821050275894064997.Spec := by
  intro n
  simp only [A115000, Nat.add_sub_cancel, A115000.P12821050275894064997.a, A115000.P14466011705002378707.f1, A115000.P14466011705002378707.a, SequenceMachineLib.memo_apply]

end A115000

/-! ## A115000.P4690759556757149065

`A023023(n+5)/2`
-/

namespace A115000.P4690759556757149065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023023 (n + 5) : ℚ) / 2

end

end A115000.P4690759556757149065

namespace A115000

/-- `A023023(n+5)/2` -/
def P4690759556757149065.Spec : Prop :=
  ∀ n, P4690759556757149065.a n = (A115000 (n + 5) : ℚ)

end A115000

/-! ## A115000.P16307526041456559202

`A002348(n+5)/A010702(n)`
-/

namespace A115000.P16307526041456559202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002348 (n + 5) : ℚ) / (A010702 n : ℚ)

end

end A115000.P16307526041456559202

namespace A115000

/-- `A002348(n+5)/A010702(n)` -/
def P16307526041456559202.Spec : Prop :=
  ∀ n, P16307526041456559202.a n = (A115000 (n + 5) : ℚ)

end A115000

/-! ## A115000.P13459777609130818211

`A007434(n+5)/24`
-/

namespace A115000.P13459777609130818211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 5) : ℚ) / 24

end

end A115000.P13459777609130818211

namespace A115000

/-- `A007434(n+5)/24` -/
def P13459777609130818211.Spec : Prop :=
  ∀ n, P13459777609130818211.a n = (A115000 (n + 5) : ℚ)

end A115000

/-! ## A115000.P3002856071957700583

`A000056(n+5)/Δ[A056107(2*n+9)]`
-/

namespace A115000.P3002856071957700583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 (2 * n + 9)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 5) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A115000.P3002856071957700583

namespace A115000

/-- `A000056(n+5)/Δ[A056107(2*n+9)]` -/
def P3002856071957700583.Spec : Prop :=
  ∀ n, P3002856071957700583.a n = (A115000 (n + 5) : ℚ)

end A115000

/-! ## A115000.P15306574675452464697

`A004525(A023023(n+5))`
-/

namespace A115000.P15306574675452464697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A023023 (n + 5)).toNat

end

end A115000.P15306574675452464697

namespace A115000

/-- `A004525(A023023(n+5))` -/
def P15306574675452464697.Spec : Prop :=
  ∀ n, P15306574675452464697.a n = A115000 (n + 5)

end A115000

/-! ## A115000.P3869998476310512263

`A004526(A023023(n+5)+1)`
-/

namespace A115000.P3869998476310512263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A023023 (n + 5) + 1).toNat

end

end A115000.P3869998476310512263

namespace A115000

/-- `A004526(A023023(n+5)+1)` -/
def P3869998476310512263.Spec : Prop :=
  ∀ n, P3869998476310512263.a n = A115000 (n + 5)

end A115000

/-!
# A115001: a(n) = Sum_{k=1..n} J_2(k)/24.

The programs for A115001, the canonical program `A115001.P8944325379710931620` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115001 has offset 4).

The definition of A115001 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321879, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115001.P8944325379710931620

`A321879(n+4)/24`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A115001

/-- `A321879(n+4)/24` -/
def P8944325379710931620.Spec : Prop :=
  ∀ n, P8944325379710931620.a n = (A115001 (n + 4) : ℚ)

end A115001

/-! ## A115001.P7202434355261804190

`∑[ceil(A023023(n+4)/2)]`
-/

namespace A115001.P7202434355261804190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023023 (n + 4) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115001.P7202434355261804190

namespace A115001

/-- `∑[ceil(A023023(n+4)/2)]` -/
def P7202434355261804190.Spec : Prop :=
  ∀ n, P7202434355261804190.a n = A115001 (n + 4)

end A115001

/-! ## A115001.P14691977139275066644

`Δ[∑[∑[A023023(n+3)]]/2]`
-/

namespace A115001.P14691977139275066644
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023023 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115001.P14691977139275066644

namespace A115001

/-- `Δ[∑[∑[A023023(n+3)]]/2]` -/
def P14691977139275066644.Spec : Prop :=
  ∀ n, P14691977139275066644.a n = (A115001 (n + 4) : ℚ)

end A115001

/-! ## A115001.P4068789800208271525

`A003602(∑[A023023(n+4)])`
-/

namespace A115001.P4068789800208271525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023023 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115001.P4068789800208271525

namespace A115001

/-- `A003602(∑[A023023(n+4)])` -/
def P4068789800208271525.Spec : Prop :=
  ∀ n, P4068789800208271525.a n = A115001 (n + 4)

end A115001

/-! ## A115001.P10585328181943922116

`A008619(∑[A023023(n+4)])`
-/

namespace A115001.P10585328181943922116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023023 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115001.P10585328181943922116

namespace A115001

/-- `A008619(∑[A023023(n+4)])` -/
def P10585328181943922116.Spec : Prop :=
  ∀ n, P10585328181943922116.a n = A115001 (n + 4)

end A115001

/-!
# A115002: a(n) = J_4(n)/240.

The programs for A115002, the canonical program `A115002.P12075642485037102992` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115002 has offset 6).

The definition of A115002 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059377, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115002.P12075642485037102992

`A059377(n+6)/240`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A115002

/-- `A059377(n+6)/240` -/
def P12075642485037102992.Spec : Prop :=
  ∀ n, P12075642485037102992.a n = (A115002 (n + 6) : ℚ)

end A115002

/-! ## A115002.P13650650156883673224

`Δ[A115003(n+5)]`
-/

namespace A115002.P13650650156883673224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115003 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115002.P13650650156883673224

namespace A115002

/-- `Δ[A115003(n+5)]` -/
def P13650650156883673224.Spec : Prop :=
  ∀ n, P13650650156883673224.a n = A115002 (n + 6)

end A115002

/-! ## A115002.P11660399913196949345

`A115003(n+6)-A115003(n+5)`
-/

namespace A115002.P11660399913196949345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115003 (n + 6) - A115003 (n + 5)

end

end A115002.P11660399913196949345

namespace A115002

/-- `A115003(n+6)-A115003(n+5)` -/
def P11660399913196949345.Spec : Prop :=
  ∀ n, P11660399913196949345.a n = A115002 (n + 6)

end A115002

/-!
# A115003: a(n) = Sum_{k=1..n} J_4(k)/240.

The programs for A115003, there is no canonical definition to state claims against.
-/

/-! ## A115003.P17224480052804421847

`∑[A145395(A216053(n+1)+A139582(n))]`
-/

namespace A115003.P17224480052804421847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145395 (A216053 (n + 1) + A139582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115003.P17224480052804421847

/-! ## A115003.P5034679922196493328

`A164799(A006261(n))+A075535(3*n+4)`
-/

namespace A115003.P5034679922196493328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164799 (A006261 n).toNat + A075535 (3 * n + 4)

end

end A115003.P5034679922196493328

/-!
# A115004: a(n) = Sum_{i=1..n, j=1..n, gcd(i,j)=1} (n+1-i)*(n+1-j).

The programs for A115004, there is no canonical definition to state claims against.
-/

/-! ## A115004.P3735391133448375737

`A088658(n+2)/4`
-/

namespace A115004.P3735391133448375737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088658 (n + 2) : ℚ) / 4

end

end A115004.P3735391133448375737

/-! ## A115004.P6009216526721325023

`A331761(2*n+3)/4`
-/

namespace A115004.P6009216526721325023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331761 (2 * n + 3) : ℚ) / 4

end

end A115004.P6009216526721325023

/-! ## A115004.P18308641723086249693

`A290131(n+2)-(n+1)²`
-/

namespace A115004.P18308641723086249693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290131 (n + 2) - ((n + 1) ^ 2 : ℤ)

end

end A115004.P18308641723086249693

/-! ## A115004.P11218937921212963742

`A344993(n+1)/2-(n+1)`
-/

namespace A115004.P11218937921212963742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344993 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A115004.P11218937921212963742

/-! ## A115004.P12690979421231715373

`A306302(n+1)-((n+2)²-1)`
-/

namespace A115004.P12690979421231715373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 (n + 1) - (((n + 2) ^ 2 : ℤ) - 1)

end

end A115004.P12690979421231715373

/-! ## A115004.P3765965254439123816

`(n+1)²+2*A332612(n+2)`
-/

namespace A115004.P3765965254439123816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + 2 * A332612 (n + 2)

end

end A115004.P3765965254439123816

/-! ## A115004.P16981572931802397763

`A115005(n+2)-(n+1)*(n+2)`
-/

namespace A115004.P16981572931802397763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115005 (n + 2) - ((n + 1) * (n + 2) : ℤ)

end

end A115004.P16981572931802397763

/-! ## A115004.P12862813129304421794

`A332612(n+2)+A331754(n+2)`
-/

namespace A115004.P12862813129304421794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332612 (n + 2) + A331754 (n + 2)

end

end A115004.P12862813129304421794

/-! ## A115004.P17311737490886054776

`A331761(n+1)+A159065(n+2)`
-/

namespace A115004.P17311737490886054776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331761 (n + 1) + A159065 (n + 2)

end

end A115004.P17311737490886054776

/-! ## A115004.P9700612057808814612

`A320541(∑[n+1])`
-/

namespace A115004.P9700612057808814612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115004.P9700612057808814612

/-!
# A115005: a(n) = (A114043(n) - 1)/2.

The programs for A115005, there is no canonical definition to state claims against.
-/

/-! ## A115005.P5003526662874343237

`(A114043(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115005.P5003526662874343237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114043 (n + 1) - 1 : ℚ) / 2

end

end A115005.P5003526662874343237

/-! ## A115005.P758169691792074322

`A306302(n)-n`
-/

namespace A115005.P758169691792074322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 n - (n : ℤ)

end

end A115005.P758169691792074322

/-! ## A115005.P15830564499292042947

`A141255(n+1)/2`
-/

namespace A115005.P15830564499292042947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141255 (n + 1) : ℚ) / 2

end

end A115005.P15830564499292042947

/-! ## A115005.P15846274903201107415

`A290131(n+1)+n`
-/

namespace A115005.P15846274903201107415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290131 (n + 1) + (n : ℤ)

end

end A115005.P15846274903201107415

/-! ## A115005.P11354675483053071536

`floor(A114043(n+1)/2)`
-/

namespace A115005.P11354675483053071536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114043 (n + 1) : ℚ) / 2⌋

end

end A115005.P11354675483053071536

/-! ## A115005.P16337200020048179916

`n²+A344993(n)/2`
-/

namespace A115005.P16337200020048179916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A344993 n : ℚ) / 2

end

end A115005.P16337200020048179916

/-! ## A115005.P2795528985452806339

`(A114146(n+1)-2)/4`
-/

namespace A115005.P2795528985452806339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114146 (n + 1) - 2 : ℚ) / 4

end

end A115005.P2795528985452806339

/-! ## A115005.P2731498231738503495

`A177719(2*(n+1))/8`
-/

namespace A115005.P2731498231738503495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177719 (2 * (n + 1)) : ℚ) / 8

end

end A115005.P2731498231738503495

/-! ## A115005.P702438731923363929

`(A344993(n)+A001105(n))/2`
-/

namespace A115005.P702438731923363929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344993 n + A001105 n : ℚ) / 2

end

end A115005.P702438731923363929

/-! ## A115005.P5944952303453385058

`xor(A057427(A005408(n)), A114043(n+1))/2`
-/

namespace A115005.P5944952303453385058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A057427 (A005408 n).toNat) (A114043 (n + 1)) : ℚ) / 2

end

end A115005.P5944952303453385058

/-! ## A115005.P12050920466808303239

`xor(A057427(A016777(n)), A114043(n+1))/2`
-/

namespace A115005.P12050920466808303239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A057427 (A016777 n).toNat) (A114043 (n + 1)) : ℚ) / 2

end

end A115005.P12050920466808303239

/-! ## A115005.P3808451876847559057

`A331771(n+1)/4`
-/

namespace A115005.P3808451876847559057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331771 (n + 1) : ℚ) / 4

end

end A115005.P3808451876847559057

/-! ## A115005.P3908389421061164661

`2*A331754(n+1)+n`
-/

namespace A115005.P3908389421061164661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331754 (n + 1) + (n : ℤ)

end

end A115005.P3908389421061164661

/-! ## A115005.P13822793517657116190

`A331754(n+1)+A306302(n)/2`
-/

namespace A115005.P13822793517657116190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331754 (n + 1) : ℚ) + (A306302 n : ℚ) / 2

end

end A115005.P13822793517657116190

/-! ## A115005.P7061674668498691952

`2*A331756(n)-n`
-/

namespace A115005.P7061674668498691952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331756 n - (n : ℤ)

end

end A115005.P7061674668498691952

/-! ## A115005.P9618748663334052150

`A331756(n)+A331754(n+1)`
-/

namespace A115005.P9618748663334052150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331756 n + A331754 (n + 1)

end

end A115005.P9618748663334052150

/-! ## A115005.P11341247533624628669

`A331754(n+1)+A355902(n)-n`
-/

namespace A115005.P11341247533624628669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331754 (n + 1) + (A355902 n - (n : ℤ))

end

end A115005.P11341247533624628669

/-! ## A115005.P7304823953128609841

`A331773(2*(n+1))/2`
-/

namespace A115005.P7304823953128609841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331773 (2 * (n + 1)) : ℚ) / 2

end

end A115005.P7304823953128609841

/-! ## A115005.P3184755186230659843

`and(A002446(n), A114043(n+1))/2`
-/

namespace A115005.P3184755186230659843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A002446 n) (A114043 (n + 1)) : ℚ) / 2

end

end A115005.P3184755186230659843

/-! ## A115005.P6948947334275218409

`A332351(∑[n+1])/2`
-/

namespace A115005.P6948947334275218409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332351 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A115005.P6948947334275218409

/-!
# A115006: Row 2 of array in A114999.

The programs for A115006, the canonical program `A115006.P5593782408528900304` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115006 has offset 0).

The definition of A115006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115006.P5593782408528900304

`floor((n+1)²/4)+n*(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115006

/-- `floor((n+1)²/4)+n*(n+1)` -/
def P5593782408528900304.Spec : Prop :=
  ∀ n, P5593782408528900304.a n = A115006 n

theorem P5593782408528900304.correct : P5593782408528900304.Spec := by
  intro n
  simp only [A115006]

end A115006

/-! ## A115006.P5239868949550017767

`∑[a(n-2)+5]` with `a(0)=0, a(1)=3`
-/

namespace A115006.P5239868949550017767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115006.P5239868949550017767

namespace A115006

/-- `∑[a(n-2)+5]` -/
def P5239868949550017767.Spec : Prop :=
  ∀ n, (P5239868949550017767.a n : ℤ) = A115006 n

end A115006

/-! ## A115006.P14996009620365124446

`∑[∑[5-a(n-1)]]` with `a(0)=0, a(1)=3`
-/

namespace A115006.P14996009620365124446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115006.P14996009620365124446

namespace A115006

/-- `∑[∑[5-a(n-1)]]` -/
def P14996009620365124446.Spec : Prop :=
  ∀ n, P14996009620365124446.a n = A115006 n

end A115006

/-! ## A115006.P1836744469355587277

`∑[n%2+5*n]/2`
-/

namespace A115006.P1836744469355587277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 5 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A115006.P1836744469355587277

namespace A115006

/-- `∑[n%2+5*n]/2` -/
def P1836744469355587277.Spec : Prop :=
  ∀ n, P1836744469355587277.a n = (A115006 n : ℚ)

end A115006

/-! ## A115006.P559415447526471556

`∑[∑[∑[ogf((3x+2x^2)/(1+x))]]]`
-/

namespace A115006.P559415447526471556
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115006.P559415447526471556

namespace A115006

/-- `∑[∑[∑[ogf((3x+2x^2)/(1+x))]]]` -/
def P559415447526471556.Spec : Prop :=
  ∀ n, P559415447526471556.a n = A115006 n

end A115006

/-! ## A115006.P14170369339957125382

`ogf((3x+2x^2)/(1-2x+2x^3-x^4))`
-/

namespace A115006.P14170369339957125382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2] [1, -2, 0, 2, -1] n

end

end A115006.P14170369339957125382

namespace A115006

/-- `ogf((3x+2x^2)/(1-2x+2x^3-x^4))` -/
def P14170369339957125382.Spec : Prop :=
  ∀ n, P14170369339957125382.a n = A115006 n

end A115006

/-! ## A115006.P14581010478340094937

`floor(2*n+a(n-1)+(n+1)/2)` with `a(0)=0`
-/

namespace A115006.P14581010478340094937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(2 * n : ℚ) + ((a (n - 1) : ℚ) + (n + 1 : ℚ) / 2)⌋

end

end A115006.P14581010478340094937

namespace A115006

/-- `floor(2*n+a(n-1)+(n+1)/2)` -/
def P14581010478340094937.Spec : Prop :=
  ∀ n, P14581010478340094937.a n = A115006 n

end A115006

/-! ## A115006.P12287703513867541810

`∑[A047218(n+1)]`
-/

namespace A115006.P12287703513867541810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115006.P12287703513867541810

namespace A115006

/-- `∑[A047218(n+1)]` -/
def P12287703513867541810.Spec : Prop :=
  ∀ n, P12287703513867541810.a n = A115006 n

end A115006

/-! ## A115006.P12761962281601692933

`∑[A075328(n)-2]`
-/

namespace A115006.P12761962281601692933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115006.P12761962281601692933

namespace A115006

/-- `∑[A075328(n)-2]` -/
def P12761962281601692933.Spec : Prop :=
  ∀ n, P12761962281601692933.a n = A115006 n

end A115006

/-! ## A115006.P2970791119577082467

`∑[A146951(n)/2]`
-/

namespace A115006.P2970791119577082467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146951 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115006.P2970791119577082467

namespace A115006

/-- `∑[A146951(n)/2]` -/
def P2970791119577082467.Spec : Prop :=
  ∀ n, P2970791119577082467.a n = (A115006 n : ℚ)

end A115006

/-! ## A115006.P6381745719220069620

`∑[A007494(n)+n]`
-/

namespace A115006.P6381745719220069620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115006.P6381745719220069620

namespace A115006

/-- `∑[A007494(n)+n]` -/
def P6381745719220069620.Spec : Prop :=
  ∀ n, P6381745719220069620.a n = A115006 n

end A115006

/-! ## A115006.P6052443103011738822

`∑[A047209(n+1)-1]`
-/

namespace A115006.P6052443103011738822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115006.P6052443103011738822

namespace A115006

/-- `∑[A047209(n+1)-1]` -/
def P6052443103011738822.Spec : Prop :=
  ∀ n, P6052443103011738822.a n = A115006 n

end A115006

/-! ## A115006.P8740055934835428734

`(A139595(n)+∑[n])/2`
-/

namespace A115006.P8740055934835428734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139595 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A115006.P8740055934835428734

namespace A115006

/-- `(A139595(n)+∑[n])/2` -/
def P8740055934835428734.Spec : Prop :=
  ∀ n, P8740055934835428734.a n = (A115006 n : ℚ)

end A115006

/-! ## A115006.P12935772374469272984

`A185452(n+1)*A185452(n)`
-/

namespace A115006.P12935772374469272984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185452 (n + 1) * A185452 n

end

end A115006.P12935772374469272984

namespace A115006

/-- `A185452(n+1)*A185452(n)` -/
def P12935772374469272984.Spec : Prop :=
  ∀ n, P12935772374469272984.a n = A115006 n

end A115006

/-! ## A115006.P6473531641337078526

`A051937(n+4)%A213759(n+1)`
-/

namespace A115006.P6473531641337078526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051937 (n + 4)) (A213759 (n + 1))

end

end A115006.P6473531641337078526

namespace A115006

/-- `A051937(n+4)%A213759(n+1)` -/
def P6473531641337078526.Spec : Prop :=
  ∀ n, P6473531641337078526.a n = A115006 n

end A115006

/-! ## A115006.P1753952999487617807

`∪[A126264(n+1), A147874(n+1)]`
-/

namespace A115006.P1753952999487617807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115006.P1753952999487617807

namespace A115006

/-- `∪[A126264(n+1), A147874(n+1)]` -/
def P1753952999487617807.Spec : Prop :=
  ∀ n, (P1753952999487617807.a n : ℤ) = A115006 n

end A115006

/-! ## A115006.P2692996198495931160

`Δ[A212692(n)/2]`
-/

namespace A115006.P2692996198495931160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212692 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115006.P2692996198495931160

namespace A115006

/-- `Δ[A212692(n)/2]` -/
def P2692996198495931160.Spec : Prop :=
  ∀ n, P2692996198495931160.a n = (A115006 n : ℚ)

end A115006

/-! ## A115006.P7917982926369160307

`∑[A047215(n+1)-2]`
-/

namespace A115006.P7917982926369160307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115006.P7917982926369160307

namespace A115006

/-- `∑[A047215(n+1)-2]` -/
def P7917982926369160307.Spec : Prop :=
  ∀ n, P7917982926369160307.a n = A115006 n

end A115006

/-! ## A115006.P14251632293327349351

`∑[A303764(2*n)]`
-/

namespace A115006.P14251632293327349351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303764 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115006.P14251632293327349351

namespace A115006

/-- `∑[A303764(2*n)]` -/
def P14251632293327349351.Spec : Prop :=
  ∀ n, P14251632293327349351.a n = A115006 n

end A115006

/-!
# A115007: Row 3 of array in A114999.

The programs for A115007, there is no canonical definition to state claims against.
-/

/-! ## A115007.P6632342675118961427

`floor(∑[(28*n+5)/6])`
-/

namespace A115007.P6632342675118961427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (28 * n + 5 : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A115007.P6632342675118961427

/-! ## A115007.P11224337943852158267

`∑[comp[or(2, n)-1]+ceil(8*n/3)]`
-/

namespace A115007.P11224337943852158267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) + ⌈8 * ((n : ℚ) / 3)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115007.P11224337943852158267

/-! ## A115007.P7484171688375313673

`∑[or(1, 5*n+1)-∑[char[3*n]]]`
-/

namespace A115007.P7484171688375313673
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (5 * n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115007.P7484171688375313673

/-! ## A115007.P14228668970537702589

`∑[∑[n²%3]+n%2+4*n]`
-/

namespace A115007.P14228668970537702589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n % 2 + 4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115007.P14228668970537702589

/-! ## A115007.P15155665685218354714

`∑[A146951(n)-floor(n/3)]`
-/

namespace A115007.P15155665685218354714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 n - ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115007.P15155665685218354714

/-!
# A115008: a(n) = a(n-1) + a(n-3) + a(n-4).

The programs for A115008, the canonical program `A115008.P17428194644534167228` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115008 has offset 0).

The definition of A115008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A115008.P17428194644534167228`, by `A115008.P17428194644534167228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115008.P17428194644534167228

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115008

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P17428194644534167228.Spec : Prop :=
  ∀ n, (P17428194644534167228.a n : ℤ) = A115008 n

theorem P17428194644534167228.correct : P17428194644534167228.Spec := by
  intro n
  simp only [A115008]

end A115008

/-! ## A115008.P12140694134480727614

`ogf((1-x+2x^2+x^3)/(1-x-x^3-x^4))`
-/

namespace A115008.P12140694134480727614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, 1] [1, -1, 0, -1, -1] n

end

end A115008.P12140694134480727614

namespace A115008

/-- `ogf((1-x+2x^2+x^3)/(1-x-x^3-x^4))` -/
def P12140694134480727614.Spec : Prop :=
  ∀ n, P12140694134480727614.a n = A115008 n

end A115008

/-! ## A115008.P5025862895207245533

`A000045(n+1)-(-1)^floor((n-1)/2)*n%2`
-/

namespace A115008.P5025862895207245533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) - (-1 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ) * ((n % 2 : ℕ) : ℚ)

end

end A115008.P5025862895207245533

namespace A115008

/-- `A000045(n+1)-(-1)^floor((n-1)/2)*n%2` -/
def P5025862895207245533.Spec : Prop :=
  ∀ n, P5025862895207245533.a n = (A115008 n : ℚ)

end A115008

/-! ## A115008.P4832883659565409502

`A111573(n)+A087960(n)`
-/

namespace A115008.P4832883659565409502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 n + A087960 n

end

end A115008.P4832883659565409502

namespace A115008

/-- `A111573(n)+A087960(n)` -/
def P4832883659565409502.Spec : Prop :=
  ∀ n, P4832883659565409502.a n = A115008 n

end A115008

/-! ## A115008.P17050616982711588609

`A074662(n)-A057077(n)`
-/

namespace A115008.P17050616982711588609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n - A057077 n

end

end A115008.P17050616982711588609

namespace A115008

/-- `A074662(n)-A057077(n)` -/
def P17050616982711588609.Spec : Prop :=
  ∀ n, P17050616982711588609.a n = A115008 n

end A115008

/-! ## A115008.P7471231752701589300

`A000045(n+1)-A101455(n)`
-/

namespace A115008.P7471231752701589300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A101455 n

end

end A115008.P7471231752701589300

namespace A115008

/-- `A000045(n+1)-A101455(n)` -/
def P7471231752701589300.Spec : Prop :=
  ∀ n, P7471231752701589300.a n = A115008 n

end A115008

/-! ## A115008.P1555193755930080008

`A295671(n+2)+A074677(n)`
-/

namespace A115008.P1555193755930080008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 (n + 2) + A074677 n

end

end A115008.P1555193755930080008

namespace A115008

/-- `A295671(n+2)+A074677(n)` -/
def P1555193755930080008.Spec : Prop :=
  ∀ n, P1555193755930080008.a n = A115008 n

end A115008

/-! ## A115008.P7221586634487911232

`A001611(n+1)-∑[A057077(n)]`
-/

namespace A115008.P7221586634487911232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115008.P7221586634487911232

namespace A115008

/-- `A001611(n+1)-∑[A057077(n)]` -/
def P7221586634487911232.Spec : Prop :=
  ∀ n, P7221586634487911232.a n = A115008 n

end A115008

/-! ## A115008.P8826081950929658524

`∑[A212804(n)-A057077(n)]+1`
-/

namespace A115008.P8826081950929658524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A115008.P8826081950929658524

namespace A115008

/-- `∑[A212804(n)-A057077(n)]+1` -/
def P8826081950929658524.Spec : Prop :=
  ∀ n, P8826081950929658524.a n = A115008 n

end A115008

/-! ## A115008.P16176062361451908865

`A056594(n+1)+A000045(n+1)`
-/

namespace A115008.P16176062361451908865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + A000045 (n + 1)

end

end A115008.P16176062361451908865

namespace A115008

/-- `A056594(n+1)+A000045(n+1)` -/
def P16176062361451908865.Spec : Prop :=
  ∀ n, P16176062361451908865.a n = A115008 n

end A115008

/-! ## A115008.P16100864596748461860

`A101455(n+2)+A000045(n+1)`
-/

namespace A115008.P16100864596748461860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (n + 2) + A000045 (n + 1)

end

end A115008.P16100864596748461860

namespace A115008

/-- `A101455(n+2)+A000045(n+1)` -/
def P16100864596748461860.Spec : Prop :=
  ∀ n, P16100864596748461860.a n = A115008 n

end A115008

/-! ## A115008.P9158924265881690022

`A129728(n+1)-A047599(n+1)`
-/

namespace A115008.P9158924265881690022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129728 (n + 1) - A047599 (n + 1)

end

end A115008.P9158924265881690022

namespace A115008

/-- `A129728(n+1)-A047599(n+1)` -/
def P9158924265881690022.Spec : Prop :=
  ∀ n, P9158924265881690022.a n = A115008 n

end A115008

/-! ## A115008.P14180791425557968271

`A075553(2*n)+A000045(n+1)`
-/

namespace A115008.P14180791425557968271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (2 * n) + A000045 (n + 1)

end

end A115008.P14180791425557968271

namespace A115008

/-- `A075553(2*n)+A000045(n+1)` -/
def P14180791425557968271.Spec : Prop :=
  ∀ n, P14180791425557968271.a n = A115008 n

end A115008

/-! ## A115008.P10697457867559377171

`A000045(n+1)-A046978(2*n)`
-/

namespace A115008.P10697457867559377171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A046978 (2 * n)

end

end A115008.P10697457867559377171

namespace A115008

/-- `A000045(n+1)-A046978(2*n)` -/
def P10697457867559377171.Spec : Prop :=
  ∀ n, P10697457867559377171.a n = A115008 n

end A115008

/-! ## A115008.P3983752738287312178

`A000045(n+1)-∑[A057077(n)]+1`
-/

namespace A115008.P3983752738287312178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A115008.P3983752738287312178

namespace A115008

/-- `A000045(n+1)-∑[A057077(n)]+1` -/
def P3983752738287312178.Spec : Prop :=
  ∀ n, P3983752738287312178.a n = A115008 n

end A115008

/-! ## A115008.P12249467967070563274

`A000045(n+1)+1-A007877(n+1)`
-/

namespace A115008.P12249467967070563274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (1 - A007877 (n + 1))

end

end A115008.P12249467967070563274

namespace A115008

/-- `A000045(n+1)+1-A007877(n+1)` -/
def P12249467967070563274.Spec : Prop :=
  ∀ n, P12249467967070563274.a n = A115008 n

end A115008

/-! ## A115008.P16476765410598921846

`A000045(n+1)-(2*A004525(n)-n)`
-/

namespace A115008.P16476765410598921846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (2 * A004525 n - (n : ℤ))

end

end A115008.P16476765410598921846

namespace A115008

/-- `A000045(n+1)-(2*A004525(n)-n)` -/
def P16476765410598921846.Spec : Prop :=
  ∀ n, P16476765410598921846.a n = A115008 n

end A115008

/-! ## A115008.P5757353677525913602

`A000045(n+1)+A000045(n-1)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A115008.P5757353677525913602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A000045 (n + 1) + (A000045 (n - 1) - a (n - 2))

end

end A115008.P5757353677525913602

namespace A115008

/-- `A000045(n+1)+A000045(n-1)-a(n-2)` -/
def P5757353677525913602.Spec : Prop :=
  ∀ n, P5757353677525913602.a n = A115008 n

end A115008

/-! ## A115008.P12004350322055471780

`A014041(A008590(n+1))+A000045(n+1)`
-/

namespace A115008.P12004350322055471780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014041 (A008590 (n + 1)).toNat + A000045 (n + 1)

end

end A115008.P12004350322055471780

namespace A115008

/-- `A014041(A008590(n+1))+A000045(n+1)` -/
def P12004350322055471780.Spec : Prop :=
  ∀ n, P12004350322055471780.a n = A115008 n

end A115008

/-! ## A115008.P18032047594702711256

`A056594(n+1)+A111573(n)+A056594(n)`
-/

namespace A115008.P18032047594702711256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + (A111573 n + A056594 n)

end

end A115008.P18032047594702711256

namespace A115008

/-- `A056594(n+1)+A111573(n)+A056594(n)` -/
def P18032047594702711256.Spec : Prop :=
  ∀ n, P18032047594702711256.a n = A115008 n

end A115008

/-!
# A115009: Array read by antidiagonals: let V(m,n) = Sum_{i=1..m, j=1..n, gcd(i,j)=1} (m+1-i)*(n+1-j), then T(m,n) = 2*m*n+m+n+2*V(m,n), for m >= 0, n >= 0.

The programs for A115009, there is no canonical definition to state claims against.
-/

/-! ## A115009.P8908615172765303895

`2*A335678(n+1)+1-∑[char[∑[n]]]`
-/

namespace A115009.P8908615172765303895
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A335678 (n + 1) + 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A115009.P8908615172765303895

/-! ## A115009.P11919216135912924981

`2*A335678(n+1)-A003056(n)`
-/

namespace A115009.P11919216135912924981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A335678 (n + 1) - A003056 n

end

end A115009.P11919216135912924981

/-! ## A115009.P15914175881940887924

`2*A335678(n+1)-∑[A073424(n)]`
-/

namespace A115009.P15914175881940887924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A335678 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115009.P15914175881940887924

/-! ## A115009.P15273280308154198306

`A005843(A335678(n+1))-A003056(n)`
-/

namespace A115009.P15273280308154198306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A335678 (n + 1)).toNat - A003056 n

end

end A115009.P15273280308154198306

/-! ## A115009.P10748204430113789057

`A005408(A335678(n+1))-log2(A140513(n))`
-/

namespace A115009.P10748204430113789057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005408 (A335678 (n + 1)).toNat : ℝ) - Real.logb 2 (A140513 n : ℝ)

end

end A115009.P10748204430113789057

/-! ## A115009.P17597269277768567497

`A005408(A335678(n+1))-∑[A010054(n)]`
-/

namespace A115009.P17597269277768567497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A335678 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115009.P17597269277768567497

/-! ## A115009.P11896677270828845094

`A005408(A335678(n+1))-A002024(n+1)`
-/

namespace A115009.P11896677270828845094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A335678 (n + 1)).toNat - A002024 (n + 1)

end

end A115009.P11896677270828845094

/-! ## A115009.P2397637039530046550

`A005408(A335678(n+1))-A123578(n+1)`
-/

namespace A115009.P2397637039530046550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A335678 (n + 1)).toNat - A123578 (n + 1)

end

end A115009.P2397637039530046550

/-! ## A115009.P14151694017758318701

`A005408(A335678(n+1))-A000194(2*(n+1))`
-/

namespace A115009.P14151694017758318701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A335678 (n + 1)).toNat - A000194 (2 * (n + 1))

end

end A115009.P14151694017758318701

/-! ## A115009.P11329450687831006889

`A005408(A335678(n+1))+n+1-A014132(n+1)`
-/

namespace A115009.P11329450687831006889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A335678 (n + 1)).toNat + ((n + 1 : ℤ) - A014132 (n + 1))

end

end A115009.P11329450687831006889

/-!
# A115010: Array read by antidiagonals: let V(m,n) = Sum_{i=1..m, j=1..n, gcd(i,j)=1} (m+1-i)*(n+1-j), then T(m,n) = 2*m*n+m+n+2*V(m,n), for m >= 1, n >= 1.

The programs for A115010, there is no canonical definition to state claims against.
-/

/-! ## A115010.P6067171087418565199

`A159919(n+1)+2*A114999(n+1)`
-/

namespace A115010.P6067171087418565199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159919 (n + 1) + 2 * A114999 (n + 1)

end

end A115010.P6067171087418565199

/-! ## A115010.P3484525868759043281

`A159919(n+1)+A005843(A114999(n+1))`
-/

namespace A115010.P3484525868759043281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159919 (n + 1) + A005843 (A114999 (n + 1)).toNat

end

end A115010.P3484525868759043281

/-! ## A115010.P3534645935657291142

`A115009(eq[0, A103451(n)])`
-/

namespace A115010.P3534645935657291142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115010.P3534645935657291142

/-! ## A115010.P493460702889651937

`A115009(eq[0, A103452(n)])`
-/

namespace A115010.P493460702889651937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115010.P493460702889651937

/-! ## A115010.P4705562426567894516

`A115009(eq[0, A103516(n)])`
-/

namespace A115010.P4705562426567894516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115010.P4705562426567894516

/-!
# A115011: Array read by antidiagonals: let V(m,n) = Sum_{i=1..m, j=1..n, gcd(i,j)=1} (m+1-i)*(n+1-j), then T(m,n) = 2*(2*m*n+m+n+2*V(m,n)), for m >= 0, n >= 0.

The programs for A115011, there is no canonical definition to state claims against.
-/

/-! ## A115011.P18168306998591493253

`2*A115009(n)`
-/

namespace A115011.P18168306998591493253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115009 n

end

end A115011.P18168306998591493253

/-! ## A115011.P527784856971642538

`2*(2*A335678(n+1)+1-∑[char[∑[n]]])`
-/

namespace A115011.P527784856971642538
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A335678 (n + 1) + 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A115011.P527784856971642538

/-! ## A115011.P7870882326688792760

`A005843(A115009(n))`
-/

namespace A115011.P7870882326688792760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A115009 n).toNat

end

end A115011.P7870882326688792760

/-! ## A115011.P2087418328685451538

`A004273(A115009(n)+1)-1`
-/

namespace A115011.P2087418328685451538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A115009 n + 1).toNat - 1

end

end A115011.P2087418328685451538

/-! ## A115011.P6516045849517109464

`A004277(A115009(n)+1)-2`
-/

namespace A115011.P6516045849517109464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A115009 n + 1).toNat - 2

end

end A115011.P6516045849517109464

/-! ## A115011.P8362161763378107299

`A115009(char[1]+n)+A115009(n)`
-/

namespace A115011.P8362161763378107299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115009 ((if ∃ j, f1 j = n then 1 else 0) + n) + A115009 n

end

end A115011.P8362161763378107299

/-! ## A115011.P10394728109617006450

`A038608(A115009(n)/(1-1/2))`
-/

namespace A115011.P10394728109617006450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (SequenceMachineLib.roundAway ((A115009 n : ℚ) / (1 - (1 : ℚ) / 2))).toNat

end

end A115011.P10394728109617006450

/-! ## A115011.P15920193066764226557

`A004277(A115009(n))-A000007(n)`
-/

namespace A115011.P15920193066764226557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A115009 n).toNat - A000007 n

end

end A115011.P15920193066764226557

/-! ## A115011.P13847389530869929798

`A115009(n)/2^A008683(A006450(n+1))`
-/

namespace A115011.P13847389530869929798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115009 n : ℚ) / (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ)

end

end A115011.P13847389530869929798

/-!
# A115012: Sum_{i=1..n, gcd(5,i)=1} i.

The programs for A115012, there is no canonical definition to state claims against.
-/

/-! ## A115012.P5321602313840629079

`∑[(n+1)%lcm(5, n+1)]`
-/

namespace A115012.P5321602313840629079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Nat.lcm 5 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115012.P5321602313840629079

/-! ## A115012.P11365243034671132097

`∑[C(n+1, gcd(5, n+1)!)]`
-/

namespace A115012.P11365243034671132097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.factorial (Nat.gcd 5 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115012.P11365243034671132097

/-! ## A115012.P6972925571424000392

`∑[(n+1)*((n+1)^4)%5]`
-/

namespace A115012.P6972925571424000392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) ^ 4 % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115012.P6972925571424000392

/-! ## A115012.P10264376904458450553

`∑[(n+1)*char[comp[5*n-1]]]`
-/

namespace A115012.P10264376904458450553
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115012.P10264376904458450553

/-! ## A115012.P13416337392633146361

`∑[A091703(2*(n+1))]/2`
-/

namespace A115012.P13416337392633146361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A115012.P13416337392633146361

/-! ## A115012.P1651922318902845156

`A091703(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A115012.P1651922318902845156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091703 (n + 1) + a (n - 1)

end

end A115012.P1651922318902845156

/-! ## A115012.P12116195104950319896

`A002266(A028895(n+1))-A028895(A002266(n+1))`
-/

namespace A115012.P12116195104950319896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A028895 (n + 1)).toNat - A028895 (A002266 (n + 1)).toNat

end

end A115012.P12116195104950319896

/-!
# A115013: a(n) = difference between largest and smallest primes dividing the n-th squarefree integer (with a(1)=0).

The programs for A115013, there is no canonical definition to state claims against.
-/

/-! ## A115013.P17592408718051028075

`A073482(n+1)-A073481(n+1)`
-/

namespace A115013.P17592408718051028075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073482 (n + 1) - A073481 (n + 1)

end

end A115013.P17592408718051028075

/-! ## A115013.P8859561888515716951

`A100574(A005117(n+1))`
-/

namespace A115013.P8859561888515716951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100574 (A005117 (n + 1)).toNat

end

end A115013.P8859561888515716951

/-! ## A115013.P14434121530524972972

`A100574(eq[n*A087049(n), A087049(n)])`
-/

namespace A115013.P14434121530524972972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100574 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115013.P14434121530524972972

/-! ## A115013.P6933783555596515910

`A006530(A005117(n+1))-A073481(n+1)`
-/

namespace A115013.P6933783555596515910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005117 (n + 1)).toNat - A073481 (n + 1)

end

end A115013.P6933783555596515910

/-! ## A115013.P15707456539070766449

`A073482(n+1)-A020639(A005117(n+1))`
-/

namespace A115013.P15707456539070766449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073482 (n + 1) - A020639 (A005117 (n + 1)).toNat

end

end A115013.P15707456539070766449

/-! ## A115013.P1138359337630230653

`A046665(lt[A000188(n+1), 2]+1)`
-/

namespace A115013.P1138359337630230653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A115013.P1138359337630230653

/-! ## A115013.P11092695270134403546

`A046665(eq[n*A087049(n), A087049(n)])`
-/

namespace A115013.P11092695270134403546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115013.P11092695270134403546

/-! ## A115013.P11154777575037829745

`A073482(n+1)-A020639(A366786(n+1))`
-/

namespace A115013.P11154777575037829745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073482 (n + 1) - A020639 (A366786 (n + 1)).toNat

end

end A115013.P11154777575037829745

/-! ## A115013.P3351995419434053259

`A046665(A062503(n+1))`
-/

namespace A115013.P3351995419434053259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A062503 (n + 1)).toNat

end

end A115013.P3351995419434053259

/-! ## A115013.P6790230807206932911

`A046665(A366786(n+1))`
-/

namespace A115013.P6790230807206932911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A366786 (n + 1)).toNat

end

end A115013.P6790230807206932911

/-!
# A115014: a(n) = Sum_{i=1..n, gcd(6,i)=1} i.

The programs for A115014, the canonical program `A115014.P4075571418310535630` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115014 has offset 1).

The definition of A115014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115014.P4075571418310535630

`∑[C(lcm(6, n+1)/6, lcm(2, n))]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115014

/-- `∑[C(lcm(6, n+1)/6, lcm(2, n))]` -/
def P4075571418310535630.Spec : Prop :=
  ∀ n, (P4075571418310535630.a n : ℤ) = A115014 (n + 1)

theorem P4075571418310535630.correct : P4075571418310535630.Spec := by
  intro n
  simp only [A115014, Nat.add_sub_cancel]

end A115014

/-! ## A115014.P13335252271881650267

`∑[(n+1)*char[n-n²%6]]`
-/

namespace A115014.P13335252271881650267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 2 % 6 : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P13335252271881650267

namespace A115014

/-- `∑[(n+1)*char[n-n²%6]]` -/
def P13335252271881650267.Spec : Prop :=
  ∀ n, (P13335252271881650267.a n : ℤ) = A115014 (n + 1)

end A115014

/-! ## A115014.P10369569428725716062

`∑[lcm(C(xor(1, n), n), round(cos(n%6)))]`
-/

namespace A115014.P10369569428725716062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose (Nat.xor 1 n) n : ℤ) (SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P10369569428725716062

namespace A115014

/-- `∑[lcm(C(xor(1, n), n), round(cos(n%6)))]` -/
def P10369569428725716062.Spec : Prop :=
  ∀ n, (P10369569428725716062.a n : ℤ) = A115014 (n + 1)

end A115014

/-! ## A115014.P4201566327147342102

`∑[(n+1)*val((2-n)²+2, 6)]`
-/

namespace A115014.P4201566327147342102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.valuation ((2 - (n : ℤ)) ^ 2 + 2).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P4201566327147342102

namespace A115014

/-- `∑[(n+1)*val((2-n)²+2, 6)]` -/
def P4201566327147342102.Spec : Prop :=
  ∀ n, (P4201566327147342102.a n : ℤ) = A115014 (n + 1)

end A115014

/-! ## A115014.P6906154421037175899

`∑[lcm(val((2-n)²+2, 6), or(1, n))]`
-/

namespace A115014.P6906154421037175899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (SequenceMachineLib.valuation ((2 - (n : ℤ)) ^ 2 + 2).toNat 6) (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P6906154421037175899

namespace A115014

/-- `∑[lcm(val((2-n)²+2, 6), or(1, n))]` -/
def P6906154421037175899.Spec : Prop :=
  ∀ n, (P6906154421037175899.a n : ℤ) = A115014 (n + 1)

end A115014

/-! ## A115014.P2741025297851822158

`∑[(n+1)²%3*C(xor(1, n), n)]`
-/

namespace A115014.P2741025297851822158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3 * Nat.choose (Nat.xor 1 n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P2741025297851822158

namespace A115014

/-- `∑[(n+1)²%3*C(xor(1, n), n)]` -/
def P2741025297851822158.Spec : Prop :=
  ∀ n, (P2741025297851822158.a n : ℤ) = A115014 (n + 1)

end A115014

/-! ## A115014.P15467531497013996742

`∑[A091685(n+1)]`
-/

namespace A115014.P15467531497013996742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P15467531497013996742

namespace A115014

/-- `∑[A091685(n+1)]` -/
def P15467531497013996742.Spec : Prop :=
  ∀ n, P15467531497013996742.a n = A115014 (n + 1)

end A115014

/-! ## A115014.P3063420814266258774

`∑[(n+1)*A232991(n)]`
-/

namespace A115014.P3063420814266258774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A232991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P3063420814266258774

namespace A115014

/-- `∑[(n+1)*A232991(n)]` -/
def P3063420814266258774.Spec : Prop :=
  ∀ n, P3063420814266258774.a n = A115014 (n + 1)

end A115014

/-! ## A115014.P7346830711865233606

`∑[(n+1)*A354354(n+1)]`
-/

namespace A115014.P7346830711865233606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P7346830711865233606

namespace A115014

/-- `∑[(n+1)*A354354(n+1)]` -/
def P7346830711865233606.Spec : Prop :=
  ∀ n, P7346830711865233606.a n = A115014 (n + 1)

end A115014

/-! ## A115014.P8054784865802150390

`∑[(n+1)*A163811(n+1)²]`
-/

namespace A115014.P8054784865802150390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A163811 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P8054784865802150390

namespace A115014

/-- `∑[(n+1)*A163811(n+1)²]` -/
def P8054784865802150390.Spec : Prop :=
  ∀ n, P8054784865802150390.a n = A115014 (n + 1)

end A115014

/-! ## A115014.P10726412588199397437

`∑[(n+1)*A359374((n+1)²)]`
-/

namespace A115014.P10726412588199397437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A359374 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P10726412588199397437

namespace A115014

/-- `∑[(n+1)*A359374((n+1)²)]` -/
def P10726412588199397437.Spec : Prop :=
  ∀ n, P10726412588199397437.a n = A115014 (n + 1)

end A115014

/-! ## A115014.P10317352638783498274

`A032766(A004525(A004523(n+2))²)`
-/

namespace A115014.P10317352638783498274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A004525 (A004523 (n + 2)).toNat ^ 2).toNat

end

end A115014.P10317352638783498274

namespace A115014

/-- `A032766(A004525(A004523(n+2))²)` -/
def P10317352638783498274.Spec : Prop :=
  ∀ n, P10317352638783498274.a n = A115014 (n + 1)

end A115014

/-! ## A115014.P7798647978435175427

`∑[(n+1)*A033683((n+1)²)]`
-/

namespace A115014.P7798647978435175427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033683 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P7798647978435175427

namespace A115014

/-- `∑[(n+1)*A033683((n+1)²)]` -/
def P7798647978435175427.Spec : Prop :=
  ∀ n, P7798647978435175427.a n = A115014 (n + 1)

end A115014

/-! ## A115014.P7942983342432065069

`∑[(n+1)*A110161((n+1)²)]`
-/

namespace A115014.P7942983342432065069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110161 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P7942983342432065069

namespace A115014

/-- `∑[(n+1)*A110161((n+1)²)]` -/
def P7942983342432065069.Spec : Prop :=
  ∀ n, P7942983342432065069.a n = A115014 (n + 1)

end A115014

/-! ## A115014.P14657135091304557543

`∑[(n+1)*A320106((n+1)²)]`
-/

namespace A115014.P14657135091304557543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320106 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P14657135091304557543

namespace A115014

/-- `∑[(n+1)*A320106((n+1)²)]` -/
def P14657135091304557543.Spec : Prop :=
  ∀ n, P14657135091304557543.a n = A115014 (n + 1)

end A115014

/-! ## A115014.P18309564449829584970

`∑[(n+1)*A322796((n+1)²)]`
-/

namespace A115014.P18309564449829584970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322796 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P18309564449829584970

namespace A115014

/-- `∑[(n+1)*A322796((n+1)²)]` -/
def P18309564449829584970.Spec : Prop :=
  ∀ n, P18309564449829584970.a n = A115014 (n + 1)

end A115014

/-! ## A115014.P5213919514829269687

`∑[(n+1)*A109017((n+1)²)]`
-/

namespace A115014.P5213919514829269687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109017 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P5213919514829269687

namespace A115014

/-- `∑[(n+1)*A109017((n+1)²)]` -/
def P5213919514829269687.Spec : Prop :=
  ∀ n, P5213919514829269687.a n = A115014 (n + 1)

end A115014

/-! ## A115014.P8921471317743857924

`∑[(n+1)*A133639((n+1)²)]`
-/

namespace A115014.P8921471317743857924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A133639 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115014.P8921471317743857924

namespace A115014

/-- `∑[(n+1)*A133639((n+1)²)]` -/
def P8921471317743857924.Spec : Prop :=
  ∀ n, P8921471317743857924.a n = A115014 (n + 1)

end A115014

/-!
# A115015: Sum_{i=1..n} (gcd(7,i)=1) i.

The programs for A115015, the canonical program `A115015.P16902854910239852381` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115015 has offset 1).

The definition of A115015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115015.P16902854910239852381

`∑[(n+1)%lcm(7, n+1)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115015

/-- `∑[(n+1)%lcm(7, n+1)]` -/
def P16902854910239852381.Spec : Prop :=
  ∀ n, (P16902854910239852381.a n : ℤ) = A115015 (n + 1)

theorem P16902854910239852381.correct : P16902854910239852381.Spec := by
  intro n
  simp only [A115015, Nat.add_sub_cancel]

end A115015

/-! ## A115015.P6672303289367780733

`∑[(n+1)*char[n-gcd(49, n)]]`
-/

namespace A115015.P6672303289367780733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd 49 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115015.P6672303289367780733

namespace A115015

/-- `∑[(n+1)*char[n-gcd(49, n)]]` -/
def P6672303289367780733.Spec : Prop :=
  ∀ n, (P6672303289367780733.a n : ℤ) = A115015 (n + 1)

end A115015

/-! ## A115015.P11239519609668696207

`∑[(n+1)*((n+1)^6)%7]`
-/

namespace A115015.P11239519609668696207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) ^ 6 % 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115015.P11239519609668696207

namespace A115015

/-- `∑[(n+1)*((n+1)^6)%7]` -/
def P11239519609668696207.Spec : Prop :=
  ∀ n, (P11239519609668696207.a n : ℤ) = A115015 (n + 1)

end A115015

/-! ## A115015.P12142402783459255307

`∑[(n+1)*floor(acot(val(n+1, 7)))]`
-/

namespace A115015.P12142402783459255307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊SequenceMachineLib.acot (SequenceMachineLib.valuation (n + 1) 7 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115015.P12142402783459255307

namespace A115015

/-- `∑[(n+1)*floor(acot(val(n+1, 7)))]` -/
def P12142402783459255307.Spec : Prop :=
  ∀ n, P12142402783459255307.a n = A115015 (n + 1)

end A115015

/-! ## A115015.P17087734297543617349

`∑[C(A106608(n+1), n)]`
-/

namespace A115015.P17087734297543617349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106608 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115015.P17087734297543617349

namespace A115015

/-- `∑[C(A106608(n+1), n)]` -/
def P17087734297543617349.Spec : Prop :=
  ∀ n, (P17087734297543617349.a n : ℤ) = A115015 (n + 1)

end A115015

/-! ## A115015.P7497788422734467279

`∑[C(A242603(n+1), n)]`
-/

namespace A115015.P7497788422734467279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A242603 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115015.P7497788422734467279

namespace A115015

/-- `∑[C(A242603(n+1), n)]` -/
def P7497788422734467279.Spec : Prop :=
  ∀ n, (P7497788422734467279.a n : ℤ) = A115015 (n + 1)

end A115015

/-! ## A115015.P11898223879974176808

`∑[(n+1)*A089509(n+1)²]`
-/

namespace A115015.P11898223879974176808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089509 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115015.P11898223879974176808

namespace A115015

/-- `∑[(n+1)*A089509(n+1)²]` -/
def P11898223879974176808.Spec : Prop :=
  ∀ n, P11898223879974176808.a n = A115015 (n + 1)

end A115015

/-! ## A115015.P7584220226366609017

`∑[(n+1)*A109720(n+1)]`
-/

namespace A115015.P7584220226366609017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115015.P7584220226366609017

namespace A115015

/-- `∑[(n+1)*A109720(n+1)]` -/
def P7584220226366609017.Spec : Prop :=
  ∀ n, P7584220226366609017.a n = A115015 (n + 1)

end A115015

/-! ## A115015.P14642830584295711462

`∑[(n+1)*A070472((n+1)²)]`
-/

namespace A115015.P14642830584295711462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A070472 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115015.P14642830584295711462

namespace A115015

/-- `∑[(n+1)*A070472((n+1)²)]` -/
def P14642830584295711462.Spec : Prop :=
  ∀ n, P14642830584295711462.a n = A115015 (n + 1)

end A115015

/-! ## A115015.P15323767656299234310

`∑[(n+1)*A175629((n+1)²)]`
-/

namespace A115015.P15323767656299234310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A175629 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115015.P15323767656299234310

namespace A115015

/-- `∑[(n+1)*A175629((n+1)²)]` -/
def P15323767656299234310.Spec : Prop :=
  ∀ n, P15323767656299234310.a n = A115015 (n + 1)

end A115015

/-!
# A115017: a(n) = largest triangular number dividing n.

The programs for A115017, there is no canonical definition to state claims against.
-/

/-! ## A115017.P4867278791054818610

`A083312(n+1)*(A083312(n+1)+1)/2`
-/

namespace A115017.P4867278791054818610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083312 (n + 1) * (A083312 (n + 1) + 1) : ℚ) / 2

end

end A115017.P4867278791054818610

/-! ## A115017.P16619146770179665220

`C(A133829(n+1), 2)`
-/

namespace A115017.P16619146770179665220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133829 (n + 1)).toNat 2

end

end A115017.P16619146770179665220

/-! ## A115017.P13476910958548189093

`C(A083312(n+1)+1, 2)`
-/

namespace A115017.P13476910958548189093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083312 (n + 1) + 1).toNat 2

end

end A115017.P13476910958548189093

/-! ## A115017.P8242065707537927778

`A000217(A083312(n+1))`
-/

namespace A115017.P8242065707537927778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A083312 (n + 1)).toNat

end

end A115017.P8242065707537927778

/-! ## A115017.P7270131750719367946

`A161680(A083312(n+1)+1)`
-/

namespace A115017.P7270131750719367946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A083312 (n + 1) + 1).toNat

end

end A115017.P7270131750719367946

/-! ## A115017.P7734225511448218157

`A179865(A083312(n+1)+1)`
-/

namespace A115017.P7734225511448218157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A083312 (n + 1) + 1).toNat

end

end A115017.P7734225511448218157

/-! ## A115017.P1273318222102691066

`A160791(2*A083312(n+1))`
-/

namespace A115017.P1273318222102691066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A083312 (n + 1)).toNat

end

end A115017.P1273318222102691066

/-! ## A115017.P14333457560597378968

`A000096(A083312(n+1)-1)+1`
-/

namespace A115017.P14333457560597378968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A083312 (n + 1) - 1).toNat + 1

end

end A115017.P14333457560597378968

/-! ## A115017.P2364611005116555515

`∑{d}[1-A000124(A083312(n+1)), A000010(#)]`
-/

namespace A115017.P2364611005116555515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000124 (A083312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A115017.P2364611005116555515

/-! ## A115017.P10276692403421563085

`A056536(A083312(n+1)²)`
-/

namespace A115017.P10276692403421563085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (A083312 (n + 1) ^ 2).toNat

end

end A115017.P10276692403421563085

/-! ## A115017.P6239265464700596879

`A000037(A083312(n+1)²)/2`
-/

namespace A115017.P6239265464700596879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (A083312 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A115017.P6239265464700596879

/-! ## A115017.P13344482440730235585

`A214928(A083312(n+1)²)`
-/

namespace A115017.P13344482440730235585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214928 (A083312 (n + 1) ^ 2).toNat

end

end A115017.P13344482440730235585

/-! ## A115017.P2194458825716188510

`A004525(A083312(n+1)+A083312(n+1)²)`
-/

namespace A115017.P2194458825716188510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A083312 (n + 1) + A083312 (n + 1) ^ 2).toNat

end

end A115017.P2194458825716188510

/-! ## A115017.P10356140166358443202

`A004525((A083312(n+1)+1)*A083312(n+1))`
-/

namespace A115017.P10356140166358443202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((A083312 (n + 1) + 1) * A083312 (n + 1)).toNat

end

end A115017.P10356140166358443202

/-! ## A115017.P2879157627951402513

`A066446(2^A083312(n+1))`
-/

namespace A115017.P2879157627951402513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A083312 (n + 1) : ℤ))).toNat

end

end A115017.P2879157627951402513

/-!
# A115018: Numbers k such that (k+1)*(k+2)^2 + 1 is prime.

The programs for A115018, there is no canonical definition to state claims against.
-/

/-! ## A115018.P7251700092468104245

`A154686(n+1)-1`
-/

namespace A115018.P7251700092468104245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1) - 1

end

end A115018.P7251700092468104245

/-! ## A115018.P2027270747983508096

`A111501(n+1)-2`
-/

namespace A115018.P2027270747983508096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1) - 2

end

end A115018.P2027270747983508096

/-! ## A115018.P1580195374436958845

`floor(root(A162292(n+1), 3))-1`
-/

namespace A115018.P1580195374436958845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162292 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋ - 1

end

end A115018.P1580195374436958845

/-! ## A115018.P15248582813051590143

`abs(A111501(Δ[n²]-n)-1)-1`
-/

namespace A115018.P15248582813051590143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111501 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1| - 1

end

end A115018.P15248582813051590143

/-! ## A115018.P12969514439002459261

`round(root(A162292(Δ[n²]-n), 3))-2`
-/

namespace A115018.P12969514439002459261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A162292 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (3 : ℝ))) - 2

end

end A115018.P12969514439002459261

/-! ## A115018.P18155893991618296336

`A023444(A111501(n+1))`
-/

namespace A115018.P18155893991618296336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A111501 (n + 1)).toNat

end

end A115018.P18155893991618296336

/-! ## A115018.P10051356601468357974

`A023443(A154686(n+1))`
-/

namespace A115018.P10051356601468357974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A154686 (n + 1)).toNat

end

end A115018.P10051356601468357974

/-! ## A115018.P5604347555399879565

`A023445(A111501(n+1)+1)`
-/

namespace A115018.P5604347555399879565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A111501 (n + 1) + 1).toNat

end

end A115018.P5604347555399879565

/-! ## A115018.P17844606041500765764

`A023446(A111501(n+1)+2)`
-/

namespace A115018.P17844606041500765764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A111501 (n + 1) + 2).toNat

end

end A115018.P17844606041500765764

/-! ## A115018.P12578487383367806188

`A023445(A154686(n+1)+2)`
-/

namespace A115018.P12578487383367806188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A154686 (n + 1) + 2).toNat

end

end A115018.P12578487383367806188

/-!
# A115022: a(n) = F(n-th squarefree)/product{p=primes,p|(n-th squarefree)} F(p), where F(m) is m-th Fibonacci number.

The programs for A115022, the canonical program `A115022.P12251329364689534778` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115022 has offset 1).

The definition of A115022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115022.P12251329364689534778

`A051348(A005117(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A115022

/-- `A051348(A005117(n+1))` -/
def P12251329364689534778.Spec : Prop :=
  ∀ n, P12251329364689534778.a n = A115022 (n + 1)

theorem P12251329364689534778.correct : P12251329364689534778.Spec := by
  intro n
  simp only [A115022, Nat.add_sub_cancel]

end A115022

/-! ## A115022.P5512006342410277285

`A051348(record[A003967(n+1)])`
-/

namespace A115022.P5512006342410277285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051348 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115022.P5512006342410277285

namespace A115022

/-- `A051348(record[A003967(n+1)])` -/
def P5512006342410277285.Spec : Prop :=
  ∀ n, P5512006342410277285.a n = A115022 (n + 1)

end A115022

/-! ## A115022.P15663094995999554938

`A051348(record[A007913(n+1)])`
-/

namespace A115022.P15663094995999554938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051348 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115022.P15663094995999554938

namespace A115022

/-- `A051348(record[A007913(n+1)])` -/
def P15663094995999554938.Spec : Prop :=
  ∀ n, P15663094995999554938.a n = A115022 (n + 1)

end A115022

/-! ## A115022.P9057371465815835820

`A051348(record[A007947(n+1)])`
-/

namespace A115022.P9057371465815835820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051348 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115022.P9057371465815835820

namespace A115022

/-- `A051348(record[A007947(n+1)])` -/
def P9057371465815835820.Spec : Prop :=
  ∀ n, P9057371465815835820.a n = A115022 (n + 1)

end A115022

/-! ## A115022.P9487103702340172831

`A051348(record[A055231(n+1)])`
-/

namespace A115022.P9487103702340172831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051348 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115022.P9487103702340172831

namespace A115022

/-- `A051348(record[A055231(n+1)])` -/
def P9487103702340172831.Spec : Prop :=
  ∀ n, P9487103702340172831.a n = A115022 (n + 1)

end A115022

/-! ## A115022.P4895317801935216558

`A051348(A088610(2*n+1))`
-/

namespace A115022.P4895317801935216558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051348 (A088610 (2 * n + 1)).toNat

end

end A115022.P4895317801935216558

namespace A115022

/-- `A051348(A088610(2*n+1))` -/
def P4895317801935216558.Spec : Prop :=
  ∀ n, P4895317801935216558.a n = A115022 (n + 1)

end A115022

/-!
# A115024: Natural numbers n such that the number of prime factors of n (counted with multiplicity) is equal to the number of decimal digits of n.

The programs for A115024, there is no canonical definition to state claims against.
-/

/-! ## A115024.P10491841334312110959

`∪[A036338(n+1), A167050(n+1)]`
-/

namespace A115024.P10491841334312110959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115024.P10491841334312110959

/-! ## A115024.P1099678104182593713

`∪[A036338(n+1), A208361(n+1)]`
-/

namespace A115024.P1099678104182593713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115024.P1099678104182593713

/-! ## A115024.P4100073251154807285

`eq[A001222(n+1), A055642(n+1)]+1`
-/

namespace A115024.P4100073251154807285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115024.P4100073251154807285

/-! ## A115024.P13815180911320953265

`eq[A001222(n+1), A004218(n+2)]+1`
-/

namespace A115024.P13815180911320953265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115024.P13815180911320953265

/-! ## A115024.P9033290211497717158

`eq[A001222(A028310(n)), A055642(n)]`
-/

namespace A115024.P9033290211497717158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115024.P9033290211497717158

/-! ## A115024.P13919408437288200244

`eq[A001222(A257143(n)), A055642(n)]`
-/

namespace A115024.P13919408437288200244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A257143 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115024.P13919408437288200244

/-! ## A115024.P12652577473782667657

`eq[A055642(n+1), A252736(2*(n+1))]+1`
-/

namespace A115024.P12652577473782667657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115024.P12652577473782667657

/-! ## A115024.P6690112514646969007

`eq[A055642(n), A252736(A008486(n)-n)]`
-/

namespace A115024.P6690112514646969007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A008486 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115024.P6690112514646969007

/-! ## A115024.P13126914380949111371

`eq[A055642(n), A252736(A008486(n))]`
-/

namespace A115024.P13126914380949111371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115024.P13126914380949111371

/-!
# A115025: a(n) = n-th element of n-th row of triangle shown below.

The programs for A115025, the canonical program `A115025.P2134596540067734763` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115025 has offset 1).

The definition of A115025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115025.P2134596540067734763

`A030101(n)*A054243(n)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A115025

/-- `A030101(n)*A054243(n)+1` -/
def P2134596540067734763.Spec : Prop :=
  ∀ n, P2134596540067734763.a n = A115025 (n + 1)

theorem P2134596540067734763.correct : P2134596540067734763.Spec := by
  intro n
  simp only [A115025, Nat.add_sub_cancel]

end A115025

/-! ## A115025.P4956472874176015822

`A049773((2^n+n)/A040001(n))`
-/

namespace A115025.P4956472874176015822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (SequenceMachineLib.roundAway ((2 ^ n + n : ℚ) / (A040001 n : ℚ))).toNat

end

end A115025.P4956472874176015822

namespace A115025

/-- `A049773((2^n+n)/A040001(n))` -/
def P4956472874176015822.Spec : Prop :=
  ∀ n, P4956472874176015822.a n = A115025 (n + 1)

end A115025

/-! ## A115025.P16453969120076482859

`A264596(A006127(n))-A264596(n)`
-/

namespace A115025.P16453969120076482859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 (A006127 n).toNat - A264596 n

end

end A115025.P16453969120076482859

namespace A115025

/-- `A264596(A006127(n))-A264596(n)` -/
def P16453969120076482859.Spec : Prop :=
  ∀ n, P16453969120076482859.a n = A115025 (n + 1)

end A115025

/-! ## A115025.P4335541292619675804

`A328399(2*A030101(n)*A054243(n))`
-/

namespace A115025.P4335541292619675804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * (A030101 n * A054243 n)).toNat

end

end A115025.P4335541292619675804

namespace A115025

/-- `A328399(2*A030101(n)*A054243(n))` -/
def P4335541292619675804.Spec : Prop :=
  ∀ n, P4335541292619675804.a n = A115025 (n + 1)

end A115025

/-! ## A115025.P18405459852570610301

`A264596(A000079(n)+n)-A264596(n)`
-/

namespace A115025.P18405459852570610301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 (A000079 n + (n : ℤ)).toNat - A264596 n

end

end A115025.P18405459852570610301

namespace A115025

/-- `A264596(A000079(n)+n)-A264596(n)` -/
def P18405459852570610301.Spec : Prop :=
  ∀ n, P18405459852570610301.a n = A115025 (n + 1)

end A115025

/-!
# A115029: Number of partitions of n such that all parts, with the possible exception of the smallest, appear only once.

The programs for A115029, there is no canonical definition to state claims against.
-/

/-! ## A115029.P15936651558190371733

`A000041(n)-A375405(n)`
-/

namespace A115029.P15936651558190371733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A375405 n

end

end A115029.P15936651558190371733

/-! ## A115029.P7083713318365722638

`A067588(A028310(n))-A005896(n)`
-/

namespace A115029.P7083713318365722638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 (A028310 n).toNat - A005896 n

end

end A115029.P7083713318365722638

/-! ## A115029.P17302600029626229959

`A067588(A000007(n)+n)-A005896(n)`
-/

namespace A115029.P17302600029626229959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 (A000007 n + (n : ℤ)).toNat - A005896 n

end

end A115029.P17302600029626229959

/-! ## A115029.P6648770751995332759

`A000007(n)-(A005896(n)-A067588(n))`
-/

namespace A115029.P6648770751995332759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A005896 n - A067588 n)

end

end A115029.P6648770751995332759

/-! ## A115029.P15401623445864634994

`A028384(∑{e}[n+1, #])-(A005896(n)-A067588(n))`
-/

namespace A115029.P15401623445864634994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028384 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) - (A005896 n - A067588 n)

end

end A115029.P15401623445864634994

/-! ## A115029.P16172387015781593790

`A008683(A008574(n))+A067588(n)-A005896(n)`
-/

namespace A115029.P16172387015781593790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (A067588 n - A005896 n)

end

end A115029.P16172387015781593790

/-! ## A115029.P15062123942507552140

`A008683((n+1)²)+A067588(n)-A005896(n)`
-/

namespace A115029.P15062123942507552140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (A067588 n - A005896 n)

end

end A115029.P15062123942507552140

/-!
# A115030: Number of distinct sums of subsets of the first n prime numbers.

The programs for A115030, there is no canonical definition to state claims against.
-/

/-! ## A115030.P12806040704479516488

`A082548(n+2)-1`
-/

namespace A115030.P12806040704479516488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082548 (n + 2) - 1

end

end A115030.P12806040704479516488

/-! ## A115030.P9624004637167882767

`∑[abs(Δ[A082548(n+1)])]`
-/

namespace A115030.P9624004637167882767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082548 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115030.P9624004637167882767

/-! ## A115030.P14106807051993949233

`∑[record[A006530(comp[7*n])]]`
-/

namespace A115030.P14106807051993949233
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115030.P14106807051993949233

/-! ## A115030.P10051441024213106499

`∑[comp[∪[A002808(n+1), 7*n]]]`
-/

namespace A115030.P10051441024213106499
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = (x : ℤ)) ∨ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115030.P10051441024213106499

/-! ## A115030.P6781557473001946596

`∑[comp[A018252(n%a(n-1))]]` with `a(0)=0, a(1)=7`
-/

namespace A115030.P6781557473001946596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n f2 =>
  A018252 (Int.tmod (n : ℤ) (f2 (n - 1))).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115030.P6781557473001946596

/-!
# A115031: 

The programs for A115031, there is no canonical definition to state claims against.
-/

/-! ## A115031.P577377671874655634

`a(n-1)^a(n-1)-a(n-2)^a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A115031.P577377671874655634
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) ^ (a (n - 1)) - a (n - 2) ^ (a (n - 2))

end

end A115031.P577377671874655634

/-!
# A115032: Expansion of (5-14*x+x^2)/((1-x)*(x^2-18*x+1)).

The programs for A115032, the canonical program `A115032.P9481508863594796618` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115032 has offset 0).

The definition of A115032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-14x+x^2)/(1-19x+19x^2-x^3))` (program `A115032.P9481508863594796618`, by `A115032.P9481508863594796618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115032.P9481508863594796618

`ogf((5-14x+x^2)/(1-19x+19x^2-x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115032

/-- `ogf((5-14x+x^2)/(1-19x+19x^2-x^3))` -/
def P9481508863594796618.Spec : Prop :=
  ∀ n, P9481508863594796618.a n = A115032 n

theorem P9481508863594796618.correct : P9481508863594796618.Spec := by
  intro n
  simp only [A115032]

end A115032

/-! ## A115032.P7259600221880203100

`18*a(n-1)-a(n-2)-8` with `a(0)=5, a(1)=81`
-/

namespace A115032.P7259600221880203100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 81] fun n a =>
  18 * a (n - 1) - a (n - 2) - 8

end

end A115032.P7259600221880203100

namespace A115032

/-- `18*a(n-1)-a(n-2)-8` -/
def P7259600221880203100.Spec : Prop :=
  ∀ n, P7259600221880203100.a n = A115032 n

end A115032

/-! ## A115032.P3888218530049727858

`(A023039(n+1)+1)/2`
-/

namespace A115032.P3888218530049727858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023039 (n + 1) + 1 : ℚ) / 2

end

end A115032.P3888218530049727858

namespace A115032

/-- `(A023039(n+1)+1)/2` -/
def P3888218530049727858.Spec : Prop :=
  ∀ n, P3888218530049727858.a n = (A115032 n : ℚ)

end A115032

/-! ## A115032.P381306595726334139

`(9*A000045(6*(n+1))-A000045(6*n)+8)/16`
-/

namespace A115032.P381306595726334139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * A000045 (6 * (n + 1)) - A000045 (6 * n) + 8 : ℚ) / 16

end

end A115032.P381306595726334139

namespace A115032

/-- `(9*A000045(6*(n+1))-A000045(6*n)+8)/16` -/
def P381306595726334139.Spec : Prop :=
  ∀ n, P381306595726334139.a n = (A115032 n : ℚ)

end A115032

/-! ## A115032.P16298073478029880710

`ceil(∑[ϕ^(3*(2*n+1))])`
-/

namespace A115032.P16298073478029880710
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (3 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A115032.P16298073478029880710

namespace A115032

/-- `ceil(∑[ϕ^(3*(2*n+1))])` -/
def P16298073478029880710.Spec : Prop :=
  ∀ n, P16298073478029880710.a n = A115032 n

end A115032

/-! ## A115032.P10681381373936365392

`A132584(n+1)+1`
-/

namespace A115032.P10681381373936365392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132584 (n + 1) + 1

end

end A115032.P10681381373936365392

namespace A115032

/-- `A132584(n+1)+1` -/
def P10681381373936365392.Spec : Prop :=
  ∀ n, P10681381373936365392.a n = A115032 n

end A115032

/-! ## A115032.P7306938334368570504

`or(1, A001077(n+1)²)`
-/

namespace A115032.P7306938334368570504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001077 (n + 1) ^ 2)

end

end A115032.P7306938334368570504

namespace A115032

/-- `or(1, A001077(n+1)²)` -/
def P7306938334368570504.Spec : Prop :=
  ∀ n, P7306938334368570504.a n = A115032 n

end A115032

/-! ## A115032.P8612278339156559187

`∑[A041030(2*n)]+1`
-/

namespace A115032.P8612278339156559187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041030 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A115032.P8612278339156559187

namespace A115032

/-- `∑[A041030(2*n)]+1` -/
def P8612278339156559187.Spec : Prop :=
  ∀ n, P8612278339156559187.a n = A115032 n

end A115032

/-! ## A115032.P10307456345316610444

`A267797(n)+a(n-1)` with `a(0)=5`
-/

namespace A115032.P10307456345316610444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A267797 n + a (n - 1)

end

end A115032.P10307456345316610444

namespace A115032

/-- `A267797(n)+a(n-1)` -/
def P10307456345316610444.Spec : Prop :=
  ∀ n, P10307456345316610444.a n = A115032 n

end A115032

/-! ## A115032.P178581038457519279

`∑[A014448(2*n+1)]+1`
-/

namespace A115032.P178581038457519279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A115032.P178581038457519279

namespace A115032

/-- `∑[A014448(2*n+1)]+1` -/
def P178581038457519279.Spec : Prop :=
  ∀ n, P178581038457519279.a n = A115032 n

end A115032

/-!
# A115033: Alternately multiply and divide, with a(1)=2 and a(2)=3.

The programs for A115033, there is no canonical definition to state claims against.
-/

/-! ## A115033.P15504681625399774493

`a(n-2)*a(n-4)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=2`
-/

namespace A115033.P15504681625399774493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6, 2] fun n a =>
  a (n - 2) * a (n - 4)

end

end A115033.P15504681625399774493

/-! ## A115033.P5377142961119681309

`A003961(A115034(n+1))*A115034(n+3)`
-/

namespace A115033.P5377142961119681309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A115034 (n + 1)).toNat * A115034 (n + 3)

end

end A115033.P5377142961119681309

/-!
# A115034: Alternately multiply and divide, with a(1)=1 and a(2)=2.

The programs for A115034, there is no canonical definition to state claims against.
-/

/-! ## A115034.P8665171687539709420

`a(n-2)*a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A115034.P8665171687539709420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 1] fun n a =>
  a (n - 2) * a (n - 4)

end

end A115034.P8665171687539709420

/-! ## A115034.P4331806863123236040

`a(n-2)/a(n-4)^(-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A115034.P4331806863123236040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2, 1] fun n a =>
  a (n - 2) / a (n - 4) ^ (-1 : ℤ)

end

end A115034.P4331806863123236040

/-! ## A115034.P8639564389491226674

`2^Δ[A339572(n)]`
-/

namespace A115034.P8639564389491226674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A115034.P8639564389491226674

/-! ## A115034.P5828272010798967601

`2^Δ[A115339(n+1)]`
-/

namespace A115034.P5828272010798967601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A115034.P5828272010798967601

/-! ## A115034.P16792706478232688746

`2^A000045(abs(3*round(n/2)-2*n))`
-/

namespace A115034.P16792706478232688746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000045 |3 * SequenceMachineLib.roundAway ((n : ℚ) / 2) - (2 * n : ℤ)|.toNat : ℤ)

end

end A115034.P16792706478232688746

/-!
# A115035: Natural numbers which when multiplied by 10 do not yield valid duplicate bridge scores.

The programs for A115035, there is no canonical definition to state claims against.
-/

/-! ## A115035.P9327711938668438577

`record[A341541(2*(n+2))+A229969(3*n+4)]`
-/

namespace A115035.P9327711938668438577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341541 (2 * (n + 2)) + A229969 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115035.P9327711938668438577

/-! ## A115035.P3071734924736375866

`lt[A003418(n), A186939(A316311(n+1))]`
-/

namespace A115035.P3071734924736375866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A316311 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115035.P3071734924736375866

/-! ## A115035.P3695286525396655088

`∑[A324753(A324747(n+1)%A324741(n))]`
-/

namespace A115035.P3695286525396655088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324753 (Int.tmod (A324747 (n + 1)) (A324741 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115035.P3695286525396655088

/-!
# A115036: Even terms of A116883.

The programs for A115036, the canonical program `A115036.P13082315978685076259` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115036 has offset 1).

The definition of A115036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115036.P13082315978685076259

`2*lt[xor(n, -n)², 2*n]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115036

/-- `2*lt[xor(n, -n)², 2*n]` -/
def P13082315978685076259.Spec : Prop :=
  ∀ n, (P13082315978685076259.a n : ℤ) = A115036 (n + 1)

theorem P13082315978685076259.correct : P13082315978685076259.Spec := by
  intro n
  simp only [A115036, Nat.add_sub_cancel]

end A115036

/-! ## A115036.P1768006335282594729

`2*A281005(n+1)`
-/

namespace A115036.P1768006335282594729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281005 (n + 1)

end

end A115036.P1768006335282594729

namespace A115036

/-- `2*A281005(n+1)` -/
def P1768006335282594729.Spec : Prop :=
  ∀ n, P1768006335282594729.a n = A115036 (n + 1)

end A115036

/-! ## A115036.P13839166052320051994

`2*(lt[0, A131576(n+1)]+1)`
-/

namespace A115036.P13839166052320051994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A115036.P13839166052320051994

namespace A115036

/-- `2*(lt[0, A131576(n+1)]+1)` -/
def P13839166052320051994.Spec : Prop :=
  ∀ n, (P13839166052320051994.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P12886547853902888946

`2*comp[A053645(n+1)*A072376(n)]`
-/

namespace A115036.P12886547853902888946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1) * A072376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115036.P12886547853902888946

namespace A115036

/-- `2*comp[A053645(n+1)*A072376(n)]` -/
def P12886547853902888946.Spec : Prop :=
  ∀ n, (P12886547853902888946.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P2379378548522233893

`A005408(A281005(n+1)-1)+1`
-/

namespace A115036.P2379378548522233893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A281005 (n + 1) - 1).toNat + 1

end

end A115036.P2379378548522233893

namespace A115036

/-- `A005408(A281005(n+1)-1)+1` -/
def P2379378548522233893.Spec : Prop :=
  ∀ n, P2379378548522233893.a n = A115036 (n + 1)

end A115036

/-! ## A115036.P12269390094898647237

`A004277(A281005(n+1))`
-/

namespace A115036.P12269390094898647237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A281005 (n + 1)).toNat

end

end A115036.P12269390094898647237

namespace A115036

/-- `A004277(A281005(n+1))` -/
def P12269390094898647237.Spec : Prop :=
  ∀ n, P12269390094898647237.a n = A115036 (n + 1)

end A115036

/-! ## A115036.P7231679975649880726

`A130773(A281005(n+1)-1)+1`
-/

namespace A115036.P7231679975649880726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A281005 (n + 1) - 1).toNat + 1

end

end A115036.P7231679975649880726

namespace A115036

/-- `A130773(A281005(n+1)-1)+1` -/
def P7231679975649880726.Spec : Prop :=
  ∀ n, P7231679975649880726.a n = A115036 (n + 1)

end A115036

/-! ## A115036.P7063572184306568552

`2*(lt[A003056(n+1), A000265(n+1)]+1)`
-/

namespace A115036.P7063572184306568552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A115036.P7063572184306568552

namespace A115036

/-- `2*(lt[A003056(n+1), A000265(n+1)]+1)` -/
def P7063572184306568552.Spec : Prop :=
  ∀ n, (P7063572184306568552.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P17802513141927906754

`A245092(A281005(n+1)+A281005(n+1))`
-/

namespace A115036.P17802513141927906754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A281005 (n + 1) + A281005 (n + 1)).toNat

end

end A115036.P17802513141927906754

namespace A115036

/-- `A245092(A281005(n+1)+A281005(n+1))` -/
def P17802513141927906754.Spec : Prop :=
  ∀ n, P17802513141927906754.a n = A115036 (n + 1)

end A115036

/-! ## A115036.P17737214777750598214

`2*lt[2*n+1, A191871(n)]`
-/

namespace A115036.P17737214777750598214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115036.P17737214777750598214

namespace A115036

/-- `2*lt[2*n+1, A191871(n)]` -/
def P17737214777750598214.Spec : Prop :=
  ∀ n, (P17737214777750598214.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P7283465824832520281

`A316571(A281005(n+1)+1)`
-/

namespace A115036.P7283465824832520281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A281005 (n + 1) + 1).toNat

end

end A115036.P7283465824832520281

namespace A115036

/-- `A316571(A281005(n+1)+1)` -/
def P7283465824832520281.Spec : Prop :=
  ∀ n, P7283465824832520281.a n = A115036 (n + 1)

end A115036

/-! ## A115036.P15533788676710131961

`2*lt[0, A327188(n)]`
-/

namespace A115036.P15533788676710131961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115036.P15533788676710131961

namespace A115036

/-- `2*lt[0, A327188(n)]` -/
def P15533788676710131961.Spec : Prop :=
  ∀ n, (P15533788676710131961.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P3363812953575903882

`2*comp[lcm(n, A053644(n))]`
-/

namespace A115036.P3363812953575903882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A053644 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A115036.P3363812953575903882

namespace A115036

/-- `2*comp[lcm(n, A053644(n))]` -/
def P3363812953575903882.Spec : Prop :=
  ∀ n, (P3363812953575903882.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P15525715954483987965

`2*comp[A006257(n)*A053644(n)]`
-/

namespace A115036.P15525715954483987965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n * A053644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115036.P15525715954483987965

namespace A115036

/-- `2*comp[A006257(n)*A053644(n)]` -/
def P15525715954483987965.Spec : Prop :=
  ∀ n, (P15525715954483987965.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P1792960484330604915

`∩[2*n, A085234(n+1)]`
-/

namespace A115036.P1792960484330604915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115036.P1792960484330604915

namespace A115036

/-- `∩[2*n, A085234(n+1)]` -/
def P1792960484330604915.Spec : Prop :=
  ∀ n, (P1792960484330604915.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P7595618704408633600

`∩[A085234(n+1), A004271(n)]`
-/

namespace A115036.P7595618704408633600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115036.P7595618704408633600

namespace A115036

/-- `∩[A085234(n+1), A004271(n)]` -/
def P7595618704408633600.Spec : Prop :=
  ∀ n, (P7595618704408633600.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P4532200539862374498

`∩[A085234(n+1), A004272(n)]`
-/

namespace A115036.P4532200539862374498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115036.P4532200539862374498

namespace A115036

/-- `∩[A085234(n+1), A004272(n)]` -/
def P4532200539862374498.Spec : Prop :=
  ∀ n, (P4532200539862374498.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P8920611791737217171

`∩[A085234(n+1), A004275(n)]`
-/

namespace A115036.P8920611791737217171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115036.P8920611791737217171

namespace A115036

/-- `∩[A085234(n+1), A004275(n)]` -/
def P8920611791737217171.Spec : Prop :=
  ∀ n, (P8920611791737217171.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P13511723176123075439

`∩[A085234(n+1), A004277(n)]`
-/

namespace A115036.P13511723176123075439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115036.P13511723176123075439

namespace A115036

/-- `∩[A085234(n+1), A004277(n)]` -/
def P13511723176123075439.Spec : Prop :=
  ∀ n, (P13511723176123075439.a n : ℤ) = A115036 (n + 1)

end A115036

/-! ## A115036.P12432099837849151239

`∩[A085234(n+1), A004279(n)]`
-/

namespace A115036.P12432099837849151239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115036.P12432099837849151239

namespace A115036

/-- `∩[A085234(n+1), A004279(n)]` -/
def P12432099837849151239.Spec : Prop :=
  ∀ n, (P12432099837849151239.a n : ℤ) = A115036 (n + 1)

end A115036

/-!
# A115039: a(n) is the greatest k such that A115038(n)^2 + prime(n) is a k-th power.

The programs for A115039, there is no canonical definition to state claims against.
-/

/-! ## A115039.P3927495858964617895

`A102299(A141310(n)^A125072(n+1))`
-/

namespace A115039.P3927495858964617895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102299 (SequenceMachineLib.roundAway ((A141310 n : ℚ) ^ (A125072 (n + 1) : ℤ))).toNat

end

end A115039.P3927495858964617895

/-! ## A115039.P13408188873966805774

`A359893(A260682(n+1))%4+2`
-/

namespace A115039.P13408188873966805774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359893 (A260682 (n + 1)).toNat) 4 + 2

end

end A115039.P13408188873966805774

/-! ## A115039.P1515792067747713926

`A102299((n+1)^A125072(n+1))`
-/

namespace A115039.P1515792067747713926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102299 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A125072 (n + 1) : ℤ))).toNat

end

end A115039.P1515792067747713926

/-! ## A115039.P16360089107396704964

`∑{e}[A256662(n)+A173380(n+3), #]`
-/

namespace A115039.P16360089107396704964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256662 n + A173380 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A115039.P16360089107396704964

/-! ## A115039.P117115139607329571

`A247509(A367578(n)+A325986(n+1))`
-/

namespace A115039.P117115139607329571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247509 (A367578 n + A325986 (n + 1)).toNat

end

end A115039.P117115139607329571

/-!
# A115042: Positions of 1's in A094405, "a(n) = sum of all previous terms modulo n, a(1)=1".

The programs for A115042, there is no canonical definition to state claims against.
-/

/-! ## A115042.P12064973739094463851

`eq[A066910(n+1), A099894(A099894(n))]`
-/

namespace A115042.P12064973739094463851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (A099894 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115042.P12064973739094463851

/-! ## A115042.P1057057266634807559

`eq[A066910(n+1), A196563(A335283(n+1))]`
-/

namespace A115042.P1057057266634807559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A335283 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115042.P1057057266634807559

/-!
# A115043: a(0)=3, a(1)=5. a(n) = a(n-1)*a(n-2) if n odd, else a(n) = a(n-1)/a(n-2).

The programs for A115043, the canonical program `A115043.P4892705410191094824` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115043 has offset 0).

The definition of A115043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115043.P4892705410191094824

`a(n-2)*a(n-4)` with `a(0)=3, a(1)=5, a(2)=15, a(3)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115043

/-- `a(n-2)*a(n-4)` -/
def P4892705410191094824.Spec : Prop :=
  ∀ n, (P4892705410191094824.a n : ℤ) = A115043 n

theorem P4892705410191094824.correct : P4892705410191094824.Spec := by
  intro n
  simp only [A115043]

end A115043

/-! ## A115043.P9036713975197364137

`A003961(A115033(n+1))`
-/

namespace A115043.P9036713975197364137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A115033 (n + 1)).toNat

end

end A115043.P9036713975197364137

namespace A115043

/-- `A003961(A115033(n+1))` -/
def P9036713975197364137.Spec : Prop :=
  ∀ n, P9036713975197364137.a n = A115043 n

end A115043

/-! ## A115043.P1713405060352214011

`A319986(A015790(n)*A115033(n+1))`
-/

namespace A115043.P1713405060352214011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319986 (A015790 n * A115033 (n + 1)).toNat

end

end A115043.P1713405060352214011

namespace A115043

/-- `A319986(A015790(n)*A115033(n+1))` -/
def P1713405060352214011.Spec : Prop :=
  ∀ n, P1713405060352214011.a n = A115043 n

end A115043

/-! ## A115043.P14442982840370829565

`A319986(A115033(n+1)^A015790(n))`
-/

namespace A115043.P14442982840370829565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319986 (SequenceMachineLib.roundAway ((A115033 (n + 1) : ℚ) ^ (A015790 n : ℤ))).toNat

end

end A115043.P14442982840370829565

namespace A115043

/-- `A319986(A115033(n+1)^A015790(n))` -/
def P14442982840370829565.Spec : Prop :=
  ∀ n, P14442982840370829565.a n = A115043 n

end A115043

/-! ## A115043.P17988706749800452018

`A319986(C(A115033(n+1), A015790(n)))`
-/

namespace A115043.P17988706749800452018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319986 (Nat.choose (A115033 (n + 1)).toNat (A015790 n).toNat)

end

end A115043.P17988706749800452018

namespace A115043

/-- `A319986(C(A115033(n+1), A015790(n)))` -/
def P17988706749800452018.Spec : Prop :=
  ∀ n, P17988706749800452018.a n = A115043 n

end A115043

/-!
# A115045: Strobogrammatic time display in hours and minutes on a 24-hour four spaced digital clock. Leading zeros omitted.

The programs for A115045, there is no canonical definition to state claims against.
-/

/-! ## A115045.P13900456843842095583

`A101244(n)/A194673(n²+2)`
-/

namespace A115045.P13900456843842095583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101244 n : ℚ) / (A194673 (n ^ 2 + 2) : ℚ)

end

end A115045.P13900456843842095583

/-! ## A115045.P828631800670795487

`A131372(A231556(n))+A034087(n+1)`
-/

namespace A115045.P828631800670795487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131372 (A231556 n).toNat + A034087 (n + 1)

end

end A115045.P828631800670795487

/-!
# A115047: a(3)=1; a(n) = Sum_{i=1..n-3} binomial(n-4,i-1)*binomial(n,i+1)*a(i+2)*a(n-i)*i*(n-i-2)/(2*(n-1)) for n > 3.

The programs for A115047, there is no canonical definition to state claims against.
-/

/-! ## A115047.P3035358005307602024

`A288674(n²*a(n-1))` with `a(0)=1`
-/

namespace A115047.P3035358005307602024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288674 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A115047.P3035358005307602024

/-!
# A115048: Count backwards from 100 in steps modulo n.

The programs for A115048, the canonical program `A115048.P4151729091254466173` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115048 has offset 1).

The definition of A115048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115048.P4151729091254466173

`a(n-1)-a(n-1)%(n+1)` with `a(0)=100`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115048

/-- `a(n-1)-a(n-1)%(n+1)` -/
def P4151729091254466173.Spec : Prop :=
  ∀ n, P4151729091254466173.a n = A115048 (n + 1)

theorem P4151729091254466173.correct : P4151729091254466173.Spec := by
  intro n
  simp only [A115048, Nat.add_sub_cancel]

end A115048

/-!
# A115051: Number of distinct prime factors of F(n + L(n)) where F(n) is the Fibonacci number and L(n) is the Lucas number.

The programs for A115051, there is no canonical definition to state claims against.
-/

/-! ## A115051.P9461364735702037326

`A022307(A000032(n)+n)`
-/

namespace A115051.P9461364735702037326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A000032 n + (n : ℤ)).toNat

end

end A115051.P9461364735702037326

/-!
# A115052: Expansion of 1/(3*x^2 - 3*x + 1)^2.

The programs for A115052, the canonical program `A115052.P3475671530160945867` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115052 has offset 0).

The definition of A115052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-18x^3+9x^4))` (program `A115052.P3475671530160945867`, by `A115052.P3475671530160945867.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115052.P3475671530160945867

`ogf(1/(1-6x+15x^2-18x^3+9x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115052

/-- `ogf(1/(1-6x+15x^2-18x^3+9x^4))` -/
def P3475671530160945867.Spec : Prop :=
  ∀ n, P3475671530160945867.a n = A115052 n

theorem P3475671530160945867.correct : P3475671530160945867.Spec := by
  intro n
  simp only [A115052]

end A115052

/-! ## A115052.P17150101139303206420

`∑[∑[(n+3)*A057682(n)]+1]`
-/

namespace A115052.P17150101139303206420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A057682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115052.P17150101139303206420

namespace A115052

/-- `∑[∑[(n+3)*A057682(n)]+1]` -/
def P17150101139303206420.Spec : Prop :=
  ∀ n, P17150101139303206420.a n = A115052 n

end A115052

/-! ## A115052.P6581850099876459183

`∑[A236311(∑[n+1]+1)]`
-/

namespace A115052.P6581850099876459183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236311 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115052.P6581850099876459183

namespace A115052

/-- `∑[A236311(∑[n+1]+1)]` -/
def P6581850099876459183.Spec : Prop :=
  ∀ n, P6581850099876459183.a n = A115052 n

end A115052

/-! ## A115052.P16905930158069344242

`∑[∑[A220399(A046691(n)+6)]]`
-/

namespace A115052.P16905930158069344242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220399 (A046691 n + 6).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115052.P16905930158069344242

namespace A115052

/-- `∑[∑[A220399(A046691(n)+6)]]` -/
def P16905930158069344242.Spec : Prop :=
  ∀ n, P16905930158069344242.a n = A115052 n

end A115052

/-! ## A115052.P557489506316929786

`∑[∑[A220399(A167614(n+1)-1)]]`
-/

namespace A115052.P557489506316929786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220399 (A167614 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115052.P557489506316929786

namespace A115052

/-- `∑[∑[A220399(A167614(n+1)-1)]]` -/
def P557489506316929786.Spec : Prop :=
  ∀ n, P557489506316929786.a n = A115052 n

end A115052

/-! ## A115052.P9649328993325966508

`∑[∑[A220399(A034856(n+1)+4)]]`
-/

namespace A115052.P9649328993325966508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220399 (A034856 (n + 1) + 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115052.P9649328993325966508

namespace A115052

/-- `∑[∑[A220399(A034856(n+1)+4)]]` -/
def P9649328993325966508.Spec : Prop :=
  ∀ n, P9649328993325966508.a n = A115052 n

end A115052

/-!
# A115053: Series expansion of x*(x+3)^2/(3*x+1)^2.

The programs for A115053, the canonical program `A115053.P11726586156420957882` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115053 has offset 0).

The definition of A115053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115053.P11726586156420957882

`ogf((9x+6x^2+x^3)/(1+6x+9x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115053

/-- `ogf((9x+6x^2+x^3)/(1+6x+9x^2))` -/
def P11726586156420957882.Spec : Prop :=
  ∀ n, P11726586156420957882.a n = A115053 n

theorem P11726586156420957882.correct : P11726586156420957882.Spec := by
  intro n
  simp only [A115053]

end A115053

/-!
# A115055: Lower level digraph derived from a voltage graph.

The programs for A115055, the canonical program `A115055.P9647304167478946192` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115055 has offset 1).

The definition of A115055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115055.P9647304167478946192

`a(n-3)+3*a(n-4)+3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115055

/-- `a(n-3)+3*a(n-4)+3*a(n-5)+a(n-6)` -/
def P9647304167478946192.Spec : Prop :=
  ∀ n, (P9647304167478946192.a n : ℤ) = A115055 (n + 1)

theorem P9647304167478946192.correct : P9647304167478946192.Spec := by
  intro n
  simp only [A115055, Nat.add_sub_cancel]

end A115055

/-! ## A115055.P17994528299844940343

`A375321(n)-a(n-1)-A375319(n)` with `a(0)=0`
-/

namespace A115055.P17994528299844940343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A375321 n - a (n - 1) - A375319 n

end

end A115055.P17994528299844940343

namespace A115055

/-- `A375321(n)-a(n-1)-A375319(n)` -/
def P17994528299844940343.Spec : Prop :=
  ∀ n, P17994528299844940343.a n = A115055 (n + 1)

end A115055

/-!
# A115056: a(n) = n*(n^2-1)*(3*n+2).

The programs for A115056, there is no canonical definition to state claims against.
-/

/-! ## A115056.P1834899412088407034

`(n-1)*((n-1)²-1)*(3*(n-1)+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115056.P1834899412088407034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((n : ℤ) - 1) ^ 2 - 1) * (3 * ((n : ℤ) - 1) + 2)

end

end A115056.P1834899412088407034

/-! ## A115056.P12454657769484314234

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=48, a(4)=264`
-/

namespace A115056.P12454657769484314234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 48, 264] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A115056.P12454657769484314234

/-! ## A115056.P7288319605795016564

`abs((n-2)*(A005945(n)-A000326(n)))`
-/

namespace A115056.P7288319605795016564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 2) * (A005945 n - A000326 n)|

end

end A115056.P7288319605795016564

/-! ## A115056.P17882073630548406534

`A007531(n)*A008585(n)-A007531(n)`
-/

namespace A115056.P17882073630548406534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n * A008585 n - A007531 n

end

end A115056.P17882073630548406534

/-! ## A115056.P14357553561837787938

`A052762(n)+2*A052762(n+1)`
-/

namespace A115056.P14357553561837787938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n + 2 * A052762 (n + 1)

end

end A115056.P14357553561837787938

/-! ## A115056.P13369844825110433503

`A011915(2*n)-A011915(n+2)`
-/

namespace A115056.P13369844825110433503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011915 (2 * n) - A011915 (n + 2)

end

end A115056.P13369844825110433503

/-! ## A115056.P12192030840652125351

`A033996(A000326(n))-A000326(n)*A033996(n)`
-/

namespace A115056.P12192030840652125351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 (A000326 n).toNat - A000326 n * A033996 n

end

end A115056.P12192030840652125351

/-!
# A115057: Number of (2n+1)-almost primes less than or equal to (n-th n-almost prime) * ((n+1)-th (n+1)-almostprime).

The programs for A115057, there is no canonical definition to state claims against.
-/

/-! ## A115057.P3307594378538483394

`A058933(A014613(n+1)*A014614(n+2))`
-/

namespace A115057.P3307594378538483394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A014613 (n + 1) * A014614 (n + 2)).toNat

end

end A115057.P3307594378538483394

/-!
# A115058: Primes p such that 3*p+2 is not prime.

The programs for A115058, there is no canonical definition to state claims against.
-/

/-! ## A115058.P13289726110377685687

`∪[A370156(n+1), A370157(n+1)]`
-/

namespace A115058.P13289726110377685687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115058.P13289726110377685687

/-! ## A115058.P13474483146963781333

`p?[(n+1)*(A075743(n+1)+1)]`
-/

namespace A115058.P13474483146963781333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A075743 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115058.P13474483146963781333

/-! ## A115058.P7144438871800245321

`p?[(n+1)*(1-A156706(n+1))]`
-/

namespace A115058.P7144438871800245321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A156706 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115058.P7144438871800245321

/-! ## A115058.P11667761567337513329

`p?[or(n+1, A075743(n+2))+1]`
-/

namespace A115058.P11667761567337513329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A075743 (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115058.P11667761567337513329

/-! ## A115058.P9493596727129218585

`p?[A075743(2*n+1)+A005408(n)]`
-/

namespace A115058.P9493596727129218585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1) + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115058.P9493596727129218585

/-! ## A115058.P18409380185824432244

`p?[n+1+A075743(A005843(n)+1)+n]`
-/

namespace A115058.P18409380185824432244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A075743 (A005843 n + 1).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115058.P18409380185824432244

/-! ## A115058.P9711663335278465133

`p?[A005408(n)-A075743(A005408(n))]`
-/

namespace A115058.P9711663335278465133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A075743 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115058.P9711663335278465133

/-! ## A115058.P8599789851953178588

`record[A006530(A199593(n+1)-1)]`
-/

namespace A115058.P8599789851953178588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A199593 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115058.P8599789851953178588

/-! ## A115058.P14575434290867642232

`record[A020639(A199593(n+1)-1)]`
-/

namespace A115058.P14575434290867642232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A199593 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115058.P14575434290867642232

/-! ## A115058.P16329150548995796177

`p?[A153170(n+1)]`
-/

namespace A115058.P16329150548995796177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115058.P16329150548995796177

/-! ## A115058.P12140969081414360005

`p?[comp[A228121(n+1)-2]]`
-/

namespace A115058.P12140969081414360005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A115058.P12140969081414360005

/-! ## A115058.P4802356805731647347

`p?[lt[1, A001222(3*n+2)]]`
-/

namespace A115058.P4802356805731647347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A115058.P4802356805731647347

/-! ## A115058.P14870781623687203879

`filter[A153170(n+1), A010051(#)]`
-/

namespace A115058.P14870781623687203879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A115058.P14870781623687203879

/-! ## A115058.P10231286095357600854

`∩[A000040(n+1), A153170(n+1)]`
-/

namespace A115058.P10231286095357600854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115058.P10231286095357600854

/-! ## A115058.P16223874890667380611

`∩[A008578(n+1), A153170(n+1)]`
-/

namespace A115058.P16223874890667380611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115058.P16223874890667380611

/-! ## A115058.P14283303894117186857

`∩[A045319(n+1), A153170(n+1)]`
-/

namespace A115058.P14283303894117186857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115058.P14283303894117186857

/-! ## A115058.P9407657867839765353

`∩[A045344(n+1), A153170(n+1)]`
-/

namespace A115058.P9407657867839765353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115058.P9407657867839765353

/-! ## A115058.P16141373082302642054

`∩[A153170(n+1), A158611(n+1)]`
-/

namespace A115058.P16141373082302642054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115058.P16141373082302642054

/-! ## A115058.P14873265907916485343

`∩[A153170(n+1), A182986(n+1)]`
-/

namespace A115058.P14873265907916485343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115058.P14873265907916485343

/-! ## A115058.P741897466253340428

`p?[lt[1, A064680(A000005(3*n+2))]]`
-/

namespace A115058.P741897466253340428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A000005 (3 * n + 2)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A115058.P741897466253340428

/-!
# A115059: a(n+4) = a(n+3)+a(n+1)+a(n)+k(n), where k(n) = 0, 1, 0, or -1 according to n mod 4.

The programs for A115059, the canonical program `A115059.P4237892651091270764` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115059 has offset 0).

The definition of A115059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115059.P4237892651091270764

`a(n-1)+a(n-3)+a(n-4)-(-(n%2))^∑[n]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115059

/-- `a(n-1)+a(n-3)+a(n-4)-(-(n%2))^∑[n]` -/
def P4237892651091270764.Spec : Prop :=
  ∀ n, P4237892651091270764.a n = A115059 n

theorem P4237892651091270764.correct : P4237892651091270764.Spec := by
  intro n
  simp only [A115059]

end A115059

/-! ## A115059.P4122913903257425030

`A074677(n)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A115059.P4122913903257425030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A074677 n - a (n - 2)

end

end A115059.P4122913903257425030

namespace A115059

/-- `A074677(n)-a(n-2)` -/
def P4122913903257425030.Spec : Prop :=
  ∀ n, P4122913903257425030.a n = A115059 n

end A115059

/-! ## A115059.P6569071905878912384

`A006498(n-1)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A115059.P6569071905878912384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A006498 (n - 1) - a (n - 2)

end

end A115059.P6569071905878912384

namespace A115059

/-- `A006498(n-1)-a(n-2)` -/
def P6569071905878912384.Spec : Prop :=
  ∀ n, P6569071905878912384.a n = A115059 n

end A115059

/-! ## A115059.P7142591758179195002

`A000045(n)-(a(n-4)+2*a(n-2))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A115059.P7142591758179195002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  A000045 n - (a (n - 4) + 2 * a (n - 2))

end

end A115059.P7142591758179195002

namespace A115059

/-- `A000045(n)-(a(n-4)+2*a(n-2))` -/
def P7142591758179195002.Spec : Prop :=
  ∀ n, P7142591758179195002.a n = A115059 n

end A115059

/-!
# A115061: a(n) is the number of occurrences of the n-th prime number in A051697.

The programs for A115061, the canonical program `A115061.P11822645177236110390` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115061 has offset 1).

The definition of A115061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115061.P9041165483561146820

`floor(A162345(n+1)+acot(n))`
-/

namespace A115061.P9041165483561146820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162345 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A115061.P9041165483561146820

namespace A115061

/-- `floor(A162345(n+1)+acot(n))` -/
def P9041165483561146820.Spec : Prop :=
  ∀ n, P9041165483561146820.a n = A115061 (n + 1)

end A115061

/-! ## A115061.P11822645177236110390

`A162345(n+1)+A000007(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A115061

/-- `A162345(n+1)+A000007(n)` -/
def P11822645177236110390.Spec : Prop :=
  ∀ n, P11822645177236110390.a n = A115061 (n + 1)

theorem P11822645177236110390.correct : P11822645177236110390.Spec := by
  intro n
  simp only [A115061, Nat.add_sub_cancel]

end A115061

/-! ## A115061.P15212564141615151842

`floor(A162345(n+1)+1/A006093(n+1))`
-/

namespace A115061.P15212564141615151842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162345 (n + 1) : ℚ) + 1 / (A006093 (n + 1) : ℚ)⌋

end

end A115061.P15212564141615151842

namespace A115061

/-- `floor(A162345(n+1)+1/A006093(n+1))` -/
def P15212564141615151842.Spec : Prop :=
  ∀ n, P15212564141615151842.a n = A115061 (n + 1)

end A115061

/-! ## A115061.P11434784429474592387

`floor(A162345(n+1)+1/A083851(n+1))`
-/

namespace A115061.P11434784429474592387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162345 (n + 1) : ℚ) + 1 / (A083851 (n + 1) : ℚ)⌋

end

end A115061.P11434784429474592387

namespace A115061

/-- `floor(A162345(n+1)+1/A083851(n+1))` -/
def P11434784429474592387.Spec : Prop :=
  ∀ n, P11434784429474592387.a n = A115061 (n + 1)

end A115061

/-! ## A115061.P5596421371582166663

`floor(A162345(n+1)+1/A187968(n+1))`
-/

namespace A115061.P5596421371582166663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162345 (n + 1) : ℚ) + 1 / (A187968 (n + 1) : ℚ)⌋

end

end A115061.P5596421371582166663

namespace A115061

/-- `floor(A162345(n+1)+1/A187968(n+1))` -/
def P5596421371582166663.Spec : Prop :=
  ∀ n, P5596421371582166663.a n = A115061 (n + 1)

end A115061

/-! ## A115061.P2006764726498521015

`floor(A162345(n+1)+2/A007510(n+1))`
-/

namespace A115061.P2006764726498521015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162345 (n + 1) : ℚ) + 2 / (A007510 (n + 1) : ℚ)⌋

end

end A115061.P2006764726498521015

namespace A115061

/-- `floor(A162345(n+1)+2/A007510(n+1))` -/
def P2006764726498521015.Spec : Prop :=
  ∀ n, P2006764726498521015.a n = A115061 (n + 1)

end A115061

/-! ## A115061.P9176054610659963036

`A230366(floor(1/(n+1))+1)+A162345(n+1)`
-/

namespace A115061.P9176054610659963036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230366 (⌊1 / (n + 1 : ℚ)⌋ + 1).toNat + A162345 (n + 1)

end

end A115061.P9176054610659963036

namespace A115061

/-- `A230366(floor(1/(n+1))+1)+A162345(n+1)` -/
def P9176054610659963036.Spec : Prop :=
  ∀ n, P9176054610659963036.a n = A115061 (n + 1)

end A115061

/-! ## A115061.P4411398412388702315

`A162345(n+1)+A008578(n+2)-A006005(n+1)`
-/

namespace A115061.P4411398412388702315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1) + (A008578 (n + 2) - A006005 (n + 1))

end

end A115061.P4411398412388702315

namespace A115061

/-- `A162345(n+1)+A008578(n+2)-A006005(n+1)` -/
def P4411398412388702315.Spec : Prop :=
  ∀ n, P4411398412388702315.a n = A115061 (n + 1)

end A115061

/-!
# A115062: Prime nearest to 10^n. In case of a tie, choose the smaller.

The programs for A115062, there is no canonical definition to state claims against.
-/

/-! ## A115062.P12822213856939891045

`10^n+A117190(n)`
-/

namespace A115062.P12822213856939891045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + A117190 n

end

end A115062.P12822213856939891045

/-! ## A115062.P2729720443944535725

`A117190(n)+A011557(n)`
-/

namespace A115062.P2729720443944535725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117190 n + A011557 n

end

end A115062.P2729720443944535725

/-! ## A115062.P2659246877989173577

`A117190(n)+Δ[A002275(n)]`
-/

namespace A115062.P2659246877989173577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117190 n + (f1 (n + 1) - f1 n)

end

end A115062.P2659246877989173577

/-! ## A115062.P12729545255600378822

`A117190(n)+Δ[A047855(n)]`
-/

namespace A115062.P12729545255600378822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117190 n + (f1 (n + 1) - f1 n)

end

end A115062.P12729545255600378822

/-! ## A115062.P6538728096398749395

`A062397(n)+A117190(n)-1`
-/

namespace A115062.P6538728096398749395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n + (A117190 n - 1)

end

end A115062.P6538728096398749395

/-! ## A115062.P10766540727784662471

`A117190(n)+A017934(2*n)`
-/

namespace A115062.P10766540727784662471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117190 n + A017934 (2 * n)

end

end A115062.P10766540727784662471

/-! ## A115062.P15554491009991499230

`A117190(n)+A017936(2*n+1)`
-/

namespace A115062.P15554491009991499230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117190 n + A017936 (2 * n + 1)

end

end A115062.P15554491009991499230

/-! ## A115062.P4487285951069535478

`A117190(n)+A000079(n)*A000351(n)`
-/

namespace A115062.P4487285951069535478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117190 n + A000079 n * A000351 n

end

end A115062.P4487285951069535478

/-! ## A115062.P3978664259092688114

`A003617(n+1)+A117190(n)-A033873(n)`
-/

namespace A115062.P3978664259092688114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) + (A117190 n - A033873 n)

end

end A115062.P3978664259092688114

/-!
# A115063: Natural numbers of the form p^F(n_p)*q^F(n_q)*r^F(n_r)*...*z^F(n_z), where p,q,r,... are distinct primes and F(n) is a Fibonacci number.

The programs for A115063, the canonical program `A115063.P16993984617944221155` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115063 has offset 1).

The definition of A115063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115063.P8287735837124123849

`record[A064971(n+1)/A331107(n+1)]`
-/

namespace A115063.P8287735837124123849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A331107 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115063.P8287735837124123849

namespace A115063

/-- `record[A064971(n+1)/A331107(n+1)]` -/
def P8287735837124123849.Spec : Prop :=
  ∀ n, P8287735837124123849.a n = (A115063 (n + 1) : ℚ)

end A115063

/-! ## A115063.P16993984617944221155

`eq[A034444(n+1), A318465(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A115063

/-- `eq[A034444(n+1), A318465(n+1)]+1` -/
def P16993984617944221155.Spec : Prop :=
  ∀ n, (P16993984617944221155.a n : ℤ) = A115063 (n + 1)

theorem P16993984617944221155.correct : P16993984617944221155.Spec := by
  intro n
  simp only [A115063, Nat.add_sub_cancel]

end A115063

/-! ## A115063.P9680283464210657460

`eq[A034448(n+1), A331107(n+1)]+1`
-/

namespace A115063.P9680283464210657460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331107 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115063.P9680283464210657460

namespace A115063

/-- `eq[A034448(n+1), A331107(n+1)]+1` -/
def P9680283464210657460.Spec : Prop :=
  ∀ n, (P9680283464210657460.a n : ℤ) = A115063 (n + 1)

end A115063

/-! ## A115063.P1009109779092640903

`eq[1, A166918(A051903(n+1)!)]+1`
-/

namespace A115063.P1009109779092640903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 (Nat.factorial (A051903 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115063.P1009109779092640903

namespace A115063

/-- `eq[1, A166918(A051903(n+1)!)]+1` -/
def P1009109779092640903.Spec : Prop :=
  ∀ n, (P1009109779092640903.a n : ℤ) = A115063 (n + 1)

end A115063

/-! ## A115063.P17536653147220933419

`record[A073353(n+1)-A053166(A268385(n+1))]`
-/

namespace A115063.P17536653147220933419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - A053166 (A268385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115063.P17536653147220933419

namespace A115063

/-- `record[A073353(n+1)-A053166(A268385(n+1))]` -/
def P17536653147220933419.Spec : Prop :=
  ∀ n, P17536653147220933419.a n = A115063 (n + 1)

end A115063

/-!
# A115064: Continued fraction expansion of Viswanath's constant A078416.

The programs for A115064, there is no canonical definition to state claims against.
-/

/-! ## A115064.P14197609229030104403

`gcd(A138935(n+1), A303764(A303839(n)))`
-/

namespace A115064.P14197609229030104403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138935 (n + 1)) (A303764 (A303839 n).toNat)

end

end A115064.P14197609229030104403

/-!
# A115065: Number of points with integer coordinates inside the equilateral triangle with base [0,n].

The programs for A115065, there is no canonical definition to state claims against.
-/

/-! ## A115065.P15758590435700128034

`∑[floor(floor(n/2)/γ)+1]`
-/

namespace A115065.P15758590435700128034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 2⌋ : ℝ) / Real.eulerMascheroniConstant⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115065.P15758590435700128034

/-! ## A115065.P10853161996323667028

`abs(∑[A188072(n+1)-n])`
-/

namespace A115065.P10853161996323667028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A115065.P10853161996323667028

/-! ## A115065.P9347255252486430153

`∑[A172475(A052928(n))]+1+n`
-/

namespace A115065.P9347255252486430153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A115065.P9347255252486430153

/-! ## A115065.P2494883596147003337

`∑[A188072(n+1)]-A000217(n)`
-/

namespace A115065.P2494883596147003337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 n

end

end A115065.P2494883596147003337

/-! ## A115065.P13931000336796457907

`a(A023443(n))+A172475(A052928(n))+1` with `a(0)=1`
-/

namespace A115065.P13931000336796457907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat + (A172475 (A052928 n).toNat + 1)

end

end A115065.P13931000336796457907

/-!
# A115066: Chebyshev polynomial of the first kind T(n,x), evaluated at x=n.

The programs for A115066, there is no canonical definition to state claims against.
-/

/-! ## A115066.P4217846366689666008

`A101124(∑[4*n])`
-/

namespace A115066.P4217846366689666008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115066.P4217846366689666008

/-! ## A115066.P16855827927310742221

`A322836(∑[4*n])`
-/

namespace A115066.P16855827927310742221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115066.P16855827927310742221

/-! ## A115066.P2950071499365306870

`abs(A101124(A046092(n)))`
-/

namespace A115066.P2950071499365306870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101124 (A046092 n).toNat|

end

end A115066.P2950071499365306870

/-! ## A115066.P10044124168495923634

`abs(A101124(∑[A008586(n)]))`
-/

namespace A115066.P10044124168495923634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A115066.P10044124168495923634

/-! ## A115066.P3142430021474834160

`abs(A322836(∑[A008586(n)]))`
-/

namespace A115066.P3142430021474834160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A115066.P3142430021474834160

/-!
# A115067: a(n) = (3*n^2 - n - 2)/2.

The programs for A115067, the canonical program `A115067.P3639683867303312803` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115067 has offset 1).

The definition of A115067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(n+1)²-(n+1)-2)/2` (program `A115067.P7877350052958052208`, by `A115067.P7877350052958052208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115067.P3028874459803870274

`n*(3*n+5)/2`
-/

namespace A115067.P3028874459803870274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (3 * n + 5) : ℚ) / 2

end

end A115067.P3028874459803870274

namespace A115067

/-- `n*(3*n+5)/2` -/
def P3028874459803870274.Spec : Prop :=
  ∀ n, P3028874459803870274.a n = (A115067 (n + 1) : ℚ)

theorem P3028874459803870274.correct : P3028874459803870274.Spec := by
  intro n
  induction n with
  | zero => simp [A115067, A115067.P3028874459803870274.a, A115067.P3639683867303312803.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A115067, Nat.add_sub_cancel, A115067.P3028874459803870274.a, A115067.P3639683867303312803.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A115067

/-! ## A115067.P3639683867303312803

`3*(n+1)+a(n-1)-2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115067

/-- `3*(n+1)+a(n-1)-2` -/
def P3639683867303312803.Spec : Prop :=
  ∀ n, P3639683867303312803.a n = A115067 (n + 1)

theorem P3639683867303312803.correct : P3639683867303312803.Spec := by
  intro n
  simp only [A115067, Nat.add_sub_cancel]

end A115067

/-! ## A115067.P7877350052958052208

`(3*(n+1)²-(n+1)-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115067.P7877350052958052208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) - 2 : ℚ) / 2

end

end A115067.P7877350052958052208

namespace A115067

/-- `(3*(n+1)²-(n+1)-2)/2` -/
def P7877350052958052208.Spec : Prop :=
  ∀ n, P7877350052958052208.a n = (A115067 (n + 1) : ℚ)

theorem P7877350052958052208.correct : P7877350052958052208.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A115067, Nat.add_sub_cancel, A115067.P7877350052958052208.a, A115067.P3639683867303312803.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A115067, Nat.add_sub_cancel, A115067.P7877350052958052208.a, A115067.P3639683867303312803.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A115067

/-! ## A115067.P1658033143548961122

`A055998(2*(n+1)-2)-A055998(n)`
-/

namespace A115067.P1658033143548961122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (2 * (n + 1) - 2) - A055998 n

end

end A115067.P1658033143548961122

namespace A115067

/-- `A055998(2*(n+1)-2)-A055998(n)` -/
def P1658033143548961122.Spec : Prop :=
  ∀ n, P1658033143548961122.a n = A115067 (n + 1)

end A115067

/-! ## A115067.P1874326644085107769

`Δ[(n+2)*C(n, 2)]`
-/

namespace A115067.P1874326644085107769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A115067.P1874326644085107769

namespace A115067

/-- `Δ[(n+2)*C(n, 2)]` -/
def P1874326644085107769.Spec : Prop :=
  ∀ n, P1874326644085107769.a n = A115067 (n + 1)

end A115067

/-! ## A115067.P3197642309964921953

`∑[a(n-1)+3]` with `a(0)=0, a(1)=4`
-/

namespace A115067.P3197642309964921953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115067.P3197642309964921953

namespace A115067

/-- `∑[a(n-1)+3]` -/
def P3197642309964921953.Spec : Prop :=
  ∀ n, (P3197642309964921953.a n : ℤ) = A115067 (n + 1)

end A115067

/-! ## A115067.P12018760562516517683

`∑[record[xor(1, n+1)]+n]`
-/

namespace A115067.P12018760562516517683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115067.P12018760562516517683

namespace A115067

/-- `∑[record[xor(1, n+1)]+n]` -/
def P12018760562516517683.Spec : Prop :=
  ∀ n, (P12018760562516517683.a n : ℤ) = A115067 (n + 1)

end A115067

/-! ## A115067.P4335023789657545791

`∑[ogf((4x-x^2)/(1-2x+x^2))]`
-/

namespace A115067.P4335023789657545791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115067.P4335023789657545791

namespace A115067

/-- `∑[ogf((4x-x^2)/(1-2x+x^2))]` -/
def P4335023789657545791.Spec : Prop :=
  ∀ n, P4335023789657545791.a n = A115067 (n + 1)

end A115067

/-! ## A115067.P5563862234299532958

`ogf((4x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A115067.P5563862234299532958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1] [1, -3, 3, -1] n

end

end A115067.P5563862234299532958

namespace A115067

/-- `ogf((4x-x^2)/(1-3x+3x^2-x^3))` -/
def P5563862234299532958.Spec : Prop :=
  ∀ n, P5563862234299532958.a n = A115067 (n + 1)

end A115067

/-! ## A115067.P321763388163957945

`n-∑[a(n-1)-3]` with `a(0)=0`
-/

namespace A115067.P321763388163957945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115067.P321763388163957945

namespace A115067

/-- `n-∑[a(n-1)-3]` -/
def P321763388163957945.Spec : Prop :=
  ∀ n, P321763388163957945.a n = A115067 (n + 1)

end A115067

/-! ## A115067.P8265356753743702208

`∑[comp[(n+1)^(n²%3)]]`
-/

namespace A115067.P8265356753743702208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n ^ 2 % 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115067.P8265356753743702208

namespace A115067

/-- `∑[comp[(n+1)^(n²%3)]]` -/
def P8265356753743702208.Spec : Prop :=
  ∀ n, (P8265356753743702208.a n : ℤ) = A115067 (n + 1)

end A115067

/-! ## A115067.P12674936391273764353

`∑[comp[(n+1)^gcd(3, n)²]]`
-/

namespace A115067.P12674936391273764353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.gcd 3 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115067.P12674936391273764353

namespace A115067

/-- `∑[comp[(n+1)^gcd(3, n)²]]` -/
def P12674936391273764353.Spec : Prop :=
  ∀ n, (P12674936391273764353.a n : ℤ) = A115067 (n + 1)

end A115067

/-! ## A115067.P12181802746699855434

`3*n+a(n-1)+1` with `a(0)=0`
-/

namespace A115067.P12181802746699855434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * n + (a (n - 1) + 1)

end

end A115067.P12181802746699855434

namespace A115067

/-- `3*n+a(n-1)+1` -/
def P12181802746699855434.Spec : Prop :=
  ∀ n, (P12181802746699855434.a n : ℤ) = A115067 (n + 1)

end A115067

/-! ## A115067.P8610248317594135668

`(n+1)*2*n-C(n, 2)`
-/

namespace A115067.P8610248317594135668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n) : ℤ) - (Nat.choose n 2 : ℤ)

end

end A115067.P8610248317594135668

namespace A115067

/-- `(n+1)*2*n-C(n, 2)` -/
def P8610248317594135668.Spec : Prop :=
  ∀ n, P8610248317594135668.a n = A115067 (n + 1)

end A115067

/-! ## A115067.P8514826342176955664

`a(n-1)+Δ[n²]+n` with `a(0)=0`
-/

namespace A115067.P8514826342176955664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ))

end

end A115067.P8514826342176955664

namespace A115067

/-- `a(n-1)+Δ[n²]+n` -/
def P8514826342176955664.Spec : Prop :=
  ∀ n, P8514826342176955664.a n = A115067 (n + 1)

end A115067

/-! ## A115067.P18443952309289958004

`n+1+a(n-1)+n+n` with `a(0)=0`
-/

namespace A115067.P18443952309289958004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n + 1 + (a (n - 1) + n + n)

end

end A115067.P18443952309289958004

namespace A115067

/-- `n+1+a(n-1)+n+n` -/
def P18443952309289958004.Spec : Prop :=
  ∀ n, (P18443952309289958004.a n : ℤ) = A115067 (n + 1)

end A115067

/-! ## A115067.P9963914367377436266

`floor(a(n-1)-(3*(1-n)-4))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A115067.P9963914367377436266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (3 * (1 - (n : ℤ)) - 4)

end

end A115067.P9963914367377436266

namespace A115067

/-- `floor(a(n-1)-(3*(1-n)-4))` -/
def P9963914367377436266.Spec : Prop :=
  ∀ n, P9963914367377436266.a n = A115067 (n + 1)

end A115067

/-! ## A115067.P916500236467046333

`2*(a(n-1)-(a(n-2)-3)/2)` with `a(0)=0, a(1)=4`
-/

namespace A115067.P916500236467046333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 * (a (n - 1) - (a (n - 2) - 3) / 2)

end

end A115067.P916500236467046333

namespace A115067

/-- `2*(a(n-1)-(a(n-2)-3)/2)` -/
def P916500236467046333.Spec : Prop :=
  ∀ n, P916500236467046333.a n = (A115067 (n + 1) : ℚ)

end A115067

/-! ## A115067.P11672664394856970082

`n+A045943(n)`
-/

namespace A115067.P11672664394856970082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A045943 n

end

end A115067.P11672664394856970082

namespace A115067

/-- `n+A045943(n)` -/
def P11672664394856970082.Spec : Prop :=
  ∀ n, P11672664394856970082.a n = A115067 (n + 1)

end A115067

/-! ## A115067.P1059722955183967310

`A140090(n)-n`
-/

namespace A115067.P1059722955183967310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 n - (n : ℤ)

end

end A115067.P1059722955183967310

namespace A115067

/-- `A140090(n)-n` -/
def P1059722955183967310.Spec : Prop :=
  ∀ n, P1059722955183967310.a n = A115067 (n + 1)

end A115067

/-!
# A115068: Triangle read by rows: T(n,k) = number of elements in the Coxeter group D_n with descent set contained in {s_k}, for 0<=k<=n-1.

The programs for A115068, the canonical program `A115068.P17894343994682237628` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115068 has offset 1).

The definition of A115068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115068.P11433915424141266962

`2^(row(n)-col(n))*C(row(n)+1, col(n))`
-/

namespace A115068.P11433915424141266962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℚ)

end

end A115068.P11433915424141266962

namespace A115068

/-- `2^(row(n)-col(n))*C(row(n)+1, col(n))` -/
def P11433915424141266962.Spec : Prop :=
  ∀ n, P11433915424141266962.a n = (A115068 (n + 1) : ℚ)

end A115068

/-! ## A115068.P8974909294123909673

`A080928(∑[char[∑[n]]]+n)`
-/

namespace A115068.P8974909294123909673
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080928 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A115068.P8974909294123909673

namespace A115068

/-- `A080928(∑[char[∑[n]]]+n)` -/
def P8974909294123909673.Spec : Prop :=
  ∀ n, P8974909294123909673.a n = A115068 (n + 1)

end A115068

/-! ## A115068.P8942928152884870083

`A074909(n)*A130321(n)`
-/

namespace A115068.P8942928152884870083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A130321 n

end

end A115068.P8942928152884870083

namespace A115068

/-- `A074909(n)*A130321(n)` -/
def P8942928152884870083.Spec : Prop :=
  ∀ n, P8942928152884870083.a n = A115068 (n + 1)

end A115068

/-! ## A115068.P17894343994682237628

`A059268(A061579(n))*A074909(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A115068

/-- `A059268(A061579(n))*A074909(n)` -/
def P17894343994682237628.Spec : Prop :=
  ∀ n, P17894343994682237628.a n = A115068 (n + 1)

theorem P17894343994682237628.correct : P17894343994682237628.Spec := by
  intro n
  simp only [A115068, Nat.add_sub_cancel]

end A115068

/-! ## A115068.P5770925078394947094

`A007318(A014132(n+1)-1)*A130321(n)`
-/

namespace A115068.P5770925078394947094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1) - 1).toNat * A130321 n

end

end A115068.P5770925078394947094

namespace A115068

/-- `A007318(A014132(n+1)-1)*A130321(n)` -/
def P5770925078394947094.Spec : Prop :=
  ∀ n, P5770925078394947094.a n = A115068 (n + 1)

end A115068

/-! ## A115068.P15611523551692331065

`A007318(n+1)+A193818(n)-A199011(n)`
-/

namespace A115068.P15611523551692331065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A193818 n - A199011 n)

end

end A115068.P15611523551692331065

namespace A115068

/-- `A007318(n+1)+A193818(n)-A199011(n)` -/
def P15611523551692331065.Spec : Prop :=
  ∀ n, P15611523551692331065.a n = A115068 (n + 1)

end A115068

/-! ## A115068.P758293350512372938

`A193862(A061579(n))`
-/

namespace A115068.P758293350512372938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193862 (A061579 n).toNat

end

end A115068.P758293350512372938

namespace A115068

/-- `A193862(A061579(n))` -/
def P758293350512372938.Spec : Prop :=
  ∀ n, P758293350512372938.a n = A115068 (n + 1)

end A115068

/-! ## A115068.P16028060017822645797

`A276985(A038722(n+1))/2`
-/

namespace A115068.P16028060017822645797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276985 (A038722 (n + 1)).toNat : ℚ) / 2

end

end A115068.P16028060017822645797

namespace A115068

/-- `A276985(A038722(n+1))/2` -/
def P16028060017822645797.Spec : Prop :=
  ∀ n, P16028060017822645797.a n = (A115068 (n + 1) : ℚ)

end A115068

/-! ## A115068.P11484834654634297044

`A119468(A002024(n+1)+n)`
-/

namespace A115068.P11484834654634297044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119468 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A115068.P11484834654634297044

namespace A115068

/-- `A119468(A002024(n+1)+n)` -/
def P11484834654634297044.Spec : Prop :=
  ∀ n, P11484834654634297044.a n = A115068 (n + 1)

end A115068

/-! ## A115068.P18179585597841118204

`A038207(A014132(n+1)-1)/2`
-/

namespace A115068.P18179585597841118204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 (A014132 (n + 1) - 1).toNat : ℚ) / 2

end

end A115068.P18179585597841118204

namespace A115068

/-- `A038207(A014132(n+1)-1)/2` -/
def P18179585597841118204.Spec : Prop :=
  ∀ n, P18179585597841118204.a n = (A115068 (n + 1) : ℚ)

end A115068

/-! ## A115068.P10271848752502826458

`A038207(A080036(n+1)-2)/2`
-/

namespace A115068.P10271848752502826458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 (A080036 (n + 1) - 2).toNat : ℚ) / 2

end

end A115068.P10271848752502826458

namespace A115068

/-- `A038207(A080036(n+1)-2)/2` -/
def P10271848752502826458.Spec : Prop :=
  ∀ n, P10271848752502826458.a n = (A115068 (n + 1) : ℚ)

end A115068

/-! ## A115068.P4867408187153204607

`A007318(lt[1, A130321(n)])*A130321(n)`
-/

namespace A115068.P4867408187153204607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A130321 n

end

end A115068.P4867408187153204607

namespace A115068

/-- `A007318(lt[1, A130321(n)])*A130321(n)` -/
def P4867408187153204607.Spec : Prop :=
  ∀ n, P4867408187153204607.a n = A115068 (n + 1)

end A115068

/-! ## A115068.P4357610868397037519

`A007318(eq[1, A130296(n+1)])*A130321(n)`
-/

namespace A115068.P4357610868397037519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A130321 n

end

end A115068.P4357610868397037519

namespace A115068

/-- `A007318(eq[1, A130296(n+1)])*A130321(n)` -/
def P4357610868397037519.Spec : Prop :=
  ∀ n, P4357610868397037519.a n = A115068 (n + 1)

end A115068

/-! ## A115068.P16738041665511673757

`A013609(A061579(n)+A003057(n+2))/2`
-/

namespace A115068.P16738041665511673757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 (A061579 n + A003057 (n + 2)).toNat : ℚ) / 2

end

end A115068.P16738041665511673757

namespace A115068

/-- `A013609(A061579(n)+A003057(n+2))/2` -/
def P16738041665511673757.Spec : Prop :=
  ∀ n, P16738041665511673757.a n = (A115068 (n + 1) : ℚ)

end A115068

/-! ## A115068.P3572411980007946620

`A198792(2*A014132(n+1)-n)`
-/

namespace A115068.P3572411980007946620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A115068.P3572411980007946620

namespace A115068

/-- `A198792(2*A014132(n+1)-n)` -/
def P3572411980007946620.Spec : Prop :=
  ∀ n, P3572411980007946620.a n = A115068 (n + 1)

end A115068

/-! ## A115068.P17239160860952772005

`A198792(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A115068.P17239160860952772005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A115068.P17239160860952772005

namespace A115068

/-- `A198792(A014132(n+1)+A014132(n+1)-n)` -/
def P17239160860952772005.Spec : Prop :=
  ∀ n, P17239160860952772005.a n = A115068 (n + 1)

end A115068

/-!
# A115069: a(n) = 3^b(n), where b(n) is #{primes p=1 mod 3 dividing n}.

The programs for A115069, the canonical program `A115069.P6246575855030010184` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115069 has offset 1).

The definition of A115069 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115069.P6246575855030010184

`3^A005088(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115069

/-- `3^A005088(n+1)` -/
def P6246575855030010184.Spec : Prop :=
  ∀ n, P6246575855030010184.a n = (A115069 (n + 1) : ℚ)

end A115069

/-! ## A115069.P13917820695524439731

`A060839(∏{p}[n+1, #])`
-/

namespace A115069.P13917820695524439731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060839 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A115069.P13917820695524439731

namespace A115069

/-- `A060839(∏{p}[n+1, #])` -/
def P13917820695524439731.Spec : Prop :=
  ∀ n, P13917820695524439731.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P915858966879081726

`∏{p}[n+1, gcd(3, A000010(#))]`
-/

namespace A115069.P915858966879081726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd 3 (A000010 p)

end

end A115069.P915858966879081726

namespace A115069

/-- `∏{p}[n+1, gcd(3, A000010(#))]` -/
def P915858966879081726.Spec : Prop :=
  ∀ n, (P915858966879081726.a n : ℤ) = A115069 (n + 1)

end A115069

/-! ## A115069.P17865659043968728492

`∏{p}[n+1, gcd(6, A000203(#)+#)]`
-/

namespace A115069.P17865659043968728492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd 6 (A000203 p + (p : ℤ))

end

end A115069.P17865659043968728492

namespace A115069

/-- `∏{p}[n+1, gcd(6, A000203(#)+#)]` -/
def P17865659043968728492.Spec : Prop :=
  ∀ n, (P17865659043968728492.a n : ℤ) = A115069 (n + 1)

end A115069

/-! ## A115069.P4969948270744303350

`A060839(A007947(n+1))`
-/

namespace A115069.P4969948270744303350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060839 (A007947 (n + 1)).toNat

end

end A115069.P4969948270744303350

namespace A115069

/-- `A060839(A007947(n+1))` -/
def P4969948270744303350.Spec : Prop :=
  ∀ n, P4969948270744303350.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P8751969938100092640

`A060839(A038502(n+1))`
-/

namespace A115069.P8751969938100092640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060839 (A038502 (n + 1)).toNat

end

end A115069.P8751969938100092640

namespace A115069

/-- `A060839(A038502(n+1))` -/
def P8751969938100092640.Spec : Prop :=
  ∀ n, P8751969938100092640.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P14140239634814466447

`A060839(A065330(n+1))`
-/

namespace A115069.P14140239634814466447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060839 (A065330 (n + 1)).toNat

end

end A115069.P14140239634814466447

namespace A115069

/-- `A060839(A065330(n+1))` -/
def P14140239634814466447.Spec : Prop :=
  ∀ n, P14140239634814466447.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P10388257151300488856

`A007425(A170824(n+1))`
-/

namespace A115069.P10388257151300488856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A170824 (n + 1)).toNat

end

end A115069.P10388257151300488856

namespace A115069

/-- `A007425(A170824(n+1))` -/
def P10388257151300488856.Spec : Prop :=
  ∀ n, P10388257151300488856.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P10304399532890114241

`∑{d}[A170824(n+1), A001227(#)]`
-/

namespace A115069.P10304399532890114241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001227 d

end

end A115069.P10304399532890114241

namespace A115069

/-- `∑{d}[A170824(n+1), A001227(#)]` -/
def P10304399532890114241.Spec : Prop :=
  ∀ n, P10304399532890114241.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P11334630026037110756

`∑{d}[A170824(n+1), A001817(#)]`
-/

namespace A115069.P11334630026037110756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001817 d

end

end A115069.P11334630026037110756

namespace A115069

/-- `∑{d}[A170824(n+1), A001817(#)]` -/
def P11334630026037110756.Spec : Prop :=
  ∀ n, P11334630026037110756.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P13855542984898590574

`∑{d}[A170824(n+1), A279060(#)]`
-/

namespace A115069.P13855542984898590574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A279060 d

end

end A115069.P13855542984898590574

namespace A115069

/-- `∑{d}[A170824(n+1), A279060(#)]` -/
def P13855542984898590574.Spec : Prop :=
  ∀ n, P13855542984898590574.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P11792047136489774298

`A000010(n+1)/A115070(n+1)`
-/

namespace A115069.P11792047136489774298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A115070 (n + 1) : ℚ)

end

end A115069.P11792047136489774298

namespace A115069

/-- `A000010(n+1)/A115070(n+1)` -/
def P11792047136489774298.Spec : Prop :=
  ∀ n, P11792047136489774298.a n = (A115069 (n + 1) : ℚ)

end A115069

/-! ## A115069.P8732518336373618762

`gcd(A064235(n+1), A367866(n+1))`
-/

namespace A115069.P8732518336373618762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064235 (n + 1)) (A367866 (n + 1))

end

end A115069.P8732518336373618762

namespace A115069

/-- `gcd(A064235(n+1), A367866(n+1))` -/
def P8732518336373618762.Spec : Prop :=
  ∀ n, (P8732518336373618762.a n : ℤ) = A115069 (n + 1)

end A115069

/-! ## A115069.P1527496814072903323

`∑{d}[A248909(∏{p}[n+1, #]), A001227(#)]`
-/

namespace A115069.P1527496814072903323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001227 d

end

end A115069.P1527496814072903323

namespace A115069

/-- `∑{d}[A248909(∏{p}[n+1, #]), A001227(#)]` -/
def P1527496814072903323.Spec : Prop :=
  ∀ n, P1527496814072903323.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P13314266569495488102

`∑{d}[A248909(∏{p}[n+1, #]), A001817(#)]`
-/

namespace A115069.P13314266569495488102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001817 d

end

end A115069.P13314266569495488102

namespace A115069

/-- `∑{d}[A248909(∏{p}[n+1, #]), A001817(#)]` -/
def P13314266569495488102.Spec : Prop :=
  ∀ n, P13314266569495488102.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P8276162474676123017

`∑{d}[A248909(∏{p}[n+1, #]), A279060(#)]`
-/

namespace A115069.P8276162474676123017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A279060 d

end

end A115069.P8276162474676123017

namespace A115069

/-- `∑{d}[A248909(∏{p}[n+1, #]), A279060(#)]` -/
def P8276162474676123017.Spec : Prop :=
  ∀ n, P8276162474676123017.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P2108133654936729447

`A060839(n+1)*A087692(n+1)/A115070(n+1)`
-/

namespace A115069.P2108133654936729447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) * A087692 (n + 1) : ℚ) / (A115070 (n + 1) : ℚ)

end

end A115069.P2108133654936729447

namespace A115069

/-- `A060839(n+1)*A087692(n+1)/A115070(n+1)` -/
def P2108133654936729447.Spec : Prop :=
  ∀ n, P2108133654936729447.a n = (A115069 (n + 1) : ℚ)

end A115069

/-! ## A115069.P3212931856604835121

`A000005(A170824(n+1)²)`
-/

namespace A115069.P3212931856604835121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A170824 (n + 1) ^ 2).toNat

end

end A115069.P3212931856604835121

namespace A115069

/-- `A000005(A170824(n+1)²)` -/
def P3212931856604835121.Spec : Prop :=
  ∀ n, P3212931856604835121.a n = A115069 (n + 1)

end A115069

/-! ## A115069.P3931467228535570140

`gcd(A175806(n), A365346(n+1))`
-/

namespace A115069.P3931467228535570140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175806 n) (A365346 (n + 1))

end

end A115069.P3931467228535570140

namespace A115069

/-- `gcd(A175806(n), A365346(n+1))` -/
def P3931467228535570140.Spec : Prop :=
  ∀ n, (P3931467228535570140.a n : ℤ) = A115069 (n + 1)

end A115069

/-! ## A115069.P13531608689523047601

`∏{p}[n+1, A000203(#²)%6]`
-/

namespace A115069.P13531608689523047601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (A000203 (p ^ 2)) 6

end

end A115069.P13531608689523047601

namespace A115069

/-- `∏{p}[n+1, A000203(#²)%6]` -/
def P13531608689523047601.Spec : Prop :=
  ∀ n, P13531608689523047601.a n = A115069 (n + 1)

end A115069

/-!
# A115070: a(n) = phi(n)/3^b(n), where b(n) is #{primes p=1 mod 3 dividing n}.

The programs for A115070, the canonical program `A115070.P14336137685640235068` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115070 has offset 1).

The definition of A115070 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A115069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115070.P14336137685640235068

`A000010(n+1)/A115069(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A115070

/-- `A000010(n+1)/A115069(n+1)` -/
def P14336137685640235068.Spec : Prop :=
  ∀ n, P14336137685640235068.a n = (A115070 (n + 1) : ℚ)

end A115070

/-! ## A115070.P13547861391085723407

`A000010(n+1)/3^A005088(n+1)`
-/

namespace A115070.P13547861391085723407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (3 : ℚ) ^ (A005088 (n + 1) : ℤ)

end

end A115070.P13547861391085723407

namespace A115070

/-- `A000010(n+1)/3^A005088(n+1)` -/
def P13547861391085723407.Spec : Prop :=
  ∀ n, P13547861391085723407.a n = (A115070 (n + 1) : ℚ)

end A115070

/-! ## A115070.P4082950029315822545

`Δ[A002088(n)]/A060839(A007947(n+1))`
-/

namespace A115070.P4082950029315822545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A060839 (A007947 (n + 1)).toNat : ℚ)

end

end A115070.P4082950029315822545

namespace A115070

/-- `Δ[A002088(n)]/A060839(A007947(n+1))` -/
def P4082950029315822545.Spec : Prop :=
  ∀ n, P4082950029315822545.a n = (A115070 (n + 1) : ℚ)

end A115070

/-! ## A115070.P6659519849477826642

`A003557(n+1)*A087692(A007947(n+1))`
-/

namespace A115070.P6659519849477826642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A087692 (A007947 (n + 1)).toNat

end

end A115070.P6659519849477826642

namespace A115070

/-- `A003557(n+1)*A087692(A007947(n+1))` -/
def P6659519849477826642.Spec : Prop :=
  ∀ n, P6659519849477826642.a n = A115070 (n + 1)

end A115070

/-! ## A115070.P9208889861861174235

`A000010(n+1)/A060839(A007947(n+1))`
-/

namespace A115070.P9208889861861174235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A060839 (A007947 (n + 1)).toNat : ℚ)

end

end A115070.P9208889861861174235

namespace A115070

/-- `A000010(n+1)/A060839(A007947(n+1))` -/
def P9208889861861174235.Spec : Prop :=
  ∀ n, P9208889861861174235.a n = (A115070 (n + 1) : ℚ)

end A115070

/-! ## A115070.P9463981733483113474

`A060839(n+1)*A087692(n+1)/A115069(n+1)`
-/

namespace A115070.P9463981733483113474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) * A087692 (n + 1) : ℚ) / (A115069 (n + 1) : ℚ)

end

end A115070.P9463981733483113474

namespace A115070

/-- `A060839(n+1)*A087692(n+1)/A115069(n+1)` -/
def P9463981733483113474.Spec : Prop :=
  ∀ n, P9463981733483113474.a n = (A115070 (n + 1) : ℚ)

end A115070

/-! ## A115070.P4622797754598355801

`A087692((n+1)*gcd(3, n+1))`
-/

namespace A115070.P4622797754598355801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087692 ((n + 1) * Nat.gcd 3 (n + 1))

end

end A115070.P4622797754598355801

namespace A115070

/-- `A087692((n+1)*gcd(3, n+1))` -/
def P4622797754598355801.Spec : Prop :=
  ∀ n, P4622797754598355801.a n = A115070 (n + 1)

end A115070

/-! ## A115070.P570315040403114098

`A087692(A203648(n+1))`
-/

namespace A115070.P570315040403114098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087692 (A203648 (n + 1)).toNat

end

end A115070.P570315040403114098

namespace A115070

/-- `A087692(A203648(n+1))` -/
def P570315040403114098.Spec : Prop :=
  ∀ n, P570315040403114098.a n = A115070 (n + 1)

end A115070

/-! ## A115070.P12901015503249707741

`A087692(A374490(n+1))`
-/

namespace A115070.P12901015503249707741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087692 (A374490 (n + 1)).toNat

end

end A115070.P12901015503249707741

namespace A115070

/-- `A087692(A374490(n+1))` -/
def P12901015503249707741.Spec : Prop :=
  ∀ n, P12901015503249707741.a n = A115070 (n + 1)

end A115070

/-! ## A115070.P8849285970586378000

`A000010(n+1)/A007428(A170824(n+1)²)`
-/

namespace A115070.P8849285970586378000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A007428 (A170824 (n + 1) ^ 2).toNat : ℚ)

end

end A115070.P8849285970586378000

namespace A115070

/-- `A000010(n+1)/A007428(A170824(n+1)²)` -/
def P8849285970586378000.Spec : Prop :=
  ∀ n, P8849285970586378000.a n = (A115070 (n + 1) : ℚ)

end A115070

/-!
# A115072: Numbers with no "e" in Dutch (Miljard without "een").

The programs for A115072, there is no canonical definition to state claims against.
-/

/-! ## A115072.P15538585288997608042

`gcd(A114644(n+1), A114644(A203616(n+1)))`
-/

namespace A115072.P15538585288997608042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114644 (n + 1)) (A114644 (A203616 (n + 1)).toNat)

end

end A115072.P15538585288997608042

/-! ## A115072.P16758204235144659549

`A114644(n+1)%A006933(A092752(n+4))`
-/

namespace A115072.P16758204235144659549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114644 (n + 1)) (A006933 (A092752 (n + 4)).toNat)

end

end A115072.P16758204235144659549

/-!
# A115073: Numbers k such that 10^(2*k+1)-7*10^k-1 is prime.

The programs for A115073, there is no canonical definition to state claims against.
-/

/-! ## A115073.P15063218319374453943

`(A077778(n+1)-1)/2`
-/

namespace A115073.P15063218319374453943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077778 (n + 1) - 1 : ℚ) / 2

end

end A115073.P15063218319374453943

/-! ## A115073.P15244651736353831503

`floor(A077778(n+1)/2)`
-/

namespace A115073.P15244651736353831503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077778 (n + 1) : ℚ) / 2⌋

end

end A115073.P15244651736353831503

/-! ## A115073.P8279285901574946398

`A014682(A077778(n+1)-1)`
-/

namespace A115073.P8279285901574946398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077778 (n + 1) - 1).toNat

end

end A115073.P8279285901574946398

/-! ## A115073.P1917518488186672243

`A014682(xor(1, A077778(n+1)))`
-/

namespace A115073.P1917518488186672243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A077778 (n + 1))).toNat

end

end A115073.P1917518488186672243

/-! ## A115073.P635509291034721542

`A004524(A077778(n+1))`
-/

namespace A115073.P635509291034721542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A077778 (n + 1)).toNat

end

end A115073.P635509291034721542

/-!
# A115074: a(n) is the largest prime dividing the n-th nonsquarefree positive integer.

The programs for A115074, the canonical program `A115074.P4145856416073480298` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115074 has offset 1).

The definition of A115074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A013929, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115074.P4145856416073480298

`A006530(A013929(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A115074

/-- `A006530(A013929(n+1))` -/
def P4145856416073480298.Spec : Prop :=
  ∀ n, P4145856416073480298.a n = A115074 (n + 1)

theorem P4145856416073480298.correct : P4145856416073480298.Spec := by
  intro n
  simp only [A115074, Nat.add_sub_cancel]

end A115074

/-! ## A115074.P13531193163966348281

`A006530(A015049(n+1))`
-/

namespace A115074.P13531193163966348281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A015049 (n + 1)).toNat

end

end A115074.P13531193163966348281

namespace A115074

/-- `A006530(A015049(n+1))` -/
def P13531193163966348281.Spec : Prop :=
  ∀ n, P13531193163966348281.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P10084336123747641220

`A006530(A015050(n+1))`
-/

namespace A115074.P10084336123747641220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A015050 (n + 1)).toNat

end

end A115074.P10084336123747641220

namespace A115074

/-- `A006530(A015050(n+1))` -/
def P10084336123747641220.Spec : Prop :=
  ∀ n, P10084336123747641220.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P16298274874400294857

`A006530(A015051(n+1))`
-/

namespace A115074.P16298274874400294857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A015051 (n + 1)).toNat

end

end A115074.P16298274874400294857

namespace A115074

/-- `A006530(A015051(n+1))` -/
def P16298274874400294857.Spec : Prop :=
  ∀ n, P16298274874400294857.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P7838343517306659433

`A006530(A076333(n+1))`
-/

namespace A115074.P7838343517306659433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076333 (n + 1)).toNat

end

end A115074.P7838343517306659433

namespace A115074

/-- `A006530(A076333(n+1))` -/
def P7838343517306659433.Spec : Prop :=
  ∀ n, P7838343517306659433.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P13351617321918190871

`A006530(A362041(n+1))`
-/

namespace A115074.P13351617321918190871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A362041 (n + 1)).toNat

end

end A115074.P13351617321918190871

namespace A115074

/-- `A006530(A362041(n+1))` -/
def P13351617321918190871.Spec : Prop :=
  ∀ n, P13351617321918190871.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P17472045848123757895

`A006530(A384064(n+1))`
-/

namespace A115074.P17472045848123757895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A384064 (n + 1)).toNat

end

end A115074.P17472045848123757895

namespace A115074

/-- `A006530(A384064(n+1))` -/
def P17472045848123757895.Spec : Prop :=
  ∀ n, P17472045848123757895.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P4621966123390793540

`A006530(comp[n-A105570(n)])`
-/

namespace A115074.P4621966123390793540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A115074.P4621966123390793540

namespace A115074

/-- `A006530(comp[n-A105570(n)])` -/
def P4621966123390793540.Spec : Prop :=
  ∀ n, P4621966123390793540.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P3558911516688532171

`A006530(A076619(n+1)-1)`
-/

namespace A115074.P3558911516688532171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076619 (n + 1) - 1).toNat

end

end A115074.P3558911516688532171

namespace A115074

/-- `A006530(A076619(n+1)-1)` -/
def P3558911516688532171.Spec : Prop :=
  ∀ n, P3558911516688532171.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P6836132019163846903

`A006530(eq[0, A008683(n+1)]+1)`
-/

namespace A115074.P6836132019163846903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A115074.P6836132019163846903

namespace A115074

/-- `A006530(eq[0, A008683(n+1)]+1)` -/
def P6836132019163846903.Spec : Prop :=
  ∀ n, P6836132019163846903.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P14350023912967757816

`A006530(lt[1, A005361(n+1)]+1)`
-/

namespace A115074.P14350023912967757816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A115074.P14350023912967757816

namespace A115074

/-- `A006530(lt[1, A005361(n+1)]+1)` -/
def P14350023912967757816.Spec : Prop :=
  ∀ n, P14350023912967757816.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P6249964502350243456

`A006530(lt[1, A008833(n+1)]+1)`
-/

namespace A115074.P6249964502350243456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A115074.P6249964502350243456

namespace A115074

/-- `A006530(lt[1, A008833(n+1)]+1)` -/
def P6249964502350243456.Spec : Prop :=
  ∀ n, P6249964502350243456.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P4253117156967442734

`A117183(n+1)+A115090(n+1)`
-/

namespace A115074.P4253117156967442734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117183 (n + 1) + A115090 (n + 1)

end

end A115074.P4253117156967442734

namespace A115074

/-- `A117183(n+1)+A115090(n+1)` -/
def P4253117156967442734.Spec : Prop :=
  ∀ n, P4253117156967442734.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P357985989770393271

`A006530(lt[A007913(n+1), n]+1)`
-/

namespace A115074.P357985989770393271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A115074.P357985989770393271

namespace A115074

/-- `A006530(lt[A007913(n+1), n]+1)` -/
def P357985989770393271.Spec : Prop :=
  ∀ n, P357985989770393271.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P14663342859116279640

`A006530(lt[A007947(n+1), n]+1)`
-/

namespace A115074.P14663342859116279640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A115074.P14663342859116279640

namespace A115074

/-- `A006530(lt[A007947(n+1), n]+1)` -/
def P14663342859116279640.Spec : Prop :=
  ∀ n, P14663342859116279640.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P3636059377245327883

`p?[gcd(A006530(n+1), A008683(n+1))]`
-/

namespace A115074.P3636059377245327883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (n + 1)) (A008683 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A115074.P3636059377245327883

namespace A115074

/-- `p?[gcd(A006530(n+1), A008683(n+1))]` -/
def P3636059377245327883.Spec : Prop :=
  ∀ n, (P3636059377245327883.a n : ℤ) = A115074 (n + 1)

end A115074

/-! ## A115074.P870916799201202440

`A006530(comp[lcm(n+1, A008683(n+1))])`
-/

namespace A115074.P870916799201202440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A008683 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A115074.P870916799201202440

namespace A115074

/-- `A006530(comp[lcm(n+1, A008683(n+1))])` -/
def P870916799201202440.Spec : Prop :=
  ∀ n, P870916799201202440.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P2279644538475392817

`A006530(2*(lt[A008683(n+1)², 1]+1))`
-/

namespace A115074.P2279644538475392817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1))

end

end A115074.P2279644538475392817

namespace A115074

/-- `A006530(2*(lt[A008683(n+1)², 1]+1))` -/
def P2279644538475392817.Spec : Prop :=
  ∀ n, P2279644538475392817.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P14100634074502154462

`A115090(n+1)+A020639(A013929(n+1))`
-/

namespace A115074.P14100634074502154462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115090 (n + 1) + A020639 (A013929 (n + 1)).toNat

end

end A115074.P14100634074502154462

namespace A115074

/-- `A115090(n+1)+A020639(A013929(n+1))` -/
def P14100634074502154462.Spec : Prop :=
  ∀ n, P14100634074502154462.a n = A115074 (n + 1)

end A115074

/-! ## A115074.P3115848125482780388

`A006530(A162966(n+2))`
-/

namespace A115074.P3115848125482780388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A162966 (n + 2)).toNat

end

end A115074.P3115848125482780388

namespace A115074

/-- `A006530(A162966(n+2))` -/
def P3115848125482780388.Spec : Prop :=
  ∀ n, P3115848125482780388.a n = A115074 (n + 1)

end A115074

/-!
# A115075: Number of 2 X 2 symmetric matrices over Z(n) having determinant 0.

The programs for A115075, the canonical program `A115075.P17756740268072419021` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115075 has offset 1).

The definition of A115075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115075.P7316840166607481656

`(n+1)^3-A115077(n+1)`
-/

namespace A115075.P7316840166607481656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A115077 (n + 1)

end

end A115075.P7316840166607481656

namespace A115075

/-- `(n+1)^3-A115077(n+1)` -/
def P7316840166607481656.Spec : Prop :=
  ∀ n, P7316840166607481656.a n = A115075 (n + 1)

theorem P7316840166607481656.correct : P7316840166607481656.Spec := by
  intro n
  simp only [A115075, Nat.add_sub_cancel, A115075.P7316840166607481656.a, A115075.P17756740268072419021.f1, A115075.P17756740268072419021.a, A053143, A053143.P2973590149006615306.a, A069097, A069097.P10375503292735525789.f1, A069097.P10375503292735525789.a, A115077, A115077.P12763444210255588654.a, A019554, A019554.P934973065694448032.a, A341772, A341772.P16346253428948690978.f1, A341772.P16346253428948690978.a, A007913, A007913.P8131970495124731496.a, A321322, A321322.P14680156201706380527.f1, A321322.P14680156201706380527.a, A000290, A000290.P12206242496348924484.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A115075

/-! ## A115075.P3452092622505226599

`∑{d}[n+1, A002618(#)*A355264((n+1)/#)]`
-/

namespace A115075.P3452092622505226599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A355264 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115075.P3452092622505226599

namespace A115075

/-- `∑{d}[n+1, A002618(#)*A355264((n+1)/#)]` -/
def P3452092622505226599.Spec : Prop :=
  ∀ n, P3452092622505226599.a n = A115075 (n + 1)

end A115075

/-! ## A115075.P17756740268072419021

`A053143(n+1)*A069097(∏{p}[n+1, #^val(n+1, #²)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A115075

/-- `A053143(n+1)*A069097(∏{p}[n+1, #^val(n+1, #²)])` -/
def P17756740268072419021.Spec : Prop :=
  ∀ n, P17756740268072419021.a n = A115075 (n + 1)

theorem P17756740268072419021.correct : P17756740268072419021.Spec := by
  intro n
  simp only [A115075, Nat.add_sub_cancel]

end A115075

/-! ## A115075.P10232612081396946205

`A053143(n+1)*A069097(A000188(n+1))`
-/

namespace A115075.P10232612081396946205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1) * A069097 (A000188 (n + 1)).toNat

end

end A115075.P10232612081396946205

namespace A115075

/-- `A053143(n+1)*A069097(A000188(n+1))` -/
def P10232612081396946205.Spec : Prop :=
  ∀ n, P10232612081396946205.a n = A115075 (n + 1)

end A115075

/-! ## A115075.P12608506269680076137

`A333884(A115077(n+1))`
-/

namespace A115075.P12608506269680076137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A115077 (n + 1)).toNat

end

end A115075.P12608506269680076137

namespace A115075

/-- `A333884(A115077(n+1))` -/
def P12608506269680076137.Spec : Prop :=
  ∀ n, P12608506269680076137.a n = A115075 (n + 1)

end A115075

/-!
# A115076: Number of 2 X 2 symmetric matrices over Z(n) having determinant 1.

The programs for A115076, the canonical program `A115076.P13773616625166204887` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115076 has offset 1).

The definition of A115076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115076.P18160633054331912573

`A087784(n+1)/A177704(n)`
-/

namespace A115076.P18160633054331912573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A177704 n : ℚ)

end

end A115076.P18160633054331912573

namespace A115076

/-- `A087784(n+1)/A177704(n)` -/
def P18160633054331912573.Spec : Prop :=
  ∀ n, P18160633054331912573.a n = (A115076 (n + 1) : ℚ)

end A115076

/-! ## A115076.P4308177118646361217

`A087784(n+1)/Δ[A001068(n)]`
-/

namespace A115076.P4308177118646361217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A115076.P4308177118646361217

namespace A115076

/-- `A087784(n+1)/Δ[A001068(n)]` -/
def P4308177118646361217.Spec : Prop :=
  ∀ n, P4308177118646361217.a n = (A115076 (n + 1) : ℚ)

end A115076

/-! ## A115076.P13773616625166204887

`∑{d}[n+1, A046692(#)*A317797((n+1)/#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A115076

/-- `∑{d}[n+1, A046692(#)*A317797((n+1)/#)]` -/
def P13773616625166204887.Spec : Prop :=
  ∀ n, P13773616625166204887.a n = A115076 (n + 1)

theorem P13773616625166204887.correct : P13773616625166204887.Spec := by
  intro n
  simp only [A115076, Nat.add_sub_cancel]

end A115076

/-! ## A115076.P17166652795473107639

`A087784(n+1)/A071773(2*A071773(n+1))`
-/

namespace A115076.P17166652795473107639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A071773 (2 * A071773 (n + 1)).toNat : ℚ)

end

end A115076.P17166652795473107639

namespace A115076

/-- `A087784(n+1)/A071773(2*A071773(n+1))` -/
def P17166652795473107639.Spec : Prop :=
  ∀ n, P17166652795473107639.a n = (A115076 (n + 1) : ℚ)

end A115076

/-! ## A115076.P10874815815145969837

`A087784(n+1)/A000032(A086932(n+1)/A060968(n+1))`
-/

namespace A115076.P10874815815145969837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A000032 (SequenceMachineLib.roundAway ((A086932 (n + 1) : ℚ) / (A060968 (n + 1) : ℚ))).toNat : ℚ)

end

end A115076.P10874815815145969837

namespace A115076

/-- `A087784(n+1)/A000032(A086932(n+1)/A060968(n+1))` -/
def P10874815815145969837.Spec : Prop :=
  ∀ n, P10874815815145969837.a n = (A115076 (n + 1) : ℚ)

end A115076

/-! ## A115076.P17597778078110639269

`A087784(n+1)/(Δ[A002265(n)]+1)`
-/

namespace A115076.P17597778078110639269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A115076.P17597778078110639269

namespace A115076

/-- `A087784(n+1)/(Δ[A002265(n)]+1)` -/
def P17597778078110639269.Spec : Prop :=
  ∀ n, P17597778078110639269.a n = (A115076 (n + 1) : ℚ)

end A115076

/-! ## A115076.P16738173187609580346

`A087784(n+1)/A000034(Δ[A002265(n)])`
-/

namespace A115076.P16738173187609580346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A000034 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A115076.P16738173187609580346

namespace A115076

/-- `A087784(n+1)/A000034(Δ[A002265(n)])` -/
def P16738173187609580346.Spec : Prop :=
  ∀ n, P16738173187609580346.a n = (A115076 (n + 1) : ℚ)

end A115076

/-! ## A115076.P2887755277752422903

`A087784(n+1)/A139790(Δ[A002265(n)])`
-/

namespace A115076.P2887755277752422903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A139790 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A115076.P2887755277752422903

namespace A115076

/-- `A087784(n+1)/A139790(Δ[A002265(n)])` -/
def P2887755277752422903.Spec : Prop :=
  ∀ n, P2887755277752422903.a n = (A115076 (n + 1) : ℚ)

end A115076

/-! ## A115076.P7889575547133432826

`A087784(n+1)/A000010(A087784(n+1)/A227553(n+1))`
-/

namespace A115076.P7889575547133432826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A000010 (SequenceMachineLib.roundAway ((A087784 (n + 1) : ℚ) / (A227553 (n + 1) : ℚ))).toNat : ℚ)

end

end A115076.P7889575547133432826

namespace A115076

/-- `A087784(n+1)/A000010(A087784(n+1)/A227553(n+1))` -/
def P7889575547133432826.Spec : Prop :=
  ∀ n, P7889575547133432826.a n = (A115076 (n + 1) : ℚ)

end A115076

/-! ## A115076.P2683882800997200071

`A087784(n+1)/A000045(A087784(n+1)/A227553(n+1))`
-/

namespace A115076.P2683882800997200071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A000045 (SequenceMachineLib.roundAway ((A087784 (n + 1) : ℚ) / (A227553 (n + 1) : ℚ))).toNat : ℚ)

end

end A115076.P2683882800997200071

namespace A115076

/-- `A087784(n+1)/A000045(A087784(n+1)/A227553(n+1))` -/
def P2683882800997200071.Spec : Prop :=
  ∀ n, P2683882800997200071.a n = (A115076 (n + 1) : ℚ)

end A115076

/-!
# A115077: Number of 2 X 2 symmetric matrices over Z(n) having nonzero determinant.

The programs for A115077, the canonical program `A115077.P12763444210255588654` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115077 has offset 1).

The definition of A115077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115075, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115077.P12763444210255588654

`(n+1)^3-A115075(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A115077

/-- `(n+1)^3-A115075(n+1)` -/
def P12763444210255588654.Spec : Prop :=
  ∀ n, P12763444210255588654.a n = A115077 (n + 1)

theorem P12763444210255588654.correct : P12763444210255588654.Spec := by
  intro n
  simp only [A115077, Nat.add_sub_cancel]

end A115077

/-! ## A115077.P2935825338338395330

`A053191(n+1)+A053192(n+1)-A115075(n+1)`
-/

namespace A115077.P2935825338338395330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (n + 1) + (A053192 (n + 1) - A115075 (n + 1))

end

end A115077.P2935825338338395330

namespace A115077

/-- `A053191(n+1)+A053192(n+1)-A115075(n+1)` -/
def P2935825338338395330.Spec : Prop :=
  ∀ n, P2935825338338395330.a n = A115077 (n + 1)

end A115077

/-!
# A115079: Matrix log of triangle A051731, where nonzero elements in the matrix log are all unit fractions and represented here by the denominators, with zero elements remaining zero.

The programs for A115079, the canonical program `A115079.P7940789343860326763` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115079 has offset 1).

The definition of A115079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115079.P9984348714908935196

`A100995(A051537(n+1))`
-/

namespace A115079.P9984348714908935196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A051537 (n + 1)).toNat

end

end A115079.P9984348714908935196

namespace A115079

/-- `A100995(A051537(n+1))` -/
def P9984348714908935196.Spec : Prop :=
  ∀ n, P9984348714908935196.a n = A115079 (n + 1)

end A115079

/-! ## A115079.P15313382888001936627

`A142150(A005127(A126988(n+1)))`
-/

namespace A115079.P15313382888001936627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A005127 (A126988 (n + 1)).toNat).toNat

end

end A115079.P15313382888001936627

namespace A115079

/-- `A142150(A005127(A126988(n+1)))` -/
def P15313382888001936627.Spec : Prop :=
  ∀ n, P15313382888001936627.a n = A115079 (n + 1)

end A115079

/-! ## A115079.P7940789343860326763

`A100995(A137734(A126988(n+1)²))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A115079

/-- `A100995(A137734(A126988(n+1)²))` -/
def P7940789343860326763.Spec : Prop :=
  ∀ n, P7940789343860326763.a n = A115079 (n + 1)

theorem P7940789343860326763.correct : P7940789343860326763.Spec := by
  intro n
  simp only [A115079, Nat.add_sub_cancel]

end A115079

/-! ## A115079.P12434163526740926095

`A100995(A306694(2^A126988(n+1)))`
-/

namespace A115079.P12434163526740926095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A306694 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A126988 (n + 1) : ℤ))).toNat).toNat

end

end A115079.P12434163526740926095

namespace A115079

/-- `A100995(A306694(2^A126988(n+1)))` -/
def P12434163526740926095.Spec : Prop :=
  ∀ n, P12434163526740926095.a n = A115079 (n + 1)

end A115079

/-! ## A115079.P4002754931710890177

`A100995(∏{d}[A126988(n+1), A014963(#)])`
-/

namespace A115079.P4002754931710890177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A115079.P4002754931710890177

namespace A115079

/-- `A100995(∏{d}[A126988(n+1), A014963(#)])` -/
def P4002754931710890177.Spec : Prop :=
  ∀ n, P4002754931710890177.a n = A115079 (n + 1)

end A115079

/-! ## A115079.P9398934993407671402

`A100995(∏{d}[A126988(n+1), A020639(#)])`
-/

namespace A115079.P9398934993407671402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d).toNat

end

end A115079.P9398934993407671402

namespace A115079

/-- `A100995(∏{d}[A126988(n+1), A020639(#)])` -/
def P9398934993407671402.Spec : Prop :=
  ∀ n, P9398934993407671402.a n = A115079 (n + 1)

end A115079

/-! ## A115079.P1684793299199446377

`A258651(∑{e}[A126988(n+1), A000096(#)])`
-/

namespace A115079.P1684793299199446377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000096 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A115079.P1684793299199446377

namespace A115079

/-- `A258651(∑{e}[A126988(n+1), A000096(#)])` -/
def P1684793299199446377.Spec : Prop :=
  ∀ n, P1684793299199446377.a n = A115079 (n + 1)

end A115079

/-! ## A115079.P7656458360120675982

`A032741(lcm(A051537(n+1), A141700(n+1)))`
-/

namespace A115079.P7656458360120675982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Int.lcm (A051537 (n + 1)) (A141700 (n + 1)))

end

end A115079.P7656458360120675982

namespace A115079

/-- `A032741(lcm(A051537(n+1), A141700(n+1)))` -/
def P7656458360120675982.Spec : Prop :=
  ∀ n, P7656458360120675982.a n = A115079 (n + 1)

end A115079

/-! ## A115079.P11611339663198533444

`A001222(A010766(n+1))%A138618(n+1)²`
-/

namespace A115079.P11611339663198533444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A010766 (n + 1)).toNat) (A138618 (n + 1) ^ 2)

end

end A115079.P11611339663198533444

namespace A115079

/-- `A001222(A010766(n+1))%A138618(n+1)²` -/
def P11611339663198533444.Spec : Prop :=
  ∀ n, P11611339663198533444.a n = A115079 (n + 1)

end A115079

/-! ## A115079.P12479564159621526937

`A001222(A049834(n+1))%A138618(n+1)²`
-/

namespace A115079.P12479564159621526937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A049834 (n + 1)).toNat) (A138618 (n + 1) ^ 2)

end

end A115079.P12479564159621526937

namespace A115079

/-- `A001222(A049834(n+1))%A138618(n+1)²` -/
def P12479564159621526937.Spec : Prop :=
  ∀ n, P12479564159621526937.a n = A115079 (n + 1)

end A115079

/-!
# A115081: Column 0 of triangle A115080.

The programs for A115081, there is no canonical definition to state claims against.
-/

/-! ## A115081.P8988415087538067949

`A115082(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A115081.P8988415087538067949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115082 n - (n : ℤ) * a (n - 1)

end

end A115081.P8988415087538067949

/-! ## A115081.P6938363909167870463

`A115080(∑[n])`
-/

namespace A115081.P6938363909167870463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115080 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115081.P6938363909167870463

/-! ## A115081.P10075026012594194116

`A115080(A000217(n))+A025439(n)`
-/

namespace A115081.P10075026012594194116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115080 (A000217 n).toNat + A025439 n

end

end A115081.P10075026012594194116

/-! ## A115081.P14607580754803267066

`gcd(A115080(A000217(n)), A151909(n))`
-/

namespace A115081.P14607580754803267066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115080 (A000217 n).toNat) (A151909 n)

end

end A115081.P14607580754803267066

/-! ## A115081.P15921617348113218777

`A115080(A000217(n))+A000007(n+4)`
-/

namespace A115081.P15921617348113218777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115080 (A000217 n).toNat + A000007 (n + 4)

end

end A115081.P15921617348113218777

/-!
# A115082: Column 1 of triangle A115080.

The programs for A115082, there is no canonical definition to state claims against.
-/

/-! ## A115082.P14332821295575661677

`A115080(∑[n+1]+1)`
-/

namespace A115082.P14332821295575661677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115080 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A115082.P14332821295575661677

/-! ## A115082.P11284223840435429236

`A115080(A134869(n+1))+A000038(n+11)`
-/

namespace A115082.P11284223840435429236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115080 (A134869 (n + 1)).toNat + A000038 (n + 11)

end

end A115082.P11284223840435429236

/-! ## A115082.P11361797455706539648

`A115080(A134869(n+1))+A010051(A243763(n+1))`
-/

namespace A115082.P11361797455706539648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115080 (A134869 (n + 1)).toNat + A010051 (A243763 (n + 1)).toNat

end

end A115082.P11361797455706539648

/-! ## A115082.P3690615880671584262

`A001221(A000043(n+1))*A115080(A134869(n+1))`
-/

namespace A115082.P3690615880671584262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000043 (n + 1)).toNat * A115080 (A134869 (n + 1)).toNat

end

end A115082.P3690615880671584262

/-! ## A115082.P14653743615798869154

`A001826(A001227(n+1))*A115080(A134869(n+1))`
-/

namespace A115082.P14653743615798869154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (A001227 (n + 1)).toNat * A115080 (A134869 (n + 1)).toNat

end

end A115082.P14653743615798869154

/-!
# A115083: Column 2 of triangle A115080.

The programs for A115083, there is no canonical definition to state claims against.
-/

/-! ## A115083.P5538574119711102943

`record[A115080(∑[n]+2)]`
-/

namespace A115083.P5538574119711102943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115080 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115083.P5538574119711102943

/-! ## A115083.P1051669457981697508

`A115080(∑[n+2]+3)`
-/

namespace A115083.P1051669457981697508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115080 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A115083.P1051669457981697508

/-! ## A115083.P398803414989304727

`record[A115080(n+2)/A112493(n)]`
-/

namespace A115083.P398803414989304727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115080 (n + 2) : ℚ) / (A112493 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115083.P398803414989304727

/-! ## A115083.P6116579681719050712

`record[gcd(A115080(n+2), A378006(n+2))]`
-/

namespace A115083.P6116579681719050712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115080 (n + 2)) (A378006 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115083.P6116579681719050712

/-!
# A115084: Row sums of triangle A115080.

The programs for A115084, there is no canonical definition to state claims against.
-/

/-! ## A115084.P2341906737581652777

`∑[A112689(A104455(n))]`
-/

namespace A115084.P2341906737581652777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A104455 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115084.P2341906737581652777

/-! ## A115084.P13363239052956215700

`∑[A185283(A317354(n))]`
-/

namespace A115084.P13363239052956215700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A317354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115084.P13363239052956215700

/-!
# A115086: Column 0 of triangle A115085.

The programs for A115086, there is no canonical definition to state claims against.
-/

/-! ## A115086.P16576377831525456782

`A115085(∑[n])`
-/

namespace A115086.P16576377831525456782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115085 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115086.P16576377831525456782

/-! ## A115086.P6609619329188762886

`A115085(A000217(n))+A025439(n)`
-/

namespace A115086.P6609619329188762886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115085 (A000217 n).toNat + A025439 n

end

end A115086.P6609619329188762886

/-! ## A115086.P1649897119049896838

`A016192(n)*A115085(A000217(n))`
-/

namespace A115086.P1649897119049896838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 n * A115085 (A000217 n).toNat

end

end A115086.P1649897119049896838

/-! ## A115086.P16594920593580780182

`A115085(A000217(n))*A304042(n)`
-/

namespace A115086.P16594920593580780182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115085 (A000217 n).toNat * A304042 n

end

end A115086.P16594920593580780182

/-! ## A115086.P12105753379947892178

`gcd(A000038(n), A115085(A000217(n)))`
-/

namespace A115086.P12105753379947892178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115085 (A000217 n).toNat)

end

end A115086.P12105753379947892178

/-!
# A115087: Column 1 of triangle A115085.

The programs for A115087, there is no canonical definition to state claims against.
-/

/-! ## A115087.P1793206204927574758

`A115085(∑[n+1]+1)`
-/

namespace A115087.P1793206204927574758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115085 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A115087.P1793206204927574758

/-! ## A115087.P18039084153329530872

`record[A115085(A014132(n+1))]`
-/

namespace A115087.P18039084153329530872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115085 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115087.P18039084153329530872

/-! ## A115087.P10579860790662829277

`record[A115085(gcd(n, A098825(n)))]`
-/

namespace A115087.P10579860790662829277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115085 (Int.gcd (n : ℤ) (A098825 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115087.P10579860790662829277

/-! ## A115087.P5948013783010162157

`record[A054525(n+1)*A115085(n+2)]`
-/

namespace A115087.P5948013783010162157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A115085 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115087.P5948013783010162157

/-! ## A115087.P361905005139757278

`A115085(C(n+2, 2)+1)+A034500(n+1)`
-/

namespace A115087.P361905005139757278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115085 (Nat.choose (n + 2) 2 + 1) + A034500 (n + 1)

end

end A115087.P361905005139757278

/-!
# A115088: Column 2 of triangle A115085.

The programs for A115088, there is no canonical definition to state claims against.
-/

/-! ## A115088.P14604138782899193942

`A115085(∑[n+2]+3)`
-/

namespace A115088.P14604138782899193942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115085 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A115088.P14604138782899193942

/-! ## A115088.P925680670220546010

`record[A115085(A133263(n))]`
-/

namespace A115088.P925680670220546010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115085 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115088.P925680670220546010

/-! ## A115088.P1799280776642433493

`record[A115085(A152948(n+1))]`
-/

namespace A115088.P1799280776642433493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115085 (A152948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115088.P1799280776642433493

/-! ## A115088.P16506021216433212077

`record[gcd(A098825(n), A115085(n+1))]`
-/

namespace A115088.P16506021216433212077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A115085 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115088.P16506021216433212077

/-! ## A115088.P3923359472122003151

`A115085(A133263(n+2))%A268299(n+1)`
-/

namespace A115088.P3923359472122003151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115085 (A133263 (n + 2)).toNat) (A268299 (n + 1))

end

end A115088.P3923359472122003151

/-!
# A115089: Row sums of triangle A115085.

The programs for A115089, there is no canonical definition to state claims against.
-/

/-! ## A115089.P547346539998748696

`floor(sqrt(A213238((n+1)^n)+1))`
-/

namespace A115089.P547346539998748696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A213238 ((n + 1) ^ n) + 1)

end

end A115089.P547346539998748696

/-!
# A115090: a(n) = A115074(n) - A117183(n).

The programs for A115090, there is no canonical definition to state claims against.
-/

/-! ## A115090.P5710975546381881667

`A115074(n+1)-A117183(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115090.P5710975546381881667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115074 (n + 1) - A117183 (n + 1)

end

end A115090.P5710975546381881667

/-! ## A115090.P15488970267402101803

`A046665(A013929(n+1))`
-/

namespace A115090.P15488970267402101803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A013929 (n + 1)).toNat

end

end A115090.P15488970267402101803

/-! ## A115090.P10487107664666723332

`A006530(A013929(n+1))-A117183(n+1)`
-/

namespace A115090.P10487107664666723332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013929 (n + 1)).toNat - A117183 (n + 1)

end

end A115090.P10487107664666723332

/-! ## A115090.P12732349136765711595

`A115074(n+1)-A020639(A013929(n+1))`
-/

namespace A115090.P12732349136765711595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115074 (n + 1) - A020639 (A013929 (n + 1)).toNat

end

end A115090.P12732349136765711595

/-! ## A115090.P18427581299182318615

`A046665(A015049(n+1))`
-/

namespace A115090.P18427581299182318615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A015049 (n + 1)).toNat

end

end A115090.P18427581299182318615

/-! ## A115090.P1333432174217580728

`A046665(A015050(n+1))`
-/

namespace A115090.P1333432174217580728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A015050 (n + 1)).toNat

end

end A115090.P1333432174217580728

/-! ## A115090.P11230271981481271801

`A046665(A015051(n+1))`
-/

namespace A115090.P11230271981481271801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A015051 (n + 1)).toNat

end

end A115090.P11230271981481271801

/-! ## A115090.P15845787032233537361

`A046665(A076333(n+1))`
-/

namespace A115090.P15845787032233537361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A076333 (n + 1)).toNat

end

end A115090.P15845787032233537361

/-! ## A115090.P15101431606640859198

`A046665(A384064(n+1))`
-/

namespace A115090.P15101431606640859198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A384064 (n + 1)).toNat

end

end A115090.P15101431606640859198

/-! ## A115090.P5830819636238033068

`A046665(A076619(n+1)-1)`
-/

namespace A115090.P5830819636238033068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A076619 (n + 1) - 1).toNat

end

end A115090.P5830819636238033068

/-! ## A115090.P14678378611369067922

`A046665(A362041(n+1))`
-/

namespace A115090.P14678378611369067922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A362041 (n + 1)).toNat

end

end A115090.P14678378611369067922

/-! ## A115090.P7340712005771551022

`A046665(A115074(n+1)*A117183(n+1))`
-/

namespace A115090.P7340712005771551022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A115074 (n + 1) * A117183 (n + 1)).toNat

end

end A115090.P7340712005771551022

/-! ## A115090.P14168034505724344056

`A046665(A162966(n+2))`
-/

namespace A115090.P14168034505724344056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A162966 (n + 2)).toNat

end

end A115090.P14168034505724344056

/-! ## A115090.P8212235870124865857

`A046665(lt[1, n*A087049(n)])`
-/

namespace A115090.P8212235870124865857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115090.P8212235870124865857

/-! ## A115090.P12022520590669618036

`A046665(lt[1, A000188(n+1)]+1)`
-/

namespace A115090.P12022520590669618036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A115090.P12022520590669618036

/-!
# A115092: The number of m such that prime(n) divides m!+1.

The programs for A115092, there is no canonical definition to state claims against.
-/

/-! ## A115092.P1538338960739939201

`A238532(A000040(n+1))`
-/

namespace A115092.P1538338960739939201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (A000040 (n + 1)).toNat

end

end A115092.P1538338960739939201

/-! ## A115092.P10926742349155870788

`A238532(A008578(n+2))`
-/

namespace A115092.P10926742349155870788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (A008578 (n + 2)).toNat

end

end A115092.P10926742349155870788

/-! ## A115092.P2762445381561394677

`A238532(A182986(n+2))`
-/

namespace A115092.P2762445381561394677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (A182986 (n + 2)).toNat

end

end A115092.P2762445381561394677

/-! ## A115092.P13464093920230780810

`A238532(record[A006530(n+2)])`
-/

namespace A115092.P13464093920230780810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115092.P13464093920230780810

/-! ## A115092.P10430584204225620603

`A238532(record[A020639(n+2)])`
-/

namespace A115092.P10430584204225620603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115092.P10430584204225620603

/-! ## A115092.P4212904696020731160

`A238532(record[A014963(n+2)])`
-/

namespace A115092.P4212904696020731160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115092.P4212904696020731160

/-! ## A115092.P1699516375288610641

`A238532(A383578(n+1))`
-/

namespace A115092.P1699516375288610641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (A383578 (n + 1)).toNat

end

end A115092.P1699516375288610641

/-!
# A115093: Primes of the form p*q-2, where p and q are distinct primes.

The programs for A115093, there is no canonical definition to state claims against.
-/

/-! ## A115093.P6222107458730949690

`p?[A066774(n+1)]`
-/

namespace A115093.P6222107458730949690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115093.P6222107458730949690

/-! ## A115093.P4515057956076593682

`p?[A188540(n+1)]`
-/

namespace A115093.P4515057956076593682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115093.P4515057956076593682

/-! ## A115093.P17477177076903976740

`p?[A376830(n+1)]`
-/

namespace A115093.P17477177076903976740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115093.P17477177076903976740

/-! ## A115093.P1900094153010129028

`p?[A396005(n+3)]`
-/

namespace A115093.P1900094153010129028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396005 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115093.P1900094153010129028

/-! ## A115093.P2757787780896285743

`A043326(n+1)-2`
-/

namespace A115093.P2757787780896285743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043326 (n + 1) - 2

end

end A115093.P2757787780896285743

/-! ## A115093.P2976577965520491926

`p?[A176686(n+1)-1]`
-/

namespace A115093.P2976577965520491926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176686 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115093.P2976577965520491926

/-! ## A115093.P1342794100552358749

`p?[A006881(n+1)-2]`
-/

namespace A115093.P1342794100552358749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115093.P1342794100552358749

/-! ## A115093.P11922137065417517319

`p?[A007422(n+1)-2]`
-/

namespace A115093.P11922137065417517319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115093.P11922137065417517319

/-! ## A115093.P12424267474519207032

`p?[A030229(n+1)-2]`
-/

namespace A115093.P12424267474519207032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115093.P12424267474519207032

/-! ## A115093.P17937488818187819269

`p?[A030513(n+1)-2]`
-/

namespace A115093.P17937488818187819269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115093.P17937488818187819269

/-!
# A115095: Positions of 4's in A038800 with offset 1.

The programs for A115095, there is no canonical definition to state claims against.
-/

/-! ## A115095.P4808367044949771883

`floor(A064974(n+1)/10)`
-/

namespace A115095.P4808367044949771883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064974 (n + 1) : ℚ) / 10⌋

end

end A115095.P4808367044949771883

/-! ## A115095.P7147773813878101589

`ceil(A007530(n+1)/10)`
-/

namespace A115095.P7147773813878101589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007530 (n + 1) : ℚ) / 10⌉

end

end A115095.P7147773813878101589

/-! ## A115095.P6170491334196254324

`ceil(A136720(n+1)/10)`
-/

namespace A115095.P6170491334196254324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136720 (n + 1) : ℚ) / 10⌉

end

end A115095.P6170491334196254324

/-! ## A115095.P2636656745479927904

`ceil(A173037(n+1)/10)`
-/

namespace A115095.P2636656745479927904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173037 (n + 1) : ℚ) / 10⌉

end

end A115095.P2636656745479927904

/-! ## A115095.P15027063752021544114

`round(A090258(n+1)/10)`
-/

namespace A115095.P15027063752021544114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A090258 (n + 1) : ℚ) / 10)

end

end A115095.P15027063752021544114

/-! ## A115095.P7000785773574710300

`round(A136721(n+1)/10)`
-/

namespace A115095.P7000785773574710300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A136721 (n + 1) : ℚ) / 10)

end

end A115095.P7000785773574710300

/-! ## A115095.P3811758575139256118

`ceil((A222960(n+1)+2)/5)`
-/

namespace A115095.P3811758575139256118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222960 (n + 1) + 2 : ℚ) / 5⌉

end

end A115095.P3811758575139256118

/-! ## A115095.P9198576796103283683

`floor(A125855(n+1)/10)+1`
-/

namespace A115095.P9198576796103283683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A125855 (n + 1) : ℚ) / 10⌋ + 1

end

end A115095.P9198576796103283683

/-! ## A115095.P2660468569091105555

`A007811(A028310(n))-A057428(n)`
-/

namespace A115095.P2660468569091105555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (A028310 n).toNat - A057428 n

end

end A115095.P2660468569091105555

/-! ## A115095.P18410041615532616667

`ceil(A136162(A016813(n))/10)`
-/

namespace A115095.P18410041615532616667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136162 (A016813 n).toNat : ℚ) / 10⌉

end

end A115095.P18410041615532616667

/-! ## A115095.P17469295012224024084

`round(A136162(A004767(n))/10)`
-/

namespace A115095.P17469295012224024084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A136162 (A004767 n).toNat : ℚ) / 10)

end

end A115095.P17469295012224024084

/-!
# A115098: a(0) = 2, a(n) = 3*a(n-1) - 3.

The programs for A115098, the canonical program `A115098.P17482726207794591744` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115098 has offset 0).

The definition of A115098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3` (program `A115098.P17482726207794591744`, by `A115098.P17482726207794591744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115098.P17482726207794591744

`3*a(n-1)-3` with `a(0)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115098

/-- `3*a(n-1)-3` -/
def P17482726207794591744.Spec : Prop :=
  ∀ n, P17482726207794591744.a n = A115098 n

theorem P17482726207794591744.correct : P17482726207794591744.Spec := by
  intro n
  simp only [A115098]

end A115098

/-! ## A115098.P17884832517352916508

`(3^n+3)/2`
-/

namespace A115098.P17884832517352916508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 3 : ℚ) / 2

end

end A115098.P17884832517352916508

namespace A115098

/-- `(3^n+3)/2` -/
def P17884832517352916508.Spec : Prop :=
  ∀ n, P17884832517352916508.a n = (A115098 n : ℚ)

theorem P17884832517352916508.correct : P17884832517352916508.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A115098, Nat.add_sub_cancel, A115098.P17884832517352916508.a, A115098.P17482726207794591744.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A115098, Nat.add_sub_cancel, A115098.P17884832517352916508.a, A115098.P17482726207794591744.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A115098

/-! ## A115098.P5423136059298547503

`ogf((2-5x)/(1-4x+3x^2))`
-/

namespace A115098.P5423136059298547503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -4, 3] n

end

end A115098.P5423136059298547503

namespace A115098

/-- `ogf((2-5x)/(1-4x+3x^2))` -/
def P5423136059298547503.Spec : Prop :=
  ∀ n, P5423136059298547503.a n = A115098 n

end A115098

/-! ## A115098.P838095801495781819

`lcm(3, 1-a(n-1))` with `a(0)=2`
-/

namespace A115098.P838095801495781819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm 3 (1 - (a (n - 1) : ℤ))

end

end A115098.P838095801495781819

namespace A115098

/-- `lcm(3, 1-a(n-1))` -/
def P838095801495781819.Spec : Prop :=
  ∀ n, (P838095801495781819.a n : ℤ) = A115098 n

end A115098

/-! ## A115098.P14481388148211417131

`or(2, ∑[floor(3^(n-1))])`
-/

namespace A115098.P14481388148211417131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115098.P14481388148211417131

namespace A115098

/-- `or(2, ∑[floor(3^(n-1))])` -/
def P14481388148211417131.Spec : Prop :=
  ∀ n, P14481388148211417131.a n = A115098 n

end A115098

/-! ## A115098.P5393574276386823361

`xor(2, ∑[floor(3^(n-1))])`
-/

namespace A115098.P5393574276386823361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115098.P5393574276386823361

namespace A115098

/-- `xor(2, ∑[floor(3^(n-1))])` -/
def P5393574276386823361.Spec : Prop :=
  ∀ n, P5393574276386823361.a n = A115098 n

end A115098

/-! ## A115098.P14920513392296931303

`a(n-1)+3^(n-1)` with `a(0)=2`
-/

namespace A115098.P14920513392296931303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A115098.P14920513392296931303

namespace A115098

/-- `a(n-1)+3^(n-1)` -/
def P14920513392296931303.Spec : Prop :=
  ∀ n, P14920513392296931303.a n = (A115098 n : ℚ)

end A115098

/-! ## A115098.P11964307489682114411

`∑[3^(n-gcd(5, a(n-1)))]` with `a(0)=2`
-/

namespace A115098.P11964307489682114411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (3 : ℚ) ^ ((n : ℤ) - (Int.gcd 5 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115098.P11964307489682114411

namespace A115098

/-- `∑[3^(n-gcd(5, a(n-1)))]` -/
def P11964307489682114411.Spec : Prop :=
  ∀ n, P11964307489682114411.a n = (A115098 n : ℚ)

end A115098

/-! ## A115098.P1599651954774621083

`∑[a(n-2)/(1/3)²]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A115098.P1599651954774621083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115098.P1599651954774621083

namespace A115098

/-- `∑[a(n-2)/(1/3)²]` -/
def P1599651954774621083.Spec : Prop :=
  ∀ n, P1599651954774621083.a n = (A115098 n : ℚ)

end A115098

/-! ## A115098.P5802164966513050877

`∑[3^(n-a(n-1)%2)]` with `a(0)=2, a(1)=1`
-/

namespace A115098.P5802164966513050877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (3 : ℚ) ^ ((n : ℤ) - Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115098.P5802164966513050877

namespace A115098

/-- `∑[3^(n-a(n-1)%2)]` -/
def P5802164966513050877.Spec : Prop :=
  ∀ n, P5802164966513050877.a n = (A115098 n : ℚ)

end A115098

/-! ## A115098.P7423897015487008856

`∑[3^(n-a(n-1)/floor(a(n-1)))]` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A115098.P7423897015487008856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  (3 : ℝ) ^ ((n : ℝ) - f1 (n - 1) / (⌊f1 (n - 1)⌋ : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115098.P7423897015487008856

namespace A115098

/-- `∑[3^(n-a(n-1)/floor(a(n-1)))]` -/
def P7423897015487008856.Spec : Prop :=
  ∀ n, P7423897015487008856.a n = (A115098 n : ℝ)

end A115098

/-! ## A115098.P15758775706350404989

`a(n-1)-3+a(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A115098.P15758775706350404989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - 3 + (a (n - 1) + a (n - 1))

end

end A115098.P15758775706350404989

namespace A115098

/-- `a(n-1)-3+a(n-1)+a(n-1)` -/
def P15758775706350404989.Spec : Prop :=
  ∀ n, P15758775706350404989.a n = A115098 n

theorem P15758775706350404989.correct : P15758775706350404989.Spec := by
  intro n
  simp only [A115098, Nat.add_sub_cancel, A115098.P15758775706350404989.a, A115098.P17482726207794591744.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A115098

/-! ## A115098.P16822073362890190554

`floor(floor(a(n-1))-(3-a(n-1)-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A115098.P16822073362890190554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (3 - a (n - 1) - a (n - 1))

end

end A115098.P16822073362890190554

namespace A115098

/-- `floor(floor(a(n-1))-(3-a(n-1)-a(n-1)))` -/
def P16822073362890190554.Spec : Prop :=
  ∀ n, P16822073362890190554.a n = A115098 n

theorem P16822073362890190554.correct : P16822073362890190554.Spec := by
  intro n
  simp only [A115098, Nat.add_sub_cancel, A115098.P16822073362890190554.a, A115098.P17482726207794591744.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A115098

/-! ## A115098.P14954391506279231397

`A007051(n)+1`
-/

namespace A115098.P14954391506279231397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + 1

end

end A115098.P14954391506279231397

namespace A115098

/-- `A007051(n)+1` -/
def P14954391506279231397.Spec : Prop :=
  ∀ n, P14954391506279231397.a n = A115098 n

end A115098

/-! ## A115098.P368678680403912375

`A003462(n)+2`
-/

namespace A115098.P368678680403912375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + 2

end

end A115098.P368678680403912375

namespace A115098

/-- `A003462(n)+2` -/
def P368678680403912375.Spec : Prop :=
  ∀ n, P368678680403912375.a n = A115098 n

end A115098

/-! ## A115098.P14895170421841799187

`∑[A133494(n)]+1`
-/

namespace A115098.P14895170421841799187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A115098.P14895170421841799187

namespace A115098

/-- `∑[A133494(n)]+1` -/
def P14895170421841799187.Spec : Prop :=
  ∀ n, P14895170421841799187.a n = A115098 n

end A115098

/-! ## A115098.P6566200311071794040

`∑[A140429(n)]+2`
-/

namespace A115098.P6566200311071794040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A115098.P6566200311071794040

namespace A115098

/-- `∑[A140429(n)]+2` -/
def P6566200311071794040.Spec : Prop :=
  ∀ n, P6566200311071794040.a n = A115098 n

end A115098

/-! ## A115098.P8330590842725608315

`∑[A155734(n)]-1`
-/

namespace A115098.P8330590842725608315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A115098.P8330590842725608315

namespace A115098

/-- `∑[A155734(n)]-1` -/
def P8330590842725608315.Spec : Prop :=
  ∀ n, P8330590842725608315.a n = A115098 n

end A115098

/-! ## A115098.P4176117147284014840

`record[A255044(n)+2]`
-/

namespace A115098.P4176117147284014840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255044 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115098.P4176117147284014840

namespace A115098

/-- `record[A255044(n)+2]` -/
def P4176117147284014840.Spec : Prop :=
  ∀ n, P4176117147284014840.a n = A115098 n

end A115098

/-! ## A115098.P2171179134404373564

`A124302(n+1)+1`
-/

namespace A115098.P2171179134404373564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) + 1

end

end A115098.P2171179134404373564

namespace A115098

/-- `A124302(n+1)+1` -/
def P2171179134404373564.Spec : Prop :=
  ∀ n, P2171179134404373564.a n = A115098 n

end A115098

/-!
# A115099: a(0)=4, a(n) = 3*a(n-1) - 4.

The programs for A115099, the canonical program `A115099.P16349918366020435609` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115099 has offset 0).

The definition of A115099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4` (program `A115099.P16349918366020435609`, by `A115099.P16349918366020435609.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115099.P15100804865894544722

`2*3^n+2`
-/

namespace A115099.P15100804865894544722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 3 ^ n + 2

end

end A115099.P15100804865894544722

namespace A115099

/-- `2*3^n+2` -/
def P15100804865894544722.Spec : Prop :=
  ∀ n, (P15100804865894544722.a n : ℤ) = A115099 n

theorem P15100804865894544722.correct : P15100804865894544722.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A115099, Nat.add_sub_cancel, A115099.P15100804865894544722.a, A115099.P16349918366020435609.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A115099, Nat.add_sub_cancel, A115099.P15100804865894544722.a, A115099.P16349918366020435609.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A115099

/-! ## A115099.P16349918366020435609

`3*a(n-1)-4` with `a(0)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115099

/-- `3*a(n-1)-4` -/
def P16349918366020435609.Spec : Prop :=
  ∀ n, P16349918366020435609.a n = A115099 n

theorem P16349918366020435609.correct : P16349918366020435609.Spec := by
  intro n
  simp only [A115099]

end A115099

/-! ## A115099.P833466214770293545

`4*A007051(n)`
-/

namespace A115099.P833466214770293545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007051 n

end

end A115099.P833466214770293545

namespace A115099

/-- `4*A007051(n)` -/
def P833466214770293545.Spec : Prop :=
  ∀ n, P833466214770293545.a n = A115099 n

end A115099

/-! ## A115099.P9968238090388805504

`abs(xor(Δ[3^n], -2))`
-/

namespace A115099.P9968238090388805504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (-2)|

end

end A115099.P9968238090388805504

namespace A115099

/-- `abs(xor(Δ[3^n], -2))` -/
def P9968238090388805504.Spec : Prop :=
  ∀ n, P9968238090388805504.a n = A115099 n

end A115099

/-! ## A115099.P13749332388088267621

`ogf((4-8x)/(1-4x+3x^2))`
-/

namespace A115099.P13749332388088267621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -8] [1, -4, 3] n

end

end A115099.P13749332388088267621

namespace A115099

/-- `ogf((4-8x)/(1-4x+3x^2))` -/
def P13749332388088267621.Spec : Prop :=
  ∀ n, P13749332388088267621.a n = A115099 n

end A115099

/-! ## A115099.P2110826882052544432

`-xor(2, Δ[-3^n])`
-/

namespace A115099.P2110826882052544432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (f1 (n + 1) - f1 n)

end

end A115099.P2110826882052544432

namespace A115099

/-- `-xor(2, Δ[-3^n])` -/
def P2110826882052544432.Spec : Prop :=
  ∀ n, P2110826882052544432.a n = A115099 n

end A115099

/-! ## A115099.P8147586230577902708

`∑[lcm(4, ceil(3^(n-1)))]`
-/

namespace A115099.P8147586230577902708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115099.P8147586230577902708

namespace A115099

/-- `∑[lcm(4, ceil(3^(n-1)))]` -/
def P8147586230577902708.Spec : Prop :=
  ∀ n, (P8147586230577902708.a n : ℤ) = A115099 n

end A115099

/-! ## A115099.P13630140350047762767

`2*A034472(n)`
-/

namespace A115099.P13630140350047762767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034472 n

end

end A115099.P13630140350047762767

namespace A115099

/-- `2*A034472(n)` -/
def P13630140350047762767.Spec : Prop :=
  ∀ n, P13630140350047762767.a n = A115099 n

theorem P13630140350047762767.correct : P13630140350047762767.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A115099, Nat.add_sub_cancel, A115099.P13630140350047762767.a, A115099.P16349918366020435609.a, A034472, A034472.P6935477064191477456.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A115099, Nat.add_sub_cancel, A115099.P13630140350047762767.a, A115099.P16349918366020435609.a, A034472, A034472.P6935477064191477456.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A115099

/-! ## A115099.P13486098208768785937

`Δ[2*A233656(n)]`
-/

namespace A115099.P13486098208768785937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115099.P13486098208768785937

namespace A115099

/-- `Δ[2*A233656(n)]` -/
def P13486098208768785937.Spec : Prop :=
  ∀ n, P13486098208768785937.a n = A115099 n

end A115099

/-! ## A115099.P14848104682703559994

`∑[4*A133494(n)]`
-/

namespace A115099.P14848104682703559994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115099.P14848104682703559994

namespace A115099

/-- `∑[4*A133494(n)]` -/
def P14848104682703559994.Spec : Prop :=
  ∀ n, P14848104682703559994.a n = A115099 n

end A115099

/-! ## A115099.P5887691106065708597

`Δ[4*A164039(n)]`
-/

namespace A115099.P5887691106065708597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A164039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115099.P5887691106065708597

namespace A115099

/-- `Δ[4*A164039(n)]` -/
def P5887691106065708597.Spec : Prop :=
  ∀ n, P5887691106065708597.a n = A115099 n

end A115099

/-! ## A115099.P10456163345628527158

`Δ[A104743(n)+n]`
-/

namespace A115099.P10456163345628527158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104743 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115099.P10456163345628527158

namespace A115099

/-- `Δ[A104743(n)+n]` -/
def P10456163345628527158.Spec : Prop :=
  ∀ n, P10456163345628527158.a n = A115099 n

theorem P10456163345628527158.correct : P10456163345628527158.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A115099, Nat.add_sub_cancel, A115099.P10456163345628527158.f1, A115099.P10456163345628527158.a, A115099.P16349918366020435609.a, A104743, A104743.P17964489936834295293.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A115099, Nat.add_sub_cancel, A115099.P10456163345628527158.f1, A115099.P10456163345628527158.a, A115099.P16349918366020435609.a, A104743, A104743.P17964489936834295293.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A115099

/-! ## A115099.P3574361373728380217

`Δ[A176805(n)-n]`
-/

namespace A115099.P3574361373728380217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176805 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115099.P3574361373728380217

namespace A115099

/-- `Δ[A176805(n)-n]` -/
def P3574361373728380217.Spec : Prop :=
  ∀ n, P3574361373728380217.a n = A115099 n

theorem P3574361373728380217.correct : P3574361373728380217.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A115099, Nat.add_sub_cancel, A115099.P3574361373728380217.f1, A115099.P3574361373728380217.a, A115099.P16349918366020435609.a, A176805, A176805.P17224655801162528754.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A115099, Nat.add_sub_cancel, A115099.P3574361373728380217.f1, A115099.P3574361373728380217.a, A115099.P16349918366020435609.a, A176805, A176805.P17224655801162528754.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A115099

/-! ## A115099.P11419341616244572100

`Δ[A221905(n)-n]`
-/

namespace A115099.P11419341616244572100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221905 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115099.P11419341616244572100

namespace A115099

/-- `Δ[A221905(n)-n]` -/
def P11419341616244572100.Spec : Prop :=
  ∀ n, P11419341616244572100.a n = A115099 n

theorem P11419341616244572100.correct : P11419341616244572100.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A115099, Nat.add_sub_cancel, A115099.P11419341616244572100.f1, A115099.P11419341616244572100.a, A115099.P16349918366020435609.a, A221905, A221905.P3969717268633884912.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A115099, Nat.add_sub_cancel, A115099.P11419341616244572100.f1, A115099.P11419341616244572100.a, A115099.P16349918366020435609.a, A221905, A221905.P3969717268633884912.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A115099

/-! ## A115099.P425564604597199200

`2*(A000244(n)+1)`
-/

namespace A115099.P425564604597199200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000244 n + 1)

end

end A115099.P425564604597199200

namespace A115099

/-- `2*(A000244(n)+1)` -/
def P425564604597199200.Spec : Prop :=
  ∀ n, P425564604597199200.a n = A115099 n

theorem P425564604597199200.correct : P425564604597199200.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A115099, Nat.add_sub_cancel, A115099.P425564604597199200.a, A115099.P16349918366020435609.a, A000244, A000244.P17162167222172810417.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A115099, Nat.add_sub_cancel, A115099.P425564604597199200.a, A115099.P16349918366020435609.a, A000244, A000244.P17162167222172810417.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A115099

/-! ## A115099.P12609609899816146830

`2*A094388(n+1)`
-/

namespace A115099.P12609609899816146830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094388 (n + 1)

end

end A115099.P12609609899816146830

namespace A115099

/-- `2*A094388(n+1)` -/
def P12609609899816146830.Spec : Prop :=
  ∀ n, P12609609899816146830.a n = A115099 n

end A115099

/-! ## A115099.P14436754483003195275

`2*(A024023(n)+2)`
-/

namespace A115099.P14436754483003195275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024023 n + 2)

end

end A115099.P14436754483003195275

namespace A115099

/-- `2*(A024023(n)+2)` -/
def P14436754483003195275.Spec : Prop :=
  ∀ n, P14436754483003195275.a n = A115099 n

theorem P14436754483003195275.correct : P14436754483003195275.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A115099, Nat.add_sub_cancel, A115099.P14436754483003195275.a, A115099.P16349918366020435609.a, A024023, A024023.P3457506902639293536.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A115099, Nat.add_sub_cancel, A115099.P14436754483003195275.a, A115099.P16349918366020435609.a, A024023, A024023.P3457506902639293536.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A115099

/-! ## A115099.P14940743273349510315

`2*(A168607(n)-1)`
-/

namespace A115099.P14940743273349510315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168607 n - 1)

end

end A115099.P14940743273349510315

namespace A115099

/-- `2*(A168607(n)-1)` -/
def P14940743273349510315.Spec : Prop :=
  ∀ n, P14940743273349510315.a n = A115099 n

theorem P14940743273349510315.correct : P14940743273349510315.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A115099, Nat.add_sub_cancel, A115099.P14940743273349510315.a, A115099.P16349918366020435609.a, A168607, A168607.P9034026260611557504.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A115099, Nat.add_sub_cancel, A115099.P14940743273349510315.a, A115099.P16349918366020435609.a, A168607, A168607.P9034026260611557504.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A115099

/-! ## A115099.P706408635068951095

`4*(A003462(n)+1)`
-/

namespace A115099.P706408635068951095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A003462 n + 1)

end

end A115099.P706408635068951095

namespace A115099

/-- `4*(A003462(n)+1)` -/
def P706408635068951095.Spec : Prop :=
  ∀ n, P706408635068951095.a n = A115099 n

end A115099

/-! ## A115099.P10249932244951678864

`4*A124302(n+1)`
-/

namespace A115099.P10249932244951678864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A124302 (n + 1)

end

end A115099.P10249932244951678864

namespace A115099

/-- `4*A124302(n+1)` -/
def P10249932244951678864.Spec : Prop :=
  ∀ n, P10249932244951678864.a n = A115099 n

end A115099

